using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Configuration;


namespace testTask
{
    class DataBase
    {
        public SqlConnection sqlConnection;
        public DataBase()
        {
            string connectionString = GetConnectString();
            sqlConnection = new SqlConnection(connectionString);
        }


        public void OpenConnection()
        {
            if (sqlConnection.State == System.Data.ConnectionState.Closed)
            {
                sqlConnection.Open();
            }
        }


        public void CloseConnection()
        {
            if (sqlConnection.State == System.Data.ConnectionState.Open)
            {
                sqlConnection.Close();
            }
        }


        public SqlConnection GetConnection()
        {
            return sqlConnection;
        }

        private string GetConnectString()
        {
            var connectionString = ConfigurationManager.ConnectionStrings["Default"].ConnectionString;
            return connectionString.ToString();
        }
    }
}
