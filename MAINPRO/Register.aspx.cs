using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using DataIO;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnClear0_Click(object sender, EventArgs e)
    {
       Response.Redirect("~\\First_Login.aspx", false);


    }
    protected void BtnSave0_Click(object sender, EventArgs e)
    {
        try
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

           

            string que = "Select COUNT(*) from Logins1 where LoginName='" + txtUserName.Text.Trim() + "';";
            SqlCommand cmd1 = new SqlCommand(que,con);
            int op=Convert.ToInt32(cmd1.ExecuteScalar());
            if (op > 0)
            {
               ExistLabel.Text = "User Name Already Exist";
            }


            string query = "insert into logins1(LoginName,LoginPassword,LoginType,Name,Email,MobileNo,Gender)values(@LoginName,@LoginPassword,@LoginType,@Name,@Email,@MobileNo,@Gender)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@LoginName", txtUserName.Text);
            cmd.Parameters.AddWithValue("@LoginPassword", textpass.Text);
            cmd.Parameters.AddWithValue("@LoginType", "S");
            cmd.Parameters.AddWithValue("@Name", txtName.Text);
            cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
            cmd.Parameters.AddWithValue("@MobileNo", txtMobile.Text);
            cmd.Parameters.AddWithValue("@Gender", DropDownList1.Text);
            cmd.ExecuteNonQuery();
            Response.Redirect("~\\First_Login.aspx");
            con.Close();
        }
        catch(Exception ex)
        {
           ExistLabel.Text = ex.Data+"Error";
        }
    }
}