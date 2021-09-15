-- Drop the table if exist, if executed without IF EXISTS will throw error when table is unavailable
\! echo "********** Dropping tables 'settings' & 'accounts' **********";
DROP TABLE IF EXISTS settings CASCADE;
DROP TABLE IF EXISTS accounts CASCADE;

\! echo "********** Creating table 'settings' **********";
CREATE TABLE IF NOT EXISTS settings (
  id SERIAL PRIMARY KEY,
  customer_id VARCHAR(10) UNIQUE NOT NULL,
  name VARCHAR(25) NOT NULL
);

\! echo "********** Creating table 'accounts' **********";
CREATE TABLE IF NOT EXISTS accounts (
  id SERIAL PRIMARY KEY,
  customer_id VARCHAR(10),
  group_id VARCHAR(25) NOT NULL,
  name VARCHAR(50) NOT NULL,
  amount NUMERIC,
  description VARCHAR(100),
  deleted BOOLEAN,
  hide BOOLEAN,
  include_in_totals BOOLEAN,
  version SMALLINT,
  create_time TIMESTAMP NOT NULL,
  update_time TIMESTAMP NOT NULL,
  FOREIGN KEY (customer_id)
  REFERENCES settings (customer_id)
);
