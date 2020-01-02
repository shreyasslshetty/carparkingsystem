using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace carparkproject
{
    public partial class WebForm12 : System.Web.UI.Page
    {
        string cidstr;
        SqlConnection myConnection;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["cid"] == null)
                Response.Redirect("~/mainhome.aspx");

            Label9.Text += (string)Session["cid"];
            myConnection = new SqlConnection();
            myConnection.ConnectionString = @"Data Source = (localdb)\v11.0; Initial Catalog = park; Integrated Security = SSPI";
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {

                cidstr = (string)Session["cid"];

                string selectSQL = "UPDATE customer SET password = '";
                selectSQL += TextBox1.Text + "' WHERE CID='";
                selectSQL += cidstr + "'";
                SqlCommand myCommand = new SqlCommand(selectSQL, myConnection);
                SqlDataReader reader;

                try
                {
                    
                    myConnection.Open();

                    reader = myCommand.ExecuteReader();
                    Response.Redirect("~/custhome.aspx");
                    reader.Close();
                    myConnection.Close();

                }
                catch (Exception err)
                {

                    myConnection.Close();
                }
                finally
                {
                    myConnection.Close();

                }
                




            }
            else
            {
                Label8.Text = "Page not valid";
            }
        }
    }
}