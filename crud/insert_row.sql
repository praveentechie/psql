DELETE FROM settings;
DELETE FROM accounts;

\! echo "********** Creating rows for table 'settings' **********";
INSERT INTO settings ("customer_id", "name")
  VALUES
    ('100', 'AP'),
    ('101', 'Stores'),
    ('102', 'Enterprise');

\! echo "********** Creating rows for table 'accounts' **********";
INSERT INTO accounts (
  customer_id,
  group_id,
  name,
  amount,
  description,
  deleted,
  hide,
  include_in_totals,
  version,
  create_time,
  update_time
) VALUES
-- ### Field type: current_timestamp - get current timestamp
  ('100', '1001', 'Debit card', 300, NULL, false, false, true, 1, current_timestamp, current_timestamp),
  ('101', '1011', 'Debit card', 350, NULL, false, false, true, 1, current_timestamp, current_timestamp),
  ('100', '1002', 'Credit card', 500, NULL, false, false, true, 1, current_timestamp, current_timestamp),
  ('101', '1012', 'Cash', 200, NULL, false, false, true, 1, current_timestamp, current_timestamp);
