using Model.EF;
using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model.Dao
{
  public  class FeedbackDao
    {
        ClickShopDbContext db = null;
        public FeedbackDao()
        {
            db = new ClickShopDbContext();

        }
        public IEnumerable<Feedback> ListAllPaging(int page, int pageSize)
        {
            return db.Feedbacks.OrderByDescending(x => x.Name).ToPagedList(page, pageSize);
        }

        public bool Delete(int id)
        {
            try
            {
                var feedback = db.Feedbacks.Find(id);
                db.Feedbacks.Remove(feedback);
                db.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }

        }
    }
}
