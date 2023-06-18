using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.NetworkInformation;
using System.Security.Policy;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OWLINEbasic
{
    public partial class SOS : System.Web.UI.Page
    {
        int calliduser = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            string localIP = "";
            IPHostEntry host = Dns.GetHostEntry(Dns.GetHostName());
            foreach (IPAddress ipAddress in host.AddressList)
            {
                if (ipAddress.AddressFamily == System.Net.Sockets.AddressFamily.InterNetwork)
                {
                    localIP = ipAddress.ToString();
                    break;
                }
            }

            string targetHost = "owline.aydmr.site";
            if (!string.IsNullOrEmpty(targetHost))
            {
                string traceResult = PerformTraceRoute(targetHost);
            }


            if (Request.QueryString["latitude"] != null && Request.QueryString["longitude"] != null)
            {
                string latitude = Request.QueryString["latitude"];
                string longitude = Request.QueryString["longitude"];
                string userIpAddress = Request.UserHostAddress;
                string ipAddress = HttpContext.Current.Request.UserHostAddress;
                string ip1 = GetGlobalIpAdress();


                // Gelen latitude ve longitude değerlerini kullanarak yapılması gereken işlemleri burada gerçekleştirin


                // veritabanı OwLine owline cBx78o4#4 4

                try
                {
                    SqlConnection con = new SqlConnection(@"Server=owline.aydmr.site\MSSQLSERVER2019;Initial Catalog=OwLine;User=owline;password=cBx78o4#4;TrustServerCertificate = True");
                    SqlCommand command;
                    SqlDataAdapter adapter = new SqlDataAdapter();
                    con.Open();

                    String sql = "Insert into SOS(latitude,longitude,Status,ip1,ip2,ip3) values(@latitude,@longitude,@Status,@ip1,@ip2,@ip3)";
                    command = new SqlCommand(sql, con);
                    command.Parameters.AddWithValue("@latitude", latitude);
                    command.Parameters.AddWithValue("@longitude", longitude);
                    command.Parameters.AddWithValue("@Status", 0);
                    command.Parameters.AddWithValue("@ip1", userIpAddress);
                    command.Parameters.AddWithValue("@ip2", ip1);
                    command.Parameters.AddWithValue("@ip3", localIP);

                    command.ExecuteNonQuery();
                    con.Close();
                    Literal1.Text = "<div class=\'registration-form-alert alert alert-success row! form-group\'>Kayıt Edildi.</div>";
                    
                    string id = "";

                    try
                    {
                        SqlCommand cmd = new SqlCommand();
                        cmd.Connection = con;
                        cmd.CommandText = "select* from SOS where latitude="+ latitude+ "and longitude="+ longitude+" ORDER BY datetime";
                        con.Open();

                        SqlDataReader dr = cmd.ExecuteReader();

                        while (dr.Read())
                        {
                            id= dr["CallID"].ToString();
                        }
                        calliduser= Convert.ToInt32(id);
                        Session.Add("callid", id);
                        con.Close();
                    }
                    catch
                    {

                    }

                }
                catch
                {
                    Literal1.Text = "<div class=\'registration-form-alert alert alert-danger row! form-group\'>Bir hata oluştu.Kayıt edilemedi!</div>"; ;
                }
                // İşlemler tamamlandıktan sonra isteğe bir yanıt dönebilirsiniz (isteğe bağlı)
               
                Response.Write(Convert.ToString(calliduser));
                Response.End();
            }
            else if (Request.QueryString["user"] != null)
            {
                calliduser = Convert.ToInt32(Request.QueryString["user"]);
            }
        }
        public string GetGlobalIpAdress()
        {
            try
            {
                string ClientIp = String.Empty;
                if (HttpContext.Current.Request.ServerVariables["HTTP_X_FORWARDED_FOR"] != null)
                {
                    ClientIp = HttpContext.Current.Request.ServerVariables["HTTP_X_FORWARDED_FOR"].ToString();
                }
                else if (HttpContext.Current.Request.UserHostAddress.Length != 0)
                {
                    ClientIp = HttpContext.Current.Request.UserHostAddress;
                }
                return ClientIp;
            }
            catch
            {
                throw;
            }
        }


        private string PerformTraceRoute(string targetHost)
        {
            StringBuilder traceOutput = new StringBuilder();
            using (Ping pingSender = new Ping())
            {
                PingOptions pingOptions = new PingOptions();
                int maxHops = 30;
                byte[] buffer = Encoding.ASCII.GetBytes("traceroute");
                int timeout = 3000;

                traceOutput.AppendLine("Tracing route to " + targetHost + " ...");

                for (int ttl = 1; ttl <= maxHops; ttl++)
                {
                    pingOptions.Ttl = ttl;
                    PingReply reply = pingSender.Send(targetHost, timeout, buffer, pingOptions);

                    if (reply.Status == IPStatus.TtlExpired || reply.Status == IPStatus.TimeExceeded)
                    {
                        traceOutput.AppendLine(string.Format("{0}. {1} - {2}", ttl, reply.Address.ToString(), reply.Status.ToString()));
                    }
                    else if (reply.Status == IPStatus.Success)
                    {
                        traceOutput.AppendLine(string.Format("{0}. {1} - {2}", ttl, reply.Address.ToString(), reply.Status.ToString()));
                        break;
                    }
                    else
                    {
                        traceOutput.AppendLine(string.Format("{0}. * - {1}", ttl, reply.Status.ToString()));
                    }
                }
            }

            return traceOutput.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Request.QueryString["user"] != null)
            {
                calliduser = Convert.ToInt32(Request.QueryString["user"]);
            }
            string namesurname = txt_NameSurname.Text;
            string adress = txt_adress.Text;
            string idnumber = "";
            string blood = "";
            int blooddeegree = 0;
            string move = "";
            string pain = "";
            string person = "";

            int callid = calliduser;

           
          

            if (txt_tckimlik.Text != null)
            {
                idnumber = txt_tckimlik.Text;
            }

            if (RadioButton1.Checked)
            {
                blood = "Yok-Az kanama";
                blooddeegree = 5;
            }
            else if (RadioButton2.Checked)
            {
                blood = "Kol veya bacak bölgesinde";
                blooddeegree = 15;
            }
            else if (RadioButton3.Checked)
            {
                blood = "Gövde bölgesinde";
                blooddeegree = 25;
            }
            else if (RadioButton4.Checked)
            {
                blood = "Baş bölgesinde";
                blooddeegree = 35;
            }

            if (RadioButton1.Checked)
            {
                move = "Evet";
                blooddeegree += 5;
            }
            else if (RadioButton2.Checked)
            {
                move = "Sürünerek hareket edebiliyorum";
                blooddeegree += 10;
            }
            else if (RadioButton3.Checked)
            {
                move = "Sıkıştım, hareket edemiyorum.";
                blooddeegree += 15;
            }
            if (RadioButton1.Checked)
            {
                pain = "Hissetmiyorum";
                blooddeegree += 5;
            }
            else if (RadioButton2.Checked)
            {
                pain = "Kol ve ya bacak bölgesinde hissediyorum.";
                blooddeegree += 15;
                
            }
            else if (RadioButton3.Checked)
            {
                pain = "Gövde bölgesinde hissediyorum.";
                blooddeegree += 25;
            }
            else if (RadioButton4.Checked)
            {
                pain = "Baş bölgesinde hissediyorum.";
                blooddeegree += 35;
            }

            if (RadioButton1.Checked)
            {
                person = "Tek başımayım";
            }

            else if (RadioButton2.Checked)
            {
                person = "2-4 kişiyiz";
            }
            else if (RadioButton3.Checked)
            {
                person = "5-8 kişiyiz";
            }
            else if (RadioButton4.Checked)
            {
                person = "8+ kişiyiz";
            }

            try
            {
                
                SqlConnection con = new SqlConnection(@"Server=owline.aydmr.site\MSSQLSERVER2019;Initial Catalog=OwLine;User=owline;password=cBx78o4#4;TrustServerCertificate = True");
                SqlCommand command;
                SqlDataAdapter adapter = new SqlDataAdapter();
                con.Open();

                String sql = "Insert into SOSD(CALLID,namesurname,adress,idnumber,blood,blooddeegree,move,pain,person,status) values(@callid,@namesurname,@adress,@idnumber,@blood,@blooddeegree,@move,@pain,@person,@status)";
                command = new SqlCommand(sql, con);
                command.Parameters.AddWithValue("@namesurname", namesurname);
                command.Parameters.AddWithValue("@adress", adress);
                command.Parameters.AddWithValue("@idnumber", idnumber);
                command.Parameters.AddWithValue("@blood", blood);
                command.Parameters.AddWithValue("@blooddeegree", blooddeegree);
                command.Parameters.AddWithValue("@move", move);
                command.Parameters.AddWithValue("@pain", pain);
                command.Parameters.AddWithValue("@person", person);
                command.Parameters.AddWithValue("@status", 0);
                command.Parameters.AddWithValue("@callid", callid);
                command.ExecuteNonQuery();

                Literal1.Text = "<div class=\'registration-form-alert alert alert-success row! form-group\'>Kayıt Edildi.</div>";
                Response.Redirect("sosmessage?userid=" + callid);

            }
            catch
            {
                Literal1.Text = "<div class=\'registration-form-alert alert alert-danger row! form-group\'>Bir hata oluştu.Kayıt edilemedi!</div>"; ;
            }
           

        }
    }
}