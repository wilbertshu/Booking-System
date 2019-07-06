using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
public partial class ViewSchedule : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    public static int id = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible = false;
    }

    public string fetchData()
    {
        string htmlStr = "";
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        con.Open();
        string query = "select * from Schedule where approval='" + ("Yes") + "' and court='" + ddlSport.SelectedItem.Text + "'";
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

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("Homepage.aspx");
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from schedule where username= '" + Session["uname"] + "' and court='" + ddlSport.SelectedItem.Text + "'", con);  /*No spacing in search code, ekstract data from database*/
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count == 0)
        {
            Panel1.Visible = false;
            lblMessage.Text = "User has not been approved";
        }
        else
        {
            Panel1.Visible = true;
        }
    }
}