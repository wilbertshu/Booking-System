using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class Instructor_Schedule : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("Homepage.aspx");
    }

    public string fetchData()
    {
        string htmlStr = "";
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        con.Open();
        string query = "select * from Schedule where approval='" + ("Yes") + "'";
        SqlCommand cmd = new SqlCommand(query, con);
        SqlDataReader reader = cmd.ExecuteReader();

        while (reader.Read())
        {
            string username = reader.GetString(1);
            string date = reader.GetString(3);
            string time = reader.GetString(4);
            string court = reader.GetString(5);

            htmlStr += "<tr><td>" + username + "</td><td>" + date + "</td><td>" + time + "</td><td>" + court + "</td></tr>";
        }
        con.Close();
        return htmlStr;
    }
}