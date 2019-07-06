using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblMessage.Visible = false;
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("Homepage.aspx");
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("select count(*) from Users where username = '" + txtUser.Text + "' and password = '" + txtPassword.Text + "'", con);
        int count = Convert.ToInt32(cmd.ExecuteScalar().ToString());

        if (count > 0)
        {
            SqlCommand cmdType = new SqlCommand("select usertype from Users where username = '" + txtUser.Text + "'", con);
            string uType = cmdType.ExecuteScalar().ToString().Replace(" ", "");
            Session["uType"] = uType;
            Session["uname"] = txtUser.Text;

            Response.Redirect("Homepage.aspx");
        }
        else
        {
            lblMessage.Visible = true;
            lblMessage.ForeColor = System.Drawing.Color.Red;
            lblMessage.Text = "Login Failed! Try again";
        }
        con.Close();
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("ForgotPassword.aspx");
    }
}