using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Reflection;
using System.Security.Claims;
using System.Security.Cryptography.Pkcs;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using W24_TP_Forum_2210075.Models;
using W24_TP_Forum_2210075.ViewModels;

namespace W24_TP_Forum_2210075.Controllers
{
    public class SujetsController : Controller
    {
        private readonly ForumAlexiaContext _context;
        public int catId;

        public SujetsController(ForumAlexiaContext context)
        {
            _context = context;
        }

        public IActionResult ShowResult(int? cid)
        {
            if (cid == null)
            {
                return RedirectToAction("Index", "Home");
            }
            else
            {

                var subject = _context.Sujets.Select(
                    s => new ShowSubjects
                    {
                        SubjectId = s.SujetId,
                        SubjectTitle = s.SujetNom,
                        SubjectViews = s.SujetView,
                        SubjectAuthor = s.User.UserName,
                        SubjectDate = s.SujetDate,
                        SubjectActive = s.SujetActif,
                        CategoryId = s.Cat.CatId,
                        CategoryName = s.Cat.CatNom,
                        NbrMessages = s.Messages.Where(s=>s.MsgActif == true).Count(),
                        LastAnswerUser = (from m in _context.Messages
                                      orderby m.MsgDate descending
                                      where m.SujetId == s.SujetId
                                      select m.User.UserName).FirstOrDefault(),

                        LastAnswerDate = "",

                        LastMsg = _context.Messages.Where(m=>m.SujetId == s.SujetId && m.MsgActif == true).OrderByDescending(m=>m.MsgDate).Include(m=>m.User).Take(1).ToList()
                    });

                ViewData["CatId"] = cid;
                return View(subject.Where(s => s.CategoryId == cid && s.SubjectActive == true).ToList());
            }
        }
        // GET: Sujets
        public async Task<IActionResult> Index(int? id)
        {
            if(id == null)
            {
                return RedirectToAction("Index", "Home");
            }
            else
            {
                ViewData["CatId"] = id;
                return View(await _context.Sujets.Where(s => s.CatId == id && s.SujetActif == true).Include(s => s.Cat).Include(s => s.Messages).ToListAsync());
            }
        }

        // GET: Sujets/Details/5
        [Authorize(Roles = "Admin")]
        public async Task<IActionResult> Details(int? id, int? cid)
        {
            if (id == null || _context.Sujets == null)
            {
                return NotFound();
            }

            var sujet = await _context.Sujets
                .Include(s => s.Cat)
                .Include(s => s.User)
                .FirstOrDefaultAsync(m => m.SujetId == id);
            if (sujet == null)
            {
                return NotFound();
            }
            ViewData["CatId"] = cid;
            return View(sujet);
        }

        // GET: Sujets/Create
        [Authorize]
        public IActionResult Create(int? cid)
        {
            ViewData["CatId"] = cid;
           
            return View();
        }

        // POST: Sujets/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [Authorize]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("SujetId,CatId,UserId,SujetNom,SujetDate,SujetView,SujetActif")] Sujet sujet)
        {
            if (ModelState.IsValid)
            {
                sujet.UserId = User.FindFirstValue(ClaimTypes.NameIdentifier);
                sujet.SujetDate = DateTime.Now;
                sujet.SujetActif = true;

                _context.Add(sujet);
                await _context.SaveChangesAsync();
                return RedirectToAction("ShowResult", "Sujets", new { cid = sujet.CatId });
            }
            ViewData["CatId"] = new SelectList(_context.Categories, "CatId", "CatId", sujet.CatId);
            return View(sujet);
        }

        // GET: Sujets/Edit/5
        [Authorize]
        public async Task<IActionResult> Edit(int? id, int? cid)
        {
            if (id == null || _context.Sujets == null)
            {
                return NotFound();
            }

            var sujet = await _context.Sujets
                .Include(s => s.Cat)
                .Include(s => s.User)
                .FirstOrDefaultAsync(m => m.SujetId == id);

            if (sujet == null)
            {
                return NotFound();
            }
            ViewData["CatNom"] = new SelectList(_context.Categories, "CatId", "CatNom", sujet.CatId);
            ViewData["CatId"] = cid;
            return View(sujet);
        }

        // POST: Sujets/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [Authorize]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("SujetId,CatId,UserId,SujetNom,SujetDate,SujetView,SujetActif")] Sujet sujet)
        {
            if (id != sujet.SujetId)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(sujet);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!SujetExists(sujet.SujetId))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction("ShowResult", "Sujets", new { cid = sujet.CatId});
            }
            ViewData["CatId"] = new SelectList(_context.Categories, "CatId", "CatId", sujet.CatId);
            
            return View(sujet);
        }


        // GET: Sujets/Delete/5
        [Authorize(Roles = "Admin")]
        public async Task<IActionResult> Delete(int? id, int? cid)
        {
            if (id == null || _context.Sujets == null)
            {
                return NotFound();
            }

            var sujet = await _context.Sujets
                .Include(s => s.Cat)
                .Include(s => s.User)
                .FirstOrDefaultAsync(m => m.SujetId == id);
            if (sujet == null)
            {
                return NotFound();
            }
            ViewData["CatId"] = cid;
            return View(sujet);
        }

        // POST: Sujets/Delete/5
        [HttpPost, ActionName("Delete")]
        [Authorize(Roles = "Admin")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int? id)
        {
            if (_context.Sujets == null)
            {
                return Problem("Entity set 'ForumAlexiaContext.Sujets'  is null.");
            }
            var sujet = await _context.Sujets.FindAsync(id);
            if (sujet != null)
            {
                sujet.SujetActif = false;
                await _context.SaveChangesAsync();
                return RedirectToAction("ShowResult", "Sujets", new { cid = sujet.CatId });
            }

            await _context.SaveChangesAsync();
            return RedirectToAction("ShowResult", "Sujets");
        }

        private bool SujetExists(int id)
        {
          return _context.Sujets.Any(e => e.SujetId == id);
        }
    }
}
