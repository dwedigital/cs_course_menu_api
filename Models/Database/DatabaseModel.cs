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

        public void CreateIngredient(IngredientModel ingredient)
        {
            MySqlCommand cmd = this.Connection.CreateCommand();
            cmd.CommandText = $"INSERT INTO ingredients (IngredientName) VALUES (@Name);";

            cmd.Parameters.AddWithValue("@Name", ingredient.Name);

            cmd.ExecuteNonQuery();

        }

        public void CreateRecipe(RecipeModel recipe)
        {
            MySqlCommand cmd = this.Connection.CreateCommand();
            cmd.CommandText = $"INSERT INTO recipe (RecipeName, RecipeDescription) VALUES (@Name, @Description);";
            cmd.Parameters.AddWithValue("@Name", recipe.Name);
            cmd.Parameters.AddWithValue("@Description", recipe.Description);
            cmd.ExecuteNonQuery();
        }

    }

}
