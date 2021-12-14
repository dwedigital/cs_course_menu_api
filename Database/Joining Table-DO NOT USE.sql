USE MealPlannerDb;

CREATE TABLE recipe_ingredients
(
    IngredientId              INT NOT NULL,
    RecipeId                  INT NOT NULL,
    IngredientQuantity        INT NOT NULL,

    FOREIGN KEY (IngredientId) REFERENCES ingredients(IngredientId),
    FOREIGN KEY (RecipeId) REFERENCES recipe(RecipeId)
);

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

CREATE TABLE meal_recipe
(
    MealId          INT NOT NULL,
    RecipeId        INT NOT NULL,
    Quantity        INT NOT NULL,

    FOREIGN KEY (RecipeId) REFERENCES recipe(RecipeId),
    FOREIGN KEY (MealId) REFERENCES meal(MealId)
);

INSERT INTO meal_recipe
    (RecipeId, MealId, Quantity)
    VALUES
    (1,1,3);

INSERT INTO meal_recipe
    (RecipeId, MealId, Quantity)
    VALUES
    (2,1,1);