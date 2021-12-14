USE MealPlannerDb;

CREATE TABLE meal
(
    MealId          INT AUTO_INCREMENT NOT NULL,
    Meal_Name       VARCHAR(250),   

    PRIMARY KEY (MealId)
);

INSERT INTO meal
    (Meal_Name)
    VALUES
    ("Chicken and Rosti");
