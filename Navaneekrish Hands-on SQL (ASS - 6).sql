---ASSINGMENT 6---

USE HANON;

---CREATE A VIEW INP_SAL DETAILS TO GET EID NAME DOJ DEPT DESI SALARY AS BASIC, ALSO CALCULATE HRA(15% OF BASIC),PF(9% OF BASIC),NET(BASIC +HRA+PF),GROSS(NET-PF)---

CREATE VIEW INPSAL_DEL 
AS
SELECT INP.EID,NAME,DOJ,DEPT,DESI,SALARY AS 'BASIC',(SALARY * 0.15) AS 'HRA',(SALARY * 0.09) AS 'PF',(SALARY + (SALARY * 0.15)+(SALARY * 0.09)) AS NET,(SALARY + (SALARY * 0.15)+(SALARY * 0.09)-(SALARY * 0.09)) AS 'GROSS'
FROM INP
INNER JOIN INP_SAL
ON INP.EID=INP_SAL.EID;

SELECT * FROM INPSAL_DEL;

---CREATE A VIEW TO DISPLAY EID,NAME,DOJ,DESI,DEPT OF ALL THE MANAGERS JOINED IN 2019---

CREATE VIEW INP_MAN
AS
SELECT INP.EID,NAME,DOJ,DESI,DEPT FROM INP
INNER JOIN INP_SAL
ON INP.EID=INP_SAL.EID
WHERE DEPT LIKE'%MANAGER%' AND DOJ LIKE'%2019%';

SELECT * FROM INP_MAN;

---------------------INVENTORY-------------



