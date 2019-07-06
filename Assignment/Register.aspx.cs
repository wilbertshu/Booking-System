using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void btnReset_Click(object sender, EventArgs e)
    {
        txtUser.Text = null;
        txtPassword.Text = null;
        txtConfirm.Text = null;
        txtEmail.Text = null;
        txtAddress.Text = null;
        ddlCountry.SelectedIndex = 0;
        ddlGender.SelectedIndex = 0;
        ddlMember.SelectedIndex = 0;
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("Homepage.aspx");
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        try
        {
            con.Open();
            string query = "select count(*) from Users where email='" + txtEmail.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            int check = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            if (check > 0)
            {
                Response.Write("<script type=\"text/javascript\">alert('Email already exist, please re-enter a new one');</script>");
            }
            else
            {
                string query1 = "insert into Users (fullname, username, password, email, gender, country, usertype, address) values (@name,@uname,@pword,@email,@gender,@country,@usertype,@address)";
                SqlCommand cmd1 = new SqlCommand(query1, con);
                cmd1.Parameters.AddWithValue("@name", txtUser.Text);
                cmd1.Parameters.AddWithValue("@uname", txtID.Text);
                cmd1.Parameters.AddWithValue("@pword", txtPassword.Text);
                cmd1.Parameters.AddWithValue("@email", txtEmail.Text);
                cmd1.Parameters.AddWithValue("@gender", ddlGender.SelectedItem.ToString());
                cmd1.Parameters.AddWithValue("@country", ddlCountry.SelectedItem.ToString());
                cmd1.Parameters.AddWithValue("@usertype", ddlMember.SelectedItem.ToString());
                cmd1.Parameters.AddWithValue("@address", txtAddress.Text);
                cmd1.ExecuteNonQuery();
                ScriptManager.RegisterStartupScript(this, this.GetType(),
                "alert",
                "alert('Registration Success!');window.location ='Login.aspx';",
                true);
            }
            con.Close();
        }
        catch (Exception ex)
        {
            Response.Write("Error: " + ex.ToString());
        }
    }
}