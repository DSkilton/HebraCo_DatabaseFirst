﻿using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace Task3.Models
{
    public class Task3Context : DbContext
    {
        // You can add custom code to this file. Changes will not be overwritten.
        // 
        // If you want Entity Framework to drop and regenerate your database
        // automatically whenever you change your model schema, please use data migrations.
        // For more information refer to the documentation:
        // http://msdn.microsoft.com/en-us/data/jj591621.aspx
    
        public Task3Context() : base("name=Task3Context")
        {
        }

        public System.Data.Entity.DbSet<Task3.Models.BusinessUnit> BusinessUnits { get; set; }

        public System.Data.Entity.DbSet<Task3.Models.Staff> Staffs { get; set; }
    }
}
