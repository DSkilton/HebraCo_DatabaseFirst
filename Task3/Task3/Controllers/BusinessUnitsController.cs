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
    public class BusinessUnitsController : ApiController
    {
        private Task3Context db = new Task3Context();

        public IQueryable<BusinessUnitDTO> GetBusinessUnit()
        {
            var allBu = db.BusinessUnits.Where(b => b.Active == true);
            var dto = BusinessUnitDTO.buildList(allBu);
            return dto;
        }


   [ResponseType(typeof(BusinessUnit))] 
        public async Task<IHttpActionResult> GetBusinessUnit(int id) 
        {
        
        var bu = db.BusinessUnits.Where(b => b.Active == true).Where(b => b.businessUnitId == id);
            IQueryable<BusinessUnitDTO> dto = BusinessUnitDTO.buildList(bu); 
        if (!bu.Any()) 
            {
                return NotFound(); 
            }

            return Json(bu);
        }
    }
}