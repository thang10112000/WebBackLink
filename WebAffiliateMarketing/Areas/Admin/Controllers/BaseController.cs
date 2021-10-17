using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;
using WebAffiliateMarketing.Common;

namespace WebAffiliateMarketing.Areas.Admin.Controllers
{
    public class BaseController : Controller 
    {
        //kiểm tra user đã login hay chưa nếu chưa sẽ bị đẩy ra trang đăng nhập , gán trong homecontroller
        protected override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            var session = (UserLogin)Session[CommonConstants.USER_SESSION];
            if (session == null)
            {
                filterContext.Result = new RedirectToRouteResult(new
                    RouteValueDictionary(new { controller = "Login", action = "Index", Areas = "Admin" }));
            }
            base.OnActionExecuting(filterContext);
        }
    }
}