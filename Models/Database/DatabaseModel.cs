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


        public DataTable GetIngredient(int id){
            string query = $"SELECT * FROM ingredients WHERE id = {id}";
            MySqlCommand cmd = new MySqlCommand(query, Connection);
            MySqlDataAdapter adapter = new MySqlDataAdapter(cmd);
            DataTable t = new DataTable();
            adapter.Fill(t);
            return t;
        }
        public DataTable GetAllIngredients()
        {
            string query = "SELECT * FROM ingredients;";

            DataTable t = new DataTable();

            MySqlDataAdapter x = new MySqlDataAdapter(query, this.Connection);
            x.Fill(t);

            return t;
        }



        public DataTable GetRecipe(int id)
        {
            MySqlCommand cmd = this.Connection.CreateCommand();

            cmd.CommandText = "SELECT * FROM recipe WHERE RecipeID = @id;";
            cmd.Parameters.AddWithValue("@id", id);

            DataTable t = new DataTable();

            MySqlDataAdapter x = new MySqlDataAdapter(cmd);
            x.Fill(t);

            return t;
        }

        public DataTable GetAllRecipes()
        {
            string query = "SELECT * FROM recipe;";

            DataTable t = new DataTable();

            MySqlDataAdapter x = new MySqlDataAdapter(query, this.Connection);
            x.Fill(t);

            return t;
        }


    }

}
