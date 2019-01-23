using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class Login : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        /*protected void Button1_Click(object sender, EventArgs e)
        {
            using ( context = new L())
            {
                string Nameuser = username.Text;
                string Password = password.Text;
                var user = context.Users.FirstOrDefault(u => u.username == Nameuser);
                if (user != null)
                {
                    if (user.passwords == Password)
                    {
                        Response.Redirect("https://www.google.com/");
                    }
                    else
                    {
                        Response.Redirect("https://www.bestbuy.com/");
                    }
                }
                else
                {
                    Response.Redirect("https://www.bestbuy.com/");

                }
            }
        }
        */
    }
}