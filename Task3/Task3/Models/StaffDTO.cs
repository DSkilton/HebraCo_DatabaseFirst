using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Task3.Models
{
    public class StaffDTO
    {
        public int businessUnitId { get; set; }

        public string staffCode { get; set; }

        public string firstName { get; set; }

        public string middleName { get; set; }

        public string lastName { get; set; }

        public DateTime dob { get; set; }
        public DateTime startDate { get; set; }

        public string profile { get; set; }

        public string emailAddress { get; set; }

        public string PhotoUrl { get; set; }

        public static IQueryable<StaffDTO> buildList(IQueryable<Staff> Allbu)
        {
            var busUnits = Allbu.Select(s =>
                       new Models.StaffDTO()
                       {
                           businessUnitId = s.businessUnitId,
                           staffCode = s.staffCode,
                           firstName = s.firstName,
                           middleName = s.middleName,
                           lastName = s.lastName,
                           dob = s.dob,
                           startDate = s.startDate,
                           profile = s.profile,
                           emailAddress = s.emailAddress,
                           PhotoUrl = s.PhotoUrl,
                       });
            return busUnits;
        }
    }
}