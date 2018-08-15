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

public partial class Student_Profile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            SqlConnection connection = new SqlConnection(DBConnectionString.GetConnection);
            SqlCommand command = new SqlCommand();
            command.Connection = connection;
            command.CommandText = "Select * from Logins1 where LoginName='" + Session["user"].ToString()+ "';";
            command.CommandType = CommandType.Text;
            connection.Open();
            SqlDataReader reader =command.ExecuteReader();
            while (reader.Read())
            {
                Namel.Text = reader["Name"].ToString();
                Emaill.Text = reader["Email"].ToString();
                Mobilel.Text = reader["MobileNo"].ToString();
                GenderLabel.Text = reader["Gender"].ToString();
                
            }
            reader.Close();
            connection.Close();
        }
        catch(Exception ex)
        {
          
        }
    }
}