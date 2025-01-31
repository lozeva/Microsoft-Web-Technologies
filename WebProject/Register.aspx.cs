using MySql.Data.MySqlClient;
using System;
using System.Web.UI;

namespace WebProject
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RegisterButton_Click(object sender, EventArgs e)
        {
            string email = EmailTextBox.Text.Trim();
            string password = PasswordTextBox.Text.Trim();

            //Retrieves the MySQL connection string from the configuration file
            string connString = System.Configuration.ConfigurationManager.ConnectionStrings["MySqlConnection"].ConnectionString;

            try
            {
                //Establishes a connection to the database.
                using (MySqlConnection conn = new MySqlConnection(connString))
                {
                    conn.Open();
                    string query = "INSERT INTO users (email, password) VALUES (@Email, @Password)";
                    using (MySqlCommand cmd = new MySqlCommand(query, conn))
                    {
                        //Adds parameters to the query to prevent SQL injection
                        cmd.Parameters.AddWithValue("@Email", email);
                        cmd.Parameters.AddWithValue("@Password", password); 

                        cmd.ExecuteNonQuery();
                    }
                }

                lblMessage.ForeColor = System.Drawing.Color.Green;
                lblMessage.Text = "Registration successful!";
            }
            catch (Exception ex)
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "This email is already registered";
            }
        }
    }
}
