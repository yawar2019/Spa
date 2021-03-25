using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Spa.Controllers
{
    /// <summary>
    /// Test by Suja 3/24
    /// </summary>
    public class HomeController : Controller
    {
        // GET: Home is safe
        public ActionResult Index()
        {
            return View();
        }
    }
}