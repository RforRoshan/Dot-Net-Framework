<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ShowQR.aspx.cs" Inherits="QRForEmployee.ShowQR1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <center>
            <asp:Label ID="Label2" runat="server" Text="--Your QR--" Font-Bold="True" Font-Size="50px" ForeColor="Red"></asp:Label>

        <asp:GridView ID="GridView1" AllowPaging="True" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:ImageField DataImageUrlField="Img" HeaderText="QR-Image">
                </asp:ImageField>
                <asp:BoundField AccessibleHeaderText="First Name" DataField="FirstName" HeaderText="First Name" />
                <asp:BoundField AccessibleHeaderText="Last Name" DataField="LastName" HeaderText="Last Name" />
                <asp:BoundField AccessibleHeaderText="Date Of Birth" DataField="DateOfBirth" HeaderText="Date Of Birth" />
                <asp:BoundField AccessibleHeaderText="Latitude" DataField="Latitude" HeaderText="Latitude" />
                <asp:BoundField AccessibleHeaderText="Longitude" DataField="Longitude" HeaderText="Longitude" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
             
             </asp:GridView>  
            
       </center>
        
</asp:Content>
