<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Task-2.aspx.cs" Inherits="Task_ASP.Net_FrameWork_.Task_2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script runat="server">
         protected void LinkButton1_Click(object sender, System.EventArgs e)
    {
        Label1.Text = "Hi " + TextBox1.Text;
        Label1.Text += "!<br />You are a " + RadioButtonList2.SelectedItem.Text;
    }
         protected void ListBox1_SelectedIndexChanged(object sender, System.EventArgs e) {
        Label1.Text = "Your favorite color is : " +
            ListBox1.SelectedItem.Text.ToString();
    }
        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
    {
        if (e.Day.Date == new DateTime(2008,10,7))
        {
            Literal Literal1 = new Literal();
            Literal1.Text ="<br /><font size=-1 color=Gold>Blog First Post</font>";

            e.Cell.Font.Italic = true;
            e.Cell.Font.Size = FontUnit.XLarge;
            e.Cell.BackColor = System.Drawing.Color.Crimson;
            e.Cell.BorderColor = System.Drawing.Color.Pink;
            e.Cell.ForeColor = System.Drawing.Color.Snow;
            e.Cell.Font.Name = "Courier New";

            e.Cell.Controls.AddAt(1,Literal1);
        }
    }
    protected void Page_Load(object sender, System.EventArgs e) {
        if(!Page.IsPostBack){
            MultiView1.ActiveViewIndex = 0;
           }
    }

    void NextImage(object sender, System.EventArgs e)
    {
        MultiView1.ActiveViewIndex += 1;
    }

    protected void Page_PreRender(object sender, System.EventArgs e) {
        Label1.Text = "Beautiful birds images : " +
            (MultiView1.ActiveViewIndex + 1).ToString() +
            " of " + MultiView1.Views.Count.ToString();
    }
</script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <h2 style="color:Navy">PlaceHolder Example</h2>
        <asp:PlaceHolder 
            ID="PlaceHolder2"
            runat="server"
            >
        </asp:PlaceHolder>
        <br />
        <asp:Button 
             ID="Button1" 
             runat="server" 
             Text="Add Image Control" 
             Font-Bold="true"
             ForeColor="SaddleBrown"
             />
    </div>
         <div>
             <h2 style="color:Navy">Panel Example</h2>
                <asp:Panel ID="Panel1" runat="server" ScrollBars="Auto" Width="450" Height="200" Wrap="true" BackColor="Aqua" Direction="LeftToRight">
                    <p>
                        I can use the Panel control as a container for other controls. 

                        Panel Example. 

                        Panel.  
                    </p>
                </asp:Panel>
            </div>
        <div>
        <h2 style="color:MidnightBlue; font-style:italic;">      
            Use Of MultiView
        </h2>      
        <hr width="450" align="left" color="Gainsboro" />
        <asp:Label
            ID="Label1"
            runat="server"
            Font-Bold="true"
            Font-Names="Comic Sans MS"
            ForeColor="Crimson"
            Font-Italic="true"
            Font-Size="X-Large"
            />
        <br /><br />
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
                <asp:Image 
                    ID="Image1" 
                    runat="server" 
                    ImageUrl="https://cdn.pixabay.com/photo/2023/01/31/09/52/sable-7757603__340.jpg"
                    Height="300"
                    />
                <br />
                <asp:Button 
                    ID="Button2" 
                    runat="server" 
                    Text="Next Image" 
                    OnClick="NextImage"
                    Font-Bold="true"
                    ForeColor="Navy"
                    Height="45"
                    Width="150"
                    />
            </asp:View>
            <asp:View ID="View2" runat="server">
                <asp:Image 
                    ID="Image2" 
                    runat="server" 
                    ImageUrl="https://cdn.pixabay.com/photo/2023/03/15/03/46/jeep-7853620_640.jpg"
                    Height="300"
                    />
                <br />
                <asp:Button 
                    ID="Button3" 
                    runat="server" 
                    Text="Next Image" 
                    OnClick="NextImage"
                    Font-Bold="true"
                    ForeColor="Navy"
                    Height="45"
                    Width="150"
                    />
            </asp:View>
            <asp:View ID="View3" runat="server">
                <asp:Image 
                    ID="Image3" 
                    runat="server" 
                    ImageUrl="https://cdn.pixabay.com/photo/2023/01/31/09/52/sable-7757603__340.jpg"
                    Height="300"
                    />
                <br />
                <asp:Button 
                    ID="Button4" 
                    runat="server" 
                    Text="Next Image" 
                    OnClick="NextImage"
                    Font-Bold="true"
                    ForeColor="Navy"
                    Height="45"
                    Width="150"
                    />
            </asp:View>
            <asp:View ID="View4" runat="server">
                <asp:Image 
                    ID="Image4" 
                    runat="server" 
                    ImageUrl="https://cdn.pixabay.com/photo/2023/03/15/03/46/jeep-7853620_640.jpg"
                    Height="300"
                    />
                <br />
                <asp:Button 
                    ID="Button5" 
                    runat="server" 
                    Text="Next Image" 
                    OnClick="NextImage"
                    Font-Bold="true"
                    ForeColor="Navy"
                    Height="45"
                    Width="150"
                    />
            </asp:View>
            <asp:View ID="View5" runat="server">
                <asp:Image 
                    ID="Image5" 
                    runat="server" 
                    ImageUrl="https://cdn.pixabay.com/photo/2022/12/12/21/35/stream-7651969_640.jpg"
                    Height="300"
                    />
            </asp:View>
        </asp:MultiView>
    </div>
     <%--   -----------------------------------------------------------------------------------------------------------------%>
        <h2 style="color:MidnightBlue; font-style:italic;">      
            Use Of Localize
        </h2> 
        <div>
        <h2 style="color:Red">RadioButtonList: AutoPostBack</h2>
        <asp:Label 
             ID="Label2"
             runat="server"
             Font-Bold="true"
             ForeColor="SeaGreen"
             Font-Size="Large"
             >
        </asp:Label>
        <br /><br />
        <asp:Label 
             ID="Label3"
             runat="server"
             Font-Bold="true"
             ForeColor="DarkCyan"
             Text="asp.net controls"
             >
        </asp:Label>
        <asp:RadioButtonList 
             ID="RadioButtonList1"
             runat="server"
             AutoPostBack="true"
             BackColor="DarkCyan"
             ForeColor="AliceBlue"
             >
             <asp:ListItem>HyperLink</asp:ListItem>
             <asp:ListItem>LayoutEditorPart</asp:ListItem>
             <asp:ListItem>BehaviorEditorPart</asp:ListItem>
             <asp:ListItem>Localize</asp:ListItem>
             <asp:ListItem>ImageMap</asp:ListItem>
        </asp:RadioButtonList>
    </div>
        <div>
            <h2 style="color:Navy">Use Of litral</h2>
        <h2 style="color:SlateBlue; font-style:italic;">
            How to add custom text in Calendar Day Cell
        </h2>
        <hr width="475" align="left" color="SlateGray" />
        <asp:Calendar
            ID="Calendar1" 
            runat="server"
            NextPrevFormat="FullMonth"
            ForeColor="WhiteSmoke"
            SelectionMode="Day"
            DayNameFormat="Full"
            Font-Names="Book Antiqua"
            Font-Size="Medium"
            OnDayRender="Calendar1_DayRender"
            VisibleDate="10/7/2008"
            >
            <DayHeaderStyle
                 BackColor="OliveDrab"
                 />
            <DayStyle
                 BackColor="DarkGreen"
                 BorderColor="ForestGreen"
                 BorderWidth="1"
                 Font-Bold="true"
                 Font-Italic="true"
                 Font-Size="Large"
                 />
            <NextPrevStyle
                 Font-Italic="true"
                 Font-Names="Arial CE"
                 />
            <SelectedDayStyle
                 BackColor="DarkBlue"
                 BorderColor="CornflowerBlue"
                 />
            <TitleStyle
                 BackColor="MidnightBlue"
                 Height="36"
                 Font-Size="Large"
                 Font-Names="Courier New Baltic"
                 />
        </asp:Calendar>
    </div>
        <h2 style="color:Navy">Use Of List Box</h2>
         <div>
        <h2 style="color:MidnightBlue; font-style:italic;">      
            How to use ListBox control
        </h2>      
        <hr width="450" align="left" color="Gainsboro" />
        <asp:Label 
            ID="Label4" 
            runat="server" 
            Font-Size="XX-Large" 
            ForeColor="DarkOliveGreen"
            Font-Italic="true"
            />
        <br /><br />
        <asp:Label 
            ID="Label5" 
            runat="server" 
            Text="Choose a color" 
            AssociatedControlID="ListBox1"
            Font-Bold="true"
            ForeColor="Navy"
            Font-Size="X-Large"
            />
        <br />
        <asp:ListBox 
            ID="ListBox1" 
            runat="server" 
            AutoPostBack="true" 
            Font-Size="X-Large"
            Font-Names="Comic Sans MS"
            Rows="5"
            ForeColor="Tomato"
            Width="350"
            OnSelectedIndexChanged="ListBox1_SelectedIndexChanged"
            >
            <asp:ListItem>DarkCyan</asp:ListItem>
            <asp:ListItem>DarkBlue</asp:ListItem>
            <asp:ListItem>DarkGoldenrod</asp:ListItem>
            <asp:ListItem>DarkGray</asp:ListItem>
            <asp:ListItem>DarkGreen</asp:ListItem>
            <asp:ListItem>DarkKhaki</asp:ListItem>
            <asp:ListItem>DarkMagenta</asp:ListItem>
        </asp:ListBox>
    </div>
        <div>
        <h2 style="color:Navy">LinkButton Example: Submit Page</h2>
        <asp:Label 
             ID="Label6" 
             runat="server"
             Font-Bold="true"
             ForeColor="SeaGreen"
             Font-Italic="true"
             Font-Size="Large"
             >
        </asp:Label>
        <br /><br />
        <asp:Label 
             ID="Label7" 
             runat="server"
             Font-Bold="true"
             ForeColor="HotPink"
             Text="Name"
             >
        </asp:Label>
        <asp:TextBox 
             ID="TextBox1"
             runat="server"
             BackColor="LightGoldenrodYellow"
             ForeColor="HotPink"
             >
        </asp:TextBox>
        <br /><br />
        <asp:RadioButtonList 
             ID="RadioButtonList2"
             runat="server"
             BorderWidth="2"
             BorderColor="Crimson"
             ForeColor="HotPink"
             RepeatColumns="2"
             Font-Bold="true"
             >
             <asp:ListItem>Boy</asp:ListItem>
             <asp:ListItem>Girl</asp:ListItem>
        </asp:RadioButtonList>
        <br /><br />
        <asp:LinkButton 
             ID="LinkButton1" 
             runat="server"
             Text="Submit Details"
             OnClick="LinkButton1_Click"
             ForeColor="SeaGreen"
             Font-Size="Large"
             BorderWidth="2"
             >
        </asp:LinkButton>
    </div>
    </form>
    
    
    
</body>
</html>
