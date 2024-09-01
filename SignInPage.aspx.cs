using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginForm
{
    public partial class SignInPage : System.Web.UI.Page
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
                string phone = txt3.Text;
                string city=txt4.Text;
                string gender=ddl1.Text;
                string password=txt5.Text;  

                string query = "insert into SignInInfo values('" + name + "','" + email + "','" + phone + "','"+ city +"','"+ gender +"','"+ password +"'')";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.ExecuteNonQuery();

                Response.Write("Record Inserted");

                conn.Close();

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);

            }
        }
    }
}