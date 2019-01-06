using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Configuration;

namespace GarudaWEB
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
                if (Session["UserLogin"] != null)
                {
                    Response.Redirect("Admin.aspx");
                }
        }

        protected void Login_btn_Click(object sender, EventArgs e)
        {
            SqlConnection GarudaConnect = new SqlConnection(ConfigurationManager.ConnectionStrings["GarudaDBConnection"].ConnectionString);
            GarudaConnect.Open();
            string cekuser = "SELECT COUNT (*) FROM [User] WHERE username = '" + Username.Text + "' ";
            SqlCommand query = new SqlCommand(cekuser, GarudaConnect);
            int jumlah = Convert.ToInt32(query.ExecuteScalar().ToString());
            GarudaConnect.Close();
            if (jumlah == 1)
            {
                GarudaConnect.Open();
                string passwordsql = "SELECT password from [User] WHERE username = '" + Username.Text + "' ";
                SqlCommand passquery = new SqlCommand(passwordsql, GarudaConnect);
                string password = passquery.ExecuteScalar().ToString();
                GarudaConnect.Close();
                if (password == Password.Text)
                {
                    //SESSION
                    Session["UserLogin"] = Username.Text;
                    Response.Redirect("admin.aspx");
                }
                else
                {
                    Response.Write("Password Salah!");
                }
            } 
            else
            {
                Response.Write("Username Tidak Ditemukan!");
            }
        }
    }
} 
