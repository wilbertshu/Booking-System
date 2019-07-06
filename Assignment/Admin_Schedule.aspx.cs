using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_Schedule : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    public static int id = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = false;
    }

    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("Homepage.aspx");
    }
    public string fetchData()
    {
        string htmlStr = "";
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        con.Open();
        string query = "select * from schedule";
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

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
        SqlDataAdapter da = new SqlDataAdapter("select * from schedule where username= '" + txtSearch.Text + "' and court='" + ddlCourt.SelectedItem.Text + "'", con);  /*No spacing in search code, ekstract data from database*/
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count == 0)
        {
            Panel1.Visible = false;
            Panel2.Visible = false;
            lblMessage.Text = "User Not Found";
        }
        else
        {
            Panel1.Visible = true;
            Panel2.Visible = true;
            lblMessage.Visible = false;
            id = Convert.ToInt16(dt.Rows[0][0]);
            txtUser.Text = dt.Rows[0][1].ToString();
            txtDate.Text = dt.Rows[0][3].ToString();
            txtTime.Text = dt.Rows[0][4].ToString();
            txtCourt.Text = dt.Rows[0][5].ToString();
        }
    }

    protected void btnApprove_Click(object sender, EventArgs e)
    {
        con.Open();
        string query = "update schedule set approval='" + ddlApprove.SelectedItem + "' where username = '" + txtUser.Text + "'";
        SqlCommand cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        ScriptManager.RegisterStartupScript(this, this.GetType(),
                "alert",
                "alert('User has been Approved!');window.location ='Admin_Schedule.aspx';",
                true);
        Session.Abandon();
        con.Close();
    }
    protected void btnReset_Click(object sender, EventArgs e)
    {
        txtSearch.Text = null;
        Panel1.Visible = true;
        Panel2.Visible = true;
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        con.Open();
        string query = "delete from Schedule where username = '" + txtUser.Text + "' and date='" + txtDate.Text + "'";
        SqlCommand cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        ScriptManager.RegisterStartupScript(this, this.GetType(),
                            "alert",
                            "alert('Booking has been deleted!');window.location ='Admin_Schedule.aspx';",
                            true);
        con.Close();
    }
}