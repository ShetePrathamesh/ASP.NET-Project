using System;
using System.Collections.Generic;
using System.Linq;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Food_Order_System.restro
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(strcon);
            con.Open();

            String myquery = "select * from orderdetails where orderid=" + Request.QueryString["orderid"].ToString();

            SqlCommand cmd = new SqlCommand(myquery, con);

            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;

            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                TextBox1.Text = dt.Rows[0]["orderid"].ToString();
                TextBox2.Text = dt.Rows[0]["dateoforder"].ToString();
                TextBox3.Text = dt.Rows[0]["status"].ToString();
                TextBox4.Text = dt.Rows[0]["name"].ToString();
                TextBox6.Text = dt.Rows[0]["pmode"].ToString();
            }
            cmd.ExecuteNonQuery();

            String query = "select address,mobilenumber from orderaddress where orderid=" + Request.QueryString["orderid"].ToString();

            SqlCommand cmd1 = new SqlCommand(query, con);

            SqlDataAdapter da1 = new SqlDataAdapter();
            da1.SelectCommand = cmd1;

            DataTable dt1 = new DataTable();
            da1.Fill(dt1);
            if (dt1.Rows.Count > 0)
            {
                TextBox5.Text = dt1.Rows[0]["mobilenumber"].ToString();
                TextBox7.Text = dt1.Rows[0]["address"].ToString();
            }
            cmd1.ExecuteNonQuery();
            con.Close();

        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            //Response.Write("<script>alert('Updated ');</script>");
            SqlConnection con = new SqlConnection(strcon);
            String updatedata = "Update orderdetails set status='" + TextBox3.Text + "' where orderid=" + TextBox1.Text + "";



             con.Open();
             SqlCommand cmd = new SqlCommand();
             cmd.CommandText = updatedata;
             cmd.Connection = con;
            cmd.ExecuteNonQuery();
            
            Response.Write("<script>alert('Updated ');</script>");
            Response.Redirect("viewPlaceOrder.aspx");
             con.Close();
            
        }
    }
}
