using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Task3.Models
{
    public class BusinessUnitDTO
    {
        public int businessUnitId { get; set; }
        public string businessUnitCode { get; set; }

        public string title { get; set; }


        public static IQueryable<BusinessUnitDTO> buildList(IQueryable<BusinessUnit> Allbu)
        {
            var busUnit = Allbu.Select(b =>
                       new Models.BusinessUnitDTO()
                       {
                           businessUnitId = b.businessUnitId,
                           businessUnitCode = b.businessUnitCode.Trim(),
                           title = b.title.Trim(),
                       });
            return busUnit;
        }
    }
}