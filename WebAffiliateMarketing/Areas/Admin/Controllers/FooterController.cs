using Model.Dao;
using Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WebAffiliateMarketing.Areas.Admin.Controllers
{
    public class FooterController : BaseController
    {
        // GET: Admin/Footer
        [HasCredential(RoleID = "VIEW_USER")]
        public ActionResult Index()
        {
            var dao = new FooterDao();
            var model = dao.ListAll();

            return View(model);
        }
        [HasCredential(RoleID = "EDIT_USER")]
        public ActionResult Edit(string id)
        {

            var footer = new FooterDao().ViewDetail(id);

            return View(footer);
        }
        [HttpPost]
        [HasCredential(RoleID = "EDIT_USER")]
        [ValidateInput(false)]
        public ActionResult Edit(Footer footer)
        {
            if (ModelState.IsValid)
            {
                var dao = new FooterDao();
                var result = dao.Update(footer);
                if (result)
                {
                    SetAlert("Sửa Thành Công ", "success");
                    return RedirectToAction("Index", "Footer");
                }
                else
                {
                    ModelState.AddModelError("", "Cập nhập không thành công");
                }
            }

            return View("Index");
        }
    }
}