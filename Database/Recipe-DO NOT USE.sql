USE MealPlannerDb;

CREATE TABLE recipe
(
    RecipeId               INT AUTO_INCREMENT NOT NULL,
    RecipeName             VARCHAR(100),
    RecipeDescription      VARCHAR(300),

    PRIMARY KEY (RecipeId)
);

INSERT INTO recipe
    (RecipeName, RecipeDescription)
    VALUES
    ("Rosti","Crispy potato rosti seasoned with salt and pepper");

INSERT INTO recipe
    (RecipeName, RecipeDescription)
    VALUES
    ("Roast Chicken", "Tender roast chicken cooked in tumeric, salt and pepper");