 /*
The startups table has ten columns:
1. name
2. location
3. category
4. employees
5. raised
6. valuation
7. founded
8. stage
9. ceo
10. info
*/

-- /1. Calculate the total number of companies in the table.
SELECT COUNT(*) AS total_companies FROM startups;

-- /2. Calculate the total value of all companies in this table.
SELECT SUM(valuation) AS total_valuation FROM startups;

-- /3. Calculate the highest amount raised by a startup in this table.
SELECT MAX(raised) AS highest_amount_raised FROM startups;

-- /4. Calculate the maximum amount of money raised, during ‘Seed’ stage.
SELECT MAX(raised) AS highest_amount_raised_seed FROM startups WHERE stage = 'Seed';

-- /5. In what year was the oldest company on the list founded?
SELECT MIN(founded) AS oldest_company_founded_year FROM startups;

-- /6. In what year was the oldest company on the list founded?
SELECT MIN(founded) AS oldest_company_founded_year FROM startups;

-- /7. Return the average valuation across all companies:
SELECT AVG(valuation) AS average_valuation FROM startups;

--/8. Return the average valuation, in each category.
SELECT category, AVG(valuation) AS average_valuation FROM startups GROUP BY category;

--/9. Return the average valuation, in each category. Round the averages to two decimal places
SELECT category, ROUND(AVG(valuation), 2) AS average_valuation FROM startups GROUP BY category;

--/10. Return the average valuation, in each category. Round the averages to two decimal places. Lastly, order the list from highest averages to lowest.
SELECT category, ROUND(AVG(valuation), 2) AS average_valuation FROM startups GROUP BY category ORDER BY average_valuation DESC;

--/11. Return the name of each category with the total number of companies that belong to it.
SELECT category, COUNT(*) AS total_companies FROM startups GROUP BY category;

--/12. Filter the result to only include categories that have more than three companies in them:
SELECT category, COUNT(*) AS total_companies FROM startups GROUP BY category HAVING COUNT(*) > 3;

--/13. Find the average size of a startup in each location
SELECT location, AVG(employees) AS average_size FROM startups GROUP BY location;

--/14. Find the average size of a startup in each location, with average sizes above 500?
SELECT location, AVG(employees) AS average_size FROM startups GROUP BY location HAVING AVG(employees) > 500;