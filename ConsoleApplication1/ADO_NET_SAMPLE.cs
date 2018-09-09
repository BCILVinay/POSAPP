using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApplication1
{
   public class ADO_NET_SAMPLE
    {
       public void ConnectionTest()
       {
           try
           {
               ADO_NET obj = new ADO_NET(DbName.IT);

               SqlCommand cmd = new SqlCommand();
               cmd.CommandText = "USP_CHKINOUT_Parameter";
               cmd.CommandType = System.Data.CommandType.StoredProcedure;
               SqlParameter para = new SqlParameter("@StockInOrder", 10);
               para.Direction = System.Data.ParameterDirection.InputOutput;
               cmd.Parameters.Add(para);
               obj.Connect();
               obj.ExecuteQuery(cmd);
               var outputResult =Convert.ToInt32(para.Value);
               obj.DisConnect();
           }
           catch (Exception)
           {
               
               throw;
           }
       }

       public void LogerTest()
       {
           AppLogger log = new AppLogger();
           for (int i = 0; i < 100000000; i++)
           {


               try
               {
                   throw new Exception(DateTime.Now + @" Checking custome Exception");
               }
               catch (Exception ex)
               {
                   log.Write(ex);
               }
           }
       }
    }
}
