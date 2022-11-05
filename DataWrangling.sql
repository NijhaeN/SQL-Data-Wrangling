# Query 1 Creating table for authors

Create Table Authors(
AuthorID INTEGER PRIMARY KEY AUTO_INCREMENT,
FullName VARCHAR(50) NOT NULL,
BirthCountry VARCHAR(50) NOT NULL
);

INSERT INTO Authors( FullName, BirthCountry)
VALUE ("Jane Austen", "England"), ("Charles Dickens", "England"),("Mark Twain", "United States");

SELECT * FROM Authors;

# Query 2, Creating table for books 

CREATE TABLE Books(
BookId INTEGER PRIMARY KEY AUTO_INCREMENT,
Name VARCHAR(50) NOT NULL,
AuthorID INTEGER NOT NULL, 
FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID)
);

INSERT INTO Books (Name, AuthorID)
VALUE ("Pride and Prejudice", 1),("Sense and Sensibility", 1),("The Pickwick Papers", 2); 

SELECT * FROM Books;

# Joining tables together to show Author ID refrence and ordering in alphabetical order

SELECT Fullname, Name AS BookName FROM Authors
JOIN Books USING(AuthorID)
ORDER BY FullName;

