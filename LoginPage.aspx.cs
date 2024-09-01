using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace LoginForm
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            System.Threading.Thread.Sleep(5000);
            try
            {
                string url = ConfigurationManager.ConnectionStrings["myconn"].ToString();
                SqlConnection conn = new SqlConnection(url);
                conn.Open();

                string name = txt1.Text;
                string email = txt2.Text;
                string password = txt3.Text;
                string query = "insert into LoginInfo values('" + name + "','" + email + "','" + password + "')";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.ExecuteNonQuery();

                Response.Write("Record Inserted");

                conn.Close();

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);

            }
            {

                if (txt1.Text == "TOUHEED KASU" && txt2.Text == "kasutouheed31@gmail.com" && txt3.Text=="786123")
                {
                    Response.Redirect("HomePage.aspx");
                }
                
            }
              
            
              
            }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignInPage.aspx");
        }

       
    }

    }

