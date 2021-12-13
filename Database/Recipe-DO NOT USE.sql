USE MealPlannerDb;

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