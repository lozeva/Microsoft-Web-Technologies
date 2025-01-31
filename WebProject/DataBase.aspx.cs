using System;
using System.Data;
using MySql.Data.MySqlClient;

namespace WebProject
{
    public partial class DataBase : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Checks if the session contains a user email and if the user is an administrator
            if (Session["UserEmail"] == null || Session["UserEmail"].ToString() != "admin@gmail.com")
            {
                Response.Redirect("~/Login.aspx");
            }
        }
    }
}
