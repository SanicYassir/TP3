using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace TP3_ACHAMRAR_YASSIR
{
    public partial class index : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("server=.;database=SmartCity;Integrated Security=true;");
        SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {

            }
        }
        protected void Timer1_Tick(object sender, EventArgs e)
        {
            var EndDate = new DateTime(2020, 06, 3);
            var DateLeft = EndDate - DateTime.Now;

            this.countDown.Text = DateLeft.Days + "d " + DateLeft.Hours + "H " + DateLeft.Minutes + "M " + DateLeft.Seconds + "S";
        }



        protected void btnOui_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                con.Open();
                cmd = new SqlCommand("Insert into Contact(nom,email,titre,message) values(@nm,@em,@title,@msg)", con);
                cmd.Parameters.AddWithValue("nm", this.txtName.Text);
                cmd.Parameters.AddWithValue("em", this.txtEmail.Text);
                cmd.Parameters.AddWithValue("title", this.txtTitle.Text);
                cmd.Parameters.AddWithValue("msg", this.txtCommentaire.Value);
                cmd.ExecuteNonQuery();
                con.Close();


                Response.Redirect("MessageSent.aspx");
                
            }
            


        }
}
}