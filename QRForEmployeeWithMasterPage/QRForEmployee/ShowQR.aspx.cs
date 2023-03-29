using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using QRForEmployee.Repository;

namespace QRForEmployee
{
    public partial class ShowQR1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {

                BindGridList();
            }
        }
        protected void BindGridList()
        {
            //foreach(var user in users)
            //{
            UserRepository userRepository = new UserRepository();
            List<User> users;
            users = userRepository.GetUserDetails();

            GridView1.DataSource = users;

            GridView1.DataBind();

        }


        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}