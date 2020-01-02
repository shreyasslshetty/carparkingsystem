using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace carparkproject
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["cid"] == null)
                Response.Redirect("~/mainhome.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            DateTime tdate = DateTime.Today;
            string str = tdate.ToString();
            Label1.Text = str;
            
        }
    }
}