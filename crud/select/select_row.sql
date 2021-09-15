\! echo "********** Total rows in 'accounts' **********";
SELECT COUNT(*) FROM accounts;

\! echo "********** Get rows from 'accounts' (amount > 300) **********";
SELECT * FROM accounts
WHERE 
  amount > 300;

\! echo "********** Get DISTINCT values for `name` from 'accounts' **********";
SELECT DISTINCT(name) FROM accounts;

\! echo "********** Order rows by amount in ASC 'accounts' **********";
SELECT * FROM accounts ORDER BY amount;

\! echo "********** Order rows by amount in DESC 'accounts' **********";
SELECT * FROM accounts ORDER BY amount DESC;

\! echo "********** Get max amount row from 'accounts' **********";
SELECT * FROM accounts
WHERE 
  amount = (SELECT MAX(amount) from accounts);

\! echo "********** Get 2nd max amount row from 'accounts' **********";
SELECT * FROM accounts
WHERE 
  amount = (SELECT amount from accounts ORDER BY amount DESC OFFSET 1 LIMIT 1);

\! echo "********** Set LIMIT 2 & OFFSET 1 for 'accounts' **********";
SELECT * FROM accounts ORDER BY amount OFFSET 1 LIMIT 2;

\! echo "********** Set LIMIT vs FETCH for 'accounts' **********";
\! echo "********** FETCH FIRST 2 ROW  **********";
SELECT * FROM accounts ORDER BY amount FETCH FIRST 2 ROW ONLY;

\! echo "********** FETCH LAST 2 ROW  **********";
SELECT * FROM accounts ORDER BY amount FETCH NEXT 2 ROW ONLY;
