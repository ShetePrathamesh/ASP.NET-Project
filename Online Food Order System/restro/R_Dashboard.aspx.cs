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
    public partial class WebForm6 : System.Web.UI.Page
    {
        String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            getRid();
            food();
            order();
            cust();

        }
        void getRid()
        {
            SqlConnection scon = new SqlConnection(strcon);
            scon.Open();

            String myquery = "select Rid from Restaurant where Name='" + Session["Rname"].ToString() + "'";

            SqlCommand cmd4 = new SqlCommand(myquery, scon);
            SqlDataReader dr = cmd4.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    //   Response.Write("<script>alert(' " + dr.GetValue(0).ToString()+ "');</script>");
                    Label4.Text = dr.GetValue(0).ToString();
                }
            }

        }
        void food()
        {
            SqlConnection scon = new SqlConnection(strcon);
            scon.Open();

            String myquery = "select count(f_id) from Food where Rid='" + Label4.Text + "'";

            SqlCommand cmd = new SqlCommand(myquery, scon);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    Label1.Text = dr.GetValue(0).ToString();
                }
            }

        }

        void order()
        {
            SqlConnection scon = new SqlConnection(strcon);
            scon.Open();

            String myquery = "select count(DISTINCT orderid) from orderdetails";

            SqlCommand cmd = new SqlCommand(myquery, scon);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    Label2.Text = dr.GetValue(0).ToString();
                }
            }

        }

        void cust()
        {
            SqlConnection scon = new SqlConnection(strcon);
            scon.Open();

            String myquery = "select count(DISTINCT name) from orderdetails ";

            SqlCommand cmd = new SqlCommand(myquery, scon);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    Label3.Text = dr.GetValue(0).ToString();
                }
            }

        }
    }
}