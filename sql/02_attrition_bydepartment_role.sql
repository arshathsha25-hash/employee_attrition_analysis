-- By department
SELECT department,
       COUNT(*)                                          AS employees,
       SUM(attrition_flag)                               AS left_count,
       ROUND(100.0 * SUM(attrition_flag) / COUNT(*), 2)  AS attrition_rate_pct
FROM employees
GROUP BY department
ORDER BY attrition_rate_pct DESC;

-- By job role
SELECT jobrole,
       COUNT(*)                                          AS employees,
       SUM(attrition_flag)                               AS left_count,
       ROUND(100.0 * SUM(attrition_flag) / COUNT(*), 2)  AS attrition_rate_pct
FROM employees
GROUP BY jobrole
ORDER BY attrition_rate_pct DESC;