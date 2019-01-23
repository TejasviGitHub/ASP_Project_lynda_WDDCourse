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
    public partial class Home_Page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetCourseData(null);
            }
        }

        private void GetCourseData(String CourseName)
        {
            List<string> courseNames = new List<string>();
            using (SelfLearningSystemsEntities1 entity = new SelfLearningSystemsEntities1())
            {

                if (!string.IsNullOrEmpty(CourseName))
                {
                    var allCourses = entity.spGetAllCourses(CourseName);
                    //GridView1.DataSource = allCourses;
                  // GridView1.DataBind();
                }
                else
                {
                   // GridView1.DataSource = entity.spGetAllCourses(null);
                   // GridView1.DataBind();
                }

            }
        }
        
             protected void Cancel_Click(object sender, EventArgs e)
        {
            MP1.Hide();
        }

        protected void btnSubmit_click(object sender, EventArgs e)
        {
            Response.Redirect("VideoPAge.aspx");
            GetCourseData(txtSearchCourse.Text);
        }
        protected void Login_Click(object sender, EventArgs e)
        {
            using (SelfLearningSystemsEntities1 context = new SelfLearningSystemsEntities1())
            {
                var username = LoginUsername.Text;
                var password = LoginPassword.Text;
                var user = context.Users.FirstOrDefault(u => u.EmailId == username);
                if(user != null)
                {
                    if(user.Password==password)
                    {
                        LoginSuccess.Text = "Welcome!" +" "+ user.FirstName + " " + user.LastName;
                        LoginSuccess.Visible = true;
                        btnSubmit.Visible = false;
                        divcontents.Visible = true;
                        divHeader.Visible = false;
                    }
                    else
                    {
                        LoginFail.Visible = true;
                        MP1.Show();
                        
                    }
                }
                else
                {
                    LoginFail.Visible = true;
                  
                    MP1.Show();

                }
            }
        }

/*protected void btnSubmit_Click1(object sender, EventArgs e)
        {  
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModal", "$('#myModal').modal();", true);
           // upModal.Update();
        }*/

/*protected void btnSubmit_Click2(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myModal1", "$('#myModal1').modal();", true);
          //  modal2.Update();
        }*/
    }
}