﻿using Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model.Dao
{
   public class ContentDao
    {
        ClickShopDbContext db = null;
        public ContentDao()
        {
            db = new ClickShopDbContext();

        }
        public Content GetByID(long id)
        {
            return db.Contents.Find(id);
        }
    }
}
