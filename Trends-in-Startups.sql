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

-- /Calculate the total number of companies in the table.
SELECT COUNT(*) AS total_companies FROM startups;

-- /Calculate the total value of all companies in this table.
SELECT SUM(valuation) AS total_valuation FROM startups;

-- /Calculate the highest amount raised by a startup in this table.
SELECT MAX(raised) AS highest_amount_raised FROM startups;

-- /Calculate the maximum amount of money raised, during ‘Seed’ stage.
SELECT MAX(raised) AS highest_amount_raised_seed FROM startups WHERE stage = 'Seed';

-- /In what year was the oldest company on the list founded?
SELECT MIN(founded) AS oldest_company_founded_year FROM startups;
