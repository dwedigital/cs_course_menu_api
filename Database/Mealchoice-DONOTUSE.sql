USE MealPlannerDb;

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
