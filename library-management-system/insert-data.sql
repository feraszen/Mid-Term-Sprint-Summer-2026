-- ============================================
-- Library Management System - Sample Data
-- Author: Feras
-- Phase 6: insert-data.sql
-- ============================================

-- ============================
-- Insert Members (5+)
-- ============================
INSERT INTO member (full_name, email, membership_type, phone) VALUES
('Ali Hassan', 'ali.hassan@example.com', 'Standard', '709-555-1010'),
('Sara Ahmed', 'sara.ahmed@example.com', 'Premium', '709-555-2020'),
('John Smith', 'john.smith@example.com', 'VIP', '709-555-3030'),
('Mary Johnson', 'mary.johnson@example.com', 'Standard', '709-555-4040'),
('Feras AlHarbi', 'feras.alharbi@example.com', 'Premium', '709-555-5050');

-- ============================
-- Insert Books (10+)
-- ============================
INSERT INTO book (title, author, genre, published_year) VALUES
('The Silent Patient', 'Alex Michaelides', 'Thriller', 2019),
('Atomic Habits', 'James Clear', 'Self-Help', 2018),
('1984', 'George Orwell', 'Dystopian', 1949),
('To Kill a Mockingbird', 'Harper Lee', 'Classic', 1960),
('The Alchemist', 'Paulo Coelho', 'Adventure', 1988),
('The Hobbit', 'J.R.R. Tolkien', 'Fantasy', 1937),
('Clean Code', 'Robert C. Martin', 'Programming', 2008),
('The Pragmatic Programmer', 'Andrew Hunt', 'Programming', 1999),
('Becoming', 'Michelle Obama', 'Biography', 2018),
('The Great Gatsby', 'F. Scott Fitzgerald', 'Classic', 1925);

-- ============================
-- Insert Borrowings (15+)
-- ============================
INSERT INTO borrowing (member_id, book_id, borrow_date, return_date) VALUES
(1, 1, '2024-01-05', '2024-01-20'),
(1, 3, '2024-02-10', NULL),
(2, 2, '2024-01-15', '2024-01-30'),
(2, 5, '2024-03-01', NULL),
(3, 4, '2024-02-01', '2024-02-18'),
(3, 6, '2024-03-10', NULL),
(3, 7, '2024-03-12', NULL),
(4, 8, '2024-01-25', '2024-02-05'),
(4, 9, '2024-02-20', NULL),
(5, 10, '2024-03-01', NULL),
(5, 1, '2024-03-05', NULL),
(2, 3, '2024-03-10', NULL),
(1, 7, '2024-03-12', NULL),
(4, 2, '2024-03-15', NULL),
(5, 6, '2024-03-18', NULL);
