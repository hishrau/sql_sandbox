UPDATE books_in_use
SET fine_amount = (DATEDIFF(return_date, issue_date) - return_period) * 8.45
WHERE NOT ISNULL(return_date) AND DATEDIFF(return_date, issue_date) > return_period;

UPDATE books_in_use
SET fine_amount = IF(DATEDIFF(return_date, issue_date) > return_period,  DATEDIFF(return_date, issue_date) - return_period, 0) * 8.45
WHERE return_date IS NOT NULL;

SELECT 
    TRUE OR NULL AS examp1,
    FALSE AND NULL AS examp2
FROM DUAL;
SELECT TRUE;