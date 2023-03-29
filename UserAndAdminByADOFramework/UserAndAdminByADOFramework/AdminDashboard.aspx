<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="UserAndAdminByADOFramework.AdminDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
       <link rel="Stylesheet" href="<%= ResolveUrl("~/css/style.css") %>" type="text/css" />
    
</head>

<body>

    <form id="form1" runat="server">
        <script type="text/javascript">
            function Confirm() {
                var confirm_value = document.createElement("INPUT");
                confirm_value.type = "hidden";
                confirm_value.name = "confirm_value";
                if (confirm("Do you want to delete data?")) {
                    confirm_value.value = "Yes";
                } else {
                    confirm_value.value = "No";
                }
                document.forms[0].appendChild(confirm_value);
            }
</script>
        <center>
         <asp:Label   CssClass="my-lbl-heading" runat="server" Text="Welcome to admin dashboard."></asp:Label>
        <div>
            <asp:Button runat="server" CssClass="my-btn-create-user" Text="Create New User" OnClick="GoToAdminCreateUser" />
        </div>
        <asp:GridView ID="gridViewShowAllUsers" DataKeyNames="UsrID" AutoGenerateColumns="False" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" >
            <Columns>
                <asp:BoundField HeaderText="User ID" DataField="UsrID" />
                <asp:BoundField HeaderText="Name" DataField="Name" />
                <asp:BoundField HeaderText="DOB" DataField="DateOfBirth" />
                <asp:BoundField HeaderText="City" DataField="City" />
                <asp:BoundField HeaderText="Company Name" DataField="CompanyName" />
                <asp:BoundField HeaderText="Experience" DataField="Experience" />
                <asp:BoundField HeaderText="Programming Skills" DataField="ProgrammingSkills" />
                <asp:TemplateField HeaderText="Delete">
                    <ItemTemplate>
                        <asp:Button CssClass="my-btn-grid" Text="Delete" runat="server" OnClick="DeleteUser" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Edit">
                    <ItemTemplate>
                        <asp:Button CssClass="my-btn-grid" Text="Edit User" runat="server" OnClick="GoToEditUser" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
            </center>
    </form>
</body>
</html>
