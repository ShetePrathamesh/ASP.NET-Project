<%@ Page Title="" Language="C#" MasterPageFile="~/home/Index.Master" AutoEventWireup="true" CodeFile="PlaceOrder.aspx.cs" Inherits="Online_Food_Order_System.home.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-md-6 mx-auto"">
        <section>
        <br />
      <center>  <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="40px" Font-Underline="True" ForeColor="Red" Text="Order Summary"></asp:Label>
          </center>
           <div class="card" style="margin-top:4%">
               <div class="card-body" style="font-size:20px">
             
           
          <div class="row">
                     <div class="col-md-6">
                        <label> Order ID</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" ></asp:TextBox>
                            <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Order Date</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" ></asp:TextBox>
                        </div>
                     </div>
                  </div>
          
        <br />
 <center>           
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Height="193px" ShowFooter="True" Width="641px">
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
             <asp:BoundField DataField="totalprice" HeaderText="Total Price" >
             <ItemStyle Font-Size="20px" HorizontalAlign="Center" VerticalAlign="Middle" />
             </asp:BoundField>
         </Columns>
         <EditRowStyle BackColor="#7C6F57" />
         <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" Font-Size="20px" Height="50px" HorizontalAlign="Center" VerticalAlign="Middle" />
         <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" Height="30px" Font-Size="20px" />
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
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <div class="row">
                     <div class="col-md-6">
                        <label> Contact No.</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Contact No." TextMode="Number"  ></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>PayMent Mode<br />
                         </label>
                          <div class="form-group">
                         <asp:DropDownList ID="DropDownList1" runat="server" Height="31px" Width="176px">
                             <asp:ListItem Selected="True">Cash On Delivery</asp:ListItem>
                             <asp:ListItem>Net Banking</asp:ListItem>
                             <asp:ListItem>UPI</asp:ListItem>
                         </asp:DropDownList>
                              </div>
&nbsp;<div class="form-group">
                          
                        </div>
                     </div>
                  </div>
                &nbsp;&nbsp;&nbsp;

                  <div class="row">
                     <div class="col">
                        <label>Delivary Address</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Full Address" TextMode="MultiLine" Rows="2"></asp:TextBox>
                        </div>
                     </div>
                  </div>         
            <!-- <div class="row">
                     <div class="col">
                        <label>Full Address</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Full Address" TextMode="MultiLine" Rows="2"></asp:TextBox>
                        </div>
                     </div>
                  </div>-->

    <br />
    <center>
    <asp:Button ID="Button1" runat="server" BackColor="#0066FF" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Font-Size="20px" ForeColor="White" Height="40px" Text="Comfirm" Width="166px" OnClick="Button1_Click" />
    </center>
          </div>
               </div>
     <br />
    <br />
    <br />
     <br />
        
       
        <br />
          </section>
        </div>  
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    
</asp:Content>
