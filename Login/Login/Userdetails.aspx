<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Userdetails.aspx.cs" Inherits="Login.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" style="text-align:center;margin-top:10%" >
        <div>
           
            <asp:Label ID="Label1" runat="server" ForeColor="Black" Text="User Role :" Width="120px"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" Width="300px">
                <asp:ListItem> </asp:ListItem>
                <asp:ListItem>Admin</asp:ListItem>
                <asp:ListItem>Super user</asp:ListItem>
                <asp:ListItem>Super Admin</asp:ListItem>
            </asp:DropDownList>
            <div style="margin-left: 100px; display:inline;">
            <asp:Label ID="Label2" runat="server" ForeColor="Black" Text="Marked checker permission level :" Width="230px"></asp:Label>
            <asp:DropDownList ID="DropDownList2" runat="server" Width="300px">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
            </asp:DropDownList>
                </div>
           
        </div>
        <p style="margin-left: 420px;">
           
            <asp:Label ID="Label4" runat="server" ForeColor="Black" Text="User ID :" Width="230px" style="margin-left: 99px"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" Width="290px" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
           
        </p>
        <p>
             <div>
           
            <asp:Label ID="Label3" runat="server" ForeColor="Black" Text="First Name :" Width="120px"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" Width="290px"></asp:TextBox>
           <div style="margin-left: 100px; display:inline;">
            <asp:Label ID="Label5" runat="server" ForeColor="Black"  Text="Last Name :" Width="230px"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server" Width="294px" style="margin-left: 0px"></asp:TextBox>
           </div>
           
           
            </div>
        </p>
       <p>
           <div>
           
            <asp:Label ID="Label6" runat="server" ForeColor="Black" Text="Email ID :" Width="120px"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" Width="290px" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
           <div style="margin-left: 100px; display:inline;">
            <asp:Label ID="Label7" runat="server" ForeColor="Black" Text="Date of Birth:" Width="230px"></asp:Label>
            <asp:TextBox ID="TextBox5" runat="server" Width="290px" textmode="Date"></asp:TextBox>
           </div>
        </div>
       </p>
        <p>
            
        <div>
           
            <asp:Label ID="Label8" runat="server" ForeColor="Black" Text="Mobile Carrier :" Width="120px"></asp:Label>
            <asp:DropDownList ID="DropDownList3" runat="server" Width="300px">
                <asp:ListItem>select</asp:ListItem>
                <asp:ListItem>mobile1</asp:ListItem>
                <asp:ListItem>mobile 2</asp:ListItem>
            </asp:DropDownList>
           <div style="margin-left: 100px; display:inline;">
            <asp:Label ID="Label9" runat="server" ForeColor="Black" Text="Mobile Number :" Width="230px"></asp:Label>
            <asp:TextBox ID="TextBox6" runat="server" Width="290px" textmode="number"></asp:TextBox>
           </div>
            </div>
        </p>
        <p>
            
        <div>
           
            <asp:Label ID="Label10" runat="server" ForeColor="Black" Text="Address line 1 :" Width="120px"></asp:Label>
            <asp:TextBox ID="TextBox7" runat="server" Width="290px" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
           <div style="margin-left: 100px; display:inline;">
            <asp:Label ID="Label11" runat="server" ForeColor="Black" Text="Address Line 2 :" Width="230px"></asp:Label>
            <asp:TextBox ID="TextBox8" runat="server" Width="290px" ></asp:TextBox>
           </div>
            </div>
        <asp:Button ID="Button1" runat="server" style="margin-top:50px" BackColor="Azure" BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" Font-Bold="True" Font-Size="XX-Large" ForeColor="Red" Text="Submit" />
        </p>
    </form>
</body>
</html>
