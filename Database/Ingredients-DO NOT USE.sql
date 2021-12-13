USE MealPlannerDb;

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