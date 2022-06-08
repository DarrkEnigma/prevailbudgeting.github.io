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
    
    public partial class HomePage : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] != null)
            {
                userlbl.Text = "Welcome " + Session["User"];
               
            }
            
                
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            if (description.Text == "" || amount.Text == "")
            {
                errorlbl.Text = "Please Fill In Mandatory Fields";
                
            }
           
        }

        void Clear()
        {
            description.Text = amount.Text =  "";
            PurchaseID.Value = "";
            
        }
    }
}