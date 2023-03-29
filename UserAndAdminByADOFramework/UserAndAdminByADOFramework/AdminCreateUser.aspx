<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminCreateUser.aspx.cs" Inherits="UserAndAdminByADOFramework.AdminCreateUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="Stylesheet" href="<%= ResolveUrl("~/css/style.css") %>" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
       <asp:Label ID="lblCreateuserHeading" CssClass="my-heading" runat="server" Text="Create New User"></asp:Label>
        <div class="my-lbltxtbox">
            <asp:Label ID="lblUsrID" Width="170px" CssClass="my-lbl" runat="server" Text="UsrID:"></asp:Label>
            <asp:TextBox ID="txtUsrID" CssClass="my-txtbox" TextMode="Number" runat="server"></asp:TextBox>
        </div>
         <div class="my-lbltxtbox">
            <asp:Label ID="lblName" Width="170px" CssClass="my-lbl" runat="server" Text="Name:"></asp:Label>
            <asp:TextBox ID="txtName" CssClass="my-txtbox" runat="server"></asp:TextBox>
        </div>
         <div class="my-lbltxtbox">
            <asp:Label ID="lblDOB" Width="170px" CssClass="my-lbl" runat="server" Text="DOB:"></asp:Label>
            <asp:TextBox ID="txtDOB"  Width="250px"  CssClass="my-txtbox" TextMode="Date" runat="server"></asp:TextBox>
        </div>
         <div class="my-lbltxtbox">
            <asp:Label ID="lblCity" Width="170px" CssClass="my-lbl" runat="server" Text="City:"></asp:Label>
            <asp:TextBox ID="txtCity" CssClass="my-txtbox" runat="server"></asp:TextBox>
        </div>
         <div class="my-lbltxtbox">
            <asp:Label ID="lblCompanyName" Width="170px" CssClass="my-lbl" runat="server" Text="Company Name:"></asp:Label>
            <asp:TextBox ID="txtCompanyName" CssClass="my-txtbox" runat="server"></asp:TextBox>
        </div>
         <div class="my-lbltxtbox">
            <asp:Label ID="lblExperience" Width="170px" CssClass="my-lbl" runat="server" Text="Experience:"></asp:Label>
            <asp:TextBox ID="txtExperience" CssClass="my-txtbox" TextMode="Number" runat="server"></asp:TextBox>
        </div>
          <div class="my-lbltxtbox">
            <asp:Label ID="lblProgrammingSkills" CssClass="my-lbl" runat="server" Text="Programming Skills:"></asp:Label>
            <asp:TextBox ID="txtProgrammingSkills" CssClass="my-txtbox" runat="server"></asp:TextBox>
        </div>
        <asp:Button runat="server" Style="border-radius: 15px;background-color: dodgerblue;color: white;font: bold;font-size: 20px;padding: 4px;margin: 10px;" Text="Create New User" OnClick="CreateNewUser"  />
         <div class="my-lbltxtbox">
            <asp:Label ID="lblMessage" CssClass="my-lbl" runat="server" Visible="false" Text=""></asp:Label>
        </div>
        <div>
             <asp:Button runat="server" Style="border-radius: 15px;background-color: dodgerblue;color: white;font: bold;font-size: 20px;padding: 4px;margin: 10px;" Text="Go To Dashboard" OnClick="GoToAdminDashboard"  />
        </div>
    </form>
</body>
</html>
