using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppSQLInject
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cmdLogin_Click(object sender, EventArgs e)
        {
            string strCnx = "server=localhost;database=northwind;uid=sa;pwd=Pa$$w0rd;";
            SqlConnection cnx = new SqlConnection(strCnx);
            cnx.Open();
            //This code is susceptible to SQL injection attacks.
            string strQry = "SELECT Count(*) FROM Users WHERE UserName='" + txtUser.Text + "' AND Password='" + txtPassword.Text + "'";
            int intRecs;
            SqlCommand cmd = new SqlCommand(strQry, cnx);
            intRecs = (int)cmd.ExecuteScalar();
            if (intRecs > 0)
            {
                //' Or 1=1 --
                //FormsAuthentication.RedirectFromLoginPage(txtUser.Text, false);
                lblMsg.Text = "Login attempt successful.";
            }
            else
            {
                lblMsg.Text = "Login attempt failed.";
            }
            cnx.Close();
        }
    }
}