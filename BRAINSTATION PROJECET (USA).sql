select
distinct state
from education.usa_educational_finance;

-- lIST UNIQUE STATE
SELECT 
DISTINCT STATE
FROM EDUCATION.USA_EDUCATIONAL_FINANCE;

-- HOW MUCH REVENUE WERE INVESTED HOW AND HOW MUCH WERE SPEND IN PUBLIC EDUCATION DURING EACH PRESIDENT TENURE

SELECT  

PRESIDENT,
SUM(TOTAL_REVENUE) AS SUM_TOTAL_REVENUE,
SUM(TOTAL_EXPENDITURE) AS SUM_TOTAL_EXPENDITURE
FROM
EDUCATION.USA_EDUCATIONAL_FINANCE
GROUP BY PRESIDENT;

-- WHAT IS SUM OF REVENUE PER CAPITAL DURING THERE TENURE

SELECT
PRESiDENT,
SUM(REVENUE_PER_CAPITAL_ENROLLMENT) AS SUM_REVENUE_PER_CAPITAL
FROM
 EDUCATION.USA_EDUCATIOANL_FINANCE
GROUP BY PRESDIENT;

-- List unique states

SELECT 
    president,
    SUM(total_revenue) AS SUM_TOTAL_REVENUE,
    SUM(TOTAL_EXPENDITURE) AS SUM_TOTAL_EXPENDITURE
FROM
    education.usa_educatioal_fiance
GROUP BY PRESIDENT;


-- How much investment were made in public education during each president tenure
SELECT
    president, SUM(total_revenue) AS SUM_TOTAL_REVENUE
    FROM
    education.usa_educatioal_fiance
    group by president;


-- what is sum of revenue per captial


SELECT
    President,
    sum(revenue_per_capita_enrolment) AS SUM_revenue_per_captia
    FROM
    education.usa_educational_finance
    group by president;
    
    -- top 5 states with high sum of final amount
    SELECT
    state, sum(final_amount) AS SUM_of_final_amount
    FROM 
    education.usa_educatioal_fiance
    Group by state;
    
    -- top 5 states with low sum of final amount
    
    SELECT
       state,
       sum(final_amount) AS SUM_of_final_amount
    FROM 
         education.usa_educational_finance
    Group by state
    ORDER BY SUM_OF_FINAL_AMOUNT ASC
    LIMIT 5;

-- WHAT ARE THE TOP 5 WITH HIGH TOTAL REVENUE AND HIGH TOTAL EXPENDITURE
SELECT
     STATE,
     sum(TOTAL_REVENUE) AS SUM_OF_TOTAL_REVENUE,
     SUM(TOTAL_EXPENDITURE) AS SUM_TOTAL_EXPENDITURE
FROM 
     Education.usa_educational_finance
     GROUP BY STATE
     ORDER BY sum(TOTAL_REVENUE) DESC
     LIMIT 5;
