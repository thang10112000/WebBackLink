using Model.Dao;
using Model.EF;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WebAffiliateMarketing.Controllers
{
    public class ContactController : Controller
    {
        // GET: Contact
        public ActionResult Index()
        {
            var model = new ContactDao().GetActiveContact();
            return View(model);
        }

        [HttpPost]
        public JsonResult Send(string name, string mobile, string email, string address, string content)
        {
            var feedback = new Feedback();
            feedback.Name = name;
            feedback.Email = email;
            feedback.CreateDate = DateTime.Now;
            feedback.Phone = mobile;
            feedback.Content = content;
            feedback.Address = address;

            var id = new ContactDao().InsertFeedBack(feedback);
            if (id > 0)
            {
                return Json(new
                {
                    status = true
                });
                //string content = System.IO.File.ReadAllText(Server.MapPath("/Assets/client/template/newContact.html"));

                //content = content.Replace("{{CustomerName}}", name);
                //content = content.Replace("{{Phone}}", mobile);
                //content = content.Replace("{{Email}}", email);
                //content = content.Replace("{{Address}}", address);
                //content = content.Replace("{{Content}}", content);
                //var toEmail = ConfigurationManager.AppSettings["ToEmailAddress"].ToString();
            }

            else
                return Json(new
                {
                    status = false
                });

        }
    }
}