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


        public DataTable GetIngredient(int ingredientId)
        {
            // returns a single ingredient
            string query = $"SELECT * FROM ingredients WHERE id = {ingredientId}";
            MySqlCommand cmd = new MySqlCommand(query, Connection);
            MySqlDataAdapter adapter = new MySqlDataAdapter(cmd);
            DataTable t = new DataTable();
            adapter.Fill(t);
            return t;
        }
        public DataTable GetAllIngredients()
        {
            // returns all ingredients
            string query = "SELECT * FROM ingredients;";

            DataTable t = new DataTable();

            MySqlDataAdapter x = new MySqlDataAdapter(query, this.Connection);
            x.Fill(t);

            return t;
        }



        public DataTable GetRecipe(int recipeId)
        {
            // returns a single recipe
            MySqlCommand cmd = this.Connection.CreateCommand();

            cmd.CommandText = "SELECT * FROM recipe WHERE RecipeID = @recipeId;";
            cmd.Parameters.AddWithValue("@recipeId", recipeId);

            DataTable t = new DataTable();

            MySqlDataAdapter x = new MySqlDataAdapter(cmd);
            x.Fill(t);

            return t;
        }

        public DataTable GetAllRecipes()
        {
            // return all recipes
            string query = "SELECT * FROM recipe;";

            DataTable t = new DataTable();

            MySqlDataAdapter x = new MySqlDataAdapter(query, this.Connection);
            x.Fill(t);

            return t;
        }

        public DataTable GetMeal(int mealId)
        {
            // returns a meal with the given id
            MySqlCommand cmd = this.Connection.CreateCommand();

            cmd.CommandText = "SELECT * FROM mealchoice WHERE MealchoiceId = @mealId;";
            cmd.Parameters.AddWithValue("@mealId", mealId);

            DataTable t = new DataTable();

            MySqlDataAdapter x = new MySqlDataAdapter(cmd);
            x.Fill(t);

            return t;
        }

        public DataTable GetAllMeals()
        {
            // returns all meals
            string query = "SELECT * FROM mealchoice;";

            DataTable t = new DataTable();

            MySqlDataAdapter x = new MySqlDataAdapter(query, this.Connection);
            x.Fill(t);

            return t;
        }

        public DataTable GetUserMealsByDateRange(DateTime start, DateTime end, int userId)
        {
            // returns all meals for a user in a given date range

            string query = $"SELECT * FROM mealchoice WHERE Date BETWEEN '{start.ToString("yyyy-MM-dd")}' AND '{end.ToString("yyyy-MM-dd")}' AND UserId = {userId};";
            DataTable t = new DataTable();

            MySqlDataAdapter x = new MySqlDataAdapter(query, this.Connection);
            x.Fill(t);

            return t;


        }

        public DataTable GetRecipeIngredients(int recipeId)
        {

            // returns a table of all ingredients for a given recipe
            string query = @$"
            SELECT i.* FROM ingredients 
            i.INNER JOIN recipe_ingredients ri ON ri.IngredientId = i.IngredientId 
            WHERE ri.RecipeId = {recipeId};
            ";
            MySqlCommand cmd = new MySqlCommand(query, Connection);
            MySqlDataAdapter adapter = new MySqlDataAdapter(cmd);
            DataTable ingredients = new DataTable();
            adapter.Fill(ingredients);

            return ingredients;
        }

        public DataTable GetMealIngredients(int mealId)
        {

            // returns a table with Ingredient ID, Ingredient Name, and SUM of Quantity
            string query = @$"
            select i.*, SUM(ri.IngredientQuantity) from ingredients as i
            inner join recipe_ingredients as ri On ri.IngredientId = i.IngredientId
            inner join meal_recipe as mr on mr.RecipeId = ri.RecipeId
            where mr.MealId = 1
            group by i.IngredientId;";

            MySqlCommand cmd = new MySqlCommand(query, Connection);
            MySqlDataAdapter adapter = new MySqlDataAdapter(cmd);
            DataTable ingredients = new DataTable();
            adapter.Fill(ingredients);

            return ingredients;
        }

    }

}
