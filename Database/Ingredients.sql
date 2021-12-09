USE MealPlannerDb;

CREATE TABLE ingredients
(
    IngredientsId      INT NOT NULL,
    Ingredient         VARCHAR(100),

    PRIMARY KEY (IngredientsId)
);

INSERT INTO ingredients
    (Ingredient)
    VALUES
    (Salt);

INSERT INTO ingredients
    (Ingredient)
    VALUES
    (Pepper);

INSERT INTO ingredients
    (Ingredient)
    VALUES
    (Potato);