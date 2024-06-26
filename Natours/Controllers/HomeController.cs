using Microsoft.AspNetCore.Mvc;
using Natours.Models;
using System.Diagnostics;

namespace Natours.Controllers
{
	public class HomeController : Controller
	{
		private readonly ILogger<HomeController> _logger;

		public HomeController(ILogger<HomeController> logger)
		{
			_logger = logger;
		}

		public IActionResult Index()
		{
			return View();
		}

		public IActionResult Privacy()
		{
			return View();
		}
        public IActionResult About()
        {
            return View();
        }
        public IActionResult Tour()
        {
            return View();
        }
       
        public IActionResult TourDetails(String id)
        {
            ViewBag.id = id;
            return View();
        }
        public IActionResult Weather()
		{
			return View();
		}
		public IActionResult Hotel()
        {
            return View();
        }
        public IActionResult Login()
        {
            return View();
        }
        public IActionResult Signup()
        {
            return View();
        }
        public IActionResult Profile()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
		public IActionResult Error()
		{
			return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
		}
	}
}
