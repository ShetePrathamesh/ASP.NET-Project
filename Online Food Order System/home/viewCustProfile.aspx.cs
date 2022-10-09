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
    public partial class WebForm2 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(strcon);
            con.Open();

            String myquery = "select * from Customer where Name='" + Session["name"].ToString() + "'";

            SqlCommand cmd = new SqlCommand(myquery, con);

            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;


            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {

                TextBox1.Text = dt.Rows[0]["Name"].ToString();
                TextBox2.Text = dt.Rows[0]["Contact"].ToString();
                TextBox3.Text = dt.Rows[0]["Fathername"].ToString();
                TextBox4.Text = dt.Rows[0]["Email"].ToString();
                TextBox5.Text = dt.Rows[0]["bornplace"].ToString();
                TextBox6.Text = dt.Rows[0]["fvrteplace"].ToString();
                TextBox7.Text = dt.Rows[0]["Address"].ToString();
               }


            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}