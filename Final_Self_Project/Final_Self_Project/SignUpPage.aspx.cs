using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Data.SqlTypes;
using System.Data;



namespace Final_Self_Project
{
    public partial class SignUpPage : System.Web.UI.Page
    {
        string connectionString = @"Data Source = (LocalDB)\MSSQLLocalDB; Initial Catalog = PrevailRegistrationDB; Integrated Security = True;";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Clear();
                if (!String.IsNullOrEmpty(Request.QueryString["Id"]))
                {
                    int userID = Convert.ToInt32(Request.QueryString["Id"]);
                    using (SqlConnection conn = new SqlConnection(connectionString))
                    {
                        conn.Open();
                        SqlDataAdapter adapter = new SqlDataAdapter("UserViewById", conn);
                        adapter.SelectCommand.CommandType = CommandType.StoredProcedure;
                        adapter.SelectCommand.Parameters.AddWithValue("@UserID", userID);
                        DataTable dataTable = new DataTable();
                        adapter.Fill(dataTable);

                        hfUserID.Value = userID.ToString();
                        firstnametxtbox.Text = dataTable.Rows[0][1].ToString();
                        Lastnametxtbox.Text = dataTable.Rows[0][2].ToString();
                        contactnumbertxtbox.Text = dataTable.Rows[0][3].ToString();
                        emailtxtbox.Text = dataTable.Rows[0][4].ToString();
                        usernametxtbox.Text = dataTable.Rows[0][5].ToString();
                        passwordtxtbox.Text = dataTable.Rows[0][6].ToString();
                        passwordtxtbox.Attributes.Add("value", dataTable.Rows[0][6].ToString());
                    }
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (usernametxtbox.Text == "" || passwordtxtbox.Text == "")
            {
                errorlbl.Text = "Please Fill In Mandatory Fields";
            }
            else
            {


                using (SqlConnection sqlCon = new SqlConnection(connectionString))
                {
                    sqlCon.Open();
                    SqlCommand sqlCmd = new SqlCommand("UserAddOrEdit", sqlCon);
                    sqlCmd.CommandType = CommandType.StoredProcedure;
                    sqlCmd.Parameters.AddWithValue("@UserID", Convert.ToInt32(hfUserID.Value == "" ? "0" : hfUserID.Value));
                    sqlCmd.Parameters.AddWithValue("@FirstName", firstnametxtbox.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@LastName", Lastnametxtbox.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@ContactNumber", contactnumbertxtbox.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@EmailAddress", emailtxtbox.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@Username", usernametxtbox.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@Password", passwordtxtbox.Text.Trim());
                    sqlCmd.ExecuteNonQuery();

                    successlbl.Text = "Successfully submitted!!";

                    HttpCookie cookie = new HttpCookie("UserInfo");
                    cookie["Username"] = usernametxtbox.Text;
                    cookie["Password"] = passwordtxtbox.Text;

                    cookie.Expires = DateTime.Now.AddYears(1);
                    Response.Cookies.Add(cookie);

                    Response.Redirect("LoginPage.aspx");
                }
            }
        }

        void Clear()
        {
            firstnametxtbox.Text = Lastnametxtbox.Text = contactnumbertxtbox.Text = emailtxtbox.Text = usernametxtbox.Text = passwordtxtbox.Text = "";
            hfUserID.Value = "";
            successlbl.Text = "";
        }
    }
}