USE MealPlannerDb;

CREATE TABLE user
(
    CustomerId      INT NOT NULL,
    CustomerName    VARCHAR(25) NOT NULL,
    Email           VARCHAR(50) NOT NULL,
    Phone           INT NOT NULL,

    PRIMARY KEY (CustomerId)
);

INSERT INTO user
    (CustomerName,Email,Phone)
    VALUES
    (Gill,test@gmail.com,01534111111);

INSERT INTO user
    (CustomerName,Email,Phone)
    VALUES
    (Will,test2@gmail.com,01534111112;
