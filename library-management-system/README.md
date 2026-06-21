# Library Management System

A simple relational database project built using **PostgreSQL** to manage library members, books, and borrowing records.  
This project demonstrates core SQL operations including table creation, inserting data, updating records, deleting records, and running queries.

---

## 1. Project Overview

The Library Management System consists of three main entities:

- **Member** → represents people registered in the library  
- **Book** → represents books available in the library  
- **Borrowing** → represents the borrowing transactions between members and books  

The system demonstrates relational database concepts such as **Primary Keys**, **Foreign Keys**, and **One‑to‑Many relationships**.

---

## 2. Database Schema (ERD)

+---------------------+
|      Member         |
+---------------------+
| member_id (PK)      |
| full_name           |
| email (Unique)      |
| membership_type     |
| phone               |
+---------------------+
           |
           | 1
           | 
           | M
+---------------------+
|     Borrowing       |
+---------------------+
| borrowing_id (PK)   |
| member_id (FK)      |
| book_id (FK)        |
| borrow_date         |
| return_date         |
+---------------------+
           |
           | M
           |
           | 1
+---------------------+
|       Book          |
+---------------------+
| book_id (PK)        |
| title               |
| author              |
| genre               |
| published_year      |
+---------------------+


---

## 3. Tables Description

### Member Table
| Column            | Type      | Description                     |
|------------------|-----------|---------------------------------|
| member_id (PK)   | integer   | Unique ID for each member       |
| full_name        | text      | Member’s full name              |
| email (Unique)   | text      | Unique email address            |
| membership_type  | text      | Standard / Premium              |
| phone            | text      | Contact number                  |

### Book Table
| Column            | Type      | Description                     |
|------------------|-----------|---------------------------------|
| book_id (PK)     | integer   | Unique ID for each book         |
| title            | text      | Book title                      |
| author           | text      | Author name                     |
| genre            | text      | Book category                   |
| published_year   | integer   | Year of publication             |

### Borrowing Table
| Column            | Type      | Description                     |
|------------------|-----------|---------------------------------|
| borrowing_id (PK)| integer   | Unique ID for each transaction  |
| member_id (FK)   | integer   | References Member table         |
| book_id (FK)     | integer   | References Book table           |
| borrow_date      | date      | Date when book was borrowed     |
| return_date      | date      | Date when book was returned     |

---

## 4. SQL Queries (QAP2 Requirements)

Query 1 — Insert a new member

INSERT INTO member (full_name, email, membership_type, phone)
VALUES ('John Doe', 'john@example.com', 'Standard', '123-4567');

Query 2 — Insert a new book
INSERT INTO book (title, author, genre, published_year)
VALUES ('The Silent Forest', 'Mark Hill', 'Mystery', 2020);

Query 3 — Insert a borrowing record
INSERT INTO borrowing (member_id, book_id, borrow_date)
VALUES (1, 1, '2024-01-05');

Query 4 — Update a return date
UPDATE borrowing
SET return_date = '2024-01-20'
WHERE borrowing_id = 1;

Query 5 — Delete a borrowing record
DELETE FROM borrowing
WHERE borrowing_id = 16;

5. How to Run the Project
- Open pgAdmin 4
- Create a database named: library_management_system
- Run the table creation script
- Run the insert scripts
- Run the update and delete queries
- Verify results using: SELECT * FROM borrowing;

6. Notes
All queries were tested successfully in pgAdmin 4
Foreign keys ensure data integrity
The project follows clean SQL structure and proper naming conventions
