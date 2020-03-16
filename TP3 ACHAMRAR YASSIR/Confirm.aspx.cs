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
    public partial class Confirm : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("server=.;database=SmartCity;Integrated Security=true;");
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            cmd = new SqlCommand("Update Register set isValid='Confirmé' Where id = " + Request.QueryString["id"].ToString(),con);
            cmd.ExecuteNonQuery();

            con.Close();
        

                


        }
    }
}