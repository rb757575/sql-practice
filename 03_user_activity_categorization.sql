DROP TABLE IF EXISTS user_activity;

CREATE TABLE user_activity (
    log_id INT,
    user_email VARCHAR(100),
    action_code VARCHAR(30),
    activity_date DATE
);

INSERT INTO user_activity VALUES 
(1, '  ali.reza@gmail.com  ', 'ACT-101-LOGIN', '2026-09-01'),
(2, 'SARA.M@YAHOO.COM', 'ACT-202-PURCHASE', '2026-09-02'),
(3, '  reza_k@gmail.com', 'ACT-102-LOGIN', '2026-09-03'),
(4, 'MOHAMMAD@outlook.com  ', 'ACT-303-LOGOUT', '2026-09-05'),
(5, 'sara.m@yahoo.com', 'ACT-205-PURCHASE', '2026-09-06');



SELECT
    LOWER(TRIM(user_email)) AS CLEAN_EMAIL,
    CASE
        WHEN action_code  LIKE '%LOGIN%' THEN 'LOGIN_EVENT'
        WHEN action_code  LIKE '%PURCHASE%' THEN 'PURCHASE_EVENT'
        ELSE 'OTHER_EVENT' 
        END AS ACTION_TYPE,
    COUNT(*) AS TOTAL_ACTIONS
FROM user_activity
GROUP BY LOWER(TRIM(user_email));
