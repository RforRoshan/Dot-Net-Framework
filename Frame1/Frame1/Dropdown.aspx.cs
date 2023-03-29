using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Frame1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        Dictionary<int,string> dictionary = new Dictionary<int,string>();
        public WebForm1()
        {
            dictionary.Add(0, "Please Select");
            dictionary.Add(1,"Male");
            dictionary.Add(2,"Female");
            dictionary.Add(3,"Other");
        }
        
        protected void Page_Load(object sender, EventArgs e)
        {
            DropDownList1.DataSource = dictionary;
            DropDownList1.DataTextField = "Value";
            DropDownList1.DataValueField = "Key";
            DropDownList1.DataBind();

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedValue == "")
            {
                Label1.Text = "Please Select the gender";
            }
            else
                Label1.Text = "Your gender key is : " + DropDownList1.SelectedValue;
        }
    }
    
}