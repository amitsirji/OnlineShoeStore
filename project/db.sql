-- phpMyAdmin SQL Dump
-- version 2.9.0.3
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Oct 28, 2014 at 02:34 AM
-- Server version: 5.0.27
-- PHP Version: 5.2.0
-- 
-- Database: `project`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `wg_address`
-- 

CREATE TABLE `wg_address` (
  `address_id` int(10) NOT NULL auto_increment,
  `order_id` int(10) NOT NULL,
  `address1` varchar(100) NOT NULL,
  `address2` varchar(100) NOT NULL,
  `city` varchar(20) NOT NULL,
  `county` varchar(20) NOT NULL,
  `post_code` varchar(20) NOT NULL,
  PRIMARY KEY  (`address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- 
-- Dumping data for table `wg_address`
-- 

INSERT INTO `wg_address` (`address_id`, `order_id`, `address1`, `address2`, `city`, `county`, `post_code`) VALUES 
(1, 1, 'aaaaaaa', 'aaaa', 'abcd', 'City of London', '123456'),
(2, 2, 'abcd', 'abcd', 'morbi', 'Bedfordshire', '123456'),
(3, 3, 'avenue park', 'ravapar road', 'morbi', 'City of London', '123456');

-- --------------------------------------------------------

-- 
-- Table structure for table `wg_admin`
-- 

CREATE TABLE `wg_admin` (
  `admin_id` int(4) NOT NULL auto_increment,
  `username` varchar(15) NOT NULL default '',
  `password` varchar(15) NOT NULL default '',
  UNIQUE KEY `admin_id` (`admin_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

-- 
-- Dumping data for table `wg_admin`
-- 

INSERT INTO `wg_admin` (`admin_id`, `username`, `password`) VALUES 
(4, 'admin', 'admin');

-- --------------------------------------------------------

-- 
-- Table structure for table `wg_cart`
-- 

CREATE TABLE `wg_cart` (
  `cart_id` int(10) NOT NULL auto_increment,
  `cart_session` varchar(100) NOT NULL default '',
  `item_id` int(10) NOT NULL default '0',
  `item_price` float NOT NULL default '0',
  `item_name` varchar(100) NOT NULL default '',
  `item_quantity` int(2) NOT NULL default '1',
  `item_total_price` float NOT NULL default '0',
  `item_image` varchar(100) NOT NULL,
  `cart_status` varchar(10) NOT NULL,
  `order_id` varchar(10) NOT NULL,
  PRIMARY KEY  (`cart_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=183 ;

-- 
-- Dumping data for table `wg_cart`
-- 

INSERT INTO `wg_cart` (`cart_id`, `cart_session`, `item_id`, `item_price`, `item_name`, `item_quantity`, `item_total_price`, `item_image`, `cart_status`, `order_id`) VALUES 
(158, 'ee64ed34245055e92326f5cf23345e3f', 1, 200, 'Test Product', 1, 200, '', 'saved', ''),
(159, 'fa35cb521a3bf0a2ac292c13b66bcaa0', 8, 123, 'test', 1, 123, 'images/uploads/test_8_small.jpeg', '', ''),
(160, '396d20ee9208ae9688b6c8167d8a2483', 27, 140, 'Nike-Boys_kid''s', 1, 140, 'images/uploads/Nike-Boys_kid''s_27_small..jpg', 'saved', ''),
(161, '48c16afb36a89bdeb298f72e1f055e4b', 28, 135, 'Nike-Boys_kid''s', 1, 135, 'images/uploads/Nike-Boys_kid''s_28_small..jpg', '', ''),
(162, '58ee4dbc36eea408ee8602db471a3fe8', 32, 110, 'Reebok-Boy_Kid''s', 1, 110, 'images/uploads/Reebok-Boy_Kid''s_32_small..jpg', 'saved', ''),
(163, '58ee4dbc36eea408ee8602db471a3fe8', 34, 120, 'Reebok-Men_Shoes', 2, 240, 'images/uploads/Reebok-Men_Shoes_34_small..jpg', 'saved', ''),
(164, '1de6c4d74291cbc7ad04c923d3a85171', 35, 130, 'Reebok-Women_Shoes', 2, 260, 'images/uploads/Reebok-Women_Shoes_35_small..jpg', 'saved', ''),
(165, '1de6c4d74291cbc7ad04c923d3a85171', 33, 130, 'Reebok-Men_shoes', 1, 130, 'images/uploads/Reebok-Men_shoes_33_small..jpg', 'saved', ''),
(166, '1de6c4d74291cbc7ad04c923d3a85171', 36, 140, 'Reebok-Women_shoes', 1, 140, 'images/uploads/Reebok-Women_shoes_36_small..jpg', 'saved', ''),
(167, '85d9efc17613aea23f637107b489468f', 36, 140, 'Reebok-Women_shoes', 1, 140, 'images/uploads/Reebok-Women_shoes_36_small..jpg', 'saved', ''),
(168, '985e7103b887981b3bfc9e934251643f', 36, 140, 'Reebok-Women_shoes', 4, 560, 'images/uploads/Reebok-Women_shoes_36_small..jpg', '', ''),
(169, 'bcf81ce798693d93509e9a598c5da63f', 33, 130, 'Reebok-Men_shoes', 4, 520, 'images/uploads/Reebok-Men_shoes_33_small..jpg', '', ''),
(170, '99cb147b569b5cde83ed00a916dc79d2', 35, 130, 'Reebok-Women_Shoes', 4, 520, 'images/uploads/Reebok-Women_Shoes_35_small..jpg', '', ''),
(171, '9e67b63acc20368ce64fe79759d4efd7', 34, 120, 'Reebok-Men_Shoes', 4, 480, 'images/uploads/Reebok-Men_Shoes_34_small..jpg', '', ''),
(172, '3d10d4c5e59e9a1b80fe15484a7acf70', 32, 110, 'Reebok-Boy_Kid''s', 4, 440, 'images/uploads/Reebok-Boy_Kid''s_32_small..jpg', '', ''),
(173, '85d9efc17613aea23f637107b489468f', 34, 120, 'Reebok-Men_Shoes', 1, 120, 'images/uploads/Reebok-Men_Shoes_34_small..jpg', '', ''),
(174, '187628eb2d487d35f94c7a357b38492e', 36, 140, 'Reebok-Women_shoes', 1, 140, 'images/uploads/Reebok-Women_shoes_36_small..jpg', 'saved', '1'),
(175, '9f490953533642e0d064d0ee3270486d', 34, 120, 'Reebok-Men_Shoes', 2, 240, 'images/uploads/Reebok-Men_Shoes_34_small..jpg', 'saved', '2'),
(176, '9f490953533642e0d064d0ee3270486d', 36, 140, 'Reebok-Women_shoes', 1, 140, 'images/uploads/Reebok-Women_shoes_36_small..jpg', 'saved', '2'),
(177, '9f490953533642e0d064d0ee3270486d', 34, 120, 'Reebok-Men_Shoes', 2, 240, 'images/uploads/Reebok-Men_Shoes_34_small..jpg', 'saved', ''),
(178, '9f490953533642e0d064d0ee3270486d', 31, 140, 'Reebok-Boy_kid''s', 1, 140, 'images/uploads/Reebok-Boy_kid''s_31_small..jpg', 'saved', ''),
(179, 'a89c079c3df336021db7e9b165e794c8', 34, 120, 'Reebok-Men_Shoes', 1, 120, 'images/uploads/Reebok-Men_Shoes_34_small..jpg', 'saved', '3'),
(180, 'a89c079c3df336021db7e9b165e794c8', 6, 120, 'Nike-Women''s', 1, 120, 'images/uploads/nike_6_small..jpg', 'saved', '3'),
(181, '4155d515ecb074618411d3e31b13d14b', 35, 130, 'Reebok-Women_Shoes', 1, 130, 'images/uploads/Reebok-Women_Shoes_35_small..jpg', 'saved', ''),
(182, 'daabbd5bf059b58f1fed422af2a7a75f', 36, 140, 'Reebok-Women_shoes', 1, 140, 'images/uploads/Reebok-Women_shoes_36_small..jpg', 'saved', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `wg_categories`
-- 

CREATE TABLE `wg_categories` (
  `cat_id` int(10) unsigned NOT NULL auto_increment,
  `cat_name` varchar(30) NOT NULL default '',
  `status` varchar(1) NOT NULL default '1',
  PRIMARY KEY  (`cat_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=59 ;

-- 
-- Dumping data for table `wg_categories`
-- 

INSERT INTO `wg_categories` (`cat_id`, `cat_name`, `status`) VALUES 
(55, 'Men Shoes', '1'),
(56, 'women Shoes', '1'),
(57, 'Girls Kid’s Shoes', '1'),
(58, 'Boys Kid’s Shoes', '1');

-- --------------------------------------------------------

-- 
-- Table structure for table `wg_cities`
-- 

CREATE TABLE `wg_cities` (
  `city_id` int(11) NOT NULL auto_increment,
  `city_name` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`city_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=357 ;

-- 
-- Dumping data for table `wg_cities`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `wg_items`
-- 

CREATE TABLE `wg_items` (
  `cat_id` int(10) NOT NULL default '0',
  `item_id` bigint(20) NOT NULL auto_increment,
  `item_name` varchar(250) NOT NULL default '',
  `item_price` float NOT NULL default '0',
  `item_desc` text NOT NULL,
  `item_status` tinyint(1) NOT NULL default '0',
  `thumbnail` varchar(100) NOT NULL default '',
  `big_image` varchar(100) NOT NULL default '',
  `medium_image` varchar(100) NOT NULL,
  `item_stock` int(10) NOT NULL,
  PRIMARY KEY  (`item_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

-- 
-- Dumping data for table `wg_items`
-- 

INSERT INTO `wg_items` (`cat_id`, `item_id`, `item_name`, `item_price`, `item_desc`, `item_status`, `thumbnail`, `big_image`, `medium_image`, `item_stock`) VALUES 
(55, 1, 'Nike-Men''s', 200, '...', 0, 'images/uploads/Nike_1_small..jpg', 'images/uploads/Nike_1..jpg', 'images/uploads/Nike_1_med..jpg', 10),
(55, 2, 'Nike-Men''s', 150, '....', 0, 'images/uploads/Nike_2_small..jpg', 'images/uploads/Nike_2..jpg', 'images/uploads/Nike_2_med..jpg', 10),
(56, 3, 'Nike-Women''s', 110, '...', 0, 'images/uploads/Nike_3_small..jpg', 'images/uploads/Nike_3..jpg', 'images/uploads/Nike_3_med..jpg', 12),
(56, 4, 'Nike-Women''s', 12, '...', 0, 'images/uploads/Nike_4_small..jpg', 'images/uploads/Nike_4..jpg', 'images/uploads/Nike_4_med..jpg', 123),
(56, 5, 'Nike-Women''s', 125, '...', 0, 'images/uploads/Nike_5_small..jpg', 'images/uploads/Nike_5..jpg', 'images/uploads/Nike_5_med..jpg', 10),
(56, 6, 'Nike-Women''s', 120, '...', 0, 'images/uploads/nike_6_small..jpg', 'images/uploads/nike_6..jpg', 'images/uploads/nike_6_med..jpg', 12),
(56, 7, 'Nike-Women''s', 150, '....', 0, 'images/uploads/Nike_7_small..jpg', 'images/uploads/Nike_7..jpg', 'images/uploads/Nike_7_med..jpg', 20),
(56, 9, 'Nike-Women''s', 140, '...', 0, 'images/uploads/Nike_9_small..jpg', 'images/uploads/Nike_9..jpg', 'images/uploads/Nike_9_med..jpg', 15),
(56, 10, 'Nike-Women''s', 130, '..', 0, 'images/uploads/Nike_10_small..jpg', 'images/uploads/Nike_10..jpg', 'images/uploads/Nike_10_med..jpg', 13),
(55, 11, 'Nike-Men''s', 190, '..', 0, 'images/uploads/Nike_11_small..jpg', 'images/uploads/Nike_11..jpg', 'images/uploads/Nike_11_med..jpg', 12),
(55, 12, 'Nike-Men''s', 180, '.', 0, 'images/uploads/Nike_12_small..jpg', 'images/uploads/Nike_12..jpg', 'images/uploads/Nike_12_med..jpg', 9),
(55, 13, 'Nike_Men''s', 179, '.', 0, 'images/uploads/Nike_13_small..jpg', 'images/uploads/Nike_13..jpg', 'images/uploads/Nike_13_med..jpg', 5),
(55, 14, 'Nike_men''s', 169, '.', 0, 'images/uploads/Nike_14_small..jpg', 'images/uploads/Nike_14..jpg', 'images/uploads/Nike_14_med..jpg', 13),
(57, 15, 'Nike-Girls_kid''s', 130, '.', 0, 'images/uploads/Nike_15_small..jpg', 'images/uploads/Nike_15..jpg', 'images/uploads/Nike_15_med..jpg', 10),
(57, 16, 'Nike-Girls_kid''s', 120, '.', 0, 'images/uploads/Nike_16_small..jpg', 'images/uploads/Nike_16..jpg', 'images/uploads/Nike_16_med..jpg', 15),
(57, 17, 'Nike-Girls_kid''s', 130, '.', 0, 'images/uploads/Nike_17_small..jpg', 'images/uploads/Nike_17..jpg', 'images/uploads/Nike_17_med..jpg', 15),
(57, 18, 'Nike-Girls_kid''s', 110, '.', 0, 'images/uploads/Nike_18_small..jpg', 'images/uploads/Nike_18..jpg', 'images/uploads/Nike_18_med..jpg', 9),
(57, 19, 'Nike-Girls_kid''s', 115, '.', 0, 'images/uploads/Nike_19_small..jpg', 'images/uploads/Nike_19..jpg', 'images/uploads/Nike_19_med..jpg', 12),
(57, 20, 'Nike-Girls_kid''s', 100, '.', 0, 'images/uploads/Nike_20_small..jpg', 'images/uploads/Nike_20..jpg', 'images/uploads/Nike_20_med..jpg', 8),
(57, 21, 'Nike-Girls_kid''s', 139, '.', 0, 'images/uploads/Nike_21_small..jpg', 'images/uploads/Nike_21..jpg', 'images/uploads/Nike_21_med..jpg', 19),
(58, 22, 'Nike-Boys_Kid''s', 110, '.', 0, 'images/uploads/Nike-Boys_Kid''s_22_small..jpg', 'images/uploads/Nike-Boys_Kid''s_22..jpg', 'images/uploads/Nike-Boys_Kid''s_22_med..jpg', 10),
(58, 23, 'Nike-Boys_kid''s', 130, '.', 0, 'images/uploads/Nike-Boys_kid''s_23_small..jpg', 'images/uploads/Nike-Boys_kid''s_23..jpg', 'images/uploads/Nike-Boys_kid''s_23_med..jpg', 12),
(58, 24, 'Nike-Boys_kid''s', 140, '.', 0, 'images/uploads/Nike-Boys_kid''s_24_small..jpg', 'images/uploads/Nike-Boys_kid''s_24..jpg', 'images/uploads/Nike-Boys_kid''s_24_med..jpg', 14),
(58, 25, 'Nike-Boys_kid''s', 120, '.', 0, 'images/uploads/Nike-Boys_kid''s_25_small..jpg', 'images/uploads/Nike-Boys_kid''s_25..jpg', 'images/uploads/Nike-Boys_kid''s_25_med..jpg', 13),
(58, 26, 'Nike-boys_kid''s', 115, '.', 0, 'images/uploads/Nike-boys_kid''s_26_small..jpg', 'images/uploads/Nike-boys_kid''s_26..jpg', 'images/uploads/Nike-boys_kid''s_26_med..jpg', 15),
(58, 27, 'Nike-Boys_kid''s', 140, '.', 0, 'images/uploads/Nike-Boys_kid''s_27_small..jpg', 'images/uploads/Nike-Boys_kid''s_27..jpg', 'images/uploads/Nike-Boys_kid''s_27_med..jpg', 17),
(58, 28, 'Nike-Boys_kid''s', 135, '.', 0, 'images/uploads/Nike-Boys_kid''s_28_small..jpg', 'images/uploads/Nike-Boys_kid''s_28..jpg', 'images/uploads/Nike-Boys_kid''s_28_med..jpg', 12),
(57, 29, 'Reebok-Girl_Kid''s', 110, '...', 0, 'images/uploads/Reebok_29_small..jpg', 'images/uploads/Reebok_29..jpg', 'images/uploads/Reebok_29_med..jpg', 10),
(57, 30, 'Reebok-Girl_Kid''s', 120, '..', 0, 'images/uploads/Reebok-Girl_Kid''s_30_small..jpg', 'images/uploads/Reebok-Girl_Kid''s_30..jpg', 'images/uploads/Reebok-Girl_Kid''s_30_med..jpg', 12),
(58, 31, 'Reebok-Boy_kid''s', 140, '..', 0, 'images/uploads/Reebok-Boy_kid''s_31_small..jpg', 'images/uploads/Reebok-Boy_kid''s_31..jpg', 'images/uploads/Reebok-Boy_kid''s_31_med..jpg', 12),
(58, 32, 'Reebok-Boy_Kid''s', 110, '..', 0, 'images/uploads/Reebok-Boy_Kid''s_32_small..jpg', 'images/uploads/Reebok-Boy_Kid''s_32..jpg', 'images/uploads/Reebok-Boy_Kid''s_32_med..jpg', 12),
(55, 33, 'Reebok-Men_shoes', 130, '..', 0, 'images/uploads/Reebok-Men_shoes_33_small..jpg', 'images/uploads/Reebok-Men_shoes_33..jpg', 'images/uploads/Reebok-Men_shoes_33_med..jpg', 12),
(55, 34, 'Reebok-Men_Shoes', 120, '...', 0, 'images/uploads/Reebok-Men_Shoes_34_small..jpg', 'images/uploads/Reebok-Men_Shoes_34..jpg', 'images/uploads/Reebok-Men_Shoes_34_med..jpg', 14),
(56, 35, 'Reebok-Women_Shoes', 130, '..', 0, 'images/uploads/Reebok-Women_Shoes_35_small..jpg', 'images/uploads/Reebok-Women_Shoes_35..jpg', 'images/uploads/Reebok-Women_Shoes_35_med..jpg', 12),
(56, 36, 'Reebok-Women_shoes', 140, '..', 0, 'images/uploads/Reebok-Women_shoes_36_small..jpg', 'images/uploads/Reebok-Women_shoes_36..jpg', 'images/uploads/Reebok-Women_shoes_36_med..jpg', 14);

-- --------------------------------------------------------

-- 
-- Table structure for table `wg_order_messages`
-- 

CREATE TABLE `wg_order_messages` (
  `id` int(10) NOT NULL auto_increment,
  `order_id` int(10) NOT NULL,
  `message` text NOT NULL,
  `sender` varchar(10) NOT NULL,
  `sentdate` varchar(15) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1709 ;

-- 
-- Dumping data for table `wg_order_messages`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `wg_orders`
-- 

CREATE TABLE `wg_orders` (
  `order_id` int(10) NOT NULL auto_increment,
  `cart_session` varchar(100) NOT NULL,
  `user_id` varchar(20) NOT NULL default '0',
  `sub_total` varchar(10) NOT NULL,
  `vat` varchar(10) NOT NULL,
  `total_price` double NOT NULL default '0',
  `order_date` varchar(50) NOT NULL default '',
  `shipment_date` varchar(50) NOT NULL default '',
  `order_status` varchar(15) NOT NULL default 'New',
  `ipaddress` varchar(30) NOT NULL,
  PRIMARY KEY  (`order_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- 
-- Dumping data for table `wg_orders`
-- 

INSERT INTO `wg_orders` (`order_id`, `cart_session`, `user_id`, `sub_total`, `vat`, `total_price`, `order_date`, `shipment_date`, `order_status`, `ipaddress`) VALUES 
(1, '187628eb2d487d35f94c7a357b38492e', '1', '140', '28', 168, '2014-10-18 01:14:22', '', 'new', '127.0.0.1'),
(2, '9f490953533642e0d064d0ee3270486d', '1', '260', '52', 312, '2014-10-18 07:23:05', '', 'new', '127.0.0.1'),
(3, 'a89c079c3df336021db7e9b165e794c8', '3', '240', '48', 288, '2014-10-26 16:18:30', '', 'new', '127.0.0.1');

-- --------------------------------------------------------

-- 
-- Table structure for table `wg_testimonials`
-- 

CREATE TABLE `wg_testimonials` (
  `id` int(10) NOT NULL auto_increment,
  `name` varchar(30) NOT NULL,
  `country` varchar(30) NOT NULL,
  `totalorders` varchar(10) NOT NULL,
  `ratings` varchar(1) NOT NULL,
  `testimonial` text NOT NULL,
  `date` varchar(30) NOT NULL,
  `approved` varchar(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=40 ;

-- 
-- Dumping data for table `wg_testimonials`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `wg_users`
-- 

CREATE TABLE `wg_users` (
  `user_id` int(11) NOT NULL auto_increment,
  `full_name` varchar(100) NOT NULL default '',
  `user_pass` varchar(10) NOT NULL default '',
  `email` varchar(100) NOT NULL default '',
  `date_joined` varchar(50) NOT NULL default '',
  `company_name` char(20) NOT NULL default '1',
  `account_type` varchar(20) NOT NULL default 'None',
  PRIMARY KEY  (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- 
-- Dumping data for table `wg_users`
-- 

INSERT INTO `wg_users` (`user_id`, `full_name`, `user_pass`, `email`, `date_joined`, `company_name`, `account_type`) VALUES 
(1, 'test', 'abcd1234', 'test@gmail.com', '2014-09-23 14:21:29', '', 'personal'),
(2, 'john', 'john123', 'john123@gmail.com', '2014-09-24 07:08:19', 'Nike', 'personal'),
(3, 'tanvi', '123Tanvi', 'tanvi_ajani@gmail.com', '2014-10-26 16:15:37', 'abcd', 'personal');
