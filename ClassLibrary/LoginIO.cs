using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace DataIO
{
    public class LoginIO
    {
        public bool IsValidUser(User oUsers)
        {
            try
            {
                SqlConnection connection = new SqlConnection(DBConnectionString.GetConnection);
                SqlCommand command = new SqlCommand();
                command.Connection = connection;
                command.CommandText = "Select COUNT(*) from Logins where LoginName='" + oUsers.LoginName.Trim() + "' and LoginPassword='" + oUsers.LoginPassword.Trim() +
                    "' and LoginType='" + oUsers.LoginType + "';";
                command.CommandType = CommandType.Text;
                connection.Open();

                int output = Convert.ToInt32(command.ExecuteScalar());
                if (output > 0)
                {
                    connection.Close();
                    return true;
                }
                else
                {
                    connection.Close();
                    return false;
                }

            }
            catch (Exception ex)
            {
                return false;
            }


        }
        //public bool AddUser(User oUsers)
        //{
        //    try
        //    {
        //        SqlConnection connection = new SqlConnection(DBConnectionString.GetConnection);
        //        SqlCommand command = new SqlCommand();
        //        command.Connection = connection;
        //        command.CommandText = "Select Max(userid) from Users;";
        //        command.CommandType = CommandType.Text;
        //        connection.Open();
        //        // Getting user ID form Database
        //        oUsers.userid = Convert.ToString(Convert.ToInt32(command.ExecuteScalar()) + 1);


        //        // Inserting values into database
        //        command.CommandText = "insert into Users values('" + oUsers.LoginName + "','" + oUsers.LoginPassword + "','" + oUsers.LoginType + "');";
        //        command.CommandType = CommandType.Text;

        //        command.ExecuteNonQuery();
        //        connection.Close();
        //        return true;
        //    }
        //    catch (Exception ex)
        //    {
        //        return false;
        //    }

        //}

       /* public bool AddUser(Users oUsers)
        {
            try
            {
                SqlConnection connection = new SqlConnection(DBConnectionString.GetConnection);
                SqlCommand command = new SqlCommand();
                command.Connection = connection;
                command.CommandText = "Select Max(userid) from Users;";
                command.CommandType = CommandType.Text;
                connection.Open();
                // Getting user ID form Database
                oUsers.userid = Convert.ToString(Convert.ToInt32(command.ExecuteScalar()) + 1);


                // Inserting values into database
                command.CommandText = "insert into Users values('" + oUsers.LoginName + "','" + oUsers.LoginPassword + "','" + oUsers.LoginType+ "');";
                command.CommandType = CommandType.Text;

                command.ExecuteNonQuery();
                connection.Close();
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }

        }
        */
    }
}

