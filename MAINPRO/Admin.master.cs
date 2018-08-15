using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin : System.Web.UI.MasterPage

{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            string a = Session["auser"].ToString();
            if (a != null)
            {
                Lable1.Text = Session["auser"].ToString();
            }
        }
        catch(Exception ex)
        { 
            Response.Redirect("~//Admin_Login.aspx");    
        }
    }
    protected void NavigationMenu_MenuItemClick(object sender, MenuEventArgs e)
    {

    }
    protected void outlog_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Session.Abandon();
        Response.Redirect("~//Admin_Login.aspx");
    }
}
