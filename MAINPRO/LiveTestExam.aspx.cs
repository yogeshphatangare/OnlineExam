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

public partial class LiveTestExam : System.Web.UI.Page
{
   
   protected void Page_Load(object sender, EventArgs e)
    {
         
        if (!Page.IsPostBack)
        {
            Session["check"] = 1 ;
            Session["CorrectAns"] = 0;
            Session["QuestionNo"] = 0;
            QuestionIO oQuestionIO = new QuestionIO();
            List<clsQuestion> oQuestionlist = oQuestionIO.getAllQuestion(Convert.ToString(Session["qtype"]));
            Session["oQuestionlist"] = oQuestionlist;
           Label2.Text = oQuestionlist[0].QuestionNo+". "+oQuestionlist[0].Question;
            RadioButtonList1.Items[0].Text = oQuestionlist[0].Option1;
            RadioButtonList1.Items[1].Text = oQuestionlist[0].Option2;
            RadioButtonList1.Items[2].Text = oQuestionlist[0].Option3;
            RadioButtonList1.Items[3].Text = oQuestionlist[0].Option4;  

        }      
    }
        
        

    
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            Session["check"] = Convert.ToInt32(Session["check"]) + 1;
            if(Convert.ToInt32(Session["check"])<11)
            {
            List<clsQuestion> oQuestionlist =(List<clsQuestion> )Session["oQuestionlist"];
            if (RadioButtonList1.SelectedValue == oQuestionlist[Convert.ToInt32(Session["QuestionNo"])].CorrectAnswer)
            {
                Session["CorrectAns"] = Convert.ToInt32(Session["CorrectAns"] )+ 1;                
            }
            
            Session["QuestionNo"] = Convert.ToInt32(Session["QuestionNo"]) + 1;

            Label2.Text = oQuestionlist[Convert.ToInt32(Session["QuestionNo"])].QuestionNo+ "." + oQuestionlist[Convert.ToInt32(Session["QuestionNo"])].Question;
            RadioButtonList1.Items[0].Text = oQuestionlist[Convert.ToInt32(Session["QuestionNo"])].Option1;
            RadioButtonList1.Items[1].Text = oQuestionlist[Convert.ToInt32(Session["QuestionNo"])].Option2;
            RadioButtonList1.Items[2].Text = oQuestionlist[Convert.ToInt32(Session["QuestionNo"])].Option3;
            RadioButtonList1.Items[3].Text = oQuestionlist[Convert.ToInt32(Session["QuestionNo"])].Option4;

            RadioButtonList1.SelectedValue = null;
            }
            else
            {
               Response.Redirect("~//default2.aspx");
            }

        }
        catch
        { 
        
        }
    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~//default.aspx");
    }
}
