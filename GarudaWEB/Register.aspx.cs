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
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserLogin"] != null)
            {
                Response.Redirect("Admin.aspx");
            }
        }

      

        protected void Button1_Daftar(object sender, EventArgs e)
        {
            SqlConnection GarudaConnect = new SqlConnection(ConfigurationManager.ConnectionStrings["GarudaDBConnection"].ConnectionString);
            GarudaConnect.Open();
            string cekuser = "SELECT COUNT (*) FROM [User] WHERE username = '"+username.Text+"' ";
            SqlCommand query = new SqlCommand(cekuser, GarudaConnect);
            int jumlah = Convert.ToInt32(query.ExecuteScalar().ToString());
            GarudaConnect.Close();
            if (jumlah != 0)
            {
                Response.Write("Username sudah digunakan");
            }
            else
            {
                GarudaConnect.Open();
                string insert = "INSERT INTO [User] (username,password,email,gender) Values (@username,@password,@email,@gender)";
                SqlCommand insertquery = new SqlCommand(insert,GarudaConnect);
                insertquery.Parameters.AddWithValue("@username",username.Text);
                insertquery.Parameters.AddWithValue("@password",password.Text);
                insertquery.Parameters.AddWithValue("@email",email.Text);
                insertquery.Parameters.AddWithValue("@gender",gender.SelectedItem.ToString());
                insertquery.ExecuteNonQuery();
                GarudaConnect.Close();
                //Session
                Session["UserLogin"] = username.Text;
                Response.Redirect("admin.aspx");

            }
        }

        
    }
}
