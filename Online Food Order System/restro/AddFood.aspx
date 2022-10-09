<%@ Page Title="" Language="C#" MasterPageFile="~/restro/R_admin.Master" AutoEventWireup="true" CodeFile="AddFood.aspx.cs" Inherits="Online_Food_Order_System.restro.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../css/info.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  </br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="FoodTable.aspx"><< Go To Back</a>
    
    <Section id="addFood">
        
        <center> 
            <span ><label class="l1">
            
            ADD FOOD INFO</label></span>
        </center>
            
        <Section id="form">
            <panel class="left">
         <lable>Food ID</lable></br>
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            &nbsp;
            <asp:Label ID="Label3" runat="server" Visible="False"></asp:Label>
            </br>
          
       <lable>Food Name</lable></br>
       <span><asp:TextBox ID="TextBox2" runat="server" TextMode="SingleLine" CssClass="input"></asp:TextBox></br>
            </span>
       <lable>Food Price</lable></br>
       <asp:TextBox ID="TextBox4" runat="server" TextMode="Number" CssClass="input"></asp:TextBox></br>
            
       <lable>Food Type</lable></br>
       <asp:TextBox ID="TextBox8" runat="server" CssClass="input"></asp:TextBox><br />
            
       <lable>Food Category</lable></br>
       <asp:TextBox ID="TextBox7" runat="server" TextMode="SingleLine" CssClass="input"></asp:TextBox></br>
            
   </panel>

    <panel class="right">
        <img  id="imgview" Height="150px" width="250px" style="margin-left:15%; border:2px solid red; border-radius:10px;"  src="../images/foodloco.png" /></br>

     <lable>Food Image</lable><br>
                 <asp:FileUpload ID="FileUpload1" runat="server" BorderWidth="1px" onchange="imageView(this);" CssClass="input"></asp:FileUpload></br>

        <lable>Food Description</lable></br>
        <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" CssClass="input"></asp:TextBox></br>
            
        <lable>Food Availability</lable></br>
           <asp:DropDownList ID="DropDownList1" runat="server" CssClass="input">
                     <asp:ListItem Text="Available" Value="Available" Selected="True" />
                <asp:ListItem Text="Unavailable" Value="Unavailable" />
                 </asp:DropDownList></br>          
        
    </panel>

    </Section>
       <div class="row">
        <div class="col-md-6 mx-auto" >
                  <asp:Button ID="Button1" runat="server" Text="ADD FOOD" CssClass="input" OnClick="Button1_Click" style="margin-top:7%" />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:foodOrderDBConnectionString %>" SelectCommand="SELECT * FROM [Food]"></asp:SqlDataSource>
        </div> 
        </div> 
        
    </Section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

   <script type="text/javascript">
        function imageView(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#imgview').prop('src', e.target.result);
                 }

                reader.readAsDataURL(input.files[0]);
            }
        }

   </script>

    

</asp:Content>
