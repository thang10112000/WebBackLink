using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WebAffiliateMarketing.Areas.Admin.Controllers
{
    public class HomeController :   BaseController // đổi sang BaseControler để kiểm tra tk đã login chưa
    {
        //
        // GET: /Admin/Home/
        public ActionResult Index()
        {
            return View();
        }
	}
}