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
    public partial class WebForm15 : System.Web.UI.Page
    {
        string cidstr;
        SqlConnection myConnection;
        SqlConnection myConnection2;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["cid"] == null)
                Response.Redirect("~/mainhome.aspx");

            Label1.Text += cidstr;
            myConnection = new SqlConnection();
            myConnection.ConnectionString = @"Data Source = (localdb)\v11.0; Initial Catalog = park; Integrated Security = SSPI";

            myConnection2 = new SqlConnection();
            myConnection2.ConnectionString = @"Data Source = (localdb)\v11.0; Initial Catalog = park; Integrated Security = SSPI";

        }

        protected void Button6_Click(object sender, EventArgs e)
        {
           
            string selectSQL = "UPDATE parking SET status = 'fill' WHERE parkslot='";
            selectSQL += TextBox1.Text + "'";

            SqlCommand myCommand = new SqlCommand(selectSQL, myConnection);
            SqlDataReader reader;
         
            try
            {

                myConnection.Open();

                reader=myCommand.ExecuteReader();
                Label2.Text = "parking updated";
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

        protected void Button7_Click(object sender, EventArgs e)
        {

            DateTime pdate = Calendar1.SelectedDate;
            string str = pdate.ToString();
            cidstr = (string)Session["cid"];

            string selectSQL2 = "UPDATE customer SET parkslot = '";
            selectSQL2 += TextBox1.Text + "' , parkdate='";
            selectSQL2 += str + "' WHERE CID='";
            selectSQL2 += cidstr + "'";


            SqlCommand myCommand2 = new SqlCommand(selectSQL2, myConnection2);
            SqlDataReader reader2;

            try
            {
                myConnection2.Open();

                reader2 = myCommand2.ExecuteReader();
                Label3.Text = "customer updated";
                Response.Redirect("~/custhome.aspx");

                reader2.Close();
                myConnection2.Close();

            }
            catch (Exception err)
            {

                myConnection2.Close();
            }
            finally
            {
                
                myConnection2.Close();

            }





        }
    }
}