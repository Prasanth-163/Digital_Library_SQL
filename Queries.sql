-- 1. Overdue Books (More than 14 days and not returned)

SELECT s.name, b.title, ib.issue_date
FROM IssuedBooks ib
JOIN Students s ON ib.student_id = s.student_id
JOIN Books b ON ib.book_id = b.book_id
WHERE ib.return_date IS NULL
AND DATEDIFF(CURDATE(), ib.issue_date) > 14;


-- 2. Popular Categories

SELECT b.category, COUNT(*) AS total_borrows
FROM IssuedBooks ib
JOIN Books b ON ib.book_id = b.book_id
GROUP BY b.category
ORDER BY total_borrows DESC;


-- 3. Data Cleanup (Inactive Students - No borrow in 3 years)

DELETE FROM Students
WHERE student_id NOT IN (
    SELECT DISTINCT student_id FROM IssuedBooks
    WHERE issue_date >= DATE_SUB(CURDATE(), INTERVAL 3 YEAR)
);