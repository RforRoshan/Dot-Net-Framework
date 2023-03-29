<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dropdown.aspx.cs" Inherits="Frame1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">  
        <p>Select your gender</p>  
        <div>  
            <asp:DropDownList ID="DropDownList1" runat="server" >  
        </asp:DropDownList>  
        </div>  
        <br />  
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />  
        <br />  
        <br />  
        <asp:Label ID="Label1" runat="server" EnableViewState="False"></asp:Label>  
    </form>  
</body>
</html>
