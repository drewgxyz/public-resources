using Drew_s_Goods.BO;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Drew_s_Goods.DAL
{
    class LoginDAL
    {
        //Declaring variables
        private static string tableName = "accounts";
        protected static string connectionString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
        public DialogResult result { get; set; }

        private static DataSet createLocalDataset()
        {
            //Create local dataset and add columns to it
            DataSet accounts = new DataSet();
            accounts.Tables.Add(tableName);
            accounts.Tables[tableName].Columns.Add("username");
            accounts.Tables[tableName].Columns.Add("passwordHash");
            return accounts;
        }
        private static SqlConnection openConnection()
        {
            SqlConnection connection = new SqlConnection(connectionString);
            return connection;
        }

        public static bool createDatbaseQuery(LoginBO values = null)
        {
            //Connect with SQL
            SqlConnection connection = openConnection();
            //SQL query
            string sql = values != null ? "SELECT * FROM " + tableName + " WHERE username = '" + values.username + "' AND passwordHash = '" + values.password + "';" : "false";
            if (sql != "false")
            {
                SqlCommand command = new SqlCommand(sql, connection);
                //Open sql connection
                connection.Open();
                //Execute the reader
                SqlDataReader reader = command.ExecuteReader();
                //Loop through the readers rows to add account to loginCredentials variable in Login class.
                if (reader.HasRows)
                {
                    DataSet accounts = createLocalDataset();

                    while (reader.Read())
                    {
                        Login.loginCredentials = new string[] { reader[1].ToString(), reader[2].ToString() };

                    }
                    reader.Close();
                    //Return true to signify correct login attempt
                    return true;
                }
                else
                {
                    MessageBox.Show("Incorrect login credentials.\n\nPlease try again!");
                }
            }
            else
            {
                MessageBox.Show("Something went wrong on our end. Please try again.");
            }


            return false;
        }
    }
}
