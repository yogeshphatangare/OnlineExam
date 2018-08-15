
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataIO
{
   public  class QuestionIO
    {
       public List<clsQuestion> getAllQuestion(string QuestionType)
       {
           DataSet ds = new DataSet();
           List<clsQuestion> oclsQuestionList = new List<clsQuestion>();
           try
           {
               
               SqlDataAdapter da = new SqlDataAdapter("Select TOP 20 * from Question_Table where Question_Type='" + QuestionType + "'",
                   new  SqlConnection(DBConnectionString.GetConnection));

               da.Fill(ds);
               if (ds != null)
               {
                   foreach (DataRow dr in ds.Tables[0].Rows)
                   {
                       var oclsQuestion = new clsQuestion();
                       oclsQuestion.QuestionNo =Convert.ToInt32( dr["Id"]);
                       oclsQuestion.Question = dr["Question"].ToString();
                       oclsQuestion.Option1 = dr["A"].ToString();
                       oclsQuestion.Option2 = dr["B"].ToString();
                       oclsQuestion.Option3 = dr["C"].ToString();
                       oclsQuestion.Option4 = dr["D"].ToString();
                       oclsQuestion.CorrectAnswer = dr["Correct_op"].ToString();
                       oclsQuestionList.Add(oclsQuestion);

                   }
                   return oclsQuestionList;
               }

               return oclsQuestionList;
           }
           catch (Exception ex)
           { return oclsQuestionList; }
       
       }
    }
}
