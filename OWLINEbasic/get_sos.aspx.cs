using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OWLINEbasic
{
    public partial class get_sos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            try
            {
                SqlConnection con = new SqlConnection(@"Server=owline.aydmr.site\MSSQLSERVER2019;Initial Catalog=OwLine;User=owline;password=cBx78o4#4;TrustServerCertificate = True");
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "select* from SOSD inner join SOS on SOSD.CALLID = SOS.CALLID";
                con.Open();

                SqlDataReader dr = cmd.ExecuteReader();
                string code = "";

                List<User> data = new List<User>();
                while (dr.Read())
                {

                    if (Convert.ToInt32(dr["blooddeegree"].ToString()) < 25)
                    {
                        code = "Yeşil Kod";
                    }
                    else if (Convert.ToInt32(dr["blooddeegree"].ToString()) < 35)
                    {
                        code = "Mavi Kod";
                    }
                    else if (Convert.ToInt32(dr["blooddeegree"].ToString()) < 45)
                    {
                        code = "Sarı Kod";
                    }
                    else if (Convert.ToInt32(dr["blooddeegree"].ToString()) < 90)
                    {
                        code = "Kırmızı Kod";
                    }

                    User user = new User() { initials = dr["namesurname"].ToString().Substring(0, 1), name = dr["namesurname"].ToString(), status = code, assignment = "Atanmadı", 
                        timestamp = dr["datetime"].ToString(), value = dr["CALLID"].ToString(),location= dr["latitude"].ToString()+","+ dr["longitude"].ToString()
                    };
                    data.Add(user);
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
    }

    public class User
    {
        public string initials { get; set; }
        public string name { get; set; }
        public string status { get; set; }
        public string assignment { get; set; }
        public string timestamp { get; set; }
        public string value { get; set; }
        public string location { get; set; }


    }
}
