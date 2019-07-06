using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class ForgotPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string username = "";
        string password = "";
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        SqlCommand cmd = new SqlCommand("select username, password from Users where email='" + txtMail.Text + "'", con);
        cmd.Parameters.AddWithValue("email", txtMail.Text);
        con.Open();
        using (SqlDataReader sdr = cmd.ExecuteReader())
        {
            if (sdr.Read())
            {
                username = sdr["username"].ToString();
                password = sdr["password"].ToString();
            }
        }
        con.Close();

        if (!string.IsNullOrEmpty(password))
        {
            MailMessage msg = new MailMessage();
            msg.From = new MailAddress("WAPPAssignmentOnly@gmail.com"); // Dummy mail address
            msg.To.Add(txtMail.Text);
            msg.Subject = "Password Recovery";
            msg.Body = ("Here is your username :" + username + "<br/><br/>" + "Your password : " + password);
            msg.IsBodyHtml = true;

            SmtpClient smt = new SmtpClient();
            smt.Host = "smtp.gmail.com";
            System.Net.NetworkCredential ntwd = new System.Net.NetworkCredential();
            ntwd.UserName = "wappassignmentOnly@gmail.com"; // dummy email address
            ntwd.Password = "wappadmin123"; //password
            smt.UseDefaultCredentials = true;
            smt.Credentials = ntwd;
            smt.Port = 587;
            smt.EnableSsl = true;
            smt.Send(msg);
            lblMessage.ForeColor = System.Drawing.Color.SkyBlue;
            lblMessage.Text = "Recovery email has been send :)";
        }
    }
}
