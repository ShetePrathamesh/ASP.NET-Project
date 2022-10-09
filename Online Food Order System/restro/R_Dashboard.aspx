<%@ Page Title="" Language="C#" MasterPageFile="~/restro/R_admin.Master" AutoEventWireup="true" CodeFile="R_Dashboard.aspx.cs" Inherits="Online_Food_Order_System.restro.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      
                <section id="interface" style="background:none;border:none;width: 160%;margin-left:0%">
        <h2 class="name" style="color:#ff0000; font-size:50px">Dashboard<asp:Label ID="Label4" runat="server" Visible="False"></asp:Label>
                    </h2>
        <div class="values">
            <div class="val-box" >
                <i class="fas fa-utensils"></i>
                <div>
                    <h3>
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="30px" ForeColor="Black"></asp:Label></h3>
                    <span>Dishes</span>
                </div>
            </div>

            <div class="val-box" style="margin-left:5%">
                <i class="fas fa-utensil-fork"></i>               
                <div>
                    <h3>
                        <asp:Label ID="Label2" Font-Bold="True" Font-Size="30px" ForeColor="Black" runat="server" Text=""></asp:Label></h3>
                    <span>Orders</span>
                </div>
            </div>



            <div class="val-box" style="margin-left:30%">
                <i class="fas fa-user-friends"></i>
                <div>
          <h3>
                        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="30px" ForeColor="Black" Text=""></asp:Label></h3>
                              <span>Users</span>
                </div>
            </div>

        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
