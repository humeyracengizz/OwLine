using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OWLINEbasic
{
    public partial class sosmessage : System.Web.UI.Page
    {
        int callid = 0;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Request.QueryString["userid"] != null)
            {
                callid = Convert.ToInt32(Request.QueryString["userid"]);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string message = txt_messages.Text;
            if (message.Count() > 1)
            {
                /* try
            {*/
                SqlConnection con = new SqlConnection(@"Server=owline.aydmr.site\MSSQLSERVER2019;Initial Catalog=OwLine;User=owline;password=cBx78o4#4;TrustServerCertificate = True");
                SqlCommand command;
                SqlDataAdapter adapter = new SqlDataAdapter();
                con.Open();

                String sql = "Insert into MSG(message,status,CALLID) values(@message,@status,@CALLID)";
                command = new SqlCommand(sql, con);
                command.Parameters.AddWithValue("@message", message);
                command.Parameters.AddWithValue("@status", 1);
                command.Parameters.AddWithValue("@CALLID", callid);
                command.ExecuteNonQuery();
                con.Close();
                txt_messages.Text = "";
                Response.Redirect("sosmessage?userid=" + callid);
                /* }
                 catch
                 {

                 }*/
            }
        }
    }
}