using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
            int v=Convert.ToInt32(Session["CorrectAns"]) *2;
                    Label1.Text = v.ToString();
    }
}