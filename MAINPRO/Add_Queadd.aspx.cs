using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class Add_Queadd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        con.Open();

        string query = "insert into Question_Table(Question_Type,Question,A,B,C,D,Correct_op)values(@Question_Type,@Question,@A,@B,@C,@D,@Correct_op);";
        SqlCommand cmd = new SqlCommand(query, con);
        cmd.Parameters.AddWithValue("@A",A.Text.Trim());
        cmd.Parameters.AddWithValue("@B", B.Text.Trim());
        cmd.Parameters.AddWithValue("@C", C.Text.Trim());
        cmd.Parameters.AddWithValue("@D", D.Text.Trim());
        cmd.Parameters.AddWithValue("@Correct_op",correctopt.Text.Trim());
        cmd.Parameters.AddWithValue("@Question",Question.Text.Trim());
        cmd.Parameters.AddWithValue("@Question_Type",DropDownList1.Text.Trim());
        cmd.ExecuteNonQuery();
        Response.Redirect("~/ADDEDQUE.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin_Home.aspx");
    }
}