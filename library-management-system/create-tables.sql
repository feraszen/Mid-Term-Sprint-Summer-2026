-- ============================================
-- Library Management System - Table Creation
-- Author: Feras
-- Phase 4: create-tables.sql
-- ============================================

-- Drop tables if they already exist (for testing)
DROP TABLE IF EXISTS borrowing;
DROP TABLE IF EXISTS member;
DROP TABLE IF EXISTS book;

-- ============================
-- Table: Member
-- ============================
CREATE TABLE member (
    member_id SERIAL PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    membership_type VARCHAR(20) NOT NULL CHECK (membership_type IN ('Standard', 'Premium', 'VIP')),
    phone VARCHAR(20)
);

-- ============================
-- Table: Book
-- ============================
CREATE TABLE book (
    book_id SERIAL PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    author VARCHAR(150) NOT NULL,
    genre VARCHAR(100),
    published_year INT CHECK (published_year >= 1500 AND published_year <= EXTRACT(YEAR FROM CURRENT_DATE))
);

-- ============================
-- Table: Borrowing
-- ============================
CREATE TABLE borrowing (
    borrowing_id SERIAL PRIMARY KEY,
    member_id INT NOT NULL REFERENCES member(member_id) ON DELETE CASCADE,
    book_id INT NOT NULL REFERENCES book(book_id) ON DELETE CASCADE,
    borrow_date DATE NOT NULL,
    return_date DATE
);
