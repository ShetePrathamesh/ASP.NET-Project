using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Food_Order_System.home
{
    public partial class LoginForm1 : System.Web.UI.Page
    {
        String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        int flag;
        String name = "";
        String Rname = "";
        
        protected void Page_Load(object sender, EventArgs e)
        {


        }
        protected void submit_Click(object sender, EventArgs e)
        {
            
            SqlConnection con = new SqlConnection(strcon);
            try
            {
                string strEmail = email.Text;
                string strPass = password.Text;
                string str1 = "";
                string str2 = "";
                con.Open();
                   if (Request.Form["opt"] == "Customer")
                   { 
                        str1 = "select 1 from Customer where Email = '" + strEmail + "' and Password= '" + strPass + "'";
                        str2 = "select Name from Customer where Email = '" + strEmail +"'";//+ "' and Password= '" + strPass + "'";
                        flag = 1;
                   }
                   else if (Request.Form["opt"] == "Admin")
                    {
                        str1 = "select 1 from Admin where Email = '" + strEmail + "' and Password= '" + strPass + "'";
                        str2 = "select Name from Admin where Email = '" + strEmail + "' and Password= '" + strPass + "'";
                        flag = 2;
                    }
                    else if (Request.Form["opt"] == "Restaurant")
                    {
                        str1 = "select 1 from Restaurant where Email = '" + strEmail + "' and Password= '" + strPass + "'";
                        str2 = "select Name from Restaurant where Email = '" + strEmail + "' and Password= '" + strPass + "'";
                        flag = 3;
                    }
                    SqlCommand cmd = new SqlCommand(str1, con);
                    var result = cmd.ExecuteScalar();
                    cmd = new SqlCommand(str2, con);
                    var name = cmd.ExecuteScalar();
                    name = name.ToString();
                     
                    if (result != null)
                    {
                        
                        if (flag==1)
                    {
                        Session["Name"] = name;
                        Session["buyitems"] = null;
                        fillsavedCart();

                        Response.Redirect("HomePage.aspx");
                    }
                    if (flag == 2)
                    {
                        Session["name"] = name;
                        Response.Redirect("../admin/Admin_Dashboard.aspx");
                    }
                    if (flag == 3)
                    {
                        Session["Rname"] = name;
                        Response.Redirect("../restro/R_Dashboard.aspx");
                    }
                    }
                    else
                    {
                        errMessage.Text = "User Email Id or Password Incorrect";
                        errMessage.Visible = true;
                    }


            }
            catch (Exception ex)
            {
               errMessage.Text = ex.Message;
            }
            finally
            {
               con.Close();
            }
        }

        private void fillsavedCart()
        {
            DataTable dt = new DataTable();
            DataRow dr;
            dt.Columns.Add("sno");
            dt.Columns.Add("f_id");
            dt.Columns.Add("food_name");
            dt.Columns.Add("qty");
            dt.Columns.Add("price");
            dt.Columns.Add("totalprice");
            dt.Columns.Add("image");

            SqlConnection scon = new SqlConnection(strcon);
            String myquery = "select * from Cartdetail where name='" + Session["name"].ToString() + "'";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = scon;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                int i = 0;
                int counter = ds.Tables[0].Rows.Count;
                while (i < counter)
                {
                    dr = dt.NewRow();
                    dr["sno"] = i + 1;
                    dr["f_id"] = ds.Tables[0].Rows[i]["f_id"].ToString();
                    dr["food_name"] = ds.Tables[0].Rows[i]["food_name"].ToString();
                    dr["image"] = ds.Tables[0].Rows[i]["image"].ToString();
                    dr["qty"] = "1";
                    dr["price"] = ds.Tables[0].Rows[i]["price"].ToString();
                    int price1 = Convert.ToInt16(ds.Tables[0].Rows[i]["price"].ToString());
                    int quantity1 = Convert.ToInt16(ds.Tables[0].Rows[i]["qty"].ToString());
                    int totalprice1 = price1 * quantity1;
                    dr["totalprice"] = totalprice1;
                    dt.Rows.Add(dr);
                    i = i + 1;
                }

            }
            else
            {
                Session["buyitems"] = null;
            }
            Session["buyitems"] = dt;
        }


    }
}