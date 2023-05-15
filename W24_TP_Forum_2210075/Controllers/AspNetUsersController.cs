using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using W24_TP_Forum_2210075.Models;
using W24_TP_Forum_2210075.ViewModels;

namespace W24_TP_Forum_2210075.Controllers
{
    public class AspNetUsersController : Controller
    {
        private readonly ForumAlexiaContext _context;

        public AspNetUsersController(ForumAlexiaContext context)
        {
            _context = context;
        }

        // GET: AspNetUsers
        [Authorize(Roles = "Admin")]
        public async Task<IActionResult> ShowUsers()
        {

            var dateM = (from m in _context.Messages
                        orderby m.MsgDate descending
                        where m.User.UserName == "tijoe"
                        select m.MsgDate).FirstOrDefault();

            var dateS = (from s in _context.Sujets
                         orderby s.SujetDate descending
                         where s.User.UserName == "tijoe"
                         select s.SujetDate).FirstOrDefault();

            var date = dateM > dateS ? dateM : dateS;

            var users = _context.AspNetUsers.Select(
                u => new MyUser
                {
                    UserId = u.Id,
                    UserName = u.UserName,
                    NbSujet = _context.Sujets.Where(s => s.UserId == u.Id && s.SujetActif == true).Count(),
                    NbMessage = _context.Messages.Where(m => m.UserId == u.Id && m.MsgActif == true).Count(),

                    LastSubject = _context.Sujets.Where(s => s.UserId == u.Id).OrderByDescending(s => s.SujetDate).Take(1).ToList(),
                    LastMessage = _context.Messages.Where(m => m.UserId == u.Id).OrderByDescending(m => m.MsgDate).Take(1).ToList()
                });

            return View(await users.ToListAsync());
        }

    }
}
