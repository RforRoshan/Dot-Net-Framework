<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BasicForm.aspx.cs" Inherits="Task_ASP.Net_FrameWork_.BasicForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 1223px;
        }
        .auto-style2 {
            margin-left: 0px;
        }
    </style>
    <link href="StyleSheet1.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table width="60%" align="center">
                <tr ><td>
                    

                    <asp:Label CssClass="custom-css-heading" ID="Label1" runat="server" Text="Form" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
                    
               </td></tr>

                <tr align="center">
                    <td class="auto-style1">
                        
                        User Role :
                        <asp:DropDownList ID="DropDownList1" runat="server" Width="173px">
                            <asp:ListItem>Admin</asp:ListItem>
                            <asp:ListItem>User</asp:ListItem>
                            <asp:ListItem>SuperAdmin</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                        </td>
                    <td class="auto-style1">
                        Maker-Checker Permission Level :&nbsp;
                        <asp:DropDownList ID="DropDownList2" runat="server" Width="154px">
                            <asp:ListItem>Selected</asp:ListItem>
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                            </td>
                             </tr>
                <tr align="center">
                    <td class="auto-style1">
                        
                        User Id :
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style2" Height="19px" Width="165px"></asp:TextBox>
                        </td>
                    <td class="auto-style1">
                         First name :
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style2" Height="19px" Width="165px"></asp:TextBox>
                        </td>
                             </tr>
                <tr align="center">
                    <td class="auto-style1">
                         Last name :
                        <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style2" Height="19px" Width="165px"></asp:TextBox>

                        </td>
                    <td class="auto-style1">
                         Email Id :
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style2" Height="19px" Width="165px"></asp:TextBox>
                        </td>
                             </tr>
                <tr align="center">
                    <td class="auto-style1">
                         Date Of Birth :
                        <asp:TextBox ID="TextBox5" runat="server" Width="149px" TextMode="Date"></asp:TextBox>
                        </td>
                    <td class="auto-style1">
                        Mobile Carrier :&nbsp;
                        <asp:DropDownList ID="DropDownList3" runat="server" Width="173px">
                            <asp:ListItem>select</asp:ListItem>
                            <asp:ListItem>Telephone</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                        </td>
                             </tr>
                <tr align="center">
                    <td class="auto-style1 " >
                        Mobile Number :
                        <asp:TextBox ID="TextBox7" runat="server" Width="149px"></asp:TextBox>
                        </td>
                    <td class="auto-style1 "cssclass="custom-css">
                         Address Line 1 :
                        <asp:TextBox ID="TextBox9" runat="server" Width="149px"></asp:TextBox>
                        </td>
                             </tr>
                <tr align="center">
                    <td class="auto-style1 "cssclass="custom-css">
                         Address Line 2 :
                        <asp:TextBox ID="TextBox8" runat="server" Width="149px"></asp:TextBox>

                        
                    </td>
                </tr>

            </table>
        </div>
    </form>
</body>
</html>
