using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Final_Self_Project
{
    public partial class PasswordRecovery : System.Web.UI.Page
    {
        string connectionString = @"Data Source = (LocalDB)\MSSQLLocalDB; Initial Catalog = PrevailRegistrationDB; Integrated Security = True;";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void getbtn_Click(object sender, EventArgs e)
        {
            string username = usernametxtbox.Text;
            SqlConnection conn = new SqlConnection(connectionString);
            SqlCommand command = new SqlCommand("Select * from UserRegistration where Username = '" + username + "'", conn);
            SqlDataAdapter sd = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView2.DataSource = dt;
            GridView2.DataBind();

            usernametxtbox.Visible = true;
            firstnametxtbox.Visible = true;
            lastnametxtbox.Visible = true;
            contactnumbertxtbox.Visible = true;
            emailaddresstxtbox.Visible = true;
            passwordtxtbox.Visible = true;

            Label1.Visible = true;
            Label2.Visible = true;
            Label3.Visible = true;
            Label4.Visible = true;
            Label5.Visible = true;
            Label6.Visible = true;

            updatebtn.Visible = true;
            deletebtn.Visible = true;
            

            GridView2.Visible = true;

        }

        protected void updatebtn_Click(object sender, EventArgs e)
        {
            string firstname = firstnametxtbox.Text;
            string lastname = lastnametxtbox.Text;
            string contactnumber = contactnumbertxtbox.Text;
            string email = emailaddresstxtbox.Text;
            string username = usernametxtbox.Text;
            string password = passwordtxtbox.Text;
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();
                SqlCommand command = new SqlCommand("Update UserRegistration set FirstName = '" + firstname + "', LastName = '" + lastname + "', ContactNumber = '" + contactnumber + "', EmailAddress = '" + email + "', Password ='" + password + "' where Username = '" + username + "' ", conn);
                command.ExecuteNonQuery();
                conn.Close();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully updated');", true);
                GetUserList();
            }
        }

        protected void insertbtn_Click(object sender, EventArgs e)
        {

        }

        protected void deletebtn_Click(object sender, EventArgs e)
        {
            string username = usernametxtbox.Text;

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();
                SqlCommand command = new SqlCommand("Delete UserRegistration where Username = '" + username + "'", conn);
                command.ExecuteNonQuery();
                conn.Close();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully deleted');", true);
                GetUserList();
            }
        }

        void GetUserList()
        {
            SqlConnection conn = new SqlConnection(connectionString);
            SqlCommand command = new SqlCommand("Select * from UserRegistration", conn);
            SqlDataAdapter sd = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView2.DataSource = dt;
            GridView2.DataBind();

        }

        protected void backbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginPage.aspx");
        }
    }
}