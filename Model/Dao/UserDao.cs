﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model.EF;
namespace Model.Dao
{
    public class UserDao
    {
        ClickShopDbConText db = null;
        public UserDao()
        {
            db = new ClickShopDbConText();
        }
        public long Insert(User entity)
        {
            db.Users.Add(entity);
            db.SaveChanges();
            return entity.ID;
        }

        //lấy user dựa vào user id
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
