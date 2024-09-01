using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginForm
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("LoginPage.aspx");
        }

        protected void btn1_Click(object sender, EventArgs e)
        {
         
            Response.Redirect("MainPage.aspx");
        }

        protected void LogOutbtn_Click1(object sender, EventArgs e)
        {
            Response.Redirect("LoginPage.aspx");
        }

        protected void AccountBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignInPage.aspx");
        }
    }
}