<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="UserAndAdminByADOFramework.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="Stylesheet" href="<%= ResolveUrl("default.css") %>" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <center>

        <asp:Label ID="lblLoginHeading"  runat="server" Text="Login"  CssClass="my-lblLoginHeading"></asp:Label>
        <div class="login-lbltxtbox">
            <asp:Label ID="lblUsrID" Width="200px"  CssClass="login-lbl" runat="server" Text="UsrID:"></asp:Label>
            <asp:TextBox ID="txtUsrID" CssClass="login-txtbox" TextMode="Number" runat="server"></asp:TextBox>
        </div>
         <div class="login-lbltxtbox">
            <asp:Label ID="lblUserName" Width="200px" CssClass="login-lbl" runat="server" Text="User Name:"></asp:Label>
            <asp:TextBox ID="txtUserName" CssClass="login-txtbox" runat="server"></asp:TextBox>
        </div>
         <div class="login-lbltxtbox">
            <asp:Label ID="lblPassword" Width="200px" CssClass="login-lbl" runat="server" Text="Password:"></asp:Label>
            <asp:TextBox ID="txtPassword" CssClass="login-txtbox" TextMode="Password" runat="server"></asp:TextBox>
        </div>
        <div>
        <asp:Label ID="lblUserType" Width="200px" CssClass="login-lbl" runat="server" Text="User Type: "></asp:Label>
        <asp:DropDownList ID="dropDownListUserType"  CssClass="login-txtbox" Width="250px" runat="server">
            <asp:ListItem Value="">Please Select</asp:ListItem>  
            <asp:ListItem Value="1">User </asp:ListItem>  
            <asp:ListItem Value="2">Admin</asp:ListItem>  
        </asp:DropDownList>
        <div>
            <asp:Label ID="dropDrownMessage" ForeColor="red" CssClass="login-lbl" runat="server" Text="" Visible="false" ></asp:Label>
        </div>

        </div>
             <asp:Button runat="server" CssClass="login-btn" Text="Login" onclick="Login" />

        <asp:Label ID="errorMessage" CssClass="login-lbl" runat="server" Text="" Visible="false" ></asp:Label>
            
        </center>
    </form>
</body>
</html>
