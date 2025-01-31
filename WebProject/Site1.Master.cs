using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebProject
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string email = Session["UserEmail"] as string;

            if (email != null)
            {
                //Extracts the username from the email
                string username = email.Split('@')[0];
                LoggedInPanel.Visible = true;
                LoggedOutPanel.Visible = false;

                //Displays the username
                UsernameLiteral.Text = username;
            }
            else
            {
                LoggedInPanel.Visible = false;
                LoggedOutPanel.Visible = true;
            }

            //Executes only during the initial page load
            if (!IsPostBack)
            {
                AdminMenuFooter.Visible = (email == "admin@gmail.com");
            }
        }

        protected void LogoutButton_Click(object sender, EventArgs e)
        {
            //Clears all session data
            Session.Clear();

            //Ends the session
            Session.Abandon();
            Response.Redirect("~/Login.aspx");
        }
    }
}