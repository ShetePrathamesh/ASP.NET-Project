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
    public partial class FoodForm : System.Web.UI.Page
    {
        String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Request.QueryString["cat"] != null)

            {
                DataList1.DataSourceID = null;
                DataList1.DataSource = SqlDataSource2;
                DataList1.DataBind();
            }
            else
            {
                DataList1.DataSourceID = null;
                DataList1.DataSource = SqlDataSource1;
                DataList1.DataBind();

            }

           
        }


        protected void DataList1_SelectedIndexChanged1(object sender, EventArgs e)
        {


        }
        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            
        }


        protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
        {
            ImageButton bt = (ImageButton)(sender);
            String ar = bt.CommandArgument;
            String[] id = ar.Split(',');
            String f_id = id[0].ToString();
            String Rid = id[1].ToString();
           //Response.Write("<script>alert(' " + id[1].ToString()+ "');</script>");
            
            Response.Redirect("AddToCart.aspx?f_id=" + f_id + "&Rid="+Rid+ "&qty=1");
            //Response.Write("<script>alert('Food Added Successfully');</script>");
        }
        
        
        
    
    }


}