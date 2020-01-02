using System;
using System.Collections.Generic;
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
    public partial class WebForm8 : System.Web.UI.Page
    {
        SqlConnection myConnection;

        protected void Page_Load(object sender, EventArgs e)
        {
            myConnection = new SqlConnection();
            myConnection.ConnectionString = @"Data Source = (localdb)\v11.0; Initial Catalog = park; Integrated Security = SSPI";
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            string insertSQL = "insert into customer values (";
            insertSQL += "'" + TextBox1.Text + "',";
            insertSQL += "'" + TextBox2.Text + "',";
            insertSQL += "null,";
            insertSQL += "'" + TextBox3.Text + "',";
            insertSQL += "null,";
            insertSQL += "'" + TextBox4.Text + "'";
            insertSQL += ")";

            SqlCommand myCommand = new SqlCommand(insertSQL, myConnection);
            int success;

            try
            {
                myConnection.Open();

                success = myCommand.ExecuteNonQuery();
                LabelError.Text += "<br />" + success + " record inserted.";
                myConnection.Close();

                Response.Redirect("~/mainhome.aspx");
            }
            catch (Exception err)
            {
                LabelError.Text += "<br />" + err.Message;
                myConnection.Close();
            }
            finally
            {
                myConnection.Close();
                LabelError.Text += "<br />" + myConnection.State.ToString();
                LabelError.Visible = true;
            }


            

        }
    }
}