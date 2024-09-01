using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginForm
{
    public partial class ContactUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string name=lbl1.Text;
            string email=lbl2.Text;
            string subject=lbl3.Text;

            lbl1.Text = name +"  " +email+"  "+subject+"  ";


        }
    }
}