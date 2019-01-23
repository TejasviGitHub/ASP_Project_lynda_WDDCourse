using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication3
{
    /// <summary>
    /// Summary description for Course_Search
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]
    public class Course_Search : System.Web.Services.WebService
    {

        [WebMethod]
        public List<string> GetCourseNames(string courseName)
        {
            List<string> courseNames = new List<string>();
            using (SelfLearningSystemsEntities1 context = new SelfLearningSystemsEntities1())
            {
                //   SqlCommand sp = new SqlCommand('spGetCourseName');
       
                var courses = context.spGetCourseName(courseName);
                foreach (var c in courses)
                    courseNames.Add(c.ToString());
            }
            return courseNames;
        }
    }
}
