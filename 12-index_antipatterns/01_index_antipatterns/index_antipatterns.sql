-- 1. Setup Table and Index
DROP TABLE IF EXISTS users;

CREATE TABLE users (
    user_id INT,
    email VARCHAR(100)
);

CREATE INDEX idx_users_email ON users(email);

-- Insert sample data
INSERT INTO users VALUES 
(1, 'Ali.Reza@Gmail.com'),
(2, 'Sara.M@Yahoo.com'),
(3, 'reza_k@gmail.com');

-- ----------------------------------------------------
-- ❌ 2. ANTI-PATTERN: Breaking the Index
-- ----------------------------------------------------
-- Problem: Using functions (LOWER, TRIM) on the indexed column 
-- forces the database to perform a Full Table Scan because 
-- it cannot use the b-tree index on raw transformed values.

EXPLAIN 
SELECT * 
FROM users 
WHERE LOWER(TRIM(email)) = 'ali.reza@gmail.com';


-- ----------------------------------------------------
-- ✅ 3. THE OPTIMIZED SOLUTION
-- ----------------------------------------------------
-- Solution: Clean the data before inserting, or keep the indexed 
-- column raw in the WHERE clause so the database can use Index Seek.

EXPLAIN 
SELECT * 
FROM users 
WHERE email = 'Ali.Reza@Gmail.com';