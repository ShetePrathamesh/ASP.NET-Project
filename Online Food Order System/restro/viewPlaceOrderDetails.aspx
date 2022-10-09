<%@ Page Title="" Language="C#" MasterPageFile="~/restro/R_admin.Master" AutoEventWireup="true" CodeFile="viewPlaceOrderDetails.aspx.cs" Inherits="Online_Food_Order_System.restro.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         <div class="container-fluid">
      <div class="row">
        
     
     
            <div class="card" style="margin-top:4%">
               <div class="card-body" style="font-size:20px">
                  <div class="row">
                     <div class="col">
                        <center>
                          <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="35px" ForeColor="Green" Text="Order Summary"></asp:Label>
           
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label> Order ID </label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" ></asp:TextBox>
                        </div>
                     </div>
                    <div class="col-md-6">
                        <label>Order Date </label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server"></asp:TextBox>
                        </div>
                     </div>

                  </div>
                  <div class="row">

                  <div class="col-md-6">
                        <label> Order Status</label>
                        <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server"></asp:TextBox>
                        
                            </div>
                     </div>

                  <div class="col-md-6">
                        <label>Customer Name </label>
                        <div class="form-group">
                            <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server"></asp:TextBox>
                        
                        </div>
                     </div>

                  </div>

                   <div class="row">
                       <div class="col-md-6">
                           <asp:Button ID="Button2" runat="server" BackColor="#129185" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Font-Size="20px" ForeColor="White" Height="40px" style="border-radius:10px;margin-top:10px" Text="Update" Width="166px" OnClick="Button1_Click"  />
     
                        </div>
                     </div>
                   </div>
                      
                   <center>
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Height="193px" Width="641px" DataSourceID="SqlDataSource1" BorderStyle="Outset">
         <AlternatingRowStyle BackColor="White" />
         <Columns>
             <asp:BoundField DataField="food_name" HeaderText="Name" >
             <ItemStyle Font-Size="20px" HorizontalAlign="Center" VerticalAlign="Middle" />
             </asp:BoundField>
             <asp:BoundField DataField="price" HeaderText="Price" >
             <ItemStyle Font-Size="20px" HorizontalAlign="Center" VerticalAlign="Middle" />
             </asp:BoundField>
             <asp:BoundField DataField="qty" HeaderText="Quantity" >
             <ItemStyle Font-Size="20px" HorizontalAlign="Center" VerticalAlign="Middle" />
             </asp:BoundField>
         </Columns>
         <EditRowStyle BackColor="#7C6F57" />
         <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" Font-Size="20px" Height="40px" HorizontalAlign="Center" VerticalAlign="Middle" />
         <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" Height="30px" Font-Size="20px" HorizontalAlign="Center" VerticalAlign="Middle" />
         <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
         <RowStyle BackColor="#E3EAEB" Height="40px" />
         <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
         <SortedAscendingCellStyle BackColor="#F8FAFA" />
         <SortedAscendingHeaderStyle BackColor="#246B61" />
         <SortedDescendingCellStyle BackColor="#D4DFE1" />
         <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
                       </center>
                   <br />
                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:foodOrderDBConnectionString %>" SelectCommand="SELECT [food_name], [price], [qty] FROM [orderdetails] WHERE ([orderid] = @orderid)">
                       <SelectParameters>
                           <asp:QueryStringParameter Name="orderid" QueryStringField="orderid" Type="Int64" />
                       </SelectParameters>
                   </asp:SqlDataSource>
    <br />
  
                   <div class="row">
                     <div class="col-md-6">
                        <label> Contact No.</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server"  ></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>PayMent Mode</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server"  ></asp:TextBox>
                        </div>
                     </div>
                  </div>
                
                  <div class="row">
                     <div class="col">
                        <label>Delivary Address</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server"  TextMode="MultiLine" Rows="2"></asp:TextBox>
                        </div>
                     </div>
                  </div>
              </div>
              </div>
           


             </div>
    <a href="viewPlaceOrder.aspx"><< Go To Back</a><br><br>
                <br />
                               <br />
                               <br />
         
     
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
