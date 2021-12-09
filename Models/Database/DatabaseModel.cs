namespace MealPlanner.Models{

using MySqlConnector;
using System;
using System.Data;
using System.Threading.Tasks;

    public class DbConnection : IDisposable
    {
        public MySqlConnection Connection { get; }

        public static DbConnection Current { get; set; }

        public DbConnection(string connectionString)
        {
            Connection = new MySqlConnection(connectionString);
            this.Connection.Open();
        }

        public void Dispose() => Connection.Dispose();

        // add query methods below
        public DataTable GetAllProducts()
        {
            string query = "SELECT * FROM product;";

            DataTable t = new DataTable();

            MySqlDataAdapter x = new MySqlDataAdapter(query, this.Connection);
            x.Fill(t);

            return t;
        }

    }

}
