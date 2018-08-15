using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SiteMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            string a = Session["user"].ToString();
            if (a != null)
            {
                Label1.Text = Session["user"].ToString();
            }
        }
        catch(Exception ex2)
        { 
            Response.Redirect("~//First_Login.aspx");    
        }
    }
    protected void NavigationMenu_MenuItemClick(object sender, MenuEventArgs e)
    {
        Session.Clear();

        Session.Abandon();
        Response.Redirect("~//First_Login.aspx");
    }
    protected void outlog_Click(object sender, EventArgs e)
    {
        Session.Clear();
       
        Session.Abandon();
        Response.Redirect("~//First_Login.aspx");
    }
}
