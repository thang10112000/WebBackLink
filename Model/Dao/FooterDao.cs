using Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model.Dao
{
    public class FooterDao
    {
        ClickShopDbContext db = null;
        public FooterDao()
        {
            db = new ClickShopDbContext();
        }
        public Footer GetFooter()
        {
            return db.Footers.SingleOrDefault(x => x.Status == true);
        }
        public List<Footer> ListAll()
        {
            return db.Footers.Where(x => x.Status == true).ToList();
        }
       
        public bool Update(Footer entity)
        {
            try
            {
                var footer = db.Footers.Find(entity.ID);
                footer.Content = entity.Content;
                footer.Status = entity.Status;
                db.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }

        }
        public Footer ViewDetail(string id)
        {
            return db.Footers.Find(id);
        }


    }
}
