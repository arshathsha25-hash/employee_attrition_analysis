-- By age group
SELECT age_group,
       COUNT(*)                                          AS employees,
       SUM(attrition_flag)                               AS left_count,
       ROUND(100.0 * SUM(attrition_flag) / COUNT(*), 2)  AS attrition_rate_pct
FROM employees
GROUP BY age_group
ORDER BY age_group;

-- By tenure group
SELECT tenure_group,
       COUNT(*)                                          AS employees,
       SUM(attrition_flag)                               AS left_count,
       ROUND(100.0 * SUM(attrition_flag) / COUNT(*), 2)  AS attrition_rate_pct
FROM employees
GROUP BY tenure_group
ORDER BY MIN(yearsatcompany);