\! echo "********** RIGHT JOIN **********";
\! echo "********** The right join or right outer join is a reversed version of the left join.";
\! echo "It produces a result set that contains all rows from the right table with matching rows from the left table. **********";

SELECT
  settings.name as "Customer Name",
  settings.customer_id as "Customer Id",
  accounts.name as "Account Name",
  amount as "Balance"
FROM
  settings
RIGHT JOIN accounts ON accounts.customer_id = settings.customer_id;
