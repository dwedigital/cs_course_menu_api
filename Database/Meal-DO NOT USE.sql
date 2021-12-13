USE MealPlannerDb;

CREATE TABLE meal
(
    MealId          INT AUTO_INCREMENT NOT NULL,
    Meal_Name       VARCHAR(250),
    RecipeId        INT,
    Recipe_Name     VARCHAR(100),
    RecipeId_2      INT,
    Recipe_Name_2   VARCHAR(100),
    

    PRIMARY KEY (MealId),
    FOREIGN KEY (RecipeId) REFERENCES Recipe(RecipeId),
    FOREIGN KEY (RecipeId_2) REFERENCES Recipe(RecipeId)
);

INSERT INTO meal
    (Meal_Name,RecipeId,RecipeId_2)
    VALUES
    ("Chicken and Rosti",1,2);
