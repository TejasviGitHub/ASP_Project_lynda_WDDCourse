using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication3
{
    public partial class slideshow : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                GetCourseData(null);
            }
        }

        private void GetCourseData(String CourseName)
        {
            List<string> courseNames = new List<string>();
            using (SelfLearningSystemsEntities1 entity=new SelfLearningSystemsEntities1())
            {

                if (!string.IsNullOrEmpty(CourseName))
                {
                    var allCourses = entity.spGetAllCourses(CourseName);
                    GridView1.DataSource = allCourses;
                    GridView1.DataBind();
                }
                else
                {
                    GridView1.DataSource = entity.spGetAllCourses(null);
                    GridView1.DataBind();
                }
               
            }
        }

        protected void btnSubmit_click(object sender, EventArgs e)
        {
            GetCourseData(txtSearchCourse.Text);
        }
    }
}