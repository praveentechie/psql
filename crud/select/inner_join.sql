\! echo "********** INNER JOIN **********";
\! echo "********** The inner join returns a result set that contains row in the left table that match with the row in the right table **********";

SELECT
  settings.name as "Customer Name",
  settings.customer_id as "Customer Id",
  accounts.name as "Account Name",
  amount as "Balance"
FROM
  settings
INNER JOIN accounts ON accounts.customer_id = settings.customer_id;
