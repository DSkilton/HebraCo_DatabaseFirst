using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using hebraICA.Models;

namespace hebraICA.Controllers
{
    public class BusinessUnitsController : Controller
    {
        private hebradbEntities db = new hebradbEntities();

        // GET: BusinessUnits
        public ActionResult Index()
        {
            //return View(db.BusinessUnits.ToList());
            var bu = db.BusinessUnits.Where(b => b.Active == true);
            return View(bu);
        }

        // GET: BusinessUnits/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            BusinessUnit businessUnit = db.BusinessUnits.Find(id);
            if (businessUnit == null)
            {
                return HttpNotFound();
            }
            return View(businessUnit);
        }

        // GET: BusinessUnits/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: BusinessUnits/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "businessUnitId,businessUnitCode,title,description,officeAddress1,officeAddresss2,officeAddress3,officePostCode,officeContact,officePhone,officeEmail,Active")] BusinessUnit businessUnit)
        {
            if (ModelState.IsValid)
            {
                db.BusinessUnits.Add(businessUnit);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(businessUnit);
        }

        // GET: BusinessUnits/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            BusinessUnit businessUnit = db.BusinessUnits.Find(id);
            if (businessUnit == null)
            {
                return HttpNotFound();
            }
            return View(businessUnit);
        }

        // POST: BusinessUnits/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "businessUnitId,businessUnitCode,title,description,officeAddress1,officeAddresss2,officeAddress3,officePostCode,officeContact,officePhone,officeEmail,Active")] BusinessUnit businessUnit)
        {
            if (ModelState.IsValid)
            {
                db.Entry(businessUnit).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(businessUnit);
        }

        // GET: BusinessUnits/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            BusinessUnit businessUnit = db.BusinessUnits.Find(id);
            if (businessUnit == null)
            {
                return HttpNotFound();
            }
            return View(businessUnit);
        }

        // POST: BusinessUnits/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]

        public ActionResult DeleteConfirmed(int id)
        {
            BusinessUnit businessUnit = db.BusinessUnits.Find(id);
            //Below line will delete the record
            //db.BusinessUnits.Remove(businessUnit);

            businessUnit.Active = false;
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        //GET: /BUsinessUnit/Staff/
        public ActionResult Staff(int id = 0) {

            //sbu is staff business unites
            var sbu = db.Staffs.Where(s => s.businessUnitId == id);
            if (sbu == null)
            {
                return HttpNotFound();
            }
            return View(sbu);
        }

    }
}
