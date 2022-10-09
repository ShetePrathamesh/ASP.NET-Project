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
                TextBox4.Text = dt.Rows[0]["status"].ToString();
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

    }
}
