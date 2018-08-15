using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataIO;
public partial class Admin_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    protected void Button2_Click1(object sender, EventArgs e)
    {

       
        try
        {
           bool ResponceMessage;
           
        
           LoginIO oUserDataIO = new LoginIO();
           User oUsers = new User();
           oUsers.LoginName= admini.Text.Trim();
           oUsers.LoginPassword = passi.Text.Trim();
           oUsers.LoginType = "A";

          

           


            ResponceMessage = oUserDataIO.IsValidUser(oUsers);
         
           if (ResponceMessage)
           {
            
               Response.Redirect("~\\Admin_Home.aspx", false);
               Session["auser"] = admini.Text;
           }
           else {
               lblMessage.Text = "FAILED..!";
            
           }
           
        }
        catch (Exception ex)
        {
            lblMessage.Text = ex.Message+"";
        
        }
    }
        
    }
