using Microsoft.AspNetCore.Mvc;

namespace MledNew2023.MVC.Controllers
{
    public class ProductController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}