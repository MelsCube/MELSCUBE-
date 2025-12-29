CREATE TABLE IF NOT EXISTS users (
  id SERIAL PRIMARY KEY,
  telegram_id BIGINT UNIQUE,
  name VARCHAR(100),
  balance DECIMAL(10,2) DEFAULT 0,
  total_donated DECIMAL(10,2) DEFAULT 0,
  created_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS businesses (
  id SERIAL PRIMARY KEY,
  name VARCHAR(200),
  donation_percent DECIMAL(5,2) DEFAULT 2.00,
  qr_code VARCHAR(100) UNIQUE
);

CREATE TABLE IF NOT EXISTS transactions (
  id SERIAL PRIMARY KEY,
  user_id INTEGER REFERENCES users(id),
  business_id INTEGER REFERENCES businesses(id),
  amount DECIMAL(10,2),
  reward DECIMAL(10,2),
  donation DECIMAL(10,2),
  created_at TIMESTAMP DEFAULT NOW()
);
