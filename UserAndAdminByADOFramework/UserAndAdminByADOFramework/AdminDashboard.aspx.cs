using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UserAndAdminByADOFramework.Model;
using UserAndAdminByADOFramework.Repository;

namespace UserAndAdminByADOFramework
{
    public partial class AdminDashboard : System.Web.UI.Page
    {

        AdminRepository adminRepository = new AdminRepository();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                List<User> users = adminRepository.GetAllUsers();
                gridViewShowAllUsers.DataSource = users;
                gridViewShowAllUsers.DataBind();
            }
        }
        protected void GoToAdminCreateUser(object sender, EventArgs e)
        {
            Response.Redirect("AdminCreateUser.aspx");
        }
        protected void DeleteUser(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "text", "Confirm()", true);
            string confirmValue = Request.Form["confirm_value"];
            if (confirmValue == "Yes")
            {
                int rowIndex = ((sender as Button).NamingContainer as GridViewRow).RowIndex;
                adminRepository.Deleteuser(gridViewShowAllUsers.DataKeys[rowIndex].Values[0].ToString());
                Response.Redirect("AdminDashboard.aspx");
            }

        }
        protected void GoToEditUser(object sender, EventArgs e)
        {
            int rowIndex = ((sender as Button).NamingContainer as GridViewRow).RowIndex;
            Session["UsrID"] = gridViewShowAllUsers.DataKeys[rowIndex].Values[0].ToString();
            Response.Redirect("UpdateUser.aspx");
        }
    }
}