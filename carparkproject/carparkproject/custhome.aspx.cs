using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace carparkproject
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        string cidstr;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["cid"] == null)
                Response.Redirect("~/mainhome.aspx");
            cidstr = (string)Session["cid"];
            Label1.Text += cidstr;
            
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Session["cid"] = (string)cidstr;
            Response.Redirect("~/selectslotpage.aspx");
        }
    }
}