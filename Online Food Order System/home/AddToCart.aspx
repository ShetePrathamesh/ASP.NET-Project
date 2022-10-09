<%@ Page Title="" Language="C#" MasterPageFile="~/home/Index.Master" AutoEventWireup="true" CodeFile="AddToCart.aspx.cs" Inherits="Online_Food_Order_System.home.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
        
    <section id="addcart" class="section-p1">
        <div class="heading">
            <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="darkmagenta" Text="MY CART PRODUCT" Font-Size="40px" Font-Underline="False"></asp:Label>
            <br />
            <br />
    <br />

  <a href="FoodForm.aspx" style="font-weight:bolder;font-size:20px;"><< Go To Back </a>
            
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" BackColor="#339933" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" ForeColor="White" Text="Place Order" style="font-size:20px;margin:3px" Height="47px" OnClick="Button1_Click" Width="243px" />
            <asp:Label ID="Label4" runat="server"></asp:Label>
        </div>
                   <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" ShowFooter="True" Height="203px" Width="982px" style="margin: 3%;" OnRowDeleting="GridView1_RowDeleting" AllowPaging="True" PageSize="5" >
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:ImageField DataImageUrlField="image" HeaderText="Image">
                        <ControlStyle Height="100px" Width="100px" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:ImageField>
                    <asp:BoundField DataField="food_name" HeaderText="Food Name" >
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Font-Size="20px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="price" HeaderText="Price" >
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Font-Size="20px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="qty" HeaderText="Quantity" >
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Font-Size="20px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="totalprice" HeaderText="Total Price" >
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Font-Size="20px" />
                    </asp:BoundField>
                    <asp:CommandField DeleteText="Remove" ShowDeleteButton="True" >
                    
                    <ControlStyle BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Font-Size="20px" />
                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:CommandField>
                    
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" BorderStyle="Solid" BorderWidth="3px" Font-Size="30px" Height="40px" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" Font-Size="20px" HorizontalAlign="Center" VerticalAlign="Middle" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Center" BorderStyle="None" Font-Bold="True" Font-Size="25px" VerticalAlign="Middle" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
                       </section>
        </center>

    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server"></asp:Content>
