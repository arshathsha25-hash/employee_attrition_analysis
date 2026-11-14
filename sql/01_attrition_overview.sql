-- Overall attrition
SELECT
    COUNT(*)                                          AS total_employees,
    SUM(attrition_flag)                               AS employees_left,
    ROUND(100.0 * SUM(attrition_flag) / COUNT(*), 2)  AS attrition_rate_pct
FROM employees;