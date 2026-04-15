# Digital Library Audit (SQL)

Overview

This project is a simple database system developed using SQL to manage library book records. It helps track issued books, identify overdue returns, and analyze popular book categories.

Features

* Stores data of books, students, and issued records
* Identifies overdue books (not returned within 14 days)
* Finds most popular book categories
* Removes inactive student records (no activity for 3 years)

Technologies Used

* MySQL
* SQL concepts: table creation, joins, conditions, aggregation

Database Tables

* Books (book_id, title, category)
* Students (student_id, name)
* IssuedBooks (book_id, student_id, issue_date, return_date)

How to Run

1. Open MySQL Workbench or VS Code
2. Open the file `digital_library.sql` and 'Queries.sql'
3. Run the scripts

Sample Output

* List of students with overdue books
* Category-wise book count
* Updated student records after cleanup



