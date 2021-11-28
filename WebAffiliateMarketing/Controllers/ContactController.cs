﻿
using Common;
using Model;
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
        public JsonResult Send(string name, string mobile, string address, string email, string content)
        {
            var feedback = new Feedback();
            feedback.Name = name;
            feedback.Email = email;
            feedback.CreateDate = DateTime.Now;
            feedback.Phone = mobile;
            feedback.Content = content;
            feedback.Address = address;

            string a = System.IO.File.ReadAllText(Server.MapPath("/Assets/client/template/newContact.html"));
            a = a.Replace("{{CustomerName}}", name);
            a = a.Replace("{{Phone}}", mobile);
            a = a.Replace("{{Email}}", email);
            a = a.Replace("{{Address}}", address);
            a = a.Replace("{{Require}}", content);
            var toEmail = ConfigurationManager.AppSettings["ToEmailAddress"].ToString();

            new MailHelper().SendMail(email, "Tin nhắn mới", a);
            new MailHelper().SendMail(toEmail, "Tin nhắn mới", a);


            var id = new ContactDao().InsertFeedBack(feedback);
            if (id > 0)
            {
                return Json(new
                {
                    status = true
                });
                //send mail
            }

            else
                return Json(new
                {
                    status = false
                });

        }
    }
}