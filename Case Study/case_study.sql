--
-- 1. Room availability check 
--
SELECT * FROM Rooms WHERE 
room_type IN ('Suite', 'Superior') AND
status = 'Available';

--
-- 2. Guest registration 
-- 
INSERT INTO Guests (name, gender, phone, email, address) VALUE
('John Doe', 'Male', '+1-123-456-7890', 'john.doe@example.com', '9555 Main Street, Manhattan, New York');

--
-- 3. Room booking
--
INSERT INTO `bookings` (`guest_id`, `booking_date`, `booking_code`, `status`) VALUE
(16, '2024-12-07', 'BKG20241207005', 'Upcoming');
INSERT INTO `details` (`booking_id`, `room_id`, `check_in`, `check_out`, `price_total`) VALUES
(16, 20, '2024-12-08', '2024-12-10', 500),
(16, 21, '2024-12-08', '2024-12-10', 900);

--
-- 4. Payment detail
--
INSERT INTO `payments` (`booking_id`, `amount_paid`, `method`, `status`) VALUE
(16, 1400, 'Bank Transfer', 'Pending');

--
-- 5. Update Room Status
--
UPDATE rooms SET status = 'Occupied' WHERE id IN (20, 21); 

--
-- 6. Update Payment
--
UPDATE payments SET status = 'Paid' WHERE id = 16; 

--
-- 7. Finalizing Booking & Room Status
--
UPDATE bookings, rooms
SET
  bookings.status = 'Completed',
  rooms.status = 'Available'
WHERE
  bookings.id = 16 AND
  rooms.id IN (20, 21);

--
-- 8. Guest Review
--
INSERT INTO `reviews` (`booking_id`, `rating`, `comment`) VALUE
(16, '5', 'Amazing hotel, I love it.');
