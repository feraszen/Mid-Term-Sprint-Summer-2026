SELECT DISTINCT
    m.full_name,
    m.email,
    bk.author
FROM borrowing b
JOIN member m ON b.member_id = m.member_id
JOIN book bk ON b.book_id = bk.book_id
WHERE bk.author = 'George Orwell';
