using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.Configuration;

namespace Login
{

    public partial class LoginPage : System.Web.UI.Page
    {

        private void Login_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click1(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtUserName.Text))
            {
                txtUserName.Focus();
                return;
            }

            if (string.IsNullOrEmpty(txtPass.Text))
            {
                lblResults.Text = "Please type your Password";
                txtPass.Focus();
                return;
            }

            try
            {
                string constring = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\Users\U\Documents\Login\Login\Users.accdb;";
                OleDbConnection conDataBase = new OleDbConnection(constring);
                OleDbCommand cmdDataBase = new OleDbCommand("Select * from [User] where UserName='"
                    + this.txtUserName.Text
                    + "' and UserPass='"
                    + this.txtPass.Text
                    + "';", conDataBase);
                OleDbDataReader myReader;

                conDataBase.Open();
                myReader = cmdDataBase.ExecuteReader();

                int count = 0;

                while (myReader.Read())
                {
                    count = count + 1;
                }
                if (count == 1)
                {
                    lblResults.Text = "Login Successful";
                }
                else if (count > 1)
                {
                    lblResults.Text = "Duplicate Username or Password";
                }
                else
                {
                    lblResults.Text = "Username or Password do not match";
                }
            }
            catch (Exception ex)
            {
                lblResults.Text = ex.Message;
            }
        }
    }
}
