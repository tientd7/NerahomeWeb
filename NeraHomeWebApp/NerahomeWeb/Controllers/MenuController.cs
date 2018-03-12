using NerahomeWeb.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace NerahomeWeb.Controllers
{
    public class MenuController : Controller
    {
        // GET: T
        Cs_menu_itemEntities db = new Cs_menu_itemEntities();
        public ActionResult Index()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Index(Menu menu)
        {
            menu.item_id = Convert.ToInt32(Request.Form["id"]);
            menu.item_name = Request.Form["name"];
            menu.item_type = Request.Form["sp_dv"];
            menu.Enable = "1";
            menu.meta_desc = Request.Form["desc"];
            menu.meta_key = Request.Form["key"];


            db.Menus.Add(menu);
            db.SaveChanges();
            ViewBag.success = "thêm thành công";
            return View();

        }
        public ActionResult Hienthi()
        {
            var view = from i in db.Menus select i;

            return View(view);
        }
        public ActionResult sua(int item_id)
        {
            db = new Cs_menu_itemEntities();
            Menu mn  = db.Menus.SingleOrDefault(x => x.item_id == item_id);
            return View(mn);
        }

        [HttpPost]
        public ActionResult sua(Menu menu)
        {
            if (ModelState.IsValid)
            {
                menu.item_type = Request.Form["sp_dv"];
                menu.Enable = "1";
                db.Entry(menu).State = EntityState.Modified;
                db.SaveChanges();
                ViewBag.success = "Thay đổi thành công";
            }
            return View(menu);
        }
        public ActionResult xoa(Menu menu)
        {
            if (ModelState.IsValid)
            {
                menu = db.Menus.Where(x => x.item_id == menu.item_id).SingleOrDefault();
                menu.Enable = "0";
                db.Entry(menu).State = EntityState.Modified;
                db.SaveChanges();
               Session["success"] = "Xóa  thành công";
            }

            return RedirectToAction("Hienthi");
        }

        [HttpPost, ActionName("xoa")]
        public ActionResult xac_nhan_xoa(int masp)
        {
            Menu sp = db.Menus.Find(masp);
            db.Menus.Remove(sp);
            db.SaveChanges();
            return RedirectToAction("Hienthi");
        }

    }
}