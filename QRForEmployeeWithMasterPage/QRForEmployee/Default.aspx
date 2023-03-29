<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="QRForEmployee.Default1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div>
        <asp:Label ID="lblDetails" runat="server" Font-Bold="True" Font-Size="50px" CssClass="my-heading" ForeColor="Blue" Text="Enter the details" Font-Italic="False"></asp:Label>
        </div>
        <asp:Label ID="lblFirstName" runat="server" style="padding-top:40px" Font-Bold="True" Font-Size="40px" ForeColor="Red" Text="First Name :" Width="300px"></asp:Label>
        <asp:TextBox ID="txtFirstName" runat="server" required BorderColor="Black" BorderWidth="2px" CssClass="my-textbox" Font-Size="30px" Width="300px"></asp:TextBox>
        <p>
        <asp:Label ID="lblLastName" runat="server" Font-Bold="True" Font-Size="40px" ForeColor="Red" Text="Last Name :" Width="300px"></asp:Label>
        <asp:TextBox ID="txtLastName" runat="server" required BorderColor="Black" BorderWidth="2px" CssClass="my-textbox" Font-Size="30px" Width="300px"></asp:TextBox>
        </p>
        <p>
        <asp:Label ID="lblDateOfBirth" runat="server" Font-Bold="True" Font-Size="40px" ForeColor="Red" Text="Date Of Birth :" Width="300px"></asp:Label>
        <asp:TextBox ID="txtDateOfBirth" runat="server" required  BorderColor="Black" BorderWidth="2px" TextMode="Date" CssClass="my-textbox" Font-Size="30px" Width="300px"></asp:TextBox>
        </p>
        <p>
        <asp:Label ID="lblAddress" runat="server" Font-Bold="True" Font-Size="50px" ForeColor="Orange" Text="Address" Width="300px"></asp:Label>
        </p>
        <p>
        <asp:Label ID="lblLatitude" runat="server" Font-Bold="True" Font-Size="40px" ForeColor="Red" Text="Latitude :" Width="300px"></asp:Label>
        <asp:TextBox ID="txtLatitude" runat="server" required BorderColor="Black" BorderWidth="2px" CssClass="my-textbox" Font-Size="30px" Width="300px"></asp:TextBox>
        </p>
        <p>
        <asp:Label ID="lblLongitude" runat="server" Font-Bold="True" Font-Size="40px" ForeColor="Red" Text="Longitude :" Width="300px"></asp:Label>
        <asp:TextBox ID="txtLongitude" runat="server" required BorderColor="Black" BorderWidth="2px" CssClass="my-textbox"  Font-Size="30px" Width="300px"></asp:TextBox>
        </p>
        <asp:Button ID="Button1" runat="server" BackColor="Azure" BorderColor="Brown" BorderWidth="5px" CssClass="my-submit-button" Font-Size="40px" Text="Submit" OnClick="ShowQR" />
</asp:Content>
