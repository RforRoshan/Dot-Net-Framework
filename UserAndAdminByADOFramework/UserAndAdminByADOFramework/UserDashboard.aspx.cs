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
    public partial class UserDashboard : System.Web.UI.Page
    {
        AdminRepository adminRepository = new AdminRepository();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                string usrID = Session["LoginUserID"].ToString();
                User user = adminRepository.GetUserDetails(usrID);
                lblUsrID.Text += user.UsrID;
                lblName.Text += user.Name;
                lblDOB.Text += user.DateOfBirth;
                lblCompanyName.Text += user.CompanyName;
                lblExperience.Text += user.Experience; ;
                lblProgrammingSkills.Text += user.ProgrammingSkills;
                lblCity.Text += user.City;
                showEditDetails.Visible = false;
            }

        }
        protected void EditUser(object sender, EventArgs e)
        {
            string usrID = Session["LoginUserID"].ToString();
            User user = adminRepository.GetUserDetails(usrID);
            txtName.Text = user.Name;
            txtDOB.Text = user.DateOfBirth;
            txtCompanyName.Text = user.CompanyName;
            txtExperience.Text = user.Experience; ;
            txtProgrammingSkills.Text = user.ProgrammingSkills;
            txtCity.Text = user.City;
            showUserDetails.Visible = false;
            showEditDetails.Visible = true;

        }
        protected void EditUserDetails(object sender, EventArgs e)
        {
            User user1 = new User();
            user1.UsrID = Session["LoginUserID"].ToString();
            user1.Name = txtName.Text;
            user1.DateOfBirth = txtDOB.Text;
            user1.CompanyName = txtCompanyName.Text;
            user1.Experience = txtExperience.Text;
            user1.ProgrammingSkills = txtProgrammingSkills.Text;
            user1.City = txtCity.Text;
            bool status = adminRepository.CreateOrEditUser(user1, "update");
            Response.Redirect("UserDashboard.aspx");

        }
    }
}