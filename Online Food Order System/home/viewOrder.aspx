<%@ Page Title="" Language="C#" MasterPageFile="~/home/Index.Master" AutoEventWireup="true" CodeFile="viewOrder.aspx.cs" Inherits="Online_Food_Order_System.home.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../css/viewProfile.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
        <section>
            <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="40px" Font-Underline="True" ForeColor="Red" Text="Order Summary"></asp:Label>
            <asp:Panel ID="Panel1" runat="server">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" Font-Size="20px" Font-Underline="False" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="1040px">
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
                <br />

            


            </asp:Panel>
            <br />
            <br />
            <br />
        <br />
            
        </section>
    </center>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
