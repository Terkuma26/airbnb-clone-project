-- ==============================
-- SAMPLE DATA FOR AIRBNB CLONE
-- ==============================

-- USERS
INSERT INTO users (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
(uuid_generate_v4(), 'Alice', 'Johnson', 'alice@example.com', 'hashed_password_1', '1234567890', 'guest'),
(uuid_generate_v4(), 'Bob', 'Smith', 'bob@example.com', 'hashed_password_2', '0987654321', 'host'),
(uuid_generate_v4(), 'Charlie', 'Brown', 'charlie@example.com', 'hashed_password_3', '2223334444', 'host'),
(uuid_generate_v4(), 'Diana', 'Williams', 'diana@example.com', 'hashed_password_4', '1112223333', 'guest'),
(uuid_generate_v4(), 'Ethan', 'Miller', 'ethan@example.com', 'hashed_password_5', '3334445555', 'guest'),
(uuid_generate_v4(), 'Fiona', 'Taylor', 'fiona@example.com', 'hashed_password_6', '5556667777', 'host'),
(uuid_generate_v4(), 'Admin', 'User', 'admin@example.com', 'hashed_password_7', NULL, 'admin');

-- PROPERTIES
INSERT INTO properties (property_id, host_id, name, description, location, pricepernight)
VALUES
(uuid_generate_v4(), (SELECT user_id FROM users WHERE email = 'bob@example.com'),
 'Cozy Apartment NYC', 'A modern apartment in Manhattan, close to Times Square.', 'New York', 150.00),
(uuid_generate_v4(), (SELECT user_id FROM users WHERE email = 'charlie@example.com'),
 'Beach House LA', 'A beautiful beach house with ocean view.', 'Los Angeles', 280.00),
(uuid_generate_v4(), (SELECT user_id FROM users WHERE email = 'fiona@example.com'),
 'Mountain Cabin', 'Quiet and peaceful cabin in the Rocky Mountains.', 'Denver', 180.00);

-- BOOKINGS
INSERT INTO bookings (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
-- Alice books Bob’s apartment
(uuid_generate_v4(), (SELECT property_id FROM properties WHERE name = 'Cozy Apartment NYC'),
 (SELECT user_id FROM users WHERE email = 'alice@example.com'),
 '2025-10-01', '2025-10-05', 600.00, 'confirmed'),

-- Diana books Charlie’s beach house
(uuid_generate_v4(), (SELECT property_id FROM properties WHERE name = 'Beach House LA'),
 (SELECT user_id FROM users WHERE email = 'diana@example.com'),
 '2025-11-10', '2025-11-15', 1400.00, 'pending'),

-- Ethan books Fiona’s mountain cabin
(uuid_generate_v4(), (SELECT property_id FROM properties WHERE name = 'Mountain Cabin'),
 (SELECT user_id FROM users WHERE email = 'ethan@example.com'),
 '2025-12-20', '2025-12-25', 900.00, 'confirmed'),

-- Alice books Beach House again for next summer
(uuid_generate_v4(), (SELECT property_id FROM properties WHERE name = 'Beach House LA'),
 (SELECT user_id FROM users WHERE email = 'alice@example.com'),
 '2026-06-01', '2026-06-07', 1680.00, 'canceled');

-- PAYMENTS
INSERT INTO payments (payment_id, booking_id, amount, payment_method)
VALUES
(uuid_generate_v4(), 
 (SELECT booking_id FROM bookings WHERE status = 'confirmed' AND total_price = 600.00),
 600.00, 'credit_card'),

(uuid_generate_v4(), 
 (SELECT booking_id FROM bookings WHERE status = 'confirmed' AND total_price = 900.00),
 900.00, 'paypal');

-- REVIEWS
INSERT INTO reviews (review_id, property_id, user_id, rating, comment)
VALUES
(uuid_generate_v4(),
 (SELECT property_id FROM properties WHERE name = 'Cozy Apartment NYC'),
 (SELECT user_id FROM users WHERE email = 'alice@example.com'),
 5, 'Great location and very clean!'),

(uuid_generate_v4(),
 (SELECT property_id FROM properties WHERE name = 'Mountain Cabin'),
 (SELECT user_id FROM users WHERE email = 'ethan@example.com'),
 4, 'Cozy cabin, perfect for hiking trips. WiFi could be better.');

-- MESSAGES
INSERT INTO messages (message_id, sender_id, recipient_id, message_body)
VALUES
(uuid_generate_v4(),
 (SELECT user_id FROM users WHERE email = 'alice@example.com'),
 (SELECT user_id FROM users WHERE email = 'bob@example.com'),
 'Hi Bob, is the NYC apartment available in December?'),

(uuid_generate_v4(),
 (SELECT user_id FROM users WHERE email = 'bob@example.com'),
 (SELECT user_id FROM users WHERE email = 'alice@example.com'),
 'Hello Alice, December is fully booked, but January is open.'),

(uuid_generate_v4(),
 (SELECT user_id FROM users WHERE email = 'diana@example.com'),
 (SELECT user_id FROM users WHERE email = 'charlie@example.com'),
 'Hi Charlie, does the beach house have parking space?');

