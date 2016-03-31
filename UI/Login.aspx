<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="UI.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome to Twitter.</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="The description of my page" />    
    <meta charset="utf-8" />
    <asp:PlaceHolder runat="server">
        <%: Scripts.Render("~/bundles/modernizr") %>
    </asp:PlaceHolder>

    <webopt:bundlereference runat="server" path="~/Content/css" />
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />
    <meta name="description" content="The description of my page" />    
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>
<body>
    <div class="container">
        Home &nbsp &nbsp &nbsp About
    <div class="jumbotron">
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
            <Scripts>
                <%--To learn more about bundling scripts in ScriptManager see http://go.microsoft.com/fwlink/?LinkID=301884 --%>
                <%--Framework Scripts--%>
                <asp:ScriptReference Name="MsAjaxBundle" />
                <asp:ScriptReference Name="jquery" />
                <asp:ScriptReference Name="bootstrap" />
                <asp:ScriptReference Name="respond" />
                <asp:ScriptReference Name="WebForms.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebForms.js" />
                <asp:ScriptReference Name="WebUIValidation.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebUIValidation.js" />
                <asp:ScriptReference Name="MenuStandards.js" Assembly="System.Web" Path="~/Scripts/WebForms/MenuStandards.js" />
                <asp:ScriptReference Name="GridView.js" Assembly="System.Web" Path="~/Scripts/WebForms/GridView.js" />
                <asp:ScriptReference Name="DetailsView.js" Assembly="System.Web" Path="~/Scripts/WebForms/DetailsView.js" />
                <asp:ScriptReference Name="TreeView.js" Assembly="System.Web" Path="~/Scripts/WebForms/TreeView.js" />
                <asp:ScriptReference Name="WebParts.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebParts.js" />
                <asp:ScriptReference Name="Focus.js" Assembly="System.Web" Path="~/Scripts/WebForms/Focus.js" />
                <asp:ScriptReference Name="WebFormsBundle" />
                <%--Site Scripts--%>
            </Scripts>
            </asp:ScriptManager>
    
        <div class="row">
        <div class="col-md-2">
            
        </div>
        <div class="col-md-4">
            
                <hgroup> 
        <h2><%: Title %></h2>
        
        </hgroup>
         <p>Connect with your friends — and other fascinating people. Get in-the-moment updates on the things that interest you. And watch events unfold, in real time, from every angle.</p>
        </div>
        <div class="col-md-4">            
        
            
             
      <div class="form-group">        
        <asp:TextBox ID="TextBoxUser" runat="server" PlaceHolder="Phone, email or username" CssClass="form-control" ></asp:TextBox>
           <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBoxUser" ForeColor="Red"
                                ErrorMessage="*"></asp:RequiredFieldValidator>--%>
      </div>
      <div class="form-group">        
        <asp:TextBox ID="TextBoxPass" runat="server" TextMode="Password" placeholder="Password" CssClass="form-control" ></asp:TextBox>
           <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxPass" ForeColor="Red"
                                ErrorMessage="*"></asp:RequiredFieldValidator>--%>
      </div>
       <div class="form-group">
       <asp:Button ID="ButtonLogin" CssClass="form-control btn btn-primary btn-block custombtn" runat="server" Text="Log in" OnClick="ButtonLogin_Click"/>
      
       <div class="checkbox">
           <asp:CheckBox ID="CheckBoxRemember" runat="server" Text="Remember me" />
       </div> 
       <asp:HyperLink ID="HyperLink1" runat="server">Forgot password?</asp:HyperLink>
           <br />        
            
            New to Twitter? Sign up
            <div class="form-group">        
        <asp:TextBox ID="TextBox1" runat="server" PlaceHolder="Full name" CssClass="form-control" ></asp:TextBox>
           <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ForeColor="Red"
                                ErrorMessage="*"></asp:RequiredFieldValidator>--%>
      </div>
      <div class="form-group">        
        <asp:TextBox ID="TextBox2" runat="server" placeholder="Email" CssClass="form-control" ></asp:TextBox>
           <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" ForeColor="Red"
                                ErrorMessage="*"></asp:RequiredFieldValidator>--%>
      </div>
           <div class="form-group">        
        <asp:TextBox ID="TextBox4" runat="server" PlaceHolder="User ID" CssClass="form-control" ></asp:TextBox>
           <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ForeColor="Red"
                                ErrorMessage="*"></asp:RequiredFieldValidator>--%>
      </div>
      <div class="form-group">        
      <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" placeholder="Password" CssClass="form-control" ></asp:TextBox>
           <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox3" ForeColor="Red"
                                ErrorMessage="*"></asp:RequiredFieldValidator>--%>
      </div>
       <div class="form-group">
       <asp:Button ID="ButtonSignUp" CssClass="form-control btn btn-warning" runat="server" Text="Sign up for Twitter" OnClick="ButtonSignUp_Click"/>
      </div>   
        <div class="form-group">
       <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
       </div>          
       </div>
                  
        <div class="col-md-2">
            
        </div>
       </div>
</div>
        <div class="row">
        <div class="col-md-2">
            
        </div>
        <div class="col-md-4">
            
        </div>
        <div class="col-md-4">      
            <footer>      
                <h6>&copy; <%: DateTime.Now.Year %> Twitter
                </h6>            
            </footer>
       </div>
        <div class="col-md-2">            
        </div>
        </div>        
    </form>
        </div>
        </div>
</body>
</html>