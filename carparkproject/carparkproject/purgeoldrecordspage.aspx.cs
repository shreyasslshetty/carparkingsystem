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
    public partial class WebForm13 : System.Web.UI.Page
    {

        SqlConnection myConnection;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["cid"] == null)
                Response.Redirect("~/mainhome.aspx");

            myConnection = new SqlConnection();
            myConnection.ConnectionString = @"Data Source = (localdb)\v11.0; Initial Catalog = park; Integrated Security = SSPI";
        
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            string str;
            DateTime ddate = Calendar1.SelectedDate;
            str = ddate.ToString();
            string selectSQL = "UPDATE customer SET parkdate = null, parkslot=null WHERE parkdate='";
            selectSQL += str + "'";
            SqlCommand myCommand = new SqlCommand(selectSQL, myConnection);
            SqlDataReader reader;

            try
            {

                myConnection.Open();

                reader = myCommand.ExecuteReader();
                Response.Redirect("~/adminhome.aspx");
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
    }
}