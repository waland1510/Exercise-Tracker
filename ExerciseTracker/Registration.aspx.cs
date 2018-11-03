using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using HashLibrary;


namespace ExerciseTracker
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RegisterUser(object sender, EventArgs e)
        {
            int Id = 0;
            string constr = ConfigurationManager.ConnectionStrings["TrackerConnectionString1"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("Insert_UserVA"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@Username", txtUsername.Text.Trim());
                        cmd.Parameters.AddWithValue("@Password", Hasher.HashString(txtPassword.Text.Trim()));
                        cmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
                        cmd.Connection = con;
                        con.Open();
                        Id = Convert.ToInt32(cmd.ExecuteScalar());
                        con.Close();
                    }
                }
                string message = string.Empty;
                switch (Id)
                {
                    case -1:
                        message = "Username already exists.\nPlease choose a different username.";

                        txtUsername.Text = " ";

                        txtUsername.Focus();
                        break;
                    case -2:
                        message = "Supplied email address has already been used.";

                        txtEmail.Text = " ";
                        txtEmail.Focus();
                        break;
                    default:
                        Session["UserName"] = txtUsername.Text;
                        Response.Redirect("Confirmation.aspx");
                        message = "Registration successful.\\nUser Id: " + Id.ToString();
                        break;
                }
                ScriptManager.RegisterStartupScript(this, this.GetType(), "aa", "alert('" + message + "');", true);

            }



        }
    }
}