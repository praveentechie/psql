\! echo "********** LEFT JOIN **********";
\! echo "********** The left join (or left outer join) returns a complete set of rows from the left table with the matching rows if available from the right table.";
\! echo "If there is no match, the right side will have null values. **********";

SELECT
  settings.name as "Customer Name",
  settings.customer_id as "Customer Id",
  accounts.name as "Account Name",
  amount as "Balance"
FROM
  settings
LEFT JOIN accounts ON accounts.customer_id = settings.customer_id;
