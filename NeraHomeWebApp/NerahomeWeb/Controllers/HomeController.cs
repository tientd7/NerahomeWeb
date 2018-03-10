using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace NerahomeWeb.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

      

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }

        public ActionResult Tesst()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }

        public ActionResult Tesest()
        {

            ViewBag.Message = "lại phải ok";
            return View();
        }
    }
}