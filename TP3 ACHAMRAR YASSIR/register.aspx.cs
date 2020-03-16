using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;
using System.Net.Mime;

namespace TP3_ACHAMRAR_YASSIR
{
    public partial class register : System.Web.UI.Page

    {
        SqlConnection con = new SqlConnection("server=.;database=SmartCity;Integrated Security=true;");
        SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            int id=0;
            if (Page.IsValid)
            {
                try
                {
                    con.Open();
                    cmd = new SqlCommand("Insert into Register(email,fullName,password,phoneNumber,mainJob) values(@eml,@name,@pass,@pn,@mj)", con);
                    cmd.Parameters.AddWithValue("eml", this.txtConfirmEmail.Text);
                    cmd.Parameters.AddWithValue("name", this.txtFullName.Text);
                    cmd.Parameters.AddWithValue("pass", this.txtConfirmPassword.Text);
                    cmd.Parameters.AddWithValue("pn", this.txtPhoneNumber.Text);
                    cmd.Parameters.AddWithValue("mj", this.txtMainJob.Text);

                    cmd.ExecuteNonQuery();

                    con.Close();

                    con.Open();
                    cmd = new SqlCommand("Select id from Register where email=@eml", con);
                    cmd.Parameters.AddWithValue("eml", this.txtConfirmEmail.Text);

                    SqlDataReader rd = cmd.ExecuteReader();
                    while (rd.Read())
                    {
                        id = int.Parse(rd[0].ToString());
                    }


                    con.Close();


                    MailMessage msg = new MailMessage("xsanic6@gmail.com", this.txtConfirmEmail.Text);
                    msg.Subject = "SMART CITY CONFERENCE";
                    msg.IsBodyHtml = true;
                    msg.Body = "<h1>SMART CITY CONFERENCE</h1><br><br><p>Thank You for Joining the event</p><p>Please Confirm Your Presence <a href='http://localhost:50347/Confirm.aspx?id=" + id.ToString() + "&nom=" + this.txtFullName.Text + "'>Confirm Your Email<a>";


                    SmtpClient client = new SmtpClient("smtp.gmail.com", 25);
                    client.Credentials = new NetworkCredential()
                    {
                        UserName = "xsanic6@gmail.com",
                        Password = "Sanic.159"

                    };
                    client.Timeout = 60000;
                    client.EnableSsl = true;
                    client.Send(msg);

                    Response.Redirect("RegistrationCompleted.aspx");
                }
                catch
                {
                    this.LabelError.Text = "Email Already Identified!";
                }
             












                //MailMessage mail = new MailMessage();
                //mail.To.Add(this.txtConfirmEmail.Text);
                //mail.From = new MailAddress("xsanic6@gmail.com");
                //mail.Subject = "sub";

                //mail.Body = "Hello";

                //mail.IsBodyHtml = true;
                //SmtpClient smtp = new SmtpClient();
                //smtp.Host = "smtp.gmail.com"; //Or Your SMTP Server Address
                //smtp.Credentials = new System.Net.NetworkCredential
                //     ("xsanic6@gmail.com", "Sanic.159"); // ***use valid credentials***
                //smtp.Port = 587;
                //smtp.EnableSsl = true;
                //smtp.Timeout = 6000;


                //smtp.Send(mail);
            }
        }
    }
}