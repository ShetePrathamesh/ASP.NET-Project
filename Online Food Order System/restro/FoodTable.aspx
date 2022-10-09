<%@ Page Title="" Language="C#" MasterPageFile="~/restro/R_admin.Master" AutoEventWireup="true" CodeFile="FoodTable.aspx.cs" Inherits="Online_Food_Order_System.restro.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        
    <!--datatable css cdn-->
    <link href="../datatables/css/jquery.dataTables.min.css" rel="stylesheet" />
    <link rel="style" href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css"/>
    <!--jquery-->
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
     <!--datatable cdn-->
    <script src="../datatables/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div class="container-fluid">
      <div class="row">
        
     <div class="card-body" style="font-size:20px">
                  <div class="row">
                     <div class="col">
                        <center>
                          <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="35px" ForeColor="Blue" Text="Food List"></asp:Label>
           
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                    <div class="row">
                     <div class="col"  style="display:flex; justify-content:space-around" >
                         <asp:Button ID="Button3" runat="server" Text="ADD NEW" style="border-radius:10px; font-weight:bolder;background:#00ff90" OnClick="Button3_Click" Height="41px" Width="214px"></asp:Button>
                          <div >
                         <label style="font-size:25px;font-weight:bolder;" >Food ID </label>
                          <asp:TextBox  style="border-radius:10px;" ID="TextBox1" runat="server" Height="37px" Width="101px" ></asp:TextBox> </div>
                         <asp:Button ID="Button1" runat="server" Text="VIEW"  style="border-radius:10px;font-weight:bolder;background:#00ff90" OnClick="Button1_Click1" Height="38px" Width="216px"></asp:Button>
                        
                         <asp:Button ID="Button2" runat="server"  Text="UPDATE" style="border-radius:10px;font-weight:bolder;background:#00ff90" OnClick="Button2_Click" Height="38px" Width="216px"></asp:Button>
            
            <asp:Button ID="Button4" runat="server" Text="DELETE" style="border-radius:10px;font-weight:bolder;background:#00ff90" OnClick="Button4_Click1" Height="38px" Width="215px" />
                         <asp:Label ID="Label6" runat="server" Visible="False"></asp:Label>
        <br />
            
                        </div>
                  </div>
                 
         <div class="row">
        <span>
            </span>
            </div>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:foodOrderDBConnectionString %>" SelectCommand="SELECT [f_id], [food_name], [type], [category], [availability], [image] FROM [Food]"></asp:SqlDataSource>
     
   
    
        <br />
     
   
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="f_id" CssClass="table table-striped table-bordered" CellPadding="4" ForeColor="#333333" GridLines="None" Width="1142px" >
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="f_id" HeaderText="Food ID" ReadOnly="True" SortExpression="f_id" />
                <asp:BoundField DataField="food_name" HeaderText="Food Name" SortExpression="food_name" />
                <asp:BoundField DataField="type" HeaderText="Type" SortExpression="type" />
                <asp:BoundField DataField="category" HeaderText="Category" SortExpression="category" />
                <asp:BoundField DataField="availability" HeaderText="Availability" SortExpression="availability" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <br />
     
   
    
    
          </div>
          </div>
    

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <script src="../datatables/js/jquery.dataTables.min.js"></script>

     <script type="text/javascript">
        
         $(document).ready(function () {
             $('.table').prepend($("<thead></thead>").append($(this).find("tr:first"))).DataTable();
             //  $('.table').DataTable();
         });
       

     </script>
    

     

     </asp:Content>
