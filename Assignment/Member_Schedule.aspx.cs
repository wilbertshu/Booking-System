using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Member_Schedule : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        txtCalendar.Text = Calendar1.SelectedDate.ToShortDateString();

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        try
        {
            con.Open();
            string query = "select count(*) from Schedule where schedule='" + txtCalendar.Text + "' and time='" + ddlTime.SelectedItem.Text + "'  and court='" + ddlCourt.SelectedItem.Text + "' and username='" + Session["uname"] + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            int check = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            if (check > 0)
            {
                Response.Write("<script type=\"text/javascript\">alert('Date has been booked or Username ever booked once!');</script>");
            }
            else
            {
                string query1 = "insert into Schedule (username, schedule, payment, time, court) values (@name,@schedule,@payment,@time,@court)";
                SqlCommand cmd1 = new SqlCommand(query1, con);
                cmd1.Parameters.AddWithValue("@name", Session["uname"]);
                cmd1.Parameters.AddWithValue("@payment", DropDownList1.SelectedItem.ToString());
                cmd1.Parameters.AddWithValue("@schedule", txtCalendar.Text);
                cmd1.Parameters.AddWithValue("@time", ddlTime.SelectedItem.ToString());
                cmd1.Parameters.AddWithValue("@court", ddlCourt.SelectedItem.ToString());
                cmd1.ExecuteNonQuery();
                ScriptManager.RegisterStartupScript(this, this.GetType(),
                "alert",
                "alert('Booking Success!');window.location ='Homepage.aspx';",
                true);
            }
            con.Close();
        }
        catch (Exception ex)
        {
            Response.Write("Error: " + ex.ToString());
        }
}
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("Homepage.aspx");
    }
    
}