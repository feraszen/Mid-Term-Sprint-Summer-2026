SELECT 
    m.full_name,
    m.membership_type,
    bk.title,
    bk.author,
    b.borrow_date,
    b.return_date
FROM borrowing b
JOIN member m ON b.member_id = m.member_id
JOIN book bk ON b.book_id = bk.book_id
WHERE m.membership_type = 'Premium';
