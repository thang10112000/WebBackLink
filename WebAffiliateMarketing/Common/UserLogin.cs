using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebAffiliateMarketing.Common
{
    [Serializable] //chuyển đổi về dạng trung gian để lưu trữ , truyền thông
    public class UserLogin
    {

        public long UserID { set; get; }
        public string UserName { set; get; }
    }
}