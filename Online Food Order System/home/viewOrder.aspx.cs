using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Food_Order_System.home
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection scon = new SqlConnection(strcon);
            scon.Open();

            String myquery = "select DISTINCT orderid,dateoforder,totalAmount,status from orderdetails where name='" + Session["name"].ToString() + "'";
            
            SqlCommand cmd = new SqlCommand(myquery,scon);
            // cmd.CommandText = myquery;
            //cmd.Connection = scon;

            SqlDataReader dr = cmd.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.DataBind();

            scon.Close();

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow gr = GridView1.SelectedRow;
            string st = gr.Cells[0].Text;
           // TextBox1.Text = st;
           Response.Redirect("viewOrderDetails.aspx?orderid="+st.ToString());
        }
    }
}