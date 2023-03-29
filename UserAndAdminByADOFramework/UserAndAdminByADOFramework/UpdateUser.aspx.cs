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
    public partial class UpdateUser : System.Web.UI.Page
    {

        AdminRepository adminRepository = new AdminRepository();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                string usrID= Session["UsrID"].ToString();
                User user = adminRepository.GetUserDetails(usrID);
                txtUsrID.Text = user.UsrID;
                txtName.Text = user.Name;
                txtDOB.Text = user.DateOfBirth;
                txtCompanyName.Text = user.CompanyName;
                txtExperience.Text = user.Experience; ;
                txtProgrammingSkills.Text = user.ProgrammingSkills;
                txtCity.Text = user.City;
            }
        }
        protected void EditUser(object sender, EventArgs e)
        {
            User user = new User();
            user.UsrID = txtUsrID.Text;
            user.Name = txtName.Text;
            user.DateOfBirth = txtDOB.Text;
            user.CompanyName = txtCompanyName.Text;
            user.Experience = txtExperience.Text;
            user.ProgrammingSkills = txtProgrammingSkills.Text;
            user.City = txtCity.Text;
            bool status = adminRepository.CreateOrEditUser(user, "update");
            if (status)
            {
                lblMessage.Text = "User Updated Successfully.";
            }
            else
            {
                lblMessage.Text = "Error Occour";
            }
           lblMessage.Visible = true;
        }
        protected void GoToAdminDashboard(object sender, EventArgs e)
        {
            Response.Redirect("AdminDashboard.aspx");
        }
    }
}