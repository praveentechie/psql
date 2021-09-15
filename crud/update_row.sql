\! echo "********** Updating table 'accounts' **********";
UPDATE accounts
  SET description = 'ICICI debit card'
WHERE
  group_id = '1011';