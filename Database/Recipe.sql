USE MealPlannerDb;

CREATE TABLE recipe
(
    RecipeId        INT NOT NULL,
    RecipeName      VARCHAR(100),
    IngredientsId   INT,
        
    PRIMARY KEY (RecipeId),
    FOREIGN KEY (IngredientsId)
);

INSERT INTO recipe
    (RecipeName,IngredientsId,)
    VALUES
    (Salt);