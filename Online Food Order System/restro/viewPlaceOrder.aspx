<%@ Page Title="" Language="C#" MasterPageFile="~/restro/R_admin.Master" AutoEventWireup="true" CodeFile="viewPlaceOrder.aspx.cs" Inherits="Online_Food_Order_System.restro.WebForm3" %>
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
      
        <section>
           <center> <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="40px" Font-Underline="True" ForeColor="Red" Text="Order Summary"></asp:Label>
            </center>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4"  ForeColor="#333333" GridLines="None" CssClass="table table-striped table-bordered" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="1080px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="orderid" HeaderText="Order ID" />
                        <asp:BoundField DataField="dateoforder" HeaderText="Order Date" />
                        <asp:BoundField DataField="totalamount" HeaderText="Total Amount" />
                        <asp:BoundField DataField="status" HeaderText="Status" />
                        <asp:CommandField ShowSelectButton="True" SelectText="View" >
                        <ControlStyle Font-Bold="True" Font-Size="25px" />
                        </asp:CommandField>
                    </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" Font-Size="25px" ForeColor="White" Height="30px" HorizontalAlign="Center" VerticalAlign="Middle" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" Font-Size="20px" HorizontalAlign="Center" VerticalAlign="Middle" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
                
            </asp:Panel>
            <br />
            <br />
            <br />
        <br />
            <br />
            <br />
            <br />
        <br />
            
        </section>
    </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
         <script src="../datatables/js/jquery.dataTables.min.js"></script>

     <script type="text/javascript">
        
         $(document).ready(function () {
             $('#<%=GridView1.ClientID%>').prepend($("<thead></thead>").append($(this).find("tr:first"))).DataTable();
             //  $('.table').DataTable();
         });
       

     </script>
    

</asp:Content>
