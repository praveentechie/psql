\! echo "********** Deleting row from table 'accounts' **********";
--------------
DELETE FROM accounts
WHERE
  group_id = '1012';
--------------

\! echo "********** Deleting row from table 'settings' with a reference to foreign key **********";
\! echo "---------- Deletion will fail as foreign key column has a reference ----------";
DELETE FROM settings
WHERE
  customer_id = '101';