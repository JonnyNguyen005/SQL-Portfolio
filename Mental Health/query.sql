-- Number of records in the data
SELECT COUNT(*) AS total_records
FROM students;

-- Inspect data and limit output to 5 records
SELECT *
FROM students
LIMIT 5;

-- Count number of international and domestic students
SELECT inter_dom, COUNT(inter_dom) AS count_inter_dom
FROM students
GROUP BY inter_dom;

-- All records where inter_dom is neither 'Dom' nor 'Inter'
SELECT *
FROM students
WHERE inter_dom NOT LIKE 'D%' AND inter_dom NOT LIKE 'I%';


-- Region international students are from
SELECT "Region", count(inter_dom) as count_inter_dom
FROM students
WHERE inter_dom= 'Inter'
GROUP BY "Region";


-- Basic summary statistics of the diagnostic tests for all students
SELECT 
       MIN("ToDep") AS min_phq, 
       MAX("ToDep") AS max_phq, 
       ROUND(AVG("ToDep"), 2) AS avg_phq, 
       MIN("ToSC") AS min_scs, 
       MAX("ToSC") AS max_scs, 
       ROUND(AVG("ToSC"), 2) AS avg_scs, 
       MIN("ToAS") AS min_as, 
       MAX("ToAS") AS max_as, 
       ROUND(AVG("ToAS"), 2) AS avg_as
FROM students;


-- Statistics of each student group 
SELECT inter_dom,
       MIN("ToDep") AS min_phq, 
       MAX("ToDep") AS max_phq, 
       ROUND(AVG("ToDep"), 2) AS avg_phq, 
       MIN("ToSC") AS min_scs, 
       MAX("ToSC") AS max_scs, 
       ROUND(AVG("ToSC"), 2) AS avg_scs, 
       MIN("ToAS") AS min_as, 
       MAX("ToAS") AS max_as, 
       ROUND(AVG("ToAS"), 2) AS avg_as
FROM students
WHERE inter_dom IN ('Inter', 'Dom')
GROUP BY inter_dom;

-- Average scores for each age group of international students
SELECT "Age", 
       ROUND(AVG("ToDep"), 2) AS avg_phq, 
       ROUND(AVG("ToSC"), 2) AS avg_scs, 
       ROUND(AVG("ToAS"), 2) AS avg_as
FROM students
WHERE inter_dom = 'Inter'
GROUP BY "Age"
ORDER BY "Age";

-- Average scores for each gender of international students
SELECT "Gender", 
       ROUND(AVG("ToDep"), 2) AS avg_phq, 
       ROUND(AVG("ToSC"), 2) AS avg_scs, 
       ROUND(AVG("ToAS"), 2) AS avg_as
FROM students
WHERE inter_dom = 'Inter'
GROUP BY "Gender"
ORDER BY "Gender";

-- Final query
SELECT stay, 
       COUNT(*) AS count_int,
       ROUND(AVG(todep), 2) AS average_phq, 
       ROUND(AVG(tosc), 2) AS average_scs, 
       ROUND(AVG(toas), 2) AS average_as
FROM students
WHERE inter_dom = 'Inter'
GROUP BY stay
ORDER BY stay DESC;
