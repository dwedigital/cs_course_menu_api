CREATE SCHEMA MealPlannerDb;

USE MealPlannerDb;

CREATE TABLE ingredients
(
    IngredientId     INT AUTO_INCREMENT NOT NULL,
    IngredientName   VARCHAR(100),

    PRIMARY KEY (IngredientId)
);

CREATE TABLE recipe
(
    RecipeId               INT AUTO_INCREMENT NOT NULL,
    RecipeName             VARCHAR(100),
    RecipeDescription      VARCHAR(300),

    PRIMARY KEY (RecipeId)
);

CREATE TABLE meal
(
    MealId          INT AUTO_INCREMENT NOT NULL,
    Meal_Name       VARCHAR(250),   

    PRIMARY KEY (MealId)
);

CREATE TABLE user
(
    UserId          INT AUTO_INCREMENT NOT NULL,
    CustomerName    VARCHAR(25) NOT NULL,
    Email           VARCHAR(50) NOT NULL,
    Phone           INT NOT NULL,

    PRIMARY KEY (UserId)
);

CREATE TABLE mealchoice
(
    MealchoiceId    INT AUTO_INCREMENT NOT NULL,
    MealType        VARCHAR(50),
    MealChoiceDate  DATE,
    UserId          INT NOT NULL, 
    MealId          INT NOT NULL,    
      
    PRIMARY KEY (MealchoiceId),
    
    FOREIGN KEY (MealId) REFERENCES meal(MealId),
    FOREIGN KEY (UserId) REFERENCES user(UserId)
);
CREATE TABLE recipe_ingredients
(
    IngredientId              INT NOT NULL,
    RecipeId                  INT NOT NULL,
    IngredientQuantity        INT NOT NULL,

    FOREIGN KEY (IngredientId) REFERENCES ingredients(IngredientId),
    FOREIGN KEY (RecipeId) REFERENCES recipe(RecipeId)
);

CREATE TABLE meal_recipe
(
    MealId          INT NOT NULL,
    RecipeId        INT NOT NULL,
    Quantity        INT NOT NULL,

    FOREIGN KEY (RecipeId) REFERENCES recipe(RecipeId),
    FOREIGN KEY (MealId) REFERENCES meal(MealId)
);
