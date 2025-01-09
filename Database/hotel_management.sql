--
-- Database 'hotel_management'
--

CREATE DATABASE hotel_management;
USE hotel_management;

-- --------------------------------------------------------

--
-- Table structure for table `guests`
--

CREATE TABLE `guests` (
  `id` int(11) AUTO_INCREMENT PRIMARY KEY,
  `name` varchar(255) NOT NULL,
  `gender` enum('Male','Female') NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
);

--
-- Inserting data to table `guests`
--

INSERT INTO `guests` (`id`, `name`, `gender`, `phone`, `email`, `address`) VALUES
(1, 'James Smith', 'Male', '+1-214-555-1234', 'james.smith87@gmail.com', '2984 Elm St, Dallas, Texas'),
(2, 'Emma Johnson', 'Female', '+1-310-555-5678', 'emma.johnson45@yahoo.com', '6721 Maple Ave, Los Angeles, California'),
(3, 'Olivia Davis', 'Female', '+1-206-555-2345', 'olivia.davis29@yahoo.com', '4829 Pine St, Seattle, Washington'),
(4, 'Michael Brown', 'Male', '+1-512-555-9876', 'michael.brown32@gmail.com', '8143 Oak Dr, Austin, Texas'),
(5, 'Ava Wilson', 'Female', '+1-281-555-3456', 'ava.wilson98@gmail.com', '9356 Main St, Houston, Texas'),
(6, 'William Miller', 'Male', '+1-646-555-8765', 'william.miller61@gmail.com', '7543 Broadway, New York, New York'),
(7, 'Ethan Moore', 'Male', '+1-408-555-4567', 'ethan.moore11@yahoo.com', '5431 Silicon Blvd, San Jose, California'),
(8, 'Sophia Taylor', 'Female', '+1-425-555-5678', 'sophia.taylor73@gmail.com', '8765 Lakeview Dr, Bellevue, Washington'),
(9, 'Alexander Anderson', 'Male', '+1-718-555-6789', 'alexander.anderson12@yahoo.com', '2349 Queens Blvd, Queens, New York'),
(10, 'Isabella Thomas', 'Female', '+1-210-555-7890', 'isabella.thomas42@gmail.com', '6512 Alamo St, San Antonio, Texas'),
(11, 'Mia White', 'Female', '+1-360-555-9012', 'mia.white84@yahoo.com', '3921 Evergreen Way, Tacoma, Washington'),
(12, 'Matthew Harris', 'Male', '+1-212-555-0123', 'matthew.harris76@gmail.com', '2483 Park Ave, Manhattan, New York'),
(13, 'Amelia Martin', 'Female', '+1-512-555-1234', 'amelia.martin33@yahoo.com', '7421 Congress Ave, Austin, Texas'),
(14, 'Lucas Thompson', 'Male', '+1-925-555-2345', 'lucas.thompson57@gmail.com', '9832 Walnut Blvd, Berkeley, California'),
(15, 'Daniel Jackson', 'Male', '+1-909-555-8901', 'daniel.jackson25@gmail.com', '8769 Citrus Ave, Riverside, California');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) AUTO_INCREMENT PRIMARY KEY,
  `floor` int(11) NOT NULL,
  `room_number` int(11) NOT NULL,
  `room_type` enum('Standard','Superior','Suite') NOT NULL,
  `price_night` int(11) NOT NULL,
  `status` enum('Available','Occupied') NOT NULL
);

--
-- Inserting data to table `rooms`
--

INSERT INTO `rooms` (`id`, `floor`, `room_number`, `room_type`, `price_night`, `status`) VALUES
(1, 1, 101, 'Standard', 100, 'Available'),
(2, 1, 102, 'Standard', 100, 'Occupied'),
(3, 1, 103, 'Standard', 100, 'Occupied'),
(4, 1, 104, 'Standard', 100, 'Available'),
(5, 1, 105, 'Standard', 100, 'Available'),
(6, 2, 201, 'Standard', 100, 'Available'),
(7, 2, 202, 'Standard', 100, 'Available'),
(8, 2, 203, 'Standard', 100, 'Available'),
(9, 2, 204, 'Standard', 100, 'Available'),
(10, 2, 205, 'Standard', 100, 'Available'),
(11, 3, 301, 'Superior', 250, 'Available'),
(12, 3, 302, 'Superior', 250, 'Available'),
(13, 3, 303, 'Superior', 250, 'Available'),
(14, 3, 304, 'Superior', 250, 'Occupied'),
(15, 3, 305, 'Superior', 250, 'Occupied'),
(16, 4, 401, 'Superior', 250, 'Occupied'),
(17, 4, 402, 'Superior', 250, 'Available'),
(18, 4, 403, 'Superior', 250, 'Available'),
(19, 4, 404, 'Superior', 250, 'Available'),
(20, 4, 405, 'Superior', 250, 'Available'),
(21, 5, 501, 'Suite', 450, 'Available'),
(22, 5, 502, 'Suite', 450, 'Available'),
(23, 5, 503, 'Suite', 450, 'Occupied'),
(24, 5, 504, 'Suite', 450, 'Available'),
(25, 5, 505, 'Suite', 450, 'Available');


-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) AUTO_INCREMENT PRIMARY KEY,
  `guest_id` int(11) NOT NULL,
  `booking_date` date NOT NULL,
  `booking_code` varchar(255) NOT NULL UNIQUE,
  `status` enum('Completed','Ongoing','Upcoming') NOT NULL,
  FOREIGN KEY (guest_id) REFERENCES guests (id)
);

--
-- Inserting data to table `bookings`
--

INSERT INTO `bookings` (`id`, `guest_id`, `booking_date`, `booking_code`, `status`) VALUES
(1, 1, '2024-12-01', 'BKG20241201001', 'Completed'),
(2, 2, '2024-12-01', 'BKG20241207002', 'Completed'),
(3, 3, '2024-12-01', 'BKG20241208003', 'Completed'),
(4, 4, '2024-12-02', 'BKG20241209004', 'Completed'),
(5, 5, '2024-12-02', 'BKG20241214005', 'Completed'),
(6, 6, '2024-12-03', 'BKG20241215006', 'Completed'),
(7, 7, '2024-12-03', 'BKG20241217007', 'Completed'),
(8, 8, '2024-12-04', 'BKG20241218008', 'Completed'),
(9, 9, '2024-12-05', 'BKG20241218009', 'Completed'),
(10, 10, '2024-12-06', 'BKG20241218010', 'Ongoing'),
(11, 11, '2024-12-06', 'BKG20241220011', 'Ongoing'),
(12, 12, '2024-12-07', 'BKG20241221012', 'Upcoming'),
(13, 13, '2024-12-07', 'BKG20241223013', 'Upcoming'),
(14, 14, '2024-12-07', 'BKG20241223014', 'Upcoming'),
(15, 15, '2024-12-07', 'BKG20241226015', 'Ongoing');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) AUTO_INCREMENT PRIMARY KEY,
  `booking_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `check_in` date NOT NULL,
  `check_out` date NOT NULL,
  `price_total` int(11) NOT NULL, 
  FOREIGN KEY (booking_id) REFERENCES bookings (id),
  FOREIGN KEY (room_id) REFERENCES rooms(id)
);

--
-- Inserting data to table `details`
--

INSERT INTO `details` (`id`, `booking_id`, `room_id`, `check_in`, `check_out`, `price_total`) VALUES
(1, 1, 21, '2024-12-02', '2024-12-04', 900),
(2, 2, 4, '2024-12-02', '2024-12-04', 200),
(3, 3, 1, '2024-12-03', '2024-12-07', 400),
(4, 4, 9, '2024-12-03', '2024-12-05', 200),
(5, 5, 8, '2024-12-04', '2024-12-06', 200),
(6, 6, 25, '2024-12-05', '2024-12-07', 900),
(7, 7, 5, '2024-12-06', '2024-12-08', 200),
(8, 7, 6, '2024-12-07', '2024-12-08', 100),
(9, 8, 24, '2024-12-07', '2024-12-09', 450),
(10, 9, 3, '2024-12-08', '2024-12-11', 400),
(11, 10, 14, '2024-12-08', '2024-12-12', 1000),
(12, 11, 23, '2024-12-11', '2024-12-12', 450),
(13, 12, 15, '2024-12-12', '2024-12-14', 500),
(14, 12, 16, '2024-12-11', '2024-12-15', 1000),
(15, 13, 2, '2024-12-08', '2024-12-11', 300);


-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) AUTO_INCREMENT PRIMARY KEY,
  `booking_id` int(11) NOT NULL,
  `amount_paid` int(11) NOT NULL,
  `method` enum('Bank Transfer','Credit Card','Digital Wallet') NOT NULL,
  `status` enum('Paid','Pending','Cancelled') NOT NULL,
  FOREIGN KEY (booking_id) REFERENCES bookings (id)
);

--
-- Inserting data to table `payments`
--

INSERT INTO `payments` (`id`, `booking_id`, `amount_paid`, `method`, `status`) VALUES
(1, 1, 900, 'Bank Transfer', 'Paid'),
(2, 2, 200, 'Bank Transfer', 'Paid'),
(3, 3, 400, 'Bank Transfer', 'Paid'),
(4, 4, 200, 'Credit Card', 'Paid'),
(5, 5, 200, 'Digital Wallet', 'Paid'),
(6, 6, 900, 'Digital Wallet', 'Paid'),
(7, 7, 200, 'Bank Transfer', 'Paid'),
(8, 8, 100, 'Credit Card', 'Paid'),
(9, 9, 400, 'Credit Card', 'Paid'),
(10, 10, 300, 'Bank Transfer', 'Paid'),
(11, 11, 1000, 'Bank Transfer', 'Paid'),
(12, 12, 450, 'Credit Card', 'Pending'),
(13, 13, 500, 'Digital Wallet', 'Pending'),
(14, 14, 1000, 'Bank Transfer', 'Pending'),
(15, 15, 300, 'Credit Card', 'Paid');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) AUTO_INCREMENT PRIMARY KEY,
  `booking_id` int(11) NOT NULL,
  `rating` enum('1','2','3','4','5') NOT NULL,
  `comment` varchar(255) NOT NULL, 
  FOREIGN KEY (booking_id) REFERENCES bookings (id)
);

--
-- Inserting data to table `reviews`
--

INSERT INTO `reviews` (`id`, `booking_id`, `rating`, `comment`) VALUES
(1, 1, '5', 'Excellent stay, highly recommend!'),
(2, 3, '4', 'Good, but room could have been cleaner.'),
(3, 2, '3', 'Average experience, nothing special.'),
(4, 4, '2', 'Not great, the service was poor.'),
(5, 5, '5', 'Amazing! Will definitely come back.'),
(6, 6, '4', 'Comfortable stay, friendly staff.'),
(7, 7, '5', 'Exceptional service and clean rooms.'),
(8, 8, '3', 'Okay stay, could improve on amenities.'),
(9, 9, '4', 'Good value for money, would visit again.');
