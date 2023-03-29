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
    public partial class AdminCreateUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void CreateNewUser(object sender, EventArgs e)
        {
            AdminRepository adminRepository = new AdminRepository();
            User user = new User();
            user.UsrID = txtUsrID.Text;
            user.Name = txtName.Text;
            user.DateOfBirth = txtDOB.Text;
            user.CompanyName = txtCompanyName.Text;
            user.Experience = txtExperience.Text;
            user.ProgrammingSkills = txtProgrammingSkills.Text;
            user.City = txtCity.Text;
            bool status = adminRepository.CreateOrEditUser(user, "Insert");
            if (status)
            {
                lblMessage.Text = "New User Created Successfully.";
            }
            else
            {
                lblMessage.Text = "User Already Exist.";
            }
            lblMessage.Visible = true;
        }
        protected void GoToAdminDashboard(object sender, EventArgs e)
        {
            Response.Redirect("AdminDashboard.aspx");
        }
    }
}