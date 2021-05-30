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
    class DrewsGoodsDAL
    {
        //Declaring variables
        private static string tableName = "items";
        protected static string connectionString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;

        private static DataSet createLocalDataset()
        {
            //Add columns to the dataset
            DataSet accounts = new DataSet();
            accounts.Tables.Add(tableName);
            accounts.Tables[tableName].Columns.Add("name");
            accounts.Tables[tableName].Columns.Add("amount");
            accounts.Tables[tableName].Columns.Add("price");
            return accounts;
        }

        private static SqlConnection openConnection()
        {
            SqlConnection connection = new SqlConnection(connectionString);
            return connection;
        }

        public static DataSet getItems(DrewsGoodsBO values = null)
        {
            //Connect with SQL
            SqlConnection connection = openConnection();

            //SQL query
            string sql = "SELECT name, stock, CAST(price AS DECIMAL(10,2)) FROM " + tableName + ";";
            SqlCommand command = new SqlCommand(sql, connection);
            //Open sql connection
            connection.Open();
            //Execute the reader
            SqlDataReader reader = command.ExecuteReader();
            if (reader.HasRows)
            {
                DataSet items = createLocalDataset();

                while (reader.Read())
                {
                    //Add row to local dataset
                    items.Tables[tableName].Rows.Add(reader[0], reader[2], reader[1]);
                }
                reader.Close();
                //Return the dataset
                return items;
            }
            else
            {
                return null;
            }
        }

        public static bool deleteItem(DrewsGoodsBO values = null)
        {
            //Connect with SQL
            SqlConnection connection = openConnection();

            //SQL query
            string sql = values != null ? "DELETE FROM " + tableName + " WHERE name = '" + values.name + "';" : "false";
            if (sql != "false")
            {
                SqlCommand command = new SqlCommand(sql, connection);
                connection.Open();

                SqlDataReader reader = command.ExecuteReader();

                //Return true to signify succesful deletion
                return true;

            }
            else
            {
                System.Windows.Forms.MessageBox.Show("No item selected.");
                return false;
            }
        }

        public static bool addItem(DrewsGoodsBO values = null)
        {
            //Connect with SQL
            SqlConnection connection = openConnection();

            string sql = "false";
            //SQL query
            if(values.type == "add") {
                sql = "INSERT INTO " + tableName + "(name, stock, price) VALUES('" + values.name + "', '" + values.stock + "', " + values.price + ");";
            } 
            else if(values.type == "edit")
            {
                sql = "UPDATE " + tableName + " SET name = '" + values.name + "', stock = " + values.stock + ", price = " + values.price + " WHERE name = '" + values.name + "';";
            }
            
            if (sql != "false")
            {
                SqlCommand command = new SqlCommand(sql, connection);
                connection.Open();

                SqlDataReader reader = command.ExecuteReader();

                //Return true to signify succesful insertion ( ͡° ͜ʖ ͡°)
                return true;

            }
            else
            {
                System.Windows.Forms.MessageBox.Show("Something went wrong while adding the item.\n\nPlease try again.");
                return false;
            }
        }
    }
}
