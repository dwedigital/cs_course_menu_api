/*USE MealPlannerDb;

GILLs VERSION ATTEMPT:
SELECT ingredients.Ingredient
FROM ingredients
INNER JOIN recipe ON ingredients.IngredientsId=recipe.IngredientsId;

PROPER VERSION: 
SELECT r.* FROM recipe r
INNER JOIN recipe_ingredients ri ON ri.RecipeId = r.RecipeId
INNER JOIN ingredients i ON ri.IngredientsId = i.IngredientsId
*/