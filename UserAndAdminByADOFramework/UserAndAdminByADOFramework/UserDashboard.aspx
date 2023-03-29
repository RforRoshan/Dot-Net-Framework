<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserDashboard.aspx.cs" Inherits="UserAndAdminByADOFramework.UserDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <link rel="Stylesheet" href="<%= ResolveUrl("~/css/style.css") %>" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">

        <div ID="showUserDetails" runat="server">

        
     <asp:Label ID="lblCreateuserHeading" CssClass="my-heading" runat="server" Text="User Deatils"></asp:Label>
        <div class="my-lbltxtbox">
            <asp:Label ID="lblUsrID"  CssClass="my-lbl" runat="server" Text="UsrID:"></asp:Label>
        </div>
         <div class="my-lbltxtbox">
            <asp:Label ID="lblName" CssClass="my-lbl" runat="server" Text="Name:"></asp:Label>
        </div>
         <div class="my-lbltxtbox">
            <asp:Label ID="lblDOB" CssClass="my-lbl" runat="server" Text="DOB:"></asp:Label>
        </div>
         <div class="my-lbltxtbox">
            <asp:Label ID="lblCity" CssClass="my-lbl" runat="server" Text="City:"></asp:Label>
        </div>
         <div class="my-lbltxtbox">
            <asp:Label ID="lblCompanyName" CssClass="my-lbl" runat="server" Text="Company Name:"></asp:Label>
        </div>
         <div class="my-lbltxtbox">
            <asp:Label ID="lblExperience" CssClass="my-lbl" runat="server" Text="Experience:"></asp:Label>
        </div>
          <div class="my-lbltxtbox">
            <asp:Label ID="lblProgrammingSkills" CssClass="my-lbl" runat="server" Text="Programming Skills:"></asp:Label>
        </div>
        <asp:Button CssClass="my-btn" runat="server" Text="Edit user Details" OnClick="EditUser"/>
            </div>



        <div ID="showEditDetails" runat="server">
            <asp:Label  CssClass="my-heading" runat="server" Text="Update User"></asp:Label>
        
         <div class="my-lbltxtbox">
            <asp:Label ID="lblName1" CssClass="my-lbl" runat="server" Text="Name:"></asp:Label>
            <asp:TextBox ID="txtName" CssClass="my-txtbox" runat="server"></asp:TextBox>
        </div>
         <div class="my-lbltxtbox">
            <asp:Label ID="lblDOB1" CssClass="my-lbl" runat="server" Text="DOB:"></asp:Label>
            <asp:TextBox ID="txtDOB" CssClass="my-txtbox" TextMode="Date" runat="server"></asp:TextBox>
        </div>
         <div class="my-lbltxtbox">
            <asp:Label ID="lblCity1" CssClass="my-lbl" runat="server" Text="City:"></asp:Label>
            <asp:TextBox ID="txtCity" CssClass="my-txtbox" runat="server"></asp:TextBox>
        </div>
         <div class="my-lbltxtbox">
            <asp:Label ID="Label6" CssClass="my-lbl" runat="server" Text="Company Name:"></asp:Label>
            <asp:TextBox ID="txtCompanyName" CssClass="my-txtbox" runat="server"></asp:TextBox>
        </div>
         <div class="my-lbltxtbox">
            <asp:Label ID="Label7" CssClass="my-lbl" runat="server" Text="Experience:"></asp:Label>
            <asp:TextBox ID="txtExperience" CssClass="my-txtbox" TextMode="Number" runat="server"></asp:TextBox>
        </div>
          <div class="my-lbltxtbox">
            <asp:Label ID="Label8" CssClass="my-lbl" runat="server" Text="Programming Skills:"></asp:Label>
            <asp:TextBox ID="txtProgrammingSkills" CssClass="my-txtbox" runat="server"></asp:TextBox>
        </div>
        <asp:Button CssClass="my-btn" runat="server" Text="Update User" OnClick="EditUserDetails"  />
         <div class="my-lbltxtbox">
            <asp:Label ID="lblMessage" CssClass="my-lbl" runat="server" Visible="false" Text=""></asp:Label>
        </div>
        </div>
    </form>
</body>
</html>
