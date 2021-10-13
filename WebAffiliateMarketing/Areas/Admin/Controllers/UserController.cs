using Model.Dao;
using Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using PagedList;
using PagedList.Mvc;
namespace WebAffiliateMarketing.Areas.Admin.Controllers
{
    public class UserController : Controller
    {
        // Thêm mới bảng ghi vào dtb
        public ActionResult Index(int page =1, int pageSize = 10)
        {
            var dao = new UserDao();
            var model = dao.ListAllPaging(page, pageSize);
            return View(model);
        }
        [HttpGet] // phần tải trang giao diện
        public ActionResult Create()
        {
            return View();
        }
        [HttpPost] //tải code lên , thêm user
        public ActionResult Create(User user)
        {
            if (ModelState.IsValid)
            {
                var dao = new UserDao();
                long id = dao.Insert(user);
                if (id > 0)
                {
                    return RedirectToAction("Index", "User");
                }
                else
                {
                    ModelState.AddModelError("", "Thêm User thành công.");
                }
            }
            return View("Index");
        }
    }
}