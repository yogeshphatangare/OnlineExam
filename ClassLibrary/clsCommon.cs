using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataIO
{
    public class clsCommon
    {
     
    }
    public static class DBConnectionString
    {
        public static string GetConnection
        {
            get { return ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString; }
        }
    }

}
