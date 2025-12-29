INSERT INTO businesses (name, donation_percent, qr_code)
VALUES ('Example Store', 2.00, 'TESTQR123')
ON CONFLICT DO NOTHING;

INSERT INTO users (telegram_id, name, balance, total_donated)
VALUES (123456789, 'TestUser', 0.00, 0.00)
ON CONFLICT DO NOTHING;
