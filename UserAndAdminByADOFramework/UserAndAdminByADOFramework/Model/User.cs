using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Policy;
using System.Web;

namespace UserAndAdminByADOFramework.Model
{
    public class User
    {
        public string UsrID { get; set; }

        public string Name { get; set; }

        public string DateOfBirth { get; set; }

        public string City { get; set; }

        public string CompanyName { get; set; }

        public string Experience { get; set; }

        public string ProgrammingSkills { get; set; }
    }
}