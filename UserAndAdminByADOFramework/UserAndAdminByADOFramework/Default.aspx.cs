using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UserAndAdminByADOFramework.Repository;

namespace UserAndAdminByADOFramework
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Login(object sender, EventArgs e)
        {
            if (dropDownListUserType.Text == "")
            {
                dropDrownMessage.Text = "Please select user type";
                dropDrownMessage.Visible = true;
            }
            else if(dropDownListUserType.Text == "2")
            {
               
                if (txtUserName.Text == "admin" && txtPassword.Text == "admin")
                {
                    Response.Redirect("AdminDashboard.aspx");
                }
                else
                {
                    errorMessage.Text = "Wrong username or password.";
                    errorMessage.Visible= true;
                }
            }
            else
            {
                AdminRepository adminRepository=new AdminRepository();
                if(adminRepository.Login(txtUsrID.Text, txtPassword.Text))
                {
                    Session["LoginUserID"] = txtUsrID.Text;
                    Response.Redirect("UserDashboard.aspx");
                }
                errorMessage.Text = "Wrong username or password.";
                errorMessage.Visible = true;
            }
        }
    }
}