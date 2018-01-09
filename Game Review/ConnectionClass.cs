using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace Game_Review
{
    public class ConnectionClass
    {
        private static SqlConnection cn;
        private static SqlCommand cmd;

        static ConnectionClass()
        {
            cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\ReviewDB.mdf;Integrated Security=True");
        }

        public static void AddInfo(info info)
        {
            string query = string.Format(@"Insert into Reviews Values ({0}, {1}, {2}, '{3}', '{4}')",
              info.reviewID, info.userID, info.gameID, info.reviewContent, info.reviewDate);
            cmd = new SqlCommand(query, cn);

            try
            {
                cn.Open();
                cmd.ExecuteNonQuery();
            }
            finally
            {
                cn.Close();
            }
        }

        
    }
}