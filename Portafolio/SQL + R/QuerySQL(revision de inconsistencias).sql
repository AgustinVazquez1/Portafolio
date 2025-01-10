Create database Walmart

use Walmart

select * from Walmart

SELECT * FROM Walmart WHERE Weekly_Sales < 0;

SELECT * FROM Walmart WHERE Weekly_Sales < 0;

SELECT * FROM Walmart WHERE Temperature < -50 OR Temperature > 150;

SELECT * FROM Walmart WHERE Temperature < -50 OR Temperature > 150;

SELECT Store, Date, COUNT(*) 
FROM Walmart 
GROUP BY Store, Date 
HAVING COUNT(*) > 1;

