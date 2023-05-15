using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Diagnostics;
using W24_TP_Forum_2210075.Models;
using W24_TP_Forum_2210075.ViewModels;

namespace W24_TP_Forum_2210075.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly ForumAlexiaContext _context;

        public HomeController(ILogger<HomeController> logger, ForumAlexiaContext context)
        {
            _logger = logger;
            _context = context;
        }

        public IActionResult Index()
        {
            var homeCats = _context.Categories.Select(
                c => new HomeCat
                {
                    CategoryId = c.CatId,
                    CategoryName = c.CatNom,
                    Description = c.CatDesc,
                    Actif = c.CatActif,
                    SujetsCount = c.Sujets.Where(s => s.SujetActif == true).Count(),

                    SujetsListe = c.Sujets.Where(s => s.SujetActif == true).OrderByDescending(s=>s.SujetDate).Take(3)
                    
                });

            return View(homeCats.Where(c => c.Actif == true));
        }
    }
}