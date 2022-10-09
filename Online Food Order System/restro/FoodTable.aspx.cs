using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Food_Order_System.restro
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            getRid();

            SqlConnection scon = new SqlConnection(strcon);
            scon.Open();

            String myquery = "select * from Food where Rid='" + Label6.Text + "'";

            SqlCommand cmd = new SqlCommand(myquery, scon);
            // cmd.CommandText = myquery;
            //cmd.Connection = scon;

            SqlDataReader dr = cmd.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.DataBind();
            
            scon.Close();

        }

        protected void Button3_Click(object sender, EventArgs e)

        {
            //go to add page
            //Response.Redirect("AddFood.aspx");
            Response.Redirect("AddFood.aspx");
            
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            //go view page

            if (checkId())
            {
                Response.Redirect("ViewFood.aspx?f_id=" + TextBox1.Text);
                clear();
            }
            else
            {
                Response.Write("<script>alert('not Exist this Food ID,try other ID ');</script>");
                clear();
            }
        
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (checkId())
            {
                Response.Redirect("UpdateFood.aspx?f_id=" + TextBox1.Text);
                clear();
            }
            else
            {
                Response.Write("<script>alert('not Exist this Food ID,try other ID ');</script>");
                clear();
            }
        }
        protected void Button4_Click1(object sender, EventArgs e)
        {//delete 
            if (checkId())
            {
                deleteFoodByID();
            }
            else
            {
                Response.Write("<script>alert('not Exist this Food ID,try other ID ');</script>");
            }
        }

        //user defind function
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
                    Label6.Text = dr.GetValue(0).ToString();
                }
            }

        }
        bool checkId()
        {

            Boolean id = false;

            String myquery = "select * from Food where f_id='" + TextBox1.Text.Trim() + "'";

            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            SqlCommand cmd = new SqlCommand(myquery, con);

            /*SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            */
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;

            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                id = true;
            }

            return id;
        }

        void deleteFoodByID()
        {
            String myquery = "delete from Food where f_id='" + TextBox1.Text.Trim() + "'";

            SqlConnection con = new SqlConnection(strcon);
            con.Open();
            
            SqlCommand cmd = new SqlCommand(myquery, con);

            cmd.ExecuteNonQuery();
            con.Close();

            GridView1.DataBind();

            Response.Write("<script>alert('Food Deleted Successfully');</script>");

            clear();
        }

        void clear()
        {
            TextBox1.Text = "";
        }


        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }

        /*protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow gr = GridView1.SelectedRow;
            string st = gr.Cells[0].ToString();
             TextBox1.Text = st;
            //Response.Redirect("ViewFood.aspx?f_id=" + st.ToString());

        }*/

       


       
    }
}