/*USE MealPlannerDb;

SELECT ingredients.Ingredient
FROM ingredients
INNER JOIN recipe ON ingredients.IngredientsId=recipe.IngredientsId;

SELECT ingredients.Ingredient
FROM ingredients
INNER JOIN recipe ON ingredients.IngredientsId=recipe.IngredientId_2;

SELECT ingredients.Ingredient
FROM ingredients
INNER JOIN recipe ON ingredients.IngredientsId=recipe.IngredientId_3;

SELECT ingredients.Ingredient
FROM ingredients
INNER JOIN recipe ON ingredients.IngredientsId=recipe.IngredientId_4;

SELECT ingredients.Ingredient
FROM ingredients
INNER JOIN recipe ON ingredients.IngredientsId=recipe.IngredientId_5;

INSERT INTO Recipe (Ingredients)
SELECT Ingredients FROM ingredients
WHERE IngredientsId=1;

INSERT INTO Recipe (Ingredients_2)
SELECT Ingredient FROM ingredients
WHERE IngredientsId=2;

INSERT INTO Recipe (Ingredients_3)
SELECT Ingredient FROM ingredients
WHERE IngredientsId=3;

INSERT INTO Recipe (Ingredients_4)
SELECT Ingredient FROM ingredients
WHERE IngredientsId=4;

INSERT INTO Recipe (Ingredients_5)
SELECT Ingredient FROM ingredients
WHERE IngredientsId=5;*/