using System;
using System.Collections.Generic;
using System.Drawing.Imaging;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using QRForEmployee.Repository;
using ZXing;

namespace QRForEmployee
{
    public partial class Default1 : System.Web.UI.Page
    {
        UserRepository userRepository = new UserRepository();
        protected void Page_Load(object sender, EventArgs e)
        {


        }
        private string GenrateCode(User user)
        {
            string path = $"{HttpContext.Current.Server.MapPath("\\")}Image\\UsersQR\\{user.FirstName + user.LastName}.png";

            string url = $"https://www.google.com/maps/@{user.Latitude},{user.Longitude},15z";
            string data = $"----------User Information-------\nFirst Name: {user.FirstName}\nLast Name: {user.LastName}\nDOB: {user.DateOfBirth}\nAddress\n\t\t\tLatitude: {user.Latitude}\n\t\t\tLongitude:{user.Longitude}\n\nGoogle Map Location: \n\t{url}";


            var writer = new BarcodeWriter();
            writer.Format = BarcodeFormat.QR_CODE;
            var result = writer.Write(data);
            var QRCode = new Bitmap(result);
            using (MemoryStream ms = new MemoryStream())
            {
                using (FileStream fs = new FileStream(path, FileMode.Create, FileAccess.ReadWrite))
                {
                    QRCode.Save(ms, ImageFormat.Jpeg);
                    byte[] bytes = ms.ToArray();
                    fs.Write(bytes, 0, bytes.Length);
                }
            }
            return $"~\\Image\\UsersQR\\{user.FirstName + user.LastName}.png";
        }
        protected void ShowQR(object sender, EventArgs e)
        {

            User user = new User();
            user.FirstName = txtFirstName.Text;
            user.LastName = txtLastName.Text;
            user.DateOfBirth = txtDateOfBirth.Text;
            user.Latitude = txtLatitude.Text;
            user.Longitude = txtLongitude.Text;

            user.Img = GenrateCode(user);
            userRepository.CreateUser(user);


            Response.Redirect("ShowQR.aspx");
        }
    }
}