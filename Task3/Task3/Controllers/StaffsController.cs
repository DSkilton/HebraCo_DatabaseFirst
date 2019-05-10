using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web.Http;
using System.Web.Http.Description;
using Task3.Models;

namespace Task3.Controllers
{
    public class StaffsController : ApiController
    {
        private Task3Context db = new Task3Context();

        // GET: api/Staffs
        public IQueryable<StaffDTO> GetStaffs()
        {
            var staff = from s in db.Staffs
                        select new StaffDTO()
                        {
                            staffCode = s.staffCode,
                            firstName = s.firstName,
                            lastName = s.lastName
                        };

            return staff;
        }
       
        // GET: api/Staffs/5
        [ResponseType(typeof(Staff))]
        public async Task<IHttpActionResult> GetStaff(int id)
        {
            // Get staff member with id and is active.
            var staffMember = db.Staffs.Where(s => s.Active == true).Where(s => s.staffId == id);
            IQueryable<StaffDTO> dto = StaffDTO.buildList(staffMember); // Build our IEnumerable with the staffMember data and get an IEnumerable
            if (!staffMember.Any()) // check query returned something!
            {
                return NotFound(); // Return not found response if null.
            }

            // Return the DTO and let MVC work its magic and convert to JSON!!
            return Json(dto);
        }

       
    }
}