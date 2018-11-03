using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using HashLibrary;

namespace ExerciseTracker
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginControl_Authenticate(object sender, AuthenticateEventArgs e)
        {
            bool authenticated = this.ValidateCredentials(LoginControl.UserName, LoginControl.Password);

            if (authenticated)
            {
                Session["UserName"] = LoginControl.UserName;
                FormsAuthentication.RedirectFromLoginPage(LoginControl.UserName, LoginControl.RememberMeSet);
            }
        }

        public bool IsAlphaNumeric(string text)
        {
            return Regex.IsMatch(text, "^[a-zA-Z0-9]+$");
        }

        private bool ValidateCredentials(string userName, string password)
        {
            bool returnValue = false;

            if (this.IsAlphaNumeric(userName) && userName.Length <= 50 && password.Length <= 50)
            {
                SqlConnection conn = null;

                try
                {
                    string sql = "select count(*) from usersva where username = @username and password = @password";

                    conn = new SqlConnection(ConfigurationManager.ConnectionStrings["TrackerConnectionString1"].ConnectionString);
                    SqlCommand cmd = new SqlCommand(sql, conn);

                    SqlParameter user = new SqlParameter
                    {
                        ParameterName = "@username",
                        Value = userName.Trim()
                    };
                    cmd.Parameters.Add(user);

                    SqlParameter pass = new SqlParameter
                    {
                        ParameterName = "@password",
                        Value = Hasher.HashString(password.Trim())
                    };
                    cmd.Parameters.Add(pass);

                    conn.Open();

                    int count = (int)cmd.ExecuteScalar();

                    if (count > 0) returnValue = true;
                }
                catch (Exception ex)
                {
                    // Log your error
                }
                finally
                {
                    if (conn != null) conn.Close();
                }
            }
            else
            {
                // Log error - user name not alpha-numeric or 
                // username or password exceed the length limit!
            }

            return returnValue;
        }
    }
}