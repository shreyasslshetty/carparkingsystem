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
    public partial class WebForm6 : System.Web.UI.Page
    {
        SqlConnection myConnection;

        public static string GenerateRandomString(int length)
        {
            //It will generate string with combination of small,capital letters and numbers
            char[] charArr = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz".ToCharArray();
            string randomString = string.Empty;
            Random objRandom = new Random();
            for (int i = 0; i < length; i++)
            {
                //Don't Allow Repetation of Characters
                int x = objRandom.Next(1, charArr.Length);
                if (!randomString.Contains(charArr.GetValue(x).ToString()))
                    randomString += charArr.GetValue(x);
                else
                    i--;
            }
            return randomString;
        }

        static int count = 0; 


        protected void Page_Load(object sender, EventArgs e)
        {
            myConnection = new SqlConnection();
            myConnection.ConnectionString = @"Data Source = (localdb)\v11.0; Initial Catalog = park; Integrated Security = SSPI";
            if (!IsPostBack)
                t1.Text = GenerateRandomString(4);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                count++;

                if (t2.Text.Equals(t1.Text))
                {
                    l3.Text = "Captcha Matched";
                    t2.Visible = false;
                    t1.Visible = false;
                    l2.Visible = false;
                    l1.Visible = false;

                    if ((TextBox1.Text.Equals("aksh") && TextBox2.Text.Equals("ak")) || (TextBox1.Text.Equals("shreyas") && TextBox2.Text.Equals("shr")))
                    {
                        Session["cid"] = "0";
                        Response.Redirect("~/adminhome.aspx");
                    }
                    else
                    {

                        string selectSQL = "SELECT * from customer where custname='";
                        selectSQL += TextBox1.Text + "' and password='";
                        selectSQL += TextBox2.Text + "'";
                        SqlCommand myCommand = new SqlCommand(selectSQL, myConnection);
                        SqlDataReader reader;
                        
                        try
                        {
                            string cidstr;
                            myConnection.Open();

                            reader = myCommand.ExecuteReader();
                            reader.Read();
                            cidstr=(string)reader["CID"];
                            if (!cidstr.Equals(""))
                           // if(reader.Read())
                            {
                               // cidstr=(string)reader["CID"];
                                Session["cid"] = (string)cidstr;
                                Response.Redirect("~/custhome.aspx");
                            }

                            else if (cidstr.Equals(""))
                            {
                                Response.Redirect("~/loginpage.aspx");
                            }
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
                else if (!(t2.Text.Equals(t1.Text)) && (count <= 3))
                {
                    l3.Text = "not matched! try again";
                    t2.Text = "";
                    t1.Text = GenerateRandomString(4);
                }
                else if (!(t2.Text.Equals(t1.Text)) && (count > 3))
                {
                    l3.Text = "not matched";
                    t2.Visible = false;
                    t1.Visible = false;
                    l2.Visible = false;
                    l1.Visible = false;
                }
            }
            else
            {
                l3.Text = "page not valid";
            }


            
        
        
        
        }

      
    }
}