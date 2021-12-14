USE MealPlannerDb;

CREATE TABLE ingredients
(
    IngredientId     INT AUTO_INCREMENT NOT NULL,
    IngredientName   VARCHAR(100),

    PRIMARY KEY (IngredientId)
);

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