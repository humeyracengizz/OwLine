using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;
using static OWLINEbasic.get_message;

namespace OWLINEbasic
{
    public partial class get_message : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int usercallid = 0;
            if (Request.QueryString["userid"] != null)
            {
                 usercallid = Convert.ToInt32(Request.QueryString["userid"]);
            }
            else
            {
                Response.Redirect("Dashboard.aspx");
            }

            try
            {
                SqlConnection con = new SqlConnection(@"Server=owline.aydmr.site\MSSQLSERVER2019;Initial Catalog=OwLine;User=owline;password=cBx78o4#4;TrustServerCertificate = True");
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "select* from MSG inner join SOS on MSG.CALLID = SOS.CALLID inner join SOSd on msg.CALLID = SOSD.CALLID where MSG.CALLID=" + usercallid;
                con.Open();

                SqlDataReader dr = cmd.ExecuteReader();
                string code = "";

                List<UserMessage> data = new List<UserMessage>();
                while (dr.Read())
                {
                    if (dr["Status"].ToString() == "False")
                    {
                        UserMessage userMessageer = new UserMessage() { email ="Acil Sağlık Görevlisi",initials = "O", name = "Operatör", timestamp = dr["datetime"].ToString(), mesaage = dr["message"].ToString() };
                        data.Add(userMessageer);
                    }
                    else
                    {
                        
                        UserMessage userMessageer = new UserMessage() { email=" ",initials = dr["namesurname"].ToString().Substring(0, 1), name = dr["namesurname"].ToString(), timestamp = dr["datetime"].ToString(), mesaage = dr["message"].ToString() };
                        data.Add(userMessageer);
                    }
                    
                }



                // JSON dizesine dönüştürün
                var jsonSerializer = new JavaScriptSerializer();
                var jsonData = jsonSerializer.Serialize(data);

                // JSON verilerini yanıt olarak döndürün
                Response.Clear();
                Response.ContentType = "application/json";
                Response.Write(jsonData);
                Response.End();

                con.Close();
            }
            catch
            {

            }



        }

        public class UserMessage
        {
            public string initials { get; set; }
            public string name { get; set; }
            public string timestamp { get; set; }
            public string mesaage { get; set; }
            public string email { get; set; }


        }
    }
}