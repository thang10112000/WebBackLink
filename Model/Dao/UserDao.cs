using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model.EF;
using PagedList.Mvc;
using PagedList;
namespace Model.Dao
{
    public class UserDao
    {
        ClickShopDbContext db = null;
        public UserDao()
        {
            db = new ClickShopDbContext();
        }
        public long Insert(User entity)
        {
            db.Users.Add(entity);
            db.SaveChanges();
            return entity.ID;
        }
        public bool Update(User entity)
        {
            try
            {
                var user = db.Users.Find(entity.ID);
                user.Name = entity.Name;
                if (!string.IsNullOrEmpty(entity.Password))
                {
                    user.Password = entity.Password;
                }
                user.Address = entity.Address;
                user.Email = entity.Email;
                user.ModifiedBy = entity.ModifiedBy;
                user.ModifiedDate = DateTime.Now;
                db.SaveChanges();
                return true;
            }
            catch (Exception ex){
                return false;

            }
           
        }
        public User ViewDetail(int id)
        {
            //phương thức tìm kiếm thêm khóa chính
            return db.Users.Find(id);
        }
        public IEnumerable<User> ListAllPaging (int page , int pageSize) // phương thức lấy ra các bảng ghi 
        {
            return db.Users.OrderByDescending(x=>x.CreateDate).ToPagedList(page, pageSize);
        }
        public User GetById(string userName)
        {
            return db.Users.SingleOrDefault(x => x.UserName == userName);
        }
        public int Login(string userName, string passWord)
        {
            var res = db.Users.SingleOrDefault(x => x.UserName == userName);
            if (res == null)
            {
                return 0;
            }
            else
            {
                if (res.Status == false)
                {
                    return -1;
                }
                else
                {
                    if (res.Password == passWord)
                        return 1;
                    else
                        return -2;
                }
            }
        }
    }
}
