using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ViewAll : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public string fetchData()
    {
        string htmlStr = "";
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        con.Open();
        string query = "select * from Users";
        SqlCommand cmd = new SqlCommand(query, con);
        SqlDataReader reader = cmd.ExecuteReader();

        while (reader.Read())
        {
            string fullname = reader.GetString(1);
            string username = reader.GetString(2);
            string email = reader.GetString(3);
            string country = reader.GetString(5);
            string gender = reader.GetString(6);
            string usertype = reader.GetString(7);
            string address = reader.GetString(8);

            htmlStr += "<tr><td>" + fullname + "</td><td>" + username + "</td><td>" + email + "</td><td>" + country + "</td><td>" + gender + "</td><td>" + usertype + "</td><td>" + address + "</td></tr>";
        }
        con.Close();
        return htmlStr;
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("Homepage.aspx");
    }

    protected void btnEdit_Click(object sender, EventArgs e)
    {
        Response.Redirect("Edit_members.aspx");
    }
}

