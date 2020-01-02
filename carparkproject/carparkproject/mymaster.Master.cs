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
    public partial class mymaster : System.Web.UI.MasterPage
    {
        SqlConnection myConnection;
        protected void Page_Load(object sender, EventArgs e)
        {
            myConnection = new SqlConnection();
            myConnection.ConnectionString = @"Data Source = (localdb)\v11.0; Initial Catalog = park; Integrated Security = SSPI";
      
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("~/mainhome.aspx");
        }

        protected void Button9_Click(object sender, EventArgs e)
        {

            string selectSQL = "UPDATE parking SET status= 'empty'";
           
            SqlCommand myCommand = new SqlCommand(selectSQL, myConnection);
            SqlDataReader reader;

            try
            {

                myConnection.Open();

                reader = myCommand.ExecuteReader();
                
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