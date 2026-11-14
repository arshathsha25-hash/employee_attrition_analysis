-- Overtime
SELECT overtime,
       COUNT(*)                                          AS employees,
       ROUND(100.0 * SUM(attrition_flag) / COUNT(*), 2)  AS attrition_rate_pct
FROM employees
GROUP BY overtime;

-- Business travel
SELECT businesstravel,
       COUNT(*)                                          AS employees,
       ROUND(100.0 * SUM(attrition_flag) / COUNT(*), 2)  AS attrition_rate_pct
FROM employees
GROUP BY businesstravel
ORDER BY attrition_rate_pct DESC;

-- Income band
SELECT CASE
           WHEN monthlyincome < 3000 THEN '1. Under 3000'
           WHEN monthlyincome < 6000 THEN '2. 3000-5999'
           WHEN monthlyincome < 10000 THEN '3. 6000-9999'
           ELSE '4. 10000+'
       END AS income_band,
       COUNT(*)                                          AS employees,
       ROUND(100.0 * SUM(attrition_flag) / COUNT(*), 2)  AS attrition_rate_pct
FROM employees
GROUP BY income_band
ORDER BY income_band;

-- Job satisfaction (1 = low, 4 = high)
SELECT jobsatisfaction,
       COUNT(*)                                          AS employees,
       ROUND(100.0 * SUM(attrition_flag) / COUNT(*), 2)  AS attrition_rate_pct
FROM employees
GROUP BY jobsatisfaction
ORDER BY jobsatisfaction;