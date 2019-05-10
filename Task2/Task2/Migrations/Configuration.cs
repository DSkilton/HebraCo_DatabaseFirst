namespace Task2.Migrations
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Migrations;
    using System.Linq;
    using Task2.Models;

    internal sealed class Configuration : DbMigrationsConfiguration<Task2.Models.Task2Context>
    {
        public Configuration()
        {
            AutomaticMigrationsEnabled = false;
        }

        protected override void Seed(Task2.Models.Task2Context context)
        {

            context.BusinessUnits.AddOrUpdate(x => x.businessUnitId,
                new BusinessUnit()
                {
                    businessUnitId = 1,
                    businessUnitCode = "Business Unit Code",
                    title = "Title",
                    description = "Description",
                    officeAddress1 = "Address Line 1",
                    officeAddresss2 = "Address Line 2",
                    officeAddress3 = "Address Line 3",
                    officePostCode = "Postcode",
                    officeContact = "Office Contact",
                    officePhone = "Office Phone",
                    officeEmail = "Office Email",
                    Active = true}
                );

            context.Staffs.AddOrUpdate(x => x.staffId,
                new Staff()
                {
                    staffId = 1,
                    businessUnitId = 1,
                    staffCode = "staffCode",
                    firstName = "firstName",
                    middleName = "middleName",
                    lastName = "lastName",
                    dob = DateTime.Now,
                    startDate = DateTime.Now,
                    profile = "profile",
                    emailAddress = "emailAddress",
                    PhotoUrl = "photoUrl",
                    Active = true,                    
                }
                );
            //  This method will be called after migrating to the latest version.

            //  You can use the DbSet<T>.AddOrUpdate() helper extension method 
            //  to avoid creating duplicate seed data. E.g.
            //
            //    context.People.AddOrUpdate(
            //      p => p.FullName,
            //      new Person { FullName = "Andrew Peters" },
            //      new Person { FullName = "Brice Lambson" },
            //      new Person { FullName = "Rowan Miller" }
            //    );
            //
        }
    }
}
