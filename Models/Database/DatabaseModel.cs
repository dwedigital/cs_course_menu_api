namespace MealPlanner.Models
{

    using System;
    using System.Data;
    using System.Threading.Tasks;
    using MySqlConnector;

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


        public DataTable GetIngredient(int id)
        {
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

        public DataTable GetMeal(int id)
        {
            MySqlCommand cmd = this.Connection.CreateCommand();

            cmd.CommandText = "SELECT * FROM mealchoice WHERE MealchoiceId = @id;";
            cmd.Parameters.AddWithValue("@id", id);

            DataTable t = new DataTable();

            MySqlDataAdapter x = new MySqlDataAdapter(cmd);
            x.Fill(t);

            return t;
        }

        public DataTable GetAllMeals()
        {
            string query = "SELECT * FROM mealchoice;";

            DataTable t = new DataTable();

            MySqlDataAdapter x = new MySqlDataAdapter(query, this.Connection);
            x.Fill(t);

            return t;
        }

        public DataTable GetUserMealsByDateRange(DateTime start,DateTime end, int UserId )
        {

                string query = $"SELECT * FROM mealchoice WHERE Date BETWEEN '{start.ToString("yyyy-MM-dd")}' AND '{end.ToString("yyyy-MM-dd")}' AND UserId = {UserId};";
                DataTable t = new DataTable();

                MySqlDataAdapter x = new MySqlDataAdapter(query, this.Connection);
                x.Fill(t);

                return t;
            

        }

        public DataTable GetRecipeIngredients(int recipeId)
        {
            string query = $"SELECT i.* FROM ingredients i.INNER JOIN recipe_ingredients ri ON ri.IngredientId = i.IngredientId WHERE ri.RecipeId = {recipeId};";
            MySqlCommand cmd = new MySqlCommand(query, Connection);
            MySqlDataAdapter adapter = new MySqlDataAdapter(cmd);
            DataTable ingredients = new DataTable();
            adapter.Fill(ingredients);

            return ingredients;
        }


    }

}
