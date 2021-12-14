USE MealPlannerDb;

INSERT INTO ingredients
    (IngredientName)
    VALUES
    ("Salt");

INSERT INTO ingredients
    (IngredientName)
    VALUES
    ("Pepper");

INSERT INTO ingredients
    (IngredientName)
    VALUES
    ("Potato");

INSERT INTO ingredients
    (IngredientName)
    VALUES
    ("Chicken");

INSERT INTO ingredients
    (IngredientName)
    VALUES
    ("Tumeric");

INSERT INTO recipe
    (RecipeName, RecipeDescription)
    VALUES
    ("Rosti","Crispy potato rosti seasoned with salt and pepper");

INSERT INTO recipe
    (RecipeName, RecipeDescription)
    VALUES
    ("Roast Chicken", "Tender roast chicken cooked in tumeric, salt and pepper");

INSERT INTO meal
    (Meal_Name)
    VALUES
    ("Chicken and Rosti");

INSERT INTO user
    (CustomerName,Email,Phone)
    VALUES
    ("Gill","test@gmail.com",01534111111);

INSERT INTO user
    (CustomerName,Email,Phone)
    VALUES
    ("Will","test2@gmail.com",01534111112);

INSERT INTO recipe_ingredients
    (RecipeId, IngredientId, IngredientQuantity)
    VALUES
    (1,1,1);

INSERT INTO recipe_ingredients
    (RecipeId, IngredientId, IngredientQuantity)
    VALUES
    (1,2,1);

INSERT INTO recipe_ingredients
    (RecipeId, IngredientId, IngredientQuantity)
    VALUES
    (1,3, 100);

INSERT INTO recipe_ingredients
    (RecipeId, IngredientId, IngredientQuantity)
    VALUES
    (2,1,1);

INSERT INTO recipe_ingredients
    (RecipeId, IngredientId, IngredientQuantity)
    VALUES
    (2,2,1);

INSERT INTO recipe_ingredients
    (RecipeId, IngredientId, IngredientQuantity)
    VALUES
    (2,4,250);

INSERT INTO recipe_ingredients
    (RecipeId, IngredientId, IngredientQuantity)
    VALUES
    (2,5,5);

INSERT INTO meal_recipe
    (RecipeId, MealId, Quantity)
    VALUES
    (1,1,3);

INSERT INTO meal_recipe
    (RecipeId, MealId, Quantity)
    VALUES
    (2,1,1);
