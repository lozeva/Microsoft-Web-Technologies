using System;
using System.Web.UI;
using MySql.Data.MySqlClient;
using BCrypt.Net;
using System.Security.Cryptography;
using System.Text;

namespace WebProject
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //Method to hash the password with SHA256 algorithm
        public static string ComputeSha256Hash(string rawData)
        {
            //Creates an instance of the SHA256 algorithm
            using (SHA256 sha256Hash = SHA256.Create())
            {
                //Hashes the input string.
                byte[] bytes = sha256Hash.ComputeHash(Encoding.UTF8.GetBytes(rawData)); 
                StringBuilder builder = new StringBuilder();

                //Converts each byte to a hexadecimal string
                for (int i = 0; i < bytes.Length; i++)
                {
                    builder.Append(bytes[i].ToString("x2"));
                }
                return builder.ToString();
            }
        }

        protected void LoginButton_Click(object sender, EventArgs e)
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

                    string query = "SELECT password FROM users WHERE email = @Email";
                    using (MySqlCommand cmd = new MySqlCommand(query, conn))
                    {
                        //Adds the email parameter to prevent SQL injection
                        cmd.Parameters.AddWithValue("@Email", email);
                        object result = cmd.ExecuteScalar();

                        if (result != null)
                        {
                            //Retrieves the hashed password from the database
                            string storedHash = result.ToString();

                            //Hashes the entered password
                            string inputHash = ComputeSha256Hash(password); 

                            if (storedHash == inputHash)
                            {
                                Session["UserEmail"] = email;
                                Response.Redirect("~/Home.aspx");
                            }
                            else
                            {
                                lblMessage.Text = "Invalid password.";
                            }
                        }
                        else
                        {
                            lblMessage.Text = "No account found with this email.";
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                lblMessage.Text = "An error occurred: " + ex.Message;
            }
        }
    }
}
