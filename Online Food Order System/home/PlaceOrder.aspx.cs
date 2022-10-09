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
    public partial class WebForm3 : System.Web.UI.Page
    {
        String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            
            //findorderid();
            
                 

                    DataTable dt = new DataTable();
                    DataRow dr;

                    dt = (DataTable)Session["buyitems"];
                       GridView1.DataSource = dt;
                       GridView1.DataBind();
                       if (GridView1.Rows.Count > 0)
                       {
                           GridView1.FooterRow.Cells[2].Text = "Total Amount";
                           GridView1.FooterRow.Cells[3].Text = grandtotal().ToString();
                            }

                  
               TextBox4.Text = DateTime.Now.ToLongDateString();
               findorderid();
            
        }
        protected void Button1_Click(object sender, EventArgs e)
        {


            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];
            
            SqlConnection con = new SqlConnection(strcon);
            con.Open();

            String status = "Pendding";
            String totalAmount = GridView1.FooterRow.Cells[3].Text;
            String pmode = DropDownList1.SelectedItem.Value;
            /*
            String query = "insert into orderdetails(orderid,f_id,food_name,price,qty,totalAmount,dateoforder,name,status) values('" + TextBox3.Text + "','" + dt.Rows[0]["f_id"] + "','" + dt.Rows[0]["food_name"] + "','" + dt.Rows[0]["price"] + "','" + dt.Rows[0]["qty"] + "','" + totalAmount + "','" + TextBox4.Text + "','" + Session["Name"].ToString() + "','"+ status+"')";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            */
            
            for (int i = 0; i <= dt.Rows.Count -1; i++)
                {

                int id = 111;
                //Label6.Text = "11";
                String query = "insert into orderdetails(orderid,f_id,food_name,price,qty,totalAmount,dateoforder,name,status,pmode) values('" + TextBox3.Text + "','" + dt.Rows[i]["f_id"] + "','" + dt.Rows[i]["food_name"] + "','" + dt.Rows[i]["price"] + "','" + dt.Rows[i]["qty"] + "','" + totalAmount + "','" + TextBox4.Text + "','" + Session["Name"].ToString() + "','"+ status+ "','" + pmode +"')";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
                Label6.Text = dt.Rows[0]["Rid"].ToString();

            }

            saveaddress();
            Response.Write("<script>alert('Order Placed Successfully');</script>");
            Session["buyitems"] = null;
            clearsavedcart();
         }

        //user function
        int grandtotal()
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];
            int nrow = dt.Rows.Count;
            int i = 0;
            int gtotal = 0;
            while (i < nrow)
            {
                gtotal = gtotal + Convert.ToInt32(dt.Rows[i]["totalprice"].ToString());

                i = i + 1;
            }
            return gtotal;
        }

        public void findorderid()
        {
            String pass = "123456789";
            Random r = new Random();
            char[] mypass = new char[5];
            for(int i = 0; i < 5; i++)
            {
                mypass[i] = pass[(int)(9 * r.NextDouble())];
            }
            String orderid;
            orderid =  DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Year.ToString() + new string(mypass);

            TextBox3.Text = orderid;
        }

        void saveaddress()
        {
            String query = "insert into orderaddress(orderid,address,mobilenumber,name) values('" + TextBox3.Text+"','"+TextBox1.Text+"','"+TextBox2.Text+ "','" + Session["Name"].ToString() + "')";
            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand(query,con);
            cmd.ExecuteNonQuery();
            }


        private void clearsavedcart()
        {
            SqlConnection con = new SqlConnection(strcon);

            String updatedata = "delete from cartdetail where name='" + Session["Name"].ToString() + "'";
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = updatedata;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            //Response.Redirect("HomePage.aspx");
        }

        void getRid()
        {
            SqlConnection scon = new SqlConnection(strcon);
            scon.Open();

            String myquery = "select Rid from Food where f_id=" + Request.QueryString["f_id"].ToString();

            SqlCommand cmd = new SqlCommand(myquery, scon);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    //   Response.Write("<script>alert(' " + dr.GetValue(0).ToString()+ "');</script>");
                    Label6.Text = dr.GetValue(0).ToString();
                }
            }


        }
    }
}
