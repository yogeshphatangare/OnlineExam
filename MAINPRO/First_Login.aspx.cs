using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataIO;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class First_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session.Clear();



    }
    protected void loginBtnClick_Click(object sender, EventArgs e)
    {
        //try
        //{
        //    bool ResponceMessage;


        //    LoginIO oUserDataIO = new LoginIO();
        //    Users oUsers = new Users();
        //    oUsers.LoginName = Username.Text.Trim();
        //    oUsers.LoginPassword = Password.Text.Trim();
        //    oUsers.LoginType = "S";
        //    ResponceMessage = oUserDataIO.IsValidUser(oUsers);
        //    if (ResponceMessage)
        //    {
        //        Session["LogedUserName"] = Username.Text;
        //        Session["user"] = Username.Text;
        //        Response.Redirect("~\\Default.aspx", false);
        //    }
        //    else
        //    {
        //        labelMsg.Text = "Invalid user";
        //        //lblMessage.Visible = true;
        //        //lblMessage.Text = Convert.ToString(Session["FarmerID"]);
        //    }

        //}
        //catch (Exception ex)
        //{
        //    labelMsg.Text = ex.Message + "";

        //}
        try
        {
            SqlConnection connection = new SqlConnection(DBConnectionString.GetConnection);
            SqlCommand command = new SqlCommand();
            command.Connection = connection;
            command.CommandText = "Select COUNT(*) from Logins1 where LoginName='"+Username.Text.Trim()+ "' and LoginPassword='" +Password.Text.Trim()+
                "' and LoginType='S';";
            command.CommandType = CommandType.Text;
            connection.Open();

            int output = Convert.ToInt32(command.ExecuteScalar());
            if (output > 0)
            {
                Session["LogedUserName"] = Username.Text;
                Session["user"] = Username.Text;
                Response.Redirect("~\\Default.aspx");
                connection.Close();
            }
            else
            {
                connection.Close();
                labelMsg.Text = "INVALID USER";

               // ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('ghar jao');", true);
            }

        }
        catch(Exception ex)
        {
            labelMsg.Text = ex.Message;
        }

    }
    protected void registerClick_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Register.aspx");
    }
}