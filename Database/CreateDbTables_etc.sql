CREATE SCHEMA MealPlannerDb;

USE MealPlannerDb;

CREATE TABLE user
(
    CustomerId      INT AUTO_INCREMENT NOT NULL,
    CustomerName    VARCHAR(25) NOT NULL,
    Email           VARCHAR(50) NOT NULL,
    Phone           INT NOT NULL,

    PRIMARY KEY (CustomerId)
);

INSERT INTO user
    (CustomerName,Email,Phone)
    VALUES
    ("Gill","test@gmail.com",01534111111);

INSERT INTO user
    (CustomerName,Email,Phone)
    VALUES
    ("Will","test2@gmail.com",01534111112);

CREATE TABLE ingredients
(
    IngredientsId      INT AUTO_INCREMENT NOT NULL,
    Ingredient         VARCHAR(100),

    PRIMARY KEY (IngredientsId)
);

INSERT INTO ingredients
    (Ingredient)
    VALUES
    ("Salt");

INSERT INTO ingredients
    (Ingredient)
    VALUES
    ("Pepper");

INSERT INTO ingredients
    (Ingredient)
    VALUES
    ("Potato");

INSERT INTO ingredients
    (Ingredient)
    VALUES
    ("Chicken");

INSERT INTO ingredients
    (Ingredient)
    VALUES
    ("Tumeric");

CREATE TABLE recipe
(
    RecipeId        INT AUTO_INCREMENT NOT NULL,
    Recipe_Name     VARCHAR(100),
    IngredientsId   INT,
                    
    PRIMARY KEY (RecipeId)
);

INSERT INTO recipe
    (Recipe_Name,IngredientsId)
    VALUES
    ("Rosti",1);

INSERT INTO recipe
    (Recipe_Name,IngredientsId)
    VALUES
    ("Roast Chicken",1);

ALTER TABLE recipe
ADD	Ingredients		VARCHAR(100);
ALTER TABLE recipe
ADD IngredientId_2  INT;
ALTER TABLE recipe
ADD Ingredients_2   VARCHAR(100);
ALTER TABLE recipe
ADD IngredientId_3  INT;
ALTER TABLE recipe
ADD Ingredients_3   VARCHAR(100);
ALTER TABLE recipe
ADD	IngredientId_4  INT;
ALTER TABLE recipe
ADD	Ingredients_4   VARCHAR(100);
ALTER TABLE recipe
ADD	IngredientId_5  INT;
ALTER TABLE recipe
ADD	Ingredients_5   VARCHAR(100);

ALTER TABLE recipe    
ADD FOREIGN KEY (IngredientsId) REFERENCES ingredients(IngredientsId);
ALTER TABLE recipe
ADD FOREIGN KEY (IngredientId_2) REFERENCES ingredients(IngredientsId);
ALTER TABLE recipe
ADD FOREIGN KEY (IngredientId_3) REFERENCES ingredients(IngredientsId);
ALTER TABLE recipe
ADD FOREIGN KEY (IngredientId_4) REFERENCES ingredients(IngredientsId);
ALTER TABLE recipe
ADD FOREIGN KEY (IngredientId_5) REFERENCES ingredients(IngredientsId);

UPDATE recipe 
SET IngredientId_2= 2, IngredientId_3 =3
WHERE RecipeId = 1;

UPDATE recipe 
SET IngredientId_2= 2, IngredientId_4 =4, IngredientId_5 =5
WHERE RecipeId = 2;

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

