-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 25, 2026 at 09:32 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `farasisokogarden`
--

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_description` text NOT NULL,
  `product_cost` int(11) NOT NULL,
  `product_photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`product_id`, `product_name`, `product_description`, `product_cost`, `product_photo`) VALUES
(4, 'Vanilla Cake', 'Fluffy cake with a sweet vanilla flavor', 1200, 'cake1.jpeg'),
(5, 'Chocolate Cake', 'Made with cocoa and melted chocolate', 1500, 'cake2.jpeg'),
(6, 'Velvet Cake', 'Soft cake with a slight cocoa taste ,topped with cream cheese', 1800, 'cake3.jpeg'),
(7, 'Marble Cake', ' Mix of vanilla and  chocolate batter swirled', 1650, 'cake4.jpeg'),
(8, 'Chocolate Milkshake', 'Rich and sweet,made with chocolate syrup ', 1100, 'milkshake2.jpeg'),
(9, 'Vanilla Milksahke', 'Creamy and smooth with a sweet vanila flavor', 800, 'milkshake3.jpeg'),
(10, 'Strawberry Milksahke', 'Fresh and fruity,made with strawberries and ice cream', 1300, 'milkshake4.jpeg'),
(11, 'Margherita Pizza', 'Simple pizza with tomato sauce ,mozzarella cheese and fresh basil', 1500, 'pizza2.jpeg'),
(12, 'Chicken Pizza', 'Grilled chicken with barbecue saucxe and cheese', 1700, 'pizza1.jpeg'),
(13, 'French Fries', 'The regular long, thin potsto fries', 500, 'fries3.jpeg'),
(14, 'Steak Fries', 'Thick-cut fries.Soft inside and slightly crispy outside', 650, 'fries2.jpeg'),
(15, 'Fried Chicken', 'Coated in seasoned flour and deep-fried until crispy outside and juicy inside', 1300, 'chicken1.jpeg'),
(16, 'Chicken Tenders', 'Long strips of chicken breast, crispy', 1500, 'chicken2.jpeg'),
(17, 'Chicken Wings', 'Small pieces of chicken ,often spicy or glazed with sauce', 950, 'chicken3.jpeg'),
(18, 'Pilau Rice', 'Cooked with special herbs and tender meat for bold,unforgettable flavor', 450, 'rice1.jpeg'),
(19, 'Jollof Stew', 'Cooked tender beef in a thick ,rich gravy bursting with flavor', 1250, 'rice2.jpeg'),
(20, 'Citrus Juice', 'Freshly squeezed and naturally sweet with a reshing citrus kick', 850, 'juice2.jpeg'),
(21, 'Strewberry Juice', 'Sweet,smooth and slightly creamy with a bright red color', 550, 'juice1.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `email`, `phone`) VALUES
(32, 'Haziel', '1234', 'hazielgmail.com', '+2547 6928 8632'),
(33, 'Lael', '7468', 'laelgmail.com', '+2547 2628 6732'),
(34, 'Lael', '7468', 'lael@gmail.com', '+2547 2628 6732');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;