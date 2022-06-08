using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Final_Self_Project
{
    public partial class LoginPage : System.Web.UI.Page
    {
        string connectionString = @"Data Source = (LocalDB)\MSSQLLocalDB; Initial Catalog = PrevailRegistrationDB; Integrated Security = True;";
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["UserInfo"];
            if (cookie != null)
            {
                loginusernametxtbox.Text = cookie["Username"];
                loginpasswordtxtbox.Text = cookie["Password"];
            }
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("SignUpPage.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            using (SqlConnection sqlCon = new SqlConnection(connectionString))
            {
                string username = loginusernametxtbox.Text;
                sqlCon.Open();
                String query = "select count(*) from UserRegistration where Username='" + username + "'and Password='" + loginpasswordtxtbox.Text + "'";
                SqlCommand cmd = new SqlCommand(query, sqlCon);
                String output = cmd.ExecuteScalar().ToString();

                if (output == "1")
                {
                    Session["User"] = loginusernametxtbox.Text;
                    Response.Redirect("~/HomePage.aspx");

                }
                else
                {
                    errorlbl.Text = "Your credentials are incorrect!!";
                    Response.Write("Credentials are wrong");
                }

                
            }
        }

        protected void Button3_Click1(object sender, EventArgs e)
        {
            Response.Redirect("PasswordRecovery.aspx");
        }
    }
}