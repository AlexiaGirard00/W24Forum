using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using W24_TP_Forum_2210075.Models;
using W24_TP_Forum_2210075.Tools;

namespace W24_TP_Forum_2210075.Controllers
{
    public class MessagesController : Controller
    {
        private readonly ForumAlexiaContext _context;

        public MessagesController(ForumAlexiaContext context)
        {
            _context = context;
        }

        // GET: Messages
        public async Task<IActionResult> Index(int? cid,int? sid, int? pageIndex, int? pageSize)
        {
            ViewData["CatId"] = cid;
            ViewData["SujetId"] = sid;
            if (sid == null)
            {
                return RedirectToAction("Index", "Home");
            }
            else
            {
                var messages = _context.Messages.Where(m => m.SujetId == sid && m.MsgActif == true).Include(m=>m.User);

                return View(await PaginatedList<Message>.CreateAsync(messages, pageIndex ?? 1, pageSize ?? 5));
            }
            
        }

        // GET: Messages/Details/5
        [Authorize(Roles = "Admin")]
        public async Task<IActionResult> Details(int? cid, int? id, int? sid)
        {
            if (id == null || _context.Messages == null)
            {
                return NotFound();
            }

            var message = await _context.Messages
                .Include(m => m.Sujet)
                .Include(m => m.User)
                .FirstOrDefaultAsync(m => m.MsgId == id);
            if (message == null)
            {
                return NotFound();
            }
            ViewData["CatId"] = cid;
            ViewData["sid"] = sid;
            return View(message);
        }

        // GET: Messages/Create
        [Authorize]
        public IActionResult Create(int? cid, int? sid)
        {
            ViewData["CatId"] = cid;
            ViewData["SujetId"] = sid; 
            return View();
        }

        // POST: Messages/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [Authorize]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("MsgId,SujetId,UserId,MsgActif,MsgTexte,MsgDate")] Message message)
        {
            if (ModelState.IsValid)
            {
                _context.Add(message);
                await _context.SaveChangesAsync();
                return RedirectToAction("Index", "Messages", new {sid = message.SujetId});
            }
            ViewData["SujetId"] = new SelectList(_context.Sujets, "SujetId", "SujetId", message.SujetId);
            return View(message);
        }

        // GET: Messages/Edit/5
        [Authorize]
        public async Task<IActionResult> Edit(int? cid, int? mid, int? sid)
        {
            if (mid == null || _context.Messages == null)
            {
                return NotFound();
            }

            var message = await _context.Messages
                .Include(m => m.Sujet)
                .Include(m => m.User)
                .FirstOrDefaultAsync(m => m.MsgId == mid);

            if (message == null)
            {
                return NotFound();
            }
            ViewData["CatId"] = cid;
            ViewData["sid"] = sid;
            return View(message);
        }

        // POST: Messages/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [Authorize]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("MsgId,SujetId,UserId,MsgActif,MsgTexte,MsgDate")] Message message)
        {
            if (id != message.MsgId)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    message.MsgDate = DateTime.Now;
                    _context.Update(message);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!MessageExists(message.MsgId))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index), new {sid = message.SujetId});
            }
            ViewData["SujetId"] = new SelectList(_context.Sujets, "SujetId", "SujetId", message.SujetId);
            return View(message);
        }

        // GET: Messages/Delete/5
        [Authorize]
        public async Task<IActionResult> Delete(int? cid, int? id, int? sid)
        {
            if (id == null || _context.Messages == null)
            {
                return NotFound();
            }

            var message = await _context.Messages
                .Include(m => m.Sujet)
                .Include(m=>m.User)
                .FirstOrDefaultAsync(m => m.MsgId == id);
            if (message == null)
            {
                return NotFound();
            }
            ViewData["CatId"] = cid;
            ViewData["sid"] = sid;
            return View(message);
        }

        // POST: Messages/Delete/5
        [HttpPost, ActionName("Delete")]
        [Authorize]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            if (_context.Messages == null)
            {
                return Problem("Entity set 'ForumAlexiaContext.Messages'  is null.");
            }
            var message = await _context.Messages.FindAsync(id);
            if (message != null)
            {
                message.MsgActif = false;
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index), new { sid = message.SujetId });
            }
            
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool MessageExists(int id)
        {
          return _context.Messages.Any(e => e.MsgId == id);
        }
    }
}
