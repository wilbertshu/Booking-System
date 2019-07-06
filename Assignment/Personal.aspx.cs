using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Personal : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    public static int id = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uname"] != null)
        {
            txtUsername.Text = Session["uname"].ToString();

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            string query = "select * from Users where username='" + txtUsername.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader reader = cmd.ExecuteReader();

            if (reader.Read())
            {
                txtName.Text = (reader["fullname"].ToString());
                txtEmail.Text = (reader["email"].ToString());
                txtType.Text = (reader["usertype"].ToString());
                txtCountry.Text = (reader["country"].ToString());
                txtAddress.Text = (reader["address"].ToString());
                txtGender.Text = (reader["gender"].ToString());
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(),
                "alert",
                "alert('Data record not found');window.location ='Homepage.aspx';",
                true);
            }
            con.Close();
        }
    }

    protected void save_Click(object sender, EventArgs e)
    {
        con.Open();
        string query = "update Users set password='" + txtPass.Text +"' where email = '" + txtEmail.Text + "'";
        SqlCommand cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        ScriptManager.RegisterStartupScript(this, this.GetType(),
                "alert",
                "alert('Saved Changes! Please log in again.');window.location ='Homepage.aspx';",
                true);
        Session.Abandon();
        con.Close();
    }

    protected void cancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("Homepage.aspx");
    }

}