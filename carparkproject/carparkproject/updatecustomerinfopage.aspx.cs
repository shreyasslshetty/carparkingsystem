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
    public partial class WebForm11 : System.Web.UI.Page
    {
        public string connectionString = @"Data Source=(localdb)\v11.0;Initial Catalog=park;Integrated Security=SSPI";

        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["cid"]==null)
                Response.Redirect("~/mainhome.aspx");
            if(!IsPostBack)
            FillStudent();       
        }

        private void FillStudent()
        {
            DropDownList1.Items.Clear();
           

            string selectSQL = "SELECT * from customer";

           
            SqlConnection con = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand(selectSQL, con);

               
            try
            {

                con.Open();


                DropDownList1.DataSource = cmd.ExecuteReader();
                DropDownList1.DataTextField = "CID";
                
                
              
                this.DataBind();

                con.Close();


                DropDownList1.SelectedIndex = -1;

            }
            catch (Exception err)
            {
                con.Close();
            }
            finally
            {
                con.Close();
            }

        }





    }
}