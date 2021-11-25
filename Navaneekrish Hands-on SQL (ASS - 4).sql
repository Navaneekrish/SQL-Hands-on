--ASSIGNMENT 4--

USE HANON;

SELECT * FROM INP;

--USING COUNT CLAUSE--

SELECT CITY,COUNT(CITY) AS 'CITY WISE COUNT OF EMP' FROM INP
GROUP BY CITY
ORDER BY COUNT(CITY) DESC;

SELECT * FROM INP
WHERE EMAIL NOT LIKE '%YAHOO%';

SELECT * FROM INP_SAL;

--DESI WISE TOTAL COST & NO OF MEM ARRANGED IN DESC ORDER OF THE TOTAL COST--

SELECT DESI,SUM(SALARY) AS 'TOTAL COST', COUNT(EID) AS 'NO OF MEM' 
FROM INP_SAL
GROUP BY DESI
ORDER BY 'TOTAL COST' DESC;

