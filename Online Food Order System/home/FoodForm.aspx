
<%@ Page Title="" Language="C#" MasterPageFile="~/home/Index.Master" AutoEventWireup="true" CodeFile="FoodForm.aspx.cs" Inherits="Online_Food_Order_System.home.FoodForm" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        
        .pro-container {
        display: flex;
        /* justify-content: space-between; */
        padding-top: 20px;
        flex-wrap: wrap;}
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
   <section id="allfood" class="section-p1">
  <div class="pro-container">
      
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource2" RepeatColumns="5" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand" DataKeyField="f_id"  >
            <ItemTemplate>
               <div class="prod">
                <asp:Image ID="Image1" runat="server" Height="250px" ImageUrl='<%# Eval("image") %>' Width="100%" />
                
                <div class="desc">
                <h5><asp:Label ID="Label3" runat="server" Text='<%# Eval("food_name") %>' Font-Bold="True" Font-Size="20px" ForeColor="#CC0000"></asp:Label></h5>
                
                <asp:Label ID="Label4" runat="server" Text='<%# Eval("type") %>'></asp:Label>
               
                <asp:Label ID="Label5" runat="server" Text='<%# Eval("category") %>'></asp:Label>
               
                
                 <div class="cart" style="display:flex; margin-left:15px">
                    <a href="viewDetails.aspx?f_id=<%# Eval("f_id") %>"><img  src="../images/info.jpeg" style="width:50px;height:40px; "/></a>
               
                     <h4><i class="fas fa-rupee-sign" style="margin-top: 10px;
    margin-right: 15px;"><asp:Label ID="Label6" runat="server" Text='<%# Eval("price") %>' Font-Bold="True" Font-Size="25px" ForeColor="Black" style="margin-top:5px"></asp:Label></i></h4>
               
                     <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/addcart.jpeg"   OnClick="ImageButton1_Click1"  CommandArgument='<%# Eval("f_id") +","+Eval("Rid") %>' style="width:50px;height:40px;margin-left:5px" />


                     </div>
                    </div>

                </div>
             </ItemTemplate>
        </asp:DataList>
             
             
       </div>


        </section>
        
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:foodOrderDBConnectionString %>" SelectCommand="SELECT * FROM [Food]"></asp:SqlDataSource>
    </p>
    <p>
        </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:foodOrderDBConnectionString %>" SelectCommand="SELECT * FROM [Food] WHERE ([category] = @category)">
            <SelectParameters>
                <asp:QueryStringParameter Name="category" QueryStringField="cat" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
