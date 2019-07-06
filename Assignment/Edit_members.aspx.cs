using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
public partial class Edit_members : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    public static int id = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible = false;
    }

    protected void btnReset_Click(object sender, EventArgs e)
    {
        txtSearch.Text = null;
        Panel1.Visible = false;
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        con.Open();
        string query1 = "select count(*) from Users where email='" + txtMail.Text + "'";
        SqlCommand cmd1 = new SqlCommand(query1, con);
        int check = Convert.ToInt32(cmd1.ExecuteScalar().ToString());
        if (check > 0)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(),
                            "alert",
                            "alert('Email already exist!');window.location ='Edit_members.aspx';",
                            true);
        }
        else
        {
            string query = "update Users set username='" + txtusername.Text + "',email ='" + txtMail.Text
            + "',gender ='" + ddlGender.SelectedItem + "',country ='" + ddlCountry.SelectedItem + "',address ='" + txtAddress.Text
            + "' where id = '" + id + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            ScriptManager.RegisterStartupScript(this, this.GetType(),
                            "alert",
                            "alert('Saved changed!');window.location ='View_User.aspx';",
                            true);
        }
        con.Close();
    }

    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("Homepage.aspx");
    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        con.Open();
        string query = "delete from Users where id = '" + id + "'";
        SqlCommand cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        ScriptManager.RegisterStartupScript(this, this.GetType(),
                            "alert",
                            "alert('User has been Deleted!');window.location ='Edit_members.aspx';",
                            true);
        con.Close();
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        SqlDataAdapter da = new SqlDataAdapter("select * from Users where username= '" + txtSearch.Text + "'", con);  /*No spacing in search code, ekstract data from database*/
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count == 0)
        {
            lblMessage.Text = "User Not Found";
            Panel1.Visible = false;
        }
        else
        {
            Panel1.Visible = true;
            lblMessage.Visible = false;
            id = Convert.ToInt16(dt.Rows[0][0]);
            txtName.Text = dt.Rows[0][1].ToString();
            txtusername.Text = dt.Rows[0][2].ToString();
            txtMail.Text = dt.Rows[0][3].ToString();
            ddlCountry.Text = dt.Rows[0][5].ToString();
            ddlGender.Text = dt.Rows[0][6].ToString();
            ddlType.Text = dt.Rows[0][7].ToString();
            txtAddress.Text = dt.Rows[0][8].ToString();
        }
    }
}