-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 11, 2016 at 05:51 PM
-- Server version: 5.6.33
-- PHP Version: 7.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `oc_address`
--

CREATE TABLE `oc_address` (
  `address_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(40) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_address`
--

INSERT INTO `oc_address` (`address_id`, `customer_id`, `firstname`, `lastname`, `company`, `address_1`, `address_2`, `city`, `postcode`, `country_id`, `zone_id`, `custom_field`) VALUES
(1, 1, 'Ngoc', 'Dang', 'Brainos', 'Phu Tho', 'Ha Noi', 'Ha Noi', '1001', 230, 3776, ''),
(2, 2, 'abc', 'abc', '', 'abc', 'abc', 'abc', 'abc', 222, 3528, ''),
(3, 3, 'test', 'test', 'test', 'test', 'test', 'test', '1001', 222, 3524, ''),
(4, 4, 'ngoc', 'ngoc', '', 'asdfads', 'dasfasdf', 'dasfasdf', 'sdafdasfsd', 207, 3161, ''),
(5, 5, 'Test', 'Test', 'test', 'test', 'test', 'test', 'admin', 219, 3468, ''),
(6, 6, 'demo', 'demo', '', 'ghgh gh', '', 'gfgfg fg', '0000', 208, 3177, ''),
(7, 7, 'admin', 'admin', 'address1', 'address1', 'address1', 'address1', '012343', 206, 3154, ''),
(8, 8, 'demo', 'demo', 'address', 'address', 'address', 'address', '012444', 219, 3442, '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_affiliate`
--

CREATE TABLE `oc_affiliate` (
  `affiliate_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_affiliate_activity`
--

CREATE TABLE `oc_affiliate_activity` (
  `activity_id` int(11) NOT NULL,
  `affiliate_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_affiliate_login`
--

CREATE TABLE `oc_affiliate_login` (
  `affiliate_login_id` int(11) NOT NULL,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_affiliate_transaction`
--

CREATE TABLE `oc_affiliate_transaction` (
  `affiliate_transaction_id` int(11) NOT NULL,
  `affiliate_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_api`
--

CREATE TABLE `oc_api` (
  `api_id` int(11) NOT NULL,
  `username` varchar(64) NOT NULL,
  `firstname` varchar(64) NOT NULL,
  `lastname` varchar(64) NOT NULL,
  `password` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_api`
--

INSERT INTO `oc_api` (`api_id`, `username`, `firstname`, `lastname`, `password`, `status`, `date_added`, `date_modified`) VALUES
(1, 'orK0Y3RXcnNAPAsd9L6nCSZlkpELiu4MbEDz8VNb8acObKsaVpEY8dAiJEuryo4Q', '', '', 't8GrTTJStlhLvQmH5qg3JgcSlMAa04qj3wRMGbfzCCBySn6OTcHd9kwkwwBmrrMledxk4Ta7VbwoFs3ZLB3KlpvXcwAKeMv8pjjk29hObU3hCw6Ox0ZYfKw87wIb83aocAOVAwjcGd9JP6YDwxcS7OQ5AYX9Sxnvy2GypqQwJQ6ZMUc9H4SFJiAJ7XJPLxB9pIyVzEH9UDYhX1hfwzk5YkFV8OlKCnJrv7CkCKkXN85l0cGnSqiqRoCQ3oa5RkmC', 1, '2014-12-17 10:03:34', '2014-12-17 10:03:34'),
(2, '09vx57rDCIk5xmCfNiPcv5wlEIFZSk8Jjt6eroiuxIpkvrF9QVbBQNnUWstpTry2', '', '', 'bvXJZ53MEix0Q2zgNRiefLy14ihNQVGsGe1gautfTgVjZKGmcpH716zvfW9vrGeykVUAGEfak1A9CHmewubnqQZLmY7UebIFxdF4hlUIcVIecv9Ofa2LqRXTqUnKwvPjPVew7z5aKE5mz41VVthBB4VrP82BuIl9eFwb4s2Fwxrmsj8DSfFUaaBpZ3rJCTJgY67To0YbnGEVpCZ8ieS84UoUNWeQpnwEkuXPkwrO3vjiy9hWdzUYJ9sXVMnA0aEa', 1, '2015-05-04 10:39:11', '2015-05-04 10:39:11'),
(3, 'fOK9MK5TNh4V62VNQKY3UXIKG8eCrB2MQDMcOHvcpqxmiIzyTOsol0zryUugVmtl', '', '', 'q5D4CzWsfKUDTJ2mYkR9bGrQacwvEfWvbapdPCMvMgzfqrIESZDtfvA5NwqSSDDtetNuvZf75UdlClpUAtEgfEbs1IBJMF3qyGajf6hbQADTmsomcsI8xkqpssz5xslmzCLU8twPuziWiN9A5I9tsqYbYNWM68yvAAG9t2Odsx0QAzR68Qqq6EIVSehPcVBdVHcFArjteZ9fPRcNiI4eNC0ghXvAtwdE46K5ntoIJooZ5GndPh8cky9IMvI5hm9c', 1, '2015-06-04 10:46:12', '2015-06-04 10:46:12'),
(4, '56esLVqDrbuq7HVGlrm5DU2PH1DTkCAg8fPJ15NjX7PVElbqTEmWYelgWo06q0dp', '', '', 'WsyOoCxBADWEoyv72XUR16yNkoKRfo71WwGAy3Cy6Z3lNojGB3Y30MHb0SsW6pNScUTQNVFKu8w8nVFoPdiFqpgg8P245GNXagno1tzmrllU6q9LKiR0OxXMDQG8WTVx09cssRUa25vzmuBwTSmhG9tJP0HmKdaAc2sLKDlD8W2lH3XaMA8TArcQik2sDTtgMbrWeSZdpSEwMcNYcLrc3KsbulKy43UHVCdzV3TALXxX0BwSMdvGoeiYFsNAmiH7', 1, '2015-06-27 01:41:56', '2015-06-27 01:41:56'),
(5, 'gHhtNF9HgaqIzgDcYiuNbGUJvaL6Uwr14PlHUkP0A690dCT2lEFDKaN60Y2LLkDF', '', '', 'zoNKOdBPZAG2Dauoe0spQ5lGTeReEVk39xDNQEdqEjiI9TweJfJaaugtPyOTJyMJmQW3UzjZZIhZcU3lzDBPxi9DXOWhDjqpzDjJ3IjSRGrtblVRoXhc6gfTv11yahdPkCZdL8wdFdMhFiyt5WL13rLoiCc9j6PK9pnKoanu30R9YGsTd4LWlWAKYdJ8ZZIZEwjtMNdGDvGc2ywVs7rUUsetMosmD1BInk10yU72FDU82HTlEB5ZtaI6E0iHrjQV', 1, '2016-12-11 00:30:02', '2016-12-11 00:30:02');

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute`
--

CREATE TABLE `oc_attribute` (
  `attribute_id` int(11) NOT NULL,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute`
--

INSERT INTO `oc_attribute` (`attribute_id`, `attribute_group_id`, `sort_order`) VALUES
(1, 6, 1),
(2, 6, 5),
(3, 6, 3),
(4, 3, 1),
(5, 3, 2),
(6, 3, 3),
(7, 3, 4),
(8, 3, 5),
(9, 3, 6),
(10, 3, 7),
(11, 3, 8);

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_description`
--

CREATE TABLE `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_description`
--

INSERT INTO `oc_attribute_description` (`attribute_id`, `language_id`, `name`) VALUES
(1, 1, 'Description'),
(2, 1, 'No. of Cores'),
(4, 1, 'test 1'),
(5, 1, 'test 2'),
(6, 1, 'test 3'),
(7, 1, 'test 4'),
(8, 1, 'test 5'),
(9, 1, 'test 6'),
(10, 1, 'test 7'),
(11, 1, 'test 8'),
(3, 1, 'Clockspeed'),
(11, 3, 'test 8'),
(10, 3, 'test 7'),
(9, 3, 'test 6'),
(8, 3, 'test 5'),
(7, 3, 'test 4'),
(6, 3, 'test 3'),
(5, 3, 'test 2'),
(4, 3, 'test 1'),
(2, 3, 'No. of Cores'),
(1, 3, 'Description'),
(3, 3, 'Clockspeed');

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_group`
--

CREATE TABLE `oc_attribute_group` (
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_group`
--

INSERT INTO `oc_attribute_group` (`attribute_group_id`, `sort_order`) VALUES
(3, 2),
(4, 1),
(5, 3),
(6, 4);

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_group_description`
--

CREATE TABLE `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_group_description`
--

INSERT INTO `oc_attribute_group_description` (`attribute_group_id`, `language_id`, `name`) VALUES
(3, 1, 'Memory'),
(4, 1, 'Technical'),
(5, 1, 'Motherboard'),
(6, 1, 'Processor'),
(6, 3, 'Processor'),
(5, 3, 'Motherboard'),
(4, 3, 'Technical'),
(3, 3, 'Memory');

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner`
--

CREATE TABLE `oc_banner` (
  `banner_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_banner`
--

INSERT INTO `oc_banner` (`banner_id`, `name`, `status`) VALUES
(6, 'HP Products', 1),
(7, 'Home Page Slideshow', 1),
(8, 'Manufacturers', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner_image`
--

CREATE TABLE `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_banner_image`
--

INSERT INTO `oc_banner_image` (`banner_image_id`, `banner_id`, `link`, `image`, `sort_order`) VALUES
(155, 6, 'index.php?route=product/manufacturer/info&amp;manufacturer_id=7', 'catalog/can_ca_ca_banner.jpeg', 0),
(153, 7, 'index.php?route=product/product&amp;path=57&amp;product_id=49', 'catalog/can_ca_ca_banner.jpeg', 0),
(152, 8, 'index.php?route=product/manufacturer/info&amp;manufacturer_id=8', 'catalog/Manufacturers/Shimano_logo.jpg', 0),
(151, 8, 'index.php?route=product/manufacturer/info&amp;manufacturer_id=8', 'catalog/Manufacturers/pinnacle-fishing_logo.jpg', 0),
(150, 8, 'index.php?route=product/manufacturer/info&amp;manufacturer_id=8', 'catalog/Manufacturers/pflueger.jpg', 0),
(149, 8, 'index.php?route=product/manufacturer/info&amp;manufacturer_id=8', 'catalog/Manufacturers/penn.jpg', 0),
(148, 8, 'index.php?route=product/manufacturer/info&amp;manufacturer_id=8', 'catalog/Manufacturers/okuma.jpg', 0),
(147, 8, 'index.php?route=product/manufacturer/info&amp;manufacturer_id=8', 'catalog/Manufacturers/daiwa.jpg', 0),
(154, 7, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner_image_description`
--

CREATE TABLE `oc_banner_image_description` (
  `banner_image_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_banner_image_description`
--

INSERT INTO `oc_banner_image_description` (`banner_image_id`, `language_id`, `banner_id`, `title`) VALUES
(154, 1, 7, 'MacBookAir'),
(155, 1, 6, 'HP Banner'),
(154, 3, 7, 'MacBookAir'),
(152, 1, 8, 'Shimano'),
(152, 3, 8, 'Shimano'),
(151, 1, 8, 'Pinnacle'),
(151, 3, 8, 'Pinnacle'),
(153, 1, 7, 'iPhone 6'),
(150, 1, 8, 'Pflueger'),
(155, 3, 6, 'HP Banner'),
(150, 3, 8, 'Pflueger'),
(153, 3, 7, 'iPhone 6'),
(149, 1, 8, 'Penn'),
(149, 3, 8, 'Penn'),
(148, 1, 8, 'Okuma'),
(148, 3, 8, 'Okuma'),
(147, 1, 8, 'Daiwa'),
(147, 3, 8, 'Daiwa');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category`
--

CREATE TABLE `oc_category` (
  `category_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category`
--

INSERT INTO `oc_category` (`category_id`, `image`, `parent_id`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
(77, 'catalog/Graphics/may_cau.jpg', 0, 0, 1, 0, 1, '2016-12-11 10:13:48', '2016-12-11 23:25:27'),
(33, 'catalog/demo/product/category.jpg', 0, 1, 1, 6, 1, '2009-02-03 14:17:55', '2016-12-11 10:02:36'),
(66, 'catalog/Graphics/phao.jpg', 33, 0, 1, 0, 1, '2015-06-25 11:30:19', '2016-12-11 23:27:33'),
(68, 'catalog/Graphics/phu kien cau ca.jpg', 33, 0, 1, 0, 1, '2015-06-25 11:31:35', '2016-12-11 23:24:51'),
(75, 'catalog/Graphics/can cau.jpg', 0, 0, 1, 0, 1, '2016-12-11 10:07:42', '2016-12-11 23:25:16'),
(76, 'catalog/Graphics/moi_cau.jpg', 0, 0, 1, 0, 1, '2016-12-11 10:12:09', '2016-12-11 23:24:34'),
(78, 'catalog/Graphics/cuoc.jpg', 33, 0, 1, 0, 1, '2016-12-11 23:26:07', '2016-12-11 23:26:16');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_description`
--

CREATE TABLE `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_description`
--

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(66, 3, 'Phao', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Phao', '', ''),
(78, 1, 'Fishing Line', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Fishing Line', '', ''),
(68, 3, 'Phụ Kiện', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Phụ Kiện', '', ''),
(68, 1, 'Accessories', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Accessories', '', ''),
(33, 1, 'Fishing Equipment', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Fishing Equipment', '', ''),
(66, 1, 'Floating', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Floating', '', ''),
(78, 3, 'Cước', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Cước', '', ''),
(77, 3, 'Máy Câu', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Máy Câu', '', ''),
(77, 1, 'Fishing Reel', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Fishing Reel', '', ''),
(33, 3, 'Đồ Câu', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Đồ Câu', '', ''),
(75, 3, 'Cần Câu', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Cần Câu', '', ''),
(75, 1, 'Fishing Pole', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Fishing Pole', '', ''),
(76, 3, 'Mồi Câu', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Mồi Câu', '', ''),
(76, 1, 'Fishing Bait', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Fishing Bait', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_filter`
--

CREATE TABLE `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_filter`
--

INSERT INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES
(33, 1),
(33, 2),
(33, 3),
(33, 4),
(33, 5);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_path`
--

CREATE TABLE `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_path`
--

INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
(77, 77, 0),
(33, 33, 0),
(78, 33, 0),
(78, 78, 1),
(66, 66, 1),
(66, 33, 0),
(68, 33, 0),
(68, 68, 1),
(75, 75, 0),
(76, 76, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_to_layout`
--

CREATE TABLE `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_to_layout`
--

INSERT INTO `oc_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES
(77, 0, 0),
(33, 0, 0),
(78, 0, 0),
(66, 0, 0),
(68, 0, 0),
(75, 0, 0),
(76, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_to_store`
--

CREATE TABLE `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_to_store`
--

INSERT INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES
(33, 0),
(66, 0),
(68, 0),
(75, 0),
(76, 0),
(77, 0),
(78, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_country`
--

CREATE TABLE `oc_country` (
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_country`
--

INSERT INTO `oc_country` (`country_id`, `name`, `iso_code_2`, `iso_code_3`, `address_format`, `postcode_required`, `status`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', '', 0, 1),
(2, 'Albania', 'AL', 'ALB', '', 0, 1),
(3, 'Algeria', 'DZ', 'DZA', '', 0, 1),
(4, 'American Samoa', 'AS', 'ASM', '', 0, 1),
(5, 'Andorra', 'AD', 'AND', '', 0, 1),
(6, 'Angola', 'AO', 'AGO', '', 0, 1),
(7, 'Anguilla', 'AI', 'AIA', '', 0, 1),
(8, 'Antarctica', 'AQ', 'ATA', '', 0, 1),
(9, 'Antigua and Barbuda', 'AG', 'ATG', '', 0, 1),
(10, 'Argentina', 'AR', 'ARG', '', 0, 1),
(11, 'Armenia', 'AM', 'ARM', '', 0, 1),
(12, 'Aruba', 'AW', 'ABW', '', 0, 1),
(13, 'Australia', 'AU', 'AUS', '', 0, 1),
(14, 'Austria', 'AT', 'AUT', '', 0, 1),
(15, 'Azerbaijan', 'AZ', 'AZE', '', 0, 1),
(16, 'Bahamas', 'BS', 'BHS', '', 0, 1),
(17, 'Bahrain', 'BH', 'BHR', '', 0, 1),
(18, 'Bangladesh', 'BD', 'BGD', '', 0, 1),
(19, 'Barbados', 'BB', 'BRB', '', 0, 1),
(20, 'Belarus', 'BY', 'BLR', '', 0, 1),
(21, 'Belgium', 'BE', 'BEL', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 0, 1),
(22, 'Belize', 'BZ', 'BLZ', '', 0, 1),
(23, 'Benin', 'BJ', 'BEN', '', 0, 1),
(24, 'Bermuda', 'BM', 'BMU', '', 0, 1),
(25, 'Bhutan', 'BT', 'BTN', '', 0, 1),
(26, 'Bolivia', 'BO', 'BOL', '', 0, 1),
(27, 'Bosnia and Herzegovina', 'BA', 'BIH', '', 0, 1),
(28, 'Botswana', 'BW', 'BWA', '', 0, 1),
(29, 'Bouvet Island', 'BV', 'BVT', '', 0, 1),
(30, 'Brazil', 'BR', 'BRA', '', 0, 1),
(31, 'British Indian Ocean Territory', 'IO', 'IOT', '', 0, 1),
(32, 'Brunei Darussalam', 'BN', 'BRN', '', 0, 1),
(33, 'Bulgaria', 'BG', 'BGR', '', 0, 1),
(34, 'Burkina Faso', 'BF', 'BFA', '', 0, 1),
(35, 'Burundi', 'BI', 'BDI', '', 0, 1),
(36, 'Cambodia', 'KH', 'KHM', '', 0, 1),
(37, 'Cameroon', 'CM', 'CMR', '', 0, 1),
(38, 'Canada', 'CA', 'CAN', '', 0, 1),
(39, 'Cape Verde', 'CV', 'CPV', '', 0, 1),
(40, 'Cayman Islands', 'KY', 'CYM', '', 0, 1),
(41, 'Central African Republic', 'CF', 'CAF', '', 0, 1),
(42, 'Chad', 'TD', 'TCD', '', 0, 1),
(43, 'Chile', 'CL', 'CHL', '', 0, 1),
(44, 'China', 'CN', 'CHN', '', 0, 1),
(45, 'Christmas Island', 'CX', 'CXR', '', 0, 1),
(46, 'Cocos (Keeling) Islands', 'CC', 'CCK', '', 0, 1),
(47, 'Colombia', 'CO', 'COL', '', 0, 1),
(48, 'Comoros', 'KM', 'COM', '', 0, 1),
(49, 'Congo', 'CG', 'COG', '', 0, 1),
(50, 'Cook Islands', 'CK', 'COK', '', 0, 1),
(51, 'Costa Rica', 'CR', 'CRI', '', 0, 1),
(52, 'Cote D\'Ivoire', 'CI', 'CIV', '', 0, 1),
(53, 'Croatia', 'HR', 'HRV', '', 0, 1),
(54, 'Cuba', 'CU', 'CUB', '', 0, 1),
(55, 'Cyprus', 'CY', 'CYP', '', 0, 1),
(56, 'Czech Republic', 'CZ', 'CZE', '', 0, 1),
(57, 'Denmark', 'DK', 'DNK', '', 0, 1),
(58, 'Djibouti', 'DJ', 'DJI', '', 0, 1),
(59, 'Dominica', 'DM', 'DMA', '', 0, 1),
(60, 'Dominican Republic', 'DO', 'DOM', '', 0, 1),
(61, 'East Timor', 'TL', 'TLS', '', 0, 1),
(62, 'Ecuador', 'EC', 'ECU', '', 0, 1),
(63, 'Egypt', 'EG', 'EGY', '', 0, 1),
(64, 'El Salvador', 'SV', 'SLV', '', 0, 1),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', '', 0, 1),
(66, 'Eritrea', 'ER', 'ERI', '', 0, 1),
(67, 'Estonia', 'EE', 'EST', '', 0, 1),
(68, 'Ethiopia', 'ET', 'ETH', '', 0, 1),
(69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', '', 0, 1),
(70, 'Faroe Islands', 'FO', 'FRO', '', 0, 1),
(71, 'Fiji', 'FJ', 'FJI', '', 0, 1),
(72, 'Finland', 'FI', 'FIN', '', 0, 1),
(74, 'France, Metropolitan', 'FR', 'FRA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(75, 'French Guiana', 'GF', 'GUF', '', 0, 1),
(76, 'French Polynesia', 'PF', 'PYF', '', 0, 1),
(77, 'French Southern Territories', 'TF', 'ATF', '', 0, 1),
(78, 'Gabon', 'GA', 'GAB', '', 0, 1),
(79, 'Gambia', 'GM', 'GMB', '', 0, 1),
(80, 'Georgia', 'GE', 'GEO', '', 0, 1),
(81, 'Germany', 'DE', 'DEU', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(82, 'Ghana', 'GH', 'GHA', '', 0, 1),
(83, 'Gibraltar', 'GI', 'GIB', '', 0, 1),
(84, 'Greece', 'GR', 'GRC', '', 0, 1),
(85, 'Greenland', 'GL', 'GRL', '', 0, 1),
(86, 'Grenada', 'GD', 'GRD', '', 0, 1),
(87, 'Guadeloupe', 'GP', 'GLP', '', 0, 1),
(88, 'Guam', 'GU', 'GUM', '', 0, 1),
(89, 'Guatemala', 'GT', 'GTM', '', 0, 1),
(90, 'Guinea', 'GN', 'GIN', '', 0, 1),
(91, 'Guinea-Bissau', 'GW', 'GNB', '', 0, 1),
(92, 'Guyana', 'GY', 'GUY', '', 0, 1),
(93, 'Haiti', 'HT', 'HTI', '', 0, 1),
(94, 'Heard and Mc Donald Islands', 'HM', 'HMD', '', 0, 1),
(95, 'Honduras', 'HN', 'HND', '', 0, 1),
(96, 'Hong Kong', 'HK', 'HKG', '', 0, 1),
(97, 'Hungary', 'HU', 'HUN', '', 0, 1),
(98, 'Iceland', 'IS', 'ISL', '', 0, 1),
(99, 'India', 'IN', 'IND', '', 0, 1),
(100, 'Indonesia', 'ID', 'IDN', '', 0, 1),
(101, 'Iran (Islamic Republic of)', 'IR', 'IRN', '', 0, 1),
(102, 'Iraq', 'IQ', 'IRQ', '', 0, 1),
(103, 'Ireland', 'IE', 'IRL', '', 0, 1),
(104, 'Israel', 'IL', 'ISR', '', 0, 1),
(105, 'Italy', 'IT', 'ITA', '', 0, 1),
(106, 'Jamaica', 'JM', 'JAM', '', 0, 1),
(107, 'Japan', 'JP', 'JPN', '', 0, 1),
(108, 'Jordan', 'JO', 'JOR', '', 0, 1),
(109, 'Kazakhstan', 'KZ', 'KAZ', '', 0, 1),
(110, 'Kenya', 'KE', 'KEN', '', 0, 1),
(111, 'Kiribati', 'KI', 'KIR', '', 0, 1),
(112, 'North Korea', 'KP', 'PRK', '', 0, 1),
(113, 'Korea, Republic of', 'KR', 'KOR', '', 0, 1),
(114, 'Kuwait', 'KW', 'KWT', '', 0, 1),
(115, 'Kyrgyzstan', 'KG', 'KGZ', '', 0, 1),
(116, 'Lao People\'s Democratic Republic', 'LA', 'LAO', '', 0, 1),
(117, 'Latvia', 'LV', 'LVA', '', 0, 1),
(118, 'Lebanon', 'LB', 'LBN', '', 0, 1),
(119, 'Lesotho', 'LS', 'LSO', '', 0, 1),
(120, 'Liberia', 'LR', 'LBR', '', 0, 1),
(121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', '', 0, 1),
(122, 'Liechtenstein', 'LI', 'LIE', '', 0, 1),
(123, 'Lithuania', 'LT', 'LTU', '', 0, 1),
(124, 'Luxembourg', 'LU', 'LUX', '', 0, 1),
(125, 'Macau', 'MO', 'MAC', '', 0, 1),
(126, 'FYROM', 'MK', 'MKD', '', 0, 1),
(127, 'Madagascar', 'MG', 'MDG', '', 0, 1),
(128, 'Malawi', 'MW', 'MWI', '', 0, 1),
(129, 'Malaysia', 'MY', 'MYS', '', 0, 1),
(130, 'Maldives', 'MV', 'MDV', '', 0, 1),
(131, 'Mali', 'ML', 'MLI', '', 0, 1),
(132, 'Malta', 'MT', 'MLT', '', 0, 1),
(133, 'Marshall Islands', 'MH', 'MHL', '', 0, 1),
(134, 'Martinique', 'MQ', 'MTQ', '', 0, 1),
(135, 'Mauritania', 'MR', 'MRT', '', 0, 1),
(136, 'Mauritius', 'MU', 'MUS', '', 0, 1),
(137, 'Mayotte', 'YT', 'MYT', '', 0, 1),
(138, 'Mexico', 'MX', 'MEX', '', 0, 1),
(139, 'Micronesia, Federated States of', 'FM', 'FSM', '', 0, 1),
(140, 'Moldova, Republic of', 'MD', 'MDA', '', 0, 1),
(141, 'Monaco', 'MC', 'MCO', '', 0, 1),
(142, 'Mongolia', 'MN', 'MNG', '', 0, 1),
(143, 'Montserrat', 'MS', 'MSR', '', 0, 1),
(144, 'Morocco', 'MA', 'MAR', '', 0, 1),
(145, 'Mozambique', 'MZ', 'MOZ', '', 0, 1),
(146, 'Myanmar', 'MM', 'MMR', '', 0, 1),
(147, 'Namibia', 'NA', 'NAM', '', 0, 1),
(148, 'Nauru', 'NR', 'NRU', '', 0, 1),
(149, 'Nepal', 'NP', 'NPL', '', 0, 1),
(150, 'Netherlands', 'NL', 'NLD', '', 0, 1),
(151, 'Netherlands Antilles', 'AN', 'ANT', '', 0, 1),
(152, 'New Caledonia', 'NC', 'NCL', '', 0, 1),
(153, 'New Zealand', 'NZ', 'NZL', '', 0, 1),
(154, 'Nicaragua', 'NI', 'NIC', '', 0, 1),
(155, 'Niger', 'NE', 'NER', '', 0, 1),
(156, 'Nigeria', 'NG', 'NGA', '', 0, 1),
(157, 'Niue', 'NU', 'NIU', '', 0, 1),
(158, 'Norfolk Island', 'NF', 'NFK', '', 0, 1),
(159, 'Northern Mariana Islands', 'MP', 'MNP', '', 0, 1),
(160, 'Norway', 'NO', 'NOR', '', 0, 1),
(161, 'Oman', 'OM', 'OMN', '', 0, 1),
(162, 'Pakistan', 'PK', 'PAK', '', 0, 1),
(163, 'Palau', 'PW', 'PLW', '', 0, 1),
(164, 'Panama', 'PA', 'PAN', '', 0, 1),
(165, 'Papua New Guinea', 'PG', 'PNG', '', 0, 1),
(166, 'Paraguay', 'PY', 'PRY', '', 0, 1),
(167, 'Peru', 'PE', 'PER', '', 0, 1),
(168, 'Philippines', 'PH', 'PHL', '', 0, 1),
(169, 'Pitcairn', 'PN', 'PCN', '', 0, 1),
(170, 'Poland', 'PL', 'POL', '', 0, 1),
(171, 'Portugal', 'PT', 'PRT', '', 0, 1),
(172, 'Puerto Rico', 'PR', 'PRI', '', 0, 1),
(173, 'Qatar', 'QA', 'QAT', '', 0, 1),
(174, 'Reunion', 'RE', 'REU', '', 0, 1),
(175, 'Romania', 'RO', 'ROM', '', 0, 1),
(176, 'Russian Federation', 'RU', 'RUS', '', 0, 1),
(177, 'Rwanda', 'RW', 'RWA', '', 0, 1),
(178, 'Saint Kitts and Nevis', 'KN', 'KNA', '', 0, 1),
(179, 'Saint Lucia', 'LC', 'LCA', '', 0, 1),
(180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', '', 0, 1),
(181, 'Samoa', 'WS', 'WSM', '', 0, 1),
(182, 'San Marino', 'SM', 'SMR', '', 0, 1),
(183, 'Sao Tome and Principe', 'ST', 'STP', '', 0, 1),
(184, 'Saudi Arabia', 'SA', 'SAU', '', 0, 1),
(185, 'Senegal', 'SN', 'SEN', '', 0, 1),
(186, 'Seychelles', 'SC', 'SYC', '', 0, 1),
(187, 'Sierra Leone', 'SL', 'SLE', '', 0, 1),
(188, 'Singapore', 'SG', 'SGP', '', 0, 1),
(189, 'Slovak Republic', 'SK', 'SVK', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city} {postcode}\r\n{zone}\r\n{country}', 0, 1),
(190, 'Slovenia', 'SI', 'SVN', '', 0, 1),
(191, 'Solomon Islands', 'SB', 'SLB', '', 0, 1),
(192, 'Somalia', 'SO', 'SOM', '', 0, 1),
(193, 'South Africa', 'ZA', 'ZAF', '', 0, 1),
(194, 'South Georgia &amp; South Sandwich Islands', 'GS', 'SGS', '', 0, 1),
(195, 'Spain', 'ES', 'ESP', '', 0, 1),
(196, 'Sri Lanka', 'LK', 'LKA', '', 0, 1),
(197, 'St. Helena', 'SH', 'SHN', '', 0, 1),
(198, 'St. Pierre and Miquelon', 'PM', 'SPM', '', 0, 1),
(199, 'Sudan', 'SD', 'SDN', '', 0, 1),
(200, 'Suriname', 'SR', 'SUR', '', 0, 1),
(201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', '', 0, 1),
(202, 'Swaziland', 'SZ', 'SWZ', '', 0, 1),
(203, 'Sweden', 'SE', 'SWE', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(204, 'Switzerland', 'CH', 'CHE', '', 0, 1),
(205, 'Syrian Arab Republic', 'SY', 'SYR', '', 0, 1),
(206, 'Taiwan', 'TW', 'TWN', '', 0, 1),
(207, 'Tajikistan', 'TJ', 'TJK', '', 0, 1),
(208, 'Tanzania, United Republic of', 'TZ', 'TZA', '', 0, 1),
(209, 'Thailand', 'TH', 'THA', '', 0, 1),
(210, 'Togo', 'TG', 'TGO', '', 0, 1),
(211, 'Tokelau', 'TK', 'TKL', '', 0, 1),
(212, 'Tonga', 'TO', 'TON', '', 0, 1),
(213, 'Trinidad and Tobago', 'TT', 'TTO', '', 0, 1),
(214, 'Tunisia', 'TN', 'TUN', '', 0, 1),
(215, 'Turkey', 'TR', 'TUR', '', 0, 1),
(216, 'Turkmenistan', 'TM', 'TKM', '', 0, 1),
(217, 'Turks and Caicos Islands', 'TC', 'TCA', '', 0, 1),
(218, 'Tuvalu', 'TV', 'TUV', '', 0, 1),
(219, 'Uganda', 'UG', 'UGA', '', 0, 1),
(220, 'Ukraine', 'UA', 'UKR', '', 0, 1),
(221, 'United Arab Emirates', 'AE', 'ARE', '', 0, 1),
(222, 'United Kingdom', 'GB', 'GBR', '', 1, 1),
(223, 'United States', 'US', 'USA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', 0, 1),
(224, 'United States Minor Outlying Islands', 'UM', 'UMI', '', 0, 1),
(225, 'Uruguay', 'UY', 'URY', '', 0, 1),
(226, 'Uzbekistan', 'UZ', 'UZB', '', 0, 1),
(227, 'Vanuatu', 'VU', 'VUT', '', 0, 1),
(228, 'Vatican City State (Holy See)', 'VA', 'VAT', '', 0, 1),
(229, 'Venezuela', 'VE', 'VEN', '', 0, 1),
(230, 'Viet Nam', 'VN', 'VNM', '', 0, 1),
(231, 'Virgin Islands (British)', 'VG', 'VGB', '', 0, 1),
(232, 'Virgin Islands (U.S.)', 'VI', 'VIR', '', 0, 1),
(233, 'Wallis and Futuna Islands', 'WF', 'WLF', '', 0, 1),
(234, 'Western Sahara', 'EH', 'ESH', '', 0, 1),
(235, 'Yemen', 'YE', 'YEM', '', 0, 1),
(237, 'Democratic Republic of Congo', 'CD', 'COD', '', 0, 1),
(238, 'Zambia', 'ZM', 'ZMB', '', 0, 1),
(239, 'Zimbabwe', 'ZW', 'ZWE', '', 0, 1),
(242, 'Montenegro', 'ME', 'MNE', '', 0, 1),
(243, 'Serbia', 'RS', 'SRB', '', 0, 1),
(244, 'Aaland Islands', 'AX', 'ALA', '', 0, 1),
(245, 'Bonaire, Sint Eustatius and Saba', 'BQ', 'BES', '', 0, 1),
(246, 'Curacao', 'CW', 'CUW', '', 0, 1),
(247, 'Palestinian Territory, Occupied', 'PS', 'PSE', '', 0, 1),
(248, 'South Sudan', 'SS', 'SSD', '', 0, 1),
(249, 'St. Barthelemy', 'BL', 'BLM', '', 0, 1),
(250, 'St. Martin (French part)', 'MF', 'MAF', '', 0, 1),
(251, 'Canary Islands', 'IC', 'ICA', '', 0, 1),
(252, 'Ascension Island (British)', 'AC', 'ASC', '', 0, 1),
(253, 'Kosovo, Republic of', 'XK', 'UNK', '', 0, 1),
(254, 'Isle of Man', 'IM', 'IMN', '', 0, 1),
(255, 'Tristan da Cunha', 'TA', 'SHN', '', 0, 1),
(256, 'Guernsey', 'GG', 'GGY', '', 0, 1),
(257, 'Jersey', 'JE', 'JEY', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon`
--

CREATE TABLE `oc_coupon` (
  `coupon_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(10) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_coupon`
--

INSERT INTO `oc_coupon` (`coupon_id`, `name`, `code`, `type`, `discount`, `logged`, `shipping`, `total`, `date_start`, `date_end`, `uses_total`, `uses_customer`, `status`, `date_added`) VALUES
(4, '-10% Discount', '2222', 'P', '10.0000', 0, 0, '0.0000', '2014-01-01', '2020-01-01', 10, '10', 0, '2009-01-27 13:55:03'),
(5, 'Free Shipping', '3333', 'P', '0.0000', 0, 1, '100.0000', '2014-01-01', '2014-02-01', 10, '10', 0, '2009-03-14 21:13:53'),
(6, '-10.00 Discount', '1111', 'F', '10.0000', 0, 0, '10.0000', '2014-01-01', '2020-01-01', 100000, '10000', 0, '2009-03-14 21:15:18');

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_category`
--

CREATE TABLE `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_history`
--

CREATE TABLE `oc_coupon_history` (
  `coupon_history_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_product`
--

CREATE TABLE `oc_coupon_product` (
  `coupon_product_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_currency`
--

CREATE TABLE `oc_currency` (
  `currency_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` float(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_currency`
--

INSERT INTO `oc_currency` (`currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `status`, `date_modified`) VALUES
(1, 'Pound Sterling', 'GBP', '£', '', '2', 0.79509997, 1, '2016-12-10 18:36:07'),
(2, 'US Dollar', 'USD', '$', '', '2', 1.00000000, 1, '2016-12-11 11:21:53'),
(3, 'Euro', 'EUR', '', '€', '2', 0.94660002, 1, '2016-12-10 18:36:07'),
(4, 'Vietnam Dong', 'VND', '', 'Đ', '', 22584.00000000, 1, '2016-12-10 18:36:07');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer`
--

CREATE TABLE `oc_customer` (
  `customer_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer`
--

INSERT INTO `oc_customer` (`customer_id`, `customer_group_id`, `store_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `password`, `salt`, `cart`, `wishlist`, `newsletter`, `address_id`, `custom_field`, `ip`, `status`, `approved`, `safe`, `token`, `date_added`) VALUES
(1, 1, 0, 'Ngoc', 'Dang', 'testsg@gmail.com', '01667251099', '.panel-body', '29b1b8a5494fd16273eda961113149fdf49a3edd', '694779e06', 'a:0:{}', '', 0, 1, '', '127.0.0.1', 1, 1, 0, '', '2014-12-25 10:58:41'),
(2, 1, 0, 'abc', 'abc', 'abc@gmail.com', 'abc', '', '97b439a34df68bd291dbc2a364b20ba00da22c06', '802d0c7ee', 'a:1:{s:352:"YToyOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQyO3M6Njoib3B0aW9uIjthOjk6e2k6MjE4O3M6MToiNiI7aToyMjM7YToxOntpOjA7czoxOiI5Ijt9aToyMDg7czo0OiJ0ZXN0IjtpOjIxNztzOjE6IjMiO2k6MjA5O3M6NjoiYWdlZ2FnIjtpOjIyMjtzOjQwOiI3YzRjM2JlYzI3ZDY3MGViODFjZjUyMWI5NzEyNDIwMjc5Nzk4MGUxIjtpOjIxOTtzOjEwOiIyMDExLTAyLTIwIjtpOjIyMTtzOjU6IjIyOjI1IjtpOjIyMDtzOjE2OiIyMDExLTAyLTIwIDIyOjI1Ijt9fQ==";i:2;}', 'a:3:{i:0;i:47;i:1;i:30;i:2;i:32;}', 0, 2, '', '192.168.1.26', 1, 1, 0, '', '2015-01-12 14:21:05'),
(3, 1, 0, 'test', 'test', 'test@test.com', '11111111111111', '1111111111', 'dbdf6b248bb61eee4fda8fd55ca6bd53a77d9c12', '2fd590772', 'a:1:{s:40:"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ4O30=";i:1;}', 'a:2:{i:0;i:48;i:1;i:46;}', 0, 3, '', '127.0.0.1', 1, 1, 0, '', '2015-01-14 09:20:31'),
(4, 1, 0, 'ngoc', 'ngoc', 'admin@gmail.com', '11111111111111', '1111111111', '77db0a5cf3bc1284ee64f5dfe7fac0404b1ffa1d', 'ea6694a36', 'a:0:{}', '', 0, 4, '', '127.0.0.1', 1, 1, 0, '', '2015-01-20 09:39:56'),
(5, 1, 0, 'Test', 'Test', 'test@gmail.com', '11111111111111', '1111111111', '631b1b7e6a7ec440744980cfb923623300fae949', '7c5e02ffe', 'a:1:{s:96:"YToyOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ3O3M6Njoib3B0aW9uIjthOjE6e2k6MjI1O3M6MTA6IjIwMTEtMDQtMjIiO319";i:1;}', 'a:2:{i:0;i:51;i:1;i:50;}', 0, 5, '', '127.0.0.1', 1, 1, 0, '', '2015-01-23 16:22:34'),
(6, 1, 0, 'demo', 'demo', 'demo@gmail.com', '123333333322', '', '50ff6010a8c969e9e320d4b87078e76c610b2349', 'f7926c7e6', 'a:1:{s:40:"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjMxO30=";i:1;}', 'a:1:{i:0;i:42;}', 0, 6, '', '127.0.0.1', 1, 1, 0, '', '2015-04-23 16:02:11'),
(7, 1, 0, 'admin', 'admin', 'admin1@gmail.com', '0123456789', '0123466', '7bbb6b8e15dfe7473b8a7cf72df2be3568a60d42', '2fc1b83dc', 'a:0:{}', 'a:1:{i:0;i:28;}', 1, 7, '', '127.0.0.1', 1, 1, 0, '', '2015-05-25 02:10:55'),
(8, 1, 0, 'demo', 'demo', 'demodemo@gmail.com', '345545465', '56576767', '428e5f9b72bbd91af16ea9b42de6a65587ba022b', '7cac751bd', 'a:1:{s:84:"YToyOntzOjEwOiJwcm9kdWN0X2lkIjtpOjMwO3M6Njoib3B0aW9uIjthOjE6e2k6MjI2O3M6MjoiMTUiO319";i:1;}', '', 1, 8, '', '127.0.0.1', 1, 1, 0, '', '2015-06-25 15:01:55');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_activity`
--

CREATE TABLE `oc_customer_activity` (
  `activity_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_activity`
--

INSERT INTO `oc_customer_activity` (`activity_id`, `customer_id`, `key`, `data`, `ip`, `date_added`) VALUES
(1, 1, 'register', 'a:2:{s:11:"customer_id";i:1;s:4:"name";s:9:"Ngoc Dang";}', '127.0.0.1', '2014-12-25 10:58:41'),
(2, 1, 'order_account', 'a:3:{s:11:"customer_id";s:1:"1";s:4:"name";s:9:"Ngoc Dang";s:8:"order_id";i:1;}', '127.0.0.1', '2014-12-25 10:58:50'),
(3, 2, 'register', 'a:2:{s:11:"customer_id";s:1:"2";s:4:"name";s:7:"abc abc";}', '192.168.1.26', '2015-01-12 14:21:05'),
(4, 2, 'order_account', 'a:3:{s:11:"customer_id";s:1:"2";s:4:"name";s:7:"abc abc";s:8:"order_id";i:2;}', '192.168.1.26', '2015-01-12 14:24:22'),
(5, 3, 'register', 'a:2:{s:11:"customer_id";s:1:"3";s:4:"name";s:9:"test test";}', '127.0.0.1', '2015-01-14 09:20:31'),
(6, 2, 'login', 'a:2:{s:11:"customer_id";s:1:"2";s:4:"name";s:7:"abc abc";}', '192.168.1.26', '2015-01-14 11:11:50'),
(7, 4, 'register', 'a:2:{s:11:"customer_id";i:4;s:4:"name";s:9:"ngoc ngoc";}', '127.0.0.1', '2015-01-20 09:39:56'),
(8, 4, 'order_account', 'a:3:{s:11:"customer_id";s:1:"4";s:4:"name";s:9:"ngoc ngoc";s:8:"order_id";i:3;}', '127.0.0.1', '2015-01-20 09:40:04'),
(9, 4, 'order_account', 'a:3:{s:11:"customer_id";s:1:"4";s:4:"name";s:9:"ngoc ngoc";s:8:"order_id";i:4;}', '127.0.0.1', '2015-01-20 09:41:18'),
(10, 5, 'register', 'a:2:{s:11:"customer_id";s:1:"5";s:4:"name";s:9:"Test Test";}', '127.0.0.1', '2015-01-23 16:22:34'),
(11, 6, 'register', 'a:2:{s:11:"customer_id";i:6;s:4:"name";s:9:"demo demo";}', '127.0.0.1', '2015-04-23 16:02:11'),
(12, 7, 'register', 'a:2:{s:11:"customer_id";i:7;s:4:"name";s:11:"admin admin";}', '127.0.0.1', '2015-05-25 02:10:56'),
(13, 7, 'login', 'a:2:{s:11:"customer_id";s:1:"7";s:4:"name";s:11:"admin admin";}', '127.0.0.1', '2015-06-25 14:10:37'),
(14, 7, 'login', 'a:2:{s:11:"customer_id";s:1:"7";s:4:"name";s:11:"admin admin";}', '127.0.0.1', '2015-06-25 14:29:17'),
(15, 8, 'register', 'a:2:{s:11:"customer_id";i:8;s:4:"name";s:9:"demo demo";}', '127.0.0.1', '2015-06-25 15:01:55'),
(16, 7, 'login', 'a:2:{s:11:"customer_id";s:1:"7";s:4:"name";s:11:"admin admin";}', '127.0.0.1', '2015-06-25 15:10:04'),
(17, 7, 'login', 'a:2:{s:11:"customer_id";s:1:"7";s:4:"name";s:11:"admin admin";}', '192.168.1.12', '2015-06-25 15:33:18'),
(18, 7, 'login', 'a:2:{s:11:"customer_id";s:1:"7";s:4:"name";s:11:"admin admin";}', '127.0.0.1', '2015-06-25 16:45:50'),
(19, 7, 'login', 'a:2:{s:11:"customer_id";s:1:"7";s:4:"name";s:11:"admin admin";}', '127.0.0.1', '2015-06-25 17:13:06'),
(20, 7, 'order_account', 'a:3:{s:11:"customer_id";s:1:"7";s:4:"name";s:11:"admin admin";s:8:"order_id";i:5;}', '127.0.0.1', '2015-06-25 17:20:08'),
(21, 7, 'order_account', 'a:3:{s:11:"customer_id";s:1:"7";s:4:"name";s:11:"admin admin";s:8:"order_id";i:6;}', '127.0.0.1', '2015-06-25 17:21:42'),
(22, 7, 'login', 'a:2:{s:11:"customer_id";s:1:"7";s:4:"name";s:11:"admin admin";}', '127.0.0.1', '2015-06-26 10:14:06'),
(23, 7, 'order_account', 'a:3:{s:11:"customer_id";s:1:"7";s:4:"name";s:11:"admin admin";s:8:"order_id";i:7;}', '127.0.0.1', '2015-06-26 10:14:34'),
(24, 7, 'order_account', 'a:3:{s:11:"customer_id";s:1:"7";s:4:"name";s:11:"admin admin";s:8:"order_id";i:9;}', '127.0.0.1', '2015-06-26 10:22:52'),
(25, 7, 'login', 'a:2:{s:11:"customer_id";s:1:"7";s:4:"name";s:11:"admin admin";}', '127.0.0.1', '2015-06-29 10:53:00'),
(26, 7, 'login', 'a:2:{s:11:"customer_id";s:1:"7";s:4:"name";s:11:"admin admin";}', '127.0.0.1', '2015-06-29 14:46:42');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_ban_ip`
--

CREATE TABLE `oc_customer_ban_ip` (
  `customer_ban_ip_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_group`
--

CREATE TABLE `oc_customer_group` (
  `customer_group_id` int(11) NOT NULL,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_group`
--

INSERT INTO `oc_customer_group` (`customer_group_id`, `approval`, `sort_order`) VALUES
(1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_group_description`
--

CREATE TABLE `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_group_description`
--

INSERT INTO `oc_customer_group_description` (`customer_group_id`, `language_id`, `name`, `description`) VALUES
(1, 1, 'Default', 'test'),
(1, 3, 'Default', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_history`
--

CREATE TABLE `oc_customer_history` (
  `customer_history_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_ip`
--

CREATE TABLE `oc_customer_ip` (
  `customer_ip_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_ip`
--

INSERT INTO `oc_customer_ip` (`customer_ip_id`, `customer_id`, `ip`, `date_added`) VALUES
(1, 1, '127.0.0.1', '2014-12-25 10:58:41'),
(2, 2, '192.168.1.26', '2015-01-12 14:21:05'),
(3, 3, '127.0.0.1', '2015-01-14 09:20:31'),
(4, 4, '127.0.0.1', '2015-01-20 09:39:56'),
(5, 5, '127.0.0.1', '2015-01-23 16:22:34'),
(6, 6, '127.0.0.1', '2015-04-23 16:02:11'),
(7, 7, '127.0.0.1', '2015-05-25 02:10:56'),
(8, 8, '127.0.0.1', '2015-06-25 15:01:55'),
(9, 7, '192.168.1.12', '2015-06-25 15:33:18');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_login`
--

CREATE TABLE `oc_customer_login` (
  `customer_login_id` int(11) NOT NULL,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_login`
--

INSERT INTO `oc_customer_login` (`customer_login_id`, `email`, `ip`, `total`, `date_added`, `date_modified`) VALUES
(1, '', '192.168.1.26', 1, '2015-01-12 07:19:13', '2015-01-12 07:19:13'),
(3, 'admin', '127.0.0.1', 2, '2015-04-23 08:28:51', '2015-05-23 08:38:10'),
(4, 'anh@gmail.com', '127.0.0.1', 3, '2015-04-23 08:28:55', '2015-04-23 08:31:50'),
(5, 'admin@gmail.com', '127.0.0.1', 6, '2015-05-23 08:39:08', '2015-06-29 07:46:30');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_online`
--

CREATE TABLE `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_reward`
--

CREATE TABLE `oc_customer_reward` (
  `customer_reward_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_transaction`
--

CREATE TABLE `oc_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field`
--

CREATE TABLE `oc_custom_field` (
  `custom_field_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `location` varchar(7) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_customer_group`
--

CREATE TABLE `oc_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_description`
--

CREATE TABLE `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_value`
--

CREATE TABLE `oc_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_value_description`
--

CREATE TABLE `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_download`
--

CREATE TABLE `oc_download` (
  `download_id` int(11) NOT NULL,
  `filename` varchar(128) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_download_description`
--

CREATE TABLE `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_event`
--

CREATE TABLE `oc_event` (
  `event_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_extension`
--

CREATE TABLE `oc_extension` (
  `extension_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_extension`
--

INSERT INTO `oc_extension` (`extension_id`, `type`, `code`) VALUES
(23, 'payment', 'cod'),
(22, 'total', 'shipping'),
(57, 'total', 'sub_total'),
(58, 'total', 'tax'),
(59, 'total', 'total'),
(390, 'total', 'credit'),
(387, 'shipping', 'flat'),
(349, 'total', 'handling'),
(350, 'total', 'low_order_fee'),
(389, 'total', 'coupon'),
(413, 'module', 'category'),
(408, 'module', 'account'),
(393, 'total', 'reward'),
(398, 'total', 'voucher'),
(407, 'payment', 'free_checkout'),
(432, 'module', 'themecontrol'),
(452, 'module', 'pavmegamenu'),
(466, 'module', 'pavnewsletter'),
(433, 'module', 'pavcarousel'),
(435, 'module', 'pavbloglatest'),
(436, 'module', 'pavblogcomment'),
(437, 'module', 'pavblogcategory'),
(438, 'module', 'pavblog'),
(439, 'module', 'pavsliderlayer'),
(440, 'module', 'filter'),
(441, 'module', 'bestseller'),
(442, 'module', 'pavdeals'),
(454, 'module', 'pavhomebuilder'),
(461, 'module', 'pavverticalmenu'),
(462, 'module', 'pavautosearch'),
(463, 'module', 'pavreassurance'),
(464, 'module', 'pavtestimonial'),
(465, 'module', 'pavfooterlink'),
(468, 'module', 'pavbannerbuilder'),
(469, 'module', 'pavproductcarousel');

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter`
--

CREATE TABLE `oc_filter` (
  `filter_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_filter`
--

INSERT INTO `oc_filter` (`filter_id`, `filter_group_id`, `sort_order`) VALUES
(1, 1, 1),
(2, 1, 0),
(3, 1, 0),
(4, 2, 0),
(5, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_description`
--

CREATE TABLE `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_filter_description`
--

INSERT INTO `oc_filter_description` (`filter_id`, `language_id`, `filter_group_id`, `name`) VALUES
(1, 1, 1, '$0.00 - $99.99'),
(4, 3, 2, 'Black'),
(2, 1, 1, '$100.00 - $199.00'),
(3, 3, 1, '$200.00 and above'),
(3, 1, 1, '$200.00 and above'),
(2, 3, 1, '$100.00 - $199.00'),
(4, 1, 2, 'Black'),
(5, 1, 2, 'White'),
(1, 3, 1, '$0.00 - $99.99'),
(5, 3, 2, 'White');

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_group`
--

CREATE TABLE `oc_filter_group` (
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_filter_group`
--

INSERT INTO `oc_filter_group` (`filter_group_id`, `sort_order`) VALUES
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_group_description`
--

CREATE TABLE `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_filter_group_description`
--

INSERT INTO `oc_filter_group_description` (`filter_group_id`, `language_id`, `name`) VALUES
(1, 1, 'Price'),
(2, 3, 'Color'),
(2, 1, 'Color'),
(1, 3, 'Price');

-- --------------------------------------------------------

--
-- Table structure for table `oc_geo_zone`
--

CREATE TABLE `oc_geo_zone` (
  `geo_zone_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_modified` datetime NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_geo_zone`
--

INSERT INTO `oc_geo_zone` (`geo_zone_id`, `name`, `description`, `date_modified`, `date_added`) VALUES
(3, 'UK VAT Zone', 'UK VAT', '2010-02-26 22:33:24', '2009-01-06 23:26:25'),
(4, 'UK Shipping', 'UK Shipping Zones', '2010-12-15 15:18:13', '2009-06-23 01:14:53');

-- --------------------------------------------------------

--
-- Table structure for table `oc_information`
--

CREATE TABLE `oc_information` (
  `information_id` int(11) NOT NULL,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information`
--

INSERT INTO `oc_information` (`information_id`, `bottom`, `sort_order`, `status`) VALUES
(3, 1, 3, 1),
(4, 1, 1, 1),
(5, 1, 4, 1),
(6, 1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_description`
--

CREATE TABLE `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_description`
--

INSERT INTO `oc_information_description` (`information_id`, `language_id`, `title`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(4, 1, 'About Us', '&lt;p&gt;\r\n	About Us&lt;/p&gt;\r\n', '', '', ''),
(5, 1, 'Terms &amp; Conditions', '&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;\r\n', '', '', ''),
(3, 1, 'Privacy Policy', '&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;\r\n', '', '', ''),
(6, 1, 'Delivery Information', '&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;\r\n', '', '', ''),
(3, 3, 'Privacy Policy', '&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;\r\n', '', '', ''),
(5, 3, 'Terms &amp; Conditions', '&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;\r\n', '', '', ''),
(4, 3, 'About Us', '&lt;p&gt;\r\n	About Us&lt;/p&gt;\r\n', '', '', ''),
(6, 3, 'Delivery Information', '&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;\r\n', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_to_layout`
--

CREATE TABLE `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_to_store`
--

CREATE TABLE `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_to_store`
--

INSERT INTO `oc_information_to_store` (`information_id`, `store_id`) VALUES
(3, 0),
(4, 0),
(5, 0),
(6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_language`
--

CREATE TABLE `oc_language` (
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_language`
--

INSERT INTO `oc_language` (`language_id`, `name`, `code`, `locale`, `image`, `directory`, `sort_order`, `status`) VALUES
(1, 'English', 'en', 'en_US.UTF-8,en_US,en-gb,english', 'gb.png', 'english', 2, 0),
(3, 'Vietnamese', 'vi', 'vi_VN.UTF-8,vi_VN,vi-vn,vietnamese', 'vn.png', 'vietnamese', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout`
--

CREATE TABLE `oc_layout` (
  `layout_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_layout`
--

INSERT INTO `oc_layout` (`layout_id`, `name`) VALUES
(1, 'Home'),
(2, 'Product'),
(3, 'Category'),
(4, 'Default'),
(5, 'Manufacturer'),
(6, 'Account'),
(7, 'Checkout'),
(8, 'Contact'),
(9, 'Sitemap'),
(10, 'Affiliate'),
(11, 'Information'),
(12, 'Compare'),
(13, 'Search'),
(14, 'Pav Blog'),
(15, 'Specials modul');

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout_module`
--

CREATE TABLE `oc_layout_module` (
  `layout_module_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_layout_module`
--

INSERT INTO `oc_layout_module` (`layout_module_id`, `layout_id`, `code`, `position`, `sort_order`) VALUES
(476, 14, 'pavblogcomment.39', 'column_right', 2),
(535, 13, 'bestseller.40', 'column_left', 2),
(534, 13, 'category', 'column_left', 1),
(477, 14, 'bestseller.40', 'column_right', 3),
(254, 10, 'account', 'column_right', 1),
(68, 6, 'account', 'column_right', 1),
(717, 3, 'bestseller.40', 'column_left', 3),
(259, 5, 'filter', 'column_left', 2),
(260, 5, 'category', 'column_left', 1),
(718, 3, 'category', 'column_left', 1),
(838, 1, 'pavreassurance.75', 'footer_center', 0),
(837, 1, 'pavfooterlink.80', 'footer_top', 2),
(836, 1, 'pavfooterlink.78', 'footer_top', 1),
(835, 1, 'pavfooterlink.79', 'footer_top', 0),
(834, 1, 'pavhomebuilder.59', 'content_top', 0),
(261, 5, 'bestseller.40', 'column_left', 3),
(475, 14, 'pavblogcategory.36', 'column_right', 1),
(592, 15, 'category', 'column_left', 1),
(593, 15, 'bestseller.40', 'column_left', 2),
(729, 2, 'bestseller.40', 'column_left', 2),
(728, 2, 'category', 'column_left', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout_route`
--

CREATE TABLE `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_layout_route`
--

INSERT INTO `oc_layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
(38, 6, 0, 'account/%'),
(126, 10, 0, 'affiliate/%'),
(316, 3, 0, 'product/category'),
(343, 1, 0, 'common/home'),
(320, 2, 0, 'product/product'),
(24, 11, 0, 'information/information'),
(23, 7, 0, 'checkout/%'),
(324, 8, 0, 'information/contact'),
(32, 9, 0, 'information/sitemap'),
(330, 4, 0, ''),
(129, 5, 0, 'product/manufacturer/%'),
(52, 12, 0, 'product/compare'),
(257, 13, 0, 'product/search'),
(228, 14, 0, 'pavblog/%'),
(286, 15, 0, 'product/special');

-- --------------------------------------------------------

--
-- Table structure for table `oc_length_class`
--

CREATE TABLE `oc_length_class` (
  `length_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_length_class`
--

INSERT INTO `oc_length_class` (`length_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '10.00000000'),
(3, '0.39370000');

-- --------------------------------------------------------

--
-- Table structure for table `oc_length_class_description`
--

CREATE TABLE `oc_length_class_description` (
  `length_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_length_class_description`
--

INSERT INTO `oc_length_class_description` (`length_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Centimeter', 'cm'),
(2, 1, 'Millimeter', 'mm'),
(3, 1, 'Inch', 'in'),
(2, 3, 'Millimeter', 'mm'),
(1, 3, 'Centimeter', 'cm'),
(3, 3, 'Inch', 'in');

-- --------------------------------------------------------

--
-- Table structure for table `oc_location`
--

CREATE TABLE `oc_location` (
  `location_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_manufacturer`
--

CREATE TABLE `oc_manufacturer` (
  `manufacturer_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_manufacturer`
--

INSERT INTO `oc_manufacturer` (`manufacturer_id`, `name`, `image`, `sort_order`) VALUES
(5, 'HTC', 'catalog/demo/htc_logo.jpg', 0),
(6, 'Daiwa', 'catalog/Manufacturers/daiwa.jpg', 0),
(7, 'Hewlett-Packard', 'catalog/demo/hp_logo.jpg', 0),
(8, 'Shimano', 'catalog/shimano.png', 0),
(9, 'Penn', 'catalog/Manufacturers/penn.jpg', 0),
(10, 'Sony', 'catalog/demo/sony_logo.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_manufacturer_to_store`
--

CREATE TABLE `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_manufacturer_to_store`
--

INSERT INTO `oc_manufacturer_to_store` (`manufacturer_id`, `store_id`) VALUES
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_marketing`
--

CREATE TABLE `oc_marketing` (
  `marketing_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_megamenu`
--

CREATE TABLE `oc_megamenu` (
  `megamenu_id` int(11) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT '',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `is_group` smallint(6) NOT NULL DEFAULT '2',
  `width` varchar(255) DEFAULT NULL,
  `submenu_width` varchar(255) DEFAULT NULL,
  `colum_width` varchar(255) DEFAULT NULL,
  `submenu_colum_width` varchar(255) DEFAULT NULL,
  `item` varchar(255) DEFAULT NULL,
  `colums` varchar(255) DEFAULT '1',
  `type` varchar(255) NOT NULL,
  `is_content` smallint(6) NOT NULL DEFAULT '2',
  `show_title` smallint(6) NOT NULL DEFAULT '1',
  `type_submenu` varchar(10) NOT NULL DEFAULT '1',
  `level_depth` smallint(6) NOT NULL DEFAULT '0',
  `published` smallint(6) NOT NULL DEFAULT '1',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `position` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `show_sub` smallint(6) NOT NULL DEFAULT '0',
  `url` varchar(255) DEFAULT NULL,
  `target` varchar(25) DEFAULT NULL,
  `privacy` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `position_type` varchar(25) DEFAULT 'top',
  `menu_class` varchar(25) DEFAULT NULL,
  `description` text,
  `content_text` text,
  `submenu_content` text,
  `level` int(11) NOT NULL,
  `left` int(11) NOT NULL,
  `right` int(11) NOT NULL,
  `widget_id` int(11) DEFAULT '0',
  `badges` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_megamenu`
--

INSERT INTO `oc_megamenu` (`megamenu_id`, `image`, `parent_id`, `is_group`, `width`, `submenu_width`, `colum_width`, `submenu_colum_width`, `item`, `colums`, `type`, `is_content`, `show_title`, `type_submenu`, `level_depth`, `published`, `store_id`, `position`, `show_sub`, `url`, `target`, `privacy`, `position_type`, `menu_class`, `description`, `content_text`, `submenu_content`, `level`, `left`, `right`, `widget_id`, `badges`) VALUES
(68, '', 1, 0, NULL, NULL, NULL, '', '', '1', 'url', 0, 1, 'menu', 0, 1, 0, 99, 0, '', NULL, 0, 'top', '', NULL, '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 0, 0, 1, ''),
(69, '', 1, 0, NULL, NULL, NULL, NULL, '77', '1', 'category', 2, 1, 'menu', 0, 1, 0, 99, 0, NULL, NULL, 0, 'top', NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL),
(70, '', 1, 0, NULL, NULL, NULL, NULL, '33', '1', 'category', 2, 1, 'menu', 0, 1, 0, 99, 0, NULL, NULL, 0, 'top', NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL),
(71, '', 1, 0, NULL, NULL, NULL, NULL, '75', '1', 'category', 2, 1, 'menu', 0, 1, 0, 99, 0, NULL, NULL, 0, 'top', NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL),
(72, '', 1, 0, NULL, NULL, NULL, NULL, '76', '1', 'category', 2, 1, 'menu', 0, 1, 0, 99, 0, NULL, NULL, 0, 'top', NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL),
(73, '', 70, 0, NULL, NULL, NULL, NULL, '66', '1', 'category', 2, 1, 'menu', 0, 1, 0, 99, 0, NULL, NULL, 0, 'top', NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL),
(74, '', 70, 0, NULL, NULL, NULL, NULL, '68', '1', 'category', 2, 1, 'menu', 0, 1, 0, 99, 0, NULL, NULL, 0, 'top', NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL),
(75, '', 70, 0, NULL, NULL, NULL, NULL, '78', '1', 'category', 2, 1, 'menu', 0, 1, 0, 99, 0, NULL, NULL, 0, 'top', NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL),
(76, '', 1, 0, NULL, NULL, NULL, '', '', '1', 'url', 0, 1, 'menu', 0, 1, 0, 99, 0, '', NULL, 0, 'top', '', NULL, '', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0, 0, 0, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_megamenu_description`
--

CREATE TABLE `oc_megamenu_description` (
  `megamenu_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_megamenu_description`
--

INSERT INTO `oc_megamenu_description` (`megamenu_id`, `language_id`, `title`, `description`) VALUES
(68, 3, '', ''),
(68, 1, '', ''),
(69, 1, 'Fishing Reel', ''),
(69, 3, 'Máy Câu', ''),
(70, 1, 'Fishing Equipment', ''),
(70, 3, 'Đồ Câu', ''),
(71, 1, 'Fishing Pole', ''),
(71, 3, 'Cần Câu', ''),
(72, 1, 'Fishing Bait', ''),
(72, 3, 'Mồi Câu', ''),
(73, 1, 'Floating', ''),
(73, 3, 'Phao', ''),
(74, 1, 'Accessories', ''),
(74, 3, 'Phụ Kiện', ''),
(75, 1, 'Fishing Line', ''),
(75, 3, 'Cước', ''),
(76, 3, '', ''),
(76, 1, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_megamenu_widgets`
--

CREATE TABLE `oc_megamenu_widgets` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `type` varchar(255) NOT NULL,
  `params` text NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_megamenu_widgets`
--

INSERT INTO `oc_megamenu_widgets` (`id`, `name`, `type`, `params`, `store_id`) VALUES
(1, 'Video Opencart Installation', 'video_code', 'a:1:{s:10:"video_code";s:168:"&lt;iframe width=&quot;300&quot; height=&quot;315&quot; src=&quot;//www.youtube.com/embed/cUhPA5qIxDQ&quot; frameborder=&quot;0&quot; allowfullscreen&gt;&lt;/iframe&gt;";}', 0),
(2, 'Demo HTML Sample', 'html', 'a:1:{s:4:"html";a:1:{i:1;s:275:"Dorem ipsum dolor sit amet consectetur adipiscing elit congue sit amet erat roin tincidunt vehicula lorem in adipiscing urna iaculis vel. Dorem ipsum dolor sit amet consectetur adipiscing elit congue sit amet erat roin tincidunt vehicula lorem in adipiscing urna iaculis vel.";}}', 0),
(3, 'Products Latest', 'product_list', 'a:4:{s:9:"list_type";s:6:"newest";s:5:"limit";s:1:"6";s:11:"image_width";s:3:"120";s:12:"image_height";s:3:"120";}', 0),
(4, 'Products In Cat 20', 'product_category', 'a:4:{s:11:"category_id";s:2:"20";s:5:"limit";s:1:"6";s:11:"image_width";s:3:"120";s:12:"image_height";s:3:"120";}', 0),
(5, 'Manufactures', 'banner', 'a:4:{s:8:"group_id";s:1:"8";s:11:"image_width";s:2:"80";s:12:"image_height";s:2:"80";s:5:"limit";s:2:"12";}', 0),
(6, 'PavoThemes Feed', 'feed', 'a:1:{s:8:"feed_url";s:55:"http://www.pavothemes.com/opencart-themes.feed?type=rss";}', 0),
(8, '', 'html', 'a:7:{s:4:"wkey";s:1:"0";s:5:"wtype";s:4:"html";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:0:"";s:12:"addition_cls";s:0:"";s:13:"htmlcontent_1";s:61:"&lt;p&gt;gfdsgfdsg dfsg dfsg dfsgdf sgdfs&lt;br&gt;&lt;/p&gt;";}', 0),
(13, '', 'html', 'a:7:{s:4:"wkey";s:1:"0";s:5:"wtype";s:4:"html";s:11:"widget_name";s:10:"categories";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:10:"categories";s:12:"addition_cls";s:0:"";s:13:"htmlcontent_1";s:626:"&lt;ul class=&quot;list&quot;&gt;  &lt;li&gt;    &lt;a href=&quot;index.php?route=product/category&amp;path=62&quot;&gt;Dresses&lt;/a&gt;  &lt;/li&gt;  &lt;li&gt;    &lt;a href=&quot;index.php?route=product/category&amp;path=63&quot;&gt;New&lt;/a&gt;  &lt;/li&gt;  &lt;li&gt;    &lt;a href=&quot;index.php?route=product/category&amp;path=64&quot;&gt;Accessories&lt;/a&gt;  &lt;/li&gt;  &lt;li&gt;    &lt;a href=&quot;index.php?route=product/category&amp;path=65&quot;&gt;Tops&lt;/a&gt;  &lt;/li&gt;  &lt;li&gt;    &lt;a href=&quot;index.php?route=product/category&amp;path=66&quot;&gt;Bottoms&lt;/a&gt;  &lt;/li&gt;&lt;/ul&gt;";}', 0),
(43, '', 'html', 'a:9:{s:4:"wkey";s:2:"43";s:5:"wtype";s:4:"html";s:11:"widget_name";s:11:"Text wedget";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:11:"Text wedget";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:13:"htmlcontent_1";s:346:"&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eveniet laboriosam provident at optio reiciendis culpa reprehenderit&lt;/p&gt; &lt;p&gt;MAKES UP PHOTOSHOP&lt;/p&gt;&lt;p&gt;Voluptates, consectetur soluta laborum maiores alias autem velit deserunt quas quis repellendus beatae veniam omnis sequi expedita nobis debitis&lt;/p&gt;";s:13:"htmlcontent_2";s:350:"&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eveniet laboriosam provident at optio reiciendis culpa reprehenderit&lt;/p&gt; &lt;p&gt;MAKES UP PHOTOSHOP&lt;/p&gt;&lt;p&gt;Voluptates,\r\n consectetur soluta laborum maiores alias autem velit deserunt quas quis\r\n repellendus beatae veniam omnis sequi expedita nobis debitis&lt;/p&gt;";}', 0),
(41, '', 'product_list', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:12:"product_list";s:11:"widget_name";s:7:"asfdsaf";s:10:"show_title";s:1:"1";s:14:"widget_title_3";s:0:"";s:14:"widget_title_1";s:7:"fdafdsf";s:12:"addition_cls";s:0:"";s:5:"limit";s:1:"6";s:9:"list_type";s:10:"bestseller";}', 0),
(51, '', 'video', 'a:12:{s:4:"wkey";s:2:"51";s:5:"wtype";s:5:"video";s:11:"widget_name";s:12:"Widget Video";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:12:"Widget Video";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:10:"video_link";s:43:"https://www.youtube.com/watch?v=oJOnoKZiJQA";s:5:"width";s:4:"100%";s:6:"height";s:3:"250";s:9:"subinfo_1";s:3:"300";s:9:"subinfo_2";s:3:"300";}', 0),
(55, '', 'html', 'a:9:{s:4:"wkey";s:2:"55";s:5:"wtype";s:4:"html";s:11:"widget_name";s:9:"Demo Html";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:9:"Demo Html";s:14:"widget_title_2";s:9:"Demo Html";s:12:"addition_cls";s:0:"";s:13:"htmlcontent_1";s:271:"&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eveniet laboriosam provident&lt;/p&gt; &lt;p&gt;MAKES UP PHOTOSHOP&lt;/p&gt;&lt;p&gt;Voluptates, consectetur soluta laborum maiores alias autem velit deserunt quas quis repellendus beatae veniam&lt;/p&gt;";s:13:"htmlcontent_2";s:271:"&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eveniet laboriosam provident&lt;/p&gt; &lt;p&gt;MAKES UP PHOTOSHOP&lt;/p&gt;&lt;p&gt;Voluptates, consectetur soluta laborum maiores alias autem velit deserunt quas quis repellendus beatae veniam&lt;/p&gt;";}', 0),
(50, '', 'categories_list', 'a:8:{s:4:"wkey";s:2:"50";s:5:"wtype";s:15:"categories_list";s:11:"widget_name";s:8:"Category";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:8:"Category";s:14:"widget_title_4";s:8:"Category";s:12:"addition_cls";s:0:"";s:6:"catids";s:20:"18,20,25,33,34,45,46";}', 0),
(57, '', 'video', 'a:12:{s:4:"wkey";s:2:"57";s:5:"wtype";s:5:"video";s:11:"widget_name";s:10:"Demo Video";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:10:"Demo Video";s:14:"widget_title_2";s:10:"Demo Video";s:12:"addition_cls";s:0:"";s:10:"video_link";s:28:"https://youtu.be/owmmCfKYZL4";s:5:"width";s:4:"100%";s:6:"height";s:3:"250";s:9:"subinfo_1";s:3:"300";s:9:"subinfo_2";s:3:"300";}', 0),
(59, '', 'facebook', 'a:15:{s:4:"wkey";s:1:"0";s:5:"wtype";s:8:"facebook";s:11:"widget_name";s:6:"dfgdfg";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:6:"dfgdfg";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:6:"dfgdfg";s:8:"page_url";s:35:"https://www.facebook.com/Pavothemes";s:6:"border";s:1:"1";s:6:"target";s:4:"dark";s:5:"width";s:3:"400";s:6:"height";s:3:"600";s:11:"show_stream";s:1:"1";s:10:"show_faces";s:1:"1";s:11:"show_header";s:1:"1";}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_modification`
--

CREATE TABLE `oc_modification` (
  `modification_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_modification`
--

INSERT INTO `oc_modification` (`modification_id`, `name`, `code`, `author`, `version`, `link`, `xml`, `status`, `date_added`) VALUES
(2, '<font color="#0000"><b>Pavo Framework 3.0</font>', 'PAVOFRAMEWORK4FIX', 'PavoThemes', '<b>1.0</b>', 'http://www.pavothemes.com', '<modification>\r\n   <name><![CDATA[<font color="#0000"><b>Pavo Framework 3.0</font>]]></name>\r\n    <version><![CDATA[<b>1.0</b>]]></version>\r\n    <author><![CDATA[PavoThemes]]></author>\r\n    <link><![CDATA[http://www.pavothemes.com]]></link>\r\n    <code>PAVOFRAMEWORK4FIX</code>    	             \r\n	<file path="admin/view/template/design/layout_form.tpl">\r\n			<operation>\r\n				<search position="replace"><![CDATA[\r\n				<select name="layout_module[<?php echo $module_row; ?>][position]" class="form-control">\r\n				]]></search>\r\n				<add><![CDATA[\r\n					<select name="layout_module[<?php echo $module_row; ?>][position]" class="form-control">\r\n					<option value="slideshow"   <?php if ($layout_module[\'position\'] == \'slideshow\') { ?>selected="selected"<?php } ?>>\r\n			 		 	<?php echo ucfirst(\'slideshow\'); ?>\r\n			 		 </option>\r\n			 		 \r\n\r\n			 		\r\n		\r\n			 		 <option value="promotion"   <?php if ($layout_module[\'position\'] == \'promotion\') { ?>selected="selected"<?php } ?>>\r\n			 		 	<?php echo ucfirst(\'promotion\'); ?>\r\n			 		 </option>\r\n			 \r\n			 		 <option value="showcase"   <?php if ($layout_module[\'position\'] == \'showcase\') { ?>selected="selected"<?php } ?>>\r\n			 		 	<?php echo ucfirst(\'showcase\'); ?>\r\n			 		 </option>\r\n			\r\n			 		 <option value="mass_bottom"   <?php if ($layout_module[\'position\'] == \'mass_bottom\') { ?>selected="selected"<?php } ?>>\r\n			 		 	<?php echo ucfirst(\'Mass Bottom\'); ?>\r\n			 		 </option>\r\n			 	\r\n			 		 <option value="footer_top"   <?php if ($layout_module[\'position\'] == \'footer_top\') { ?>selected="selected"<?php } ?>>\r\n			 		 	<?php echo ucfirst(\'Footer Top\'); ?>\r\n			 		 </option>\r\n			 		  <option value="footer_center"   <?php if ($layout_module[\'position\'] == \'footer_center\') { ?>selected="selected"<?php } ?>>\r\n			 		 	<?php echo ucfirst(\'Footer Center\'); ?>\r\n			 		 </option>\r\n			 		  <option value="footer_bottom"   <?php if ($layout_module[\'position\'] == \'footer_bottom\') { ?>selected="selected"<?php } ?>>\r\n			 		 	<?php echo ucfirst(\'Footer Bottom\'); ?>\r\n			 		 </option>\r\n				]]></add>\r\n			</operation>\r\n	</file>\r\n\r\n	<file path="admin/controller/common/menu.php">\r\n		<operation>\r\n			<search position="replace">\r\n				 <![CDATA[ $this->load->language(\'common/menu\');  ]]>\r\n			</search>\r\n			<add>\r\n			 <![CDATA[\r\n			 	  $this->load->language(\'common/menu\');\r\n			 	 $data[\'pavo_link\'] = $this->url->link(\'module/themecontrol\', \'token=\' . $this->session->data[\'token\'], \'SSL\');\r\n			 	  $data[\'megamenu_link\'] = $this->url->link(\'module/pavmegamenu\', \'token=\' . $this->session->data[\'token\'], \'SSL\');\r\n			  ]]>\r\n			</add>	\r\n		</operation>		\r\n	</file>		\r\n	<file path="admin/view/template/common/menu.tpl">\r\n		<operation>\r\n			<search position="replace">\r\n				 <![CDATA[ <li id="sale"> ]]>\r\n			</search>\r\n			<add>\r\n			 <![CDATA[\r\n			 	  <li><a class="parent">\r\n			 	  	\r\n			 	  		<i class="fa fa-rocket fa-fw"></i> <span><?php echo \'Pavo Theme Control\'; ?></span></a>\r\n			 	  		<ul>\r\n			 	  			<li><a href="<?php echo $pavo_link; ?>">Theme Control</a></li>\r\n			 	  			<li><a href="<?php echo $megamenu_link; ?>">MegaMenu</a></li>\r\n			 	  		</ul>	\r\n			 	  </li>	\r\n				  <li id="sale">\r\n			  ]]>\r\n			</add>	\r\n		</operation>		\r\n	</file>\r\n\r\n	<file path="catalog/language/english/common/cart.php">\r\n		<operation>\r\n			<search position="replace">\r\n				 <![CDATA[$_[\'text_items\']    = \'%s item(s) - %s\';]]>\r\n			</search>\r\n			<add>\r\n			 <![CDATA[$_[\'text_items\']    = \'%s\';]]>\r\n			</add>	\r\n		</operation>		\r\n	</file>	\r\n\r\n	<file path="catalog/language/english/checkout/cart.php">\r\n		<operation>\r\n			<search position="replace">\r\n				 <![CDATA[$_[\'text_items\']               = \'%s item(s) - %s\';]]>\r\n			</search>\r\n			<add>\r\n			 <![CDATA[$_[\'text_items\']               = \'%s\';]]>\r\n			</add>	\r\n		</operation>		\r\n	</file>\r\n	\r\n	<file path="catalog/language/english/default.php">\r\n		<operation>\r\n			<search position="replace">\r\n				 <![CDATA[$_[\'error_upload_999\']      = \'Warning: No error code available!\';]]>\r\n			</search>\r\n			<add>\r\n			 <![CDATA[$_[\'error_upload_999\']      = \'Warning: No error code available!\';\r\n$_[\'text_sale\']      = \'Sale\';]]>\r\n			</add>	\r\n		</operation>		\r\n	</file>\r\n	\r\n	\r\n</modification>					   \r\n					   ', 1, '2014-12-17 14:52:00');

-- --------------------------------------------------------

--
-- Table structure for table `oc_module`
--

CREATE TABLE `oc_module` (
  `module_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_module`
--

INSERT INTO `oc_module` (`module_id`, `name`, `code`, `setting`) VALUES
(82, 'Bestsellers1', 'bestseller', 'a:5:{s:4:"name";s:12:"Bestsellers1";s:5:"limit";s:1:"6";s:5:"width";s:3:"153";s:6:"height";s:3:"153";s:6:"status";s:1:"1";}'),
(40, 'Category', 'bestseller', 'a:5:{s:4:"name";s:8:"Category";s:5:"limit";s:1:"5";s:5:"width";s:2:"89";s:6:"height";s:2:"89";s:6:"status";s:1:"1";}'),
(85, 'Banner1 Home2', 'pavbannerbuilder', 'a:5:{s:4:"name";s:13:"Banner1 Home2";s:12:"module_title";a:2:{i:1;s:0:"";i:2;s:0:"";}s:6:"status";s:1:"1";s:5:"class";s:19:"effect-v8 hidden-xs";s:6:"layout";s:473:"[{"index":0,"cls":"","bgcolor":"","bgimage":"","fullwidth":0,"parallax":0,"sfxcls":"","cols":[{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","inrow":0,"lgcol":4,"mdcol":4,"smcol":4,"xscol":12,"widgets":[{"image":"catalog/demo/banners/banner10.jpg","link":"#"}],"rows":[]},{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","inrow":0,"lgcol":8,"mdcol":8,"smcol":8,"xscol":12,"widgets":[{"image":"catalog/demo/banners/banner11.jpg","link":""}],"rows":[]}]}]";}'),
(86, 'Banner2 Home2', 'pavbannerbuilder', 'a:5:{s:4:"name";s:13:"Banner2 Home2";s:12:"module_title";a:2:{i:1;s:0:"";i:2;s:0:"";}s:6:"status";s:1:"1";s:5:"class";s:19:"effect-v8 hidden-xs";s:6:"layout";s:474:"[{"index":0,"cls":"","bgcolor":"","bgimage":"","fullwidth":0,"parallax":0,"sfxcls":"","cols":[{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","inrow":0,"lgcol":8,"mdcol":8,"smcol":8,"xscol":12,"widgets":[{"image":"catalog/demo/banners/banner12.jpg","link":"#"}],"rows":[]},{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","inrow":0,"lgcol":4,"mdcol":4,"smcol":4,"xscol":12,"widgets":[{"image":"catalog/demo/banners/banner13.jpg","link":"#"}],"rows":[]}]}]";}'),
(87, 'Banner3 Home2', 'pavbannerbuilder', 'a:5:{s:4:"name";s:13:"Banner3 Home2";s:12:"module_title";a:2:{i:1;s:0:"";i:2;s:0:"";}s:6:"status";s:1:"1";s:5:"class";s:19:"effect-v8 hidden-xs";s:6:"layout";s:474:"[{"index":0,"cls":"","bgcolor":"","bgimage":"","fullwidth":0,"parallax":0,"sfxcls":"","cols":[{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","inrow":0,"lgcol":4,"mdcol":4,"smcol":4,"xscol":12,"widgets":[{"image":"catalog/demo/banners/banner14.jpg","link":"#"}],"rows":[]},{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","inrow":0,"lgcol":8,"mdcol":8,"smcol":8,"xscol":12,"widgets":[{"image":"catalog/demo/banners/banner15.jpg","link":"#"}],"rows":[]}]}]";}'),
(88, 'Banner4 Home2', 'pavbannerbuilder', 'a:5:{s:4:"name";s:13:"Banner4 Home2";s:12:"module_title";a:2:{i:1;s:0:"";i:2;s:13:"Banner4 Home2";}s:6:"status";s:1:"1";s:5:"class";s:19:"effect-v8 hidden-xs";s:6:"layout";s:474:"[{"index":0,"cls":"","bgcolor":"","bgimage":"","fullwidth":0,"parallax":0,"sfxcls":"","cols":[{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","inrow":0,"lgcol":8,"mdcol":8,"smcol":8,"xscol":12,"widgets":[{"image":"catalog/demo/banners/banner16.jpg","link":"#"}],"rows":[]},{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","inrow":0,"lgcol":4,"mdcol":4,"smcol":4,"xscol":12,"widgets":[{"image":"catalog/demo/banners/banner17.jpg","link":"#"}],"rows":[]}]}]";}'),
(36, 'Blog page', 'pavblogcategory', 'a:4:{s:4:"name";s:9:"Blog page";s:11:"category_id";s:1:"1";s:6:"status";s:1:"1";s:4:"type";s:7:"default";}'),
(39, 'Blog page', 'pavblogcomment', 'a:3:{s:4:"name";s:9:"Blog page";s:5:"limit";s:1:"5";s:6:"status";s:1:"1";}'),
(77, 'Latest Blog1', 'pavbloglatest', 'a:9:{s:4:"name";s:12:"Latest Blog1";s:6:"status";s:1:"1";s:11:"description";a:2:{i:1;s:42:"																																										";i:2;s:42:"																																										";}s:11:"prefixclass";s:12:"prefix class";s:4:"tabs";s:6:"latest";s:5:"width";s:3:"275";s:6:"height";s:3:"215";s:4:"cols";s:1:"1";s:5:"limit";s:1:"1";}'),
(31, 'Home page', 'pavcarousel', 'a:10:{s:4:"name";s:9:"Home page";s:6:"status";s:1:"1";s:9:"banner_id";s:1:"8";s:12:"itemsperpage";s:1:"6";s:5:"limit";s:2:"10";s:7:"columns";s:1:"6";s:9:"auto_play";s:1:"1";s:8:"interval";s:4:"3000";s:5:"width";s:3:"180";s:6:"height";s:3:"180";}'),
(81, 'Deals Product 1', 'pavdeals', 'a:14:{s:6:"status";s:1:"1";s:4:"name";s:15:"Deals Product 1";s:10:"date_start";s:10:"2014-12-31";s:7:"date_to";s:10:"2018-07-03";s:12:"category_ids";a:20:{i:0;s:1:"0";i:1;s:2:"36";i:2;s:2:"45";i:3;s:2:"46";i:4;s:2:"59";i:5;s:2:"60";i:6;s:2:"61";i:7;s:2:"62";i:8;s:2:"63";i:9;s:2:"20";i:10;s:2:"26";i:11;s:2:"28";i:12;s:2:"18";i:13;s:2:"27";i:14;s:2:"25";i:15;s:2:"57";i:16;s:2:"17";i:17;s:2:"24";i:18;s:2:"33";i:19;s:2:"34";}s:10:"sort_deals";s:18:"p.sort_order__desc";s:5:"limit";s:1:"5";s:4:"cols";s:1:"5";s:12:"itemsperpage";s:1:"5";s:6:"prefix";s:0:"";s:5:"width";s:3:"200";s:6:"height";s:3:"200";s:9:"auto_play";s:1:"0";s:8:"interval";s:4:"1000";}'),
(79, 'About', 'pavfooterlink', 'a:5:{s:4:"name";s:5:"About";s:5:"class";s:0:"";s:6:"status";s:1:"1";s:10:"groupLinks";s:1:"1";s:10:"text_title";a:2:{i:3;s:14:"Giới Thiệu";i:1;s:5:"About";}}'),
(80, 'Account', 'pavfooterlink', 'a:5:{s:4:"name";s:7:"Account";s:5:"class";s:0:"";s:6:"status";s:1:"1";s:10:"groupLinks";s:1:"4";s:10:"text_title";a:2:{i:1;s:7:"Account";i:2;s:7:"Account";}}'),
(78, 'Help', 'pavfooterlink', 'a:5:{s:4:"name";s:4:"Help";s:5:"class";s:0:"";s:6:"status";s:1:"1";s:10:"groupLinks";s:1:"2";s:10:"text_title";a:2:{i:1;s:4:"Help";i:2;s:4:"Help";}}'),
(59, 'Default', 'pavhomebuilder', 'a:5:{s:6:"status";s:1:"1";s:4:"name";s:7:"Default";s:5:"class";s:0:"";s:6:"layout";s:3428:"[{"cls":"","bgcolor":"","bgimage":"","fullwidth":"0","parallax":"0","sfxcls":null,"padding":"","margin":"20px auto","iposition":null,"iattachment":null,"cols":[{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":3,"mdcol":3,"smcol":3,"xscol":12,"widgets":[],"rows":[]},{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":9,"mdcol":9,"smcol":12,"xscol":12,"widgets":[{"name":"Custom top home","module":"html.YCVMGW","type":"html"}],"rows":[]}]},{"cls":"","bgcolor":"","bgimage":"","fullwidth":"0","parallax":"0","sfxcls":null,"padding":"","margin":"0 auto 40px","iposition":null,"iattachment":null,"cols":[{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":3,"mdcol":3,"smcol":3,"xscol":12,"widgets":[],"rows":[]},{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":9,"mdcol":9,"smcol":12,"xscol":12,"widgets":[{"name":"Pav iview Sliders > Default","module":"pavsliderlayer.46","type":"module"}],"rows":[]}]},{"cls":"col-nopadding","bgcolor":"","bgimage":"","fullwidth":"0","parallax":"0","sfxcls":null,"padding":"","margin":"0 auto 40px","iposition":null,"iattachment":null,"cols":[{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":12,"mdcol":12,"smcol":12,"xscol":12,"widgets":[{"name":"coutdown to","module":"countdownproduct.F9cI8t","type":"countdownproduct"}],"rows":[]}]},{"cls":"","bgcolor":"","bgimage":"","fullwidth":"0","parallax":"0","sfxcls":null,"padding":"","margin":"0 auto 40px","iposition":null,"iattachment":null,"cols":[{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":12,"mdcol":12,"smcol":12,"xscol":12,"widgets":[{"name":"Cần Câu","module":"listproduct_home1.pW4xo1","type":"listproduct_home1"}],"rows":[]}]},{"cls":"","bgcolor":"","bgimage":"","fullwidth":"0","parallax":"0","sfxcls":null,"padding":"","margin":"0 auto 40px","iposition":null,"iattachment":null,"cols":[{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":12,"mdcol":12,"smcol":12,"xscol":12,"widgets":[{"name":"Máy Câu","module":"listproduct_home1.2iSxBV","type":"listproduct_home1"}],"rows":[]}]},{"cls":"","bgcolor":"","bgimage":"","fullwidth":"0","parallax":"0","sfxcls":null,"padding":"","margin":"0 auto 40px","iposition":null,"iattachment":null,"cols":[{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":12,"mdcol":12,"smcol":12,"xscol":12,"widgets":[{"name":"Phụ Kiện","module":"listproduct_home1.0NsoHd","type":"listproduct_home1"}],"rows":[]}]},{"cls":"","bgcolor":"","bgimage":"","fullwidth":"0","parallax":"0","sfxcls":null,"padding":"","margin":"","iposition":null,"iattachment":null,"cols":[{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":12,"mdcol":12,"smcol":12,"xscol":12,"widgets":[{"name":"Pav Carousel > Home page","module":"pavcarousel.31","type":"module"}],"rows":[]}]}]";s:9:"module_id";s:2:"59";}'),
(89, 'Home 3', 'pavhomebuilder', 'a:5:{s:6:"status";s:1:"1";s:4:"name";s:6:"Home 3";s:5:"class";s:5:"home3";s:6:"layout";s:2790:"[{"cls":"","bgcolor":"","bgimage":"","fullwidth":"1","parallax":"0","sfxcls":null,"padding":"","margin":"0 auto 40px","iposition":null,"iattachment":null,"cols":[{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":12,"mdcol":12,"smcol":12,"xscol":12,"widgets":[{"name":"Pav iview Sliders > Slider 2","module":"pavsliderlayer.53","type":"module"}],"rows":[]}]},{"cls":"","bgcolor":"","bgimage":"","fullwidth":"0","parallax":"0","sfxcls":null,"padding":"","margin":"0 auto 40px","iposition":null,"iattachment":null,"cols":[{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":12,"mdcol":12,"smcol":12,"xscol":12,"widgets":[{"name":"featured categories ","module":"featured_category.PP1rGC","type":"featured_category"}],"rows":[]}]},{"cls":"hidden-sm hidden-xs","bgcolor":"","bgimage":"","fullwidth":"0","parallax":"0","sfxcls":null,"padding":"","margin":"0 auto 30px","iposition":null,"iattachment":null,"cols":[{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":4,"mdcol":4,"smcol":4,"xscol":12,"widgets":[{"name":"Pav Product Carousel > Bestsellers","module":"pavproductcarousel.90","type":"module"}],"rows":[]},{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":4,"mdcol":4,"smcol":4,"xscol":12,"widgets":[{"name":"Pav Product Carousel > new arrivals","module":"pavproductcarousel.91","type":"module"}],"rows":[]},{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":4,"mdcol":4,"smcol":4,"xscol":12,"widgets":[{"name":"Pav Product Carousel > Top rating","module":"pavproductcarousel.92","type":"module"}],"rows":[]}]},{"cls":"hidden-xs","bgcolor":"","bgimage":"","fullwidth":"0","parallax":"0","sfxcls":null,"padding":"","margin":"0 auto 40px","iposition":null,"iattachment":null,"cols":[{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":12,"mdcol":12,"smcol":12,"xscol":12,"widgets":[{"name":"promotions ","module":"tab_image.thtR3G","type":"tab_image"}],"rows":[]}]},{"cls":"hidden-xs","bgcolor":"","bgimage":"","fullwidth":"0","parallax":"0","sfxcls":null,"padding":"","margin":"","iposition":null,"iattachment":null,"cols":[{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":12,"mdcol":12,"smcol":12,"xscol":12,"widgets":[{"name":"Pav Carousel > Home page","module":"pavcarousel.31","type":"module"}],"rows":[]}]}]";s:9:"module_id";s:2:"89";}'),
(83, 'Home2', 'pavhomebuilder', 'a:5:{s:6:"status";s:1:"1";s:4:"name";s:5:"Home2";s:5:"class";s:5:"home2";s:6:"layout";s:3408:"[{"cls":"","bgcolor":"","bgimage":"","fullwidth":"0","parallax":"0","sfxcls":null,"padding":"","margin":"0 auto 20px","iposition":null,"iattachment":null,"cols":[{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":12,"mdcol":12,"smcol":12,"xscol":12,"widgets":[{"name":"quickly go to","module":"list_links.VZ73IG","type":"list_links"}],"rows":[]}]},{"cls":"","bgcolor":"","bgimage":"","fullwidth":"0","parallax":"0","sfxcls":null,"padding":"","margin":"0 auto 30px","iposition":null,"iattachment":null,"cols":[{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":9,"mdcol":9,"smcol":12,"xscol":12,"widgets":[{"name":"Pav iview Sliders > Default","module":"pavsliderlayer.46","type":"module"}],"rows":[]},{"index":0,"cls":"hidden-sm hidden-xs","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":3,"mdcol":3,"smcol":3,"xscol":12,"widgets":[{"name":"coutdown to","module":"countdownproduct2.TRa6UC","type":"countdownproduct2"},{"name":"img1-home2","module":"image.WOBZwM","type":"image"},{"name":"img2-home2","module":"image.tZqfYO","type":"image"}],"rows":[]}]},{"index":0,"cls":"","bgcolor":"","bgimage":"","fullwidth":0,"parallax":0,"sfxcls":"","padding":"","margin":"","iposition":"","iattachment":"","cols":[{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":9,"mdcol":9,"smcol":12,"xscol":12,"widgets":[{"name":"Best Seller","module":"product_tabs.pqrEPt","type":"product_tabs"},{"name":"clothing, shoes","module":"listproduct_home2.7wgrsw","type":"listproduct_home2"},{"name":"Pav Banners Builder > Banner1 Home2","module":"pavbannerbuilder.85","type":"module"},{"name":"Baby & kids ","module":"listproduct_home2.22UAd8","type":"listproduct_home2"},{"name":"Pav Banners Builder > Banner2 Home2","module":"pavbannerbuilder.86","type":"module"},{"name":"Furniture ","module":"listproduct_home2.DGMjiY","type":"listproduct_home2"},{"name":"Pav Banners Builder > Banner3 Home2","module":"pavbannerbuilder.87","type":"module"},{"name":"Electronics ","module":"listproduct_home2.y3MZFt","type":"listproduct_home2"},{"name":"Pav Banners Builder > Banner4 Home2","module":"pavbannerbuilder.88","type":"module"}],"rows":[]},{"index":0,"cls":"hidden-sm hidden-xs","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":3,"mdcol":3,"smcol":3,"xscol":12,"widgets":[{"name":"most popular","module":"product_list.1W8LZN","type":"product_list"},{"name":"img2-home2","module":"image.aZaDsW","type":"image"},{"name":"img3-home2","module":"image.7xa41k","type":"image"},{"name":"we pick, you shop","module":"product_list.mTY6k4","type":"product_list"},{"name":"img4-hom2","module":"image.BLXThv","type":"image"}],"rows":[]}]},{"cls":"","bgcolor":"","bgimage":"","fullwidth":"0","parallax":"0","sfxcls":null,"padding":"","margin":"30px auto 0","iposition":null,"iattachment":null,"cols":[{"index":0,"cls":"","sfxcls":"","bgcolor":"","bgimage":"","padding":"","margin":"","iposition":"","iattachment":"","inrow":0,"lgcol":12,"mdcol":12,"smcol":12,"xscol":12,"widgets":[{"name":"Pav Carousel > Home page","module":"pavcarousel.31","type":"module"}],"rows":[]}]}]";s:9:"module_id";s:2:"83";}'),
(90, 'Bestsellers', 'pavproductcarousel', 'a:12:{s:11:"description";a:2:{i:1;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";i:2;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";}s:4:"name";s:11:"Bestsellers";s:6:"status";s:1:"1";s:6:"prefix";s:32:"sidebar panel-success block-cart";s:11:"fontawesome";s:11:"fontawesome";s:4:"tabs";a:1:{i:0;s:10:"bestseller";}s:7:"product";s:0:"";s:5:"width";s:3:"135";s:6:"height";s:3:"135";s:12:"itemsperpage";s:1:"6";s:4:"cols";s:1:"1";s:5:"limit";s:2:"10";}'),
(91, 'new arrivals', 'pavproductcarousel', 'a:12:{s:11:"description";a:2:{i:1;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";i:2;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";}s:4:"name";s:12:"new arrivals";s:6:"status";s:1:"1";s:6:"prefix";s:32:"sidebar panel-default block-cart";s:11:"fontawesome";s:11:"fontawesome";s:4:"tabs";a:1:{i:0;s:6:"latest";}s:7:"product";s:0:"";s:5:"width";s:3:"135";s:6:"height";s:3:"135";s:12:"itemsperpage";s:1:"6";s:4:"cols";s:1:"1";s:5:"limit";s:2:"10";}'),
(92, 'Top rating', 'pavproductcarousel', 'a:12:{s:11:"description";a:2:{i:3;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";i:1;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";}s:4:"name";s:10:"Top rating";s:6:"status";s:1:"1";s:6:"prefix";s:34:"sidebar panel-default rating-block";s:11:"fontawesome";s:11:"fontawesome";s:4:"tabs";a:1:{i:0;s:9:"toprating";}s:7:"product";a:1:{i:0;s:2:"29";}s:5:"width";s:2:"80";s:6:"height";s:2:"80";s:12:"itemsperpage";s:2:"10";s:4:"cols";s:1:"1";s:5:"limit";s:1:"8";}'),
(75, 'reassurance 1', 'pavreassurance', 'a:4:{s:6:"status";s:1:"1";s:4:"name";s:13:"reassurance 1";s:6:"prefix";s:0:"";s:15:"pavreassurances";a:3:{i:1;a:5:{s:11:"select_icon";s:17:"fa-dropbox  fa-3x";s:23:"reassurance_prefixclass";s:0:"";s:5:"title";a:2:{i:3;s:24:"Đóng Gói Cẩn Thận";i:1;s:34:" Free shipping anywhere worldwide ";}s:7:"caption";a:2:{i:3;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";i:1;s:45:"&lt;p&gt;Onevery order over $150.00&lt;/p&gt;";}s:6:"detail";a:2:{i:3;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";i:1;s:165:"&lt;p&gt;lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibhultate cursus a sit amet mauris. &lt;/p&gt;";}}i:2;a:5:{s:11:"select_icon";s:19:"fa-life-ring  fa-3x";s:23:"reassurance_prefixclass";s:0:"";s:5:"title";a:2:{i:3;s:28:"Chất Lượng Đảm Bảo";i:1;s:31:"Big change for member discount ";}s:7:"caption";a:2:{i:3;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";i:1;s:45:"&lt;p&gt;Onevery order over $150.00&lt;/p&gt;";}s:6:"detail";a:2:{i:3;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";i:1;s:165:"&lt;p&gt;lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibhultate cursus a sit amet mauris. &lt;/p&gt;";}}i:3;a:5:{s:11:"select_icon";s:15:"fa-truck  fa-3x";s:23:"reassurance_prefixclass";s:0:"";s:5:"title";a:2:{i:3;s:21:"Giao Hàng Tận Nơi";i:1;s:29:"24/24 online support custome ";}s:7:"caption";a:2:{i:3;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";i:1;s:45:"&lt;p&gt;Onevery order over $150.00&lt;/p&gt;";}s:6:"detail";a:2:{i:3;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";i:1;s:165:"&lt;p&gt;lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibhultate cursus a sit amet mauris. &lt;/p&gt;";}}}}'),
(46, 'Default', 'pavsliderlayer', 'a:4:{s:4:"name";s:7:"Default";s:6:"status";s:1:"1";s:8:"group_id";s:1:"8";s:21:"pavsliderlayer_module";a:0:{}}'),
(53, 'Slider 2', 'pavsliderlayer', 'a:4:{s:4:"name";s:8:"Slider 2";s:6:"status";s:1:"1";s:8:"group_id";s:2:"13";s:21:"pavsliderlayer_module";a:0:{}}'),
(54, 'Slider 3', 'pavsliderlayer', 'a:4:{s:4:"name";s:8:"Slider 3";s:6:"status";s:1:"1";s:8:"group_id";s:2:"15";s:21:"pavsliderlayer_module";a:0:{}}'),
(76, 'Testimonial 1', 'pavtestimonial', 'a:10:{s:4:"name";s:13:"Testimonial 1";s:6:"status";s:1:"1";s:9:"auto_play";s:1:"1";s:13:"text_interval";s:4:"8000";s:5:"width";s:2:"60";s:6:"height";s:2:"60";s:11:"column_item";s:1:"2";s:10:"page_items";s:1:"4";s:5:"class";s:20:" hidden-sm hidden-xs";s:16:"testimonial_item";a:3:{i:1;a:4:{s:5:"image";s:37:"catalog/demo/module/testimonial-1.png";s:10:"video_link";s:43:"https://www.youtube.com/watch?v=KgME0m6FEf8";s:7:"profile";a:2:{i:1;s:142:"&lt;h4 class=&quot;name&quot;&gt;Pellen tesque&lt;/h4&gt;                                &lt;div class=&quot;job&quot;&gt;Desginer&lt;/div&gt;";i:2;s:142:"&lt;h4 class=&quot;name&quot;&gt;Pellen tesque&lt;/h4&gt;                                &lt;div class=&quot;job&quot;&gt;Desginer&lt;/div&gt;";}s:11:"description";a:2:{i:1;s:160:"&lt;p&gt;This is Photoshop\'s version&amp;nbsp; of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean solliin, lorem quis bibendum auctor&lt;/p&gt;";i:2;s:160:"&lt;p&gt;This is Photoshop\'s version&amp;nbsp; of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean solliin, lorem quis bibendum auctor&lt;/p&gt;";}}i:2;a:4:{s:5:"image";s:37:"catalog/demo/module/testimonial-2.png";s:10:"video_link";s:43:"https://www.youtube.com/watch?v=KgME0m6FEf8";s:7:"profile";a:2:{i:1;s:142:"&lt;h4 class=&quot;name&quot;&gt;Pellen tesque&lt;/h4&gt;                                &lt;div class=&quot;job&quot;&gt;Desginer&lt;/div&gt;";i:2;s:142:"&lt;h4 class=&quot;name&quot;&gt;Pellen tesque&lt;/h4&gt;                                &lt;div class=&quot;job&quot;&gt;Desginer&lt;/div&gt;";}s:11:"description";a:2:{i:1;s:156:"&lt;p&gt;Tisi elit consequat ipsum, nec sagof Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean solliin, lorem quis bibendum auctor&lt;/p&gt;";i:2;s:156:"&lt;p&gt;Tisi elit consequat ipsum, nec sagof Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean solliin, lorem quis bibendum auctor&lt;/p&gt;";}}i:3;a:4:{s:5:"image";s:37:"catalog/demo/module/testimonial-3.png";s:10:"video_link";s:43:"https://www.youtube.com/watch?v=KgME0m6FEf8";s:7:"profile";a:2:{i:1;s:118:"&lt;h4 class=&quot;name&quot;&gt;Pellen tesque&lt;/h4&gt;&lt;div class=&quot;job&quot;&gt;Fashion Designer&lt;/div&gt;";i:2;s:118:"&lt;h4 class=&quot;name&quot;&gt;Pellen tesque&lt;/h4&gt;&lt;div class=&quot;job&quot;&gt;Fashion Designer&lt;/div&gt;";}s:11:"description";a:2:{i:1;s:156:"&lt;p&gt;Tisi elit consequat ipsum, nec sagof Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean solliin, lorem quis bibendum auctor&lt;/p&gt;";i:2;s:156:"&lt;p&gt;Tisi elit consequat ipsum, nec sagof Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean solliin, lorem quis bibendum auctor&lt;/p&gt;";}}}}');

-- --------------------------------------------------------

--
-- Table structure for table `oc_option`
--

CREATE TABLE `oc_option` (
  `option_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option`
--

INSERT INTO `oc_option` (`option_id`, `type`, `sort_order`) VALUES
(1, 'radio', 1),
(2, 'checkbox', 2),
(4, 'text', 3),
(5, 'select', 4),
(6, 'textarea', 5),
(7, 'file', 6),
(8, 'date', 7),
(9, 'time', 8),
(10, 'datetime', 9),
(11, 'select', 10),
(12, 'date', 11);

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_description`
--

CREATE TABLE `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_description`
--

INSERT INTO `oc_option_description` (`option_id`, `language_id`, `name`) VALUES
(1, 1, 'Radio'),
(2, 1, 'Checkbox'),
(4, 1, 'Text'),
(6, 1, 'Textarea'),
(8, 1, 'Date'),
(7, 1, 'File'),
(5, 1, 'Select'),
(9, 1, 'Time'),
(10, 1, 'Date &amp; Time'),
(12, 1, 'Delivery Date'),
(11, 1, 'Size'),
(10, 3, 'Date &amp; Time'),
(9, 3, 'Time'),
(5, 3, 'Select'),
(7, 3, 'File'),
(8, 3, 'Date'),
(6, 3, 'Textarea'),
(4, 3, 'Text'),
(2, 3, 'Checkbox'),
(1, 3, 'Radio'),
(12, 3, 'Delivery Date'),
(11, 3, 'Size');

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_value`
--

CREATE TABLE `oc_option_value` (
  `option_value_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_value`
--

INSERT INTO `oc_option_value` (`option_value_id`, `option_id`, `image`, `sort_order`) VALUES
(43, 1, '', 3),
(32, 1, '', 1),
(45, 2, '', 4),
(44, 2, '', 3),
(42, 5, '', 4),
(41, 5, '', 3),
(39, 5, '', 1),
(40, 5, '', 2),
(31, 1, '', 2),
(23, 2, '', 1),
(24, 2, '', 2),
(46, 11, '', 1),
(47, 11, '', 2),
(48, 11, '', 3);

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_value_description`
--

CREATE TABLE `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_value_description`
--

INSERT INTO `oc_option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`) VALUES
(43, 1, 1, 'Large'),
(32, 1, 1, 'Small'),
(45, 1, 2, 'Checkbox 4'),
(44, 1, 2, 'Checkbox 3'),
(31, 1, 1, 'Medium'),
(42, 1, 5, 'Yellow'),
(41, 1, 5, 'Green'),
(39, 1, 5, 'Red'),
(40, 1, 5, 'Blue'),
(23, 1, 2, 'Checkbox 1'),
(24, 1, 2, 'Checkbox 2'),
(48, 1, 11, 'Large'),
(47, 1, 11, 'Medium'),
(46, 1, 11, 'Small'),
(24, 3, 2, 'Checkbox 2'),
(23, 3, 2, 'Checkbox 1'),
(40, 3, 5, 'Blue'),
(39, 3, 5, 'Red'),
(41, 3, 5, 'Green'),
(42, 3, 5, 'Yellow'),
(31, 3, 1, 'Medium'),
(44, 3, 2, 'Checkbox 3'),
(45, 3, 2, 'Checkbox 4'),
(32, 3, 1, 'Small'),
(43, 3, 1, 'Large'),
(48, 3, 11, 'Large'),
(47, 3, 11, 'Medium'),
(46, 3, 11, 'Small');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order`
--

CREATE TABLE `oc_order` (
  `order_id` int(11) NOT NULL,
  `invoice_no` int(11) NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `custom_field` text NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(40) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_custom_field` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(40) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_custom_field` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order`
--

INSERT INTO `oc_order` (`order_id`, `invoice_no`, `invoice_prefix`, `store_id`, `store_name`, `store_url`, `customer_id`, `customer_group_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `custom_field`, `payment_firstname`, `payment_lastname`, `payment_company`, `payment_address_1`, `payment_address_2`, `payment_city`, `payment_postcode`, `payment_country`, `payment_country_id`, `payment_zone`, `payment_zone_id`, `payment_address_format`, `payment_custom_field`, `payment_method`, `payment_code`, `shipping_firstname`, `shipping_lastname`, `shipping_company`, `shipping_address_1`, `shipping_address_2`, `shipping_city`, `shipping_postcode`, `shipping_country`, `shipping_country_id`, `shipping_zone`, `shipping_zone_id`, `shipping_address_format`, `shipping_custom_field`, `shipping_method`, `shipping_code`, `comment`, `total`, `order_status_id`, `affiliate_id`, `commission`, `marketing_id`, `tracking`, `language_id`, `currency_id`, `currency_code`, `currency_value`, `ip`, `forwarded_ip`, `user_agent`, `accept_language`, `date_added`, `date_modified`) VALUES
(3, 0, 'INV-2013-00', 0, 'Extroic', 'http://localhost/opencart/pav_extroic/', 4, 1, 'ngoc', 'ngoc', 'admin@gmail.com', '11111111111111', '1111111111', 'b:0;', 'ngoc', 'ngoc', '', 'asdfads', 'dasfasdf', 'dasfasdf', 'sdafdasfsd', 'Tajikistan', 207, 'Khatlon', 3161, '', 'b:0;', 'Cash On Delivery', 'cod', 'ngoc', 'ngoc', '', 'asdfads', 'dasfasdf', 'dasfasdf', 'sdafdasfsd', 'Tajikistan', 207, 'Khatlon', 3161, '', 'b:0;', 'Flat Shipping Rate', 'flat.flat', '', '1615.0000', 1, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', 'en-US,en;q=0.5', '2015-01-20 09:40:03', '2015-01-20 09:40:04'),
(4, 0, 'INV-2013-00', 0, 'Extroic', 'http://localhost/opencart/pav_extroic/', 4, 1, 'ngoc', 'ngoc', 'admin@gmail.com', '11111111111111', '1111111111', 'b:0;', 'ngoc', 'ngoc', '', 'asdfads', 'dasfasdf', 'dasfasdf', 'sdafdasfsd', 'Tajikistan', 207, 'Khatlon', 3161, '', 'b:0;', 'Cash On Delivery', 'cod', 'ngoc', 'ngoc', '', 'asdfads', 'dasfasdf', 'dasfasdf', 'sdafdasfsd', 'Tajikistan', 207, 'Khatlon', 3161, '', 'b:0;', 'Flat Shipping Rate', 'flat.flat', '', '1105.0000', 1, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0', 'en-US,en;q=0.5', '2015-01-20 09:41:17', '2015-01-20 09:41:18'),
(5, 0, 'INV-2013-00', 0, 'Pav Shopping New- Responsive Opencart Theme', 'http://localhost/opencart/opencart2.2/pav_shopping_new/', 7, 1, 'admin', 'admin', 'admin1@gmail.com', '0123456789', '0123466', 'b:0;', 'admin', 'admin', 'address1', 'address1', 'address1', 'address1', '012343', 'Taiwan', 206, 'Chi-lung', 3154, '', 'b:0;', 'Cash On Delivery', 'cod', 'admin', 'admin', 'address1', 'address1', 'address1', 'address1', '012343', 'Taiwan', 206, 'Chi-lung', 3154, '', 'b:0;', 'Flat Shipping Rate', 'flat.flat', '', '1065.0000', 1, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:36.0) Gecko/20100101 Firefox/36.0', 'en-US,en;q=0.5', '2015-06-25 17:20:06', '2015-06-25 17:20:08'),
(6, 0, 'INV-2013-00', 0, 'Pav Shopping New- Responsive Opencart Theme', 'http://localhost/opencart/opencart2.2/pav_shopping_new/', 7, 1, 'admin', 'admin', 'admin1@gmail.com', '0123456789', '0123466', 'b:0;', 'admin', 'admin', 'address1', 'address1', 'address1', 'address1', '012343', 'Taiwan', 206, 'Chi-lung', 3154, '', 'b:0;', 'Cash On Delivery', 'cod', 'admin', 'admin', 'address1', 'address1', 'address1', 'address1', '012343', 'Taiwan', 206, 'Chi-lung', 3154, '', 'b:0;', 'Flat Shipping Rate', 'flat.flat', '', '414.9900', 1, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:36.0) Gecko/20100101 Firefox/36.0', 'en-US,en;q=0.5', '2015-06-25 17:21:41', '2015-06-25 17:21:42'),
(7, 0, 'INV-2013-00', 0, 'Pav Shopping New- Responsive Opencart Theme', 'http://localhost/opencart/opencart2.2/pav_shopping_new/', 7, 1, 'admin', 'admin', 'admin1@gmail.com', '0123456789', '0123466', 'b:0;', 'admin', 'admin', 'address1', 'address1', 'address1', 'address1', '012343', 'Taiwan', 206, 'Chi-lung', 3154, '', 'b:0;', 'Cash On Delivery', 'cod', 'admin', 'admin', 'address1', 'address1', 'address1', 'address1', '012343', 'Taiwan', 206, 'Chi-lung', 3154, '', 'b:0;', 'Flat Shipping Rate', 'flat.flat', '', '105.0000', 1, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:36.0) Gecko/20100101 Firefox/36.0', 'en-US,en;q=0.5', '2015-06-26 10:14:29', '2015-06-26 10:14:34'),
(8, 0, 'INV-2013-00', 0, 'Pav Shopping New- Responsive Opencart Theme', 'http://localhost/opencart/opencart2.2/pav_shopping_new/', 7, 1, 'admin', 'admin', 'admin1@gmail.com', '0123456789', '0123466', 'b:0;', 'admin', 'admin', 'address1', 'address1', 'address1', 'address1', '012343', 'Taiwan', 206, 'Chi-lung', 3154, '', 'b:0;', 'Cash On Delivery', 'cod', 'admin', 'admin', 'address1', 'address1', 'address1', 'address1', '012343', 'Taiwan', 206, 'Chi-lung', 3154, '', 'b:0;', 'Flat Shipping Rate', 'flat.flat', '', '1005.0000', 0, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:36.0) Gecko/20100101 Firefox/36.0', 'en-US,en;q=0.5', '2015-06-26 10:17:47', '2015-06-26 10:17:47'),
(9, 0, 'INV-2013-00', 0, 'Pav Shopping New- Responsive Opencart Theme', 'http://localhost/opencart/opencart2.2/pav_shopping_new/', 7, 1, 'admin', 'admin', 'admin1@gmail.com', '0123456789', '0123466', 'b:0;', 'admin', 'admin', 'address1', 'address1', 'address1', 'address1', '012343', 'Taiwan', 206, 'Chi-lung', 3154, '', 'b:0;', 'Cash On Delivery', 'cod', 'admin', 'admin', 'address1', 'address1', 'address1', 'address1', '012343', 'Taiwan', 206, 'Chi-lung', 3154, '', 'b:0;', 'Flat Shipping Rate', 'flat.flat', '', '1005.0000', 1, 0, '0.0000', 0, '', 1, 2, 'USD', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:36.0) Gecko/20100101 Firefox/36.0', 'en-US,en;q=0.5', '2015-06-26 10:22:47', '2015-06-26 10:22:52');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_custom_field`
--

CREATE TABLE `oc_order_custom_field` (
  `order_custom_field_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `custom_field_value_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  `location` varchar(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_fraud`
--

CREATE TABLE `oc_order_fraud` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `country_match` varchar(3) NOT NULL,
  `country_code` varchar(2) NOT NULL,
  `high_risk_country` varchar(3) NOT NULL,
  `distance` int(11) NOT NULL,
  `ip_region` varchar(255) NOT NULL,
  `ip_city` varchar(255) NOT NULL,
  `ip_latitude` decimal(10,6) NOT NULL,
  `ip_longitude` decimal(10,6) NOT NULL,
  `ip_isp` varchar(255) NOT NULL,
  `ip_org` varchar(255) NOT NULL,
  `ip_asnum` int(11) NOT NULL,
  `ip_user_type` varchar(255) NOT NULL,
  `ip_country_confidence` varchar(3) NOT NULL,
  `ip_region_confidence` varchar(3) NOT NULL,
  `ip_city_confidence` varchar(3) NOT NULL,
  `ip_postal_confidence` varchar(3) NOT NULL,
  `ip_postal_code` varchar(10) NOT NULL,
  `ip_accuracy_radius` int(11) NOT NULL,
  `ip_net_speed_cell` varchar(255) NOT NULL,
  `ip_metro_code` int(3) NOT NULL,
  `ip_area_code` int(3) NOT NULL,
  `ip_time_zone` varchar(255) NOT NULL,
  `ip_region_name` varchar(255) NOT NULL,
  `ip_domain` varchar(255) NOT NULL,
  `ip_country_name` varchar(255) NOT NULL,
  `ip_continent_code` varchar(2) NOT NULL,
  `ip_corporate_proxy` varchar(3) NOT NULL,
  `anonymous_proxy` varchar(3) NOT NULL,
  `proxy_score` int(3) NOT NULL,
  `is_trans_proxy` varchar(3) NOT NULL,
  `free_mail` varchar(3) NOT NULL,
  `carder_email` varchar(3) NOT NULL,
  `high_risk_username` varchar(3) NOT NULL,
  `high_risk_password` varchar(3) NOT NULL,
  `bin_match` varchar(10) NOT NULL,
  `bin_country` varchar(2) NOT NULL,
  `bin_name_match` varchar(3) NOT NULL,
  `bin_name` varchar(255) NOT NULL,
  `bin_phone_match` varchar(3) NOT NULL,
  `bin_phone` varchar(32) NOT NULL,
  `customer_phone_in_billing_location` varchar(8) NOT NULL,
  `ship_forward` varchar(3) NOT NULL,
  `city_postal_match` varchar(3) NOT NULL,
  `ship_city_postal_match` varchar(3) NOT NULL,
  `score` decimal(10,5) NOT NULL,
  `explanation` text NOT NULL,
  `risk_score` decimal(10,5) NOT NULL,
  `queries_remaining` int(11) NOT NULL,
  `maxmind_id` varchar(8) NOT NULL,
  `error` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_history`
--

CREATE TABLE `oc_order_history` (
  `order_history_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(5) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_history`
--

INSERT INTO `oc_order_history` (`order_history_id`, `order_id`, `order_status_id`, `notify`, `comment`, `date_added`) VALUES
(5, 3, 1, 0, '', '2015-01-20 09:40:04'),
(6, 4, 1, 0, '', '2015-01-20 09:41:18'),
(7, 5, 1, 0, '', '2015-06-25 17:20:08'),
(8, 6, 1, 0, '', '2015-06-25 17:21:42'),
(9, 7, 1, 0, '', '2015-06-26 10:14:34'),
(10, 9, 1, 0, '', '2015-06-26 10:22:52');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_option`
--

CREATE TABLE `oc_order_option` (
  `order_option_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_option`
--

INSERT INTO `oc_order_option` (`order_option_id`, `order_id`, `order_product_id`, `product_option_id`, `product_option_value_id`, `name`, `value`, `type`) VALUES
(3, 3, 9, 225, 0, 'Delivery Date', '2011-04-22', 'date'),
(4, 5, 14, 225, 0, 'Delivery Date', '2011-04-22', 'date');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_product`
--

CREATE TABLE `oc_order_product` (
  `order_product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_product`
--

INSERT INTO `oc_order_product` (`order_product_id`, `order_id`, `product_id`, `name`, `model`, `quantity`, `price`, `total`, `tax`, `reward`) VALUES
(10, 3, 43, 'MacBook', 'Product 16', 1, '500.0000', '500.0000', '0.0000', 600),
(9, 3, 47, 'HP LP3065', 'Product 21', 1, '80.0000', '80.0000', '0.0000', 300),
(8, 3, 50, 'Apple iPhone 6 128GB', 'product 11', 1, '30.0000', '30.0000', '0.0000', 0),
(7, 3, 51, 'Samsung UN55HU7250 Curved 55-Inch 4K Ultra HD 120Hz Smart LED TV', 'Product 19', 1, '1000.0000', '1000.0000', '0.0000', 0),
(11, 4, 48, 'iPod Classic', 'product 20', 1, '100.0000', '100.0000', '0.0000', 0),
(12, 4, 51, 'Samsung UN55HU7250 Curved 55-Inch 4K Ultra HD 120Hz Smart LED TV', 'Product 19', 1, '1000.0000', '1000.0000', '0.0000', 0),
(13, 5, 44, 'Lorem ipsum with Metal 14', 'Product 17', 1, '1000.0000', '1000.0000', '0.0000', 700),
(14, 5, 47, 'Lorem ipsum with Metal 17', 'Product 21', 3, '20.0000', '60.0000', '0.0000', 900),
(15, 6, 28, 'Lorem ipsum with Metal 1', 'Product 1', 1, '100.0000', '100.0000', '0.0000', 400),
(16, 6, 40, 'Lorem ipsum with Metal 11', 'product 11', 1, '30.0000', '30.0000', '0.0000', 0),
(17, 6, 29, 'Lorem ipsum with Metal 2', 'Product 2', 1, '279.9900', '279.9900', '0.0000', 0),
(18, 7, 28, 'Lorem ipsum with Metal 1', 'Product 1', 1, '100.0000', '100.0000', '0.0000', 400),
(19, 8, 44, 'Lorem ipsum with Metal 14', 'Product 17', 1, '1000.0000', '1000.0000', '0.0000', 700),
(20, 9, 44, 'Lorem ipsum with Metal 14', 'Product 17', 1, '1000.0000', '1000.0000', '0.0000', 700);

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_recurring`
--

CREATE TABLE `oc_order_recurring` (
  `order_recurring_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `recurring_name` varchar(255) NOT NULL,
  `recurring_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_recurring_transaction`
--

CREATE TABLE `oc_order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL,
  `order_recurring_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_status`
--

CREATE TABLE `oc_order_status` (
  `order_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_status`
--

INSERT INTO `oc_order_status` (`order_status_id`, `language_id`, `name`) VALUES
(2, 1, 'Processing'),
(3, 1, 'Shipped'),
(7, 1, 'Canceled'),
(5, 1, 'Complete'),
(8, 1, 'Denied'),
(9, 1, 'Canceled Reversal'),
(10, 1, 'Failed'),
(11, 1, 'Refunded'),
(12, 1, 'Reversed'),
(13, 1, 'Chargeback'),
(1, 1, 'Pending'),
(16, 1, 'Voided'),
(15, 1, 'Processed'),
(14, 1, 'Expired'),
(13, 3, 'Chargeback'),
(12, 3, 'Reversed'),
(11, 3, 'Refunded'),
(10, 3, 'Failed'),
(9, 3, 'Canceled Reversal'),
(8, 3, 'Denied'),
(5, 3, 'Complete'),
(7, 3, 'Canceled'),
(3, 3, 'Shipped'),
(2, 3, 'Processing'),
(1, 3, 'Pending'),
(16, 3, 'Voided'),
(15, 3, 'Processed'),
(14, 3, 'Expired');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_total`
--

CREATE TABLE `oc_order_total` (
  `order_total_id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_total`
--

INSERT INTO `oc_order_total` (`order_total_id`, `order_id`, `code`, `title`, `value`, `sort_order`) VALUES
(11, 3, 'total', 'Total', '1615.0000', 9),
(10, 3, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(9, 3, 'sub_total', 'Sub-Total', '1610.0000', 1),
(13, 4, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(12, 4, 'sub_total', 'Sub-Total', '1100.0000', 1),
(14, 4, 'total', 'Total', '1105.0000', 9),
(15, 5, 'sub_total', 'Sub-Total', '1060.0000', 1),
(16, 5, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(17, 5, 'total', 'Total', '1065.0000', 9),
(18, 6, 'sub_total', 'Sub-Total', '409.9900', 1),
(19, 6, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(20, 6, 'total', 'Total', '414.9900', 9),
(21, 7, 'sub_total', 'Sub-Total', '100.0000', 1),
(22, 7, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(23, 7, 'total', 'Total', '105.0000', 9),
(24, 8, 'sub_total', 'Sub-Total', '1000.0000', 1),
(25, 8, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(26, 8, 'total', 'Total', '1005.0000', 9),
(27, 9, 'sub_total', 'Sub-Total', '1000.0000', 1),
(28, 9, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(29, 9, 'total', 'Total', '1005.0000', 9);

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_voucher`
--

CREATE TABLE `oc_order_voucher` (
  `order_voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavblog_blog`
--

CREATE TABLE `oc_pavblog_blog` (
  `blog_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `created` date NOT NULL,
  `status` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  `hits` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `date_modified` date NOT NULL,
  `video_code` varchar(255) NOT NULL,
  `params` text NOT NULL,
  `tags` varchar(255) NOT NULL,
  `featured` tinyint(1) NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_pavblog_blog`
--

INSERT INTO `oc_pavblog_blog` (`blog_id`, `category_id`, `position`, `created`, `status`, `user_id`, `hits`, `image`, `meta_keyword`, `meta_description`, `meta_title`, `date_modified`, `video_code`, `params`, `tags`, `featured`, `keyword`) VALUES
(7, 21, 1, '2013-03-09', 1, 1, 195, 'catalog/demo/blogs/img1-blog-v1.jpg', '', '', '', '2015-03-20', '', '', 'joomla, prestashop, magento', 1, ''),
(9, 21, 2, '2013-03-09', 1, 1, 164, 'catalog/demo/blogs/img2-blog-v1.jpg', '', '', '', '2015-03-20', '', '', 'prestashop, magento', 0, ''),
(10, 21, 3, '2013-03-09', 1, 1, 243, 'catalog/demo/blogs/img3-blog-v1.jpg', 'test test', '', 'Custom SEO Titlte', '2015-03-20', '', '', 'prestashop', 0, ''),
(11, 21, 4, '2013-03-11', 1, 1, 341, 'catalog/demo/blogs/img4-blog-v1.jpg', '', '', '', '2015-06-08', '', '', 'opencart', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavblog_blog_description`
--

CREATE TABLE `oc_pavblog_blog_description` (
  `blog_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_pavblog_blog_description`
--

INSERT INTO `oc_pavblog_blog_description` (`blog_id`, `language_id`, `title`, `description`, `content`) VALUES
(7, 1, 'Donec tellus Nulla', '&lt;p&gt;Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum. Praesent Nam adipiscing Aliquam elit accumsan wisi sit semper scelerisque convallis. Sed quisque cum velit&lt;/p&gt;', '&lt;div class=&quot;itemFullText&quot;&gt;&lt;p&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue.&lt;/p&gt;&lt;p&gt;Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis vitae.&lt;/p&gt;&lt;p&gt;Sed mauris Pellentesque elit Aliquam at lacus interdum nascetur elit ipsum. Enim ipsum hendrerit Suspendisse turpis laoreet fames tempus ligula pede ac. Et Lorem penatibus orci eu ultrices egestas Nam quam Vivamus nibh. Morbi condimentum molestie Nam enim odio sodales pretium eros sem pellentesque. Sit tellus Integer elit egestas lacus turpis id auctor nascetur ut. Ac elit vitae.&lt;/p&gt;&lt;p&gt;Mi vitae magnis Fusce laoreet nibh felis porttitor laoreet Vestibulum faucibus. At Nulla id tincidunt ut sed semper vel Lorem condimentum ornare. Laoreet Vestibulum lacinia massa a commodo habitasse velit Vestibulum tincidunt In. Turpis at eleifend leo mi elit Aenean porta ac sed faucibus. Nunc urna Morbi fringilla vitae orci convallis condimentum auctor sit dui. Urna pretium elit mauris cursus Curabitur at elit Vestibulum.&lt;/p&gt;&lt;/div&gt;'),
(7, 2, 'Donec tellus Nulla', '&lt;p&gt;Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum. Praesent Nam adipiscing Aliquam elit accumsan wisi sit semper scelerisque convallis. Sed quisque cum velit&lt;/p&gt;', '&lt;div class=&quot;itemFullText&quot;&gt;&lt;p&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue.&lt;/p&gt;&lt;p&gt;Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis vitae.&lt;/p&gt;&lt;p&gt;Sed mauris Pellentesque elit Aliquam at lacus interdum nascetur elit ipsum. Enim ipsum hendrerit Suspendisse turpis laoreet fames tempus ligula pede ac. Et Lorem penatibus orci eu ultrices egestas Nam quam Vivamus nibh. Morbi condimentum molestie Nam enim odio sodales pretium eros sem pellentesque. Sit tellus Integer elit egestas lacus turpis id auctor nascetur ut. Ac elit vitae.&lt;/p&gt;&lt;p&gt;Mi vitae magnis Fusce laoreet nibh felis porttitor laoreet Vestibulum faucibus. At Nulla id tincidunt ut sed semper vel Lorem condimentum ornare. Laoreet Vestibulum lacinia massa a commodo habitasse velit Vestibulum tincidunt In. Turpis at eleifend leo mi elit Aenean porta ac sed faucibus. Nunc urna Morbi fringilla vitae orci convallis condimentum auctor sit dui. Urna pretium elit mauris cursus Curabitur at elit Vestibulum.&lt;/p&gt;&lt;/div&gt;'),
(9, 1, 'Donec tellus ', '&lt;p&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue&lt;/p&gt;', '&lt;div class=&quot;itemFullText&quot;&gt;&lt;p&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue.&lt;/p&gt;&lt;p&gt;Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis vitae.&lt;/p&gt;&lt;p&gt;Sed mauris Pellentesque elit Aliquam at lacus interdum nascetur elit ipsum. Enim ipsum hendrerit Suspendisse turpis laoreet fames tempus ligula pede ac. Et Lorem penatibus orci eu ultrices egestas Nam quam Vivamus nibh. Morbi condimentum molestie Nam enim odio sodales pretium eros sem pellentesque. Sit tellus Integer elit egestas lacus turpis id auctor nascetur ut. Ac elit vitae.&lt;/p&gt;&lt;p&gt;Mi vitae magnis Fusce laoreet nibh felis porttitor laoreet Vestibulum faucibus. At Nulla id tincidunt ut sed semper vel Lorem condimentum ornare. Laoreet Vestibulum lacinia massa a commodo habitasse velit Vestibulum tincidunt In. Turpis at eleifend leo mi elit Aenean porta ac sed faucibus. Nunc urna Morbi fringilla vitae orci convallis condimentum auctor sit dui. Urna pretium elit mauris cursus Curabitur at elit Vestibulum.&lt;/p&gt;&lt;/div&gt;'),
(9, 2, 'Donec tellus ', '&lt;p&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue&lt;/p&gt;', '&lt;div class=&quot;itemFullText&quot;&gt;&lt;p&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue.&lt;/p&gt;&lt;p&gt;Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis vitae.&lt;/p&gt;&lt;p&gt;Sed mauris Pellentesque elit Aliquam at lacus interdum nascetur elit ipsum. Enim ipsum hendrerit Suspendisse turpis laoreet fames tempus ligula pede ac. Et Lorem penatibus orci eu ultrices egestas Nam quam Vivamus nibh. Morbi condimentum molestie Nam enim odio sodales pretium eros sem pellentesque. Sit tellus Integer elit egestas lacus turpis id auctor nascetur ut. Ac elit vitae.&lt;/p&gt;&lt;p&gt;Mi vitae magnis Fusce laoreet nibh felis porttitor laoreet Vestibulum faucibus. At Nulla id tincidunt ut sed semper vel Lorem condimentum ornare. Laoreet Vestibulum lacinia massa a commodo habitasse velit Vestibulum tincidunt In. Turpis at eleifend leo mi elit Aenean porta ac sed faucibus. Nunc urna Morbi fringilla vitae orci convallis condimentum auctor sit dui. Urna pretium elit mauris cursus Curabitur at elit Vestibulum.&lt;/p&gt;&lt;/div&gt;'),
(10, 1, 'Donec tellus Nulla lorem', '&lt;p&gt;&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.&lt;/p&gt;', '&lt;p&gt;Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur? Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur? Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&lt;/p&gt;'),
(10, 2, 'Donec tellus Nulla lorem', '&lt;p&gt;&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.&lt;/p&gt;', '&lt;p&gt;Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur? Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur? Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&lt;/p&gt;'),
(11, 1, 'Urna pretium elit mauris cursus Curabitur at elit Vestibulum', '&lt;p&gt;Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis vitae.&lt;/p&gt;', '&lt;div class=&quot;itemFullText&quot;&gt;&lt;p&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue.&lt;/p&gt;&lt;p&gt;Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis vitae.&lt;/p&gt;&lt;p&gt;Sed mauris Pellentesque elit Aliquam at lacus interdum nascetur elit ipsum. Enim ipsum hendrerit Suspendisse turpis laoreet fames tempus ligula pede ac. Et Lorem penatibus orci eu ultrices egestas Nam quam Vivamus nibh. Morbi condimentum molestie Nam enim odio sodales pretium eros sem pellentesque. Sit tellus Integer elit egestas lacus turpis id auctor nascetur ut. Ac elit vitae.&lt;/p&gt;&lt;p&gt;Mi vitae magnis Fusce laoreet nibh felis porttitor laoreet Vestibulum faucibus. At Nulla id tincidunt ut sed semper vel Lorem condimentum ornare. Laoreet Vestibulum lacinia massa a commodo habitasse velit Vestibulum tincidunt In. Turpis at eleifend leo mi elit Aenean porta ac sed faucibus. Nunc urna Morbi fringilla vitae orci convallis condimentum auctor sit dui. Urna pretium elit mauris cursus Curabitur at elit Vestibulum.&lt;/p&gt;&lt;/div&gt;'),
(11, 2, 'Urna pretium elit mauris cursus Curabitur at elit Vestibulum', '&lt;p&gt;Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis vitae.&lt;/p&gt;', '&lt;div class=&quot;itemFullText&quot;&gt;&lt;p&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue.&lt;/p&gt;&lt;p&gt;Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis vitae.&lt;/p&gt;&lt;p&gt;Sed mauris Pellentesque elit Aliquam at lacus interdum nascetur elit ipsum. Enim ipsum hendrerit Suspendisse turpis laoreet fames tempus ligula pede ac. Et Lorem penatibus orci eu ultrices egestas Nam quam Vivamus nibh. Morbi condimentum molestie Nam enim odio sodales pretium eros sem pellentesque. Sit tellus Integer elit egestas lacus turpis id auctor nascetur ut. Ac elit vitae.&lt;/p&gt;&lt;p&gt;Mi vitae magnis Fusce laoreet nibh felis porttitor laoreet Vestibulum faucibus. At Nulla id tincidunt ut sed semper vel Lorem condimentum ornare. Laoreet Vestibulum lacinia massa a commodo habitasse velit Vestibulum tincidunt In. Turpis at eleifend leo mi elit Aenean porta ac sed faucibus. Nunc urna Morbi fringilla vitae orci convallis condimentum auctor sit dui. Urna pretium elit mauris cursus Curabitur at elit Vestibulum.&lt;/p&gt;&lt;/div&gt;');

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavblog_category`
--

CREATE TABLE `oc_pavblog_category` (
  `category_id` int(11) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT '',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `is_group` smallint(6) NOT NULL DEFAULT '2',
  `width` varchar(255) DEFAULT NULL,
  `submenu_width` varchar(255) DEFAULT NULL,
  `colum_width` varchar(255) DEFAULT NULL,
  `submenu_colum_width` varchar(255) DEFAULT NULL,
  `item` varchar(255) DEFAULT NULL,
  `colums` varchar(255) DEFAULT '1',
  `type` varchar(255) NOT NULL,
  `is_content` smallint(6) NOT NULL DEFAULT '2',
  `show_title` smallint(6) NOT NULL DEFAULT '1',
  `meta_keyword` varchar(255) NOT NULL DEFAULT '1',
  `level_depth` smallint(6) NOT NULL DEFAULT '0',
  `published` smallint(6) NOT NULL DEFAULT '1',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `position` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `show_sub` smallint(6) NOT NULL DEFAULT '0',
  `url` varchar(255) DEFAULT NULL,
  `target` varchar(25) DEFAULT NULL,
  `privacy` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `position_type` varchar(25) DEFAULT 'top',
  `menu_class` varchar(25) DEFAULT NULL,
  `description` text,
  `meta_description` text,
  `meta_title` varchar(255) DEFAULT NULL,
  `level` int(11) NOT NULL,
  `left` int(11) NOT NULL,
  `right` int(11) NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_pavblog_category`
--

INSERT INTO `oc_pavblog_category` (`category_id`, `image`, `parent_id`, `is_group`, `width`, `submenu_width`, `colum_width`, `submenu_colum_width`, `item`, `colums`, `type`, `is_content`, `show_title`, `meta_keyword`, `level_depth`, `published`, `store_id`, `position`, `show_sub`, `url`, `target`, `privacy`, `position_type`, `menu_class`, `description`, `meta_description`, `meta_title`, `level`, `left`, `right`, `keyword`) VALUES
(1, '', 0, 2, NULL, NULL, NULL, NULL, NULL, '1', '', 2, 1, '1', 0, 1, 0, 0, 0, NULL, NULL, 0, 'top', NULL, NULL, NULL, NULL, -5, 34, 47, ''),
(20, 'data/pavblog/pav-c3.jpg', 22, 2, NULL, NULL, NULL, NULL, NULL, '1', '', 2, 1, '1', 0, 1, 0, 2, 0, NULL, NULL, 0, 'top', 'test test', NULL, '', '', 0, 0, 0, ''),
(21, 'catalog/demo/banners/iPhone6.jpg', 22, 2, NULL, NULL, NULL, NULL, NULL, '1', '', 2, 1, '1', 0, 1, 0, 1, 0, NULL, NULL, 0, 'top', '', NULL, '', '', 0, 0, 0, ''),
(22, 'catalog/demo/banners/iPhone6.jpg', 1, 2, NULL, NULL, NULL, NULL, NULL, '1', '', 2, 1, '1', 0, 1, 0, 1, 0, NULL, NULL, 0, 'top', '', NULL, '', '', 0, 0, 0, ''),
(23, 'data/pavblog/pav-c2.jpg', 24, 2, NULL, NULL, NULL, NULL, NULL, '1', '', 2, 1, '1', 0, 1, 0, 1, 0, NULL, NULL, 0, 'top', '', NULL, '', '', 0, 0, 0, ''),
(24, 'data/logo.png', 1, 2, NULL, NULL, NULL, NULL, NULL, '1', '', 2, 1, '1', 0, 1, 0, 2, 0, NULL, NULL, 0, 'top', '', NULL, '', '', 0, 0, 0, ''),
(25, '', 21, 2, NULL, NULL, NULL, NULL, NULL, '1', '', 2, 1, '', 0, 1, 0, 1, 0, NULL, NULL, 0, 'top', '', NULL, '', '', 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavblog_category_description`
--

CREATE TABLE `oc_pavblog_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_pavblog_category_description`
--

INSERT INTO `oc_pavblog_category_description` (`category_id`, `language_id`, `title`, `description`) VALUES
(1, 1, 'ROOT', 'Menu Root'),
(22, 1, 'Demo Category 1', '&lt;p&gt;Enter your Category 1 Description Here&lt;/p&gt;\r\n'),
(24, 1, 'Demo Category 2', '&lt;p&gt;Description Here&lt;/p&gt;\r\n'),
(21, 1, 'Demo Category 1 2-1', '&lt;p&gt;Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum. Praesent Nam adipiscing Aliquam elit accumsan wisi sit semper scelerisque convallis&lt;/p&gt;\r\n'),
(23, 1, 'Demo Category 1-2-2', '&lt;p&gt;Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum. Praesent Nam adipiscing Aliquam elit accumsan wisi sit semper scelerisque convallis&lt;/p&gt;\r\n'),
(20, 1, 'Demo Category 1-2', '&lt;p&gt;Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum. Praesent Nam adipiscing Aliquam elit accumsan wisi sit semper scelerisque convallis&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n'),
(25, 1, 'Demo Category 1-2-3-1', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;'),
(22, 2, 'Demo Category 1', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;'),
(21, 2, 'Demo Category 1 2-1', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;'),
(25, 2, 'Demo Category 1 2-1', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;'),
(20, 2, 'Demo Category 1 2-1', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;'),
(24, 2, 'Demo Category 1 2-1', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;'),
(23, 2, 'Demo Category 1 2-1', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;');

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavblog_comment`
--

CREATE TABLE `oc_pavblog_comment` (
  `comment_id` int(11) UNSIGNED NOT NULL,
  `blog_id` int(11) UNSIGNED NOT NULL,
  `comment` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `user` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_pavblog_comment`
--

INSERT INTO `oc_pavblog_comment` (`comment_id`, `blog_id`, `comment`, `status`, `created`, `user`, `email`) VALUES
(6, 10, 'Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur mag Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur mag', 1, '2013-03-12 14:23:09', 'ha cong tien', 'hatuhn@gmail.com'),
(7, 10, 'Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur mag', 1, '2013-03-12 14:25:19', 'ha cong tien', 'hatuhn@gmail.com'),
(8, 10, 'Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur mag Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur mag', 1, '2013-03-12 14:30:17', 'Test Test ', 'ngoisao@aa.com'),
(9, 7, 'Mi vitae magnis Fusce laoreet nibh felis porttitor laoreet Vestibulum faucibus. At Nulla id tincidunt ut sed semper vel Lorem condimentum ornare. Laoreet Vestibulum lacinia massa a commodo habitasse velit Vestibulum tincidunt In. Turpis at eleifend leo mi elit Aenean porta ac sed faucibus. Nunc urna Morbi fringilla vitae orci convallis condimentum auctor sit dui. Urna pretium elit mauris cursus Curabitur at elit Vestibulum.', 1, '2014-12-24 10:08:45', 'Ngoc', 'dangtienngoc@hotmail.com'),
(10, 11, 'jhfdjgh dghjdgh', 0, '2015-04-21 16:40:52', 'DEMO', 'DEMO@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavnewsletter_email`
--

CREATE TABLE `oc_pavnewsletter_email` (
  `email_id` int(11) NOT NULL,
  `template_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `attach` varchar(200) DEFAULT NULL,
  `message` text,
  `customer_group_id` int(11) DEFAULT NULL,
  `affiliate` varchar(255) DEFAULT NULL,
  `customer` varchar(255) DEFAULT NULL,
  `product` varchar(255) DEFAULT NULL,
  `defined` varchar(255) DEFAULT NULL,
  `special` varchar(255) DEFAULT NULL,
  `latest` varchar(255) DEFAULT NULL,
  `popular` varchar(255) DEFAULT NULL,
  `defined_categories` varchar(255) DEFAULT NULL,
  `categories` varchar(255) DEFAULT NULL,
  `defined_products` varchar(255) DEFAULT NULL,
  `defined_products_more` varchar(255) DEFAULT NULL,
  `only_selected_language` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `to` varchar(200) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavnewsletter_history`
--

CREATE TABLE `oc_pavnewsletter_history` (
  `id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `template_id` int(11) NOT NULL,
  `public_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `to` varchar(255) NOT NULL,
  `subject` text,
  `message` text,
  `date_added` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavnewsletter_subscribe`
--

CREATE TABLE `oc_pavnewsletter_subscribe` (
  `subscribe_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT '0',
  `store_id` int(11) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `action` tinyint(4) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_pavnewsletter_subscribe`
--

INSERT INTO `oc_pavnewsletter_subscribe` (`subscribe_id`, `customer_id`, `store_id`, `email`, `action`) VALUES
(1, 0, 0, 'dssd@gmail.com', 1),
(2, 0, 0, 'nmc2010@gmail.com', 1),
(3, 2, 0, 'abc@gmail.com', 1),
(4, 4, 0, 'admin@gmail.com', 1),
(5, 0, 0, 'admidn@gmail.com', 1),
(6, 0, 0, 'admfin@gmail.com', 1),
(7, 0, 0, 'admdin@gmail.com', 1),
(8, 0, 0, 'admdddin@gmail.com', 1),
(9, 0, 0, '', 1),
(10, 0, 0, '', 1),
(11, 0, 0, '', 1),
(12, 0, 0, '', 1),
(13, 0, 0, '', 1),
(14, 0, 0, '', 1),
(15, 0, 0, '', 1),
(16, 0, 0, '', 1),
(17, 0, 0, '', 1),
(18, 0, 0, '', 1),
(19, 0, 0, '', 1),
(20, 0, 0, '', 1),
(21, 0, 0, '', 1),
(22, 0, 0, '', 1),
(23, 0, 0, '', 1),
(24, 0, 0, '', 1),
(25, 0, 0, '', 1),
(26, 0, 0, '', 1),
(27, 0, 0, '', 1),
(28, 0, 0, '', 1),
(29, 0, 0, '', 1),
(30, 0, 0, '', 1),
(31, 0, 0, '', 1),
(32, 0, 0, '', 1),
(33, 0, 0, 'bbb ggg', 1),
(34, 0, 0, 'adada', 1),
(35, 0, 0, '', 1),
(36, 0, 0, '', 1),
(37, 0, 0, 'Your email address', 1),
(38, 0, 0, '', 1),
(39, 0, 0, '', 1),
(40, 0, 0, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavnewsletter_template`
--

CREATE TABLE `oc_pavnewsletter_template` (
  `template_id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `hits` tinyint(4) DEFAULT '0',
  `template_file` varchar(200) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT '0',
  `date_added` datetime DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavnewsletter_template_description`
--

CREATE TABLE `oc_pavnewsletter_template_description` (
  `template_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `template_message` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavoslidergroups`
--

CREATE TABLE `oc_pavoslidergroups` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `params` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_pavoslidergroups`
--

INSERT INTO `oc_pavoslidergroups` (`id`, `title`, `params`) VALUES
(8, 'Default', 'a:28:{s:5:"title";s:7:"Default";s:5:"delay";s:4:"9000";s:9:"fullwidth";s:9:"fullwidth";s:5:"width";s:3:"874";s:6:"height";s:3:"450";s:12:"touch_mobile";s:1:"0";s:13:"stop_on_hover";s:1:"0";s:12:"shuffle_mode";s:1:"0";s:14:"image_cropping";s:1:"0";s:11:"shadow_type";s:1:"0";s:14:"show_time_line";s:1:"0";s:18:"time_line_position";s:6:"bottom";s:16:"background_color";s:0:"";s:6:"margin";s:1:"0";s:7:"padding";s:1:"0";s:16:"background_image";s:1:"0";s:14:"background_url";s:0:"";s:14:"navigator_type";s:4:"none";s:16:"navigator_arrows";s:4:"none";s:16:"navigation_style";s:6:"navbar";s:17:"offset_horizontal";s:1:"0";s:15:"offset_vertical";s:2:"20";s:14:"show_navigator";s:1:"0";s:20:"hide_navigator_after";s:2:"50";s:15:"thumbnail_width";s:3:"100";s:16:"thumbnail_height";s:2:"50";s:16:"thumbnail_amount";s:1:"5";s:17:"hide_screen_width";s:0:"";}'),
(13, 'Slider Groups 2', 'a:28:{s:5:"title";s:15:"Slider Groups 2";s:5:"delay";s:4:"9000";s:9:"fullwidth";s:10:"fullscreen";s:5:"width";s:4:"1920";s:6:"height";s:3:"622";s:12:"touch_mobile";s:1:"1";s:13:"stop_on_hover";s:1:"1";s:12:"shuffle_mode";s:1:"0";s:14:"image_cropping";s:1:"0";s:11:"shadow_type";s:1:"0";s:14:"show_time_line";s:1:"0";s:18:"time_line_position";s:3:"top";s:16:"background_color";s:0:"";s:6:"margin";s:1:"0";s:7:"padding";s:1:"0";s:16:"background_image";s:1:"0";s:14:"background_url";s:0:"";s:14:"navigator_type";s:6:"bullet";s:16:"navigator_arrows";s:16:"verticalcentered";s:16:"navigation_style";s:5:"round";s:17:"offset_horizontal";s:1:"0";s:15:"offset_vertical";s:2:"20";s:14:"show_navigator";s:1:"0";s:20:"hide_navigator_after";s:3:"200";s:15:"thumbnail_width";s:3:"100";s:16:"thumbnail_height";s:2:"50";s:16:"thumbnail_amount";s:1:"5";s:17:"hide_screen_width";s:0:"";}');

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavosliderlayers`
--

CREATE TABLE `oc_pavosliderlayers` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `params` text NOT NULL,
  `layersparams` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `position` int(11) NOT NULL,
  `language_id` int(11) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_pavosliderlayers`
--

INSERT INTO `oc_pavosliderlayers` (`id`, `title`, `parent_id`, `group_id`, `params`, `layersparams`, `image`, `status`, `position`, `language_id`) VALUES
(64, 'slide1', 0, 8, 'a:17:{s:2:"id";s:2:"64";s:15:"slider_group_id";s:1:"8";s:12:"slider_title";s:6:"slide1";s:18:"slider_language_id";s:1:"1";s:13:"slider_status";s:1:"1";s:17:"slider_transition";s:6:"random";s:11:"slider_slot";s:1:"7";s:15:"slider_rotation";s:1:"0";s:15:"slider_duration";s:3:"300";s:12:"slider_delay";s:1:"0";s:11:"slider_link";s:0:"";s:16:"slider_thumbnail";s:0:"";s:15:"slider_usevideo";s:1:"0";s:14:"slider_videoid";s:0:"";s:16:"slider_videoplay";s:1:"0";s:9:"slider_id";s:2:"64";s:12:"slider_image";s:29:"catalog/fishing-equipment.jpg";}', 'O:8:"stdClass":1:{s:6:"layers";a:2:{i:0;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:1;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:12:"blackcaption";s:13:"layer_caption";s:103:"Dụng cụ câu cá &lt;br&gt;&lt;strong&gt;NỘI ĐỊA NHẬT&lt;/strong&gt; dành riêng cho bạn!";s:15:"layer_animation";s:12:"randomrotate";s:12:"layer_easing";s:11:"easeInQuart";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"318";s:10:"layer_left";s:3:"484";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:15:"randomrotateout";s:15:"layer_endeasing";s:14:"easeInOutQuint";s:10:"time_start";s:4:"3718";}i:1;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:2;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:0:"";s:13:"layer_caption";s:98:"&lt;a href=&quot;#&quot; class=&quot;btn btn-success btn-lg radius-4x&quot;&gt;know more&lt;/a&gt;";s:15:"layer_animation";s:3:"lfb";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"280";s:10:"layer_left";s:2:"99";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:3:"stb";s:15:"layer_endeasing";s:11:"easeInQuint";s:10:"time_start";s:4:"6171";}}}', 'catalog/fishing-equipment.jpg', 1, 0, 1),
(51, 'Slide 1', 0, 13, 'a:17:{s:2:"id";s:2:"51";s:15:"slider_group_id";s:2:"13";s:12:"slider_title";s:7:"Slide 1";s:18:"slider_language_id";s:1:"1";s:13:"slider_status";s:1:"1";s:17:"slider_transition";s:6:"random";s:11:"slider_slot";s:1:"7";s:15:"slider_rotation";s:1:"0";s:15:"slider_duration";s:3:"300";s:12:"slider_delay";s:1:"0";s:11:"slider_link";s:0:"";s:16:"slider_thumbnail";s:0:"";s:15:"slider_usevideo";s:1:"0";s:14:"slider_videoid";s:0:"";s:16:"slider_videoplay";s:1:"0";s:9:"slider_id";s:2:"51";s:12:"slider_image";s:33:"catalog/demo/slider/slider-03.jpg";}', 'O:8:"stdClass":1:{s:6:"layers";a:4:{i:0;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:1;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:13:"text-white-60";s:13:"layer_caption";s:8:"iphone 6";s:15:"layer_animation";s:3:"lft";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"173";s:10:"layer_left";s:3:"573";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:15:"randomrotateout";s:15:"layer_endeasing";s:11:"easeOutBack";s:10:"time_start";s:3:"600";}i:1;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:2;s:13:"layer_content";s:30:"catalog/demo/slider/slide1.png";s:10:"layer_type";s:5:"image";s:11:"layer_class";s:0:"";s:13:"layer_caption";s:17:"Your Image Here 5";s:15:"layer_animation";s:3:"lfr";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"135";s:10:"layer_left";s:4:"1050";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:3:"ltr";s:15:"layer_endeasing";s:12:"easeOutQuint";s:10:"time_start";s:4:"1200";}i:2;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:3;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:13:"text-white-24";s:13:"layer_caption";s:88:"The sign of design.&lt;br&gt;&lt;strong&gt;register now&lt;/strong&gt; for the next sale";s:15:"layer_animation";s:3:"lfl";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"240";s:10:"layer_left";s:3:"573";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:3:"ltl";s:15:"layer_endeasing";s:15:"easeInOutBounce";s:10:"time_start";s:4:"2400";}i:3;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:4;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:0:"";s:13:"layer_caption";s:98:"&lt;a href=&quot;#&quot; class=&quot;btn btn-success btn-lg radius-4x&quot;&gt;know more&lt;/a&gt;";s:15:"layer_animation";s:12:"randomrotate";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"330";s:10:"layer_left";s:3:"573";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:15:"randomrotateout";s:15:"layer_endeasing";s:14:"easeInOutQuart";s:10:"time_start";s:4:"4800";}}}', 'catalog/demo/slider/slider-03.jpg', 1, 2, 1),
(66, 'Slide 2', 0, 13, 'a:17:{s:2:"id";s:2:"66";s:15:"slider_group_id";s:2:"13";s:12:"slider_title";s:7:"Slide 2";s:18:"slider_language_id";s:1:"1";s:13:"slider_status";s:1:"1";s:17:"slider_transition";s:6:"random";s:11:"slider_slot";s:1:"7";s:15:"slider_rotation";s:1:"0";s:15:"slider_duration";s:3:"300";s:12:"slider_delay";s:1:"0";s:11:"slider_link";s:0:"";s:16:"slider_thumbnail";s:0:"";s:15:"slider_usevideo";s:1:"0";s:14:"slider_videoid";s:0:"";s:16:"slider_videoplay";s:1:"0";s:9:"slider_id";s:2:"66";s:12:"slider_image";s:33:"catalog/demo/slider/slider-04.jpg";}', 'O:8:"stdClass":1:{s:6:"layers";a:3:{i:0;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:1;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:11:"text-red-60";s:13:"layer_caption";s:21:" seasonal decorations";s:15:"layer_animation";s:3:"lft";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"159";s:10:"layer_left";s:4:"1034";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:15:"randomrotateout";s:15:"layer_endeasing";s:11:"easeOutBack";s:10:"time_start";s:3:"600";}i:1;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:2;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:13:"text-black-24";s:13:"layer_caption";s:86:"exciting offers on &lt;br&gt;children’s &lt;strong&gt;christmas gifts&lt;/strong&gt;";s:15:"layer_animation";s:3:"lfl";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"293";s:10:"layer_left";s:4:"1034";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:3:"ltl";s:15:"layer_endeasing";s:15:"easeInOutBounce";s:10:"time_start";s:4:"2400";}i:2;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:3;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:0:"";s:13:"layer_caption";s:98:"&lt;a href=&quot;#&quot; class=&quot;btn btn-success btn-lg radius-4x&quot;&gt;know more&lt;/a&gt;";s:15:"layer_animation";s:12:"randomrotate";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"398";s:10:"layer_left";s:4:"1034";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:15:"randomrotateout";s:15:"layer_endeasing";s:14:"easeInOutQuart";s:10:"time_start";s:4:"4800";}}}', 'catalog/demo/slider/slider-04.jpg', 1, 2, 1),
(67, 'slide1', 0, 8, 'a:17:{s:2:"id";s:2:"64";s:15:"slider_group_id";s:1:"8";s:12:"slider_title";s:6:"slide1";s:18:"slider_language_id";s:1:"1";s:13:"slider_status";s:1:"1";s:17:"slider_transition";s:6:"random";s:11:"slider_slot";s:1:"7";s:15:"slider_rotation";s:1:"0";s:15:"slider_duration";s:3:"300";s:12:"slider_delay";s:1:"0";s:11:"slider_link";s:0:"";s:16:"slider_thumbnail";s:0:"";s:15:"slider_usevideo";s:1:"0";s:14:"slider_videoid";s:0:"";s:16:"slider_videoplay";s:1:"0";s:9:"slider_id";s:2:"64";s:12:"slider_image";s:33:"catalog/demo/slider/slider-01.jpg";}', 'O:8:"stdClass":1:{s:6:"layers";a:4:{i:0;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:1;s:13:"layer_content";s:30:"catalog/demo/slider/slide1.png";s:10:"layer_type";s:5:"image";s:11:"layer_class";s:0:"";s:13:"layer_caption";s:17:"Your Image Here 1";s:15:"layer_animation";s:3:"sfr";s:12:"layer_easing";s:10:"easeInSine";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:2:"50";s:10:"layer_left";s:3:"480";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:3:"ltr";s:15:"layer_endeasing";s:10:"easeInSine";s:10:"time_start";s:3:"800";}i:1;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:2;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:13:"text-white-60";s:13:"layer_caption";s:8:"iphone 6";s:15:"layer_animation";s:3:"lfl";s:12:"layer_easing";s:11:"easeOutQuad";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"112";s:10:"layer_left";s:2:"99";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:3:"ltl";s:15:"layer_endeasing";s:14:"easeInOutQuint";s:10:"time_start";s:4:"1600";}i:2;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:3;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:13:"text-white-24";s:13:"layer_caption";s:88:"The sign of design.&lt;br&gt;&lt;strong&gt;register now&lt;/strong&gt; for the next sale";s:15:"layer_animation";s:12:"randomrotate";s:12:"layer_easing";s:11:"easeInQuart";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"180";s:10:"layer_left";s:2:"99";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:15:"randomrotateout";s:15:"layer_endeasing";s:14:"easeInOutQuint";s:10:"time_start";s:4:"3200";}i:3;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:4;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:0:"";s:13:"layer_caption";s:98:"&lt;a href=&quot;#&quot; class=&quot;btn btn-success btn-lg radius-4x&quot;&gt;know more&lt;/a&gt;";s:15:"layer_animation";s:3:"lfb";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"280";s:10:"layer_left";s:2:"99";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:3:"stb";s:15:"layer_endeasing";s:11:"easeInQuint";s:10:"time_start";s:4:"9800";}}}', 'catalog/demo/slider/slider-01.jpg', 1, 0, 2),
(68, 'Slide2', 0, 8, 'a:17:{s:2:"id";s:2:"65";s:15:"slider_group_id";s:1:"8";s:12:"slider_title";s:6:"Slide2";s:18:"slider_language_id";s:1:"1";s:13:"slider_status";s:1:"1";s:17:"slider_transition";s:6:"random";s:11:"slider_slot";s:1:"7";s:15:"slider_rotation";s:1:"0";s:15:"slider_duration";s:3:"300";s:12:"slider_delay";s:1:"0";s:11:"slider_link";s:0:"";s:16:"slider_thumbnail";s:0:"";s:15:"slider_usevideo";s:1:"0";s:14:"slider_videoid";s:0:"";s:16:"slider_videoplay";s:1:"0";s:9:"slider_id";s:2:"65";s:12:"slider_image";s:33:"catalog/demo/slider/slider-02.jpg";}', 'O:8:"stdClass":1:{s:6:"layers";a:3:{i:0;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:1;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:11:"text-red-60";s:13:"layer_caption";s:21:" seasonal decorations";s:15:"layer_animation";s:3:"lfl";s:12:"layer_easing";s:11:"easeOutQuad";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:2:"90";s:10:"layer_left";s:3:"400";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:3:"ltl";s:15:"layer_endeasing";s:14:"easeInOutQuint";s:10:"time_start";s:4:"1600";}i:1;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:2;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:13:"text-black-24";s:13:"layer_caption";s:85:" exciting offers on&lt;br&gt;children’s&lt;strong&gt;christmas gifts&lt;/strong&gt;";s:15:"layer_animation";s:12:"randomrotate";s:12:"layer_easing";s:11:"easeInQuart";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"220";s:10:"layer_left";s:3:"400";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:15:"randomrotateout";s:15:"layer_endeasing";s:14:"easeInOutQuint";s:10:"time_start";s:4:"3200";}i:2;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:3;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:0:"";s:13:"layer_caption";s:98:"&lt;a href=&quot;#&quot; class=&quot;btn btn-success btn-lg radius-4x&quot;&gt;know more&lt;/a&gt;";s:15:"layer_animation";s:3:"lfb";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"310";s:10:"layer_left";s:3:"400";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:3:"stb";s:15:"layer_endeasing";s:11:"easeInQuint";s:10:"time_start";s:4:"9800";}}}', 'catalog/demo/slider/slider-02.jpg', 1, 0, 2),
(61, 'Slide 1', 0, 13, 'a:17:{s:2:"id";s:2:"51";s:15:"slider_group_id";s:2:"13";s:12:"slider_title";s:7:"Slide 1";s:18:"slider_language_id";s:1:"1";s:13:"slider_status";s:1:"1";s:17:"slider_transition";s:6:"random";s:11:"slider_slot";s:1:"7";s:15:"slider_rotation";s:1:"0";s:15:"slider_duration";s:3:"300";s:12:"slider_delay";s:1:"0";s:11:"slider_link";s:0:"";s:16:"slider_thumbnail";s:0:"";s:15:"slider_usevideo";s:1:"0";s:14:"slider_videoid";s:0:"";s:16:"slider_videoplay";s:1:"0";s:9:"slider_id";s:2:"51";s:12:"slider_image";s:36:"catalog/demo/slider/slide1-home2.jpg";}', 'O:8:"stdClass":1:{s:6:"layers";a:4:{i:0;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:1;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:23:"text-white-30 width-100";s:13:"layer_caption";s:13:"spring trends";s:15:"layer_animation";s:3:"lft";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"350";s:10:"layer_left";s:1:"0";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:15:"randomrotateout";s:15:"layer_endeasing";s:11:"easeOutBack";s:10:"time_start";s:3:"600";}i:1;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:2;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:24:"text-white-100 width-100";s:13:"layer_caption";s:8:"toulouse";s:15:"layer_animation";s:12:"randomrotate";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"415";s:10:"layer_left";s:1:"0";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:3:"stl";s:15:"layer_endeasing";s:15:"easeInOutBounce";s:10:"time_start";s:4:"1000";}i:2;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:3;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:27:"text-white-small border-tb ";s:13:"layer_caption";s:19:"looks of the season";s:15:"layer_animation";s:12:"randomrotate";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"540";s:10:"layer_left";s:3:"488";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:3:"ltr";s:15:"layer_endeasing";s:11:"easeOutExpo";s:10:"time_start";s:4:"1400";}i:3;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:4;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:9:"width-100";s:13:"layer_caption";s:105:"&lt;a href=&quot;#&quot; class=&quot;btn btn-outline-success btn-md radius-4x&quot;&gt;shop now&lt;/a&gt;";s:15:"layer_animation";s:12:"randomrotate";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"610";s:10:"layer_left";s:1:"0";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:15:"randomrotateout";s:15:"layer_endeasing";s:14:"easeInOutQuart";s:10:"time_start";s:4:"2800";}}}', 'catalog/demo/slider/slide1-home2.jpg', 1, 2, 2),
(62, 'Slide 2', 0, 13, 'a:17:{s:2:"id";s:2:"44";s:15:"slider_group_id";s:2:"13";s:12:"slider_title";s:7:"Slide 2";s:18:"slider_language_id";s:1:"1";s:13:"slider_status";s:1:"1";s:17:"slider_transition";s:6:"random";s:11:"slider_slot";s:1:"7";s:15:"slider_rotation";s:1:"0";s:15:"slider_duration";s:3:"300";s:12:"slider_delay";s:1:"0";s:11:"slider_link";s:0:"";s:16:"slider_thumbnail";s:0:"";s:15:"slider_usevideo";s:1:"0";s:14:"slider_videoid";s:0:"";s:16:"slider_videoplay";s:1:"0";s:9:"slider_id";s:2:"44";s:12:"slider_image";s:36:"catalog/demo/slider/slide2-home2.jpg";}', 'O:8:"stdClass":1:{s:6:"layers";a:4:{i:0;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:1;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:23:"text-white-30 width-100";s:13:"layer_caption";s:17:"Refreshing Styles";s:15:"layer_animation";s:3:"lft";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"350";s:10:"layer_left";s:1:"0";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:15:"randomrotateout";s:15:"layer_endeasing";s:11:"easeOutBack";s:10:"time_start";s:3:"600";}i:1;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:2;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:24:"text-white-100 width-100";s:13:"layer_caption";s:8:"sneakers";s:15:"layer_animation";s:12:"randomrotate";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"415";s:10:"layer_left";s:1:"0";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:3:"stl";s:15:"layer_endeasing";s:15:"easeInOutBounce";s:10:"time_start";s:4:"1000";}i:2;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:3;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:27:"text-white-small border-tb ";s:13:"layer_caption";s:19:"looks of the season";s:15:"layer_animation";s:12:"randomrotate";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"540";s:10:"layer_left";s:3:"488";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:3:"ltr";s:15:"layer_endeasing";s:11:"easeOutExpo";s:10:"time_start";s:4:"1400";}i:3;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:4;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:9:"width-100";s:13:"layer_caption";s:105:"&lt;a href=&quot;#&quot; class=&quot;btn btn-outline-success btn-md radius-4x&quot;&gt;shop now&lt;/a&gt;";s:15:"layer_animation";s:12:"randomrotate";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"610";s:10:"layer_left";s:1:"0";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:15:"randomrotateout";s:15:"layer_endeasing";s:14:"easeInOutQuart";s:10:"time_start";s:4:"2800";}}}', 'catalog/demo/slider/slide2-home2.jpg', 1, 2, 2),
(63, 'Slide 3', 0, 13, 'a:17:{s:2:"id";s:2:"45";s:15:"slider_group_id";s:2:"13";s:12:"slider_title";s:7:"Slide 3";s:18:"slider_language_id";s:1:"1";s:13:"slider_status";s:1:"1";s:17:"slider_transition";s:6:"random";s:11:"slider_slot";s:1:"7";s:15:"slider_rotation";s:1:"0";s:15:"slider_duration";s:3:"300";s:12:"slider_delay";s:1:"0";s:11:"slider_link";s:0:"";s:16:"slider_thumbnail";s:0:"";s:15:"slider_usevideo";s:1:"0";s:14:"slider_videoid";s:0:"";s:16:"slider_videoplay";s:1:"0";s:9:"slider_id";s:2:"45";s:12:"slider_image";s:36:"catalog/demo/slider/slide3-home2.jpg";}', 'O:8:"stdClass":1:{s:6:"layers";a:4:{i:0;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:1;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:23:"text-white-30 width-100";s:13:"layer_caption";s:13:"spring trends";s:15:"layer_animation";s:3:"lft";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"350";s:10:"layer_left";s:1:"0";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:15:"randomrotateout";s:15:"layer_endeasing";s:11:"easeOutBack";s:10:"time_start";s:3:"600";}i:1;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:2;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:24:"text-white-100 width-100";s:13:"layer_caption";s:6:"summer";s:15:"layer_animation";s:12:"randomrotate";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"415";s:10:"layer_left";s:1:"0";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:3:"stl";s:15:"layer_endeasing";s:15:"easeInOutBounce";s:10:"time_start";s:4:"1000";}i:2;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:3;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:27:"text-white-small border-tb ";s:13:"layer_caption";s:19:"looks of the season";s:15:"layer_animation";s:12:"randomrotate";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"540";s:10:"layer_left";s:3:"488";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:3:"ltr";s:15:"layer_endeasing";s:11:"easeOutExpo";s:10:"time_start";s:4:"1400";}i:3;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:4;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:9:"width-100";s:13:"layer_caption";s:106:"&lt;a href=&quot;#&quot; class=&quot;btn  btn-outline-success btn-md radius-4x&quot;&gt;shop now&lt;/a&gt;";s:15:"layer_animation";s:12:"randomrotate";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"610";s:10:"layer_left";s:1:"0";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:15:"randomrotateout";s:15:"layer_endeasing";s:14:"easeInOutQuart";s:10:"time_start";s:4:"2800";}}}', 'catalog/demo/slider/slide3-home2.jpg', 1, 3, 2),
(60, 'Slide 4', 0, 13, 'a:17:{s:2:"id";s:2:"46";s:15:"slider_group_id";s:2:"13";s:12:"slider_title";s:7:"Slide 4";s:18:"slider_language_id";s:1:"1";s:13:"slider_status";s:1:"1";s:17:"slider_transition";s:6:"random";s:11:"slider_slot";s:1:"7";s:15:"slider_rotation";s:1:"0";s:15:"slider_duration";s:3:"300";s:12:"slider_delay";s:1:"0";s:11:"slider_link";s:0:"";s:16:"slider_thumbnail";s:0:"";s:15:"slider_usevideo";s:1:"0";s:14:"slider_videoid";s:0:"";s:16:"slider_videoplay";s:1:"0";s:9:"slider_id";s:2:"46";s:12:"slider_image";s:36:"catalog/demo/slider/slide4-home2.jpg";}', 'O:8:"stdClass":1:{s:6:"layers";a:4:{i:0;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:1;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:23:"text-white-30 width-100";s:13:"layer_caption";s:13:"spring trends";s:15:"layer_animation";s:3:"lft";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"350";s:10:"layer_left";s:1:"0";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:15:"randomrotateout";s:15:"layer_endeasing";s:11:"easeOutBack";s:10:"time_start";s:3:"600";}i:1;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:2;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:24:"text-white-100 width-100";s:13:"layer_caption";s:8:"toulouse";s:15:"layer_animation";s:12:"randomrotate";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"415";s:10:"layer_left";s:1:"0";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:3:"stl";s:15:"layer_endeasing";s:15:"easeInOutBounce";s:10:"time_start";s:4:"1000";}i:2;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:3;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:27:"text-white-small border-tb ";s:13:"layer_caption";s:19:"looks of the season";s:15:"layer_animation";s:12:"randomrotate";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"540";s:10:"layer_left";s:3:"488";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:3:"ltr";s:15:"layer_endeasing";s:11:"easeOutExpo";s:10:"time_start";s:4:"1400";}i:3;a:20:{s:16:"layer_video_type";s:7:"youtube";s:14:"layer_video_id";s:0:"";s:18:"layer_video_height";s:3:"200";s:17:"layer_video_width";s:3:"300";s:17:"layer_video_thumb";s:0:"";s:8:"layer_id";i:4;s:13:"layer_content";s:12:"no_image.png";s:10:"layer_type";s:4:"text";s:11:"layer_class";s:9:"width-100";s:13:"layer_caption";s:105:"&lt;a href=&quot;#&quot; class=&quot;btn btn-outline-success btn-md radius-4x&quot;&gt;shop now&lt;/a&gt;";s:15:"layer_animation";s:12:"randomrotate";s:12:"layer_easing";s:11:"easeOutExpo";s:11:"layer_speed";s:3:"350";s:9:"layer_top";s:3:"610";s:10:"layer_left";s:1:"0";s:13:"layer_endtime";s:1:"0";s:14:"layer_endspeed";s:3:"300";s:18:"layer_endanimation";s:15:"randomrotateout";s:15:"layer_endeasing";s:14:"easeInOutQuart";s:10:"time_start";s:4:"2800";}}}', 'catalog/demo/slider/slide4-home2.jpg', 1, 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `oc_pavwidget`
--

CREATE TABLE `oc_pavwidget` (
  `pavwidget_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL,
  `module_id` int(11) NOT NULL,
  `key` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_pavwidget`
--

INSERT INTO `oc_pavwidget` (`pavwidget_id`, `name`, `code`, `setting`, `module_id`, `key`) VALUES
(2436, 'content', 'product_tabs.Q0d0d1', 'YToyODp7czo0OiJyYW5kIjtzOjE5OiIwLjA0MDE0Mjc4MjI2NTMyMDQyIjtzOjY6Im1vZHVsZSI7czoxOToicHJvZHVjdF90YWJzLlEwZDBkMSI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTk6InByb2R1Y3RfdGFicy5RMGQwZDEiO3M6NToid3R5cGUiO3M6MTI6InByb2R1Y3RfdGFicyI7czoxMToid2lkZ2V0X25hbWUiO3M6MTE6IlByb2R1Y3QgdGFiIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjAiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjA6IiI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MDoiIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjU6ImxpbWl0IjtzOjI6IjEyIjtzOjY6ImNvbHVtbiI7czoxOiIzIjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiNiI7czoxMToiaWNvbl9uZXdlc3QiO3M6MDoiIjtzOjEzOiJlbmFibGVfbmV3ZXN0IjtzOjE6IjAiO3M6MTM6Imljb25fZmVhdHVyZWQiO3M6MDoiIjtzOjEwOiJwcm9kdWN0X2lkIjtzOjE3OiI0Miw0NCw0Nyw0OCwzMiwzMCI7czoxNToiZW5hYmxlX2ZlYXR1cmVkIjtzOjE6IjEiO3M6MTU6Imljb25fYmVzdHNlbGxlciI7czowOiIiO3M6MTc6ImVuYWJsZV9iZXN0c2VsbGVyIjtzOjE6IjEiO3M6MTI6Imljb25fc3BlY2lhbCI7czowOiIiO3M6MTQ6ImVuYWJsZV9zcGVjaWFsIjtzOjE6IjAiO3M6MTQ6Imljb25fbW9zdHZpZXdzIjtzOjA6IiI7czoxNjoiZW5hYmxlX21vc3R2aWV3cyI7czoxOiIxIjtzOjk6InRhYnNzdHlsZSI7czo2OiJ0YWItdjUiO3M6MTE6ImltYWdlX3dpZHRoIjtzOjM6IjI3OSI7czoxMjoiaW1hZ2VfaGVpZ2h0IjtzOjM6IjQwMCI7czo5OiJhdXRvX3BsYXkiO3M6NDoiMzAwMCI7fQ==', 65, 0),
(5826, 'content', 'listproduct_home2.DGMjiY', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjY4NzQ4MDY5MDQ5MDA2MzkiO3M6NjoibW9kdWxlIjtzOjI0OiJsaXN0cHJvZHVjdF9ob21lMi5ER01qaVkiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjI0OiJsaXN0cHJvZHVjdF9ob21lMi5ER01qaVkiO3M6NToid3R5cGUiO3M6MTc6Imxpc3Rwcm9kdWN0X2hvbWUyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMDoiRnVybml0dXJlICI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxMDoiRnVybml0dXJlICI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTA6IkZ1cm5pdHVyZSAiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6NToibGlua3MiO2E6NTp7aTowO3M6MjoiMzYiO2k6MTtzOjI6IjQ1IjtpOjI7czoyOiI0NiI7aTozO3M6MjoiMTgiO2k6NDtzOjI6IjI0Ijt9czo5OiJ0aXRsZV8xXzEiO3M6MTA6IkJlc3RzZWxsZXIiO3M6OToidGl0bGVfMV8yIjtzOjEwOiJCZXN0c2VsbGVyIjtzOjExOiJwcm9kdWN0MV9pZCI7czoxNzoiNDIsNDQsNDcsNDgsMTIsMTMiO3M6OToidGl0bGVfMl8xIjtzOjEyOiJOZXcgQXJyaXZhbHMiO3M6OToidGl0bGVfMl8yIjtzOjEyOiJOZXcgQXJyaXZhbHMiO3M6MTE6InByb2R1Y3QyX2lkIjtzOjE3OiI0Miw0NCw0Nyw0OCwyMCwyMiI7fQ==', 83, 0),
(5827, 'content', 'listproduct_home2.y3MZFt', 'YToxNzp7czo0OiJyYW5kIjtzOjE3OiIwLjg5Njg2NDcwNjQzMDI0OCI7czo2OiJtb2R1bGUiO3M6MjQ6Imxpc3Rwcm9kdWN0X2hvbWUyLnkzTVpGdCI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MjQ6Imxpc3Rwcm9kdWN0X2hvbWUyLnkzTVpGdCI7czo1OiJ3dHlwZSI7czoxNzoibGlzdHByb2R1Y3RfaG9tZTIiO3M6MTE6IndpZGdldF9uYW1lIjtzOjEyOiJFbGVjdHJvbmljcyAiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTI6IkVsZWN0cm9uaWNzICI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTI6IkVsZWN0cm9uaWNzICI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo1OiJsaW5rcyI7YTo1OntpOjA7czoyOiI2MCI7aToxO3M6MjoiNjEiO2k6MjtzOjI6IjQ1IjtpOjM7czoyOiIxNyI7aTo0O3M6MjoiMjciO31zOjk6InRpdGxlXzFfMSI7czoxMzoiQmVzdHNlbGxlciAgICI7czo5OiJ0aXRsZV8xXzIiO3M6MTI6IkJlc3RzZWxsZXIgICI7czoxMToicHJvZHVjdDFfaWQiO3M6MTE6IjM0LDM1LDI4LDQwIjtzOjk6InRpdGxlXzJfMSI7czoxMzoiIE5ldyBBcnJpdmFscyI7czo5OiJ0aXRsZV8yXzIiO3M6MTM6IiBOZXcgQXJyaXZhbHMiO3M6MTE6InByb2R1Y3QyX2lkIjtzOjExOiI0Miw0NCw0Nyw0OCI7fQ==', 83, 0),
(4544, 'content', 'product_list.kbrxMv', 'YToxODp7czo0OiJyYW5kIjtzOjE4OiIwLjU5NDU2MzkwMDQ0NzEzMzEiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2xpc3Qua2JyeE12IjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9saXN0LmticnhNdiI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9saXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMjoiTmV3IFByb2R1Y3RzIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjEyOiJOZXcgUHJvZHVjdHMiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjEyOiJOZXcgUHJvZHVjdHMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czoyNDoicGFuZWwtdjEgcHJvZHVjdC1saXN0LXYxIjtzOjk6ImltYWdlZmlsZSI7czowOiIiO3M6NDoic2l6ZSI7czowOiIiO3M6NToibGltaXQiO3M6MToiNiI7czo2OiJjb2x1bW4iO3M6MToiNCI7czoxMjoiaXRlbXNwZXJwYWdlIjtzOjE6IjQiO3M6NToid2lkdGgiO3M6MzoiNTAyIjtzOjY6ImhlaWdodCI7czozOiI1MjEiO3M6OToibGlzdF90eXBlIjtzOjY6Im5ld2VzdCI7fQ==', 48, 0),
(4543, 'content', 'image.0X7uKB', 'YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjUyNTU2Mjk0NjQwMjkzODciO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS4wWDd1S0IiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS4wWDd1S0IiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjk6ImVmZmVjdC12NSI7czo5OiJpbWFnZWZpbGUiO3M6MzU6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2ltZzItaG9tZTMuanBnIjtzOjQ6InNpemUiO3M6NDoiZnVsbCI7czo5OiJhbmltYXRpb24iO3M6MToiMSI7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjc6ImlzcG9wdXAiO3M6MToiMSI7czo0OiJsaW5rIjtzOjE6IiMiO30=', 48, 0),
(4540, 'content', 'bloglatest.f7Fgen', 'YToxNDp7czo0OiJyYW5kIjtzOjIwOiIwLjAyNjczNTEyOTM1NzM4NTMxMiI7czo2OiJtb2R1bGUiO3M6MTc6ImJsb2dsYXRlc3QuZjdGZ2VuIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxNzoiYmxvZ2xhdGVzdC5mN0ZnZW4iO3M6NToid3R5cGUiO3M6MTA6ImJsb2dsYXRlc3QiO3M6MTE6IndpZGdldF9uYW1lIjtzOjEyOiJMYXRlc3QgV29ya3MiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTI6IkxhdGVzdCBXb3JrcyI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTI6IkxhdGVzdCBXb3JrcyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjEzOiJwYW5lbC1zcGVjaWFsIjtzOjM6Im5iciI7czoxOiIyIjtzOjU6IndpZHRoIjtzOjM6Ijc3MCI7czo2OiJoZWlnaHQiO3M6MzoiNDQwIjtzOjQ6ImNvbHMiO3M6MToiMSI7fQ==', 48, 0),
(4533, 'content', 'product_list.SSdIQh', 'YToxODp7czo0OiJyYW5kIjtzOjE4OiIwLjQ2NTEzNjE2MTQ1NTAwMzciO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2xpc3QuU1NkSVFoIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9saXN0LlNTZElRaCI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9saXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMjoiTmV3IGFycml2YWxzIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjEyOiJOZXcgYXJyaXZhbHMiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjEyOiJOZXcgYXJyaXZhbHMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czo4OiJwYW5lbC12MiI7czo5OiJpbWFnZWZpbGUiO3M6MDoiIjtzOjQ6InNpemUiO3M6MDoiIjtzOjU6ImxpbWl0IjtzOjE6IjYiO3M6NjoiY29sdW1uIjtzOjE6IjQiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiI0IjtzOjU6IndpZHRoIjtzOjM6IjUwMiI7czo2OiJoZWlnaHQiO3M6MzoiNTIxIjtzOjk6Imxpc3RfdHlwZSI7czo2OiJuZXdlc3QiO30=', 60, 0),
(4534, 'content', 'product_tabs.Ruc6Yc', 'YTozMDp7czo0OiJyYW5kIjtzOjE4OiIwLjQ0MDI3OTc3ODE5NDUxMzgiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X3RhYnMuUnVjNlljIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF90YWJzLlJ1YzZZYyI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF90YWJzIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMjoiVHJlbmRpbmcgbm93IjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjEyOiJUcmVuZGluZyBub3ciO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjEyOiJUcmVuZGluZyBub3ciO3M6MTI6ImFkZGl0aW9uX2NscyI7czo4OiJwYW5lbC12MiI7czo5OiJpbWFnZWZpbGUiO3M6MzU6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2ltZzEtaG9tZTMuanBnIjtzOjQ6InNpemUiO3M6MDoiIjtzOjU6ImxpbWl0IjtzOjE6IjMiO3M6NjoiY29sdW1uIjtzOjE6IjMiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiIzIjtzOjExOiJpY29uX25ld2VzdCI7czowOiIiO3M6MTM6ImVuYWJsZV9uZXdlc3QiO3M6MToiMSI7czoxMzoiaWNvbl9mZWF0dXJlZCI7czowOiIiO3M6MTA6InByb2R1Y3RfaWQiO3M6MTc6IjQyLDQ0LDQ3LDQ4LDQwLDMwIjtzOjE1OiJlbmFibGVfZmVhdHVyZWQiO3M6MToiMSI7czoxNToiaWNvbl9iZXN0c2VsbGVyIjtzOjA6IiI7czoxNzoiZW5hYmxlX2Jlc3RzZWxsZXIiO3M6MToiMSI7czoxMjoiaWNvbl9zcGVjaWFsIjtzOjA6IiI7czoxNDoiZW5hYmxlX3NwZWNpYWwiO3M6MToiMSI7czoxNDoiaWNvbl9tb3N0dmlld3MiO3M6MDoiIjtzOjE2OiJlbmFibGVfbW9zdHZpZXdzIjtzOjE6IjEiO3M6OToidGFic3N0eWxlIjtzOjY6InRhYi12NyI7czoxMToiaW1hZ2Vfd2lkdGgiO3M6MzoiNTAyIjtzOjEyOiJpbWFnZV9oZWlnaHQiO3M6MzoiNTIxIjtzOjk6ImF1dG9fcGxheSI7czo0OiIzMDAwIjt9', 60, 0),
(2231, 'content', 'icon_box.yJZ1Hf', 'YToxNzp7czo0OiJyYW5kIjtzOjE5OiIwLjIwNzg0MjMwNjc3NjU2MTM1IjtzOjY6Im1vZHVsZSI7czoxNToiaWNvbl9ib3gueUpaMUhmIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxNToiaWNvbl9ib3gueUpaMUhmIjtzOjU6Ind0eXBlIjtzOjg6Imljb25fYm94IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMzoiaWNvbiBib3ggMiB2MiI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxODoiIGluc3RhbnQgcGF5bWVudHMgIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxODoiIGluc3RhbnQgcGF5bWVudHMgIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MTQ6Imljb24tZWZmZWN0LXYyIjtzOjg6Imljb25maWxlIjtzOjMxOiJjYXRhbG9nL2RlbW8vaWNvbi9pY29uLWJveDIucG5nIjtzOjk6Imljb25jbGFzcyI7czowOiIiO3M6MTM6Imh0bWxjb250ZW50XzEiO3M6NTY6IldlIHB1dCB0aGUgY2FzaCBpbiB5b3VyIFBheXBhbCBhY2NvdW50LiBRdWljayBhbmQgc2ltcGxlIjtzOjEzOiJodG1sY29udGVudF8yIjtzOjU2OiJXZSBwdXQgdGhlIGNhc2ggaW4geW91ciBQYXlwYWwgYWNjb3VudC4gUXVpY2sgYW5kIHNpbXBsZSI7czoxNDoiaWNvbl9ib3hfc3R5bGUiO3M6MDoiIjtzOjEwOiJ0ZXh0X2FsaWduIjtzOjE2OiJmZWF0dXJlLWJveC1sZWZ0IjtzOjEwOiJiYWNrZ3JvdW5kIjtzOjA6IiI7fQ==', 61, 0),
(2232, 'content', 'image.6B12qa', 'YToxNjp7czo0OiJyYW5kIjtzOjE5OiIwLjE2NjM2NzU0Nzg1OTM1OTQ4IjtzOjY6Im1vZHVsZSI7czoxMjoiaW1hZ2UuNkIxMnFhIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxMjoiaW1hZ2UuNkIxMnFhIjtzOjU6Ind0eXBlIjtzOjU6ImltYWdlIjtzOjExOiJ3aWRnZXRfbmFtZSI7czozOiJibjEiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MzoiYm4xIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czozOiJibjEiO3M6MTI6ImFkZGl0aW9uX2NscyI7czo5OiJlZmZlY3QtdjUiO3M6OToiaW1hZ2VmaWxlIjtzOjM4OiJjYXRhbG9nL2RlbW8vYmFubmVycy9pbWcxLWJhbm5lcnYyLmpwZyI7czo0OiJzaXplIjtzOjQ6ImZ1bGwiO3M6OToiYW5pbWF0aW9uIjtzOjE6IjEiO3M6OToiYWxpZ25tZW50IjtzOjY6ImNlbnRlciI7czo3OiJpc3BvcHVwIjtzOjE6IjEiO3M6NDoibGluayI7czoxOiIjIjt9', 61, 0),
(2233, 'content', 'image.D0JULO', 'YToxNjp7czo0OiJyYW5kIjtzOjE5OiIwLjM3MzEwMTUzMjQyMDQ1Mzg1IjtzOjY6Im1vZHVsZSI7czoxMjoiaW1hZ2UuRDBKVUxPIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxMjoiaW1hZ2UuRDBKVUxPIjtzOjU6Ind0eXBlIjtzOjU6ImltYWdlIjtzOjExOiJ3aWRnZXRfbmFtZSI7czozOiJibjMiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MzoiYm4zIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czozOiJibjMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czo5OiJlZmZlY3QtdjUiO3M6OToiaW1hZ2VmaWxlIjtzOjM4OiJjYXRhbG9nL2RlbW8vYmFubmVycy9pbWczLWJhbm5lcnYyLmpwZyI7czo0OiJzaXplIjtzOjQ6ImZ1bGwiO3M6OToiYW5pbWF0aW9uIjtzOjE6IjEiO3M6OToiYWxpZ25tZW50IjtzOjY6ImNlbnRlciI7czo3OiJpc3BvcHVwIjtzOjE6IjEiO3M6NDoibGluayI7czoxOiIjIjt9', 61, 0),
(2234, 'content', 'image.kHWwp2', 'YToxNjp7czo0OiJyYW5kIjtzOjE5OiIwLjQyODAzMTk1Mzg3MTg0NDIzIjtzOjY6Im1vZHVsZSI7czoxMjoiaW1hZ2Uua0hXd3AyIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxMjoiaW1hZ2Uua0hXd3AyIjtzOjU6Ind0eXBlIjtzOjU6ImltYWdlIjtzOjExOiJ3aWRnZXRfbmFtZSI7czozOiJibjIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MzoiYm4yIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czozOiJibjIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czo5OiJlZmZlY3QtdjUiO3M6OToiaW1hZ2VmaWxlIjtzOjM4OiJjYXRhbG9nL2RlbW8vYmFubmVycy9pbWcyLWJhbm5lcnYyLmpwZyI7czo0OiJzaXplIjtzOjQ6ImZ1bGwiO3M6OToiYW5pbWF0aW9uIjtzOjE6IjEiO3M6OToiYWxpZ25tZW50IjtzOjY6ImNlbnRlciI7czo3OiJpc3BvcHVwIjtzOjE6IjEiO3M6NDoibGluayI7czoxOiIjIjt9', 61, 0),
(2229, 'content', 'icon_box.Fvouv5', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjM1MzE5NDQwMzIyOTI4MTMiO3M6NjoibW9kdWxlIjtzOjE1OiJpY29uX2JveC5Gdm91djUiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE1OiJpY29uX2JveC5Gdm91djUiO3M6NToid3R5cGUiO3M6ODoiaWNvbl9ib3giO3M6MTE6IndpZGdldF9uYW1lIjtzOjEzOiJpY29uIGJveCAzIHYyIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjIwOiJnZXQgc2hvcHBpbmcgYWR2aWNlICI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MjA6ImdldCBzaG9wcGluZyBhZHZpY2UgIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MTQ6Imljb24tZWZmZWN0LXYyIjtzOjg6Imljb25maWxlIjtzOjMxOiJjYXRhbG9nL2RlbW8vaWNvbi9pY29uLWJveDMucG5nIjtzOjk6Imljb25jbGFzcyI7czowOiIiO3M6MTM6Imh0bWxjb250ZW50XzEiO3M6NTI6IkdldCBwcm9mZXNzaW9uYWwgb3IgcGVyc29uYWwgc2hvcHBpbmcgYWR2aWNlIGJ5IHVzZXIiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6NTI6IkdldCBwcm9mZXNzaW9uYWwgb3IgcGVyc29uYWwgc2hvcHBpbmcgYWR2aWNlIGJ5IHVzZXIiO3M6MTQ6Imljb25fYm94X3N0eWxlIjtzOjA6IiI7czoxMDoidGV4dF9hbGlnbiI7czoxNjoiZmVhdHVyZS1ib3gtbGVmdCI7czoxMDoiYmFja2dyb3VuZCI7czowOiIiO30=', 61, 0),
(2230, 'content', 'icon_box.ObubNE', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjc5Mjk3MTMxOTY4MDUwMTQiO3M6NjoibW9kdWxlIjtzOjE1OiJpY29uX2JveC5PYnViTkUiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE1OiJpY29uX2JveC5PYnViTkUiO3M6NToid3R5cGUiO3M6ODoiaWNvbl9ib3giO3M6MTE6IndpZGdldF9uYW1lIjtzOjEzOiJJY29uIGJveCAxIHYyIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjIxOiIgZmluZCB0aGUgYmVzdCBkZWFscyAiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjIxOiIgZmluZCB0aGUgYmVzdCBkZWFscyAiO3M6MTI6ImFkZGl0aW9uX2NscyI7czoxNDoiaWNvbi1lZmZlY3QtdjIiO3M6ODoiaWNvbmZpbGUiO3M6MzE6ImNhdGFsb2cvZGVtby9pY29uL2ljb24tYm94MS5wbmciO3M6OToiaWNvbmNsYXNzIjtzOjA6IiI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czo2MToiWW91IGJyb3dzZSBvdXIgc2l0ZSBhbmQgYnV5IHdoYXQgeW91IGxpa2UgZnJvbSBvdXIgYmVzdCBkZWFscyI7czoxMzoiaHRtbGNvbnRlbnRfMiI7czo2MToiWW91IGJyb3dzZSBvdXIgc2l0ZSBhbmQgYnV5IHdoYXQgeW91IGxpa2UgZnJvbSBvdXIgYmVzdCBkZWFscyI7czoxNDoiaWNvbl9ib3hfc3R5bGUiO3M6MDoiIjtzOjEwOiJ0ZXh0X2FsaWduIjtzOjE2OiJmZWF0dXJlLWJveC1sZWZ0IjtzOjEwOiJiYWNrZ3JvdW5kIjtzOjA6IiI7fQ==', 61, 0),
(2246, 'content', 'product_deal.YTyYPi', 'YToxODp7czo0OiJyYW5kIjtzOjE4OiIwLjk1NDY5MjgyODkzODIwMzQiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2RlYWwuWVR5WVBpIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9kZWFsLllUeVlQaSI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9kZWFsIjtzOjExOiJ3aWRnZXRfbmFtZSI7czo1OiJkZWFscyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxNToiVGhlIGNvbGxlY3Rpb25zIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxNToiVGhlIGNvbGxlY3Rpb25zIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6NToiZGVhbHMiO3M6MTA6InN0YXJ0X2RhdGUiO3M6MTA6IjIwMTQtMDEtMjgiO3M6ODoiZW5kX2RhdGUiO3M6MTA6IjIwMjAtMDEtMjgiO3M6NToibGltaXQiO3M6MToiNCI7czo0OiJjb2xzIjtzOjE6IjIiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiIyIjtzOjk6ImltZ193aWR0aCI7czozOiIyNzkiO3M6MTA6ImltZ19oZWlnaHQiO3M6MzoiNDAwIjtzOjEyOiJjYXRlZ29yeV9pZHMiO2E6MjY6e2k6MDtzOjI6IjM1IjtpOjE7czoyOiIzNiI7aToyO3M6MjoiMzciO2k6MztzOjI6IjM4IjtpOjQ7czoyOiI0NSI7aTo1O3M6MjoiNDYiO2k6NjtzOjI6IjU5IjtpOjc7czoyOiI2MCI7aTo4O3M6MjoiNjEiO2k6OTtzOjI6IjYyIjtpOjEwO3M6MjoiNjMiO2k6MTE7czoyOiIyMCI7aToxMjtzOjI6IjI2IjtpOjEzO3M6MjoiMjgiO2k6MTQ7czoyOiIyOSI7aToxNTtzOjI6IjMwIjtpOjE2O3M6MjoiMzEiO2k6MTc7czoyOiIzMiI7aToxODtzOjI6IjE4IjtpOjE5O3M6MjoiMjciO2k6MjA7czoyOiIyNSI7aToyMTtzOjI6IjU3IjtpOjIyO3M6MjoiMTciO2k6MjM7czoyOiIyNCI7aToyNDtzOjI6IjMzIjtpOjI1O3M6MjoiMzQiO319', 62, 0),
(2241, 'content', 'bloglatest.oOk08E', 'YToxNDp7czo0OiJyYW5kIjtzOjE4OiIwLjA3Mzg4ODQzMDA0NzUyNzEiO3M6NjoibW9kdWxlIjtzOjE3OiJibG9nbGF0ZXN0Lm9PazA4RSI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTc6ImJsb2dsYXRlc3Qub09rMDhFIjtzOjU6Ind0eXBlIjtzOjEwOiJibG9nbGF0ZXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czo3OiJCbG9nIHYyIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjAiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjc6IkJsb2cgdjIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjIxOiJibG9nLXYyIGNvbC1ub3BhZGRpbmciO3M6MzoibmJyIjtzOjE6IjQiO3M6NToid2lkdGgiO3M6MzoiMzUwIjtzOjY6ImhlaWdodCI7czozOiIzNTAiO3M6NDoiY29scyI7czoxOiIyIjt9', 62, 0),
(2242, 'content', 'call_to_action.7OgqTd', 'YToyMzp7czo0OiJyYW5kIjtzOjE4OiIwLjYyOTQ2ODkzNzU4Nzg4ODEiO3M6NjoibW9kdWxlIjtzOjIxOiJjYWxsX3RvX2FjdGlvbi43T2dxVGQiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjIxOiJjYWxsX3RvX2FjdGlvbi43T2dxVGQiO3M6NToid3R5cGUiO3M6MTQ6ImNhbGxfdG9fYWN0aW9uIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxNjoiY29sIHRvIGFjdGlvbiB2MiI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czozNDoiIG1pbmltbyAtIHRoZSBtb2Rlcm4gZmFzaGlvbiB0aGVtZSI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MzQ6IiBtaW5pbW8gLSB0aGUgbW9kZXJuIGZhc2hpb24gdGhlbWUiO3M6MTI6ImFkZGl0aW9uX2NscyI7czo5OiJiZy1wdXJwbGUiO3M6ODoiaWNvbmZpbGUiO3M6MDoiIjtzOjk6Imljb25jbGFzcyI7czowOiIiO3M6MTM6Imh0bWxjb250ZW50XzEiO3M6NjA6IkEgcGVyZmVjdCB0aGVtZSBidWlsdCBmb3IgeW91ciBzaG9wLiBTdGFydCB5b3VyIGJ1c2luZXNzIG5vdyI7czoxMzoiaHRtbGNvbnRlbnRfMiI7czo2MDoiQSBwZXJmZWN0IHRoZW1lIGJ1aWx0IGZvciB5b3VyIHNob3AuIFN0YXJ0IHlvdXIgYnVzaW5lc3Mgbm93IjtzOjEzOiJ0ZXh0X2xpbmtfMV8xIjtzOjA6IiI7czoxMzoidGV4dF9saW5rXzFfMiI7czowOiIiO3M6ODoibGlua18xXzEiO3M6MDoiIjtzOjg6ImxpbmtfMV8yIjtzOjA6IiI7czoxMzoidGV4dF9saW5rXzJfMSI7czoxMzoiQnV5IHRoZW1lIG5vdyI7czoxMzoidGV4dF9saW5rXzJfMiI7czoxMzoiQnV5IHRoZW1lIG5vdyI7czo4OiJsaW5rXzJfMSI7czoxOiIjIjtzOjg6ImxpbmtfMl8yIjtzOjE6IiMiO3M6NToic3R5bGUiO3M6MTc6ImNhbGwtdG8tYWN0aW9uLXY1Ijt9', 62, 0),
(2243, 'content', 'featured_category.rMoNhj', 'YToxMzp7czo0OiJyYW5kIjtzOjE4OiIwLjIzOTU5OTU2MzMxMTQxMTIiO3M6NjoibW9kdWxlIjtzOjI0OiJmZWF0dXJlZF9jYXRlZ29yeS5yTW9OaGoiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjI0OiJmZWF0dXJlZF9jYXRlZ29yeS5yTW9OaGoiO3M6NToid3R5cGUiO3M6MTc6ImZlYXR1cmVkX2NhdGVnb3J5IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxOToiRmVhdHVyZWQgQ2F0ZWdvcmllcyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxOToiRmVhdHVyZWQgQ2F0ZWdvcmllcyI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTk6IkZlYXR1cmVkIENhdGVnb3JpZXMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czoxMToiZmVhdHVyZWQtdjIiO3M6MTk6ImNhdGVnb3JpZXNfZmVhdHVyZWQiO2E6Njp7aTowO2E6Mjp7czo1OiJpbWFnZSI7czo0MjoiY2F0YWxvZy9kZW1vL2ZlYXR1cmVkLWNhdGVnb3J5L2ltZzEtZmMuanBnIjtzOjI6ImlkIjtzOjI6IjIwIjt9aToxO2E6Mjp7czo1OiJpbWFnZSI7czo0MjoiY2F0YWxvZy9kZW1vL2ZlYXR1cmVkLWNhdGVnb3J5L2ltZzItZmMuanBnIjtzOjI6ImlkIjtzOjI6IjE4Ijt9aToyO2E6Mjp7czo1OiJpbWFnZSI7czo0MjoiY2F0YWxvZy9kZW1vL2ZlYXR1cmVkLWNhdGVnb3J5L2ltZzMtZmMuanBnIjtzOjI6ImlkIjtzOjI6IjI1Ijt9aTozO2E6Mjp7czo1OiJpbWFnZSI7czo0MjoiY2F0YWxvZy9kZW1vL2ZlYXR1cmVkLWNhdGVnb3J5L2ltZzQtZmMuanBnIjtzOjI6ImlkIjtzOjI6IjI0Ijt9aTo0O2E6Mjp7czo1OiJpbWFnZSI7czo0MjoiY2F0YWxvZy9kZW1vL2ZlYXR1cmVkLWNhdGVnb3J5L2ltZzUtZmMuanBnIjtzOjI6ImlkIjtzOjI6IjMzIjt9aTo1O2E6Mjp7czo1OiJpbWFnZSI7czo0MjoiY2F0YWxvZy9kZW1vL2ZlYXR1cmVkLWNhdGVnb3J5L2ltZzYtZmMuanBnIjtzOjI6ImlkIjtzOjI6IjM0Ijt9fXM6MTE6ImltYWdlX3dpZHRoIjtzOjM6IjIwMCI7czoxMjoiaW1hZ2VfaGVpZ2h0IjtzOjM6IjIwMCI7fQ==', 62, 0),
(2010, 'content', 'interactive_banner.2IXg4k', 'YToyOTp7czo0OiJyYW5kIjtzOjE4OiIwLjY3MDM3MzA0NjU3NTcyMzkiO3M6NjoibW9kdWxlIjtzOjI1OiJpbnRlcmFjdGl2ZV9iYW5uZXIuMklYZzRrIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLjJJWGc0ayI7czo1OiJ3dHlwZSI7czoxODoiaW50ZXJhY3RpdmVfYmFubmVyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czozOiJibjUiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTI6InNwcmluZyB0cmVuZCI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTI6InNwcmluZyB0cmVuZCI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czoxMToic3ViX3RpdGxlXzEiO3M6MDoiIjtzOjExOiJzdWJfdGl0bGVfMiI7czowOiIiO3M6OToiaW1hZ2VmaWxlIjtzOjM4OiJjYXRhbG9nL2RlbW8vYmFubmVycy9pbWc1LWxvb2tib29rLmpwZyI7czo1OiJ3aWR0aCI7czozOiIzNzgiO3M6NjoiaGVpZ2h0IjtzOjM6IjU0MCI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czo5MDoiUGVyZmVjdCB3b3JrIGJhZyB3aXRoIGFuIGVsZWdhbnQgbG9vay4gQ29tZXMgaW4gYSBOaWNrZWwgbWV0YWwgZmluaXNoIHdpdGggcm9vbXkgaW50ZXJpb3JzIjtzOjEzOiJodG1sY29udGVudF8yIjtzOjkwOiJQZXJmZWN0IHdvcmsgYmFnIHdpdGggYW4gZWxlZ2FudCBsb29rLiBDb21lcyBpbiBhIE5pY2tlbCBtZXRhbCBmaW5pc2ggd2l0aCByb29teSBpbnRlcmlvcnMiO3M6MTI6ImZhY2Vib29rX3VzZSI7czowOiIiO3M6MTA6InR3aXR0ZXJfaWQiO3M6MDoiIjtzOjE0OiJwaW50ZXJlc3RfdXNlciI7czowOiIiO3M6MTE6Imdvb2dsZV9wbHVzIjtzOjA6IiI7czoxMDoidmltZW9fdXNlciI7czowOiIiO3M6MTI6InlvdXR1YmVfdXNlciI7czowOiIiO3M6MTE6InRpdGxlbGlua18xIjtzOjEzOiJ0aGUgc2hvcCBsb29rIjtzOjExOiJ0aXRsZWxpbmtfMiI7czoxMzoidGhlIHNob3AgbG9vayI7czo5OiJtYXNrX2xpbmsiO3M6MToiIyI7czoxMToiYmFubmVyX3R5cGUiO3M6MjoidjEiO3M6MTE6ImVmZmVjdF90eXBlIjtzOjk6ImVmZmVjdC12MiI7czo4OiJwb3NpdGlvbiI7czo2OiJjZW50ZXIiO30=', 63, 0),
(2011, 'content', 'interactive_banner.435twE', 'YToyOTp7czo0OiJyYW5kIjtzOjE5OiIwLjA0NDg3NTYxMTUyNzc4NTYzIjtzOjY6Im1vZHVsZSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLjQzNXR3RSI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MjU6ImludGVyYWN0aXZlX2Jhbm5lci40MzV0d0UiO3M6NToid3R5cGUiO3M6MTg6ImludGVyYWN0aXZlX2Jhbm5lciI7czoxMToid2lkZ2V0X25hbWUiO3M6MzoiYm42IjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjEyOiJzcHJpbmcgdHJlbmQiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjEyOiJzcHJpbmcgdHJlbmQiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6MTE6InN1Yl90aXRsZV8xIjtzOjA6IiI7czoxMToic3ViX3RpdGxlXzIiO3M6MDoiIjtzOjk6ImltYWdlZmlsZSI7czozODoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvaW1nNi1sb29rYm9vay5qcGciO3M6NToid2lkdGgiO3M6MzoiMzc4IjtzOjY6ImhlaWdodCI7czozOiIyODAiO3M6MTM6Imh0bWxjb250ZW50XzEiO3M6Mzk6IlBlcmZlY3Qgd29yayBiYWcgd2l0aCBhbiBlbGVnYW50IGxvb2suICI7czoxMzoiaHRtbGNvbnRlbnRfMiI7czozOToiUGVyZmVjdCB3b3JrIGJhZyB3aXRoIGFuIGVsZWdhbnQgbG9vay4gIjtzOjEyOiJmYWNlYm9va191c2UiO3M6MDoiIjtzOjEwOiJ0d2l0dGVyX2lkIjtzOjA6IiI7czoxNDoicGludGVyZXN0X3VzZXIiO3M6MDoiIjtzOjExOiJnb29nbGVfcGx1cyI7czowOiIiO3M6MTA6InZpbWVvX3VzZXIiO3M6MDoiIjtzOjEyOiJ5b3V0dWJlX3VzZXIiO3M6MDoiIjtzOjExOiJ0aXRsZWxpbmtfMSI7czoxMzoidGhlIHNob3AgbG9vayI7czoxMToidGl0bGVsaW5rXzIiO3M6MTM6InRoZSBzaG9wIGxvb2siO3M6OToibWFza19saW5rIjtzOjE6IiMiO3M6MTE6ImJhbm5lcl90eXBlIjtzOjI6InYxIjtzOjExOiJlZmZlY3RfdHlwZSI7czo5OiJlZmZlY3QtdjIiO3M6ODoicG9zaXRpb24iO3M6NjoiY2VudGVyIjt9', 63, 0),
(2016, 'content', 'parallax.IhO7X3', 'YToxNTp7czo0OiJyYW5kIjtzOjE4OiIwLjcwMjUwNDQ2NDgzNDIzNjgiO3M6NjoibW9kdWxlIjtzOjE1OiJwYXJhbGxheC5JaE83WDMiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE1OiJwYXJhbGxheC5JaE83WDMiO3M6NToid3R5cGUiO3M6ODoicGFyYWxsYXgiO3M6MTE6IndpZGdldF9uYW1lIjtzOjc6InBhcmFsYXgiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6ODoiQWJvdXQgdXMiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjg6IkFib3V0IHVzIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjE0OiJjb250ZW50X2h0bWxfMSI7czozODE6IkxvcmVtIGlwc3VtIGRvbG9yIHNpdCBhbWV0LCBjb25zZWN0ZXR1ciBhZGlwaXNjaW5nIGVsaXQsIHNlZCBkbyBlaXVzbW9kIHRlbXBvciBpbmNpZGlkdW50IHV0IGxhYm9yZSBldCBkb2xvcmUgbWFnbmEgYWxpcXVhLiBVdCBlbmltIGFkIG1pbmltIHZlbmlhbSwgcXVpcyBub3N0cnVkIGV4ZXJjaXRhdGlvbiB1bGxhbWNvIGxhYm9yaXMgbmlzaSB1dCBhbGlxdWlwIGV4IGVhIGNvbW1vZG8gY29uc2VxdWF0LiBEdWlzIGF1dGUgaXJ1cmUgZG9sb3IgaW4gcmVwcmVoZW5kZXJpdCBpbiB2b2x1cHRhdGUgdmVsaXQgZXNzZSBjaWxsdW0gZG9sb3JlIGV1IGZ1Z2lhdCBudWxsYSBwYXJpYXR1ci4gRXhjZXB0ZXVyIHNpbnQgb2NjYWVjYXQgY3VwaWRhdGF0IG5vbiBwcm9pZGVudCI7czoxNDoiY29udGVudF9odG1sXzIiO3M6MzgxOiJMb3JlbSBpcHN1bSBkb2xvciBzaXQgYW1ldCwgY29uc2VjdGV0dXIgYWRpcGlzY2luZyBlbGl0LCBzZWQgZG8gZWl1c21vZCB0ZW1wb3IgaW5jaWRpZHVudCB1dCBsYWJvcmUgZXQgZG9sb3JlIG1hZ25hIGFsaXF1YS4gVXQgZW5pbSBhZCBtaW5pbSB2ZW5pYW0sIHF1aXMgbm9zdHJ1ZCBleGVyY2l0YXRpb24gdWxsYW1jbyBsYWJvcmlzIG5pc2kgdXQgYWxpcXVpcCBleCBlYSBjb21tb2RvIGNvbnNlcXVhdC4gRHVpcyBhdXRlIGlydXJlIGRvbG9yIGluIHJlcHJlaGVuZGVyaXQgaW4gdm9sdXB0YXRlIHZlbGl0IGVzc2UgY2lsbHVtIGRvbG9yZSBldSBmdWdpYXQgbnVsbGEgcGFyaWF0dXIuIEV4Y2VwdGV1ciBzaW50IG9jY2FlY2F0IGN1cGlkYXRhdCBub24gcHJvaWRlbnQiO3M6ODoiaWNvbmZpbGUiO3M6MDoiIjtzOjk6Imljb25jbGFzcyI7czowOiIiO3M6MTI6InBhcmFsbGF4dHlwZSI7czo1OiJpbWFnZSI7fQ==', 63, 0),
(2435, 'content', 'image.y1BuLL', 'YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjUwNDMxMTY1MDUyNTc3ODUiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS55MUJ1TEwiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS55MUJ1TEwiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImJuMiI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjk6ImVmZmVjdC12MiI7czo5OiJpbWFnZWZpbGUiO3M6MzU6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2ltZzMtaG9tZTguanBnIjtzOjQ6InNpemUiO3M6NzoiMjc5eDQ1MCI7czo5OiJhbmltYXRpb24iO3M6MToiMSI7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjc6ImlzcG9wdXAiO3M6MToiMSI7czo0OiJsaW5rIjtzOjA6IiI7fQ==', 65, 0),
(2015, 'content', 'interactive_banner.YjfbVi', 'YToyOTp7czo0OiJyYW5kIjtzOjE4OiIwLjYwODkyMzQ2Mjk4MTkxNzciO3M6NjoibW9kdWxlIjtzOjI1OiJpbnRlcmFjdGl2ZV9iYW5uZXIuWWpmYlZpIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLllqZmJWaSI7czo1OiJ3dHlwZSI7czoxODoiaW50ZXJhY3RpdmVfYmFubmVyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czozOiJibjIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTI6InNwcmluZyB0cmVuZCI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTI6InNwcmluZyB0cmVuZCI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czoxMToic3ViX3RpdGxlXzEiO3M6MDoiIjtzOjExOiJzdWJfdGl0bGVfMiI7czowOiIiO3M6OToiaW1hZ2VmaWxlIjtzOjM4OiJjYXRhbG9nL2RlbW8vYmFubmVycy9pbWcyLWxvb2tib29rLmpwZyI7czo1OiJ3aWR0aCI7czozOiIzNzgiO3M6NjoiaGVpZ2h0IjtzOjM6IjI4MCI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czozOToiUGVyZmVjdCB3b3JrIGJhZyB3aXRoIGFuIGVsZWdhbnQgbG9vay4gIjtzOjEzOiJodG1sY29udGVudF8yIjtzOjM5OiJQZXJmZWN0IHdvcmsgYmFnIHdpdGggYW4gZWxlZ2FudCBsb29rLiAiO3M6MTI6ImZhY2Vib29rX3VzZSI7czowOiIiO3M6MTA6InR3aXR0ZXJfaWQiO3M6MDoiIjtzOjE0OiJwaW50ZXJlc3RfdXNlciI7czowOiIiO3M6MTE6Imdvb2dsZV9wbHVzIjtzOjA6IiI7czoxMDoidmltZW9fdXNlciI7czowOiIiO3M6MTI6InlvdXR1YmVfdXNlciI7czowOiIiO3M6MTE6InRpdGxlbGlua18xIjtzOjEzOiJTSE9QIFRIRSBMT09LIjtzOjExOiJ0aXRsZWxpbmtfMiI7czoxMzoiU0hPUCBUSEUgTE9PSyI7czo5OiJtYXNrX2xpbmsiO3M6MToiIyI7czoxMToiYmFubmVyX3R5cGUiO3M6MjoidjEiO3M6MTE6ImVmZmVjdF90eXBlIjtzOjk6ImVmZmVjdC12MiI7czo4OiJwb3NpdGlvbiI7czo2OiJjZW50ZXIiO30=', 63, 0),
(2014, 'content', 'interactive_banner.TuHAzV', 'YToyOTp7czo0OiJyYW5kIjtzOjE4OiIwLjk3MjQ5NzE4OTg0NDUzOTMiO3M6NjoibW9kdWxlIjtzOjI1OiJpbnRlcmFjdGl2ZV9iYW5uZXIuVHVIQXpWIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLlR1SEF6ViI7czo1OiJ3dHlwZSI7czoxODoiaW50ZXJhY3RpdmVfYmFubmVyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czozOiJibjEiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTI6InNwcmluZyB0cmVuZCI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTI6InNwcmluZyB0cmVuZCI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czoxMToic3ViX3RpdGxlXzEiO3M6MDoiIjtzOjExOiJzdWJfdGl0bGVfMiI7czowOiIiO3M6OToiaW1hZ2VmaWxlIjtzOjM4OiJjYXRhbG9nL2RlbW8vYmFubmVycy9pbWcxLWxvb2tib29rLmpwZyI7czo1OiJ3aWR0aCI7czozOiIzNzgiO3M6NjoiaGVpZ2h0IjtzOjM6IjU0MCI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czo5MDoiUGVyZmVjdCB3b3JrIGJhZyB3aXRoIGFuIGVsZWdhbnQgbG9vay4gQ29tZXMgaW4gYSBOaWNrZWwgbWV0YWwgZmluaXNoIHdpdGggcm9vbXkgaW50ZXJpb3JzIjtzOjEzOiJodG1sY29udGVudF8yIjtzOjkwOiJQZXJmZWN0IHdvcmsgYmFnIHdpdGggYW4gZWxlZ2FudCBsb29rLiBDb21lcyBpbiBhIE5pY2tlbCBtZXRhbCBmaW5pc2ggd2l0aCByb29teSBpbnRlcmlvcnMiO3M6MTI6ImZhY2Vib29rX3VzZSI7czowOiIiO3M6MTA6InR3aXR0ZXJfaWQiO3M6MDoiIjtzOjE0OiJwaW50ZXJlc3RfdXNlciI7czowOiIiO3M6MTE6Imdvb2dsZV9wbHVzIjtzOjA6IiI7czoxMDoidmltZW9fdXNlciI7czowOiIiO3M6MTI6InlvdXR1YmVfdXNlciI7czowOiIiO3M6MTE6InRpdGxlbGlua18xIjtzOjE0OiJ0aGUgc2hvcCBsb29rICI7czoxMToidGl0bGVsaW5rXzIiO3M6MTQ6InRoZSBzaG9wIGxvb2sgIjtzOjk6Im1hc2tfbGluayI7czoxOiIjIjtzOjExOiJiYW5uZXJfdHlwZSI7czoyOiJ2MSI7czoxMToiZWZmZWN0X3R5cGUiO3M6OToiZWZmZWN0LXYyIjtzOjg6InBvc2l0aW9uIjtzOjY6ImNlbnRlciI7fQ==', 63, 0),
(2013, 'content', 'interactive_banner.cTJLbS', 'YToyOTp7czo0OiJyYW5kIjtzOjE4OiIwLjU1NDIzNzQwMDk0NjU4NzUiO3M6NjoibW9kdWxlIjtzOjI1OiJpbnRlcmFjdGl2ZV9iYW5uZXIuY1RKTGJTIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLmNUSkxiUyI7czo1OiJ3dHlwZSI7czoxODoiaW50ZXJhY3RpdmVfYmFubmVyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czozOiJibjQiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTI6InNwcmluZyB0cmVuZCI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTI6InNwcmluZyB0cmVuZCI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czoxMToic3ViX3RpdGxlXzEiO3M6MDoiIjtzOjExOiJzdWJfdGl0bGVfMiI7czowOiIiO3M6OToiaW1hZ2VmaWxlIjtzOjM4OiJjYXRhbG9nL2RlbW8vYmFubmVycy9pbWc0LWxvb2tib29rLmpwZyI7czo1OiJ3aWR0aCI7czozOiIzNzgiO3M6NjoiaGVpZ2h0IjtzOjM6IjU0MCI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czo5MDoiUGVyZmVjdCB3b3JrIGJhZyB3aXRoIGFuIGVsZWdhbnQgbG9vay4gQ29tZXMgaW4gYSBOaWNrZWwgbWV0YWwgZmluaXNoIHdpdGggcm9vbXkgaW50ZXJpb3JzIjtzOjEzOiJodG1sY29udGVudF8yIjtzOjkwOiJQZXJmZWN0IHdvcmsgYmFnIHdpdGggYW4gZWxlZ2FudCBsb29rLiBDb21lcyBpbiBhIE5pY2tlbCBtZXRhbCBmaW5pc2ggd2l0aCByb29teSBpbnRlcmlvcnMiO3M6MTI6ImZhY2Vib29rX3VzZSI7czowOiIiO3M6MTA6InR3aXR0ZXJfaWQiO3M6MDoiIjtzOjE0OiJwaW50ZXJlc3RfdXNlciI7czowOiIiO3M6MTE6Imdvb2dsZV9wbHVzIjtzOjA6IiI7czoxMDoidmltZW9fdXNlciI7czowOiIiO3M6MTI6InlvdXR1YmVfdXNlciI7czowOiIiO3M6MTE6InRpdGxlbGlua18xIjtzOjEzOiJUaGUgc2hvcCBsb29rIjtzOjExOiJ0aXRsZWxpbmtfMiI7czoxMzoiVGhlIHNob3AgbG9vayI7czo5OiJtYXNrX2xpbmsiO3M6MToiIyI7czoxMToiYmFubmVyX3R5cGUiO3M6MjoidjEiO3M6MTE6ImVmZmVjdF90eXBlIjtzOjk6ImVmZmVjdC12MiI7czo4OiJwb3NpdGlvbiI7czo2OiJjZW50ZXIiO30=', 63, 0),
(2012, 'content', 'interactive_banner.bmTIzW', 'YToyOTp7czo0OiJyYW5kIjtzOjE5OiIwLjA0Mzc5MjMxMTQxNTM0MjIzIjtzOjY6Im1vZHVsZSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLmJtVEl6VyI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MjU6ImludGVyYWN0aXZlX2Jhbm5lci5ibVRJelciO3M6NToid3R5cGUiO3M6MTg6ImludGVyYWN0aXZlX2Jhbm5lciI7czoxMToid2lkZ2V0X25hbWUiO3M6MzoiYm4zIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjEyOiJzcHJpbmcgdHJlbmQiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjEyOiJzcHJpbmcgdHJlbmQiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6MTE6InN1Yl90aXRsZV8xIjtzOjA6IiI7czoxMToic3ViX3RpdGxlXzIiO3M6MDoiIjtzOjk6ImltYWdlZmlsZSI7czozODoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvaW1nMy1sb29rYm9vay5qcGciO3M6NToid2lkdGgiO3M6MzoiMzc4IjtzOjY6ImhlaWdodCI7czozOiIyODAiO3M6MTM6Imh0bWxjb250ZW50XzEiO3M6NTE6IkNvbWVzIGluIGEgTmlja2VsIG1ldGFsIGZpbmlzaCB3aXRoIHJvb215IGludGVyaW9ycyI7czoxMzoiaHRtbGNvbnRlbnRfMiI7czo1MToiQ29tZXMgaW4gYSBOaWNrZWwgbWV0YWwgZmluaXNoIHdpdGggcm9vbXkgaW50ZXJpb3JzIjtzOjEyOiJmYWNlYm9va191c2UiO3M6MDoiIjtzOjEwOiJ0d2l0dGVyX2lkIjtzOjA6IiI7czoxNDoicGludGVyZXN0X3VzZXIiO3M6MDoiIjtzOjExOiJnb29nbGVfcGx1cyI7czowOiIiO3M6MTA6InZpbWVvX3VzZXIiO3M6MDoiIjtzOjEyOiJ5b3V0dWJlX3VzZXIiO3M6MDoiIjtzOjExOiJ0aXRsZWxpbmtfMSI7czoxMzoiVGhlIHNob3AgbG9vayI7czoxMToidGl0bGVsaW5rXzIiO3M6MTM6IlRoZSBzaG9wIGxvb2siO3M6OToibWFza19saW5rIjtzOjE6IiMiO3M6MTE6ImJhbm5lcl90eXBlIjtzOjI6InYxIjtzOjExOiJlZmZlY3RfdHlwZSI7czo5OiJlZmZlY3QtdjIiO3M6ODoicG9zaXRpb24iO3M6NjoiY2VudGVyIjt9', 63, 0),
(2009, 'content', 'image.yFXL9f', 'YToxNjp7czo0OiJyYW5kIjtzOjIwOiIwLjAyNDQ4NjM1NDA3NDAxMzg5NCI7czo2OiJtb2R1bGUiO3M6MTI6ImltYWdlLnlGWEw5ZiI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTI6ImltYWdlLnlGWEw5ZiI7czo1OiJ3dHlwZSI7czo1OiJpbWFnZSI7czoxMToid2lkZ2V0X25hbWUiO3M6MzoiYm4yIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjAiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjA6IiI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MDoiIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6OToiZWZmZWN0LXY1IjtzOjk6ImltYWdlZmlsZSI7czozODoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvaW1nMi1iYW5uZXJ2Mi5qcGciO3M6NDoic2l6ZSI7czowOiIiO3M6OToiYW5pbWF0aW9uIjtzOjE6IjEiO3M6OToiYWxpZ25tZW50IjtzOjY6ImNlbnRlciI7czo3OiJpc3BvcHVwIjtzOjE6IjEiO3M6NDoibGluayI7czoxOiIjIjt9', 63, 0),
(2008, 'content', 'image.FiPXVb', 'YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjM0MDM4MTI5MTA5NTE3MDEiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5GaVBYVmIiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5GaVBYVmIiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImJuMSI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjk6ImVmZmVjdC12NSI7czo5OiJpbWFnZWZpbGUiO3M6Mzg6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2ltZzEtYmFubmVydjIuanBnIjtzOjQ6InNpemUiO3M6NDoiZnVsbCI7czo5OiJhbmltYXRpb24iO3M6MToiMSI7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjc6ImlzcG9wdXAiO3M6MToiMSI7czo0OiJsaW5rIjtzOjE6IiMiO30=', 63, 0),
(2255, 'content', 'manufacture.vhBquW', 'YToxNjp7czo0OiJyYW5kIjtzOjE3OiIwLjQzNjMyNjA4MTU4MDY1OCI7czo2OiJtb2R1bGUiO3M6MTg6Im1hbnVmYWN0dXJlLnZoQnF1VyI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTg6Im1hbnVmYWN0dXJlLnZoQnF1VyI7czo1OiJ3dHlwZSI7czoxMToibWFudWZhY3R1cmUiO3M6MTE6IndpZGdldF9uYW1lIjtzOjQ6ImxvZ28iO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MjA6IlRvcCBmYXZvdXJpdGUgYnJhbmRzIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoyMDoiVG9wIGZhdm91cml0ZSBicmFuZHMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6OToiYmFubmVyX2lkIjtzOjE6IjgiO3M6NToibGltaXQiO3M6MjoiMTIiO3M6NzoiY29sdW1ucyI7czoxOiI2IjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MjoiMTIiO3M6NToid2lkdGgiO3M6MzoiMTUwIjtzOjY6ImhlaWdodCI7czozOiIxMDUiO30=', 64, 0),
(2253, 'content', 'call_to_action.YUnlWk', 'YToyMzp7czo0OiJyYW5kIjtzOjE4OiIwLjY0MjMxNjQxNTQ0MDI5MTIiO3M6NjoibW9kdWxlIjtzOjIxOiJjYWxsX3RvX2FjdGlvbi5ZVW5sV2siO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjIxOiJjYWxsX3RvX2FjdGlvbi5ZVW5sV2siO3M6NToid3R5cGUiO3M6MTQ6ImNhbGxfdG9fYWN0aW9uIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxNjoiY29sIHRvIGFjdGlvbiB2MiI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czozNDoiIG1pbmltbyAtIHRoZSBtb2Rlcm4gZmFzaGlvbiB0aGVtZSI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MzQ6IiBtaW5pbW8gLSB0aGUgbW9kZXJuIGZhc2hpb24gdGhlbWUiO3M6MTI6ImFkZGl0aW9uX2NscyI7czo5OiJiZy1wdXJwbGUiO3M6ODoiaWNvbmZpbGUiO3M6MDoiIjtzOjk6Imljb25jbGFzcyI7czowOiIiO3M6MTM6Imh0bWxjb250ZW50XzEiO3M6NjA6IkEgcGVyZmVjdCB0aGVtZSBidWlsdCBmb3IgeW91ciBzaG9wLiBTdGFydCB5b3VyIGJ1c2luZXNzIG5vdyI7czoxMzoiaHRtbGNvbnRlbnRfMiI7czo2MDoiQSBwZXJmZWN0IHRoZW1lIGJ1aWx0IGZvciB5b3VyIHNob3AuIFN0YXJ0IHlvdXIgYnVzaW5lc3Mgbm93IjtzOjEzOiJ0ZXh0X2xpbmtfMV8xIjtzOjA6IiI7czoxMzoidGV4dF9saW5rXzFfMiI7czowOiIiO3M6ODoibGlua18xXzEiO3M6MDoiIjtzOjg6ImxpbmtfMV8yIjtzOjA6IiI7czoxMzoidGV4dF9saW5rXzJfMSI7czoxMzoiQnV5IHRoZW1lIG5vdyI7czoxMzoidGV4dF9saW5rXzJfMiI7czoxMzoiQnV5IHRoZW1lIG5vdyI7czo4OiJsaW5rXzJfMSI7czoxOiIjIjtzOjg6ImxpbmtfMl8yIjtzOjE6IiMiO3M6NToic3R5bGUiO3M6MTc6ImNhbGwtdG8tYWN0aW9uLXY1Ijt9', 64, 0),
(2254, 'content', 'introduce.FItkRv', 'YToxOTp7czo0OiJyYW5kIjtzOjE4OiIwLjcyNTk1OTk4OTQ3NTA4NjMiO3M6NjoibW9kdWxlIjtzOjE2OiJpbnRyb2R1Y2UuRkl0a1J2IjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxNjoiaW50cm9kdWNlLkZJdGtSdiI7czo1OiJ3dHlwZSI7czo5OiJpbnRyb2R1Y2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjg6Im9wZW5uaW5nIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjEzOiJvcGVubmluZyB0aW1lIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxMzoib3Blbm5pbmcgdGltZSI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo4OiJpY29uZmlsZSI7czozNzoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvaW1nLW9wZW5uaW5nLmpwZyI7czo4OiJpZF92aWRlbyI7czowOiIiO3M6NToid2lkdGgiO3M6MzoiNzAwIjtzOjg6InBvc2l0aW9uIjtzOjU6InJpZ2h0IjtzOjY6ImhlaWdodCI7czozOiI0MzkiO3M6OToiaWNvbmNsYXNzIjtzOjA6IiI7czoxNDoiY29udGVudF9odG1sXzEiO3M6MTk2OiImbHQ7aDYmZ3Q7bW9uZGF5IC0gdGh1cnNkYXkmbHQ7L2g2Jmd0OyZsdDtwJmd0Ozg6IDAwIEFNIC0gNzowMCBQTSZsdDsvcCZndDsmbHQ7cCBjbGFzcz0mcXVvdDtoZWlnaHQtMTAmcXVvdDsmZ3Q7Jmx0Oy9wJmd0OyZsdDtoNiZndDtmcmlkYXkgLSBzdW5kYXkmbHQ7L2g2Jmd0OyZsdDtwJmd0Ozg6IDAwIEFNIC0gMTA6MDAgUE0mbHQ7L3AmZ3Q7IjtzOjE0OiJjb250ZW50X2h0bWxfMiI7czoxOTY6IiZsdDtoNiZndDttb25kYXkgLSB0aHVyc2RheSZsdDsvaDYmZ3Q7Jmx0O3AmZ3Q7ODogMDAgQU0gLSA3OjAwIFBNJmx0Oy9wJmd0OyZsdDtwIGNsYXNzPSZxdW90O2hlaWdodC0xMCZxdW90OyZndDsmbHQ7L3AmZ3Q7Jmx0O2g2Jmd0O2ZyaWRheSAtIHN1bmRheSZsdDsvaDYmZ3Q7Jmx0O3AmZ3Q7ODogMDAgQU0gLSAxMDowMCBQTSZsdDsvcCZndDsiO3M6NDoibGluayI7czowOiIiO30=', 64, 0),
(2434, 'content', 'image.PXeWBK', 'YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjYwMDA0ODIxODE1NTI3OTgiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5QWGVXQksiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5QWGVXQksiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImJuMSI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjI3OiJpbWFnZS1pdGVtLW1hcmdpbiBlZmZlY3QtdjIiO3M6OToiaW1hZ2VmaWxlIjtzOjM1OiJjYXRhbG9nL2RlbW8vYmFubmVycy9pbWc0LWhvbWU4LmpwZyI7czo0OiJzaXplIjtzOjc6IjI3OXgzODAiO3M6OToiYW5pbWF0aW9uIjtzOjE6IjEiO3M6OToiYWxpZ25tZW50IjtzOjY6ImNlbnRlciI7czo3OiJpc3BvcHVwIjtzOjE6IjEiO3M6NDoibGluayI7czowOiIiO30=', 65, 0),
(4532, 'content', 'image.P3tuef', 'YToxNjp7czo0OiJyYW5kIjtzOjE5OiIwLjQ1NzAxMTM0MTY0NTg2NzY1IjtzOjY6Im1vZHVsZSI7czoxMjoiaW1hZ2UuUDN0dWVmIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxMjoiaW1hZ2UuUDN0dWVmIjtzOjU6Ind0eXBlIjtzOjU6ImltYWdlIjtzOjExOiJ3aWRnZXRfbmFtZSI7czowOiIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czo5OiJlZmZlY3QtdjUiO3M6OToiaW1hZ2VmaWxlIjtzOjM2OiJjYXRhbG9nL2RlbW8vc2xpZGVyL3NsaWRlMi1ob21lMy5qcGciO3M6NDoic2l6ZSI7czowOiIiO3M6OToiYW5pbWF0aW9uIjtzOjE6IjQiO3M6OToiYWxpZ25tZW50IjtzOjQ6ImxlZnQiO3M6NzoiaXNwb3B1cCI7czoxOiIxIjtzOjQ6ImxpbmsiO3M6MDoiIjt9', 60, 0),
(4531, 'content', 'image.GN6m55', 'YToxNjp7czo0OiJyYW5kIjtzOjE5OiIwLjM1NTU5NzEyNjM2OTc2NDI2IjtzOjY6Im1vZHVsZSI7czoxMjoiaW1hZ2UuR042bTU1IjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxMjoiaW1hZ2UuR042bTU1IjtzOjU6Ind0eXBlIjtzOjU6ImltYWdlIjtzOjExOiJ3aWRnZXRfbmFtZSI7czowOiIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czo5OiJlZmZlY3QtdjUiO3M6OToiaW1hZ2VmaWxlIjtzOjM2OiJjYXRhbG9nL2RlbW8vc2xpZGVyL3NsaWRlMS1ob21lMy5qcGciO3M6NDoic2l6ZSI7czowOiIiO3M6OToiYW5pbWF0aW9uIjtzOjE6IjQiO3M6OToiYWxpZ25tZW50IjtzOjQ6ImxlZnQiO3M6NzoiaXNwb3B1cCI7czoxOiIxIjtzOjQ6ImxpbmsiO3M6MDoiIjt9', 60, 0),
(4530, 'content', 'featured_category.weANBd', 'YToxMzp7czo0OiJyYW5kIjtzOjE4OiIwLjU5ODA5OTI4NDU3MjUyNjgiO3M6NjoibW9kdWxlIjtzOjI0OiJmZWF0dXJlZF9jYXRlZ29yeS53ZUFOQmQiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjI0OiJmZWF0dXJlZF9jYXRlZ29yeS53ZUFOQmQiO3M6NToid3R5cGUiO3M6MTc6ImZlYXR1cmVkX2NhdGVnb3J5IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoyMDoiQ2hvb3NlIEJ5IENhdGVnb3JpZXMiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MjA6IkNob29zZSBCeSBDYXRlZ29yaWVzIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoyMDoiQ2hvb3NlIEJ5IENhdGVnb3JpZXMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czo1ODoiZmVhdHVyZWQtY2F0ZWdvcnkgZmVhdHVyZWQtY2F0ZWdvcnktdjMgcGFuZWwtdjIgZWZmZWN0LXYxMSI7czoxOToiY2F0ZWdvcmllc19mZWF0dXJlZCI7YTozOntpOjA7YToyOntzOjU6ImltYWdlIjtzOjMyOiJjYXRhbG9nL2RlbW8vaWNvbi9pbWcxLWhvbWUzLmpwZyI7czoyOiJpZCI7czoyOiIyMCI7fWk6MTthOjI6e3M6NToiaW1hZ2UiO3M6MzI6ImNhdGFsb2cvZGVtby9pY29uL2ltZzItaG9tZTMuanBnIjtzOjI6ImlkIjtzOjI6IjE4Ijt9aToyO2E6Mjp7czo1OiJpbWFnZSI7czozMjoiY2F0YWxvZy9kZW1vL2ljb24vaW1nMy1ob21lMy5qcGciO3M6MjoiaWQiO3M6MjoiMjUiO319czoxMToiaW1hZ2Vfd2lkdGgiO3M6MzoiMzkwIjtzOjEyOiJpbWFnZV9oZWlnaHQiO3M6MzoiNDA1Ijt9', 60, 0),
(2245, 'content', 'manufacture.o0n1gU', 'YToxNjp7czo0OiJyYW5kIjtzOjE3OiIwLjUwMjAyMjA2OTQwMDI3OSI7czo2OiJtb2R1bGUiO3M6MTg6Im1hbnVmYWN0dXJlLm8wbjFnVSI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTg6Im1hbnVmYWN0dXJlLm8wbjFnVSI7czo1OiJ3dHlwZSI7czoxMToibWFudWZhY3R1cmUiO3M6MTE6IndpZGdldF9uYW1lIjtzOjQ6ImxvZ28iO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MjA6IlRvcCBmYXZvdXJpdGUgYnJhbmRzIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoyMDoiVG9wIGZhdm91cml0ZSBicmFuZHMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6OToiYmFubmVyX2lkIjtzOjE6IjgiO3M6NToibGltaXQiO3M6MjoiMTIiO3M6NzoiY29sdW1ucyI7czoxOiI2IjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MjoiMTIiO3M6NToid2lkdGgiO3M6MzoiMTUwIjtzOjY6ImhlaWdodCI7czozOiIxMDUiO30=', 62, 0),
(2006, 'content', 'heading.SbFdsl', 'YToxNDp7czo0OiJyYW5kIjtzOjE4OiIwLjU0MTUxNDE2Mzc4Mjc5NTIiO3M6NjoibW9kdWxlIjtzOjE0OiJoZWFkaW5nLlNiRmRzbCI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTQ6ImhlYWRpbmcuU2JGZHNsIjtzOjU6Ind0eXBlIjtzOjc6ImhlYWRpbmciO3M6MTE6IndpZGdldF9uYW1lIjtzOjc6ImhlYWRpbmciO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6ODoiTG9va2Jvb2siO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjg6Ikxvb2tib29rIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjg6Imljb25maWxlIjtzOjA6IiI7czo5OiJpY29uY2xhc3MiO3M6MDoiIjtzOjEyOiJjb250ZW50X2h0bWwiO3M6MDoiIjtzOjEyOiJoZWFkaW5nc3R5bGUiO3M6MTA6ImhlYWRpbmctdjMiO30=', 63, 0),
(2007, 'content', 'image.3Op4mM', 'YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjUxNTE3MzY0NjYxNTUwNTQiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS4zT3A0bU0iO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS4zT3A0bU0iO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImJuMyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjk6ImVmZmVjdC12NSI7czo5OiJpbWFnZWZpbGUiO3M6Mzg6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2ltZzMtYmFubmVydjIuanBnIjtzOjQ6InNpemUiO3M6MDoiIjtzOjk6ImFuaW1hdGlvbiI7czoxOiIxIjtzOjk6ImFsaWdubWVudCI7czo2OiJjZW50ZXIiO3M6NzoiaXNwb3B1cCI7czoxOiIxIjtzOjQ6ImxpbmsiO3M6MToiIyI7fQ==', 63, 0),
(4529, 'content', 'bloglatest.DAR621', 'YToxNDp7czo0OiJyYW5kIjtzOjE5OiIwLjExNTAzNTYxNzczODA0NDk0IjtzOjY6Im1vZHVsZSI7czoxNzoiYmxvZ2xhdGVzdC5EQVI2MjEiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE3OiJibG9nbGF0ZXN0LkRBUjYyMSI7czo1OiJ3dHlwZSI7czoxMDoiYmxvZ2xhdGVzdCI7czoxMToid2lkZ2V0X25hbWUiO3M6NzoiQmxvZyB2MSI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxMzoiRnJvbSBvdXIgYmxvZyI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTM6IkZyb20gb3VyIGJsb2ciO3M6MTI6ImFkZGl0aW9uX2NscyI7czoyNDoibGF0ZXN0LXBvc3RzLXYxIHBhbmVsLXYyIjtzOjM6Im5iciI7czoxOiIzIjtzOjU6IndpZHRoIjtzOjM6Ijg2MCI7czo2OiJoZWlnaHQiO3M6MzoiNDkxIjtzOjQ6ImNvbHMiO3M6MToiMyI7fQ==', 60, 0),
(2228, 'content', 'featured_category.HHhM2f', 'YToxMzp7czo0OiJyYW5kIjtzOjE5OiIwLjEwODg4NDMwMzk1MjQ2Njg0IjtzOjY6Im1vZHVsZSI7czoyNDoiZmVhdHVyZWRfY2F0ZWdvcnkuSEhoTTJmIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNDoiZmVhdHVyZWRfY2F0ZWdvcnkuSEhoTTJmIjtzOjU6Ind0eXBlIjtzOjE3OiJmZWF0dXJlZF9jYXRlZ29yeSI7czoxMToid2lkZ2V0X25hbWUiO3M6MTk6IkZlYXR1cmVkIENhdGVnb3JpZXMiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTk6IkZlYXR1cmVkIENhdGVnb3JpZXMiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjE5OiJGZWF0dXJlZCBDYXRlZ29yaWVzIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MTE6ImZlYXR1cmVkLXYyIjtzOjE5OiJjYXRlZ29yaWVzX2ZlYXR1cmVkIjthOjY6e2k6MDthOjI6e3M6NToiaW1hZ2UiO3M6NDI6ImNhdGFsb2cvZGVtby9mZWF0dXJlZC1jYXRlZ29yeS9pbWcxLWZjLmpwZyI7czoyOiJpZCI7czoyOiIyMCI7fWk6MTthOjI6e3M6NToiaW1hZ2UiO3M6NDI6ImNhdGFsb2cvZGVtby9mZWF0dXJlZC1jYXRlZ29yeS9pbWcyLWZjLmpwZyI7czoyOiJpZCI7czoyOiIxOCI7fWk6MjthOjI6e3M6NToiaW1hZ2UiO3M6NDI6ImNhdGFsb2cvZGVtby9mZWF0dXJlZC1jYXRlZ29yeS9pbWczLWZjLmpwZyI7czoyOiJpZCI7czoyOiIyNSI7fWk6MzthOjI6e3M6NToiaW1hZ2UiO3M6NDI6ImNhdGFsb2cvZGVtby9mZWF0dXJlZC1jYXRlZ29yeS9pbWc0LWZjLmpwZyI7czoyOiJpZCI7czoyOiIyNCI7fWk6NDthOjI6e3M6NToiaW1hZ2UiO3M6NDI6ImNhdGFsb2cvZGVtby9mZWF0dXJlZC1jYXRlZ29yeS9pbWc1LWZjLmpwZyI7czoyOiJpZCI7czoyOiIzMyI7fWk6NTthOjI6e3M6NToiaW1hZ2UiO3M6NDI6ImNhdGFsb2cvZGVtby9mZWF0dXJlZC1jYXRlZ29yeS9pbWc2LWZjLmpwZyI7czoyOiJpZCI7czoyOiIzNCI7fX1zOjExOiJpbWFnZV93aWR0aCI7czozOiIyMDAiO3M6MTI6ImltYWdlX2hlaWdodCI7czozOiIyMDAiO30=', 61, 0),
(2244, 'content', 'introduce.of7IT7', 'YToxOTp7czo0OiJyYW5kIjtzOjE3OiIwLjk0Nzc0MjQ0OTgxODE3OSI7czo2OiJtb2R1bGUiO3M6MTY6ImludHJvZHVjZS5vZjdJVDciO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE2OiJpbnRyb2R1Y2Uub2Y3SVQ3IjtzOjU6Ind0eXBlIjtzOjk6ImludHJvZHVjZSI7czoxMToid2lkZ2V0X25hbWUiO3M6ODoib3Blbm5pbmciO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTM6Im9wZW5uaW5nIHRpbWUiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjEzOiJvcGVubmluZyB0aW1lIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjg6Imljb25maWxlIjtzOjM3OiJjYXRhbG9nL2RlbW8vYmFubmVycy9pbWctb3Blbm5pbmcuanBnIjtzOjg6ImlkX3ZpZGVvIjtzOjA6IiI7czo1OiJ3aWR0aCI7czozOiI3MDAiO3M6ODoicG9zaXRpb24iO3M6NToicmlnaHQiO3M6NjoiaGVpZ2h0IjtzOjM6IjQzOSI7czo5OiJpY29uY2xhc3MiO3M6MDoiIjtzOjE0OiJjb250ZW50X2h0bWxfMSI7czoxOTY6IiZsdDtoNiZndDttb25kYXkgLSB0aHVyc2RheSZsdDsvaDYmZ3Q7Jmx0O3AmZ3Q7ODogMDAgQU0gLSA3OjAwIFBNJmx0Oy9wJmd0OyZsdDtwIGNsYXNzPSZxdW90O2hlaWdodC0xMCZxdW90OyZndDsmbHQ7L3AmZ3Q7Jmx0O2g2Jmd0O2ZyaWRheSAtIHN1bmRheSZsdDsvaDYmZ3Q7Jmx0O3AmZ3Q7ODogMDAgQU0gLSAxMDowMCBQTSZsdDsvcCZndDsiO3M6MTQ6ImNvbnRlbnRfaHRtbF8yIjtzOjE5NjoiJmx0O2g2Jmd0O21vbmRheSAtIHRodXJzZGF5Jmx0Oy9oNiZndDsmbHQ7cCZndDs4OiAwMCBBTSAtIDc6MDAgUE0mbHQ7L3AmZ3Q7Jmx0O3AgY2xhc3M9JnF1b3Q7aGVpZ2h0LTEwJnF1b3Q7Jmd0OyZsdDsvcCZndDsmbHQ7aDYmZ3Q7ZnJpZGF5IC0gc3VuZGF5Jmx0Oy9oNiZndDsmbHQ7cCZndDs4OiAwMCBBTSAtIDEwOjAwIFBNJmx0Oy9wJmd0OyI7czo0OiJsaW5rIjtzOjA6IiI7fQ==', 62, 0),
(2433, 'content', 'image.KBujPw', 'YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjAzMjY0MDE4MTk1OTg2NjQiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5LQnVqUHciO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5LQnVqUHciO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjI6ImJuIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjAiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjA6IiI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MDoiIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjk6ImltYWdlZmlsZSI7czozODoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvaW1nMS1iYW5uZXJ2My5qcGciO3M6NDoic2l6ZSI7czo0OiJmdWxsIjtzOjk6ImFuaW1hdGlvbiI7czoxOiIxIjtzOjk6ImFsaWdubWVudCI7czo2OiJjZW50ZXIiO3M6NzoiaXNwb3B1cCI7czoxOiIxIjtzOjQ6ImxpbmsiO3M6MToiIyI7fQ==', 65, 0),
(2431, 'content', 'call_to_action.A8T1eT', 'YToyMzp7czo0OiJyYW5kIjtzOjE5OiIwLjEyMzU0MTA0NzMzMDk0NTczIjtzOjY6Im1vZHVsZSI7czoyMToiY2FsbF90b19hY3Rpb24uQThUMWVUIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyMToiY2FsbF90b19hY3Rpb24uQThUMWVUIjtzOjU6Ind0eXBlIjtzOjE0OiJjYWxsX3RvX2FjdGlvbiI7czoxMToid2lkZ2V0X25hbWUiO3M6MTY6ImNvbCB0byBhY3Rpb24gdjIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MzQ6IiBtaW5pbW8gLSB0aGUgbW9kZXJuIGZhc2hpb24gdGhlbWUiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjk6ImJnLXB1cnBsZSI7czo4OiJpY29uZmlsZSI7czowOiIiO3M6OToiaWNvbmNsYXNzIjtzOjA6IiI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czo2MDoiQSBwZXJmZWN0IHRoZW1lIGJ1aWx0IGZvciB5b3VyIHNob3AuIFN0YXJ0IHlvdXIgYnVzaW5lc3Mgbm93IjtzOjEzOiJodG1sY29udGVudF8yIjtzOjYwOiJBIHBlcmZlY3QgdGhlbWUgYnVpbHQgZm9yIHlvdXIgc2hvcC4gU3RhcnQgeW91ciBidXNpbmVzcyBub3ciO3M6MTM6InRleHRfbGlua18xXzEiO3M6MDoiIjtzOjEzOiJ0ZXh0X2xpbmtfMV8yIjtzOjA6IiI7czo4OiJsaW5rXzFfMSI7czowOiIiO3M6ODoibGlua18xXzIiO3M6MDoiIjtzOjEzOiJ0ZXh0X2xpbmtfMl8xIjtzOjEzOiJCdXkgdGhlbWUgbm93IjtzOjEzOiJ0ZXh0X2xpbmtfMl8yIjtzOjEzOiJCdXkgdGhlbWUgbm93IjtzOjg6ImxpbmtfMl8xIjtzOjE6IiMiO3M6ODoibGlua18yXzIiO3M6MToiIyI7czo1OiJzdHlsZSI7czoxNzoiY2FsbC10by1hY3Rpb24tdjUiO30=', 65, 0),
(2432, 'content', 'categories_list.LdrzkW', 'YToxMTp7czo0OiJyYW5kIjtzOjE5OiIwLjQ0Mjc0NTk2NzA2OTY0MDc2IjtzOjY6Im1vZHVsZSI7czoyMjoiY2F0ZWdvcmllc19saXN0LkxkcnprVyI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MjI6ImNhdGVnb3JpZXNfbGlzdC5MZHJ6a1ciO3M6NToid3R5cGUiO3M6MTU6ImNhdGVnb3JpZXNfbGlzdCI7czoxMToid2lkZ2V0X25hbWUiO3M6ODoiY2F0ZWdvcnkiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTA6ImNhdGVnb3JpZXMiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjEwOiJjYXRlZ29yaWVzIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjY6ImNhdGlkcyI7czoyMzoiMjAsMTgsMjUsNTcsMTcsMjQsMzMsMzQiO30=', 65, 0),
(5836, 'content', 'featured_category.PP1rGC', 'YToxNDp7czo0OiJyYW5kIjtzOjE5OiIwLjA0MjIyMTUwMjMyMTMzNTgxIjtzOjY6Im1vZHVsZSI7czoyNDoiZmVhdHVyZWRfY2F0ZWdvcnkuUFAxckdDIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNDoiZmVhdHVyZWRfY2F0ZWdvcnkuUFAxckdDIjtzOjU6Ind0eXBlIjtzOjE3OiJmZWF0dXJlZF9jYXRlZ29yeSI7czoxMToid2lkZ2V0X25hbWUiO3M6MjA6ImZlYXR1cmVkIGNhdGVnb3JpZXMgIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjIwOiJmZWF0dXJlZCBjYXRlZ29yaWVzICI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MjA6ImZlYXR1cmVkIGNhdGVnb3JpZXMgIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6NDQ6InBhbmVsLXYzIGZlYXR1cmVkLWNhdGVnb3J5LXYxIGljb24tZWZmZWN0LXYyIjtzOjE5OiJjYXRlZ29yaWVzX2ZlYXR1cmVkIjthOjM6e2k6MDthOjI6e3M6NToiaW1hZ2UiO3M6Mjg6ImNhdGFsb2cvZGVtby9tb2R1bGUvaW1nMS5qcGciO3M6MjoiaWQiO3M6MjoiMzMiO31pOjE7YToyOntzOjU6ImltYWdlIjtzOjI4OiJjYXRhbG9nL2RlbW8vbW9kdWxlL2ltZzIuanBnIjtzOjI6ImlkIjtzOjI6IjE4Ijt9aToyO2E6Mjp7czo1OiJpbWFnZSI7czoyODoiY2F0YWxvZy9kZW1vL21vZHVsZS9pbWczLmpwZyI7czoyOiJpZCI7czoyOiIyMCI7fX1zOjU6Iml0ZW1zIjtzOjE6IjQiO3M6MTE6ImltYWdlX3dpZHRoIjtzOjM6IjI4MCI7czoxMjoiaW1hZ2VfaGVpZ2h0IjtzOjM6IjM0MCI7fQ==', 89, 0),
(5837, 'content', 'tab_image.thtR3G', 'YToxMzp7czo0OiJyYW5kIjtzOjE4OiIwLjc4OTA1NjAxOTIzMDQ4MjciO3M6NjoibW9kdWxlIjtzOjE2OiJ0YWJfaW1hZ2UudGh0UjNHIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxNjoidGFiX2ltYWdlLnRodFIzRyI7czo1OiJ3dHlwZSI7czo5OiJ0YWJfaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjExOiJwcm9tb3Rpb25zICI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxMToicHJvbW90aW9ucyAiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjExOiJwcm9tb3Rpb25zICI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjIyOiJwYW5sZS12MyBwYW5lbC1zdWNjZXNzIjtzOjE0OiJpbWFnZV9mZWF0dXJlZCI7YToyOntzOjU6ImltYWdlIjthOjY6e2k6MTtzOjMzOiJjYXRhbG9nL2RlbW8vYmFubmVycy9iYW5uZXIxOC5qcGciO2k6MjtzOjMzOiJjYXRhbG9nL2RlbW8vYmFubmVycy9iYW5uZXIxOS5qcGciO2k6MztzOjMzOiJjYXRhbG9nL2RlbW8vYmFubmVycy9iYW5uZXIyMC5qcGciO2k6NDtzOjMzOiJjYXRhbG9nL2RlbW8vYmFubmVycy9iYW5uZXIyMS5qcGciO2k6NTtzOjMzOiJjYXRhbG9nL2RlbW8vYmFubmVycy9iYW5uZXIyMi5qcGciO2k6NjtzOjMzOiJjYXRhbG9nL2RlbW8vYmFubmVycy9iYW5uZXIyMy5qcGciO31zOjQ6Im5hbWUiO2E6Njp7aToxO3M6Mjk6ImNsb3RoaW5nLCBzaG9lcyAmYW1wOyBqZXdlbHJ5IjtpOjI7czoxNToiYmFieSAmYW1wOyBraWRzIjtpOjM7czoyNzoiaG9tZSwgZnVybml0dXJlICZhbXA7IHBhdGlvIjtpOjQ7czoxMToiZWxlY3Ryb25pY3MiO2k6NTtzOjIyOiJ0b3lzICZhbXA7IHZpZGVvIGdhbWVzIjtpOjY7czoyNToibW92aWVzLCBtdXNpYyAmYW1wOyBib29rcyI7fX1zOjExOiJpbWFnZV93aWR0aCI7czozOiI4NzMiO3M6MTI6ImltYWdlX2hlaWdodCI7czozOiIyOTUiO30=', 89, 0),
(5830, 'content', 'product_list.mTY6k4', 'YToxODp7czo0OiJyYW5kIjtzOjE5OiIwLjM1Mjk3NDI5NTM3MDE2NjQ1IjtzOjY6Im1vZHVsZSI7czoxOToicHJvZHVjdF9saXN0Lm1UWTZrNCI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTk6InByb2R1Y3RfbGlzdC5tVFk2azQiO3M6NToid3R5cGUiO3M6MTI6InByb2R1Y3RfbGlzdCI7czoxMToid2lkZ2V0X25hbWUiO3M6MTc6IndlIHBpY2ssIHlvdSBzaG9wIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjE3OiJ3ZSBwaWNrLCB5b3Ugc2hvcCI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTc6IndlIHBpY2ssIHlvdSBzaG9wIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6NDg6InBhbmVsLXYyIHBhbmVsLWluZm8gc2lkZWJhciBib3JkZXItaW5mbyBzcGFjZS0yMCI7czo5OiJpbWFnZWZpbGUiO3M6MDoiIjtzOjQ6InNpemUiO3M6MDoiIjtzOjU6ImxpbWl0IjtzOjI6IjEwIjtzOjY6ImNvbHVtbiI7czoxOiIxIjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MjoiMTAiO3M6NToid2lkdGgiO3M6MjoiODAiO3M6NjoiaGVpZ2h0IjtzOjI6IjgwIjtzOjk6Imxpc3RfdHlwZSI7czo2OiJuZXdlc3QiO30=', 83, 0),
(5831, 'content', 'product_tabs.pqrEPt', 'YTozMDp7czo0OiJyYW5kIjtzOjE4OiIwLjc4MzI2MTc2ODk2MDM5NjgiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X3RhYnMucHFyRVB0IjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF90YWJzLnBxckVQdCI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF90YWJzIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMToiQmVzdCBTZWxsZXIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTE6IkJlc3QgU2VsbGVyIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxMToiQmVzdCBTZWxsZXIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czoyMDoicGFuZWwtdjIgdGFiLXN1Y2Nlc3MiO3M6OToiaW1hZ2VmaWxlIjtzOjA6IiI7czo0OiJzaXplIjtzOjA6IiI7czo1OiJsaW1pdCI7czoxOiI2IjtzOjY6ImNvbHVtbiI7czoxOiI0IjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiNCI7czoxMToiaWNvbl9uZXdlc3QiO3M6MDoiIjtzOjEzOiJlbmFibGVfbmV3ZXN0IjtzOjE6IjAiO3M6MTM6Imljb25fZmVhdHVyZWQiO3M6MDoiIjtzOjEwOiJwcm9kdWN0X2lkIjtzOjExOiI0Miw0NCw0Nyw0OCI7czoxNToiZW5hYmxlX2ZlYXR1cmVkIjtzOjE6IjAiO3M6MTU6Imljb25fYmVzdHNlbGxlciI7czowOiIiO3M6MTc6ImVuYWJsZV9iZXN0c2VsbGVyIjtzOjE6IjEiO3M6MTI6Imljb25fc3BlY2lhbCI7czowOiIiO3M6MTQ6ImVuYWJsZV9zcGVjaWFsIjtzOjE6IjAiO3M6MTQ6Imljb25fbW9zdHZpZXdzIjtzOjA6IiI7czoxNjoiZW5hYmxlX21vc3R2aWV3cyI7czoxOiIxIjtzOjk6InRhYnNzdHlsZSI7czo2OiJ0YWItdjEiO3M6MTE6ImltYWdlX3dpZHRoIjtzOjM6IjIwMCI7czoxMjoiaW1hZ2VfaGVpZ2h0IjtzOjM6IjIwMCI7czo5OiJhdXRvX3BsYXkiO3M6NDoiMzAwMCI7fQ==', 83, 0),
(5828, 'content', 'list_links.VZ73IG', 'YToxMTp7czo0OiJyYW5kIjtzOjE4OiIwLjk4MzkxOTQ4NTEzOTgwOTYiO3M6NjoibW9kdWxlIjtzOjE3OiJsaXN0X2xpbmtzLlZaNzNJRyI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTc6Imxpc3RfbGlua3MuVlo3M0lHIjtzOjU6Ind0eXBlIjtzOjEwOiJsaXN0X2xpbmtzIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMzoicXVpY2tseSBnbyB0byI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxMzoicXVpY2tseSBnbyB0byI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTM6InF1aWNrbHkgZ28gdG8iO3M6MTI6ImFkZGl0aW9uX2NscyI7czoyMjoicGFuZWwtdjIgcGFuZWwtZGVmYXVsdCI7czo1OiJsaW5rcyI7YTo4OntpOjA7czoyOiIzNiI7aToxO3M6MjoiNDUiO2k6MjtzOjI6IjQ2IjtpOjM7czoyOiI1OSI7aTo0O3M6MjoiNjAiO2k6NTtzOjI6IjYwIjtpOjY7czoyOiI2MiI7aTo3O3M6MjoiNjMiO319', 83, 0);
INSERT INTO `oc_pavwidget` (`pavwidget_id`, `name`, `code`, `setting`, `module_id`, `key`) VALUES
(5829, 'content', 'product_list.1W8LZN', 'YToxODp7czo0OiJyYW5kIjtzOjE3OiIwLjY2ODcyMDIwNTcyMDQ4MyI7czo2OiJtb2R1bGUiO3M6MTk6InByb2R1Y3RfbGlzdC4xVzhMWk4iO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE5OiJwcm9kdWN0X2xpc3QuMVc4TFpOIjtzOjU6Ind0eXBlIjtzOjEyOiJwcm9kdWN0X2xpc3QiO3M6MTE6IndpZGdldF9uYW1lIjtzOjEyOiJtb3N0IHBvcHVsYXIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTI6Im1vc3QgcG9wdWxhciI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTI6Im1vc3QgcG9wdWxhciI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjU0OiJwYW5lbC12MiBwYW5lbC13YXJuaW5nIHNpZGViYXIgYm9yZGVyLXdhcm5pbmcgc3BhY2UtMjAiO3M6OToiaW1hZ2VmaWxlIjtzOjA6IiI7czo0OiJzaXplIjtzOjA6IiI7czo1OiJsaW1pdCI7czoyOiIxMCI7czo2OiJjb2x1bW4iO3M6MToiMSI7czoxMjoiaXRlbXNwZXJwYWdlIjtzOjE6IjgiO3M6NToid2lkdGgiO3M6MjoiODAiO3M6NjoiaGVpZ2h0IjtzOjI6IjgwIjtzOjk6Imxpc3RfdHlwZSI7czo2OiJuZXdlc3QiO30=', 83, 0),
(4542, 'content', 'featured_category.FLyBdV', 'YToxMzp7czo0OiJyYW5kIjtzOjE4OiIwLjgxNDYyNTM2Nzc1NzU5MzIiO3M6NjoibW9kdWxlIjtzOjI0OiJmZWF0dXJlZF9jYXRlZ29yeS5GTHlCZFYiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjI0OiJmZWF0dXJlZF9jYXRlZ29yeS5GTHlCZFYiO3M6NToid3R5cGUiO3M6MTc6ImZlYXR1cmVkX2NhdGVnb3J5IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxOToiRmVhdHVyZWQgY2F0ZWdvcnkgMiI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxOToiRmVhdHVyZWQgY2F0ZWdvcnkgMiI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MDoiIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6NTM6ImZlYXR1cmVkLWNhdGVnb3J5IGZlYXR1cmVkLWNhdGVnb3J5LXYyIGljb24tZWZmZWN0LXYxIjtzOjE5OiJjYXRlZ29yaWVzX2ZlYXR1cmVkIjthOjQ6e2k6MDthOjI6e3M6NToiaW1hZ2UiO3M6MzI6ImNhdGFsb2cvZGVtby9pY29uL2ljb24tY2F0ZTYucG5nIjtzOjI6ImlkIjtzOjI6IjYxIjt9aToxO2E6Mjp7czo1OiJpbWFnZSI7czowOiIiO3M6MjoiaWQiO3M6MjoiNjIiO31pOjI7YToyOntzOjU6ImltYWdlIjtzOjMyOiJjYXRhbG9nL2RlbW8vaWNvbi9pY29uLWNhdGU3LnBuZyI7czoyOiJpZCI7czoyOiI0NSI7fWk6MzthOjI6e3M6NToiaW1hZ2UiO3M6MzI6ImNhdGFsb2cvZGVtby9pY29uL2ljb24tY2F0ZTgucG5nIjtzOjI6ImlkIjtzOjI6IjI1Ijt9fXM6MTE6ImltYWdlX3dpZHRoIjtzOjM6IjExOCI7czoxMjoiaW1hZ2VfaGVpZ2h0IjtzOjI6Ijk2Ijt9', 48, 0),
(4541, 'content', 'bloglatest.mn9kWj', 'YToxNDp7czo0OiJyYW5kIjtzOjE5OiIwLjA2MjY1NjM0Mjg4NzA0ODI0IjtzOjY6Im1vZHVsZSI7czoxNzoiYmxvZ2xhdGVzdC5tbjlrV2oiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE3OiJibG9nbGF0ZXN0Lm1uOWtXaiI7czo1OiJ3dHlwZSI7czoxMDoiYmxvZ2xhdGVzdCI7czoxMToid2lkZ2V0X25hbWUiO3M6NToiV29ya3MiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6NToiV29ya3MiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjExOiJibG9nMi1ob21lMiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjQ3OiJwYW5lbC1zcGVjaWFsIHNwYWNlLXRvcC0xNTAgaGlkZGVuLXNtIGhpZGRlbi14cyI7czozOiJuYnIiO3M6MToiMyI7czo1OiJ3aWR0aCI7czozOiIzNTAiO3M6NjoiaGVpZ2h0IjtzOjM6IjIwMCI7czo0OiJjb2xzIjtzOjE6IjEiO30=', 48, 0),
(5823, 'content', 'image.WOBZwM', 'YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjUwNDk3OTM2MDkwMzAyOTgiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5XT0Jad00iO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5XT0Jad00iO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjEwOiJpbWcxLWhvbWUyIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjAiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjEwOiJpbWcxLWhvbWUyIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxMDoiaW1nMS1ob21lMiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjI4OiJlZmZlY3QtdjMgc3BhY2UtbWFyZ2luLXRiLTIwIjtzOjk6ImltYWdlZmlsZSI7czozMjoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYmFubmVyNS5qcGciO3M6NDoic2l6ZSI7czowOiIiO3M6OToiYW5pbWF0aW9uIjtzOjE6IjEiO3M6OToiYWxpZ25tZW50IjtzOjY6ImNlbnRlciI7czo3OiJpc3BvcHVwIjtzOjE6IjEiO3M6NDoibGluayI7czoxOiIjIjt9', 83, 0),
(5820, 'content', 'image.aZaDsW', 'YToxNjp7czo0OiJyYW5kIjtzOjE5OiIwLjIxMTQxNTU1MDA2NjQzMTQyIjtzOjY6Im1vZHVsZSI7czoxMjoiaW1hZ2UuYVphRHNXIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxMjoiaW1hZ2UuYVphRHNXIjtzOjU6Ind0eXBlIjtzOjU6ImltYWdlIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMDoiaW1nMi1ob21lMiI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxMDoiaW1nMi1ob21lMiI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTA6ImltZzItaG9tZTIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czo5OiJlZmZlY3QtdjMiO3M6OToiaW1hZ2VmaWxlIjtzOjMyOiJjYXRhbG9nL2RlbW8vYmFubmVycy9iYW5uZXI3LmpwZyI7czo0OiJzaXplIjtzOjA6IiI7czo5OiJhbmltYXRpb24iO3M6MToiMSI7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjc6ImlzcG9wdXAiO3M6MToiMSI7czo0OiJsaW5rIjtzOjE6IiMiO30=', 83, 0),
(5818, 'content', 'countdownproduct2.TRa6UC', 'YToxODp7czo0OiJyYW5kIjtzOjE4OiIwLjk0NDA3MjI3MjI5Nzg2NTYiO3M6NjoibW9kdWxlIjtzOjI0OiJjb3VudGRvd25wcm9kdWN0Mi5UUmE2VUMiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjI0OiJjb3VudGRvd25wcm9kdWN0Mi5UUmE2VUMiO3M6NToid3R5cGUiO3M6MTc6ImNvdW50ZG93bnByb2R1Y3QyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMToiY291dGRvd24gdG8iO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTE6ImNvdXRkb3duIHRvIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxMToiY291dGRvd24gdG8iO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6MTA6InN0YXJ0X2RhdGUiO3M6MTA6IjIwMTAtMDItMDIiO3M6ODoiZW5kX2RhdGUiO3M6MTA6IjIwMTYtMTEtMjIiO3M6MTQ6ImNob29zZV9wcm9kdWN0IjtzOjA6IiI7czo3OiJwcm9kdWN0IjthOjU6e2k6MDtzOjI6IjMwIjtpOjE7czoyOiI0MSI7aToyO3M6MjoiMjgiO2k6MztzOjI6IjQwIjtpOjQ7czoyOiI0MiI7fXM6MTM6Imh0bWxjb250ZW50XzEiO3M6NjE6IiZsdDtzcGFuIGNsYXNzPSZxdW90O2JsYWNrJnF1b3Q7Jmd0O2JsYWNrJmx0Oy9zcGFuJmd0OyBmcmlkYXkiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6NjE6IiZsdDtzcGFuIGNsYXNzPSZxdW90O2JsYWNrJnF1b3Q7Jmd0O2JsYWNrJmx0Oy9zcGFuJmd0OyBmcmlkYXkiO3M6MTE6ImltYWdlX3dpZHRoIjtzOjM6IjIwMCI7czoxMjoiaW1hZ2VfaGVpZ2h0IjtzOjM6IjIwMCI7fQ==', 83, 0),
(5847, 'content', 'listproduct_home1.2iSxBV', 'YToyMTp7czo0OiJyYW5kIjtzOjE3OiIwLjU1NTQ5ODE3MDA0ODczMiI7czo2OiJtb2R1bGUiO3M6MjQ6Imxpc3Rwcm9kdWN0X2hvbWUxLjJpU3hCViI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MjQ6Imxpc3Rwcm9kdWN0X2hvbWUxLjJpU3hCViI7czo1OiJ3dHlwZSI7czoxNzoibGlzdHByb2R1Y3RfaG9tZTEiO3M6MTE6IndpZGdldF9uYW1lIjtzOjk6Ik3DoXkgQ8OidSI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMyI7czo5OiJNw6F5IEPDonUiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjE1OiJCYWJ5ICZhbXA7IGtpZHMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czoxMjoidGV4dC1zdWNjZXNzIjtzOjU6ImxpbmtzIjthOjE6e2k6MztzOjI6Ijc3Ijt9czo5OiJ0aXRsZV8xXzMiO3M6MTE6IkJlc3QgU2VsbGVyIjtzOjk6InRpdGxlXzFfMSI7czoxMDoiQmVzdHNlbGxlciI7czo2OiJzdHlsZTEiO3M6MjI6InBhbmVsLXYyIHBhbmVsLWRlZmF1bHQiO3M6MTE6InByb2R1Y3QxX2lkIjtzOjExOiI0Miw0NCw0Nyw0OCI7czo5OiJ0aXRsZV8yXzMiO3M6NjoiTmV3ZXN0IjtzOjk6InRpdGxlXzJfMSI7czoxMjoiTmV3IEFycml2YWxzIjtzOjY6InN0eWxlMiI7czoyMzoicGFuZWwtdjIgcGFuZWwtc3VjY2VzcyAiO3M6MTE6InByb2R1Y3QyX2lkIjtzOjExOiI0Miw0NCw0Nyw0OCI7czoxMDoiYmFubmVyX2ltZyI7czoyODoiY2F0YWxvZy9HcmFwaGljcy9tYXlfY2F1LmpwZyI7czo5OiJpbWdfY2xhc3MiO3M6NDoibGVmdCI7fQ==', 59, 0),
(5848, 'content', 'listproduct_home1.pW4xo1', 'YToyMTp7czo0OiJyYW5kIjtzOjE5OiIwLjA4Mjg0NDMzOTQxMzUzNTQyIjtzOjY6Im1vZHVsZSI7czoyNDoibGlzdHByb2R1Y3RfaG9tZTEucFc0eG8xIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNDoibGlzdHByb2R1Y3RfaG9tZTEucFc0eG8xIjtzOjU6Ind0eXBlIjtzOjE3OiJMaXN0cHJvZHVjdF9ob21lMSI7czoxMToid2lkZ2V0X25hbWUiO3M6MTA6IkPhuqduIEPDonUiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzMiO3M6MTA6IkPhuqduIEPDonUiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjI5OiJjbG90aGluZywgc2hvZXMgJmFtcDsgamV3ZWxyeSI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjk6InRleHQtaW5mbyI7czo1OiJsaW5rcyI7YToxOntpOjA7czoyOiI3NSI7fXM6OToidGl0bGVfMV8zIjtzOjExOiJCZXN0IFNlbGxlciI7czo5OiJ0aXRsZV8xXzEiO3M6ODoiYmVzZWxsZXIiO3M6Njoic3R5bGUxIjtzOjIyOiJwYW5lbC12MiBwYW5lbC1kZWZhdWx0IjtzOjExOiJwcm9kdWN0MV9pZCI7czoyMDoiMzAsMjgsMjksNTAsMzMsNDQsNDMiO3M6OToidGl0bGVfMl8zIjtzOjY6Ik5ld2VzdCI7czo5OiJ0aXRsZV8yXzEiO3M6MTE6Im5ldyBhcml2YWxzIjtzOjY6InN0eWxlMiI7czoyMDoicGFuZWwtdjIgcGFuZWwtaW5mbyAiO3M6MTE6InByb2R1Y3QyX2lkIjtzOjIwOiI0Miw0NCw0Nyw0OCwyMCwzMCw0MCI7czoxMDoiYmFubmVyX2ltZyI7czoyODoiY2F0YWxvZy9HcmFwaGljcy9jYW4gY2F1LmpwZyI7czo5OiJpbWdfY2xhc3MiO3M6NToicmlnaHQiO30=', 59, 0),
(5844, 'content', 'countdownproduct.F9cI8t', 'YToxODp7czo0OiJyYW5kIjtzOjE4OiIwLjY5ODc0NzY5MDk2NDAwNzkiO3M6NjoibW9kdWxlIjtzOjIzOiJjb3VudGRvd25wcm9kdWN0LkY5Y0k4dCI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MjM6ImNvdW50ZG93bnByb2R1Y3QuRjljSTh0IjtzOjU6Ind0eXBlIjtzOjE2OiJjb3VudGRvd25wcm9kdWN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMToiY291dGRvd24gdG8iO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTE6ImNvdXRkb3duIHRvIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxMToiY291dGRvd24gdG8iO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6MTA6InN0YXJ0X2RhdGUiO3M6MTA6IjIwMDktMDItMDMiO3M6ODoiZW5kX2RhdGUiO3M6MTA6IjIwMTktMDctMTciO3M6MTQ6ImNob29zZV9wcm9kdWN0IjtzOjA6IiI7czo3OiJwcm9kdWN0IjthOjU6e2k6MDtzOjI6IjQyIjtpOjE7czoyOiIzMCI7aToyO3M6MjoiMjgiO2k6MztzOjI6IjQxIjtpOjQ7czoyOiI0MCI7fXM6MTM6Imh0bWxjb250ZW50XzEiO3M6NjE6IiZsdDtzcGFuIGNsYXNzPSZxdW90O2JsYWNrJnF1b3Q7Jmd0O2JsYWNrJmx0Oy9zcGFuJmd0OyBmcmlkYXkiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6NjE6IiZsdDtzcGFuIGNsYXNzPSZxdW90O2JsYWNrJnF1b3Q7Jmd0O2JsYWNrJmx0Oy9zcGFuJmd0OyBmcmlkYXkiO3M6MTE6ImltYWdlX3dpZHRoIjtzOjM6IjIwMCI7czoxMjoiaW1hZ2VfaGVpZ2h0IjtzOjM6IjIwMCI7fQ==', 59, 0),
(5845, 'content', 'html.YCVMGW', 'YToxMjp7czo0OiJyYW5kIjtzOjE4OiIwLjE3MjQ2NTkyMjA5MDIxMjQiO3M6NjoibW9kdWxlIjtzOjExOiJodG1sLllDVk1HVyI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTE6Imh0bWwuWUNWTUdXIjtzOjU6Ind0eXBlIjtzOjQ6Imh0bWwiO3M6MTE6IndpZGdldF9uYW1lIjtzOjE1OiJDdXN0b20gdG9wIGhvbWUiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTU6IkN1c3RvbSB0b3AgaG9tZSI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTU6IkN1c3RvbSB0b3AgaG9tZSI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czo0NjE6IiZsdDtkaXYgY2xhc3M9JnF1b3Q7cHVsbC1sZWZ0JnF1b3Q7IHN0eWxlPSZxdW90O2NvbG9yOiMwMDAmcXVvdDsmZ3Q7Jmx0O3N0cm9uZyBjbGFzcz0mcXVvdDtyZWQgZm9udC1zaXplLTEzJnF1b3Q7Jmd0O0dFVCBGUkVFIFNISVBQSU5HJmx0Oy9zdHJvbmcmZ3Q7IG9uIGV2ZXJ5IG9yZGVyIG92ZXIgJDE1MC4wMCwgJmx0O3N0cm9uZyZndDtqdXN0IGZvciB0aGUgaG9saWRheXMuJmx0Oy9zdHJvbmcmZ3Q7Jmx0Oy9kaXYmZ3Q7Jmx0O2RpdiBjbGFzcz0mcXVvdDtyZWFkbW9yZSBwdWxsLXJpZ2h0IGJ0bi1saW5rJnF1b3Q7Jmd0OyZsdDthIGhyZWY9JnF1b3Q7IyZxdW90OyB0aXRsZT0mcXVvdDtyZWFkIG1vcmUmcXVvdDsmZ3Q7dmlldyBkZXRhaWwmbHQ7aSBjbGFzcz0mcXVvdDtzcGFjZS1wYWRkaW5nLWw1IGZhIGZhLWFuZ2xlLXJpZ2h0JnF1b3Q7Jmd0OyZsdDsvaSZndDsmbHQ7L2EmZ3Q7Jmx0Oy9kaXYmZ3Q7IjtzOjEzOiJodG1sY29udGVudF8yIjtzOjQ2MToiJmx0O2RpdiBjbGFzcz0mcXVvdDtwdWxsLWxlZnQmcXVvdDsgc3R5bGU9JnF1b3Q7Y29sb3I6IzAwMCZxdW90OyZndDsmbHQ7c3Ryb25nIGNsYXNzPSZxdW90O3JlZCBmb250LXNpemUtMTMmcXVvdDsmZ3Q7R0VUIEZSRUUgU0hJUFBJTkcmbHQ7L3N0cm9uZyZndDsgb24gZXZlcnkgb3JkZXIgb3ZlciAkMTUwLjAwLCAmbHQ7c3Ryb25nJmd0O2p1c3QgZm9yIHRoZSBob2xpZGF5cy4mbHQ7L3N0cm9uZyZndDsmbHQ7L2RpdiZndDsmbHQ7ZGl2IGNsYXNzPSZxdW90O3JlYWRtb3JlIHB1bGwtcmlnaHQgYnRuLWxpbmsmcXVvdDsmZ3Q7Jmx0O2EgaHJlZj0mcXVvdDsjJnF1b3Q7IHRpdGxlPSZxdW90O3JlYWQgbW9yZSZxdW90OyZndDt2aWV3IGRldGFpbCZsdDtpIGNsYXNzPSZxdW90O3NwYWNlLXBhZGRpbmctbDUgZmEgZmEtYW5nbGUtcmlnaHQmcXVvdDsmZ3Q7Jmx0Oy9pJmd0OyZsdDsvYSZndDsmbHQ7L2RpdiZndDsiO30=', 59, 0),
(5846, 'content', 'listproduct_home1.0NsoHd', 'YToyMTp7czo0OiJyYW5kIjtzOjE4OiIwLjU3MzMyMTczMTQ5MDcxMDYiO3M6NjoibW9kdWxlIjtzOjI0OiJsaXN0cHJvZHVjdF9ob21lMS4wTnNvSGQiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjI0OiJsaXN0cHJvZHVjdF9ob21lMS4wTnNvSGQiO3M6NToid3R5cGUiO3M6MTc6Imxpc3Rwcm9kdWN0X2hvbWUxIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMjoiUGjhu6UgS2nhu4duIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8zIjtzOjA6IiI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTI6IlBo4bulIEtp4buHbiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjEyOiJ0ZXh0LXdhcm5pbmciO3M6NToibGlua3MiO2E6NDp7aTowO3M6MjoiNjYiO2k6MTtzOjI6IjY4IjtpOjI7czoyOiI3OCI7aTozO3M6MjoiMzMiO31zOjk6InRpdGxlXzFfMyI7czo1OiJUaXRsZSI7czo5OiJ0aXRsZV8xXzEiO3M6MTA6IkJlc3RzZWxsZXIiO3M6Njoic3R5bGUxIjtzOjIyOiJwYW5lbC12MiBwYW5lbC1kZWZhdWx0IjtzOjExOiJwcm9kdWN0MV9pZCI7czoyMDoiMzAsMjgsMjksNTAsMzMsNDQsNDMiO3M6OToidGl0bGVfMl8zIjtzOjU6IlRpdGxlIjtzOjk6InRpdGxlXzJfMSI7czoxMjoiTmV3IEFycml2YWxzIjtzOjY6InN0eWxlMiI7czoyMzoicGFuZWwtdjIgcGFuZWwtd2FybmluZyAiO3M6MTE6InByb2R1Y3QyX2lkIjtzOjE3OiI0Miw0NCw0Nyw0OCwzMCwyOCI7czoxMDoiYmFubmVyX2ltZyI7czozNjoiY2F0YWxvZy9HcmFwaGljcy9waHUga2llbiBjYXUgY2EuanBnIjtzOjk6ImltZ19jbGFzcyI7czo1OiJyaWdodCI7fQ==', 59, 0),
(5825, 'content', 'listproduct_home2.7wgrsw', 'YToxNzp7czo0OiJyYW5kIjtzOjE5OiIwLjIxNTIxMzk0OTI5MjM0OTgzIjtzOjY6Im1vZHVsZSI7czoyNDoibGlzdHByb2R1Y3RfaG9tZTIuN3dncnN3IjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNDoibGlzdHByb2R1Y3RfaG9tZTIuN3dncnN3IjtzOjU6Ind0eXBlIjtzOjE3OiJsaXN0cHJvZHVjdF9ob21lMiI7czoxMToid2lkZ2V0X25hbWUiO3M6MTU6ImNsb3RoaW5nLCBzaG9lcyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxNToiY2xvdGhpbmcsIHNob2VzIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxNToiY2xvdGhpbmcsIHNob2VzIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6ODoicGFuZWwtdjIiO3M6NToibGlua3MiO2E6NTp7aTowO3M6MjoiMzYiO2k6MTtzOjI6IjQ1IjtpOjI7czoyOiI1OSI7aTozO3M6MjoiNjAiO2k6NDtzOjI6IjYxIjt9czo5OiJ0aXRsZV8xXzEiO3M6MTA6IkJlc3RzZWxsZXIiO3M6OToidGl0bGVfMV8yIjtzOjEwOiJCZXN0c2VsbGVyIjtzOjExOiJwcm9kdWN0MV9pZCI7czoyMDoiMzAsNDMsNDYsNDcsNDgsMjAsNDAiO3M6OToidGl0bGVfMl8xIjtzOjEyOiJOZXcgQXJyaXZhbHMiO3M6OToidGl0bGVfMl8yIjtzOjEyOiJOZXcgQXJyaXZhbHMiO3M6MTE6InByb2R1Y3QyX2lkIjtzOjE3OiI0Miw0NCw0Nyw0OCwyNSwyMiI7fQ==', 83, 0),
(5824, 'content', 'listproduct_home2.22UAd8', 'YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjY1MTk1OTQ0MzY1NTA4NDIiO3M6NjoibW9kdWxlIjtzOjI0OiJsaXN0cHJvZHVjdF9ob21lMi4yMlVBZDgiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjI0OiJsaXN0cHJvZHVjdF9ob21lMi4yMlVBZDgiO3M6NToid3R5cGUiO3M6MTc6Imxpc3Rwcm9kdWN0X2hvbWUyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxNjoiQmFieSAmYW1wOyBraWRzICI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxNjoiQmFieSAmYW1wOyBraWRzICI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTY6IkJhYnkgJmFtcDsga2lkcyAiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6NToibGlua3MiO2E6Njp7aTowO3M6MjoiMzYiO2k6MTtzOjI6IjQ1IjtpOjI7czoyOiI0NiI7aTozO3M6MjoiNjAiO2k6NDtzOjI6IjYxIjtpOjU7czoyOiIyNSI7fXM6OToidGl0bGVfMV8xIjtzOjEwOiJCZXN0c2VsbGVyIjtzOjk6InRpdGxlXzFfMiI7czoxMDoiQmVzdHNlbGxlciI7czoxMToicHJvZHVjdDFfaWQiO3M6MTQ6IjI5LDUwLDQ4LDMwLDMzIjtzOjk6InRpdGxlXzJfMSI7czoxMjoiTmV3IEFycml2YWxzIjtzOjk6InRpdGxlXzJfMiI7czoxMjoiTmV3IEFycml2YWxzIjtzOjExOiJwcm9kdWN0Ml9pZCI7czoxNzoiNDIsNDQsNDcsNDgsMjAsMjMiO30=', 83, 0),
(5822, 'content', 'image.tZqfYO', 'YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjMyNjk1NTE2NTY2NjMwODIiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS50WnFmWU8iO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS50WnFmWU8iO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjEwOiJpbWcyLWhvbWUyIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjAiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjEwOiJpbWcyLWhvbWUyIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxMDoiaW1nMi1ob21lMiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjk6ImVmZmVjdC12MyI7czo5OiJpbWFnZWZpbGUiO3M6MzI6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjYuanBnIjtzOjQ6InNpemUiO3M6MDoiIjtzOjk6ImFuaW1hdGlvbiI7czoxOiIxIjtzOjk6ImFsaWdubWVudCI7czo2OiJjZW50ZXIiO3M6NzoiaXNwb3B1cCI7czoxOiIxIjtzOjQ6ImxpbmsiO3M6MToiIyI7fQ==', 83, 0),
(5821, 'content', 'image.BLXThv', 'YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjQ2NzM5MTY5MDU3NTY1OTIiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5CTFhUaHYiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5CTFhUaHYiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjk6ImltZzQtaG9tMiI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czo5OiJpbWc0LWhvbTIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjk6ImltZzQtaG9tMiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjk6ImVmZmVjdC12MyI7czo5OiJpbWFnZWZpbGUiO3M6MzI6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjkuanBnIjtzOjQ6InNpemUiO3M6MDoiIjtzOjk6ImFuaW1hdGlvbiI7czoxOiIxIjtzOjk6ImFsaWdubWVudCI7czo2OiJjZW50ZXIiO3M6NzoiaXNwb3B1cCI7czoxOiIxIjtzOjQ6ImxpbmsiO3M6MToiIyI7fQ==', 83, 0),
(5819, 'content', 'image.7xa41k', 'YToxNjp7czo0OiJyYW5kIjtzOjIwOiIwLjAyNzkzMzYxNDE5Nzc1NTA4NiI7czo2OiJtb2R1bGUiO3M6MTI6ImltYWdlLjd4YTQxayI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTI6ImltYWdlLjd4YTQxayI7czo1OiJ3dHlwZSI7czo1OiJpbWFnZSI7czoxMToid2lkZ2V0X25hbWUiO3M6MTA6ImltZzMtaG9tZTIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTA6ImltZzMtaG9tZTIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjEwOiJpbWczLWhvbWUyIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6Mjg6ImVmZmVjdC12MyBzcGFjZS1tYXJnaW4tdGItMjAiO3M6OToiaW1hZ2VmaWxlIjtzOjMyOiJjYXRhbG9nL2RlbW8vYmFubmVycy9iYW5uZXI4LmpwZyI7czo0OiJzaXplIjtzOjA6IiI7czo5OiJhbmltYXRpb24iO3M6MToiMSI7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjc6ImlzcG9wdXAiO3M6MToiMSI7czo0OiJsaW5rIjtzOjE6IiMiO30=', 83, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product`
--

CREATE TABLE `oc_product` (
  `product_id` int(11) NOT NULL,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `viewed` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product`
--

INSERT INTO `oc_product` (`product_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `viewed`, `date_added`, `date_modified`) VALUES
(28, 'Product 1', '', '', '', '', '', '', '', 939, 7, 'catalog/demo/product/product1.jpg', 5, 1, '100.0000', 200, 9, '2009-02-03', '146.40000000', 2, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2009-02-03 16:06:50', '2015-06-26 14:55:30'),
(29, 'Product 2', '', '', '', '', '', '', '', 999, 6, 'catalog/demo/product/product2.jpg', 6, 1, '279.9900', 0, 9, '2009-02-03', '133.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 0, 1, 1, '2009-02-03 16:42:17', '2016-12-11 23:28:19'),
(30, 'Product 3', '', '', '', '', '', '', '', 7, 6, 'catalog/demo/product/product3.jpg', 8, 1, '100.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2009-02-03 16:59:00', '2016-12-11 23:29:06'),
(31, 'Product 4', '', '', '', '', '', '', '', 1000, 6, 'catalog/demo/product/product4.jpg', 0, 1, '80.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 0, 1, 0, '2009-02-03 17:00:10', '2015-05-26 15:22:52'),
(32, 'Product 5', '', '', '', '', '', '', '', 999, 6, 'catalog/demo/product/product5.jpg', 8, 1, '100.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2009-02-03 17:07:26', '2015-05-26 14:49:15'),
(33, 'Product 6', '', '', '', '', '', '', '', 1000, 6, 'catalog/demo/product/product6.jpg', 0, 1, '200.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-03 17:08:31', '2015-05-26 14:49:34'),
(34, 'Product 7', '', '', '', '', '', '', '', 1000, 6, 'catalog/demo/product/product7.jpg', 8, 1, '100.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-03 18:07:54', '2015-05-26 14:49:52'),
(35, 'Product 8', '', '', '', '', '', '', '', 1000, 5, 'catalog/demo/product/product8.jpg', 9, 0, '100.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 1, '2009-02-03 18:08:31', '2016-12-11 23:30:17'),
(36, 'Product 9', '', '', '', '', '', '', '', 994, 6, 'catalog/demo/product/product9.jpg', 8, 0, '100.0000', 100, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-03 18:09:19', '2015-05-26 14:50:26'),
(40, 'product 11', '', '', '', '', '', '', '', 970, 5, 'catalog/demo/product/product10.jpg', 8, 1, '101.0000', 0, 9, '2009-02-03', '10.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2009-02-03 21:07:12', '2015-06-26 14:57:31'),
(41, 'Product 14', '', '', '', '', '', '', '', 977, 5, 'catalog/demo/product/product11.jpg', 8, 1, '100.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2009-02-03 21:07:26', '2015-06-26 14:57:11'),
(42, 'Product 15', '', '', '', '', '', '', '', 990, 5, 'catalog/demo/product/product12.jpg', 8, 1, '100.0000', 400, 9, '2009-02-04', '12.50000000', 1, '1.00000000', '2.00000000', '3.00000000', 1, 1, 1, 0, 1, 0, '2009-02-03 21:07:37', '2015-06-26 15:02:53'),
(43, 'Product 16', '', '', '', '', '', '', '', 929, 5, 'catalog/demo/product/product13.jpg', 8, 0, '500.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-03 21:07:49', '2015-05-26 14:46:56'),
(44, 'Product 17', '', '', '', '', '', '', '', 1000, 5, 'catalog/demo/product/product14.jpg', 8, 1, '1000.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-03 21:08:00', '2016-12-11 23:29:38'),
(45, 'Product 18', '', '', '', '', '', '', '', 998, 5, 'catalog/demo/product/product15.jpg', 8, 1, '2000.0000', 0, 0, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-03 21:08:17', '2015-05-26 14:47:42'),
(46, 'Product 19', '', '', '', '', '', '', '', 1000, 5, 'catalog/demo/product/product16.jpg', 10, 1, '1000.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-03 21:08:29', '2015-05-26 14:47:58'),
(47, 'Product 21', '', '', '', '', '', '', '', 1000, 5, 'catalog/demo/product/product17.jpg', 7, 1, '100.0000', 400, 9, '2009-02-03', '1.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 0, 1, 0, '2009-02-03 21:08:40', '2015-05-26 15:23:53'),
(48, 'product 20', 'test 1', '', '', '', '', '', 'test 2', 995, 5, 'catalog/demo/product/product18.jpg', 8, 1, '100.0000', 0, 9, '2009-02-08', '1.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-08 17:21:51', '2015-05-26 14:44:01'),
(49, 'SAM1', '', '', '', '', '', '', '', 0, 8, 'catalog/demo/product/product19.jpg', 8, 1, '199.9900', 0, 9, '2011-04-25', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2011-04-26 08:57:34', '2015-05-26 14:44:22'),
(50, 'product 11', '', '', '', '', '', '', '', 970, 5, 'catalog/demo/product/product20.jpg', 8, 1, '1010.0000', 0, 9, '2009-02-03', '10.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 1, '2015-01-20 08:40:31', '2015-05-26 14:48:35');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_attribute`
--

CREATE TABLE `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_attribute`
--

INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
(47, 2, 3, '4'),
(43, 4, 1, '8gb'),
(42, 3, 1, '100mhz'),
(47, 4, 1, '16GB'),
(47, 4, 3, '16GB'),
(47, 2, 1, '4'),
(43, 2, 1, '1'),
(42, 3, 3, '100mhz'),
(43, 4, 3, '8gb'),
(43, 2, 3, '1');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_description`
--

CREATE TABLE `oc_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_description`
--

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(41, 3, 'Lorem ipsum with Metal betical 10', '&lt;div&gt;\r\n	Just when you thought iMac had everything, now there´s even more. More powerful Intel Core 2 Duo processors. And more memory standard. Combine this with Mac OS X Leopard and iLife ´08, and it´s more all-in-one than ever. iMac packs amazing performance into a stunningly slim space.&lt;/div&gt;\r\n', '', '', '', ''),
(28, 1, 'Lorem ipsum with Metal betical 1', '&lt;p&gt;\r\n	HTC Touch - in High Definition. Watch music videos and streaming content in awe-inspiring high definition clarity for a mobile experience you never thought possible. Seductively sleek, the HTC Touch HD provides the next generation of mobile functionality, all at a simple touch. Fully integrated with Windows Mobile Professional 6.1, ultrafast 3.5G, GPS, 5MP camera, plus lots more - all delivered on a breathtakingly crisp 3.8&quot; WVGA touchscreen - you can take control of your mobile world with the HTC Touch HD.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Processor Qualcomm® MSM 7201A™ 528 MHz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Windows Mobile® 6.1 Professional Operating System&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Memory: 512 MB ROM, 288 MB RAM&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Dimensions: 115 mm x 62.8 mm x 12 mm / 146.4 grams&lt;/li&gt;\r\n	&lt;li&gt;\r\n		3.8-inch TFT-LCD flat touch-sensitive screen with 480 x 800 WVGA resolution&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HSDPA/WCDMA: Europe/Asia: 900/2100 MHz; Up to 2 Mbps up-link and 7.2 Mbps down-link speeds&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Quad-band GSM/GPRS/EDGE: Europe/Asia: 850/900/1800/1900 MHz (Band frequency, HSUPA availability, and data speed are operator dependent.)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Device Control via HTC TouchFLO™ 3D &amp;amp; Touch-sensitive front panel buttons&lt;/li&gt;\r\n	&lt;li&gt;\r\n		GPS and A-GPS ready&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Bluetooth® 2.0 with Enhanced Data Rate and A2DP for wireless stereo headsets&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Wi-Fi®: IEEE 802.11 b/g&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HTC ExtUSB™ (11-pin mini-USB 2.0)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		5 megapixel color camera with auto focus&lt;/li&gt;\r\n	&lt;li&gt;\r\n		VGA CMOS color camera&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in 3.5 mm audio jack, microphone, speaker, and FM radio&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Ring tone formats: AAC, AAC+, eAAC+, AMR-NB, AMR-WB, QCP, MP3, WMA, WAV&lt;/li&gt;\r\n	&lt;li&gt;\r\n		40 polyphonic and standard MIDI format 0 and 1 (SMF)/SP MIDI&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Rechargeable Lithium-ion or Lithium-ion polymer 1350 mAh battery&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Expansion Slot: microSD™ memory card (SD 2.0 compatible)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		AC Adapter Voltage range/frequency: 100 ~ 240V AC, 50/60 Hz DC output: 5V and 1A&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Special Features: FM Radio, G-Sensor&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', 'Lorem ipsum with Metal betical 1', '', ''),
(44, 1, 'Lorem ipsum with Metal betical 14', '&lt;div&gt;\r\n	MacBook Air is ultrathin, ultraportable, and ultra unlike anything else. But you don’t lose inches and pounds overnight. It’s the result of rethinking conventions. Of multiple wireless innovations. And of breakthrough design. With MacBook Air, mobile computing suddenly has a new standard.&lt;/div&gt;\r\n', '', 'Lorem ipsum with Metal betical 14', '', ''),
(34, 3, 'Lorem ipsum with Metal 7', '&lt;div&gt;\r\n	&lt;strong&gt;Born to be worn.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Clip on the worlds most wearable music player and take up to 240 songs with you anywhere. Choose from five colors including four new hues to make your musical fashion statement.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Random meets rhythm.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With iTunes autofill, iPod shuffle can deliver a new musical experience every time you sync. For more randomness, you can shuffle songs during playback with the slide of a switch.&lt;/p&gt;\r\n	&lt;strong&gt;Everything is easy.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Charge and sync with the included USB dock. Operate the iPod shuffle controls with one hand. Enjoy up to 12 hours straight of skip-free music playback.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', '', '', ''),
(35, 3, 'Máy Câu Nguyên Hộp', '&lt;p&gt;Mới 100%&lt;/p&gt;\r\n', '', 'Máy Câu Nguyên Hộp', '', ''),
(36, 3, 'Lorem ipsum with Metal 9', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Video in your pocket.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Its the small iPod with one very big idea: video. The worlds most popular music player now lets you enjoy movies, TV shows, and more on a two-inch display thats 65% brighter than before.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Sleek and colorful.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With an anodized aluminum and polished stainless steel enclosure and a choice of five colors, iPod nano is dressed to impress.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;iTunes.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Available as a free download, iTunes makes it easy to browse and buy millions of songs, movies, TV shows, audiobooks, and games and download free podcasts all at the iTunes Store. And you can import your own music, manage your whole media library, and sync your iPod or iPhone with ease.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', '', '', ''),
(47, 1, 'Lorem ipsum with Metal 17', '&lt;p&gt;\r\n	Stop your co-workers in their tracks with the stunning new 30-inch diagonal HP LP3065 Flat Panel Monitor. This flagship monitor features best-in-class performance and presentation features on a huge wide-aspect screen while letting you work as comfortably as possible - you might even forget you\'re at the office&lt;/p&gt;\r\n', '', 'Lorem ipsum with Metal 17', '', ''),
(33, 3, 'Lorem ipsum with Metal 6', '&lt;div&gt;\r\n	Imagine the advantages of going big without slowing down. The big 19&quot; 941BW monitor combines wide aspect ratio with fast pixel response time, for bigger images, more room to work and crisp motion. In addition, the exclusive MagicBright 2, MagicColor and MagicTune technologies help deliver the ideal image in every situation, while sleek, narrow bezels and adjustable stands deliver style just the way you want it. With the Samsung 941BW widescreen analog/digital LCD monitor, it\'s not hard to imagine.&lt;/div&gt;\r\n', '', '', '', ''),
(46, 3, 'Lorem ipsum with Metal 16', '&lt;div&gt;\r\n	Unprecedented power. The next generation of processing technology has arrived. Built into the newest VAIO notebooks lies Intel\'s latest, most powerful innovation yet: Intel® Centrino® 2 processor technology. Boasting incredible speed, expanded wireless connectivity, enhanced multimedia support and greater energy efficiency, all the high-performance essentials are seamlessly combined into a single chip.&lt;/div&gt;\r\n', '', '', '', ''),
(32, 3, 'Lorem ipsum with Metal 5', '&lt;p&gt;\r\n	&lt;strong&gt;Revolutionary multi-touch interface.&lt;/strong&gt;&lt;br&gt;\r\n	iPod touch features the same multi-touch screen technology as iPhone. Pinch to zoom in on a photo. Scroll through your songs and videos with a flick. Flip through your library by album artwork with Cover Flow.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Gorgeous 3.5-inch widescreen display.&lt;/strong&gt;&lt;br&gt;\r\n	Watch your movies, TV shows, and photos come alive with bright, vivid color on the 320-by-480-pixel display.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Music downloads straight from iTunes.&lt;/strong&gt;&lt;br&gt;\r\n	Shop the iTunes Wi-Fi Music Store from anywhere with Wi-Fi.1 Browse or search to find the music youre looking for, preview it, and buy it with just a tap.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Surf the web with Wi-Fi.&lt;/strong&gt;&lt;br&gt;\r\n	Browse the web using Safari and watch YouTube videos on the first iPod with Wi-Fi built in&lt;br&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n', '', '', '', ''),
(50, 3, 'Lorem ipsum with Metal 20', '&lt;p class=&quot;intro&quot;&gt;\r\n	iPhone is a revolutionary new mobile phone that allows you to make a call by simply tapping a name or number in your address book, a favorites list, or a call log. It also automatically syncs all your contacts from a PC, Mac, or Internet service. And it lets you select and listen to voicemail messages in whatever order you want just like email.&lt;/p&gt;\r\n', 'Watchs Black', '', 'Watchs Black', 'Watchs Black'),
(45, 3, 'Lorem ipsum with Metal 15', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Latest Intel mobile architecture&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Powered by the most advanced mobile processors from Intel, the new Core 2 Duo MacBook Pro is over 50% faster than the original Core Duo MacBook Pro and now supports up to 4GB of RAM.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Leading-edge graphics&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			The NVIDIA GeForce 8600M GT delivers exceptional graphics processing power. For the ultimate creative canvas, you can even configure the 17-inch model with a 1920-by-1200 resolution display.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Designed for life on the road&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Innovations such as a magnetic power connection and an illuminated keyboard with ambient light sensor put the MacBook Pro in a class by itself.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Connect. Create. Communicate.&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Quickly set up a video conference with the built-in iSight camera. Control presentations and media from up to 30 feet away with the included Apple Remote. Connect to high-bandwidth peripherals with FireWire 800 and DVI.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Next-generation wireless&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Featuring 802.11n wireless technology, the MacBook Pro delivers up to five times the performance and up to twice the range of previous-generation technologies.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', '', '', ''),
(48, 3, 'Lorem ipsum with Metal 18', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;More room to move.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Sleeker design.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Beautiful, durable, and sleeker than ever, iPod classic now features an anodized aluminum and polished stainless steel enclosure with rounded edges.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', '', '', ''),
(49, 3, 'Lorem ipsum with Metal 19', '&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1, is the world’s thinnest tablet, measuring 8.6 mm thickness, running with Android 3.0 Honeycomb OS on a 1GHz dual-core Tegra 2 processor, similar to its younger brother Samsung Galaxy Tab 8.9.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1 gives pure Android 3.0 experience, adding its new TouchWiz UX or TouchWiz 4.0 – includes a live panel, which lets you to customize with different content, such as your pictures, bookmarks, and social feeds, sporting a 10.1 inches WXGA capacitive touch screen with 1280 x 800 pixels of resolution, equipped with 3 megapixel rear camera with LED flash and a 2 megapixel front camera, HSPA+ connectivity up to 21Mbps, 720p HD video recording capability, 1080p HD playback, DLNA support, Bluetooth 2.1, USB 2.0, gyroscope, Wi-Fi 802.11 a/b/g/n, micro-SD slot, 3.5mm headphone jack, and SIM slot, including the Samsung Stick – a Bluetooth microphone that can be carried in a pocket like a pen and sound dock with powered subwoofer.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1 will come in 16GB / 32GB / 64GB verities and pre-loaded with Social Hub, Reader’s Hub, Music Hub and Samsung Mini Apps Tray – which gives you access to more commonly used apps to help ease multitasking and it is capable of Adobe Flash Player 10.2, powered by 6860mAh battery that gives you 10hours of video-playback time.&amp;nbsp;äö&lt;/p&gt;\r\n', '', '', 'Watchs white', ''),
(43, 3, 'Lorem ipsum with Metal 13', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Intel Core 2 Duo processor&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;1GB memory, larger hard drives&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		The new MacBook now comes with 1GB of memory standard and larger hard drives for the entire line perfect for running more of your favorite applications and storing growing media collections.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Sleek, 1.08-inch-thin design&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		MacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the cord.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Built-in iSight camera&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Right out of the box, you can have a video chat with friends or family,2 record a video at your desk, or take fun pictures with Photo Booth&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', '', '', ''),
(42, 1, 'Lorem ipsum with Metal betical 12', '&lt;p&gt;\r\n	The 30-inch Apple Cinema HD Display delivers an amazing 2560 x 1600 pixel resolution. Designed specifically for the creative professional, this display provides more space for easier access to all the tools and palettes needed to edit, format and composite your work. Combine this display with a Mac Pro, MacBook Pro, or PowerMac G5 and there\'s no limit to what you can achieve. &lt;br&gt;\r\n	&lt;br&gt;\r\n	The Cinema HD features an active-matrix liquid crystal display that produces flicker-free images that deliver twice the brightness, twice the sharpness and twice the contrast ratio of a typical CRT display. Unlike other flat panels, it\'s designed with a pure digital interface to deliver distortion-free images that never need adjusting. With over 4 million digital pixels, the display is uniquely suited for scientific and technical applications such as visualizing molecular structures or analyzing geological data. &lt;br&gt;\r\n	&lt;br&gt;\r\n	Offering accurate, brilliant color performance, the Cinema HD delivers up to 16.7 million colors across a wide gamut allowing you to see subtle nuances between colors from soft pastels to rich jewel tones. A wide viewing angle ensures uniform color from edge to edge. Apple\'s ColorSync technology allows you to create custom profiles to maintain consistent color onscreen and in print. The result: You can confidently use this display in all your color-critical applications. &lt;br&gt;\r\n	&lt;br&gt;\r\n	Housed in a new aluminum design, the display has a very thin bezel that enhances visual accuracy. Each display features two FireWire 400 ports and two USB 2.0 ports, making attachment of desktop peripherals, such as iSight, iPod, digital and still cameras, hard drives, printers and scanners, even more accessible and convenient. Taking advantage of the much thinner and lighter footprint of an LCD, the new displays support the VESA (Video Electronics Standards Association) mounting interface standard. Customers with the optional Cinema Display VESA Mount Adapter kit gain the flexibility to mount their display in locations most appropriate for their work environment. &lt;br&gt;\r\n	&lt;br&gt;\r\n	The Cinema HD features a single cable design with elegant breakout for the USB 2.0, FireWire 400 and a pure digital connection using the industry standard Digital Video Interface (DVI) interface. The DVI connection allows for a direct pure-digital connection.&lt;br&gt;\r\n	&lt;/p&gt;\r\n\r\n&lt;h3&gt;\r\n	Features:&lt;/h3&gt;\r\n\r\n&lt;p&gt;\r\n	Unrivaled display performance&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n\r\n	&lt;li&gt;\r\n		30-inch (viewable) active-matrix liquid crystal display provides breathtaking image quality and vivid, richly saturated color.&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		Support for 2560-by-1600 pixel resolution for display of high definition still and video imagery.&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		Wide-format design for simultaneous display of two full pages of text and graphics.&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		Industry standard DVI connector for direct attachment to Mac- and Windows-based desktops and notebooks&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		Incredibly wide (170 degree) horizontal and vertical viewing angle for maximum visibility and color performance.&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		Lightning-fast pixel response for full-motion digital video playback.&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		Support for 16.7 million saturated colors, for use in all graphics-intensive applications.&lt;/li&gt;\r\n\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;\r\n	Simple setup and operation&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n\r\n	&lt;li&gt;\r\n		Single cable with elegant breakout for connection to DVI, USB and FireWire ports&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		Built-in two-port USB 2.0 hub for easy connection of desktop peripheral devices.&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		Two FireWire 400 ports to support iSight and other desktop peripherals&lt;/li&gt;\r\n\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;\r\n	Sleek, elegant design&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n\r\n	&lt;li&gt;\r\n		Huge virtual workspace, very small footprint.&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		Narrow Bezel design to minimize visual impact of using dual displays&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		Unique hinge design for effortless adjustment&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		Support for VESA mounting solutions (Apple Cinema Display VESA Mount Adapter sold separately)&lt;/li&gt;\r\n\r\n&lt;/ul&gt;\r\n\r\n&lt;h3&gt;\r\n	Technical specifications&lt;/h3&gt;\r\n\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen size (diagonal viewable image size)&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n\r\n	&lt;li&gt;\r\n		Apple Cinema HD Display: 30 inches (29.7-inch viewable)&lt;/li&gt;\r\n\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen type&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n\r\n	&lt;li&gt;\r\n		Thin film transistor (TFT) active-matrix liquid crystal display (AMLCD)&lt;/li&gt;\r\n\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;\r\n	&lt;b&gt;Resolutions&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n\r\n	&lt;li&gt;\r\n		2560 x 1600 pixels (optimum resolution)&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		2048 x 1280&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		1920 x 1200&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		1280 x 800&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		1024 x 640&lt;/li&gt;\r\n\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;\r\n	&lt;b&gt;Display colors (maximum)&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n\r\n	&lt;li&gt;\r\n		16.7 million&lt;/li&gt;\r\n\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;\r\n	&lt;b&gt;Viewing angle (typical)&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n\r\n	&lt;li&gt;\r\n		170° horizontal; 170° vertical&lt;/li&gt;\r\n\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;\r\n	&lt;b&gt;Brightness (typical)&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n\r\n	&lt;li&gt;\r\n		30-inch Cinema HD Display: 400 cd/m2&lt;/li&gt;\r\n\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;\r\n	&lt;b&gt;Contrast ratio (typical)&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n\r\n	&lt;li&gt;\r\n		700:1&lt;/li&gt;\r\n\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;\r\n	&lt;b&gt;Response time (typical)&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n\r\n	&lt;li&gt;\r\n		16 ms&lt;/li&gt;\r\n\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;\r\n	&lt;b&gt;Pixel pitch&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n\r\n	&lt;li&gt;\r\n		30-inch Cinema HD Display: 0.250 mm&lt;/li&gt;\r\n\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen treatment&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n\r\n	&lt;li&gt;\r\n		Antiglare hardcoat&lt;/li&gt;\r\n\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;\r\n	&lt;b&gt;User controls (hardware and software)&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n\r\n	&lt;li&gt;\r\n		Display Power,&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		System sleep, wake&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		Brightness&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		Monitor tilt&lt;/li&gt;\r\n\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;\r\n	&lt;b&gt;Connectors and cables&lt;/b&gt;&lt;br&gt;\r\n	Cable&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n\r\n	&lt;li&gt;\r\n		DVI (Digital Visual Interface)&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		FireWire 400&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		USB 2.0&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		DC power (24 V)&lt;/li&gt;\r\n\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;\r\n	Connectors&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n\r\n	&lt;li&gt;\r\n		Two-port, self-powered USB 2.0 hub&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		Two FireWire 400 ports&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		Kensington security port&lt;/li&gt;\r\n\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;\r\n	&lt;b&gt;VESA mount adapter&lt;/b&gt;&lt;br&gt;\r\n	Requires optional Cinema Display VESA Mount Adapter (M9649G/A)&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n\r\n	&lt;li&gt;\r\n		Compatible with VESA FDMI (MIS-D, 100, C) compliant mounting solutions&lt;/li&gt;\r\n\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;\r\n	&lt;b&gt;Electrical requirements&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n\r\n	&lt;li&gt;\r\n		Input voltage: 100-240 VAC 50-60Hz&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		Maximum power when operating: 150W&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		Energy saver mode: 3W or less&lt;/li&gt;\r\n\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;\r\n	&lt;b&gt;Environmental requirements&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n\r\n	&lt;li&gt;\r\n		Operating temperature: 50° to 95° F (10° to 35° C)&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		Storage temperature: -40° to 116° F (-40° to 47° C)&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		Operating humidity: 20% to 80% noncondensing&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		Maximum operating altitude: 10,000 feet&lt;/li&gt;\r\n\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;\r\n	&lt;b&gt;Agency approvals&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n\r\n	&lt;li&gt;\r\n		FCC Part 15 Class B&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		EN55022 Class B&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		EN55024&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		VCCI Class B&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		AS/NZS 3548 Class B&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		CNS 13438 Class B&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		ICES-003 Class B&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		ISO 13406 part 2&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		MPR II&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		IEC 60950&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		UL 60950&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		CSA 60950&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		EN60950&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		ENERGY STAR&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		TCO \'03&lt;/li&gt;\r\n\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;\r\n	&lt;b&gt;Size and weight&lt;/b&gt;&lt;br&gt;\r\n	30-inch Apple Cinema HD Display&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n\r\n	&lt;li&gt;\r\n		Height: 21.3 inches (54.3 cm)&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		Width: 27.2 inches (68.8 cm)&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		Depth: 8.46 inches (21.5 cm)&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		Weight: 27.5 pounds (12.5 kg)&lt;/li&gt;\r\n\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;\r\n	&lt;b&gt;System Requirements&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n\r\n	&lt;li&gt;\r\n		Mac Pro, all graphic options&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		MacBook Pro&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		Power Mac G5 (PCI-X) with ATI Radeon 9650 or better or NVIDIA GeForce 6800 GT DDL or better&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		Power Mac G5 (PCI Express), all graphics options&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		PowerBook G4 with dual-link DVI support&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		Windows PC and graphics card that supports DVI ports with dual-link digital bandwidth and VESA DDC standard for plug-and-play setup&lt;/li&gt;\r\n\r\n&lt;/ul&gt;', '', 'Lorem ipsum with Metal betical 12', '', ''),
(29, 3, 'Daiwa Cần Lure', '&lt;p&gt;\r\n	Redefine your workday with the Palm Treo Pro smartphone. Perfectly balanced, you can respond to business and personal email, stay on top of appointments and contacts, and use Wi-Fi or GPS when you’re out and about. Then watch a video on YouTube, catch up with news and sports on the web, or listen to a few songs. Balance your work and play the way you like it, with the Palm Treo Pro.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Windows Mobile® 6.1 Professional Edition&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Qualcomm® MSM7201 400MHz Processor&lt;/li&gt;\r\n	&lt;li&gt;\r\n		320x320 transflective colour TFT touchscreen&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HSDPA/UMTS/EDGE/GPRS/GSM radio&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Tri-band UMTS — 850MHz, 1900MHz, 2100MHz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Quad-band GSM — 850/900/1800/1900&lt;/li&gt;\r\n	&lt;li&gt;\r\n		802.11b/g with WPA, WPA2, and 801.1x authentication&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in GPS&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Bluetooth Version: 2.0 + Enhanced Data Rate&lt;/li&gt;\r\n	&lt;li&gt;\r\n		256MB storage (100MB user available), 128MB RAM&lt;/li&gt;\r\n	&lt;li&gt;\r\n		2.0 megapixel camera, up to 8x digital zoom and video capture&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Removable, rechargeable 1500mAh lithium-ion battery&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Up to 5.0 hours talk time and up to 250 hours standby&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MicroSDHC card expansion (up to 32GB supported)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MicroUSB 2.0 for synchronization and charging&lt;/li&gt;\r\n	&lt;li&gt;\r\n		3.5mm stereo headset jack&lt;/li&gt;\r\n	&lt;li&gt;\r\n		60mm (W) x 114mm (L) x 13.5mm (D) / 133g&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', 'Daiwa Cần Lure', '', ''),
(30, 3, 'Shimano carbon', '&lt;p&gt;\r\n	Canon\'s press material for the EOS 5D states that it \'defines (a) new D-SLR category\', while we\'re not typically too concerned with marketing talk this particular statement is clearly pretty accurate. The EOS 5D is unlike any previous digital SLR in that it combines a full-frame (35 mm sized) high resolution sensor (12.8 megapixels) with a relatively compact body (slightly larger than the EOS 20D, although in your hand it feels noticeably \'chunkier\'). The EOS 5D is aimed to slot in between the EOS 20D and the EOS-1D professional digital SLR\'s, an important difference when compared to the latter is that the EOS 5D doesn\'t have any environmental seals. While Canon don\'t specifically refer to the EOS 5D as a \'professional\' digital SLR it will have obvious appeal to professionals who want a high quality digital SLR in a body lighter than the EOS-1D. It will also no doubt appeal to current EOS 20D owners (although lets hope they\'ve not bought too many EF-S lenses...) äë&lt;/p&gt;\r\n', '', 'Shimano carbon', '', ''),
(31, 1, 'Lorem ipsum with Metal 4', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		Engineered with pro-level features and performance, the 12.3-effective-megapixel D300 combines brand new technologies with advanced features inherited from Nikon\'s newly announced D3 professional digital SLR camera to offer serious photographers remarkable performance combined with agility.&lt;br&gt;\r\n		&lt;br&gt;\r\n		Similar to the D3, the D300 features Nikon\'s exclusive EXPEED Image Processing System that is central to driving the speed and processing power needed for many of the camera\'s new features. The D300 features a new 51-point autofocus system with Nikon\'s 3D Focus Tracking feature and two new LiveView shooting modes that allow users to frame a photograph using the camera\'s high-resolution LCD monitor. The D300 shares a similar Scene Recognition System as is found in the D3; it promises to greatly enhance the accuracy of autofocus, autoexposure, and auto white balance by recognizing the subject or scene being photographed and applying this information to the calculations for the three functions.&lt;br&gt;\r\n		&lt;br&gt;\r\n		The D300 reacts with lightning speed, powering up in a mere 0.13 seconds and shooting with an imperceptible 45-millisecond shutter release lag time. The D300 is capable of shooting at a rapid six frames per second and can go as fast as eight frames per second when using the optional MB-D10 multi-power battery pack. In continuous bursts, the D300 can shoot up to 100 shots at full 12.3-megapixel resolution. (NORMAL-LARGE image setting, using a SanDisk Extreme IV 1GB CompactFlash card.)&lt;br&gt;\r\n		&lt;br&gt;\r\n		The D300 incorporates a range of innovative technologies and features that will significantly improve the accuracy, control, and performance photographers can get from their equipment. Its new Scene Recognition System advances the use of Nikon\'s acclaimed 1,005-segment sensor to recognize colors and light patterns that help the camera determine the subject and the type of scene being photographed before a picture is taken. This information is used to improve the accuracy of autofocus, autoexposure, and auto white balance functions in the D300. For example, the camera can track moving subjects better and by identifying them, it can also automatically select focus points faster and with greater accuracy. It can also analyze highlights and more accurately determine exposure, as well as infer light sources to deliver more accurate white balance detection.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'Lorem ipsum with Metal 4', '', ''),
(30, 1, 'Shimano carbon', '&lt;p&gt;\r\n	Canon\'s press material for the EOS 5D states that it \'defines (a) new D-SLR category\', while we\'re not typically too concerned with marketing talk this particular statement is clearly pretty accurate. The EOS 5D is unlike any previous digital SLR in that it combines a full-frame (35 mm sized) high resolution sensor (12.8 megapixels) with a relatively compact body (slightly larger than the EOS 20D, although in your hand it feels noticeably \'chunkier\'). The EOS 5D is aimed to slot in between the EOS 20D and the EOS-1D professional digital SLR\'s, an important difference when compared to the latter is that the EOS 5D doesn\'t have any environmental seals. While Canon don\'t specifically refer to the EOS 5D as a \'professional\' digital SLR it will have obvious appeal to professionals who want a high quality digital SLR in a body lighter than the EOS-1D. It will also no doubt appeal to current EOS 20D owners (although lets hope they\'ve not bought too many EF-S lenses...) äë&lt;/p&gt;\r\n', '', 'Shimano carbon', '', ''),
(31, 3, 'Lorem ipsum with Metal 4', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		Engineered with pro-level features and performance, the 12.3-effective-megapixel D300 combines brand new technologies with advanced features inherited from Nikon\'s newly announced D3 professional digital SLR camera to offer serious photographers remarkable performance combined with agility.&lt;br&gt;\r\n		&lt;br&gt;\r\n		Similar to the D3, the D300 features Nikon\'s exclusive EXPEED Image Processing System that is central to driving the speed and processing power needed for many of the camera\'s new features. The D300 features a new 51-point autofocus system with Nikon\'s 3D Focus Tracking feature and two new LiveView shooting modes that allow users to frame a photograph using the camera\'s high-resolution LCD monitor. The D300 shares a similar Scene Recognition System as is found in the D3; it promises to greatly enhance the accuracy of autofocus, autoexposure, and auto white balance by recognizing the subject or scene being photographed and applying this information to the calculations for the three functions.&lt;br&gt;\r\n		&lt;br&gt;\r\n		The D300 reacts with lightning speed, powering up in a mere 0.13 seconds and shooting with an imperceptible 45-millisecond shutter release lag time. The D300 is capable of shooting at a rapid six frames per second and can go as fast as eight frames per second when using the optional MB-D10 multi-power battery pack. In continuous bursts, the D300 can shoot up to 100 shots at full 12.3-megapixel resolution. (NORMAL-LARGE image setting, using a SanDisk Extreme IV 1GB CompactFlash card.)&lt;br&gt;\r\n		&lt;br&gt;\r\n		The D300 incorporates a range of innovative technologies and features that will significantly improve the accuracy, control, and performance photographers can get from their equipment. Its new Scene Recognition System advances the use of Nikon\'s acclaimed 1,005-segment sensor to recognize colors and light patterns that help the camera determine the subject and the type of scene being photographed before a picture is taken. This information is used to improve the accuracy of autofocus, autoexposure, and auto white balance functions in the D300. For example, the camera can track moving subjects better and by identifying them, it can also automatically select focus points faster and with greater accuracy. It can also analyze highlights and more accurately determine exposure, as well as infer light sources to deliver more accurate white balance detection.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', '', '', ''),
(29, 1, 'Daiwa Cần Lure', '&lt;p&gt;\r\n	Redefine your workday with the Palm Treo Pro smartphone. Perfectly balanced, you can respond to business and personal email, stay on top of appointments and contacts, and use Wi-Fi or GPS when you’re out and about. Then watch a video on YouTube, catch up with news and sports on the web, or listen to a few songs. Balance your work and play the way you like it, with the Palm Treo Pro.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Windows Mobile® 6.1 Professional Edition&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Qualcomm® MSM7201 400MHz Processor&lt;/li&gt;\r\n	&lt;li&gt;\r\n		320x320 transflective colour TFT touchscreen&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HSDPA/UMTS/EDGE/GPRS/GSM radio&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Tri-band UMTS — 850MHz, 1900MHz, 2100MHz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Quad-band GSM — 850/900/1800/1900&lt;/li&gt;\r\n	&lt;li&gt;\r\n		802.11b/g with WPA, WPA2, and 801.1x authentication&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in GPS&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Bluetooth Version: 2.0 + Enhanced Data Rate&lt;/li&gt;\r\n	&lt;li&gt;\r\n		256MB storage (100MB user available), 128MB RAM&lt;/li&gt;\r\n	&lt;li&gt;\r\n		2.0 megapixel camera, up to 8x digital zoom and video capture&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Removable, rechargeable 1500mAh lithium-ion battery&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Up to 5.0 hours talk time and up to 250 hours standby&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MicroSDHC card expansion (up to 32GB supported)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MicroUSB 2.0 for synchronization and charging&lt;/li&gt;\r\n	&lt;li&gt;\r\n		3.5mm stereo headset jack&lt;/li&gt;\r\n	&lt;li&gt;\r\n		60mm (W) x 114mm (L) x 13.5mm (D) / 133g&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', 'Daiwa Cần Lure', '', ''),
(43, 1, 'Lorem ipsum with Metal 13', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Intel Core 2 Duo processor&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;1GB memory, larger hard drives&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		The new MacBook now comes with 1GB of memory standard and larger hard drives for the entire line perfect for running more of your favorite applications and storing growing media collections.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Sleek, 1.08-inch-thin design&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		MacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the cord.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Built-in iSight camera&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Right out of the box, you can have a video chat with friends or family,2 record a video at your desk, or take fun pictures with Photo Booth&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', 'Lorem ipsum with Metal 13', '', ''),
(48, 1, 'Lorem ipsum with Metal 18', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;More room to move.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Sleeker design.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Beautiful, durable, and sleeker than ever, iPod classic now features an anodized aluminum and polished stainless steel enclosure with rounded edges.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'Lorem ipsum with Metal 18', '', ''),
(49, 1, 'Lorem ipsum with Metal 19', '&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1, is the world’s thinnest tablet, measuring 8.6 mm thickness, running with Android 3.0 Honeycomb OS on a 1GHz dual-core Tegra 2 processor, similar to its younger brother Samsung Galaxy Tab 8.9.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1 gives pure Android 3.0 experience, adding its new TouchWiz UX or TouchWiz 4.0 – includes a live panel, which lets you to customize with different content, such as your pictures, bookmarks, and social feeds, sporting a 10.1 inches WXGA capacitive touch screen with 1280 x 800 pixels of resolution, equipped with 3 megapixel rear camera with LED flash and a 2 megapixel front camera, HSPA+ connectivity up to 21Mbps, 720p HD video recording capability, 1080p HD playback, DLNA support, Bluetooth 2.1, USB 2.0, gyroscope, Wi-Fi 802.11 a/b/g/n, micro-SD slot, 3.5mm headphone jack, and SIM slot, including the Samsung Stick – a Bluetooth microphone that can be carried in a pocket like a pen and sound dock with powered subwoofer.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1 will come in 16GB / 32GB / 64GB verities and pre-loaded with Social Hub, Reader’s Hub, Music Hub and Samsung Mini Apps Tray – which gives you access to more commonly used apps to help ease multitasking and it is capable of Adobe Flash Player 10.2, powered by 6860mAh battery that gives you 10hours of video-playback time.&amp;nbsp;äö&lt;/p&gt;\r\n', '', 'Lorem ipsum with Metal 19', 'Watchs white', ''),
(50, 1, 'Lorem ipsum with Metal 20', '&lt;p class=&quot;intro&quot;&gt;\r\n	iPhone is a revolutionary new mobile phone that allows you to make a call by simply tapping a name or number in your address book, a favorites list, or a call log. It also automatically syncs all your contacts from a PC, Mac, or Internet service. And it lets you select and listen to voicemail messages in whatever order you want just like email.&lt;/p&gt;\r\n', 'Watchs Black', 'Lorem ipsum with Metal 20', 'Watchs Black', 'Watchs Black'),
(45, 1, 'Lorem ipsum with Metal 15', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Latest Intel mobile architecture&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Powered by the most advanced mobile processors from Intel, the new Core 2 Duo MacBook Pro is over 50% faster than the original Core Duo MacBook Pro and now supports up to 4GB of RAM.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Leading-edge graphics&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			The NVIDIA GeForce 8600M GT delivers exceptional graphics processing power. For the ultimate creative canvas, you can even configure the 17-inch model with a 1920-by-1200 resolution display.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Designed for life on the road&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Innovations such as a magnetic power connection and an illuminated keyboard with ambient light sensor put the MacBook Pro in a class by itself.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Connect. Create. Communicate.&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Quickly set up a video conference with the built-in iSight camera. Control presentations and media from up to 30 feet away with the included Apple Remote. Connect to high-bandwidth peripherals with FireWire 800 and DVI.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Next-generation wireless&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Featuring 802.11n wireless technology, the MacBook Pro delivers up to five times the performance and up to twice the range of previous-generation technologies.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'Lorem ipsum with Metal 15', '', ''),
(46, 1, 'Lorem ipsum with Metal 16', '&lt;div&gt;\r\n	Unprecedented power. The next generation of processing technology has arrived. Built into the newest VAIO notebooks lies Intel\'s latest, most powerful innovation yet: Intel® Centrino® 2 processor technology. Boasting incredible speed, expanded wireless connectivity, enhanced multimedia support and greater energy efficiency, all the high-performance essentials are seamlessly combined into a single chip.&lt;/div&gt;\r\n', '', 'Lorem ipsum with Metal 16', '', ''),
(44, 3, 'Cước 50m', '&lt;div&gt;\r\n	MacBook Air is ultrathin, ultraportable, and ultra unlike anything else. But you don’t lose inches and pounds overnight. It’s the result of rethinking conventions. Of multiple wireless innovations. And of breakthrough design. With MacBook Air, mobile computing suddenly has a new standard.&lt;/div&gt;\r\n', '', 'Cước 50m', '', ''),
(47, 3, 'Lorem ipsum with Metal 17', '&lt;p&gt;\r\n	Stop your co-workers in their tracks with the stunning new 30-inch diagonal HP LP3065 Flat Panel Monitor. This flagship monitor features best-in-class performance and presentation features on a huge wide-aspect screen while letting you work as comfortably as possible - you might even forget you\'re at the office&lt;/p&gt;\r\n', '', '', '', '');
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(42, 3, 'Lorem ipsum with Metal betical 12', '&lt;p&gt;\r\n	The 30-inch Apple Cinema HD Display delivers an amazing 2560 x 1600 pixel resolution. Designed specifically for the creative professional, this display provides more space for easier access to all the tools and palettes needed to edit, format and composite your work. Combine this display with a Mac Pro, MacBook Pro, or PowerMac G5 and there\'s no limit to what you can achieve. &lt;br&gt;\r\n	&lt;br&gt;\r\n	The Cinema HD features an active-matrix liquid crystal display that produces flicker-free images that deliver twice the brightness, twice the sharpness and twice the contrast ratio of a typical CRT display. Unlike other flat panels, it\'s designed with a pure digital interface to deliver distortion-free images that never need adjusting. With over 4 million digital pixels, the display is uniquely suited for scientific and technical applications such as visualizing molecular structures or analyzing geological data. &lt;br&gt;\r\n	&lt;br&gt;\r\n	Offering accurate, brilliant color performance, the Cinema HD delivers up to 16.7 million colors across a wide gamut allowing you to see subtle nuances between colors from soft pastels to rich jewel tones. A wide viewing angle ensures uniform color from edge to edge. Apple\'s ColorSync technology allows you to create custom profiles to maintain consistent color onscreen and in print. The result: You can confidently use this display in all your color-critical applications. &lt;br&gt;\r\n	&lt;br&gt;\r\n	Housed in a new aluminum design, the display has a very thin bezel that enhances visual accuracy. Each display features two FireWire 400 ports and two USB 2.0 ports, making attachment of desktop peripherals, such as iSight, iPod, digital and still cameras, hard drives, printers and scanners, even more accessible and convenient. Taking advantage of the much thinner and lighter footprint of an LCD, the new displays support the VESA (Video Electronics Standards Association) mounting interface standard. Customers with the optional Cinema Display VESA Mount Adapter kit gain the flexibility to mount their display in locations most appropriate for their work environment. &lt;br&gt;\r\n	&lt;br&gt;\r\n	The Cinema HD features a single cable design with elegant breakout for the USB 2.0, FireWire 400 and a pure digital connection using the industry standard Digital Video Interface (DVI) interface. The DVI connection allows for a direct pure-digital connection.&lt;br&gt;\r\n	&lt;/p&gt;\r\n\r\n&lt;h3&gt;\r\n	Features:&lt;/h3&gt;\r\n\r\n&lt;p&gt;\r\n	Unrivaled display performance&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n\r\n	&lt;li&gt;\r\n		30-inch (viewable) active-matrix liquid crystal display provides breathtaking image quality and vivid, richly saturated color.&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		Support for 2560-by-1600 pixel resolution for display of high definition still and video imagery.&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		Wide-format design for simultaneous display of two full pages of text and graphics.&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		Industry standard DVI connector for direct attachment to Mac- and Windows-based desktops and notebooks&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		Incredibly wide (170 degree) horizontal and vertical viewing angle for maximum visibility and color performance.&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		Lightning-fast pixel response for full-motion digital video playback.&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		Support for 16.7 million saturated colors, for use in all graphics-intensive applications.&lt;/li&gt;\r\n\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;\r\n	Simple setup and operation&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n\r\n	&lt;li&gt;\r\n		Single cable with elegant breakout for connection to DVI, USB and FireWire ports&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		Built-in two-port USB 2.0 hub for easy connection of desktop peripheral devices.&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		Two FireWire 400 ports to support iSight and other desktop peripherals&lt;/li&gt;\r\n\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;\r\n	Sleek, elegant design&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n\r\n	&lt;li&gt;\r\n		Huge virtual workspace, very small footprint.&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		Narrow Bezel design to minimize visual impact of using dual displays&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		Unique hinge design for effortless adjustment&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		Support for VESA mounting solutions (Apple Cinema Display VESA Mount Adapter sold separately)&lt;/li&gt;\r\n\r\n&lt;/ul&gt;\r\n\r\n&lt;h3&gt;\r\n	Technical specifications&lt;/h3&gt;\r\n\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen size (diagonal viewable image size)&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n\r\n	&lt;li&gt;\r\n		Apple Cinema HD Display: 30 inches (29.7-inch viewable)&lt;/li&gt;\r\n\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen type&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n\r\n	&lt;li&gt;\r\n		Thin film transistor (TFT) active-matrix liquid crystal display (AMLCD)&lt;/li&gt;\r\n\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;\r\n	&lt;b&gt;Resolutions&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n\r\n	&lt;li&gt;\r\n		2560 x 1600 pixels (optimum resolution)&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		2048 x 1280&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		1920 x 1200&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		1280 x 800&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		1024 x 640&lt;/li&gt;\r\n\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;\r\n	&lt;b&gt;Display colors (maximum)&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n\r\n	&lt;li&gt;\r\n		16.7 million&lt;/li&gt;\r\n\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;\r\n	&lt;b&gt;Viewing angle (typical)&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n\r\n	&lt;li&gt;\r\n		170° horizontal; 170° vertical&lt;/li&gt;\r\n\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;\r\n	&lt;b&gt;Brightness (typical)&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n\r\n	&lt;li&gt;\r\n		30-inch Cinema HD Display: 400 cd/m2&lt;/li&gt;\r\n\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;\r\n	&lt;b&gt;Contrast ratio (typical)&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n\r\n	&lt;li&gt;\r\n		700:1&lt;/li&gt;\r\n\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;\r\n	&lt;b&gt;Response time (typical)&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n\r\n	&lt;li&gt;\r\n		16 ms&lt;/li&gt;\r\n\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;\r\n	&lt;b&gt;Pixel pitch&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n\r\n	&lt;li&gt;\r\n		30-inch Cinema HD Display: 0.250 mm&lt;/li&gt;\r\n\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen treatment&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n\r\n	&lt;li&gt;\r\n		Antiglare hardcoat&lt;/li&gt;\r\n\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;\r\n	&lt;b&gt;User controls (hardware and software)&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n\r\n	&lt;li&gt;\r\n		Display Power,&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		System sleep, wake&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		Brightness&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		Monitor tilt&lt;/li&gt;\r\n\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;\r\n	&lt;b&gt;Connectors and cables&lt;/b&gt;&lt;br&gt;\r\n	Cable&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n\r\n	&lt;li&gt;\r\n		DVI (Digital Visual Interface)&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		FireWire 400&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		USB 2.0&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		DC power (24 V)&lt;/li&gt;\r\n\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;\r\n	Connectors&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n\r\n	&lt;li&gt;\r\n		Two-port, self-powered USB 2.0 hub&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		Two FireWire 400 ports&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		Kensington security port&lt;/li&gt;\r\n\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;\r\n	&lt;b&gt;VESA mount adapter&lt;/b&gt;&lt;br&gt;\r\n	Requires optional Cinema Display VESA Mount Adapter (M9649G/A)&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n\r\n	&lt;li&gt;\r\n		Compatible with VESA FDMI (MIS-D, 100, C) compliant mounting solutions&lt;/li&gt;\r\n\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;\r\n	&lt;b&gt;Electrical requirements&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n\r\n	&lt;li&gt;\r\n		Input voltage: 100-240 VAC 50-60Hz&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		Maximum power when operating: 150W&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		Energy saver mode: 3W or less&lt;/li&gt;\r\n\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;\r\n	&lt;b&gt;Environmental requirements&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n\r\n	&lt;li&gt;\r\n		Operating temperature: 50° to 95° F (10° to 35° C)&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		Storage temperature: -40° to 116° F (-40° to 47° C)&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		Operating humidity: 20% to 80% noncondensing&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		Maximum operating altitude: 10,000 feet&lt;/li&gt;\r\n\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;\r\n	&lt;b&gt;Agency approvals&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n\r\n	&lt;li&gt;\r\n		FCC Part 15 Class B&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		EN55022 Class B&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		EN55024&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		VCCI Class B&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		AS/NZS 3548 Class B&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		CNS 13438 Class B&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		ICES-003 Class B&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		ISO 13406 part 2&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		MPR II&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		IEC 60950&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		UL 60950&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		CSA 60950&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		EN60950&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		ENERGY STAR&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		TCO \'03&lt;/li&gt;\r\n\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;\r\n	&lt;b&gt;Size and weight&lt;/b&gt;&lt;br&gt;\r\n	30-inch Apple Cinema HD Display&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n\r\n	&lt;li&gt;\r\n		Height: 21.3 inches (54.3 cm)&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		Width: 27.2 inches (68.8 cm)&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		Depth: 8.46 inches (21.5 cm)&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		Weight: 27.5 pounds (12.5 kg)&lt;/li&gt;\r\n\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;\r\n	&lt;b&gt;System Requirements&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n\r\n	&lt;li&gt;\r\n		Mac Pro, all graphic options&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		MacBook Pro&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		Power Mac G5 (PCI-X) with ATI Radeon 9650 or better or NVIDIA GeForce 6800 GT DDL or better&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		Power Mac G5 (PCI Express), all graphics options&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		PowerBook G4 with dual-link DVI support&lt;/li&gt;\r\n\r\n	&lt;li&gt;\r\n		Windows PC and graphics card that supports DVI ports with dual-link digital bandwidth and VESA DDC standard for plug-and-play setup&lt;/li&gt;\r\n\r\n&lt;/ul&gt;', '', '', '', ''),
(32, 1, 'Lorem ipsum with Metal 5', '&lt;p&gt;\r\n	&lt;strong&gt;Revolutionary multi-touch interface.&lt;/strong&gt;&lt;br&gt;\r\n	iPod touch features the same multi-touch screen technology as iPhone. Pinch to zoom in on a photo. Scroll through your songs and videos with a flick. Flip through your library by album artwork with Cover Flow.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Gorgeous 3.5-inch widescreen display.&lt;/strong&gt;&lt;br&gt;\r\n	Watch your movies, TV shows, and photos come alive with bright, vivid color on the 320-by-480-pixel display.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Music downloads straight from iTunes.&lt;/strong&gt;&lt;br&gt;\r\n	Shop the iTunes Wi-Fi Music Store from anywhere with Wi-Fi.1 Browse or search to find the music youre looking for, preview it, and buy it with just a tap.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Surf the web with Wi-Fi.&lt;/strong&gt;&lt;br&gt;\r\n	Browse the web using Safari and watch YouTube videos on the first iPod with Wi-Fi built in&lt;br&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n', '', 'Lorem ipsum with Metal 5', '', ''),
(33, 1, 'Lorem ipsum with Metal 6', '&lt;div&gt;\r\n	Imagine the advantages of going big without slowing down. The big 19&quot; 941BW monitor combines wide aspect ratio with fast pixel response time, for bigger images, more room to work and crisp motion. In addition, the exclusive MagicBright 2, MagicColor and MagicTune technologies help deliver the ideal image in every situation, while sleek, narrow bezels and adjustable stands deliver style just the way you want it. With the Samsung 941BW widescreen analog/digital LCD monitor, it\'s not hard to imagine.&lt;/div&gt;\r\n', '', 'Lorem ipsum with Metal 6', '', ''),
(28, 3, 'Lorem ipsum with Metal betical 1', '&lt;p&gt;\r\n	HTC Touch - in High Definition. Watch music videos and streaming content in awe-inspiring high definition clarity for a mobile experience you never thought possible. Seductively sleek, the HTC Touch HD provides the next generation of mobile functionality, all at a simple touch. Fully integrated with Windows Mobile Professional 6.1, ultrafast 3.5G, GPS, 5MP camera, plus lots more - all delivered on a breathtakingly crisp 3.8&quot; WVGA touchscreen - you can take control of your mobile world with the HTC Touch HD.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Processor Qualcomm® MSM 7201A™ 528 MHz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Windows Mobile® 6.1 Professional Operating System&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Memory: 512 MB ROM, 288 MB RAM&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Dimensions: 115 mm x 62.8 mm x 12 mm / 146.4 grams&lt;/li&gt;\r\n	&lt;li&gt;\r\n		3.8-inch TFT-LCD flat touch-sensitive screen with 480 x 800 WVGA resolution&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HSDPA/WCDMA: Europe/Asia: 900/2100 MHz; Up to 2 Mbps up-link and 7.2 Mbps down-link speeds&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Quad-band GSM/GPRS/EDGE: Europe/Asia: 850/900/1800/1900 MHz (Band frequency, HSUPA availability, and data speed are operator dependent.)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Device Control via HTC TouchFLO™ 3D &amp;amp; Touch-sensitive front panel buttons&lt;/li&gt;\r\n	&lt;li&gt;\r\n		GPS and A-GPS ready&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Bluetooth® 2.0 with Enhanced Data Rate and A2DP for wireless stereo headsets&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Wi-Fi®: IEEE 802.11 b/g&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HTC ExtUSB™ (11-pin mini-USB 2.0)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		5 megapixel color camera with auto focus&lt;/li&gt;\r\n	&lt;li&gt;\r\n		VGA CMOS color camera&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in 3.5 mm audio jack, microphone, speaker, and FM radio&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Ring tone formats: AAC, AAC+, eAAC+, AMR-NB, AMR-WB, QCP, MP3, WMA, WAV&lt;/li&gt;\r\n	&lt;li&gt;\r\n		40 polyphonic and standard MIDI format 0 and 1 (SMF)/SP MIDI&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Rechargeable Lithium-ion or Lithium-ion polymer 1350 mAh battery&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Expansion Slot: microSD™ memory card (SD 2.0 compatible)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		AC Adapter Voltage range/frequency: 100 ~ 240V AC, 50/60 Hz DC output: 5V and 1A&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Special Features: FM Radio, G-Sensor&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', '', '', ''),
(34, 1, 'Lorem ipsum with Metal 7', '&lt;div&gt;\r\n	&lt;strong&gt;Born to be worn.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Clip on the worlds most wearable music player and take up to 240 songs with you anywhere. Choose from five colors including four new hues to make your musical fashion statement.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Random meets rhythm.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With iTunes autofill, iPod shuffle can deliver a new musical experience every time you sync. For more randomness, you can shuffle songs during playback with the slide of a switch.&lt;/p&gt;\r\n	&lt;strong&gt;Everything is easy.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Charge and sync with the included USB dock. Operate the iPod shuffle controls with one hand. Enjoy up to 12 hours straight of skip-free music playback.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', 'Lorem ipsum with Metal 7', '', ''),
(35, 1, 'Lorem ipsum with Metal 8', '&lt;p&gt;\r\n	Product 8&lt;/p&gt;\r\n', '', 'Lorem ipsum with Metal 8', '', ''),
(36, 1, 'Lorem ipsum with Metal 9', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Video in your pocket.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Its the small iPod with one very big idea: video. The worlds most popular music player now lets you enjoy movies, TV shows, and more on a two-inch display thats 65% brighter than before.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Sleek and colorful.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With an anodized aluminum and polished stainless steel enclosure and a choice of five colors, iPod nano is dressed to impress.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;iTunes.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Available as a free download, iTunes makes it easy to browse and buy millions of songs, movies, TV shows, audiobooks, and games and download free podcasts all at the iTunes Store. And you can import your own music, manage your whole media library, and sync your iPod or iPhone with ease.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', 'Lorem ipsum with Metal 9', '', ''),
(41, 1, 'Lorem ipsum with Metal betical 10', '&lt;div&gt;\r\n	Just when you thought iMac had everything, now there´s even more. More powerful Intel Core 2 Duo processors. And more memory standard. Combine this with Mac OS X Leopard and iLife ´08, and it´s more all-in-one than ever. iMac packs amazing performance into a stunningly slim space.&lt;/div&gt;\r\n', '', 'Lorem ipsum with Metal betical 10', '', ''),
(40, 1, 'Lorem ipsum with Metal betical 11', '&lt;p class=&quot;intro&quot;&gt;\r\n	iPhone is a revolutionary new mobile phone that allows you to make a call by simply tapping a name or number in your address book, a favorites list, or a call log. It also automatically syncs all your contacts from a PC, Mac, or Internet service. And it lets you select and listen to voicemail messages in whatever order you want just like email.&lt;/p&gt;\r\n', '', 'Lorem ipsum with Metal betical 11', '', ''),
(40, 3, 'Lorem ipsum with Metal betical 11', '&lt;p class=&quot;intro&quot;&gt;\r\n	iPhone is a revolutionary new mobile phone that allows you to make a call by simply tapping a name or number in your address book, a favorites list, or a call log. It also automatically syncs all your contacts from a PC, Mac, or Internet service. And it lets you select and listen to voicemail messages in whatever order you want just like email.&lt;/p&gt;\r\n', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_discount`
--

CREATE TABLE `oc_product_discount` (
  `product_discount_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_discount`
--

INSERT INTO `oc_product_discount` (`product_discount_id`, `product_id`, `customer_group_id`, `quantity`, `priority`, `price`, `date_start`, `date_end`) VALUES
(488, 42, 1, 30, 1, '66.0000', '0000-00-00', '0000-00-00'),
(487, 42, 1, 20, 1, '77.0000', '0000-00-00', '0000-00-00'),
(486, 42, 1, 10, 1, '88.0000', '0000-00-00', '0000-00-00'),
(485, 47, 1, 1, 1, '20.0000', '2014-12-25', '2016-06-15');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_filter`
--

CREATE TABLE `oc_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_filter`
--

INSERT INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES
(40, 2),
(42, 2),
(42, 4);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_image`
--

CREATE TABLE `oc_product_image` (
  `product_image_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_image`
--

INSERT INTO `oc_product_image` (`product_image_id`, `product_id`, `image`, `sort_order`) VALUES
(2701, 30, 'catalog/demo/product/product6.jpg', 0),
(2679, 28, 'catalog/demo/product/product6.jpg', 0),
(2681, 41, 'catalog/demo/product/product12.jpg', 0),
(2659, 36, 'catalog/demo/product/product10.jpg', 0),
(2658, 36, 'catalog/demo/product/product12.jpg', 0),
(2655, 34, 'catalog/demo/product/product11.jpg', 0),
(2654, 34, 'catalog/demo/product/product12.jpg', 0),
(2651, 32, 'catalog/demo/product/product11.jpg', 0),
(2650, 32, 'catalog/demo/product/product16.jpg', 0),
(2649, 32, 'catalog/demo/product/product14.jpg', 0),
(2704, 44, 'catalog/demo/product/product13.jpg', 0),
(2703, 44, 'catalog/demo/product/product16.jpg', 0),
(2634, 45, 'catalog/demo/product/product14.jpg', 0),
(2663, 31, 'catalog/demo/product/product3.jpg', 0),
(2662, 31, 'catalog/demo/product/product4.jpg', 0),
(2699, 29, 'catalog/demo/product/product3.jpg', 0),
(2638, 46, 'catalog/demo/product/product18.jpg', 0),
(2637, 46, 'catalog/demo/product/product17.jpg', 0),
(2612, 48, 'catalog/demo/product/product17.jpg', 0),
(2611, 48, 'catalog/demo/product/product16.jpg', 0),
(2685, 40, 'catalog/demo/product/product8.jpg', 0),
(2684, 40, 'catalog/demo/product/product7.jpg', 0),
(2700, 30, 'catalog/demo/product/product1.jpg', 0),
(2678, 28, 'catalog/demo/product/product5.jpg', 0),
(2680, 41, 'catalog/demo/product/product10.jpg', 0),
(2683, 40, 'catalog/demo/product/product9.jpg', 0),
(2682, 40, 'catalog/demo/product/product10.jpg', 0),
(2610, 48, 'catalog/demo/product/product13.jpg', 0),
(2657, 36, 'catalog/demo/product/product11.jpg', 0),
(2656, 36, 'catalog/demo/product/product8.jpg', 0),
(2653, 34, 'catalog/demo/product/product9.jpg', 0),
(2652, 34, 'catalog/demo/product/product8.jpg', 0),
(2648, 32, 'catalog/demo/product/product15.jpg', 0),
(2647, 32, 'catalog/demo/product/product13.jpg', 0),
(2646, 32, 'catalog/demo/product/product12.jpg', 0),
(2702, 44, 'catalog/demo/product/product15.jpg', 0),
(2633, 45, 'catalog/demo/product/product16.jpg', 0),
(2661, 31, 'catalog/demo/product/product1.jpg', 0),
(2660, 31, 'catalog/demo/product/product2.jpg', 0),
(2698, 29, 'catalog/demo/product/product1.jpg', 0),
(2636, 46, 'catalog/demo/product/product15.jpg', 0),
(2635, 46, 'catalog/demo/product/product14.jpg', 0),
(2618, 49, 'catalog/demo/product/product19.jpg', 0),
(2617, 49, 'catalog/demo/product/product18.jpg', 0),
(2616, 49, 'catalog/demo/product/product17.jpg', 0),
(2615, 49, 'catalog/demo/product/product14.jpg', 0),
(2614, 49, 'catalog/demo/product/product13.jpg', 0),
(2613, 49, 'catalog/demo/product/product20.jpg', 0),
(2665, 47, 'catalog/demo/product/product17.jpg', 0),
(2664, 47, 'catalog/demo/product/product19.jpg', 0),
(2690, 42, 'catalog/demo/product/product9.jpg', 0),
(2689, 42, 'catalog/demo/product/product8.jpg', 0),
(2688, 42, 'catalog/demo/product/product11.jpg', 0),
(2687, 42, 'catalog/demo/product/product10.jpg', 0),
(2686, 42, 'catalog/demo/product/product7.jpg', 0),
(2641, 50, 'catalog/demo/product/product19.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_option`
--

CREATE TABLE `oc_product_option` (
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_option`
--

INSERT INTO `oc_product_option` (`product_option_id`, `product_id`, `option_id`, `value`, `required`) VALUES
(224, 35, 11, '', 1),
(225, 47, 12, '2011-04-22', 1),
(218, 42, 1, '', 1),
(226, 30, 5, '', 1),
(208, 42, 4, 'test', 1),
(209, 42, 6, '', 1),
(223, 42, 2, '', 1),
(217, 42, 5, '', 1),
(220, 42, 10, '2011-02-20 22:25', 1),
(222, 42, 7, '', 1),
(219, 42, 8, '2011-02-20', 1),
(221, 42, 9, '22:25', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_option_value`
--

CREATE TABLE `oc_product_option_value` (
  `product_option_value_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_option_value`
--

INSERT INTO `oc_product_option_value` (`product_option_value_id`, `product_option_id`, `product_id`, `option_id`, `option_value_id`, `quantity`, `subtract`, `price`, `price_prefix`, `points`, `points_prefix`, `weight`, `weight_prefix`) VALUES
(5, 218, 42, 1, 32, 96, 1, '10.0000', '+', 1, '+', '10.00000000', '+'),
(6, 218, 42, 1, 31, 146, 1, '20.0000', '+', 2, '-', '20.00000000', '+'),
(11, 223, 42, 2, 45, 3998, 1, '40.0000', '+', 0, '+', '40.00000000', '+'),
(9, 223, 42, 2, 24, 194, 1, '20.0000', '+', 0, '+', '20.00000000', '+'),
(13, 224, 35, 11, 47, 10, 1, '10.0000', '+', 0, '+', '0.00000000', '+'),
(14, 224, 35, 11, 48, 15, 1, '15.0000', '+', 0, '+', '0.00000000', '+'),
(16, 226, 30, 5, 40, 5, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(15, 226, 30, 5, 39, 2, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(10, 223, 42, 2, 44, 2696, 1, '30.0000', '+', 0, '+', '30.00000000', '+'),
(8, 223, 42, 2, 23, 48, 1, '10.0000', '+', 0, '+', '10.00000000', '+'),
(2, 217, 42, 5, 42, 200, 1, '2.0000', '+', 0, '+', '2.00000000', '+'),
(1, 217, 42, 5, 41, 100, 0, '1.0000', '+', 0, '+', '1.00000000', '+'),
(3, 217, 42, 5, 40, 300, 0, '3.0000', '+', 0, '+', '3.00000000', '+'),
(12, 224, 35, 11, 46, 0, 1, '5.0000', '+', 0, '+', '0.00000000', '+'),
(4, 217, 42, 5, 39, 92, 1, '4.0000', '+', 0, '+', '4.00000000', '+'),
(7, 218, 42, 1, 43, 300, 1, '30.0000', '+', 3, '+', '30.00000000', '+');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_recurring`
--

CREATE TABLE `oc_product_recurring` (
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_related`
--

CREATE TABLE `oc_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_related`
--

INSERT INTO `oc_product_related` (`product_id`, `related_id`) VALUES
(28, 42),
(34, 42),
(40, 42),
(41, 42),
(42, 28),
(42, 34),
(42, 40),
(42, 41),
(42, 50),
(50, 42);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_reward`
--

CREATE TABLE `oc_product_reward` (
  `product_reward_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_reward`
--

INSERT INTO `oc_product_reward` (`product_reward_id`, `product_id`, `customer_group_id`, `points`) VALUES
(606, 42, 1, 100),
(602, 47, 1, 300),
(605, 28, 1, 400),
(599, 43, 1, 600),
(608, 30, 1, 200),
(609, 44, 1, 700),
(601, 45, 1, 800),
(597, 49, 1, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_special`
--

CREATE TABLE `oc_product_special` (
  `product_special_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_special`
--

INSERT INTO `oc_product_special` (`product_special_id`, `product_id`, `customer_group_id`, `priority`, `price`, `date_start`, `date_end`) VALUES
(478, 33, 1, 1, '100.0000', '2015-04-21', '2020-04-21'),
(483, 40, 1, 1, '30.0000', '2014-12-25', '2020-11-10'),
(476, 50, 1, 1, '30.0000', '2014-12-25', '2020-11-10'),
(482, 41, 1, 0, '20.0000', '2010-02-02', '2019-11-20'),
(486, 29, 1, 0, '20.0000', '2009-05-04', '2019-11-28');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_category`
--

CREATE TABLE `oc_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_category`
--

INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(28, 33),
(29, 75),
(30, 75),
(31, 33),
(35, 77),
(36, 33),
(40, 33),
(41, 33),
(42, 33),
(43, 33),
(44, 78),
(47, 33);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_download`
--

CREATE TABLE `oc_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_layout`
--

CREATE TABLE `oc_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_layout`
--

INSERT INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES
(42, 0, 0),
(47, 0, 0),
(40, 0, 0),
(50, 0, 0),
(31, 0, 0),
(36, 0, 0),
(28, 0, 0),
(34, 0, 0),
(30, 0, 0),
(49, 0, 0),
(43, 0, 0),
(45, 0, 0),
(29, 0, 0),
(33, 0, 0),
(41, 0, 0),
(44, 0, 0),
(46, 0, 0),
(48, 0, 0),
(35, 0, 0),
(32, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_store`
--

CREATE TABLE `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_store`
--

INSERT INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES
(28, 0),
(29, 0),
(30, 0),
(31, 0),
(32, 0),
(33, 0),
(34, 0),
(35, 0),
(36, 0),
(40, 0),
(41, 0),
(42, 0),
(43, 0),
(44, 0),
(45, 0),
(46, 0),
(47, 0),
(48, 0),
(49, 0),
(50, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_recurring`
--

CREATE TABLE `oc_recurring` (
  `recurring_id` int(11) NOT NULL,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) UNSIGNED NOT NULL,
  `cycle` int(10) UNSIGNED NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) UNSIGNED NOT NULL,
  `trial_cycle` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_recurring_description`
--

CREATE TABLE `oc_recurring_description` (
  `recurring_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return`
--

CREATE TABLE `oc_return` (
  `return_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text,
  `date_ordered` date NOT NULL DEFAULT '0000-00-00',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_action`
--

CREATE TABLE `oc_return_action` (
  `return_action_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_return_action`
--

INSERT INTO `oc_return_action` (`return_action_id`, `language_id`, `name`) VALUES
(1, 1, 'Refunded'),
(2, 1, 'Credit Issued'),
(3, 1, 'Replacement Sent'),
(3, 3, 'Replacement Sent'),
(2, 3, 'Credit Issued'),
(1, 3, 'Refunded');

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_history`
--

CREATE TABLE `oc_return_history` (
  `return_history_id` int(11) NOT NULL,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_reason`
--

CREATE TABLE `oc_return_reason` (
  `return_reason_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_return_reason`
--

INSERT INTO `oc_return_reason` (`return_reason_id`, `language_id`, `name`) VALUES
(1, 1, 'Dead On Arrival'),
(2, 1, 'Received Wrong Item'),
(3, 1, 'Order Error'),
(4, 1, 'Faulty, please supply details'),
(5, 1, 'Other, please supply details'),
(4, 3, 'Faulty, please supply details'),
(3, 3, 'Order Error'),
(2, 3, 'Received Wrong Item'),
(1, 3, 'Dead On Arrival'),
(5, 3, 'Other, please supply details');

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_status`
--

CREATE TABLE `oc_return_status` (
  `return_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_return_status`
--

INSERT INTO `oc_return_status` (`return_status_id`, `language_id`, `name`) VALUES
(1, 1, 'Pending'),
(3, 1, 'Complete'),
(2, 1, 'Awaiting Products'),
(2, 3, 'Awaiting Products'),
(3, 3, 'Complete'),
(1, 3, 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `oc_review`
--

CREATE TABLE `oc_review` (
  `review_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_review`
--

INSERT INTO `oc_review` (`review_id`, `product_id`, `customer_id`, `author`, `text`, `rating`, `status`, `date_added`, `date_modified`) VALUES
(1, 48, 0, 'test home', 'HTML is not translated!\r\nHTML is not translated!\r\nHTML is not translated!\r\nHTML is not translated!\r\nHTML is not translated!\r\n', 5, 1, '2015-01-27 16:05:56', '2015-01-27 16:06:34'),
(3, 31, 0, 'demo', 'good good good good good good good good good good ', 4, 1, '2015-04-17 14:28:32', '0000-00-00 00:00:00'),
(4, 42, 0, 'demo', 'good good good good good good good good good good good good ', 3, 1, '2015-04-17 14:29:56', '0000-00-00 00:00:00'),
(5, 30, 0, 'demo', 'good good good good good good good good good good good good ', 5, 1, '2015-04-17 14:31:13', '0000-00-00 00:00:00'),
(6, 40, 0, 'demo', 'good good good good good good good good good good good good ', 5, 1, '2015-04-17 14:31:27', '0000-00-00 00:00:00'),
(7, 50, 0, 'demo', 'good good good good good good good good good good good good ', 2, 1, '2015-04-17 14:32:17', '0000-00-00 00:00:00'),
(8, 47, 7, 'lyly', 'And of breakthrough design. With MacBook Air, mobile computing suddenly has a new standard.', 5, 1, '2015-06-25 17:49:13', '2015-06-25 17:49:31');

-- --------------------------------------------------------

--
-- Table structure for table `oc_setting`
--

CREATE TABLE `oc_setting` (
  `setting_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(32) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_setting`
--

INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES
(1, 0, 'shipping', 'shipping_sort_order', '3', 0),
(2, 0, 'sub_total', 'sub_total_sort_order', '1', 0),
(3, 0, 'sub_total', 'sub_total_status', '1', 0),
(4, 0, 'tax', 'tax_status', '1', 0),
(5, 0, 'total', 'total_sort_order', '9', 0),
(6, 0, 'total', 'total_status', '1', 0),
(7, 0, 'tax', 'tax_sort_order', '5', 0),
(8, 0, 'free_checkout', 'free_checkout_sort_order', '1', 0),
(9, 0, 'cod', 'cod_sort_order', '5', 0),
(10, 0, 'cod', 'cod_total', '0.01', 0),
(11, 0, 'cod', 'cod_order_status_id', '1', 0),
(12, 0, 'cod', 'cod_geo_zone_id', '0', 0),
(13, 0, 'cod', 'cod_status', '1', 0),
(14, 0, 'shipping', 'shipping_status', '1', 0),
(15, 0, 'shipping', 'shipping_estimator', '1', 0),
(27, 0, 'coupon', 'coupon_sort_order', '4', 0),
(28, 0, 'coupon', 'coupon_status', '1', 0),
(34, 0, 'flat', 'flat_sort_order', '1', 0),
(35, 0, 'flat', 'flat_status', '1', 0),
(36, 0, 'flat', 'flat_geo_zone_id', '0', 0),
(37, 0, 'flat', 'flat_tax_class_id', '9', 0),
(41, 0, 'flat', 'flat_cost', '5.00', 0),
(42, 0, 'credit', 'credit_sort_order', '7', 0),
(43, 0, 'credit', 'credit_status', '1', 0),
(53, 0, 'reward', 'reward_sort_order', '2', 0),
(54, 0, 'reward', 'reward_status', '1', 0),
(146, 0, 'category', 'category_status', '1', 0),
(158, 0, 'account', 'account_status', '1', 0),
(159, 0, 'affiliate', 'affiliate_status', '1', 0),
(94, 0, 'voucher', 'voucher_sort_order', '8', 0),
(95, 0, 'voucher', 'voucher_status', '1', 0),
(103, 0, 'free_checkout', 'free_checkout_status', '1', 0),
(104, 0, 'free_checkout', 'free_checkout_order_status_id', '1', 0),
(7243, 0, 'pavdeals', 'pavdeals_config', 'a:12:{s:15:"order_status_id";s:1:"5";s:12:"saleoff_icon";s:74:"http://localhost/opencart/pav_extroic/image/cache/data/saleoff-150x150.png";s:10:"today_deal";s:2:"10";s:8:"time_end";s:0:"";s:16:"enable_available";s:1:"1";s:11:"enable_pass";s:1:"1";s:10:"icon_width";s:3:"180";s:11:"icon_height";s:3:"180";s:5:"limit";s:2:"10";s:4:"cols";s:1:"4";s:5:"width";s:3:"500";s:6:"height";s:3:"500";}', 1),
(7984, 0, 'pavblog', 'pavblog', 'a:42:{s:14:"general_lwidth";s:3:"900";s:15:"general_lheight";s:3:"400";s:14:"general_swidth";s:3:"900";s:15:"general_sheight";s:3:"400";s:14:"general_xwidth";s:2:"80";s:15:"general_xheight";s:2:"80";s:14:"rss_limit_item";s:2:"12";s:26:"keyword_listing_blogs_page";s:5:"blogs";s:16:"children_columns";s:1:"3";s:14:"general_cwidth";s:3:"900";s:15:"general_cheight";s:3:"400";s:22:"cat_limit_leading_blog";s:1:"1";s:24:"cat_limit_secondary_blog";s:1:"5";s:22:"cat_leading_image_type";s:1:"l";s:24:"cat_secondary_image_type";s:1:"l";s:24:"cat_columns_leading_blog";s:1:"1";s:27:"cat_columns_secondary_blogs";s:1:"1";s:14:"cat_show_title";s:1:"1";s:20:"cat_show_description";s:1:"1";s:17:"cat_show_readmore";s:1:"1";s:14:"cat_show_image";s:1:"1";s:15:"cat_show_author";s:1:"1";s:17:"cat_show_category";s:1:"1";s:16:"cat_show_created";s:1:"1";s:13:"cat_show_hits";s:1:"1";s:24:"cat_show_comment_counter";s:1:"1";s:15:"blog_image_type";s:1:"l";s:15:"blog_show_title";s:1:"1";s:15:"blog_show_image";s:1:"1";s:16:"blog_show_author";s:1:"1";s:18:"blog_show_category";s:1:"1";s:17:"blog_show_created";s:1:"1";s:25:"blog_show_comment_counter";s:1:"1";s:14:"blog_show_hits";s:1:"1";s:22:"blog_show_comment_form";s:1:"1";s:14:"comment_engine";s:5:"local";s:14:"diquis_account";s:10:"pavothemes";s:14:"facebook_appid";s:12:"100858303516";s:13:"comment_limit";s:2:"10";s:14:"facebook_width";s:3:"600";s:20:"auto_publish_comment";s:1:"0";s:16:"enable_recaptcha";s:1:"1";}', 1),
(854, 0, 'filter', 'filter_status', '1', 0),
(7256, 0, 'pavverticalmenu_params', 'params', '[{"id":2,"group":0,"cols":3,"subwidth":600,"submenu":1,"rows":[{"cols":[{"widgets":"wid-60","colwidth":12}]}]},{"submenu":1,"subwidth":700,"id":5,"group":0,"cols":1,"rows":[{"cols":[{"widgets":"wid-20|wid-22|wid-58","colwidth":3},{"widgets":"wid-21","colwidth":9,"colclass":""}]}]},{"id":7,"group":0,"cols":1,"subwidth":700,"submenu":1,"rows":[{"cols":[{"widgets":"wid-55","colwidth":4},{"widgets":"wid-56","colwidth":4},{"widgets":"wid-63","colwidth":4}]},{"cols":[{"widgets":"wid-61","colwidth":12}]}]}]', 0),
(8688, 0, 'themecontrol', 'themecontrol', 'a:67:{s:9:"layout_id";s:1:"1";s:8:"position";s:1:"1";s:21:"cateogry_display_mode";s:4:"grid";s:24:"listing_products_columns";s:1:"0";s:30:"listing_products_columns_small";s:1:"0";s:34:"listing_products_columns_minismall";s:1:"0";s:14:"category_pzoom";s:1:"1";s:18:"product_enablezoom";s:1:"1";s:19:"product_zoomgallery";s:6:"slider";s:16:"product_zoommode";s:5:"basic";s:20:"product_zoomlenssize";s:3:"150";s:18:"product_zoomeasing";s:1:"1";s:21:"product_zoomlensshape";s:5:"basic";s:22:"product_related_column";s:1:"0";s:24:"enable_product_customtab";s:1:"0";s:22:"product_customtab_name";a:2:{i:3;s:0:"";i:1;s:0:"";}s:25:"product_customtab_content";a:2:{i:3;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";i:1;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";}s:17:"location_latitude";s:9:"10.923197";s:18:"location_longitude";s:10:"108.102943";s:18:"contact_customhtml";a:2:{i:3;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";i:1;s:60:"&lt;p&gt;11 Ngư Ông, Phan Thiết, Bình Thuận&lt;/p&gt;";}s:4:"skin";s:0:"";s:11:"theme_width";s:4:"auto";s:23:"enable_custom_copyright";s:1:"1";s:9:"copyright";s:156:"Copyright @2016 -  &lt;a href=&quot;#&quot;&gt;Newshopping&lt;/a&gt; - All rights reserved&lt;br&gt; Power by &lt;a href=&quot;#&quot;&gt;Opencart&lt;/a&gt;";s:18:"enable_offsidebars";s:1:"1";s:16:"enable_paneltool";s:1:"1";s:15:"template_layout";s:9:"fullwidth";s:6:"header";s:9:"version-1";s:9:"logo_type";s:13:"logo-opencart";s:9:"offcanvas";s:8:"category";s:19:"home_container_full";s:1:"1";s:9:"quickview";s:1:"1";s:14:"widget_support";a:2:{i:3;s:397:"&lt;div class=&quot;media&quot;&gt;\r\n						&lt;div class=&quot;pull-left&quot;&gt;\r\n							&lt;i class=&quot;fa fa-mobile&quot;&gt;&lt;/i&gt;\r\n						&lt;/div&gt;\r\n						&lt;div class=&quot;media-body&quot;&gt;+84-909-5000-11&lt;h5 style=&quot;font-family: &amp;quot;Open Sans&amp;quot;, sans-serif; color: rgb(102, 102, 102);&quot;&gt;&lt;br&gt;&lt;/h5&gt;  \r\n						&lt;/div&gt;\r\n					&lt;/div&gt;";i:1;s:329:"&lt;div class=&quot;media&quot;&gt;						&lt;div class=&quot;pull-left&quot;&gt;							&lt;i class=&quot;fa fa-mobile&quot;&gt;&lt;/i&gt;						&lt;/div&gt;						&lt;div class=&quot;media-body&quot;&gt;							&lt;span&gt;+84-909-5000-11&lt;/span&gt;&lt;h5&gt;Support 24/7. Toll Free&lt;/h5&gt;  						&lt;/div&gt;					&lt;/div&gt;";}s:11:"widget_logo";a:2:{i:3;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";i:1;s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";}s:12:"widget_papal";a:2:{i:3;s:10:"&lt;br&gt;";i:1;s:10:"&lt;br&gt;";}s:13:"widget_callus";a:2:{i:3;s:10:"&lt;br&gt;";i:1;s:10:"&lt;br&gt;";}s:17:"enable_customfont";s:1:"0";s:11:"type_fonts1";s:8:"standard";s:13:"normal_fonts1";s:7:"inherit";s:11:"google_url1";s:0:"";s:14:"google_family1";s:0:"";s:9:"fontsize1";s:7:"inherit";s:11:"type_fonts2";s:8:"standard";s:13:"normal_fonts2";s:7:"inherit";s:11:"google_url2";s:0:"";s:14:"google_family2";s:0:"";s:9:"fontsize2";s:7:"inherit";s:11:"type_fonts3";s:8:"standard";s:13:"normal_fonts3";s:7:"inherit";s:11:"google_url3";s:0:"";s:14:"google_family3";s:0:"";s:9:"fontsize3";s:7:"inherit";s:11:"type_fonts4";s:8:"standard";s:13:"normal_fonts4";s:27:"Verdana, Geneva, sans-serif";s:11:"google_url4";s:0:"";s:14:"google_family4";s:0:"";s:14:"body_selector4";s:0:"";s:14:"block_showcase";s:0:"";s:15:"block_promotion";s:0:"";s:16:"block_footer_top";s:1:"3";s:19:"block_footer_center";s:0:"";s:19:"block_footer_bottom";s:1:"2";s:19:"enable_compress_css";s:0:"";s:17:"exclude_css_files";s:13:"bootstrap.css";s:15:"customize_theme";s:0:"";s:10:"custom_css";s:0:"";s:17:"custom_javascript";s:0:"";}', 1),
(8682, 0, 'config', 'config_google_captcha_status', '1', 0),
(8681, 0, 'config', 'config_google_captcha_secret', '6LdMxwYTAAAAALRM6bHENCGIRO6thJRXNlYl0XAR', 0),
(8677, 0, 'config', 'config_error_filename', 'error.log', 0),
(8678, 0, 'config', 'config_google_analytics', '', 0),
(8679, 0, 'config', 'config_google_analytics_status', '0', 0),
(8680, 0, 'config', 'config_google_captcha_public', '6LdMxwYTAAAAAPfQS6XqEkGGBsjGLe1HMpRlR2hn', 0),
(8676, 0, 'config', 'config_error_log', '1', 0),
(8675, 0, 'config', 'config_error_display', '0', 0),
(8674, 0, 'config', 'config_compression', '0', 0),
(8673, 0, 'config', 'config_encryption', 'b35f4c6f47e2f7c626ac40e22f955c37', 0),
(8672, 0, 'config', 'config_password', '1', 0),
(8671, 0, 'config', 'config_maintenance', '1', 0),
(8650, 0, 'config', 'config_ftp_hostname', 'localhost', 0),
(8651, 0, 'config', 'config_ftp_port', '21', 0),
(8652, 0, 'config', 'config_ftp_username', '', 0),
(8653, 0, 'config', 'config_ftp_password', '', 0),
(8654, 0, 'config', 'config_ftp_root', '', 0),
(8655, 0, 'config', 'config_ftp_status', '0', 0),
(8656, 0, 'config', 'config_mail_protocol', 'mail', 0),
(8657, 0, 'config', 'config_mail_parameter', '', 0),
(8658, 0, 'config', 'config_mail_smtp_hostname', '', 0),
(8659, 0, 'config', 'config_mail_smtp_username', '', 0),
(8660, 0, 'config', 'config_mail_smtp_password', '', 0),
(8661, 0, 'config', 'config_mail_smtp_port', '25', 0),
(8662, 0, 'config', 'config_mail_smtp_timeout', '5', 0),
(8663, 0, 'config', 'config_mail_alert', '', 0),
(8664, 0, 'config', 'config_secure', '0', 0),
(8665, 0, 'config', 'config_shared', '0', 0),
(8666, 0, 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai\'hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', 0),
(8667, 0, 'config', 'config_seo_url', '1', 0),
(8668, 0, 'config', 'config_file_max_size', '300000', 0),
(8669, 0, 'config', 'config_file_ext_allowed', 'txt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc\r\nrtf\r\nxls\r\nppt\r\nodt\r\nods', 0),
(8670, 0, 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/vnd.microsoft.icon\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\napplication/x-rar-compressed\r\napplication/x-msdownload\r\napplication/vnd.ms-cab-compressed\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf\r\nimage/vnd.adobe.photoshop\r\napplication/postscript\r\napplication/msword\r\napplication/rtf\r\napplication/vnd.ms-excel\r\napplication/vnd.ms-powerpoint\r\napplication/vnd.oasis.opendocument.text\r\napplication/vnd.oasis.opendocument.spreadsheet', 0),
(8649, 0, 'config', 'config_image_location_height', '89', 0),
(8648, 0, 'config', 'config_image_location_width', '89', 0),
(8646, 0, 'config', 'config_image_cart_width', '89', 0),
(8647, 0, 'config', 'config_image_cart_height', '89', 0),
(8645, 0, 'config', 'config_image_wishlist_height', '98', 0),
(8644, 0, 'config', 'config_image_wishlist_width', '89', 0),
(8643, 0, 'config', 'config_image_compare_height', '89', 0),
(8642, 0, 'config', 'config_image_compare_width', '89', 0),
(8641, 0, 'config', 'config_image_related_height', '500', 0),
(8640, 0, 'config', 'config_image_related_width', '500', 0),
(8639, 0, 'config', 'config_image_additional_height', '78', 0),
(8637, 0, 'config', 'config_image_product_height', '500', 0),
(8638, 0, 'config', 'config_image_additional_width', '78', 0),
(8636, 0, 'config', 'config_image_product_width', '500', 0),
(8635, 0, 'config', 'config_image_popup_height', '500', 0),
(8634, 0, 'config', 'config_image_popup_width', '500', 0),
(8633, 0, 'config', 'config_image_thumb_height', '500', 0),
(8632, 0, 'config', 'config_image_thumb_width', '500', 0),
(8631, 0, 'config', 'config_image_category_height', '270', 0),
(8627, 0, 'config', 'config_return_status_id', '2', 0),
(8628, 0, 'config', 'config_logo', 'catalog/logo.gif', 0),
(8629, 0, 'config', 'config_icon', 'catalog/logo.gif', 0),
(8630, 0, 'config', 'config_image_category_width', '873', 0),
(7508, 0, 'pavmegamenu_params', 'pavmegamenu_params', '[{"id":43,"align":"aligned-left","group":0,"cols":1,"submenu":1,"rows":[{"cols":[{"type":"menu","colwidth":12}]}]},{"submenu":1,"subwidth":600,"id":2,"align":"aligned-left","group":0,"cols":3,"rows":[{"cols":[{"widgets":"wid-55","colwidth":6},{"widgets":"wid-57","colwidth":6}]}]},{"submenu":1,"id":19,"align":"aligned-left","group":0,"cols":1,"rows":[{"cols":[{"type":"menu","colwidth":12}]}]},{"id":23,"group":0,"cols":1,"submenu":1,"align":"aligned-left","rows":[{"cols":[{"type":"menu","colwidth":12}]}]},{"id":29,"group":0,"cols":1,"submenu":1,"align":"aligned-left","rows":[{"cols":[{"type":"menu","colwidth":12}]}]}]', 0),
(7509, 0, 'pavautosearch', 'pavautosearch_status', '1', 0),
(8626, 0, 'config', 'config_return_id', '0', 0),
(8625, 0, 'config', 'config_affiliate_mail', '0', 0),
(8624, 0, 'config', 'config_affiliate_id', '4', 0),
(8623, 0, 'config', 'config_affiliate_commission', '5', 0),
(8622, 0, 'config', 'config_affiliate_auto', '0', 0),
(8621, 0, 'config', 'config_affiliate_approval', '0', 0),
(8620, 0, 'config', 'config_stock_checkout', '0', 0),
(8619, 0, 'config', 'config_stock_warning', '1', 0),
(8618, 0, 'config', 'config_stock_display', '1', 0),
(8617, 0, 'config', 'config_order_mail', '0', 0),
(8616, 0, 'config', 'config_complete_status', 'a:1:{i:0;s:1:"5";}', 1),
(8615, 0, 'config', 'config_processing_status', 'a:1:{i:0;s:1:"2";}', 1),
(8614, 0, 'config', 'config_order_status_id', '1', 0),
(8613, 0, 'config', 'config_checkout_id', '5', 0),
(8612, 0, 'config', 'config_checkout_guest', '1', 0),
(8611, 0, 'config', 'config_cart_weight', '1', 0),
(8610, 0, 'config', 'config_api_id', '5', 0),
(8608, 0, 'config', 'config_account_mail', '0', 0),
(8609, 0, 'config', 'config_invoice_prefix', 'INV-2013-00', 0),
(8607, 0, 'config', 'config_account_id', '3', 0),
(8606, 0, 'config', 'config_login_attempts', '5', 0),
(8605, 0, 'config', 'config_customer_price', '0', 0),
(8603, 0, 'config', 'config_customer_group_id', '1', 0),
(8604, 0, 'config', 'config_customer_group_display', 'a:1:{i:0;s:1:"1";}', 1),
(8602, 0, 'config', 'config_customer_online', '0', 0),
(8601, 0, 'config', 'config_tax_customer', '', 0),
(8600, 0, 'config', 'config_tax_default', '', 0),
(8599, 0, 'config', 'config_tax', '0', 0),
(8598, 0, 'config', 'config_voucher_max', '1000', 0),
(8597, 0, 'config', 'config_voucher_min', '1', 0),
(8596, 0, 'config', 'config_review_mail', '0', 0),
(8595, 0, 'config', 'config_review_guest', '1', 0),
(8594, 0, 'config', 'config_review_status', '1', 0),
(8593, 0, 'config', 'config_limit_admin', '20', 0),
(8591, 0, 'config', 'config_product_limit', '12', 0),
(8592, 0, 'config', 'config_product_description_length', '100', 0),
(8590, 0, 'config', 'config_product_count', '1', 0),
(8589, 0, 'config', 'config_weight_class_id', '1', 0),
(8588, 0, 'config', 'config_length_class_id', '1', 0),
(8587, 0, 'config', 'config_currency_auto', '1', 0),
(8586, 0, 'config', 'config_currency', 'USD', 0),
(8585, 0, 'config', 'config_admin_language', 'en', 0),
(8584, 0, 'config', 'config_language', 'en', 0),
(8583, 0, 'config', 'config_zone_id', '3761', 0),
(8582, 0, 'config', 'config_country_id', '230', 0),
(8581, 0, 'config', 'config_layout_id', '4', 0),
(8580, 0, 'config', 'config_template', 'lexus_shopping_new', 0),
(8579, 0, 'config', 'config_meta_keyword', 'Ngư nghiệp, ngư luới cụ, đồ câu', 0),
(8578, 0, 'config', 'config_meta_description', 'Chuyên cung cấp dụng cụ câu, đánh bắt hải sản', 0),
(8577, 0, 'config', 'config_meta_title', 'Ngư Lưới Cụ', 0),
(8576, 0, 'config', 'config_comment', '', 0),
(8575, 0, 'config', 'config_open', '', 0),
(8574, 0, 'config', 'config_image', '', 0),
(8573, 0, 'config', 'config_fax', '', 0),
(8572, 0, 'config', 'config_telephone', '+84-909500011', 0),
(8571, 0, 'config', 'config_email', 'tuthuan.huynh@gmail.com', 0),
(8570, 0, 'config', 'config_geocode', '10.923272, 108.103208', 0),
(8569, 0, 'config', 'config_address', '11 Ngư Ông, Phan Thiết', 0),
(8568, 0, 'config', 'config_owner', 'Lâm Hiệp Hoà', 0),
(8567, 0, 'config', 'config_name', 'Đồ Câu Nhật', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_stock_status`
--

CREATE TABLE `oc_stock_status` (
  `stock_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_stock_status`
--

INSERT INTO `oc_stock_status` (`stock_status_id`, `language_id`, `name`) VALUES
(7, 1, 'In Stock'),
(8, 1, 'Pre-Order'),
(5, 1, 'Out Of Stock'),
(6, 1, '2-3 Days'),
(5, 3, 'Out Of Stock'),
(8, 3, 'Pre-Order'),
(7, 3, 'In Stock'),
(6, 3, '2-3 Days');

-- --------------------------------------------------------

--
-- Table structure for table `oc_store`
--

CREATE TABLE `oc_store` (
  `store_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_class`
--

CREATE TABLE `oc_tax_class` (
  `tax_class_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_class`
--

INSERT INTO `oc_tax_class` (`tax_class_id`, `title`, `description`, `date_added`, `date_modified`) VALUES
(9, 'Taxable Goods', 'Taxed goods', '2009-01-06 23:21:53', '2011-09-23 14:07:50'),
(10, 'Downloadable Products', 'Downloadable', '2011-09-21 22:19:39', '2011-09-22 10:27:36');

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rate`
--

CREATE TABLE `oc_tax_rate` (
  `tax_rate_id` int(11) NOT NULL,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_rate`
--

INSERT INTO `oc_tax_rate` (`tax_rate_id`, `geo_zone_id`, `name`, `rate`, `type`, `date_added`, `date_modified`) VALUES
(86, 3, 'VAT (20%)', '20.0000', 'P', '2011-03-09 21:17:10', '2011-09-22 22:24:29'),
(87, 3, 'Eco Tax (-2.00)', '2.0000', 'F', '2011-09-21 21:49:23', '2011-09-23 00:40:19');

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rate_to_customer_group`
--

CREATE TABLE `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_rate_to_customer_group`
--

INSERT INTO `oc_tax_rate_to_customer_group` (`tax_rate_id`, `customer_group_id`) VALUES
(86, 1),
(87, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rule`
--

CREATE TABLE `oc_tax_rule` (
  `tax_rule_id` int(11) NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_rule`
--

INSERT INTO `oc_tax_rule` (`tax_rule_id`, `tax_class_id`, `tax_rate_id`, `based`, `priority`) VALUES
(121, 10, 86, 'payment', 1),
(120, 10, 87, 'store', 0),
(128, 9, 86, 'shipping', 1),
(127, 9, 87, 'shipping', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oc_upload`
--

CREATE TABLE `oc_upload` (
  `upload_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_url_alias`
--

CREATE TABLE `oc_url_alias` (
  `url_alias_id` int(11) NOT NULL,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_url_alias`
--

INSERT INTO `oc_url_alias` (`url_alias_id`, `query`, `keyword`) VALUES
(973, 'product_id=48', 'ipod-classic'),
(1019, 'manufacturer_id=8', 'Shimano'),
(772, 'information_id=4', 'about_us'),
(1015, 'product_id=42', 'test'),
(1020, 'category_id=33', 'camera'),
(1027, 'product_id=30', 'canon-eos-5d'),
(990, 'product_id=47', 'hp-lp3065'),
(1012, 'product_id=28', 'htc-touch-hd'),
(978, 'product_id=43', 'macbook'),
(1028, 'product_id=44', 'macbook-air'),
(980, 'product_id=45', 'macbook-pro'),
(989, 'product_id=31', 'nikon-d300'),
(1029, 'product_id=35', 'product-8'),
(974, 'product_id=49', 'samsung-galaxy-tab-10-1'),
(985, 'product_id=33', 'samsung-syncmaster-941bw'),
(981, 'product_id=46', 'sony-vaio'),
(1013, 'product_id=41', 'imac'),
(1014, 'product_id=40', 'iphone'),
(988, 'product_id=36', 'ipod-nano'),
(986, 'product_id=34', 'ipod-shuffle'),
(984, 'product_id=32', 'ipod-touch'),
(1024, 'manufacturer_id=9', 'canon'),
(829, 'manufacturer_id=5', 'htc'),
(830, 'manufacturer_id=7', 'hewlett-packard'),
(1025, 'manufacturer_id=6', 'Daiwa'),
(832, 'manufacturer_id=10', 'sony'),
(841, 'information_id=6', 'delivery'),
(842, 'information_id=3', 'privacy'),
(843, 'information_id=5', 'terms'),
(891, 'pavblog/blog=7', ''),
(875, 'pavblog/category=25', ''),
(873, 'pavblog/category=22', ''),
(874, 'pavblog/category=21', ''),
(991, 'pavblog/blog=11', ''),
(892, 'pavblog/blog=9', ''),
(893, 'pavblog/blog=10', ''),
(876, 'pavblog/category=20', ''),
(877, 'pavblog/category=24', ''),
(878, 'pavblog/category=23', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_user`
--

CREATE TABLE `oc_user` (
  `user_id` int(11) NOT NULL,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_user`
--

INSERT INTO `oc_user` (`user_id`, `user_group_id`, `username`, `password`, `salt`, `firstname`, `lastname`, `email`, `image`, `code`, `ip`, `status`, `date_added`) VALUES
(1, 1, 'admin', 'b991d6eda321b7eb46b958082326eb8531f6807e', '9e8f4b969', 'John', 'Doe', 'tuthuan.huynh@gmail.com', '', '', '::1', 1, '2016-12-11 00:30:02'),
(2, 10, 'demo', '70c4978ce513dabb1f51566141323be71b04ee19', '3dcd4580d', 'demo', 'demo', 'demo@gmail.com', '', '', '', 1, '2014-01-27 23:47:21');

-- --------------------------------------------------------

--
-- Table structure for table `oc_user_group`
--

CREATE TABLE `oc_user_group` (
  `user_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_user_group`
--

INSERT INTO `oc_user_group` (`user_group_id`, `name`, `permission`) VALUES
(1, 'Administrator', 'a:2:{s:6:"access";a:224:{i:0;s:17:"catalog/attribute";i:1;s:23:"catalog/attribute_group";i:2;s:16:"catalog/category";i:3;s:16:"catalog/download";i:4;s:14:"catalog/filter";i:5;s:19:"catalog/information";i:6;s:20:"catalog/manufacturer";i:7;s:14:"catalog/option";i:8;s:15:"catalog/product";i:9;s:17:"catalog/recurring";i:10;s:14:"catalog/review";i:11;s:18:"common/column_left";i:12;s:18:"common/filemanager";i:13;s:11:"common/menu";i:14;s:14:"common/profile";i:15;s:12:"common/stats";i:16;s:18:"dashboard/activity";i:17;s:15:"dashboard/chart";i:18;s:18:"dashboard/customer";i:19;s:13:"dashboard/map";i:20;s:16:"dashboard/online";i:21;s:15:"dashboard/order";i:22;s:16:"dashboard/recent";i:23;s:14:"dashboard/sale";i:24;s:13:"design/banner";i:25;s:13:"design/layout";i:26;s:14:"extension/feed";i:27;s:19:"extension/installer";i:28;s:22:"extension/modification";i:29;s:16:"extension/module";i:30;s:17:"extension/openbay";i:31;s:17:"extension/payment";i:32;s:18:"extension/shipping";i:33;s:15:"extension/total";i:34;s:16:"feed/google_base";i:35;s:19:"feed/google_sitemap";i:36;s:15:"feed/openbaypro";i:37;s:20:"localisation/country";i:38;s:21:"localisation/currency";i:39;s:21:"localisation/geo_zone";i:40;s:21:"localisation/language";i:41;s:25:"localisation/length_class";i:42;s:21:"localisation/location";i:43;s:25:"localisation/order_status";i:44;s:26:"localisation/return_action";i:45;s:26:"localisation/return_reason";i:46;s:26:"localisation/return_status";i:47;s:25:"localisation/stock_status";i:48;s:22:"localisation/tax_class";i:49;s:21:"localisation/tax_rate";i:50;s:25:"localisation/weight_class";i:51;s:17:"localisation/zone";i:52;s:19:"marketing/affiliate";i:53;s:17:"marketing/contact";i:54;s:16:"marketing/coupon";i:55;s:19:"marketing/marketing";i:56;s:14:"module/account";i:57;s:16:"module/affiliate";i:58;s:20:"module/amazon_button";i:59;s:13:"module/banner";i:60;s:17:"module/bestseller";i:61;s:15:"module/carousel";i:62;s:15:"module/category";i:63;s:11:"module/ebay";i:64;s:15:"module/featured";i:65;s:13:"module/filter";i:66;s:22:"module/google_hangouts";i:67;s:11:"module/html";i:68;s:18:"module/information";i:69;s:13:"module/latest";i:70;s:16:"module/pp_button";i:71;s:15:"module/pp_login";i:72;s:16:"module/slideshow";i:73;s:14:"module/special";i:74;s:12:"module/store";i:75;s:14:"openbay/amazon";i:76;s:22:"openbay/amazon_listing";i:77;s:22:"openbay/amazon_product";i:78;s:16:"openbay/amazonus";i:79;s:24:"openbay/amazonus_listing";i:80;s:24:"openbay/amazonus_product";i:81;s:12:"openbay/ebay";i:82;s:20:"openbay/ebay_profile";i:83;s:21:"openbay/ebay_template";i:84;s:12:"openbay/etsy";i:85;s:20:"openbay/etsy_product";i:86;s:21:"openbay/etsy_shipping";i:87;s:17:"openbay/etsy_shop";i:88;s:23:"payment/amazon_checkout";i:89;s:24:"payment/authorizenet_aim";i:90;s:24:"payment/authorizenet_sim";i:91;s:21:"payment/bank_transfer";i:92;s:22:"payment/bluepay_hosted";i:93;s:24:"payment/bluepay_redirect";i:94;s:14:"payment/cheque";i:95;s:11:"payment/cod";i:96;s:17:"payment/firstdata";i:97;s:24:"payment/firstdata_remote";i:98;s:21:"payment/free_checkout";i:99;s:22:"payment/klarna_account";i:100;s:22:"payment/klarna_invoice";i:101;s:14:"payment/liqpay";i:102;s:14:"payment/nochex";i:103;s:15:"payment/paymate";i:104;s:16:"payment/paypoint";i:105;s:13:"payment/payza";i:106;s:26:"payment/perpetual_payments";i:107;s:18:"payment/pp_express";i:108;s:18:"payment/pp_payflow";i:109;s:25:"payment/pp_payflow_iframe";i:110;s:14:"payment/pp_pro";i:111;s:21:"payment/pp_pro_iframe";i:112;s:19:"payment/pp_standard";i:113;s:14:"payment/realex";i:114;s:21:"payment/realex_remote";i:115;s:22:"payment/sagepay_direct";i:116;s:22:"payment/sagepay_server";i:117;s:18:"payment/sagepay_us";i:118;s:24:"payment/securetrading_pp";i:119;s:24:"payment/securetrading_ws";i:120;s:14:"payment/skrill";i:121;s:19:"payment/twocheckout";i:122;s:28:"payment/web_payment_software";i:123;s:16:"payment/worldpay";i:124;s:16:"report/affiliate";i:125;s:25:"report/affiliate_activity";i:126;s:22:"report/affiliate_login";i:127;s:24:"report/customer_activity";i:128;s:22:"report/customer_credit";i:129;s:21:"report/customer_login";i:130;s:22:"report/customer_online";i:131;s:21:"report/customer_order";i:132;s:22:"report/customer_reward";i:133;s:16:"report/marketing";i:134;s:24:"report/product_purchased";i:135;s:21:"report/product_viewed";i:136;s:18:"report/sale_coupon";i:137;s:17:"report/sale_order";i:138;s:18:"report/sale_return";i:139;s:20:"report/sale_shipping";i:140;s:15:"report/sale_tax";i:141;s:17:"sale/custom_field";i:142;s:13:"sale/customer";i:143;s:20:"sale/customer_ban_ip";i:144;s:19:"sale/customer_group";i:145;s:10:"sale/order";i:146;s:14:"sale/recurring";i:147;s:11:"sale/return";i:148;s:12:"sale/voucher";i:149;s:18:"sale/voucher_theme";i:150;s:15:"setting/setting";i:151;s:13:"setting/store";i:152;s:16:"shipping/auspost";i:153;s:17:"shipping/citylink";i:154;s:14:"shipping/fedex";i:155;s:13:"shipping/flat";i:156;s:13:"shipping/free";i:157;s:13:"shipping/item";i:158;s:23:"shipping/parcelforce_48";i:159;s:15:"shipping/pickup";i:160;s:19:"shipping/royal_mail";i:161;s:12:"shipping/ups";i:162;s:13:"shipping/usps";i:163;s:15:"shipping/weight";i:164;s:11:"tool/backup";i:165;s:14:"tool/error_log";i:166;s:11:"tool/upload";i:167;s:12:"total/coupon";i:168;s:12:"total/credit";i:169;s:14:"total/handling";i:170;s:16:"total/klarna_fee";i:171;s:19:"total/low_order_fee";i:172;s:12:"total/reward";i:173;s:14:"total/shipping";i:174;s:15:"total/sub_total";i:175;s:9:"total/tax";i:176;s:11:"total/total";i:177;s:13:"total/voucher";i:178;s:8:"user/api";i:179;s:9:"user/user";i:180;s:20:"user/user_permission";i:181;s:19:"module/themecontrol";i:182;s:18:"module/pavmegamenu";i:183;s:20:"module/pavnewsletter";i:184;s:19:"module/themecontrol";i:185;s:19:"module/themecontrol";i:186;s:18:"module/pavcarousel";i:187;s:21:"module/pavreassurance";i:188;s:20:"module/pavbloglatest";i:189;s:21:"module/pavblogcomment";i:190;s:22:"module/pavblogcategory";i:191;s:14:"module/pavblog";i:192;s:21:"module/pavsliderlayer";i:193;s:13:"module/filter";i:194;s:17:"module/bestseller";i:195;s:15:"module/pavdeals";i:196;s:18:"module/pavproducts";i:197;s:22:"module/pavverticalmenu";i:198;s:23:"module/pavbannerbuilder";i:199;s:22:"module/pavverticalmenu";i:200;s:18:"module/pavmegamenu";i:201;s:18:"module/pavmegamenu";i:202;s:22:"module/pavverticalmenu";i:203;s:22:"module/pavverticalmenu";i:204;s:22:"module/pavverticalmenu";i:205;s:18:"module/pavmegamenu";i:206;s:23:"module/pavbannerbuilder";i:207;s:21:"module/pavhomebuilder";i:208;s:25:"module/pavproductcarousel";i:209;s:20:"module/pavautosearch";i:210;s:21:"module/pavtestimonial";i:211;s:17:"module/pavinfobox";i:212;s:13:"module/latest";i:213;s:14:"module/special";i:214;s:22:"module/pavverticalmenu";i:215;s:20:"module/pavautosearch";i:216;s:21:"module/pavreassurance";i:217;s:21:"module/pavtestimonial";i:218;s:20:"module/pavfooterlink";i:219;s:20:"module/pavnewsletter";i:220;s:21:"module/pavproducttabs";i:221;s:23:"module/pavbannerbuilder";i:222;s:25:"module/pavproductcarousel";i:223;s:21:"module/pavproducttabs";}s:6:"modify";a:224:{i:0;s:17:"catalog/attribute";i:1;s:23:"catalog/attribute_group";i:2;s:16:"catalog/category";i:3;s:16:"catalog/download";i:4;s:14:"catalog/filter";i:5;s:19:"catalog/information";i:6;s:20:"catalog/manufacturer";i:7;s:14:"catalog/option";i:8;s:15:"catalog/product";i:9;s:17:"catalog/recurring";i:10;s:14:"catalog/review";i:11;s:18:"common/column_left";i:12;s:18:"common/filemanager";i:13;s:11:"common/menu";i:14;s:14:"common/profile";i:15;s:12:"common/stats";i:16;s:18:"dashboard/activity";i:17;s:15:"dashboard/chart";i:18;s:18:"dashboard/customer";i:19;s:13:"dashboard/map";i:20;s:16:"dashboard/online";i:21;s:15:"dashboard/order";i:22;s:16:"dashboard/recent";i:23;s:14:"dashboard/sale";i:24;s:13:"design/banner";i:25;s:13:"design/layout";i:26;s:14:"extension/feed";i:27;s:19:"extension/installer";i:28;s:22:"extension/modification";i:29;s:16:"extension/module";i:30;s:17:"extension/openbay";i:31;s:17:"extension/payment";i:32;s:18:"extension/shipping";i:33;s:15:"extension/total";i:34;s:16:"feed/google_base";i:35;s:19:"feed/google_sitemap";i:36;s:15:"feed/openbaypro";i:37;s:20:"localisation/country";i:38;s:21:"localisation/currency";i:39;s:21:"localisation/geo_zone";i:40;s:21:"localisation/language";i:41;s:25:"localisation/length_class";i:42;s:21:"localisation/location";i:43;s:25:"localisation/order_status";i:44;s:26:"localisation/return_action";i:45;s:26:"localisation/return_reason";i:46;s:26:"localisation/return_status";i:47;s:25:"localisation/stock_status";i:48;s:22:"localisation/tax_class";i:49;s:21:"localisation/tax_rate";i:50;s:25:"localisation/weight_class";i:51;s:17:"localisation/zone";i:52;s:19:"marketing/affiliate";i:53;s:17:"marketing/contact";i:54;s:16:"marketing/coupon";i:55;s:19:"marketing/marketing";i:56;s:14:"module/account";i:57;s:16:"module/affiliate";i:58;s:20:"module/amazon_button";i:59;s:13:"module/banner";i:60;s:17:"module/bestseller";i:61;s:15:"module/carousel";i:62;s:15:"module/category";i:63;s:11:"module/ebay";i:64;s:15:"module/featured";i:65;s:13:"module/filter";i:66;s:22:"module/google_hangouts";i:67;s:11:"module/html";i:68;s:18:"module/information";i:69;s:13:"module/latest";i:70;s:16:"module/pp_button";i:71;s:15:"module/pp_login";i:72;s:16:"module/slideshow";i:73;s:14:"module/special";i:74;s:12:"module/store";i:75;s:14:"openbay/amazon";i:76;s:22:"openbay/amazon_listing";i:77;s:22:"openbay/amazon_product";i:78;s:16:"openbay/amazonus";i:79;s:24:"openbay/amazonus_listing";i:80;s:24:"openbay/amazonus_product";i:81;s:12:"openbay/ebay";i:82;s:20:"openbay/ebay_profile";i:83;s:21:"openbay/ebay_template";i:84;s:12:"openbay/etsy";i:85;s:20:"openbay/etsy_product";i:86;s:21:"openbay/etsy_shipping";i:87;s:17:"openbay/etsy_shop";i:88;s:23:"payment/amazon_checkout";i:89;s:24:"payment/authorizenet_aim";i:90;s:24:"payment/authorizenet_sim";i:91;s:21:"payment/bank_transfer";i:92;s:22:"payment/bluepay_hosted";i:93;s:24:"payment/bluepay_redirect";i:94;s:14:"payment/cheque";i:95;s:11:"payment/cod";i:96;s:17:"payment/firstdata";i:97;s:24:"payment/firstdata_remote";i:98;s:21:"payment/free_checkout";i:99;s:22:"payment/klarna_account";i:100;s:22:"payment/klarna_invoice";i:101;s:14:"payment/liqpay";i:102;s:14:"payment/nochex";i:103;s:15:"payment/paymate";i:104;s:16:"payment/paypoint";i:105;s:13:"payment/payza";i:106;s:26:"payment/perpetual_payments";i:107;s:18:"payment/pp_express";i:108;s:18:"payment/pp_payflow";i:109;s:25:"payment/pp_payflow_iframe";i:110;s:14:"payment/pp_pro";i:111;s:21:"payment/pp_pro_iframe";i:112;s:19:"payment/pp_standard";i:113;s:14:"payment/realex";i:114;s:21:"payment/realex_remote";i:115;s:22:"payment/sagepay_direct";i:116;s:22:"payment/sagepay_server";i:117;s:18:"payment/sagepay_us";i:118;s:24:"payment/securetrading_pp";i:119;s:24:"payment/securetrading_ws";i:120;s:14:"payment/skrill";i:121;s:19:"payment/twocheckout";i:122;s:28:"payment/web_payment_software";i:123;s:16:"payment/worldpay";i:124;s:16:"report/affiliate";i:125;s:25:"report/affiliate_activity";i:126;s:22:"report/affiliate_login";i:127;s:24:"report/customer_activity";i:128;s:22:"report/customer_credit";i:129;s:21:"report/customer_login";i:130;s:22:"report/customer_online";i:131;s:21:"report/customer_order";i:132;s:22:"report/customer_reward";i:133;s:16:"report/marketing";i:134;s:24:"report/product_purchased";i:135;s:21:"report/product_viewed";i:136;s:18:"report/sale_coupon";i:137;s:17:"report/sale_order";i:138;s:18:"report/sale_return";i:139;s:20:"report/sale_shipping";i:140;s:15:"report/sale_tax";i:141;s:17:"sale/custom_field";i:142;s:13:"sale/customer";i:143;s:20:"sale/customer_ban_ip";i:144;s:19:"sale/customer_group";i:145;s:10:"sale/order";i:146;s:14:"sale/recurring";i:147;s:11:"sale/return";i:148;s:12:"sale/voucher";i:149;s:18:"sale/voucher_theme";i:150;s:15:"setting/setting";i:151;s:13:"setting/store";i:152;s:16:"shipping/auspost";i:153;s:17:"shipping/citylink";i:154;s:14:"shipping/fedex";i:155;s:13:"shipping/flat";i:156;s:13:"shipping/free";i:157;s:13:"shipping/item";i:158;s:23:"shipping/parcelforce_48";i:159;s:15:"shipping/pickup";i:160;s:19:"shipping/royal_mail";i:161;s:12:"shipping/ups";i:162;s:13:"shipping/usps";i:163;s:15:"shipping/weight";i:164;s:11:"tool/backup";i:165;s:14:"tool/error_log";i:166;s:11:"tool/upload";i:167;s:12:"total/coupon";i:168;s:12:"total/credit";i:169;s:14:"total/handling";i:170;s:16:"total/klarna_fee";i:171;s:19:"total/low_order_fee";i:172;s:12:"total/reward";i:173;s:14:"total/shipping";i:174;s:15:"total/sub_total";i:175;s:9:"total/tax";i:176;s:11:"total/total";i:177;s:13:"total/voucher";i:178;s:8:"user/api";i:179;s:9:"user/user";i:180;s:20:"user/user_permission";i:181;s:19:"module/themecontrol";i:182;s:18:"module/pavmegamenu";i:183;s:20:"module/pavnewsletter";i:184;s:19:"module/themecontrol";i:185;s:19:"module/themecontrol";i:186;s:18:"module/pavcarousel";i:187;s:21:"module/pavreassurance";i:188;s:20:"module/pavbloglatest";i:189;s:21:"module/pavblogcomment";i:190;s:22:"module/pavblogcategory";i:191;s:14:"module/pavblog";i:192;s:21:"module/pavsliderlayer";i:193;s:13:"module/filter";i:194;s:17:"module/bestseller";i:195;s:15:"module/pavdeals";i:196;s:18:"module/pavproducts";i:197;s:22:"module/pavverticalmenu";i:198;s:23:"module/pavbannerbuilder";i:199;s:22:"module/pavverticalmenu";i:200;s:18:"module/pavmegamenu";i:201;s:18:"module/pavmegamenu";i:202;s:22:"module/pavverticalmenu";i:203;s:22:"module/pavverticalmenu";i:204;s:22:"module/pavverticalmenu";i:205;s:18:"module/pavmegamenu";i:206;s:23:"module/pavbannerbuilder";i:207;s:21:"module/pavhomebuilder";i:208;s:25:"module/pavproductcarousel";i:209;s:20:"module/pavautosearch";i:210;s:21:"module/pavtestimonial";i:211;s:17:"module/pavinfobox";i:212;s:13:"module/latest";i:213;s:14:"module/special";i:214;s:22:"module/pavverticalmenu";i:215;s:20:"module/pavautosearch";i:216;s:21:"module/pavreassurance";i:217;s:21:"module/pavtestimonial";i:218;s:20:"module/pavfooterlink";i:219;s:20:"module/pavnewsletter";i:220;s:21:"module/pavproducttabs";i:221;s:23:"module/pavbannerbuilder";i:222;s:25:"module/pavproductcarousel";i:223;s:21:"module/pavproducttabs";}}'),
(10, 'Demonstration', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_verticalmenu`
--

CREATE TABLE `oc_verticalmenu` (
  `verticalmenu_id` int(11) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT '',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `is_group` smallint(6) NOT NULL DEFAULT '2',
  `width` varchar(255) DEFAULT NULL,
  `submenu_width` varchar(255) DEFAULT NULL,
  `colum_width` varchar(255) DEFAULT NULL,
  `submenu_colum_width` varchar(255) DEFAULT NULL,
  `item` varchar(255) DEFAULT NULL,
  `colums` varchar(255) DEFAULT '1',
  `type` varchar(255) NOT NULL,
  `is_content` smallint(6) NOT NULL DEFAULT '2',
  `show_title` smallint(6) NOT NULL DEFAULT '1',
  `type_submenu` varchar(10) NOT NULL DEFAULT '1',
  `level_depth` smallint(6) NOT NULL DEFAULT '0',
  `published` smallint(6) NOT NULL DEFAULT '1',
  `store_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `position` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `show_sub` smallint(6) NOT NULL DEFAULT '0',
  `url` varchar(255) DEFAULT NULL,
  `target` varchar(25) DEFAULT NULL,
  `privacy` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `position_type` varchar(25) DEFAULT 'top',
  `menu_class` varchar(25) DEFAULT NULL,
  `description` text,
  `content_text` text,
  `submenu_content` text,
  `level` int(11) NOT NULL,
  `left` int(11) NOT NULL,
  `right` int(11) NOT NULL,
  `widget_id` int(11) DEFAULT '0',
  `icon` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_verticalmenu`
--

INSERT INTO `oc_verticalmenu` (`verticalmenu_id`, `image`, `parent_id`, `is_group`, `width`, `submenu_width`, `colum_width`, `submenu_colum_width`, `item`, `colums`, `type`, `is_content`, `show_title`, `type_submenu`, `level_depth`, `published`, `store_id`, `position`, `show_sub`, `url`, `target`, `privacy`, `position_type`, `menu_class`, `description`, `content_text`, `submenu_content`, `level`, `left`, `right`, `widget_id`, `icon`) VALUES
(55, '', 1, 0, NULL, NULL, NULL, NULL, '77', '1', 'category', 2, 1, 'menu', 0, 1, 0, 99, 0, NULL, NULL, 0, 'top', NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL),
(56, '', 1, 0, NULL, NULL, NULL, NULL, '33', '1', 'category', 2, 1, 'menu', 0, 1, 0, 99, 0, NULL, NULL, 0, 'top', NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL),
(57, '', 1, 0, NULL, NULL, NULL, NULL, '75', '1', 'category', 2, 1, 'menu', 0, 1, 0, 99, 0, NULL, NULL, 0, 'top', NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL),
(58, '', 1, 0, NULL, NULL, NULL, NULL, '76', '1', 'category', 2, 1, 'menu', 0, 1, 0, 99, 0, NULL, NULL, 0, 'top', NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL),
(59, '', 56, 0, NULL, NULL, NULL, NULL, '66', '1', 'category', 2, 1, 'menu', 0, 1, 0, 99, 0, NULL, NULL, 0, 'top', NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL),
(60, '', 56, 0, NULL, NULL, NULL, NULL, '68', '1', 'category', 2, 1, 'menu', 0, 1, 0, 99, 0, NULL, NULL, 0, 'top', NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL),
(61, '', 56, 0, NULL, NULL, NULL, NULL, '78', '1', 'category', 2, 1, 'menu', 0, 1, 0, 99, 0, NULL, NULL, 0, 'top', NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oc_verticalmenu_description`
--

CREATE TABLE `oc_verticalmenu_description` (
  `verticalmenu_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_verticalmenu_description`
--

INSERT INTO `oc_verticalmenu_description` (`verticalmenu_id`, `language_id`, `title`, `description`) VALUES
(56, 3, 'Đồ Câu', ''),
(57, 1, 'Fishing Pole', ''),
(57, 3, 'Cần Câu', ''),
(58, 1, 'Fishing Bait', ''),
(58, 3, 'Mồi Câu', ''),
(59, 1, 'Floating', ''),
(59, 3, 'Phao', ''),
(60, 1, 'Accessories', ''),
(60, 3, 'Phụ Kiện', ''),
(61, 1, 'Fishing Line', ''),
(61, 3, 'Cước', ''),
(56, 1, 'Fishing Equipment', ''),
(55, 3, 'Máy Câu', ''),
(55, 1, 'Fishing Reel', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_verticalmenu_widgets`
--

CREATE TABLE `oc_verticalmenu_widgets` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `type` varchar(255) NOT NULL,
  `params` text NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_verticalmenu_widgets`
--

INSERT INTO `oc_verticalmenu_widgets` (`id`, `name`, `type`, `params`, `store_id`) VALUES
(2, 'Dermo HTML Sample', 'html', 'a:1:{s:4:"html";a:1:{i:1;s:275:"Dorem ipsum dolor sit amet consectetur adipiscing elit congue sit amet erat roin tincidunt vehicula lorem in adipiscing urna iaculis vel. Dorem ipsum dolor sit amet consectetur adipiscing elit congue sit amet erat roin tincidunt vehicula lorem in adipiscing urna iaculis vel.";}}', 0),
(4, 'Products In Cat 20', 'product_category', 'a:4:{s:11:"category_id";s:2:"20";s:5:"limit";s:1:"6";s:11:"image_width";s:3:"120";s:12:"image_height";s:3:"120";}', 0),
(5, 'Manufactures', 'banner', 'a:4:{s:8:"group_id";s:1:"8";s:11:"image_width";s:2:"80";s:12:"image_height";s:2:"80";s:5:"limit";s:2:"12";}', 0),
(6, 'PavoThemes Feed', 'feed', 'a:1:{s:8:"feed_url";s:55:"http://www.pavothemes.com/opencart-themes.feed?type=rss";}', 0),
(10, '', 'video', 'a:12:{s:4:"wkey";s:1:"0";s:5:"wtype";s:5:"video";s:11:"widget_name";s:27:"Video Opencart Installation";s:10:"show_title";s:1:"1";s:14:"widget_title_3";s:0:"";s:14:"widget_title_1";s:27:"Video Opencart Installation";s:12:"addition_cls";s:0:"";s:10:"video_link";s:40:"http://www.youtube.com/embed/cUhPA5qIxDQ";s:5:"width";s:3:"500";s:6:"height";s:3:"281";s:9:"subinfo_3";s:3:"300";s:9:"subinfo_1";s:3:"300";}', 0),
(8, '', 'html', 'a:9:{s:4:"wkey";s:1:"8";s:5:"wtype";s:4:"html";s:11:"widget_name";s:10:"categories";s:10:"show_title";s:1:"1";s:14:"widget_title_3";s:0:"";s:14:"widget_title_1";s:10:"categories";s:12:"addition_cls";s:0:"";s:13:"htmlcontent_3";s:29:"&lt;p&gt;&lt;br&gt;&lt;/p&gt;";s:13:"htmlcontent_1";s:991:"&lt;ul class=&quot;list&quot;&gt;  &lt;li&gt;    &lt;a href=&quot;index.php?route=product/category&amp;path=62&quot;&gt;Dresses&lt;/a&gt;  &lt;/li&gt;  &lt;li&gt;    &lt;a href=&quot;index.php?route=product/category&amp;path=63&quot;&gt;New&lt;/a&gt;  &lt;/li&gt;  &lt;li&gt;    &lt;a href=&quot;index.php?route=product/category&amp;path=64&quot;&gt;Accessories&lt;/a&gt;  &lt;/li&gt;  &lt;li&gt;    &lt;a href=&quot;index.php?route=product/category&amp;path=65&quot;&gt;Tops&lt;/a&gt;  &lt;/li&gt;  &lt;li&gt;    &lt;a href=&quot;index.php?route=product/category&amp;path=66&quot;&gt;Bottoms&lt;/a&gt;  &lt;/li&gt;  &lt;li&gt;    &lt;a href=&quot;index.php?route=product/category&amp;path=67&quot;&gt;Jewellery&lt;/a&gt;  &lt;/li&gt;  &lt;li&gt;    &lt;a href=&quot;index.php?route=product/category&amp;path=68&quot;&gt;Hair Accessories&lt;/a&gt;  &lt;/li&gt;  &lt;li&gt;    &lt;a href=&quot;index.php?route=product/category&amp;path=69&quot;&gt;Sunglasses&lt;/a&gt;  &lt;/li&gt;&lt;/ul&gt;";}', 0),
(9, '', 'product', 'a:10:{s:4:"wkey";s:1:"0";s:5:"wtype";s:7:"product";s:11:"widget_name";s:15:"Products Latest";s:10:"show_title";s:1:"1";s:14:"widget_title_3";s:0:"";s:14:"widget_title_1";s:15:"Products Latest";s:12:"addition_cls";s:7:"sidebar";s:10:"product_id";s:2:"34";s:11:"image_width";s:3:"200";s:12:"image_height";s:3:"200";}', 0),
(11, '', 'categories_list', 'a:8:{s:4:"wkey";s:2:"11";s:5:"wtype";s:15:"categories_list";s:11:"widget_name";s:10:"categories";s:10:"show_title";s:1:"1";s:14:"widget_title_3";s:0:"";s:14:"widget_title_1";s:10:"categories";s:12:"addition_cls";s:4:"list";s:6:"catids";s:23:"17,34,24,33,25,26,27,57";}', 0),
(15, '', 'product_list', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:12:"product_list";s:11:"widget_name";s:10:"categories";s:10:"show_title";s:1:"1";s:14:"widget_title_3";s:0:"";s:14:"widget_title_1";s:10:"categories";s:12:"addition_cls";s:0:"";s:5:"limit";s:1:"3";s:9:"list_type";s:6:"newest";}', 0),
(16, '', 'product_list', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:12:"product_list";s:11:"widget_name";s:15:"Products Latest";s:10:"show_title";s:1:"1";s:14:"widget_title_3";s:0:"";s:14:"widget_title_1";s:15:"Products Latest";s:12:"addition_cls";s:0:"";s:5:"limit";s:1:"3";s:9:"list_type";s:7:"special";}', 0),
(17, '', 'video', 'a:12:{s:4:"wkey";s:1:"0";s:5:"wtype";s:5:"video";s:11:"widget_name";s:27:"Video Opencart Installation";s:10:"show_title";s:1:"1";s:14:"widget_title_3";s:0:"";s:14:"widget_title_1";s:27:"Video Opencart Installation";s:12:"addition_cls";s:0:"";s:10:"video_link";s:40:"http://www.youtube.com/embed/cUhPA5qIxDQ";s:5:"width";s:3:"500";s:6:"height";s:3:"281";s:9:"subinfo_3";s:3:"300";s:9:"subinfo_1";s:3:"300";}', 0),
(18, '', 'categories_list', 'a:8:{s:4:"wkey";s:1:"0";s:5:"wtype";s:15:"categories_list";s:11:"widget_name";s:10:"categories";s:10:"show_title";s:1:"1";s:14:"widget_title_3";s:0:"";s:14:"widget_title_1";s:10:"categories";s:12:"addition_cls";s:0:"";s:6:"catids";s:20:"17,34,24,33,25,26,57";}', 0),
(58, '', 'sub_categories', 'a:9:{s:4:"wkey";s:2:"58";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:10:"Automative";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:10:"Automative";s:14:"widget_title_2";s:10:"Automative";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:1:"8";}', 0),
(21, '', 'html', 'a:9:{s:4:"wkey";s:2:"21";s:5:"wtype";s:4:"html";s:11:"widget_name";s:17:"Makes a photoshop";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:17:"Makes a photoshop";s:14:"widget_title_2";s:17:"Makes a photoshop";s:12:"addition_cls";s:0:"";s:13:"htmlcontent_1";s:295:"&lt;div class=&quot;content &quot;&gt;    &lt;p&gt;Lorem ipsum dolor sit amet consectetuer adipiscing eli Aenean commodo ligula bus et magnis dis parturient eu pretium quis sem.&lt;/p&gt;&lt;p&gt;Lorem ipsum dolor sit amet consectetuer adipiscing eli Aenean commodo ligula.&lt;/p&gt;&lt;/div&gt;";s:13:"htmlcontent_2";s:295:"&lt;div class=&quot;content &quot;&gt;    &lt;p&gt;Lorem ipsum dolor sit amet consectetuer adipiscing eli Aenean commodo ligula bus et magnis dis parturient eu pretium quis sem.&lt;/p&gt;&lt;p&gt;Lorem ipsum dolor sit amet consectetuer adipiscing eli Aenean commodo ligula.&lt;/p&gt;&lt;/div&gt;";}', 0),
(23, '', 'html', 'a:9:{s:4:"wkey";s:2:"23";s:5:"wtype";s:4:"html";s:11:"widget_name";s:17:"Makes a photoshop";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:17:"Makes a photoshop";s:14:"widget_title_4";s:17:"Makes a photoshop";s:12:"addition_cls";s:0:"";s:13:"htmlcontent_1";s:145:"&lt;p&gt;Lorem ipsum dolor sit amet consectetuer adipiscing eli Aenean commodo ligula bus et magnis dis parturient eu pretium quis sem.&lt;/p&gt;";s:13:"htmlcontent_4";s:145:"&lt;p&gt;Lorem ipsum dolor sit amet consectetuer adipiscing eli Aenean commodo ligula bus et magnis dis parturient eu pretium quis sem.&lt;/p&gt;";}', 0),
(27, '', 'categories_list', 'a:8:{s:4:"wkey";s:2:"27";s:5:"wtype";s:15:"categories_list";s:11:"widget_name";s:10:"categories";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:10:"categories";s:14:"widget_title_4";s:10:"categories";s:12:"addition_cls";s:7:"bullets";s:6:"catids";s:20:"17,24,33,42,45,46,57";}', 0),
(29, '', 'product_list', 'a:9:{s:4:"wkey";s:2:"29";s:5:"wtype";s:12:"product_list";s:11:"widget_name";s:16:"Products Special";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:16:"Products Special";s:14:"widget_title_4";s:16:"Products Special";s:12:"addition_cls";s:7:"sidebar";s:5:"limit";s:1:"3";s:9:"list_type";s:7:"special";}', 0),
(31, '', 'video', 'a:12:{s:4:"wkey";s:2:"31";s:5:"wtype";s:5:"video";s:11:"widget_name";s:20:"Video Install Widget";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:20:"Video Install Widget";s:14:"widget_title_4";s:20:"Video Install Widget";s:12:"addition_cls";s:0:"";s:10:"video_link";s:42:"http://www.youtube.com/watch?v=lzY4lkT8ElU";s:5:"width";s:5:"465px";s:6:"height";s:5:"281px";s:9:"subinfo_1";s:3:"300";s:9:"subinfo_4";s:3:"300";}', 0),
(32, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:0:"";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:2:"10";}', 0),
(33, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:0:"";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:2:"10";}', 0),
(34, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:0:"";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:2:"11";}', 0),
(35, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:0:"";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:2:"11";}', 0),
(36, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:0:"";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:2:"12";}', 0),
(37, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:0:"";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:2:"12";}', 0),
(38, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:0:"";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:2:"12";}', 0),
(39, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:0:"";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:2:"12";}', 0),
(40, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:0:"";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:2:"12";}', 0),
(41, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:0:"";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:2:"12";}', 0),
(42, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:0:"";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:2:"12";}', 0),
(43, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:8:"asdfasdf";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:8:"asdfadsf";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:2:"12";}', 0),
(44, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:0:"";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:2:"12";}', 0),
(45, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:0:"";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:2:"12";}', 0),
(46, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:0:"";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:2:"12";}', 0),
(47, '', 'button', 'a:13:{s:4:"wkey";s:1:"0";s:5:"wtype";s:6:"button";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:0:"";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:12:"button_title";s:4:"Save";s:4:"href";s:23:"http://www.leotheme.com";s:12:"color_button";s:11:"btn-default";s:4:"icon";s:0:"";s:4:"size";s:6:"btn-sm";s:8:"el_class";s:0:"";}', 0),
(48, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:11:"Electronics";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:11:"Electronics";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:2:"12";}', 0),
(49, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:11:"Electronics";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:11:"Electronics";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:2:"12";}', 0),
(50, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:11:"Electronics";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:11:"Electronics";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:2:"12";}', 0),
(51, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:0:"";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:0:"";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:2:"12";}', 0),
(52, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:11:"Electronics";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:11:"Electronics";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:2:"12";}', 0),
(53, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:11:"Electronics";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:11:"Electronics";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:2:"12";}', 0),
(54, '', 'sub_categories', 'a:9:{s:4:"wkey";s:1:"0";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:11:"Electronics";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:11:"Electronics";s:14:"widget_title_2";s:0:"";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:2:"12";}', 0),
(55, '', 'sub_categories', 'a:9:{s:4:"wkey";s:2:"55";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:8:"Homeware";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:8:"Homeware";s:14:"widget_title_2";s:8:"Homeware";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:1:"5";}', 0),
(56, '', 'sub_categories', 'a:9:{s:4:"wkey";s:2:"56";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:11:"Electronics";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:11:"Electronics";s:14:"widget_title_2";s:11:"Electronics";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:1:"5";}', 0),
(60, '', 'manufacture', 'a:13:{s:4:"wkey";s:2:"60";s:5:"wtype";s:11:"manufacture";s:11:"widget_name";s:17:"Logo Menufactures";s:10:"show_title";s:1:"0";s:14:"widget_title_1";s:17:"Logo Menufactures";s:14:"widget_title_2";s:17:"Logo Menufactures";s:12:"addition_cls";s:0:"";s:9:"banner_id";s:1:"8";s:5:"limit";s:1:"8";s:7:"columns";s:1:"4";s:12:"itemsperpage";s:1:"8";s:5:"width";s:3:"120";s:6:"height";s:3:"120";}', 0),
(61, '', 'product_list', 'a:15:{s:4:"wkey";s:2:"61";s:5:"wtype";s:12:"product_list";s:11:"widget_name";s:15:"Product special";s:10:"show_title";s:1:"0";s:14:"widget_title_1";s:15:"Product special";s:14:"widget_title_2";s:15:"Product special";s:12:"addition_cls";s:0:"";s:9:"imagefile";s:0:"";s:4:"size";s:0:"";s:5:"limit";s:1:"3";s:6:"column";s:1:"4";s:12:"itemsperpage";s:1:"3";s:5:"width";s:3:"200";s:6:"height";s:3:"200";s:9:"list_type";s:6:"newest";}', 0),
(63, '', 'sub_categories', 'a:9:{s:4:"wkey";s:2:"63";s:5:"wtype";s:14:"sub_categories";s:11:"widget_name";s:22:"Mobile &amp; Notebooks";s:10:"show_title";s:1:"1";s:14:"widget_title_1";s:22:"Mobile &amp; Notebooks";s:14:"widget_title_2";s:22:"Mobile &amp; Notebooks";s:12:"addition_cls";s:0:"";s:11:"category_id";s:2:"25";s:5:"limit";s:1:"5";}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher`
--

CREATE TABLE `oc_voucher` (
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_history`
--

CREATE TABLE `oc_voucher_history` (
  `voucher_history_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_theme`
--

CREATE TABLE `oc_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_voucher_theme`
--

INSERT INTO `oc_voucher_theme` (`voucher_theme_id`, `image`) VALUES
(8, 'catalog/demo/canon_eos_5d_2.jpg'),
(7, 'catalog/demo/gift-voucher-birthday.jpg'),
(6, 'catalog/demo/apple_logo.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_theme_description`
--

CREATE TABLE `oc_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_voucher_theme_description`
--

INSERT INTO `oc_voucher_theme_description` (`voucher_theme_id`, `language_id`, `name`) VALUES
(6, 1, 'Christmas'),
(7, 1, 'Birthday'),
(8, 1, 'General'),
(7, 3, 'Birthday'),
(6, 3, 'Christmas'),
(8, 3, 'General');

-- --------------------------------------------------------

--
-- Table structure for table `oc_weight_class`
--

CREATE TABLE `oc_weight_class` (
  `weight_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_weight_class`
--

INSERT INTO `oc_weight_class` (`weight_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '1000.00000000'),
(5, '2.20460000'),
(6, '35.27400000');

-- --------------------------------------------------------

--
-- Table structure for table `oc_weight_class_description`
--

CREATE TABLE `oc_weight_class_description` (
  `weight_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_weight_class_description`
--

INSERT INTO `oc_weight_class_description` (`weight_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Kilogram', 'kg'),
(2, 1, 'Gram', 'g'),
(5, 1, 'Pound ', 'lb'),
(6, 1, 'Ounce', 'oz'),
(5, 3, 'Pound ', 'lb'),
(2, 3, 'Gram', 'g'),
(1, 3, 'Kilogram', 'kg'),
(6, 3, 'Ounce', 'oz');

-- --------------------------------------------------------

--
-- Table structure for table `oc_zone`
--

CREATE TABLE `oc_zone` (
  `zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_zone`
--

INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1, 1, 'Badakhshan', 'BDS', 1),
(2, 1, 'Badghis', 'BDG', 1),
(3, 1, 'Baghlan', 'BGL', 1),
(4, 1, 'Balkh', 'BAL', 1),
(5, 1, 'Bamian', 'BAM', 1),
(6, 1, 'Farah', 'FRA', 1),
(7, 1, 'Faryab', 'FYB', 1),
(8, 1, 'Ghazni', 'GHA', 1),
(9, 1, 'Ghowr', 'GHO', 1),
(10, 1, 'Helmand', 'HEL', 1),
(11, 1, 'Herat', 'HER', 1),
(12, 1, 'Jowzjan', 'JOW', 1),
(13, 1, 'Kabul', 'KAB', 1),
(14, 1, 'Kandahar', 'KAN', 1),
(15, 1, 'Kapisa', 'KAP', 1),
(16, 1, 'Khost', 'KHO', 1),
(17, 1, 'Konar', 'KNR', 1),
(18, 1, 'Kondoz', 'KDZ', 1),
(19, 1, 'Laghman', 'LAG', 1),
(20, 1, 'Lowgar', 'LOW', 1),
(21, 1, 'Nangrahar', 'NAN', 1),
(22, 1, 'Nimruz', 'NIM', 1),
(23, 1, 'Nurestan', 'NUR', 1),
(24, 1, 'Oruzgan', 'ORU', 1),
(25, 1, 'Paktia', 'PIA', 1),
(26, 1, 'Paktika', 'PKA', 1),
(27, 1, 'Parwan', 'PAR', 1),
(28, 1, 'Samangan', 'SAM', 1),
(29, 1, 'Sar-e Pol', 'SAR', 1),
(30, 1, 'Takhar', 'TAK', 1),
(31, 1, 'Wardak', 'WAR', 1),
(32, 1, 'Zabol', 'ZAB', 1),
(33, 2, 'Berat', 'BR', 1),
(34, 2, 'Bulqize', 'BU', 1),
(35, 2, 'Delvine', 'DL', 1),
(36, 2, 'Devoll', 'DV', 1),
(37, 2, 'Diber', 'DI', 1),
(38, 2, 'Durres', 'DR', 1),
(39, 2, 'Elbasan', 'EL', 1),
(40, 2, 'Kolonje', 'ER', 1),
(41, 2, 'Fier', 'FR', 1),
(42, 2, 'Gjirokaster', 'GJ', 1),
(43, 2, 'Gramsh', 'GR', 1),
(44, 2, 'Has', 'HA', 1),
(45, 2, 'Kavaje', 'KA', 1),
(46, 2, 'Kurbin', 'KB', 1),
(47, 2, 'Kucove', 'KC', 1),
(48, 2, 'Korce', 'KO', 1),
(49, 2, 'Kruje', 'KR', 1),
(50, 2, 'Kukes', 'KU', 1),
(51, 2, 'Librazhd', 'LB', 1),
(52, 2, 'Lezhe', 'LE', 1),
(53, 2, 'Lushnje', 'LU', 1),
(54, 2, 'Malesi e Madhe', 'MM', 1),
(55, 2, 'Mallakaster', 'MK', 1),
(56, 2, 'Mat', 'MT', 1),
(57, 2, 'Mirdite', 'MR', 1),
(58, 2, 'Peqin', 'PQ', 1),
(59, 2, 'Permet', 'PR', 1),
(60, 2, 'Pogradec', 'PG', 1),
(61, 2, 'Puke', 'PU', 1),
(62, 2, 'Shkoder', 'SH', 1),
(63, 2, 'Skrapar', 'SK', 1),
(64, 2, 'Sarande', 'SR', 1),
(65, 2, 'Tepelene', 'TE', 1),
(66, 2, 'Tropoje', 'TP', 1),
(67, 2, 'Tirane', 'TR', 1),
(68, 2, 'Vlore', 'VL', 1),
(69, 3, 'Adrar', 'ADR', 1),
(70, 3, 'Ain Defla', 'ADE', 1),
(71, 3, 'Ain Temouchent', 'ATE', 1),
(72, 3, 'Alger', 'ALG', 1),
(73, 3, 'Annaba', 'ANN', 1),
(74, 3, 'Batna', 'BAT', 1),
(75, 3, 'Bechar', 'BEC', 1),
(76, 3, 'Bejaia', 'BEJ', 1),
(77, 3, 'Biskra', 'BIS', 1),
(78, 3, 'Blida', 'BLI', 1),
(79, 3, 'Bordj Bou Arreridj', 'BBA', 1),
(80, 3, 'Bouira', 'BOA', 1),
(81, 3, 'Boumerdes', 'BMD', 1),
(82, 3, 'Chlef', 'CHL', 1),
(83, 3, 'Constantine', 'CON', 1),
(84, 3, 'Djelfa', 'DJE', 1),
(85, 3, 'El Bayadh', 'EBA', 1),
(86, 3, 'El Oued', 'EOU', 1),
(87, 3, 'El Tarf', 'ETA', 1),
(88, 3, 'Ghardaia', 'GHA', 1),
(89, 3, 'Guelma', 'GUE', 1),
(90, 3, 'Illizi', 'ILL', 1),
(91, 3, 'Jijel', 'JIJ', 1),
(92, 3, 'Khenchela', 'KHE', 1),
(93, 3, 'Laghouat', 'LAG', 1),
(94, 3, 'Muaskar', 'MUA', 1),
(95, 3, 'Medea', 'MED', 1),
(96, 3, 'Mila', 'MIL', 1),
(97, 3, 'Mostaganem', 'MOS', 1),
(98, 3, 'M\'Sila', 'MSI', 1),
(99, 3, 'Naama', 'NAA', 1),
(100, 3, 'Oran', 'ORA', 1),
(101, 3, 'Ouargla', 'OUA', 1),
(102, 3, 'Oum el-Bouaghi', 'OEB', 1),
(103, 3, 'Relizane', 'REL', 1),
(104, 3, 'Saida', 'SAI', 1),
(105, 3, 'Setif', 'SET', 1),
(106, 3, 'Sidi Bel Abbes', 'SBA', 1),
(107, 3, 'Skikda', 'SKI', 1),
(108, 3, 'Souk Ahras', 'SAH', 1),
(109, 3, 'Tamanghasset', 'TAM', 1),
(110, 3, 'Tebessa', 'TEB', 1),
(111, 3, 'Tiaret', 'TIA', 1),
(112, 3, 'Tindouf', 'TIN', 1),
(113, 3, 'Tipaza', 'TIP', 1),
(114, 3, 'Tissemsilt', 'TIS', 1),
(115, 3, 'Tizi Ouzou', 'TOU', 1),
(116, 3, 'Tlemcen', 'TLE', 1),
(117, 4, 'Eastern', 'E', 1),
(118, 4, 'Manu\'a', 'M', 1),
(119, 4, 'Rose Island', 'R', 1),
(120, 4, 'Swains Island', 'S', 1),
(121, 4, 'Western', 'W', 1),
(122, 5, 'Andorra la Vella', 'ALV', 1),
(123, 5, 'Canillo', 'CAN', 1),
(124, 5, 'Encamp', 'ENC', 1),
(125, 5, 'Escaldes-Engordany', 'ESE', 1),
(126, 5, 'La Massana', 'LMA', 1),
(127, 5, 'Ordino', 'ORD', 1),
(128, 5, 'Sant Julia de Loria', 'SJL', 1),
(129, 6, 'Bengo', 'BGO', 1),
(130, 6, 'Benguela', 'BGU', 1),
(131, 6, 'Bie', 'BIE', 1),
(132, 6, 'Cabinda', 'CAB', 1),
(133, 6, 'Cuando-Cubango', 'CCU', 1),
(134, 6, 'Cuanza Norte', 'CNO', 1),
(135, 6, 'Cuanza Sul', 'CUS', 1),
(136, 6, 'Cunene', 'CNN', 1),
(137, 6, 'Huambo', 'HUA', 1),
(138, 6, 'Huila', 'HUI', 1),
(139, 6, 'Luanda', 'LUA', 1),
(140, 6, 'Lunda Norte', 'LNO', 1),
(141, 6, 'Lunda Sul', 'LSU', 1),
(142, 6, 'Malange', 'MAL', 1),
(143, 6, 'Moxico', 'MOX', 1),
(144, 6, 'Namibe', 'NAM', 1),
(145, 6, 'Uige', 'UIG', 1),
(146, 6, 'Zaire', 'ZAI', 1),
(147, 9, 'Saint George', 'ASG', 1),
(148, 9, 'Saint John', 'ASJ', 1),
(149, 9, 'Saint Mary', 'ASM', 1),
(150, 9, 'Saint Paul', 'ASL', 1),
(151, 9, 'Saint Peter', 'ASR', 1),
(152, 9, 'Saint Philip', 'ASH', 1),
(153, 9, 'Barbuda', 'BAR', 1),
(154, 9, 'Redonda', 'RED', 1),
(155, 10, 'Antartida e Islas del Atlantico', 'AN', 1),
(156, 10, 'Buenos Aires', 'BA', 1),
(157, 10, 'Catamarca', 'CA', 1),
(158, 10, 'Chaco', 'CH', 1),
(159, 10, 'Chubut', 'CU', 1),
(160, 10, 'Cordoba', 'CO', 1),
(161, 10, 'Corrientes', 'CR', 1),
(162, 10, 'Distrito Federal', 'DF', 1),
(163, 10, 'Entre Rios', 'ER', 1),
(164, 10, 'Formosa', 'FO', 1),
(165, 10, 'Jujuy', 'JU', 1),
(166, 10, 'La Pampa', 'LP', 1),
(167, 10, 'La Rioja', 'LR', 1),
(168, 10, 'Mendoza', 'ME', 1),
(169, 10, 'Misiones', 'MI', 1),
(170, 10, 'Neuquen', 'NE', 1),
(171, 10, 'Rio Negro', 'RN', 1),
(172, 10, 'Salta', 'SA', 1),
(173, 10, 'San Juan', 'SJ', 1),
(174, 10, 'San Luis', 'SL', 1),
(175, 10, 'Santa Cruz', 'SC', 1),
(176, 10, 'Santa Fe', 'SF', 1),
(177, 10, 'Santiago del Estero', 'SD', 1),
(178, 10, 'Tierra del Fuego', 'TF', 1),
(179, 10, 'Tucuman', 'TU', 1),
(180, 11, 'Aragatsotn', 'AGT', 1),
(181, 11, 'Ararat', 'ARR', 1),
(182, 11, 'Armavir', 'ARM', 1),
(183, 11, 'Geghark\'unik\'', 'GEG', 1),
(184, 11, 'Kotayk\'', 'KOT', 1),
(185, 11, 'Lorri', 'LOR', 1),
(186, 11, 'Shirak', 'SHI', 1),
(187, 11, 'Syunik\'', 'SYU', 1),
(188, 11, 'Tavush', 'TAV', 1),
(189, 11, 'Vayots\' Dzor', 'VAY', 1),
(190, 11, 'Yerevan', 'YER', 1),
(191, 13, 'Australian Capital Territory', 'ACT', 1),
(192, 13, 'New South Wales', 'NSW', 1),
(193, 13, 'Northern Territory', 'NT', 1),
(194, 13, 'Queensland', 'QLD', 1),
(195, 13, 'South Australia', 'SA', 1),
(196, 13, 'Tasmania', 'TAS', 1),
(197, 13, 'Victoria', 'VIC', 1),
(198, 13, 'Western Australia', 'WA', 1),
(199, 14, 'Burgenland', 'BUR', 1),
(200, 14, 'Kärnten', 'KAR', 1),
(201, 14, 'Nieder&ouml;sterreich', 'NOS', 1),
(202, 14, 'Ober&ouml;sterreich', 'OOS', 1),
(203, 14, 'Salzburg', 'SAL', 1),
(204, 14, 'Steiermark', 'STE', 1),
(205, 14, 'Tirol', 'TIR', 1),
(206, 14, 'Vorarlberg', 'VOR', 1),
(207, 14, 'Wien', 'WIE', 1),
(208, 15, 'Ali Bayramli', 'AB', 1),
(209, 15, 'Abseron', 'ABS', 1),
(210, 15, 'AgcabAdi', 'AGC', 1),
(211, 15, 'Agdam', 'AGM', 1),
(212, 15, 'Agdas', 'AGS', 1),
(213, 15, 'Agstafa', 'AGA', 1),
(214, 15, 'Agsu', 'AGU', 1),
(215, 15, 'Astara', 'AST', 1),
(216, 15, 'Baki', 'BA', 1),
(217, 15, 'BabAk', 'BAB', 1),
(218, 15, 'BalakAn', 'BAL', 1),
(219, 15, 'BArdA', 'BAR', 1),
(220, 15, 'Beylaqan', 'BEY', 1),
(221, 15, 'Bilasuvar', 'BIL', 1),
(222, 15, 'Cabrayil', 'CAB', 1),
(223, 15, 'Calilabab', 'CAL', 1),
(224, 15, 'Culfa', 'CUL', 1),
(225, 15, 'Daskasan', 'DAS', 1),
(226, 15, 'Davaci', 'DAV', 1),
(227, 15, 'Fuzuli', 'FUZ', 1),
(228, 15, 'Ganca', 'GA', 1),
(229, 15, 'Gadabay', 'GAD', 1),
(230, 15, 'Goranboy', 'GOR', 1),
(231, 15, 'Goycay', 'GOY', 1),
(232, 15, 'Haciqabul', 'HAC', 1),
(233, 15, 'Imisli', 'IMI', 1),
(234, 15, 'Ismayilli', 'ISM', 1),
(235, 15, 'Kalbacar', 'KAL', 1),
(236, 15, 'Kurdamir', 'KUR', 1),
(237, 15, 'Lankaran', 'LA', 1),
(238, 15, 'Lacin', 'LAC', 1),
(239, 15, 'Lankaran', 'LAN', 1),
(240, 15, 'Lerik', 'LER', 1),
(241, 15, 'Masalli', 'MAS', 1),
(242, 15, 'Mingacevir', 'MI', 1),
(243, 15, 'Naftalan', 'NA', 1),
(244, 15, 'Neftcala', 'NEF', 1),
(245, 15, 'Oguz', 'OGU', 1),
(246, 15, 'Ordubad', 'ORD', 1),
(247, 15, 'Qabala', 'QAB', 1),
(248, 15, 'Qax', 'QAX', 1),
(249, 15, 'Qazax', 'QAZ', 1),
(250, 15, 'Qobustan', 'QOB', 1),
(251, 15, 'Quba', 'QBA', 1),
(252, 15, 'Qubadli', 'QBI', 1),
(253, 15, 'Qusar', 'QUS', 1),
(254, 15, 'Saki', 'SA', 1),
(255, 15, 'Saatli', 'SAT', 1),
(256, 15, 'Sabirabad', 'SAB', 1),
(257, 15, 'Sadarak', 'SAD', 1),
(258, 15, 'Sahbuz', 'SAH', 1),
(259, 15, 'Saki', 'SAK', 1),
(260, 15, 'Salyan', 'SAL', 1),
(261, 15, 'Sumqayit', 'SM', 1),
(262, 15, 'Samaxi', 'SMI', 1),
(263, 15, 'Samkir', 'SKR', 1),
(264, 15, 'Samux', 'SMX', 1),
(265, 15, 'Sarur', 'SAR', 1),
(266, 15, 'Siyazan', 'SIY', 1),
(267, 15, 'Susa', 'SS', 1),
(268, 15, 'Susa', 'SUS', 1),
(269, 15, 'Tartar', 'TAR', 1),
(270, 15, 'Tovuz', 'TOV', 1),
(271, 15, 'Ucar', 'UCA', 1),
(272, 15, 'Xankandi', 'XA', 1),
(273, 15, 'Xacmaz', 'XAC', 1),
(274, 15, 'Xanlar', 'XAN', 1),
(275, 15, 'Xizi', 'XIZ', 1),
(276, 15, 'Xocali', 'XCI', 1),
(277, 15, 'Xocavand', 'XVD', 1),
(278, 15, 'Yardimli', 'YAR', 1),
(279, 15, 'Yevlax', 'YEV', 1),
(280, 15, 'Zangilan', 'ZAN', 1),
(281, 15, 'Zaqatala', 'ZAQ', 1),
(282, 15, 'Zardab', 'ZAR', 1),
(283, 15, 'Naxcivan', 'NX', 1),
(284, 16, 'Acklins', 'ACK', 1),
(285, 16, 'Berry Islands', 'BER', 1),
(286, 16, 'Bimini', 'BIM', 1),
(287, 16, 'Black Point', 'BLK', 1),
(288, 16, 'Cat Island', 'CAT', 1),
(289, 16, 'Central Abaco', 'CAB', 1),
(290, 16, 'Central Andros', 'CAN', 1),
(291, 16, 'Central Eleuthera', 'CEL', 1),
(292, 16, 'City of Freeport', 'FRE', 1),
(293, 16, 'Crooked Island', 'CRO', 1),
(294, 16, 'East Grand Bahama', 'EGB', 1),
(295, 16, 'Exuma', 'EXU', 1),
(296, 16, 'Grand Cay', 'GRD', 1),
(297, 16, 'Harbour Island', 'HAR', 1),
(298, 16, 'Hope Town', 'HOP', 1),
(299, 16, 'Inagua', 'INA', 1),
(300, 16, 'Long Island', 'LNG', 1),
(301, 16, 'Mangrove Cay', 'MAN', 1),
(302, 16, 'Mayaguana', 'MAY', 1),
(303, 16, 'Moore\'s Island', 'MOO', 1),
(304, 16, 'North Abaco', 'NAB', 1),
(305, 16, 'North Andros', 'NAN', 1),
(306, 16, 'North Eleuthera', 'NEL', 1),
(307, 16, 'Ragged Island', 'RAG', 1),
(308, 16, 'Rum Cay', 'RUM', 1),
(309, 16, 'San Salvador', 'SAL', 1),
(310, 16, 'South Abaco', 'SAB', 1),
(311, 16, 'South Andros', 'SAN', 1),
(312, 16, 'South Eleuthera', 'SEL', 1),
(313, 16, 'Spanish Wells', 'SWE', 1),
(314, 16, 'West Grand Bahama', 'WGB', 1),
(315, 17, 'Capital', 'CAP', 1),
(316, 17, 'Central', 'CEN', 1),
(317, 17, 'Muharraq', 'MUH', 1),
(318, 17, 'Northern', 'NOR', 1),
(319, 17, 'Southern', 'SOU', 1),
(320, 18, 'Barisal', 'BAR', 1),
(321, 18, 'Chittagong', 'CHI', 1),
(322, 18, 'Dhaka', 'DHA', 1),
(323, 18, 'Khulna', 'KHU', 1),
(324, 18, 'Rajshahi', 'RAJ', 1),
(325, 18, 'Sylhet', 'SYL', 1),
(326, 19, 'Christ Church', 'CC', 1),
(327, 19, 'Saint Andrew', 'AND', 1),
(328, 19, 'Saint George', 'GEO', 1),
(329, 19, 'Saint James', 'JAM', 1),
(330, 19, 'Saint John', 'JOH', 1),
(331, 19, 'Saint Joseph', 'JOS', 1),
(332, 19, 'Saint Lucy', 'LUC', 1),
(333, 19, 'Saint Michael', 'MIC', 1),
(334, 19, 'Saint Peter', 'PET', 1),
(335, 19, 'Saint Philip', 'PHI', 1),
(336, 19, 'Saint Thomas', 'THO', 1),
(337, 20, 'Brestskaya (Brest)', 'BR', 1),
(338, 20, 'Homyel\'skaya (Homyel\')', 'HO', 1),
(339, 20, 'Horad Minsk', 'HM', 1),
(340, 20, 'Hrodzyenskaya (Hrodna)', 'HR', 1),
(341, 20, 'Mahilyowskaya (Mahilyow)', 'MA', 1),
(342, 20, 'Minskaya', 'MI', 1),
(343, 20, 'Vitsyebskaya (Vitsyebsk)', 'VI', 1),
(344, 21, 'Antwerpen', 'VAN', 1),
(345, 21, 'Brabant Wallon', 'WBR', 1),
(346, 21, 'Hainaut', 'WHT', 1),
(347, 21, 'Liège', 'WLG', 1),
(348, 21, 'Limburg', 'VLI', 1),
(349, 21, 'Luxembourg', 'WLX', 1),
(350, 21, 'Namur', 'WNA', 1),
(351, 21, 'Oost-Vlaanderen', 'VOV', 1),
(352, 21, 'Vlaams Brabant', 'VBR', 1),
(353, 21, 'West-Vlaanderen', 'VWV', 1),
(354, 22, 'Belize', 'BZ', 1),
(355, 22, 'Cayo', 'CY', 1),
(356, 22, 'Corozal', 'CR', 1),
(357, 22, 'Orange Walk', 'OW', 1),
(358, 22, 'Stann Creek', 'SC', 1),
(359, 22, 'Toledo', 'TO', 1),
(360, 23, 'Alibori', 'AL', 1),
(361, 23, 'Atakora', 'AK', 1),
(362, 23, 'Atlantique', 'AQ', 1),
(363, 23, 'Borgou', 'BO', 1),
(364, 23, 'Collines', 'CO', 1),
(365, 23, 'Donga', 'DO', 1),
(366, 23, 'Kouffo', 'KO', 1),
(367, 23, 'Littoral', 'LI', 1),
(368, 23, 'Mono', 'MO', 1),
(369, 23, 'Oueme', 'OU', 1),
(370, 23, 'Plateau', 'PL', 1),
(371, 23, 'Zou', 'ZO', 1),
(372, 24, 'Devonshire', 'DS', 1),
(373, 24, 'Hamilton City', 'HC', 1),
(374, 24, 'Hamilton', 'HA', 1),
(375, 24, 'Paget', 'PG', 1),
(376, 24, 'Pembroke', 'PB', 1),
(377, 24, 'Saint George City', 'GC', 1),
(378, 24, 'Saint George\'s', 'SG', 1),
(379, 24, 'Sandys', 'SA', 1),
(380, 24, 'Smith\'s', 'SM', 1),
(381, 24, 'Southampton', 'SH', 1),
(382, 24, 'Warwick', 'WA', 1),
(383, 25, 'Bumthang', 'BUM', 1),
(384, 25, 'Chukha', 'CHU', 1),
(385, 25, 'Dagana', 'DAG', 1),
(386, 25, 'Gasa', 'GAS', 1),
(387, 25, 'Haa', 'HAA', 1),
(388, 25, 'Lhuntse', 'LHU', 1),
(389, 25, 'Mongar', 'MON', 1),
(390, 25, 'Paro', 'PAR', 1),
(391, 25, 'Pemagatshel', 'PEM', 1),
(392, 25, 'Punakha', 'PUN', 1),
(393, 25, 'Samdrup Jongkhar', 'SJO', 1),
(394, 25, 'Samtse', 'SAT', 1),
(395, 25, 'Sarpang', 'SAR', 1),
(396, 25, 'Thimphu', 'THI', 1),
(397, 25, 'Trashigang', 'TRG', 1),
(398, 25, 'Trashiyangste', 'TRY', 1),
(399, 25, 'Trongsa', 'TRO', 1),
(400, 25, 'Tsirang', 'TSI', 1),
(401, 25, 'Wangdue Phodrang', 'WPH', 1),
(402, 25, 'Zhemgang', 'ZHE', 1),
(403, 26, 'Beni', 'BEN', 1),
(404, 26, 'Chuquisaca', 'CHU', 1),
(405, 26, 'Cochabamba', 'COC', 1),
(406, 26, 'La Paz', 'LPZ', 1),
(407, 26, 'Oruro', 'ORU', 1),
(408, 26, 'Pando', 'PAN', 1),
(409, 26, 'Potosi', 'POT', 1),
(410, 26, 'Santa Cruz', 'SCZ', 1),
(411, 26, 'Tarija', 'TAR', 1),
(412, 27, 'Brcko district', 'BRO', 1),
(413, 27, 'Unsko-Sanski Kanton', 'FUS', 1),
(414, 27, 'Posavski Kanton', 'FPO', 1),
(415, 27, 'Tuzlanski Kanton', 'FTU', 1),
(416, 27, 'Zenicko-Dobojski Kanton', 'FZE', 1),
(417, 27, 'Bosanskopodrinjski Kanton', 'FBP', 1),
(418, 27, 'Srednjebosanski Kanton', 'FSB', 1),
(419, 27, 'Hercegovacko-neretvanski Kanton', 'FHN', 1),
(420, 27, 'Zapadnohercegovacka Zupanija', 'FZH', 1),
(421, 27, 'Kanton Sarajevo', 'FSA', 1),
(422, 27, 'Zapadnobosanska', 'FZA', 1),
(423, 27, 'Banja Luka', 'SBL', 1),
(424, 27, 'Doboj', 'SDO', 1),
(425, 27, 'Bijeljina', 'SBI', 1),
(426, 27, 'Vlasenica', 'SVL', 1),
(427, 27, 'Sarajevo-Romanija or Sokolac', 'SSR', 1),
(428, 27, 'Foca', 'SFO', 1),
(429, 27, 'Trebinje', 'STR', 1),
(430, 28, 'Central', 'CE', 1),
(431, 28, 'Ghanzi', 'GH', 1),
(432, 28, 'Kgalagadi', 'KD', 1),
(433, 28, 'Kgatleng', 'KT', 1),
(434, 28, 'Kweneng', 'KW', 1),
(435, 28, 'Ngamiland', 'NG', 1),
(436, 28, 'North East', 'NE', 1),
(437, 28, 'North West', 'NW', 1),
(438, 28, 'South East', 'SE', 1),
(439, 28, 'Southern', 'SO', 1),
(440, 30, 'Acre', 'AC', 1),
(441, 30, 'Alagoas', 'AL', 1),
(442, 30, 'Amapá', 'AP', 1),
(443, 30, 'Amazonas', 'AM', 1),
(444, 30, 'Bahia', 'BA', 1),
(445, 30, 'Ceará', 'CE', 1),
(446, 30, 'Distrito Federal', 'DF', 1),
(447, 30, 'Espírito Santo', 'ES', 1),
(448, 30, 'Goiás', 'GO', 1),
(449, 30, 'Maranhão', 'MA', 1),
(450, 30, 'Mato Grosso', 'MT', 1),
(451, 30, 'Mato Grosso do Sul', 'MS', 1),
(452, 30, 'Minas Gerais', 'MG', 1),
(453, 30, 'Pará', 'PA', 1),
(454, 30, 'Paraíba', 'PB', 1),
(455, 30, 'Paraná', 'PR', 1),
(456, 30, 'Pernambuco', 'PE', 1),
(457, 30, 'Piauí', 'PI', 1),
(458, 30, 'Rio de Janeiro', 'RJ', 1),
(459, 30, 'Rio Grande do Norte', 'RN', 1),
(460, 30, 'Rio Grande do Sul', 'RS', 1),
(461, 30, 'Rondônia', 'RO', 1),
(462, 30, 'Roraima', 'RR', 1),
(463, 30, 'Santa Catarina', 'SC', 1),
(464, 30, 'São Paulo', 'SP', 1),
(465, 30, 'Sergipe', 'SE', 1),
(466, 30, 'Tocantins', 'TO', 1),
(467, 31, 'Peros Banhos', 'PB', 1),
(468, 31, 'Salomon Islands', 'SI', 1),
(469, 31, 'Nelsons Island', 'NI', 1),
(470, 31, 'Three Brothers', 'TB', 1),
(471, 31, 'Eagle Islands', 'EA', 1),
(472, 31, 'Danger Island', 'DI', 1),
(473, 31, 'Egmont Islands', 'EG', 1),
(474, 31, 'Diego Garcia', 'DG', 1),
(475, 32, 'Belait', 'BEL', 1),
(476, 32, 'Brunei and Muara', 'BRM', 1),
(477, 32, 'Temburong', 'TEM', 1),
(478, 32, 'Tutong', 'TUT', 1),
(479, 33, 'Blagoevgrad', '', 1),
(480, 33, 'Burgas', '', 1),
(481, 33, 'Dobrich', '', 1),
(482, 33, 'Gabrovo', '', 1),
(483, 33, 'Haskovo', '', 1),
(484, 33, 'Kardjali', '', 1),
(485, 33, 'Kyustendil', '', 1),
(486, 33, 'Lovech', '', 1),
(487, 33, 'Montana', '', 1),
(488, 33, 'Pazardjik', '', 1),
(489, 33, 'Pernik', '', 1),
(490, 33, 'Pleven', '', 1),
(491, 33, 'Plovdiv', '', 1),
(492, 33, 'Razgrad', '', 1),
(493, 33, 'Shumen', '', 1),
(494, 33, 'Silistra', '', 1),
(495, 33, 'Sliven', '', 1),
(496, 33, 'Smolyan', '', 1),
(497, 33, 'Sofia', '', 1),
(498, 33, 'Sofia - town', '', 1),
(499, 33, 'Stara Zagora', '', 1),
(500, 33, 'Targovishte', '', 1),
(501, 33, 'Varna', '', 1),
(502, 33, 'Veliko Tarnovo', '', 1),
(503, 33, 'Vidin', '', 1),
(504, 33, 'Vratza', '', 1),
(505, 33, 'Yambol', '', 1),
(506, 34, 'Bale', 'BAL', 1),
(507, 34, 'Bam', 'BAM', 1),
(508, 34, 'Banwa', 'BAN', 1),
(509, 34, 'Bazega', 'BAZ', 1),
(510, 34, 'Bougouriba', 'BOR', 1),
(511, 34, 'Boulgou', 'BLG', 1),
(512, 34, 'Boulkiemde', 'BOK', 1),
(513, 34, 'Comoe', 'COM', 1),
(514, 34, 'Ganzourgou', 'GAN', 1),
(515, 34, 'Gnagna', 'GNA', 1),
(516, 34, 'Gourma', 'GOU', 1),
(517, 34, 'Houet', 'HOU', 1),
(518, 34, 'Ioba', 'IOA', 1),
(519, 34, 'Kadiogo', 'KAD', 1),
(520, 34, 'Kenedougou', 'KEN', 1),
(521, 34, 'Komondjari', 'KOD', 1),
(522, 34, 'Kompienga', 'KOP', 1),
(523, 34, 'Kossi', 'KOS', 1),
(524, 34, 'Koulpelogo', 'KOL', 1),
(525, 34, 'Kouritenga', 'KOT', 1),
(526, 34, 'Kourweogo', 'KOW', 1),
(527, 34, 'Leraba', 'LER', 1),
(528, 34, 'Loroum', 'LOR', 1),
(529, 34, 'Mouhoun', 'MOU', 1),
(530, 34, 'Nahouri', 'NAH', 1),
(531, 34, 'Namentenga', 'NAM', 1),
(532, 34, 'Nayala', 'NAY', 1),
(533, 34, 'Noumbiel', 'NOU', 1),
(534, 34, 'Oubritenga', 'OUB', 1),
(535, 34, 'Oudalan', 'OUD', 1),
(536, 34, 'Passore', 'PAS', 1),
(537, 34, 'Poni', 'PON', 1),
(538, 34, 'Sanguie', 'SAG', 1),
(539, 34, 'Sanmatenga', 'SAM', 1),
(540, 34, 'Seno', 'SEN', 1),
(541, 34, 'Sissili', 'SIS', 1),
(542, 34, 'Soum', 'SOM', 1),
(543, 34, 'Sourou', 'SOR', 1),
(544, 34, 'Tapoa', 'TAP', 1),
(545, 34, 'Tuy', 'TUY', 1),
(546, 34, 'Yagha', 'YAG', 1),
(547, 34, 'Yatenga', 'YAT', 1),
(548, 34, 'Ziro', 'ZIR', 1),
(549, 34, 'Zondoma', 'ZOD', 1),
(550, 34, 'Zoundweogo', 'ZOW', 1),
(551, 35, 'Bubanza', 'BB', 1),
(552, 35, 'Bujumbura', 'BJ', 1),
(553, 35, 'Bururi', 'BR', 1),
(554, 35, 'Cankuzo', 'CA', 1),
(555, 35, 'Cibitoke', 'CI', 1),
(556, 35, 'Gitega', 'GI', 1),
(557, 35, 'Karuzi', 'KR', 1),
(558, 35, 'Kayanza', 'KY', 1),
(559, 35, 'Kirundo', 'KI', 1),
(560, 35, 'Makamba', 'MA', 1),
(561, 35, 'Muramvya', 'MU', 1),
(562, 35, 'Muyinga', 'MY', 1),
(563, 35, 'Mwaro', 'MW', 1),
(564, 35, 'Ngozi', 'NG', 1),
(565, 35, 'Rutana', 'RT', 1),
(566, 35, 'Ruyigi', 'RY', 1),
(567, 36, 'Phnom Penh', 'PP', 1),
(568, 36, 'Preah Seihanu (Kompong Som or Sihanoukville)', 'PS', 1),
(569, 36, 'Pailin', 'PA', 1),
(570, 36, 'Keb', 'KB', 1),
(571, 36, 'Banteay Meanchey', 'BM', 1),
(572, 36, 'Battambang', 'BA', 1),
(573, 36, 'Kampong Cham', 'KM', 1),
(574, 36, 'Kampong Chhnang', 'KN', 1),
(575, 36, 'Kampong Speu', 'KU', 1),
(576, 36, 'Kampong Som', 'KO', 1),
(577, 36, 'Kampong Thom', 'KT', 1),
(578, 36, 'Kampot', 'KP', 1),
(579, 36, 'Kandal', 'KL', 1),
(580, 36, 'Kaoh Kong', 'KK', 1),
(581, 36, 'Kratie', 'KR', 1),
(582, 36, 'Mondul Kiri', 'MK', 1),
(583, 36, 'Oddar Meancheay', 'OM', 1),
(584, 36, 'Pursat', 'PU', 1),
(585, 36, 'Preah Vihear', 'PR', 1),
(586, 36, 'Prey Veng', 'PG', 1),
(587, 36, 'Ratanak Kiri', 'RK', 1),
(588, 36, 'Siemreap', 'SI', 1),
(589, 36, 'Stung Treng', 'ST', 1),
(590, 36, 'Svay Rieng', 'SR', 1),
(591, 36, 'Takeo', 'TK', 1),
(592, 37, 'Adamawa (Adamaoua)', 'ADA', 1),
(593, 37, 'Centre', 'CEN', 1),
(594, 37, 'East (Est)', 'EST', 1),
(595, 37, 'Extreme North (Extreme-Nord)', 'EXN', 1),
(596, 37, 'Littoral', 'LIT', 1),
(597, 37, 'North (Nord)', 'NOR', 1),
(598, 37, 'Northwest (Nord-Ouest)', 'NOT', 1),
(599, 37, 'West (Ouest)', 'OUE', 1),
(600, 37, 'South (Sud)', 'SUD', 1),
(601, 37, 'Southwest (Sud-Ouest).', 'SOU', 1),
(602, 38, 'Alberta', 'AB', 1),
(603, 38, 'British Columbia', 'BC', 1),
(604, 38, 'Manitoba', 'MB', 1),
(605, 38, 'New Brunswick', 'NB', 1),
(606, 38, 'Newfoundland and Labrador', 'NL', 1),
(607, 38, 'Northwest Territories', 'NT', 1),
(608, 38, 'Nova Scotia', 'NS', 1),
(609, 38, 'Nunavut', 'NU', 1),
(610, 38, 'Ontario', 'ON', 1),
(611, 38, 'Prince Edward Island', 'PE', 1),
(612, 38, 'Qu&eacute;bec', 'QC', 1),
(613, 38, 'Saskatchewan', 'SK', 1),
(614, 38, 'Yukon Territory', 'YT', 1),
(615, 39, 'Boa Vista', 'BV', 1),
(616, 39, 'Brava', 'BR', 1),
(617, 39, 'Calheta de Sao Miguel', 'CS', 1),
(618, 39, 'Maio', 'MA', 1),
(619, 39, 'Mosteiros', 'MO', 1),
(620, 39, 'Paul', 'PA', 1),
(621, 39, 'Porto Novo', 'PN', 1),
(622, 39, 'Praia', 'PR', 1),
(623, 39, 'Ribeira Grande', 'RG', 1),
(624, 39, 'Sal', 'SL', 1),
(625, 39, 'Santa Catarina', 'CA', 1),
(626, 39, 'Santa Cruz', 'CR', 1),
(627, 39, 'Sao Domingos', 'SD', 1),
(628, 39, 'Sao Filipe', 'SF', 1),
(629, 39, 'Sao Nicolau', 'SN', 1),
(630, 39, 'Sao Vicente', 'SV', 1),
(631, 39, 'Tarrafal', 'TA', 1),
(632, 40, 'Creek', 'CR', 1),
(633, 40, 'Eastern', 'EA', 1),
(634, 40, 'Midland', 'ML', 1),
(635, 40, 'South Town', 'ST', 1),
(636, 40, 'Spot Bay', 'SP', 1),
(637, 40, 'Stake Bay', 'SK', 1),
(638, 40, 'West End', 'WD', 1),
(639, 40, 'Western', 'WN', 1),
(640, 41, 'Bamingui-Bangoran', 'BBA', 1),
(641, 41, 'Basse-Kotto', 'BKO', 1),
(642, 41, 'Haute-Kotto', 'HKO', 1),
(643, 41, 'Haut-Mbomou', 'HMB', 1),
(644, 41, 'Kemo', 'KEM', 1),
(645, 41, 'Lobaye', 'LOB', 1),
(646, 41, 'Mambere-KadeÔ', 'MKD', 1),
(647, 41, 'Mbomou', 'MBO', 1),
(648, 41, 'Nana-Mambere', 'NMM', 1),
(649, 41, 'Ombella-M\'Poko', 'OMP', 1),
(650, 41, 'Ouaka', 'OUK', 1),
(651, 41, 'Ouham', 'OUH', 1),
(652, 41, 'Ouham-Pende', 'OPE', 1),
(653, 41, 'Vakaga', 'VAK', 1),
(654, 41, 'Nana-Grebizi', 'NGR', 1),
(655, 41, 'Sangha-Mbaere', 'SMB', 1),
(656, 41, 'Bangui', 'BAN', 1),
(657, 42, 'Batha', 'BA', 1),
(658, 42, 'Biltine', 'BI', 1),
(659, 42, 'Borkou-Ennedi-Tibesti', 'BE', 1),
(660, 42, 'Chari-Baguirmi', 'CB', 1),
(661, 42, 'Guera', 'GU', 1),
(662, 42, 'Kanem', 'KA', 1),
(663, 42, 'Lac', 'LA', 1),
(664, 42, 'Logone Occidental', 'LC', 1),
(665, 42, 'Logone Oriental', 'LR', 1),
(666, 42, 'Mayo-Kebbi', 'MK', 1),
(667, 42, 'Moyen-Chari', 'MC', 1),
(668, 42, 'Ouaddai', 'OU', 1),
(669, 42, 'Salamat', 'SA', 1),
(670, 42, 'Tandjile', 'TA', 1),
(671, 43, 'Aisen del General Carlos Ibanez', 'AI', 1),
(672, 43, 'Antofagasta', 'AN', 1),
(673, 43, 'Araucania', 'AR', 1),
(674, 43, 'Atacama', 'AT', 1),
(675, 43, 'Bio-Bio', 'BI', 1),
(676, 43, 'Coquimbo', 'CO', 1),
(677, 43, 'Libertador General Bernardo O\'Higgins', 'LI', 1),
(678, 43, 'Los Lagos', 'LL', 1),
(679, 43, 'Magallanes y de la Antartica Chilena', 'MA', 1),
(680, 43, 'Maule', 'ML', 1),
(681, 43, 'Region Metropolitana', 'RM', 1),
(682, 43, 'Tarapaca', 'TA', 1),
(683, 43, 'Valparaiso', 'VS', 1),
(684, 44, 'Anhui', 'AN', 1),
(685, 44, 'Beijing', 'BE', 1),
(686, 44, 'Chongqing', 'CH', 1),
(687, 44, 'Fujian', 'FU', 1),
(688, 44, 'Gansu', 'GA', 1),
(689, 44, 'Guangdong', 'GU', 1),
(690, 44, 'Guangxi', 'GX', 1),
(691, 44, 'Guizhou', 'GZ', 1),
(692, 44, 'Hainan', 'HA', 1),
(693, 44, 'Hebei', 'HB', 1),
(694, 44, 'Heilongjiang', 'HL', 1),
(695, 44, 'Henan', 'HE', 1),
(696, 44, 'Hong Kong', 'HK', 1),
(697, 44, 'Hubei', 'HU', 1),
(698, 44, 'Hunan', 'HN', 1),
(699, 44, 'Inner Mongolia', 'IM', 1),
(700, 44, 'Jiangsu', 'JI', 1),
(701, 44, 'Jiangxi', 'JX', 1),
(702, 44, 'Jilin', 'JL', 1),
(703, 44, 'Liaoning', 'LI', 1),
(704, 44, 'Macau', 'MA', 1),
(705, 44, 'Ningxia', 'NI', 1),
(706, 44, 'Shaanxi', 'SH', 1),
(707, 44, 'Shandong', 'SA', 1),
(708, 44, 'Shanghai', 'SG', 1),
(709, 44, 'Shanxi', 'SX', 1),
(710, 44, 'Sichuan', 'SI', 1),
(711, 44, 'Tianjin', 'TI', 1),
(712, 44, 'Xinjiang', 'XI', 1),
(713, 44, 'Yunnan', 'YU', 1),
(714, 44, 'Zhejiang', 'ZH', 1),
(715, 46, 'Direction Island', 'D', 1),
(716, 46, 'Home Island', 'H', 1),
(717, 46, 'Horsburgh Island', 'O', 1),
(718, 46, 'South Island', 'S', 1),
(719, 46, 'West Island', 'W', 1),
(720, 47, 'Amazonas', 'AMZ', 1),
(721, 47, 'Antioquia', 'ANT', 1),
(722, 47, 'Arauca', 'ARA', 1),
(723, 47, 'Atlantico', 'ATL', 1),
(724, 47, 'Bogota D.C.', 'BDC', 1),
(725, 47, 'Bolivar', 'BOL', 1),
(726, 47, 'Boyaca', 'BOY', 1),
(727, 47, 'Caldas', 'CAL', 1),
(728, 47, 'Caqueta', 'CAQ', 1),
(729, 47, 'Casanare', 'CAS', 1),
(730, 47, 'Cauca', 'CAU', 1),
(731, 47, 'Cesar', 'CES', 1),
(732, 47, 'Choco', 'CHO', 1),
(733, 47, 'Cordoba', 'COR', 1),
(734, 47, 'Cundinamarca', 'CAM', 1),
(735, 47, 'Guainia', 'GNA', 1),
(736, 47, 'Guajira', 'GJR', 1),
(737, 47, 'Guaviare', 'GVR', 1),
(738, 47, 'Huila', 'HUI', 1),
(739, 47, 'Magdalena', 'MAG', 1),
(740, 47, 'Meta', 'MET', 1),
(741, 47, 'Narino', 'NAR', 1),
(742, 47, 'Norte de Santander', 'NDS', 1),
(743, 47, 'Putumayo', 'PUT', 1),
(744, 47, 'Quindio', 'QUI', 1),
(745, 47, 'Risaralda', 'RIS', 1),
(746, 47, 'San Andres y Providencia', 'SAP', 1),
(747, 47, 'Santander', 'SAN', 1),
(748, 47, 'Sucre', 'SUC', 1),
(749, 47, 'Tolima', 'TOL', 1),
(750, 47, 'Valle del Cauca', 'VDC', 1),
(751, 47, 'Vaupes', 'VAU', 1),
(752, 47, 'Vichada', 'VIC', 1),
(753, 48, 'Grande Comore', 'G', 1),
(754, 48, 'Anjouan', 'A', 1),
(755, 48, 'Moheli', 'M', 1),
(756, 49, 'Bouenza', 'BO', 1),
(757, 49, 'Brazzaville', 'BR', 1),
(758, 49, 'Cuvette', 'CU', 1),
(759, 49, 'Cuvette-Ouest', 'CO', 1),
(760, 49, 'Kouilou', 'KO', 1),
(761, 49, 'Lekoumou', 'LE', 1),
(762, 49, 'Likouala', 'LI', 1),
(763, 49, 'Niari', 'NI', 1),
(764, 49, 'Plateaux', 'PL', 1),
(765, 49, 'Pool', 'PO', 1),
(766, 49, 'Sangha', 'SA', 1),
(767, 50, 'Pukapuka', 'PU', 1),
(768, 50, 'Rakahanga', 'RK', 1),
(769, 50, 'Manihiki', 'MK', 1),
(770, 50, 'Penrhyn', 'PE', 1),
(771, 50, 'Nassau Island', 'NI', 1),
(772, 50, 'Surwarrow', 'SU', 1),
(773, 50, 'Palmerston', 'PA', 1),
(774, 50, 'Aitutaki', 'AI', 1),
(775, 50, 'Manuae', 'MA', 1),
(776, 50, 'Takutea', 'TA', 1),
(777, 50, 'Mitiaro', 'MT', 1),
(778, 50, 'Atiu', 'AT', 1),
(779, 50, 'Mauke', 'MU', 1),
(780, 50, 'Rarotonga', 'RR', 1),
(781, 50, 'Mangaia', 'MG', 1),
(782, 51, 'Alajuela', 'AL', 1),
(783, 51, 'Cartago', 'CA', 1),
(784, 51, 'Guanacaste', 'GU', 1),
(785, 51, 'Heredia', 'HE', 1),
(786, 51, 'Limon', 'LI', 1),
(787, 51, 'Puntarenas', 'PU', 1),
(788, 51, 'San Jose', 'SJ', 1),
(789, 52, 'Abengourou', 'ABE', 1),
(790, 52, 'Abidjan', 'ABI', 1),
(791, 52, 'Aboisso', 'ABO', 1),
(792, 52, 'Adiake', 'ADI', 1),
(793, 52, 'Adzope', 'ADZ', 1),
(794, 52, 'Agboville', 'AGB', 1),
(795, 52, 'Agnibilekrou', 'AGN', 1),
(796, 52, 'Alepe', 'ALE', 1),
(797, 52, 'Bocanda', 'BOC', 1),
(798, 52, 'Bangolo', 'BAN', 1),
(799, 52, 'Beoumi', 'BEO', 1),
(800, 52, 'Biankouma', 'BIA', 1),
(801, 52, 'Bondoukou', 'BDK', 1),
(802, 52, 'Bongouanou', 'BGN', 1),
(803, 52, 'Bouafle', 'BFL', 1),
(804, 52, 'Bouake', 'BKE', 1),
(805, 52, 'Bouna', 'BNA', 1),
(806, 52, 'Boundiali', 'BDL', 1),
(807, 52, 'Dabakala', 'DKL', 1),
(808, 52, 'Dabou', 'DBU', 1),
(809, 52, 'Daloa', 'DAL', 1),
(810, 52, 'Danane', 'DAN', 1),
(811, 52, 'Daoukro', 'DAO', 1),
(812, 52, 'Dimbokro', 'DIM', 1),
(813, 52, 'Divo', 'DIV', 1),
(814, 52, 'Duekoue', 'DUE', 1),
(815, 52, 'Ferkessedougou', 'FER', 1),
(816, 52, 'Gagnoa', 'GAG', 1),
(817, 52, 'Grand-Bassam', 'GBA', 1),
(818, 52, 'Grand-Lahou', 'GLA', 1),
(819, 52, 'Guiglo', 'GUI', 1),
(820, 52, 'Issia', 'ISS', 1),
(821, 52, 'Jacqueville', 'JAC', 1),
(822, 52, 'Katiola', 'KAT', 1),
(823, 52, 'Korhogo', 'KOR', 1),
(824, 52, 'Lakota', 'LAK', 1),
(825, 52, 'Man', 'MAN', 1),
(826, 52, 'Mankono', 'MKN', 1),
(827, 52, 'Mbahiakro', 'MBA', 1),
(828, 52, 'Odienne', 'ODI', 1),
(829, 52, 'Oume', 'OUM', 1),
(830, 52, 'Sakassou', 'SAK', 1),
(831, 52, 'San-Pedro', 'SPE', 1),
(832, 52, 'Sassandra', 'SAS', 1),
(833, 52, 'Seguela', 'SEG', 1),
(834, 52, 'Sinfra', 'SIN', 1),
(835, 52, 'Soubre', 'SOU', 1),
(836, 52, 'Tabou', 'TAB', 1),
(837, 52, 'Tanda', 'TAN', 1),
(838, 52, 'Tiebissou', 'TIE', 1),
(839, 52, 'Tingrela', 'TIN', 1),
(840, 52, 'Tiassale', 'TIA', 1),
(841, 52, 'Touba', 'TBA', 1),
(842, 52, 'Toulepleu', 'TLP', 1),
(843, 52, 'Toumodi', 'TMD', 1),
(844, 52, 'Vavoua', 'VAV', 1),
(845, 52, 'Yamoussoukro', 'YAM', 1),
(846, 52, 'Zuenoula', 'ZUE', 1),
(847, 53, 'Bjelovarsko-bilogorska', 'BB', 1),
(848, 53, 'Grad Zagreb', 'GZ', 1),
(849, 53, 'Dubrovačko-neretvanska', 'DN', 1),
(850, 53, 'Istarska', 'IS', 1),
(851, 53, 'Karlovačka', 'KA', 1),
(852, 53, 'Koprivničko-križevačka', 'KK', 1),
(853, 53, 'Krapinsko-zagorska', 'KZ', 1),
(854, 53, 'Ličko-senjska', 'LS', 1),
(855, 53, 'Međimurska', 'ME', 1),
(856, 53, 'Osječko-baranjska', 'OB', 1),
(857, 53, 'Požeško-slavonska', 'PS', 1),
(858, 53, 'Primorsko-goranska', 'PG', 1),
(859, 53, 'Šibensko-kninska', 'SK', 1),
(860, 53, 'Sisačko-moslavačka', 'SM', 1),
(861, 53, 'Brodsko-posavska', 'BP', 1),
(862, 53, 'Splitsko-dalmatinska', 'SD', 1),
(863, 53, 'Varaždinska', 'VA', 1),
(864, 53, 'Virovitičko-podravska', 'VP', 1),
(865, 53, 'Vukovarsko-srijemska', 'VS', 1),
(866, 53, 'Zadarska', 'ZA', 1),
(867, 53, 'Zagrebačka', 'ZG', 1),
(868, 54, 'Camaguey', 'CA', 1),
(869, 54, 'Ciego de Avila', 'CD', 1),
(870, 54, 'Cienfuegos', 'CI', 1),
(871, 54, 'Ciudad de La Habana', 'CH', 1),
(872, 54, 'Granma', 'GR', 1),
(873, 54, 'Guantanamo', 'GU', 1),
(874, 54, 'Holguin', 'HO', 1),
(875, 54, 'Isla de la Juventud', 'IJ', 1),
(876, 54, 'La Habana', 'LH', 1),
(877, 54, 'Las Tunas', 'LT', 1),
(878, 54, 'Matanzas', 'MA', 1),
(879, 54, 'Pinar del Rio', 'PR', 1),
(880, 54, 'Sancti Spiritus', 'SS', 1),
(881, 54, 'Santiago de Cuba', 'SC', 1),
(882, 54, 'Villa Clara', 'VC', 1),
(883, 55, 'Famagusta', 'F', 1),
(884, 55, 'Kyrenia', 'K', 1),
(885, 55, 'Larnaca', 'A', 1),
(886, 55, 'Limassol', 'I', 1),
(887, 55, 'Nicosia', 'N', 1),
(888, 55, 'Paphos', 'P', 1),
(889, 56, 'Ústecký', 'U', 1),
(890, 56, 'Jihočeský', 'C', 1),
(891, 56, 'Jihomoravský', 'B', 1),
(892, 56, 'Karlovarský', 'K', 1),
(893, 56, 'Královehradecký', 'H', 1),
(894, 56, 'Liberecký', 'L', 1),
(895, 56, 'Moravskoslezský', 'T', 1),
(896, 56, 'Olomoucký', 'M', 1),
(897, 56, 'Pardubický', 'E', 1),
(898, 56, 'Plzeňský', 'P', 1),
(899, 56, 'Praha', 'A', 1),
(900, 56, 'Středočeský', 'S', 1),
(901, 56, 'Vysočina', 'J', 1),
(902, 56, 'Zlínský', 'Z', 1),
(903, 57, 'Arhus', 'AR', 1),
(904, 57, 'Bornholm', 'BH', 1),
(905, 57, 'Copenhagen', 'CO', 1),
(906, 57, 'Faroe Islands', 'FO', 1),
(907, 57, 'Frederiksborg', 'FR', 1),
(908, 57, 'Fyn', 'FY', 1),
(909, 57, 'Kobenhavn', 'KO', 1),
(910, 57, 'Nordjylland', 'NO', 1),
(911, 57, 'Ribe', 'RI', 1),
(912, 57, 'Ringkobing', 'RK', 1),
(913, 57, 'Roskilde', 'RO', 1),
(914, 57, 'Sonderjylland', 'SO', 1),
(915, 57, 'Storstrom', 'ST', 1),
(916, 57, 'Vejle', 'VK', 1),
(917, 57, 'Vestj&aelig;lland', 'VJ', 1),
(918, 57, 'Viborg', 'VB', 1),
(919, 58, '\'Ali Sabih', 'S', 1),
(920, 58, 'Dikhil', 'K', 1),
(921, 58, 'Djibouti', 'J', 1),
(922, 58, 'Obock', 'O', 1),
(923, 58, 'Tadjoura', 'T', 1),
(924, 59, 'Saint Andrew Parish', 'AND', 1),
(925, 59, 'Saint David Parish', 'DAV', 1),
(926, 59, 'Saint George Parish', 'GEO', 1),
(927, 59, 'Saint John Parish', 'JOH', 1),
(928, 59, 'Saint Joseph Parish', 'JOS', 1),
(929, 59, 'Saint Luke Parish', 'LUK', 1),
(930, 59, 'Saint Mark Parish', 'MAR', 1),
(931, 59, 'Saint Patrick Parish', 'PAT', 1),
(932, 59, 'Saint Paul Parish', 'PAU', 1),
(933, 59, 'Saint Peter Parish', 'PET', 1),
(934, 60, 'Distrito Nacional', 'DN', 1),
(935, 60, 'Azua', 'AZ', 1),
(936, 60, 'Baoruco', 'BC', 1),
(937, 60, 'Barahona', 'BH', 1),
(938, 60, 'Dajabon', 'DJ', 1),
(939, 60, 'Duarte', 'DU', 1),
(940, 60, 'Elias Pina', 'EL', 1),
(941, 60, 'El Seybo', 'SY', 1),
(942, 60, 'Espaillat', 'ET', 1),
(943, 60, 'Hato Mayor', 'HM', 1),
(944, 60, 'Independencia', 'IN', 1),
(945, 60, 'La Altagracia', 'AL', 1),
(946, 60, 'La Romana', 'RO', 1),
(947, 60, 'La Vega', 'VE', 1),
(948, 60, 'Maria Trinidad Sanchez', 'MT', 1),
(949, 60, 'Monsenor Nouel', 'MN', 1),
(950, 60, 'Monte Cristi', 'MC', 1),
(951, 60, 'Monte Plata', 'MP', 1),
(952, 60, 'Pedernales', 'PD', 1),
(953, 60, 'Peravia (Bani)', 'PR', 1),
(954, 60, 'Puerto Plata', 'PP', 1),
(955, 60, 'Salcedo', 'SL', 1),
(956, 60, 'Samana', 'SM', 1),
(957, 60, 'Sanchez Ramirez', 'SH', 1),
(958, 60, 'San Cristobal', 'SC', 1),
(959, 60, 'San Jose de Ocoa', 'JO', 1),
(960, 60, 'San Juan', 'SJ', 1),
(961, 60, 'San Pedro de Macoris', 'PM', 1),
(962, 60, 'Santiago', 'SA', 1),
(963, 60, 'Santiago Rodriguez', 'ST', 1),
(964, 60, 'Santo Domingo', 'SD', 1),
(965, 60, 'Valverde', 'VA', 1),
(966, 61, 'Aileu', 'AL', 1),
(967, 61, 'Ainaro', 'AN', 1),
(968, 61, 'Baucau', 'BA', 1),
(969, 61, 'Bobonaro', 'BO', 1),
(970, 61, 'Cova Lima', 'CO', 1),
(971, 61, 'Dili', 'DI', 1),
(972, 61, 'Ermera', 'ER', 1),
(973, 61, 'Lautem', 'LA', 1),
(974, 61, 'Liquica', 'LI', 1),
(975, 61, 'Manatuto', 'MT', 1),
(976, 61, 'Manufahi', 'MF', 1),
(977, 61, 'Oecussi', 'OE', 1),
(978, 61, 'Viqueque', 'VI', 1),
(979, 62, 'Azuay', 'AZU', 1),
(980, 62, 'Bolivar', 'BOL', 1),
(981, 62, 'Ca&ntilde;ar', 'CAN', 1),
(982, 62, 'Carchi', 'CAR', 1),
(983, 62, 'Chimborazo', 'CHI', 1),
(984, 62, 'Cotopaxi', 'COT', 1),
(985, 62, 'El Oro', 'EOR', 1),
(986, 62, 'Esmeraldas', 'ESM', 1),
(987, 62, 'Gal&aacute;pagos', 'GPS', 1),
(988, 62, 'Guayas', 'GUA', 1),
(989, 62, 'Imbabura', 'IMB', 1),
(990, 62, 'Loja', 'LOJ', 1),
(991, 62, 'Los Rios', 'LRO', 1),
(992, 62, 'Manab&iacute;', 'MAN', 1),
(993, 62, 'Morona Santiago', 'MSA', 1),
(994, 62, 'Napo', 'NAP', 1),
(995, 62, 'Orellana', 'ORE', 1),
(996, 62, 'Pastaza', 'PAS', 1),
(997, 62, 'Pichincha', 'PIC', 1),
(998, 62, 'Sucumb&iacute;os', 'SUC', 1),
(999, 62, 'Tungurahua', 'TUN', 1),
(1000, 62, 'Zamora Chinchipe', 'ZCH', 1),
(1001, 63, 'Ad Daqahliyah', 'DHY', 1),
(1002, 63, 'Al Bahr al Ahmar', 'BAM', 1),
(1003, 63, 'Al Buhayrah', 'BHY', 1),
(1004, 63, 'Al Fayyum', 'FYM', 1),
(1005, 63, 'Al Gharbiyah', 'GBY', 1),
(1006, 63, 'Al Iskandariyah', 'IDR', 1),
(1007, 63, 'Al Isma\'iliyah', 'IML', 1),
(1008, 63, 'Al Jizah', 'JZH', 1),
(1009, 63, 'Al Minufiyah', 'MFY', 1),
(1010, 63, 'Al Minya', 'MNY', 1),
(1011, 63, 'Al Qahirah', 'QHR', 1),
(1012, 63, 'Al Qalyubiyah', 'QLY', 1),
(1013, 63, 'Al Wadi al Jadid', 'WJD', 1),
(1014, 63, 'Ash Sharqiyah', 'SHQ', 1),
(1015, 63, 'As Suways', 'SWY', 1),
(1016, 63, 'Aswan', 'ASW', 1),
(1017, 63, 'Asyut', 'ASY', 1),
(1018, 63, 'Bani Suwayf', 'BSW', 1),
(1019, 63, 'Bur Sa\'id', 'BSD', 1),
(1020, 63, 'Dumyat', 'DMY', 1),
(1021, 63, 'Janub Sina\'', 'JNS', 1),
(1022, 63, 'Kafr ash Shaykh', 'KSH', 1),
(1023, 63, 'Matruh', 'MAT', 1),
(1024, 63, 'Qina', 'QIN', 1),
(1025, 63, 'Shamal Sina\'', 'SHS', 1),
(1026, 63, 'Suhaj', 'SUH', 1),
(1027, 64, 'Ahuachapan', 'AH', 1),
(1028, 64, 'Cabanas', 'CA', 1),
(1029, 64, 'Chalatenango', 'CH', 1),
(1030, 64, 'Cuscatlan', 'CU', 1),
(1031, 64, 'La Libertad', 'LB', 1),
(1032, 64, 'La Paz', 'PZ', 1),
(1033, 64, 'La Union', 'UN', 1),
(1034, 64, 'Morazan', 'MO', 1),
(1035, 64, 'San Miguel', 'SM', 1),
(1036, 64, 'San Salvador', 'SS', 1),
(1037, 64, 'San Vicente', 'SV', 1),
(1038, 64, 'Santa Ana', 'SA', 1),
(1039, 64, 'Sonsonate', 'SO', 1),
(1040, 64, 'Usulutan', 'US', 1),
(1041, 65, 'Provincia Annobon', 'AN', 1),
(1042, 65, 'Provincia Bioko Norte', 'BN', 1),
(1043, 65, 'Provincia Bioko Sur', 'BS', 1),
(1044, 65, 'Provincia Centro Sur', 'CS', 1),
(1045, 65, 'Provincia Kie-Ntem', 'KN', 1),
(1046, 65, 'Provincia Litoral', 'LI', 1),
(1047, 65, 'Provincia Wele-Nzas', 'WN', 1),
(1048, 66, 'Central (Maekel)', 'MA', 1),
(1049, 66, 'Anseba (Keren)', 'KE', 1),
(1050, 66, 'Southern Red Sea (Debub-Keih-Bahri)', 'DK', 1),
(1051, 66, 'Northern Red Sea (Semien-Keih-Bahri)', 'SK', 1),
(1052, 66, 'Southern (Debub)', 'DE', 1),
(1053, 66, 'Gash-Barka (Barentu)', 'BR', 1),
(1054, 67, 'Harjumaa (Tallinn)', 'HA', 1),
(1055, 67, 'Hiiumaa (Kardla)', 'HI', 1),
(1056, 67, 'Ida-Virumaa (Johvi)', 'IV', 1),
(1057, 67, 'Jarvamaa (Paide)', 'JA', 1),
(1058, 67, 'Jogevamaa (Jogeva)', 'JO', 1),
(1059, 67, 'Laane-Virumaa (Rakvere)', 'LV', 1),
(1060, 67, 'Laanemaa (Haapsalu)', 'LA', 1),
(1061, 67, 'Parnumaa (Parnu)', 'PA', 1),
(1062, 67, 'Polvamaa (Polva)', 'PO', 1),
(1063, 67, 'Raplamaa (Rapla)', 'RA', 1),
(1064, 67, 'Saaremaa (Kuessaare)', 'SA', 1),
(1065, 67, 'Tartumaa (Tartu)', 'TA', 1),
(1066, 67, 'Valgamaa (Valga)', 'VA', 1),
(1067, 67, 'Viljandimaa (Viljandi)', 'VI', 1),
(1068, 67, 'Vorumaa (Voru)', 'VO', 1),
(1069, 68, 'Afar', 'AF', 1),
(1070, 68, 'Amhara', 'AH', 1),
(1071, 68, 'Benishangul-Gumaz', 'BG', 1),
(1072, 68, 'Gambela', 'GB', 1),
(1073, 68, 'Hariai', 'HR', 1),
(1074, 68, 'Oromia', 'OR', 1),
(1075, 68, 'Somali', 'SM', 1),
(1076, 68, 'Southern Nations - Nationalities and Peoples Region', 'SN', 1),
(1077, 68, 'Tigray', 'TG', 1),
(1078, 68, 'Addis Ababa', 'AA', 1),
(1079, 68, 'Dire Dawa', 'DD', 1),
(1080, 71, 'Central Division', 'C', 1),
(1081, 71, 'Northern Division', 'N', 1),
(1082, 71, 'Eastern Division', 'E', 1),
(1083, 71, 'Western Division', 'W', 1),
(1084, 71, 'Rotuma', 'R', 1),
(1085, 72, 'Ahvenanmaan lääni', 'AL', 1),
(1086, 72, 'Etelä-Suomen lääni', 'ES', 1),
(1087, 72, 'Itä-Suomen lääni', 'IS', 1),
(1088, 72, 'Länsi-Suomen lääni', 'LS', 1),
(1089, 72, 'Lapin lääni', 'LA', 1),
(1090, 72, 'Oulun lääni', 'OU', 1),
(1114, 74, 'Ain', '01', 1),
(1115, 74, 'Aisne', '02', 1),
(1116, 74, 'Allier', '03', 1),
(1117, 74, 'Alpes de Haute Provence', '04', 1),
(1118, 74, 'Hautes-Alpes', '05', 1),
(1119, 74, 'Alpes Maritimes', '06', 1),
(1120, 74, 'Ard&egrave;che', '07', 1),
(1121, 74, 'Ardennes', '08', 1),
(1122, 74, 'Ari&egrave;ge', '09', 1),
(1123, 74, 'Aube', '10', 1),
(1124, 74, 'Aude', '11', 1),
(1125, 74, 'Aveyron', '12', 1),
(1126, 74, 'Bouches du Rh&ocirc;ne', '13', 1),
(1127, 74, 'Calvados', '14', 1),
(1128, 74, 'Cantal', '15', 1),
(1129, 74, 'Charente', '16', 1),
(1130, 74, 'Charente Maritime', '17', 1),
(1131, 74, 'Cher', '18', 1),
(1132, 74, 'Corr&egrave;ze', '19', 1),
(1133, 74, 'Corse du Sud', '2A', 1),
(1134, 74, 'Haute Corse', '2B', 1),
(1135, 74, 'C&ocirc;te d&#039;or', '21', 1),
(1136, 74, 'C&ocirc;tes d&#039;Armor', '22', 1),
(1137, 74, 'Creuse', '23', 1),
(1138, 74, 'Dordogne', '24', 1),
(1139, 74, 'Doubs', '25', 1),
(1140, 74, 'Dr&ocirc;me', '26', 1),
(1141, 74, 'Eure', '27', 1),
(1142, 74, 'Eure et Loir', '28', 1),
(1143, 74, 'Finist&egrave;re', '29', 1),
(1144, 74, 'Gard', '30', 1),
(1145, 74, 'Haute Garonne', '31', 1),
(1146, 74, 'Gers', '32', 1),
(1147, 74, 'Gironde', '33', 1),
(1148, 74, 'H&eacute;rault', '34', 1),
(1149, 74, 'Ille et Vilaine', '35', 1),
(1150, 74, 'Indre', '36', 1),
(1151, 74, 'Indre et Loire', '37', 1),
(1152, 74, 'Is&eacute;re', '38', 1),
(1153, 74, 'Jura', '39', 1),
(1154, 74, 'Landes', '40', 1),
(1155, 74, 'Loir et Cher', '41', 1),
(1156, 74, 'Loire', '42', 1),
(1157, 74, 'Haute Loire', '43', 1),
(1158, 74, 'Loire Atlantique', '44', 1),
(1159, 74, 'Loiret', '45', 1),
(1160, 74, 'Lot', '46', 1),
(1161, 74, 'Lot et Garonne', '47', 1),
(1162, 74, 'Loz&egrave;re', '48', 1),
(1163, 74, 'Maine et Loire', '49', 1),
(1164, 74, 'Manche', '50', 1),
(1165, 74, 'Marne', '51', 1),
(1166, 74, 'Haute Marne', '52', 1),
(1167, 74, 'Mayenne', '53', 1),
(1168, 74, 'Meurthe et Moselle', '54', 1),
(1169, 74, 'Meuse', '55', 1),
(1170, 74, 'Morbihan', '56', 1),
(1171, 74, 'Moselle', '57', 1),
(1172, 74, 'Ni&egrave;vre', '58', 1),
(1173, 74, 'Nord', '59', 1),
(1174, 74, 'Oise', '60', 1),
(1175, 74, 'Orne', '61', 1),
(1176, 74, 'Pas de Calais', '62', 1),
(1177, 74, 'Puy de D&ocirc;me', '63', 1),
(1178, 74, 'Pyr&eacute;n&eacute;es Atlantiques', '64', 1),
(1179, 74, 'Hautes Pyr&eacute;n&eacute;es', '65', 1),
(1180, 74, 'Pyr&eacute;n&eacute;es Orientales', '66', 1),
(1181, 74, 'Bas Rhin', '67', 1),
(1182, 74, 'Haut Rhin', '68', 1),
(1183, 74, 'Rh&ocirc;ne', '69', 1),
(1184, 74, 'Haute Sa&ocirc;ne', '70', 1),
(1185, 74, 'Sa&ocirc;ne et Loire', '71', 1),
(1186, 74, 'Sarthe', '72', 1),
(1187, 74, 'Savoie', '73', 1),
(1188, 74, 'Haute Savoie', '74', 1),
(1189, 74, 'Paris', '75', 1),
(1190, 74, 'Seine Maritime', '76', 1),
(1191, 74, 'Seine et Marne', '77', 1),
(1192, 74, 'Yvelines', '78', 1),
(1193, 74, 'Deux S&egrave;vres', '79', 1),
(1194, 74, 'Somme', '80', 1),
(1195, 74, 'Tarn', '81', 1),
(1196, 74, 'Tarn et Garonne', '82', 1),
(1197, 74, 'Var', '83', 1),
(1198, 74, 'Vaucluse', '84', 1),
(1199, 74, 'Vend&eacute;e', '85', 1),
(1200, 74, 'Vienne', '86', 1),
(1201, 74, 'Haute Vienne', '87', 1),
(1202, 74, 'Vosges', '88', 1),
(1203, 74, 'Yonne', '89', 1),
(1204, 74, 'Territoire de Belfort', '90', 1),
(1205, 74, 'Essonne', '91', 1),
(1206, 74, 'Hauts de Seine', '92', 1),
(1207, 74, 'Seine St-Denis', '93', 1),
(1208, 74, 'Val de Marne', '94', 1),
(1209, 74, 'Val d\'Oise', '95', 1),
(1210, 76, 'Archipel des Marquises', 'M', 1),
(1211, 76, 'Archipel des Tuamotu', 'T', 1),
(1212, 76, 'Archipel des Tubuai', 'I', 1),
(1213, 76, 'Iles du Vent', 'V', 1),
(1214, 76, 'Iles Sous-le-Vent', 'S', 1),
(1215, 77, 'Iles Crozet', 'C', 1),
(1216, 77, 'Iles Kerguelen', 'K', 1),
(1217, 77, 'Ile Amsterdam', 'A', 1),
(1218, 77, 'Ile Saint-Paul', 'P', 1),
(1219, 77, 'Adelie Land', 'D', 1),
(1220, 78, 'Estuaire', 'ES', 1),
(1221, 78, 'Haut-Ogooue', 'HO', 1),
(1222, 78, 'Moyen-Ogooue', 'MO', 1),
(1223, 78, 'Ngounie', 'NG', 1),
(1224, 78, 'Nyanga', 'NY', 1),
(1225, 78, 'Ogooue-Ivindo', 'OI', 1),
(1226, 78, 'Ogooue-Lolo', 'OL', 1),
(1227, 78, 'Ogooue-Maritime', 'OM', 1),
(1228, 78, 'Woleu-Ntem', 'WN', 1),
(1229, 79, 'Banjul', 'BJ', 1),
(1230, 79, 'Basse', 'BS', 1),
(1231, 79, 'Brikama', 'BR', 1),
(1232, 79, 'Janjangbure', 'JA', 1),
(1233, 79, 'Kanifeng', 'KA', 1),
(1234, 79, 'Kerewan', 'KE', 1),
(1235, 79, 'Kuntaur', 'KU', 1),
(1236, 79, 'Mansakonko', 'MA', 1),
(1237, 79, 'Lower River', 'LR', 1),
(1238, 79, 'Central River', 'CR', 1),
(1239, 79, 'North Bank', 'NB', 1),
(1240, 79, 'Upper River', 'UR', 1),
(1241, 79, 'Western', 'WE', 1),
(1242, 80, 'Abkhazia', 'AB', 1),
(1243, 80, 'Ajaria', 'AJ', 1),
(1244, 80, 'Tbilisi', 'TB', 1),
(1245, 80, 'Guria', 'GU', 1),
(1246, 80, 'Imereti', 'IM', 1),
(1247, 80, 'Kakheti', 'KA', 1),
(1248, 80, 'Kvemo Kartli', 'KK', 1),
(1249, 80, 'Mtskheta-Mtianeti', 'MM', 1),
(1250, 80, 'Racha Lechkhumi and Kvemo Svanet', 'RL', 1),
(1251, 80, 'Samegrelo-Zemo Svaneti', 'SZ', 1),
(1252, 80, 'Samtskhe-Javakheti', 'SJ', 1),
(1253, 80, 'Shida Kartli', 'SK', 1),
(1254, 81, 'Baden-W&uuml;rttemberg', 'BAW', 1),
(1255, 81, 'Bayern', 'BAY', 1),
(1256, 81, 'Berlin', 'BER', 1),
(1257, 81, 'Brandenburg', 'BRG', 1),
(1258, 81, 'Bremen', 'BRE', 1),
(1259, 81, 'Hamburg', 'HAM', 1),
(1260, 81, 'Hessen', 'HES', 1),
(1261, 81, 'Mecklenburg-Vorpommern', 'MEC', 1),
(1262, 81, 'Niedersachsen', 'NDS', 1),
(1263, 81, 'Nordrhein-Westfalen', 'NRW', 1),
(1264, 81, 'Rheinland-Pfalz', 'RHE', 1),
(1265, 81, 'Saarland', 'SAR', 1),
(1266, 81, 'Sachsen', 'SAS', 1),
(1267, 81, 'Sachsen-Anhalt', 'SAC', 1),
(1268, 81, 'Schleswig-Holstein', 'SCN', 1),
(1269, 81, 'Th&uuml;ringen', 'THE', 1),
(1270, 82, 'Ashanti Region', 'AS', 1),
(1271, 82, 'Brong-Ahafo Region', 'BA', 1),
(1272, 82, 'Central Region', 'CE', 1),
(1273, 82, 'Eastern Region', 'EA', 1),
(1274, 82, 'Greater Accra Region', 'GA', 1),
(1275, 82, 'Northern Region', 'NO', 1),
(1276, 82, 'Upper East Region', 'UE', 1),
(1277, 82, 'Upper West Region', 'UW', 1),
(1278, 82, 'Volta Region', 'VO', 1),
(1279, 82, 'Western Region', 'WE', 1),
(1280, 84, 'Attica', 'AT', 1),
(1281, 84, 'Central Greece', 'CN', 1),
(1282, 84, 'Central Macedonia', 'CM', 1),
(1283, 84, 'Crete', 'CR', 1),
(1284, 84, 'East Macedonia and Thrace', 'EM', 1),
(1285, 84, 'Epirus', 'EP', 1),
(1286, 84, 'Ionian Islands', 'II', 1),
(1287, 84, 'North Aegean', 'NA', 1),
(1288, 84, 'Peloponnesos', 'PP', 1),
(1289, 84, 'South Aegean', 'SA', 1),
(1290, 84, 'Thessaly', 'TH', 1),
(1291, 84, 'West Greece', 'WG', 1),
(1292, 84, 'West Macedonia', 'WM', 1),
(1293, 85, 'Avannaa', 'A', 1),
(1294, 85, 'Tunu', 'T', 1),
(1295, 85, 'Kitaa', 'K', 1),
(1296, 86, 'Saint Andrew', 'A', 1),
(1297, 86, 'Saint David', 'D', 1),
(1298, 86, 'Saint George', 'G', 1),
(1299, 86, 'Saint John', 'J', 1),
(1300, 86, 'Saint Mark', 'M', 1),
(1301, 86, 'Saint Patrick', 'P', 1),
(1302, 86, 'Carriacou', 'C', 1),
(1303, 86, 'Petit Martinique', 'Q', 1),
(1304, 89, 'Alta Verapaz', 'AV', 1),
(1305, 89, 'Baja Verapaz', 'BV', 1),
(1306, 89, 'Chimaltenango', 'CM', 1),
(1307, 89, 'Chiquimula', 'CQ', 1),
(1308, 89, 'El Peten', 'PE', 1),
(1309, 89, 'El Progreso', 'PR', 1),
(1310, 89, 'El Quiche', 'QC', 1),
(1311, 89, 'Escuintla', 'ES', 1),
(1312, 89, 'Guatemala', 'GU', 1),
(1313, 89, 'Huehuetenango', 'HU', 1),
(1314, 89, 'Izabal', 'IZ', 1),
(1315, 89, 'Jalapa', 'JA', 1),
(1316, 89, 'Jutiapa', 'JU', 1),
(1317, 89, 'Quetzaltenango', 'QZ', 1),
(1318, 89, 'Retalhuleu', 'RE', 1),
(1319, 89, 'Sacatepequez', 'ST', 1),
(1320, 89, 'San Marcos', 'SM', 1),
(1321, 89, 'Santa Rosa', 'SR', 1),
(1322, 89, 'Solola', 'SO', 1),
(1323, 89, 'Suchitepequez', 'SU', 1),
(1324, 89, 'Totonicapan', 'TO', 1),
(1325, 89, 'Zacapa', 'ZA', 1),
(1326, 90, 'Conakry', 'CNK', 1),
(1327, 90, 'Beyla', 'BYL', 1),
(1328, 90, 'Boffa', 'BFA', 1),
(1329, 90, 'Boke', 'BOK', 1),
(1330, 90, 'Coyah', 'COY', 1),
(1331, 90, 'Dabola', 'DBL', 1),
(1332, 90, 'Dalaba', 'DLB', 1),
(1333, 90, 'Dinguiraye', 'DGR', 1),
(1334, 90, 'Dubreka', 'DBR', 1),
(1335, 90, 'Faranah', 'FRN', 1),
(1336, 90, 'Forecariah', 'FRC', 1),
(1337, 90, 'Fria', 'FRI', 1),
(1338, 90, 'Gaoual', 'GAO', 1),
(1339, 90, 'Gueckedou', 'GCD', 1),
(1340, 90, 'Kankan', 'KNK', 1),
(1341, 90, 'Kerouane', 'KRN', 1),
(1342, 90, 'Kindia', 'KND', 1),
(1343, 90, 'Kissidougou', 'KSD', 1),
(1344, 90, 'Koubia', 'KBA', 1),
(1345, 90, 'Koundara', 'KDA', 1),
(1346, 90, 'Kouroussa', 'KRA', 1),
(1347, 90, 'Labe', 'LAB', 1),
(1348, 90, 'Lelouma', 'LLM', 1),
(1349, 90, 'Lola', 'LOL', 1),
(1350, 90, 'Macenta', 'MCT', 1),
(1351, 90, 'Mali', 'MAL', 1),
(1352, 90, 'Mamou', 'MAM', 1),
(1353, 90, 'Mandiana', 'MAN', 1),
(1354, 90, 'Nzerekore', 'NZR', 1),
(1355, 90, 'Pita', 'PIT', 1),
(1356, 90, 'Siguiri', 'SIG', 1),
(1357, 90, 'Telimele', 'TLM', 1),
(1358, 90, 'Tougue', 'TOG', 1),
(1359, 90, 'Yomou', 'YOM', 1),
(1360, 91, 'Bafata Region', 'BF', 1),
(1361, 91, 'Biombo Region', 'BB', 1),
(1362, 91, 'Bissau Region', 'BS', 1),
(1363, 91, 'Bolama Region', 'BL', 1),
(1364, 91, 'Cacheu Region', 'CA', 1),
(1365, 91, 'Gabu Region', 'GA', 1),
(1366, 91, 'Oio Region', 'OI', 1),
(1367, 91, 'Quinara Region', 'QU', 1),
(1368, 91, 'Tombali Region', 'TO', 1),
(1369, 92, 'Barima-Waini', 'BW', 1),
(1370, 92, 'Cuyuni-Mazaruni', 'CM', 1),
(1371, 92, 'Demerara-Mahaica', 'DM', 1),
(1372, 92, 'East Berbice-Corentyne', 'EC', 1),
(1373, 92, 'Essequibo Islands-West Demerara', 'EW', 1),
(1374, 92, 'Mahaica-Berbice', 'MB', 1),
(1375, 92, 'Pomeroon-Supenaam', 'PM', 1),
(1376, 92, 'Potaro-Siparuni', 'PI', 1),
(1377, 92, 'Upper Demerara-Berbice', 'UD', 1),
(1378, 92, 'Upper Takutu-Upper Essequibo', 'UT', 1),
(1379, 93, 'Artibonite', 'AR', 1),
(1380, 93, 'Centre', 'CE', 1),
(1381, 93, 'Grand\'Anse', 'GA', 1),
(1382, 93, 'Nord', 'ND', 1),
(1383, 93, 'Nord-Est', 'NE', 1),
(1384, 93, 'Nord-Ouest', 'NO', 1),
(1385, 93, 'Ouest', 'OU', 1),
(1386, 93, 'Sud', 'SD', 1),
(1387, 93, 'Sud-Est', 'SE', 1),
(1388, 94, 'Flat Island', 'F', 1),
(1389, 94, 'McDonald Island', 'M', 1),
(1390, 94, 'Shag Island', 'S', 1),
(1391, 94, 'Heard Island', 'H', 1),
(1392, 95, 'Atlantida', 'AT', 1),
(1393, 95, 'Choluteca', 'CH', 1),
(1394, 95, 'Colon', 'CL', 1),
(1395, 95, 'Comayagua', 'CM', 1),
(1396, 95, 'Copan', 'CP', 1),
(1397, 95, 'Cortes', 'CR', 1),
(1398, 95, 'El Paraiso', 'PA', 1),
(1399, 95, 'Francisco Morazan', 'FM', 1),
(1400, 95, 'Gracias a Dios', 'GD', 1),
(1401, 95, 'Intibuca', 'IN', 1),
(1402, 95, 'Islas de la Bahia (Bay Islands)', 'IB', 1),
(1403, 95, 'La Paz', 'PZ', 1),
(1404, 95, 'Lempira', 'LE', 1),
(1405, 95, 'Ocotepeque', 'OC', 1),
(1406, 95, 'Olancho', 'OL', 1),
(1407, 95, 'Santa Barbara', 'SB', 1),
(1408, 95, 'Valle', 'VA', 1),
(1409, 95, 'Yoro', 'YO', 1),
(1410, 96, 'Central and Western Hong Kong Island', 'HCW', 1),
(1411, 96, 'Eastern Hong Kong Island', 'HEA', 1),
(1412, 96, 'Southern Hong Kong Island', 'HSO', 1),
(1413, 96, 'Wan Chai Hong Kong Island', 'HWC', 1),
(1414, 96, 'Kowloon City Kowloon', 'KKC', 1),
(1415, 96, 'Kwun Tong Kowloon', 'KKT', 1),
(1416, 96, 'Sham Shui Po Kowloon', 'KSS', 1),
(1417, 96, 'Wong Tai Sin Kowloon', 'KWT', 1),
(1418, 96, 'Yau Tsim Mong Kowloon', 'KYT', 1),
(1419, 96, 'Islands New Territories', 'NIS', 1),
(1420, 96, 'Kwai Tsing New Territories', 'NKT', 1),
(1421, 96, 'North New Territories', 'NNO', 1),
(1422, 96, 'Sai Kung New Territories', 'NSK', 1),
(1423, 96, 'Sha Tin New Territories', 'NST', 1),
(1424, 96, 'Tai Po New Territories', 'NTP', 1),
(1425, 96, 'Tsuen Wan New Territories', 'NTW', 1),
(1426, 96, 'Tuen Mun New Territories', 'NTM', 1),
(1427, 96, 'Yuen Long New Territories', 'NYL', 1),
(1467, 98, 'Austurland', 'AL', 1),
(1468, 98, 'Hofuoborgarsvaeoi', 'HF', 1),
(1469, 98, 'Norourland eystra', 'NE', 1),
(1470, 98, 'Norourland vestra', 'NV', 1),
(1471, 98, 'Suourland', 'SL', 1),
(1472, 98, 'Suournes', 'SN', 1),
(1473, 98, 'Vestfiroir', 'VF', 1),
(1474, 98, 'Vesturland', 'VL', 1),
(1475, 99, 'Andaman and Nicobar Islands', 'AN', 1),
(1476, 99, 'Andhra Pradesh', 'AP', 1),
(1477, 99, 'Arunachal Pradesh', 'AR', 1),
(1478, 99, 'Assam', 'AS', 1),
(1479, 99, 'Bihar', 'BI', 1),
(1480, 99, 'Chandigarh', 'CH', 1),
(1481, 99, 'Dadra and Nagar Haveli', 'DA', 1),
(1482, 99, 'Daman and Diu', 'DM', 1),
(1483, 99, 'Delhi', 'DE', 1),
(1484, 99, 'Goa', 'GO', 1),
(1485, 99, 'Gujarat', 'GU', 1),
(1486, 99, 'Haryana', 'HA', 1),
(1487, 99, 'Himachal Pradesh', 'HP', 1),
(1488, 99, 'Jammu and Kashmir', 'JA', 1),
(1489, 99, 'Karnataka', 'KA', 1),
(1490, 99, 'Kerala', 'KE', 1),
(1491, 99, 'Lakshadweep Islands', 'LI', 1),
(1492, 99, 'Madhya Pradesh', 'MP', 1),
(1493, 99, 'Maharashtra', 'MA', 1),
(1494, 99, 'Manipur', 'MN', 1),
(1495, 99, 'Meghalaya', 'ME', 1),
(1496, 99, 'Mizoram', 'MI', 1),
(1497, 99, 'Nagaland', 'NA', 1),
(1498, 99, 'Orissa', 'OR', 1),
(1499, 99, 'Pondicherry', 'PO', 1),
(1500, 99, 'Punjab', 'PU', 1),
(1501, 99, 'Rajasthan', 'RA', 1),
(1502, 99, 'Sikkim', 'SI', 1),
(1503, 99, 'Tamil Nadu', 'TN', 1),
(1504, 99, 'Tripura', 'TR', 1),
(1505, 99, 'Uttar Pradesh', 'UP', 1),
(1506, 99, 'West Bengal', 'WB', 1),
(1507, 100, 'Aceh', 'AC', 1),
(1508, 100, 'Bali', 'BA', 1),
(1509, 100, 'Banten', 'BT', 1),
(1510, 100, 'Bengkulu', 'BE', 1),
(1511, 100, 'BoDeTaBek', 'BD', 1),
(1512, 100, 'Gorontalo', 'GO', 1),
(1513, 100, 'Jakarta Raya', 'JK', 1),
(1514, 100, 'Jambi', 'JA', 1),
(1515, 100, 'Jawa Barat', 'JB', 1),
(1516, 100, 'Jawa Tengah', 'JT', 1),
(1517, 100, 'Jawa Timur', 'JI', 1),
(1518, 100, 'Kalimantan Barat', 'KB', 1),
(1519, 100, 'Kalimantan Selatan', 'KS', 1),
(1520, 100, 'Kalimantan Tengah', 'KT', 1),
(1521, 100, 'Kalimantan Timur', 'KI', 1),
(1522, 100, 'Kepulauan Bangka Belitung', 'BB', 1),
(1523, 100, 'Lampung', 'LA', 1),
(1524, 100, 'Maluku', 'MA', 1),
(1525, 100, 'Maluku Utara', 'MU', 1),
(1526, 100, 'Nusa Tenggara Barat', 'NB', 1),
(1527, 100, 'Nusa Tenggara Timur', 'NT', 1),
(1528, 100, 'Papua', 'PA', 1),
(1529, 100, 'Riau', 'RI', 1),
(1530, 100, 'Sulawesi Selatan', 'SN', 1),
(1531, 100, 'Sulawesi Tengah', 'ST', 1),
(1532, 100, 'Sulawesi Tenggara', 'SG', 1),
(1533, 100, 'Sulawesi Utara', 'SA', 1),
(1534, 100, 'Sumatera Barat', 'SB', 1),
(1535, 100, 'Sumatera Selatan', 'SS', 1),
(1536, 100, 'Sumatera Utara', 'SU', 1),
(1537, 100, 'Yogyakarta', 'YO', 1),
(1538, 101, 'Tehran', 'TEH', 1),
(1539, 101, 'Qom', 'QOM', 1),
(1540, 101, 'Markazi', 'MKZ', 1),
(1541, 101, 'Qazvin', 'QAZ', 1),
(1542, 101, 'Gilan', 'GIL', 1),
(1543, 101, 'Ardabil', 'ARD', 1),
(1544, 101, 'Zanjan', 'ZAN', 1),
(1545, 101, 'East Azarbaijan', 'EAZ', 1),
(1546, 101, 'West Azarbaijan', 'WEZ', 1),
(1547, 101, 'Kurdistan', 'KRD', 1),
(1548, 101, 'Hamadan', 'HMD', 1),
(1549, 101, 'Kermanshah', 'KRM', 1),
(1550, 101, 'Ilam', 'ILM', 1),
(1551, 101, 'Lorestan', 'LRS', 1),
(1552, 101, 'Khuzestan', 'KZT', 1),
(1553, 101, 'Chahar Mahaal and Bakhtiari', 'CMB', 1),
(1554, 101, 'Kohkiluyeh and Buyer Ahmad', 'KBA', 1),
(1555, 101, 'Bushehr', 'BSH', 1),
(1556, 101, 'Fars', 'FAR', 1),
(1557, 101, 'Hormozgan', 'HRM', 1),
(1558, 101, 'Sistan and Baluchistan', 'SBL', 1),
(1559, 101, 'Kerman', 'KRB', 1),
(1560, 101, 'Yazd', 'YZD', 1),
(1561, 101, 'Esfahan', 'EFH', 1),
(1562, 101, 'Semnan', 'SMN', 1),
(1563, 101, 'Mazandaran', 'MZD', 1),
(1564, 101, 'Golestan', 'GLS', 1),
(1565, 101, 'North Khorasan', 'NKH', 1),
(1566, 101, 'Razavi Khorasan', 'RKH', 1),
(1567, 101, 'South Khorasan', 'SKH', 1),
(1568, 102, 'Baghdad', 'BD', 1),
(1569, 102, 'Salah ad Din', 'SD', 1),
(1570, 102, 'Diyala', 'DY', 1),
(1571, 102, 'Wasit', 'WS', 1),
(1572, 102, 'Maysan', 'MY', 1),
(1573, 102, 'Al Basrah', 'BA', 1),
(1574, 102, 'Dhi Qar', 'DQ', 1),
(1575, 102, 'Al Muthanna', 'MU', 1),
(1576, 102, 'Al Qadisyah', 'QA', 1),
(1577, 102, 'Babil', 'BB', 1),
(1578, 102, 'Al Karbala', 'KB', 1),
(1579, 102, 'An Najaf', 'NJ', 1),
(1580, 102, 'Al Anbar', 'AB', 1),
(1581, 102, 'Ninawa', 'NN', 1),
(1582, 102, 'Dahuk', 'DH', 1),
(1583, 102, 'Arbil', 'AL', 1),
(1584, 102, 'At Ta\'mim', 'TM', 1),
(1585, 102, 'As Sulaymaniyah', 'SL', 1),
(1586, 103, 'Carlow', 'CA', 1),
(1587, 103, 'Cavan', 'CV', 1),
(1588, 103, 'Clare', 'CL', 1),
(1589, 103, 'Cork', 'CO', 1),
(1590, 103, 'Donegal', 'DO', 1),
(1591, 103, 'Dublin', 'DU', 1),
(1592, 103, 'Galway', 'GA', 1),
(1593, 103, 'Kerry', 'KE', 1),
(1594, 103, 'Kildare', 'KI', 1),
(1595, 103, 'Kilkenny', 'KL', 1),
(1596, 103, 'Laois', 'LA', 1);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1597, 103, 'Leitrim', 'LE', 1),
(1598, 103, 'Limerick', 'LI', 1),
(1599, 103, 'Longford', 'LO', 1),
(1600, 103, 'Louth', 'LU', 1),
(1601, 103, 'Mayo', 'MA', 1),
(1602, 103, 'Meath', 'ME', 1),
(1603, 103, 'Monaghan', 'MO', 1),
(1604, 103, 'Offaly', 'OF', 1),
(1605, 103, 'Roscommon', 'RO', 1),
(1606, 103, 'Sligo', 'SL', 1),
(1607, 103, 'Tipperary', 'TI', 1),
(1608, 103, 'Waterford', 'WA', 1),
(1609, 103, 'Westmeath', 'WE', 1),
(1610, 103, 'Wexford', 'WX', 1),
(1611, 103, 'Wicklow', 'WI', 1),
(1612, 104, 'Be\'er Sheva', 'BS', 1),
(1613, 104, 'Bika\'at Hayarden', 'BH', 1),
(1614, 104, 'Eilat and Arava', 'EA', 1),
(1615, 104, 'Galil', 'GA', 1),
(1616, 104, 'Haifa', 'HA', 1),
(1617, 104, 'Jehuda Mountains', 'JM', 1),
(1618, 104, 'Jerusalem', 'JE', 1),
(1619, 104, 'Negev', 'NE', 1),
(1620, 104, 'Semaria', 'SE', 1),
(1621, 104, 'Sharon', 'SH', 1),
(1622, 104, 'Tel Aviv (Gosh Dan)', 'TA', 1),
(3860, 105, 'Caltanissetta', 'CL', 1),
(3842, 105, 'Agrigento', 'AG', 1),
(3843, 105, 'Alessandria', 'AL', 1),
(3844, 105, 'Ancona', 'AN', 1),
(3845, 105, 'Aosta', 'AO', 1),
(3846, 105, 'Arezzo', 'AR', 1),
(3847, 105, 'Ascoli Piceno', 'AP', 1),
(3848, 105, 'Asti', 'AT', 1),
(3849, 105, 'Avellino', 'AV', 1),
(3850, 105, 'Bari', 'BA', 1),
(3851, 105, 'Belluno', 'BL', 1),
(3852, 105, 'Benevento', 'BN', 1),
(3853, 105, 'Bergamo', 'BG', 1),
(3854, 105, 'Biella', 'BI', 1),
(3855, 105, 'Bologna', 'BO', 1),
(3856, 105, 'Bolzano', 'BZ', 1),
(3857, 105, 'Brescia', 'BS', 1),
(3858, 105, 'Brindisi', 'BR', 1),
(3859, 105, 'Cagliari', 'CA', 1),
(1643, 106, 'Clarendon Parish', 'CLA', 1),
(1644, 106, 'Hanover Parish', 'HAN', 1),
(1645, 106, 'Kingston Parish', 'KIN', 1),
(1646, 106, 'Manchester Parish', 'MAN', 1),
(1647, 106, 'Portland Parish', 'POR', 1),
(1648, 106, 'Saint Andrew Parish', 'AND', 1),
(1649, 106, 'Saint Ann Parish', 'ANN', 1),
(1650, 106, 'Saint Catherine Parish', 'CAT', 1),
(1651, 106, 'Saint Elizabeth Parish', 'ELI', 1),
(1652, 106, 'Saint James Parish', 'JAM', 1),
(1653, 106, 'Saint Mary Parish', 'MAR', 1),
(1654, 106, 'Saint Thomas Parish', 'THO', 1),
(1655, 106, 'Trelawny Parish', 'TRL', 1),
(1656, 106, 'Westmoreland Parish', 'WML', 1),
(1657, 107, 'Aichi', 'AI', 1),
(1658, 107, 'Akita', 'AK', 1),
(1659, 107, 'Aomori', 'AO', 1),
(1660, 107, 'Chiba', 'CH', 1),
(1661, 107, 'Ehime', 'EH', 1),
(1662, 107, 'Fukui', 'FK', 1),
(1663, 107, 'Fukuoka', 'FU', 1),
(1664, 107, 'Fukushima', 'FS', 1),
(1665, 107, 'Gifu', 'GI', 1),
(1666, 107, 'Gumma', 'GU', 1),
(1667, 107, 'Hiroshima', 'HI', 1),
(1668, 107, 'Hokkaido', 'HO', 1),
(1669, 107, 'Hyogo', 'HY', 1),
(1670, 107, 'Ibaraki', 'IB', 1),
(1671, 107, 'Ishikawa', 'IS', 1),
(1672, 107, 'Iwate', 'IW', 1),
(1673, 107, 'Kagawa', 'KA', 1),
(1674, 107, 'Kagoshima', 'KG', 1),
(1675, 107, 'Kanagawa', 'KN', 1),
(1676, 107, 'Kochi', 'KO', 1),
(1677, 107, 'Kumamoto', 'KU', 1),
(1678, 107, 'Kyoto', 'KY', 1),
(1679, 107, 'Mie', 'MI', 1),
(1680, 107, 'Miyagi', 'MY', 1),
(1681, 107, 'Miyazaki', 'MZ', 1),
(1682, 107, 'Nagano', 'NA', 1),
(1683, 107, 'Nagasaki', 'NG', 1),
(1684, 107, 'Nara', 'NR', 1),
(1685, 107, 'Niigata', 'NI', 1),
(1686, 107, 'Oita', 'OI', 1),
(1687, 107, 'Okayama', 'OK', 1),
(1688, 107, 'Okinawa', 'ON', 1),
(1689, 107, 'Osaka', 'OS', 1),
(1690, 107, 'Saga', 'SA', 1),
(1691, 107, 'Saitama', 'SI', 1),
(1692, 107, 'Shiga', 'SH', 1),
(1693, 107, 'Shimane', 'SM', 1),
(1694, 107, 'Shizuoka', 'SZ', 1),
(1695, 107, 'Tochigi', 'TO', 1),
(1696, 107, 'Tokushima', 'TS', 1),
(1697, 107, 'Tokyo', 'TK', 1),
(1698, 107, 'Tottori', 'TT', 1),
(1699, 107, 'Toyama', 'TY', 1),
(1700, 107, 'Wakayama', 'WA', 1),
(1701, 107, 'Yamagata', 'YA', 1),
(1702, 107, 'Yamaguchi', 'YM', 1),
(1703, 107, 'Yamanashi', 'YN', 1),
(1704, 108, '\'Amman', 'AM', 1),
(1705, 108, 'Ajlun', 'AJ', 1),
(1706, 108, 'Al \'Aqabah', 'AA', 1),
(1707, 108, 'Al Balqa\'', 'AB', 1),
(1708, 108, 'Al Karak', 'AK', 1),
(1709, 108, 'Al Mafraq', 'AL', 1),
(1710, 108, 'At Tafilah', 'AT', 1),
(1711, 108, 'Az Zarqa\'', 'AZ', 1),
(1712, 108, 'Irbid', 'IR', 1),
(1713, 108, 'Jarash', 'JA', 1),
(1714, 108, 'Ma\'an', 'MA', 1),
(1715, 108, 'Madaba', 'MD', 1),
(1716, 109, 'Almaty', 'AL', 1),
(1717, 109, 'Almaty City', 'AC', 1),
(1718, 109, 'Aqmola', 'AM', 1),
(1719, 109, 'Aqtobe', 'AQ', 1),
(1720, 109, 'Astana City', 'AS', 1),
(1721, 109, 'Atyrau', 'AT', 1),
(1722, 109, 'Batys Qazaqstan', 'BA', 1),
(1723, 109, 'Bayqongyr City', 'BY', 1),
(1724, 109, 'Mangghystau', 'MA', 1),
(1725, 109, 'Ongtustik Qazaqstan', 'ON', 1),
(1726, 109, 'Pavlodar', 'PA', 1),
(1727, 109, 'Qaraghandy', 'QA', 1),
(1728, 109, 'Qostanay', 'QO', 1),
(1729, 109, 'Qyzylorda', 'QY', 1),
(1730, 109, 'Shyghys Qazaqstan', 'SH', 1),
(1731, 109, 'Soltustik Qazaqstan', 'SO', 1),
(1732, 109, 'Zhambyl', 'ZH', 1),
(1733, 110, 'Central', 'CE', 1),
(1734, 110, 'Coast', 'CO', 1),
(1735, 110, 'Eastern', 'EA', 1),
(1736, 110, 'Nairobi Area', 'NA', 1),
(1737, 110, 'North Eastern', 'NE', 1),
(1738, 110, 'Nyanza', 'NY', 1),
(1739, 110, 'Rift Valley', 'RV', 1),
(1740, 110, 'Western', 'WE', 1),
(1741, 111, 'Abaiang', 'AG', 1),
(1742, 111, 'Abemama', 'AM', 1),
(1743, 111, 'Aranuka', 'AK', 1),
(1744, 111, 'Arorae', 'AO', 1),
(1745, 111, 'Banaba', 'BA', 1),
(1746, 111, 'Beru', 'BE', 1),
(1747, 111, 'Butaritari', 'bT', 1),
(1748, 111, 'Kanton', 'KA', 1),
(1749, 111, 'Kiritimati', 'KR', 1),
(1750, 111, 'Kuria', 'KU', 1),
(1751, 111, 'Maiana', 'MI', 1),
(1752, 111, 'Makin', 'MN', 1),
(1753, 111, 'Marakei', 'ME', 1),
(1754, 111, 'Nikunau', 'NI', 1),
(1755, 111, 'Nonouti', 'NO', 1),
(1756, 111, 'Onotoa', 'ON', 1),
(1757, 111, 'Tabiteuea', 'TT', 1),
(1758, 111, 'Tabuaeran', 'TR', 1),
(1759, 111, 'Tamana', 'TM', 1),
(1760, 111, 'Tarawa', 'TW', 1),
(1761, 111, 'Teraina', 'TE', 1),
(1762, 112, 'Chagang-do', 'CHA', 1),
(1763, 112, 'Hamgyong-bukto', 'HAB', 1),
(1764, 112, 'Hamgyong-namdo', 'HAN', 1),
(1765, 112, 'Hwanghae-bukto', 'HWB', 1),
(1766, 112, 'Hwanghae-namdo', 'HWN', 1),
(1767, 112, 'Kangwon-do', 'KAN', 1),
(1768, 112, 'P\'yongan-bukto', 'PYB', 1),
(1769, 112, 'P\'yongan-namdo', 'PYN', 1),
(1770, 112, 'Ryanggang-do (Yanggang-do)', 'YAN', 1),
(1771, 112, 'Rason Directly Governed City', 'NAJ', 1),
(1772, 112, 'P\'yongyang Special City', 'PYO', 1),
(1773, 113, 'Ch\'ungch\'ong-bukto', 'CO', 1),
(1774, 113, 'Ch\'ungch\'ong-namdo', 'CH', 1),
(1775, 113, 'Cheju-do', 'CD', 1),
(1776, 113, 'Cholla-bukto', 'CB', 1),
(1777, 113, 'Cholla-namdo', 'CN', 1),
(1778, 113, 'Inch\'on-gwangyoksi', 'IG', 1),
(1779, 113, 'Kangwon-do', 'KA', 1),
(1780, 113, 'Kwangju-gwangyoksi', 'KG', 1),
(1781, 113, 'Kyonggi-do', 'KD', 1),
(1782, 113, 'Kyongsang-bukto', 'KB', 1),
(1783, 113, 'Kyongsang-namdo', 'KN', 1),
(1784, 113, 'Pusan-gwangyoksi', 'PG', 1),
(1785, 113, 'Soul-t\'ukpyolsi', 'SO', 1),
(1786, 113, 'Taegu-gwangyoksi', 'TA', 1),
(1787, 113, 'Taejon-gwangyoksi', 'TG', 1),
(1788, 114, 'Al \'Asimah', 'AL', 1),
(1789, 114, 'Al Ahmadi', 'AA', 1),
(1790, 114, 'Al Farwaniyah', 'AF', 1),
(1791, 114, 'Al Jahra\'', 'AJ', 1),
(1792, 114, 'Hawalli', 'HA', 1),
(1793, 115, 'Bishkek', 'GB', 1),
(1794, 115, 'Batken', 'B', 1),
(1795, 115, 'Chu', 'C', 1),
(1796, 115, 'Jalal-Abad', 'J', 1),
(1797, 115, 'Naryn', 'N', 1),
(1798, 115, 'Osh', 'O', 1),
(1799, 115, 'Talas', 'T', 1),
(1800, 115, 'Ysyk-Kol', 'Y', 1),
(1801, 116, 'Vientiane', 'VT', 1),
(1802, 116, 'Attapu', 'AT', 1),
(1803, 116, 'Bokeo', 'BK', 1),
(1804, 116, 'Bolikhamxai', 'BL', 1),
(1805, 116, 'Champasak', 'CH', 1),
(1806, 116, 'Houaphan', 'HO', 1),
(1807, 116, 'Khammouan', 'KH', 1),
(1808, 116, 'Louang Namtha', 'LM', 1),
(1809, 116, 'Louangphabang', 'LP', 1),
(1810, 116, 'Oudomxai', 'OU', 1),
(1811, 116, 'Phongsali', 'PH', 1),
(1812, 116, 'Salavan', 'SL', 1),
(1813, 116, 'Savannakhet', 'SV', 1),
(1814, 116, 'Vientiane', 'VI', 1),
(1815, 116, 'Xaignabouli', 'XA', 1),
(1816, 116, 'Xekong', 'XE', 1),
(1817, 116, 'Xiangkhoang', 'XI', 1),
(1818, 116, 'Xaisomboun', 'XN', 1),
(1852, 119, 'Berea', 'BE', 1),
(1853, 119, 'Butha-Buthe', 'BB', 1),
(1854, 119, 'Leribe', 'LE', 1),
(1855, 119, 'Mafeteng', 'MF', 1),
(1856, 119, 'Maseru', 'MS', 1),
(1857, 119, 'Mohale\'s Hoek', 'MH', 1),
(1858, 119, 'Mokhotlong', 'MK', 1),
(1859, 119, 'Qacha\'s Nek', 'QN', 1),
(1860, 119, 'Quthing', 'QT', 1),
(1861, 119, 'Thaba-Tseka', 'TT', 1),
(1862, 120, 'Bomi', 'BI', 1),
(1863, 120, 'Bong', 'BG', 1),
(1864, 120, 'Grand Bassa', 'GB', 1),
(1865, 120, 'Grand Cape Mount', 'CM', 1),
(1866, 120, 'Grand Gedeh', 'GG', 1),
(1867, 120, 'Grand Kru', 'GK', 1),
(1868, 120, 'Lofa', 'LO', 1),
(1869, 120, 'Margibi', 'MG', 1),
(1870, 120, 'Maryland', 'ML', 1),
(1871, 120, 'Montserrado', 'MS', 1),
(1872, 120, 'Nimba', 'NB', 1),
(1873, 120, 'River Cess', 'RC', 1),
(1874, 120, 'Sinoe', 'SN', 1),
(1875, 121, 'Ajdabiya', 'AJ', 1),
(1876, 121, 'Al \'Aziziyah', 'AZ', 1),
(1877, 121, 'Al Fatih', 'FA', 1),
(1878, 121, 'Al Jabal al Akhdar', 'JA', 1),
(1879, 121, 'Al Jufrah', 'JU', 1),
(1880, 121, 'Al Khums', 'KH', 1),
(1881, 121, 'Al Kufrah', 'KU', 1),
(1882, 121, 'An Nuqat al Khams', 'NK', 1),
(1883, 121, 'Ash Shati\'', 'AS', 1),
(1884, 121, 'Awbari', 'AW', 1),
(1885, 121, 'Az Zawiyah', 'ZA', 1),
(1886, 121, 'Banghazi', 'BA', 1),
(1887, 121, 'Darnah', 'DA', 1),
(1888, 121, 'Ghadamis', 'GD', 1),
(1889, 121, 'Gharyan', 'GY', 1),
(1890, 121, 'Misratah', 'MI', 1),
(1891, 121, 'Murzuq', 'MZ', 1),
(1892, 121, 'Sabha', 'SB', 1),
(1893, 121, 'Sawfajjin', 'SW', 1),
(1894, 121, 'Surt', 'SU', 1),
(1895, 121, 'Tarabulus (Tripoli)', 'TL', 1),
(1896, 121, 'Tarhunah', 'TH', 1),
(1897, 121, 'Tubruq', 'TU', 1),
(1898, 121, 'Yafran', 'YA', 1),
(1899, 121, 'Zlitan', 'ZL', 1),
(1900, 122, 'Vaduz', 'V', 1),
(1901, 122, 'Schaan', 'A', 1),
(1902, 122, 'Balzers', 'B', 1),
(1903, 122, 'Triesen', 'N', 1),
(1904, 122, 'Eschen', 'E', 1),
(1905, 122, 'Mauren', 'M', 1),
(1906, 122, 'Triesenberg', 'T', 1),
(1907, 122, 'Ruggell', 'R', 1),
(1908, 122, 'Gamprin', 'G', 1),
(1909, 122, 'Schellenberg', 'L', 1),
(1910, 122, 'Planken', 'P', 1),
(1911, 123, 'Alytus', 'AL', 1),
(1912, 123, 'Kaunas', 'KA', 1),
(1913, 123, 'Klaipeda', 'KL', 1),
(1914, 123, 'Marijampole', 'MA', 1),
(1915, 123, 'Panevezys', 'PA', 1),
(1916, 123, 'Siauliai', 'SI', 1),
(1917, 123, 'Taurage', 'TA', 1),
(1918, 123, 'Telsiai', 'TE', 1),
(1919, 123, 'Utena', 'UT', 1),
(1920, 123, 'Vilnius', 'VI', 1),
(1921, 124, 'Diekirch', 'DD', 1),
(1922, 124, 'Clervaux', 'DC', 1),
(1923, 124, 'Redange', 'DR', 1),
(1924, 124, 'Vianden', 'DV', 1),
(1925, 124, 'Wiltz', 'DW', 1),
(1926, 124, 'Grevenmacher', 'GG', 1),
(1927, 124, 'Echternach', 'GE', 1),
(1928, 124, 'Remich', 'GR', 1),
(1929, 124, 'Luxembourg', 'LL', 1),
(1930, 124, 'Capellen', 'LC', 1),
(1931, 124, 'Esch-sur-Alzette', 'LE', 1),
(1932, 124, 'Mersch', 'LM', 1),
(1933, 125, 'Our Lady Fatima Parish', 'OLF', 1),
(1934, 125, 'St. Anthony Parish', 'ANT', 1),
(1935, 125, 'St. Lazarus Parish', 'LAZ', 1),
(1936, 125, 'Cathedral Parish', 'CAT', 1),
(1937, 125, 'St. Lawrence Parish', 'LAW', 1),
(1938, 127, 'Antananarivo', 'AN', 1),
(1939, 127, 'Antsiranana', 'AS', 1),
(1940, 127, 'Fianarantsoa', 'FN', 1),
(1941, 127, 'Mahajanga', 'MJ', 1),
(1942, 127, 'Toamasina', 'TM', 1),
(1943, 127, 'Toliara', 'TL', 1),
(1944, 128, 'Balaka', 'BLK', 1),
(1945, 128, 'Blantyre', 'BLT', 1),
(1946, 128, 'Chikwawa', 'CKW', 1),
(1947, 128, 'Chiradzulu', 'CRD', 1),
(1948, 128, 'Chitipa', 'CTP', 1),
(1949, 128, 'Dedza', 'DDZ', 1),
(1950, 128, 'Dowa', 'DWA', 1),
(1951, 128, 'Karonga', 'KRG', 1),
(1952, 128, 'Kasungu', 'KSG', 1),
(1953, 128, 'Likoma', 'LKM', 1),
(1954, 128, 'Lilongwe', 'LLG', 1),
(1955, 128, 'Machinga', 'MCG', 1),
(1956, 128, 'Mangochi', 'MGC', 1),
(1957, 128, 'Mchinji', 'MCH', 1),
(1958, 128, 'Mulanje', 'MLJ', 1),
(1959, 128, 'Mwanza', 'MWZ', 1),
(1960, 128, 'Mzimba', 'MZM', 1),
(1961, 128, 'Ntcheu', 'NTU', 1),
(1962, 128, 'Nkhata Bay', 'NKB', 1),
(1963, 128, 'Nkhotakota', 'NKH', 1),
(1964, 128, 'Nsanje', 'NSJ', 1),
(1965, 128, 'Ntchisi', 'NTI', 1),
(1966, 128, 'Phalombe', 'PHL', 1),
(1967, 128, 'Rumphi', 'RMP', 1),
(1968, 128, 'Salima', 'SLM', 1),
(1969, 128, 'Thyolo', 'THY', 1),
(1970, 128, 'Zomba', 'ZBA', 1),
(1971, 129, 'Johor', 'MY-01', 1),
(1972, 129, 'Kedah', 'MY-02', 1),
(1973, 129, 'Kelantan', 'MY-03', 1),
(1974, 129, 'Labuan', 'MY-15', 1),
(1975, 129, 'Melaka', 'MY-04', 1),
(1976, 129, 'Negeri Sembilan', 'MY-05', 1),
(1977, 129, 'Pahang', 'MY-06', 1),
(1978, 129, 'Perak', 'MY-08', 1),
(1979, 129, 'Perlis', 'MY-09', 1),
(1980, 129, 'Pulau Pinang', 'MY-07', 1),
(1981, 129, 'Sabah', 'MY-12', 1),
(1982, 129, 'Sarawak', 'MY-13', 1),
(1983, 129, 'Selangor', 'MY-10', 1),
(1984, 129, 'Terengganu', 'MY-11', 1),
(1985, 129, 'Kuala Lumpur', 'MY-14', 1),
(4035, 129, 'Putrajaya', 'MY-16', 1),
(1986, 130, 'Thiladhunmathi Uthuru', 'THU', 1),
(1987, 130, 'Thiladhunmathi Dhekunu', 'THD', 1),
(1988, 130, 'Miladhunmadulu Uthuru', 'MLU', 1),
(1989, 130, 'Miladhunmadulu Dhekunu', 'MLD', 1),
(1990, 130, 'Maalhosmadulu Uthuru', 'MAU', 1),
(1991, 130, 'Maalhosmadulu Dhekunu', 'MAD', 1),
(1992, 130, 'Faadhippolhu', 'FAA', 1),
(1993, 130, 'Male Atoll', 'MAA', 1),
(1994, 130, 'Ari Atoll Uthuru', 'AAU', 1),
(1995, 130, 'Ari Atoll Dheknu', 'AAD', 1),
(1996, 130, 'Felidhe Atoll', 'FEA', 1),
(1997, 130, 'Mulaku Atoll', 'MUA', 1),
(1998, 130, 'Nilandhe Atoll Uthuru', 'NAU', 1),
(1999, 130, 'Nilandhe Atoll Dhekunu', 'NAD', 1),
(2000, 130, 'Kolhumadulu', 'KLH', 1),
(2001, 130, 'Hadhdhunmathi', 'HDH', 1),
(2002, 130, 'Huvadhu Atoll Uthuru', 'HAU', 1),
(2003, 130, 'Huvadhu Atoll Dhekunu', 'HAD', 1),
(2004, 130, 'Fua Mulaku', 'FMU', 1),
(2005, 130, 'Addu', 'ADD', 1),
(2006, 131, 'Gao', 'GA', 1),
(2007, 131, 'Kayes', 'KY', 1),
(2008, 131, 'Kidal', 'KD', 1),
(2009, 131, 'Koulikoro', 'KL', 1),
(2010, 131, 'Mopti', 'MP', 1),
(2011, 131, 'Segou', 'SG', 1),
(2012, 131, 'Sikasso', 'SK', 1),
(2013, 131, 'Tombouctou', 'TB', 1),
(2014, 131, 'Bamako Capital District', 'CD', 1),
(2015, 132, 'Attard', 'ATT', 1),
(2016, 132, 'Balzan', 'BAL', 1),
(2017, 132, 'Birgu', 'BGU', 1),
(2018, 132, 'Birkirkara', 'BKK', 1),
(2019, 132, 'Birzebbuga', 'BRZ', 1),
(2020, 132, 'Bormla', 'BOR', 1),
(2021, 132, 'Dingli', 'DIN', 1),
(2022, 132, 'Fgura', 'FGU', 1),
(2023, 132, 'Floriana', 'FLO', 1),
(2024, 132, 'Gudja', 'GDJ', 1),
(2025, 132, 'Gzira', 'GZR', 1),
(2026, 132, 'Gargur', 'GRG', 1),
(2027, 132, 'Gaxaq', 'GXQ', 1),
(2028, 132, 'Hamrun', 'HMR', 1),
(2029, 132, 'Iklin', 'IKL', 1),
(2030, 132, 'Isla', 'ISL', 1),
(2031, 132, 'Kalkara', 'KLK', 1),
(2032, 132, 'Kirkop', 'KRK', 1),
(2033, 132, 'Lija', 'LIJ', 1),
(2034, 132, 'Luqa', 'LUQ', 1),
(2035, 132, 'Marsa', 'MRS', 1),
(2036, 132, 'Marsaskala', 'MKL', 1),
(2037, 132, 'Marsaxlokk', 'MXL', 1),
(2038, 132, 'Mdina', 'MDN', 1),
(2039, 132, 'Melliea', 'MEL', 1),
(2040, 132, 'Mgarr', 'MGR', 1),
(2041, 132, 'Mosta', 'MST', 1),
(2042, 132, 'Mqabba', 'MQA', 1),
(2043, 132, 'Msida', 'MSI', 1),
(2044, 132, 'Mtarfa', 'MTF', 1),
(2045, 132, 'Naxxar', 'NAX', 1),
(2046, 132, 'Paola', 'PAO', 1),
(2047, 132, 'Pembroke', 'PEM', 1),
(2048, 132, 'Pieta', 'PIE', 1),
(2049, 132, 'Qormi', 'QOR', 1),
(2050, 132, 'Qrendi', 'QRE', 1),
(2051, 132, 'Rabat', 'RAB', 1),
(2052, 132, 'Safi', 'SAF', 1),
(2053, 132, 'San Giljan', 'SGI', 1),
(2054, 132, 'Santa Lucija', 'SLU', 1),
(2055, 132, 'San Pawl il-Bahar', 'SPB', 1),
(2056, 132, 'San Gwann', 'SGW', 1),
(2057, 132, 'Santa Venera', 'SVE', 1),
(2058, 132, 'Siggiewi', 'SIG', 1),
(2059, 132, 'Sliema', 'SLM', 1),
(2060, 132, 'Swieqi', 'SWQ', 1),
(2061, 132, 'Ta Xbiex', 'TXB', 1),
(2062, 132, 'Tarxien', 'TRX', 1),
(2063, 132, 'Valletta', 'VLT', 1),
(2064, 132, 'Xgajra', 'XGJ', 1),
(2065, 132, 'Zabbar', 'ZBR', 1),
(2066, 132, 'Zebbug', 'ZBG', 1),
(2067, 132, 'Zejtun', 'ZJT', 1),
(2068, 132, 'Zurrieq', 'ZRQ', 1),
(2069, 132, 'Fontana', 'FNT', 1),
(2070, 132, 'Ghajnsielem', 'GHJ', 1),
(2071, 132, 'Gharb', 'GHR', 1),
(2072, 132, 'Ghasri', 'GHS', 1),
(2073, 132, 'Kercem', 'KRC', 1),
(2074, 132, 'Munxar', 'MUN', 1),
(2075, 132, 'Nadur', 'NAD', 1),
(2076, 132, 'Qala', 'QAL', 1),
(2077, 132, 'Victoria', 'VIC', 1),
(2078, 132, 'San Lawrenz', 'SLA', 1),
(2079, 132, 'Sannat', 'SNT', 1),
(2080, 132, 'Xagra', 'ZAG', 1),
(2081, 132, 'Xewkija', 'XEW', 1),
(2082, 132, 'Zebbug', 'ZEB', 1),
(2083, 133, 'Ailinginae', 'ALG', 1),
(2084, 133, 'Ailinglaplap', 'ALL', 1),
(2085, 133, 'Ailuk', 'ALK', 1),
(2086, 133, 'Arno', 'ARN', 1),
(2087, 133, 'Aur', 'AUR', 1),
(2088, 133, 'Bikar', 'BKR', 1),
(2089, 133, 'Bikini', 'BKN', 1),
(2090, 133, 'Bokak', 'BKK', 1),
(2091, 133, 'Ebon', 'EBN', 1),
(2092, 133, 'Enewetak', 'ENT', 1),
(2093, 133, 'Erikub', 'EKB', 1),
(2094, 133, 'Jabat', 'JBT', 1),
(2095, 133, 'Jaluit', 'JLT', 1),
(2096, 133, 'Jemo', 'JEM', 1),
(2097, 133, 'Kili', 'KIL', 1),
(2098, 133, 'Kwajalein', 'KWJ', 1),
(2099, 133, 'Lae', 'LAE', 1),
(2100, 133, 'Lib', 'LIB', 1),
(2101, 133, 'Likiep', 'LKP', 1),
(2102, 133, 'Majuro', 'MJR', 1),
(2103, 133, 'Maloelap', 'MLP', 1),
(2104, 133, 'Mejit', 'MJT', 1),
(2105, 133, 'Mili', 'MIL', 1),
(2106, 133, 'Namorik', 'NMK', 1),
(2107, 133, 'Namu', 'NAM', 1),
(2108, 133, 'Rongelap', 'RGL', 1),
(2109, 133, 'Rongrik', 'RGK', 1),
(2110, 133, 'Toke', 'TOK', 1),
(2111, 133, 'Ujae', 'UJA', 1),
(2112, 133, 'Ujelang', 'UJL', 1),
(2113, 133, 'Utirik', 'UTK', 1),
(2114, 133, 'Wotho', 'WTH', 1),
(2115, 133, 'Wotje', 'WTJ', 1),
(2116, 135, 'Adrar', 'AD', 1),
(2117, 135, 'Assaba', 'AS', 1),
(2118, 135, 'Brakna', 'BR', 1),
(2119, 135, 'Dakhlet Nouadhibou', 'DN', 1),
(2120, 135, 'Gorgol', 'GO', 1),
(2121, 135, 'Guidimaka', 'GM', 1),
(2122, 135, 'Hodh Ech Chargui', 'HC', 1),
(2123, 135, 'Hodh El Gharbi', 'HG', 1),
(2124, 135, 'Inchiri', 'IN', 1),
(2125, 135, 'Tagant', 'TA', 1),
(2126, 135, 'Tiris Zemmour', 'TZ', 1),
(2127, 135, 'Trarza', 'TR', 1),
(2128, 135, 'Nouakchott', 'NO', 1),
(2129, 136, 'Beau Bassin-Rose Hill', 'BR', 1),
(2130, 136, 'Curepipe', 'CU', 1),
(2131, 136, 'Port Louis', 'PU', 1),
(2132, 136, 'Quatre Bornes', 'QB', 1),
(2133, 136, 'Vacoas-Phoenix', 'VP', 1),
(2134, 136, 'Agalega Islands', 'AG', 1),
(2135, 136, 'Cargados Carajos Shoals (Saint Brandon Islands)', 'CC', 1),
(2136, 136, 'Rodrigues', 'RO', 1),
(2137, 136, 'Black River', 'BL', 1),
(2138, 136, 'Flacq', 'FL', 1),
(2139, 136, 'Grand Port', 'GP', 1),
(2140, 136, 'Moka', 'MO', 1),
(2141, 136, 'Pamplemousses', 'PA', 1),
(2142, 136, 'Plaines Wilhems', 'PW', 1),
(2143, 136, 'Port Louis', 'PL', 1),
(2144, 136, 'Riviere du Rempart', 'RR', 1),
(2145, 136, 'Savanne', 'SA', 1),
(2146, 138, 'Baja California Norte', 'BN', 1),
(2147, 138, 'Baja California Sur', 'BS', 1),
(2148, 138, 'Campeche', 'CA', 1),
(2149, 138, 'Chiapas', 'CI', 1),
(2150, 138, 'Chihuahua', 'CH', 1),
(2151, 138, 'Coahuila de Zaragoza', 'CZ', 1),
(2152, 138, 'Colima', 'CL', 1),
(2153, 138, 'Distrito Federal', 'DF', 1),
(2154, 138, 'Durango', 'DU', 1),
(2155, 138, 'Guanajuato', 'GA', 1),
(2156, 138, 'Guerrero', 'GE', 1),
(2157, 138, 'Hidalgo', 'HI', 1),
(2158, 138, 'Jalisco', 'JA', 1),
(2159, 138, 'Mexico', 'ME', 1),
(2160, 138, 'Michoacan de Ocampo', 'MI', 1),
(2161, 138, 'Morelos', 'MO', 1),
(2162, 138, 'Nayarit', 'NA', 1),
(2163, 138, 'Nuevo Leon', 'NL', 1),
(2164, 138, 'Oaxaca', 'OA', 1),
(2165, 138, 'Puebla', 'PU', 1),
(2166, 138, 'Queretaro de Arteaga', 'QA', 1),
(2167, 138, 'Quintana Roo', 'QR', 1),
(2168, 138, 'San Luis Potosi', 'SA', 1),
(2169, 138, 'Sinaloa', 'SI', 1),
(2170, 138, 'Sonora', 'SO', 1),
(2171, 138, 'Tabasco', 'TB', 1),
(2172, 138, 'Tamaulipas', 'TM', 1),
(2173, 138, 'Tlaxcala', 'TL', 1),
(2174, 138, 'Veracruz-Llave', 'VE', 1),
(2175, 138, 'Yucatan', 'YU', 1),
(2176, 138, 'Zacatecas', 'ZA', 1),
(2177, 139, 'Chuuk', 'C', 1),
(2178, 139, 'Kosrae', 'K', 1),
(2179, 139, 'Pohnpei', 'P', 1),
(2180, 139, 'Yap', 'Y', 1),
(2181, 140, 'Gagauzia', 'GA', 1),
(2182, 140, 'Chisinau', 'CU', 1),
(2183, 140, 'Balti', 'BA', 1),
(2184, 140, 'Cahul', 'CA', 1),
(2185, 140, 'Edinet', 'ED', 1),
(2186, 140, 'Lapusna', 'LA', 1),
(2187, 140, 'Orhei', 'OR', 1),
(2188, 140, 'Soroca', 'SO', 1),
(2189, 140, 'Tighina', 'TI', 1),
(2190, 140, 'Ungheni', 'UN', 1),
(2191, 140, 'St‚nga Nistrului', 'SN', 1),
(2192, 141, 'Fontvieille', 'FV', 1),
(2193, 141, 'La Condamine', 'LC', 1),
(2194, 141, 'Monaco-Ville', 'MV', 1),
(2195, 141, 'Monte-Carlo', 'MC', 1),
(2196, 142, 'Ulanbaatar', '1', 1),
(2197, 142, 'Orhon', '035', 1),
(2198, 142, 'Darhan uul', '037', 1),
(2199, 142, 'Hentiy', '039', 1),
(2200, 142, 'Hovsgol', '041', 1),
(2201, 142, 'Hovd', '043', 1),
(2202, 142, 'Uvs', '046', 1),
(2203, 142, 'Tov', '047', 1),
(2204, 142, 'Selenge', '049', 1),
(2205, 142, 'Suhbaatar', '051', 1),
(2206, 142, 'Omnogovi', '053', 1),
(2207, 142, 'Ovorhangay', '055', 1),
(2208, 142, 'Dzavhan', '057', 1),
(2209, 142, 'DundgovL', '059', 1),
(2210, 142, 'Dornod', '061', 1),
(2211, 142, 'Dornogov', '063', 1),
(2212, 142, 'Govi-Sumber', '064', 1),
(2213, 142, 'Govi-Altay', '065', 1),
(2214, 142, 'Bulgan', '067', 1),
(2215, 142, 'Bayanhongor', '069', 1),
(2216, 142, 'Bayan-Olgiy', '071', 1),
(2217, 142, 'Arhangay', '073', 1),
(2218, 143, 'Saint Anthony', 'A', 1),
(2219, 143, 'Saint Georges', 'G', 1),
(2220, 143, 'Saint Peter', 'P', 1),
(2221, 144, 'Agadir', 'AGD', 1),
(2222, 144, 'Al Hoceima', 'HOC', 1),
(2223, 144, 'Azilal', 'AZI', 1),
(2224, 144, 'Beni Mellal', 'BME', 1),
(2225, 144, 'Ben Slimane', 'BSL', 1),
(2226, 144, 'Boulemane', 'BLM', 1),
(2227, 144, 'Casablanca', 'CBL', 1),
(2228, 144, 'Chaouen', 'CHA', 1),
(2229, 144, 'El Jadida', 'EJA', 1),
(2230, 144, 'El Kelaa des Sraghna', 'EKS', 1),
(2231, 144, 'Er Rachidia', 'ERA', 1),
(2232, 144, 'Essaouira', 'ESS', 1),
(2233, 144, 'Fes', 'FES', 1),
(2234, 144, 'Figuig', 'FIG', 1),
(2235, 144, 'Guelmim', 'GLM', 1),
(2236, 144, 'Ifrane', 'IFR', 1),
(2237, 144, 'Kenitra', 'KEN', 1),
(2238, 144, 'Khemisset', 'KHM', 1),
(2239, 144, 'Khenifra', 'KHN', 1),
(2240, 144, 'Khouribga', 'KHO', 1),
(2241, 144, 'Laayoune', 'LYN', 1),
(2242, 144, 'Larache', 'LAR', 1),
(2243, 144, 'Marrakech', 'MRK', 1),
(2244, 144, 'Meknes', 'MKN', 1),
(2245, 144, 'Nador', 'NAD', 1),
(2246, 144, 'Ouarzazate', 'ORZ', 1),
(2247, 144, 'Oujda', 'OUJ', 1),
(2248, 144, 'Rabat-Sale', 'RSA', 1),
(2249, 144, 'Safi', 'SAF', 1),
(2250, 144, 'Settat', 'SET', 1),
(2251, 144, 'Sidi Kacem', 'SKA', 1),
(2252, 144, 'Tangier', 'TGR', 1),
(2253, 144, 'Tan-Tan', 'TAN', 1),
(2254, 144, 'Taounate', 'TAO', 1),
(2255, 144, 'Taroudannt', 'TRD', 1),
(2256, 144, 'Tata', 'TAT', 1),
(2257, 144, 'Taza', 'TAZ', 1),
(2258, 144, 'Tetouan', 'TET', 1),
(2259, 144, 'Tiznit', 'TIZ', 1),
(2260, 144, 'Ad Dakhla', 'ADK', 1),
(2261, 144, 'Boujdour', 'BJD', 1),
(2262, 144, 'Es Smara', 'ESM', 1),
(2263, 145, 'Cabo Delgado', 'CD', 1),
(2264, 145, 'Gaza', 'GZ', 1),
(2265, 145, 'Inhambane', 'IN', 1),
(2266, 145, 'Manica', 'MN', 1),
(2267, 145, 'Maputo (city)', 'MC', 1),
(2268, 145, 'Maputo', 'MP', 1),
(2269, 145, 'Nampula', 'NA', 1),
(2270, 145, 'Niassa', 'NI', 1),
(2271, 145, 'Sofala', 'SO', 1),
(2272, 145, 'Tete', 'TE', 1),
(2273, 145, 'Zambezia', 'ZA', 1),
(2274, 146, 'Ayeyarwady', 'AY', 1),
(2275, 146, 'Bago', 'BG', 1),
(2276, 146, 'Magway', 'MG', 1),
(2277, 146, 'Mandalay', 'MD', 1),
(2278, 146, 'Sagaing', 'SG', 1),
(2279, 146, 'Tanintharyi', 'TN', 1),
(2280, 146, 'Yangon', 'YG', 1),
(2281, 146, 'Chin State', 'CH', 1),
(2282, 146, 'Kachin State', 'KC', 1),
(2283, 146, 'Kayah State', 'KH', 1),
(2284, 146, 'Kayin State', 'KN', 1),
(2285, 146, 'Mon State', 'MN', 1),
(2286, 146, 'Rakhine State', 'RK', 1),
(2287, 146, 'Shan State', 'SH', 1),
(2288, 147, 'Caprivi', 'CA', 1),
(2289, 147, 'Erongo', 'ER', 1),
(2290, 147, 'Hardap', 'HA', 1),
(2291, 147, 'Karas', 'KR', 1),
(2292, 147, 'Kavango', 'KV', 1),
(2293, 147, 'Khomas', 'KH', 1),
(2294, 147, 'Kunene', 'KU', 1),
(2295, 147, 'Ohangwena', 'OW', 1),
(2296, 147, 'Omaheke', 'OK', 1),
(2297, 147, 'Omusati', 'OT', 1),
(2298, 147, 'Oshana', 'ON', 1),
(2299, 147, 'Oshikoto', 'OO', 1),
(2300, 147, 'Otjozondjupa', 'OJ', 1),
(2301, 148, 'Aiwo', 'AO', 1),
(2302, 148, 'Anabar', 'AA', 1),
(2303, 148, 'Anetan', 'AT', 1),
(2304, 148, 'Anibare', 'AI', 1),
(2305, 148, 'Baiti', 'BA', 1),
(2306, 148, 'Boe', 'BO', 1),
(2307, 148, 'Buada', 'BU', 1),
(2308, 148, 'Denigomodu', 'DE', 1),
(2309, 148, 'Ewa', 'EW', 1),
(2310, 148, 'Ijuw', 'IJ', 1),
(2311, 148, 'Meneng', 'ME', 1),
(2312, 148, 'Nibok', 'NI', 1),
(2313, 148, 'Uaboe', 'UA', 1),
(2314, 148, 'Yaren', 'YA', 1),
(2315, 149, 'Bagmati', 'BA', 1),
(2316, 149, 'Bheri', 'BH', 1),
(2317, 149, 'Dhawalagiri', 'DH', 1),
(2318, 149, 'Gandaki', 'GA', 1),
(2319, 149, 'Janakpur', 'JA', 1),
(2320, 149, 'Karnali', 'KA', 1),
(2321, 149, 'Kosi', 'KO', 1),
(2322, 149, 'Lumbini', 'LU', 1),
(2323, 149, 'Mahakali', 'MA', 1),
(2324, 149, 'Mechi', 'ME', 1),
(2325, 149, 'Narayani', 'NA', 1),
(2326, 149, 'Rapti', 'RA', 1),
(2327, 149, 'Sagarmatha', 'SA', 1),
(2328, 149, 'Seti', 'SE', 1),
(2329, 150, 'Drenthe', 'DR', 1),
(2330, 150, 'Flevoland', 'FL', 1),
(2331, 150, 'Friesland', 'FR', 1),
(2332, 150, 'Gelderland', 'GE', 1),
(2333, 150, 'Groningen', 'GR', 1),
(2334, 150, 'Limburg', 'LI', 1),
(2335, 150, 'Noord Brabant', 'NB', 1),
(2336, 150, 'Noord Holland', 'NH', 1),
(2337, 150, 'Overijssel', 'OV', 1),
(2338, 150, 'Utrecht', 'UT', 1),
(2339, 150, 'Zeeland', 'ZE', 1),
(2340, 150, 'Zuid Holland', 'ZH', 1),
(2341, 152, 'Iles Loyaute', 'L', 1),
(2342, 152, 'Nord', 'N', 1),
(2343, 152, 'Sud', 'S', 1),
(2344, 153, 'Auckland', 'AUK', 1),
(2345, 153, 'Bay of Plenty', 'BOP', 1),
(2346, 153, 'Canterbury', 'CAN', 1),
(2347, 153, 'Coromandel', 'COR', 1),
(2348, 153, 'Gisborne', 'GIS', 1),
(2349, 153, 'Fiordland', 'FIO', 1),
(2350, 153, 'Hawke\'s Bay', 'HKB', 1),
(2351, 153, 'Marlborough', 'MBH', 1),
(2352, 153, 'Manawatu-Wanganui', 'MWT', 1),
(2353, 153, 'Mt Cook-Mackenzie', 'MCM', 1),
(2354, 153, 'Nelson', 'NSN', 1),
(2355, 153, 'Northland', 'NTL', 1),
(2356, 153, 'Otago', 'OTA', 1),
(2357, 153, 'Southland', 'STL', 1),
(2358, 153, 'Taranaki', 'TKI', 1),
(2359, 153, 'Wellington', 'WGN', 1),
(2360, 153, 'Waikato', 'WKO', 1),
(2361, 153, 'Wairarapa', 'WAI', 1),
(2362, 153, 'West Coast', 'WTC', 1),
(2363, 154, 'Atlantico Norte', 'AN', 1),
(2364, 154, 'Atlantico Sur', 'AS', 1),
(2365, 154, 'Boaco', 'BO', 1),
(2366, 154, 'Carazo', 'CA', 1),
(2367, 154, 'Chinandega', 'CI', 1),
(2368, 154, 'Chontales', 'CO', 1),
(2369, 154, 'Esteli', 'ES', 1),
(2370, 154, 'Granada', 'GR', 1),
(2371, 154, 'Jinotega', 'JI', 1),
(2372, 154, 'Leon', 'LE', 1),
(2373, 154, 'Madriz', 'MD', 1),
(2374, 154, 'Managua', 'MN', 1),
(2375, 154, 'Masaya', 'MS', 1),
(2376, 154, 'Matagalpa', 'MT', 1),
(2377, 154, 'Nuevo Segovia', 'NS', 1),
(2378, 154, 'Rio San Juan', 'RS', 1),
(2379, 154, 'Rivas', 'RI', 1),
(2380, 155, 'Agadez', 'AG', 1),
(2381, 155, 'Diffa', 'DF', 1),
(2382, 155, 'Dosso', 'DS', 1),
(2383, 155, 'Maradi', 'MA', 1),
(2384, 155, 'Niamey', 'NM', 1),
(2385, 155, 'Tahoua', 'TH', 1),
(2386, 155, 'Tillaberi', 'TL', 1),
(2387, 155, 'Zinder', 'ZD', 1),
(2388, 156, 'Abia', 'AB', 1),
(2389, 156, 'Abuja Federal Capital Territory', 'CT', 1),
(2390, 156, 'Adamawa', 'AD', 1),
(2391, 156, 'Akwa Ibom', 'AK', 1),
(2392, 156, 'Anambra', 'AN', 1),
(2393, 156, 'Bauchi', 'BC', 1),
(2394, 156, 'Bayelsa', 'BY', 1),
(2395, 156, 'Benue', 'BN', 1),
(2396, 156, 'Borno', 'BO', 1),
(2397, 156, 'Cross River', 'CR', 1),
(2398, 156, 'Delta', 'DE', 1),
(2399, 156, 'Ebonyi', 'EB', 1),
(2400, 156, 'Edo', 'ED', 1),
(2401, 156, 'Ekiti', 'EK', 1),
(2402, 156, 'Enugu', 'EN', 1),
(2403, 156, 'Gombe', 'GO', 1),
(2404, 156, 'Imo', 'IM', 1),
(2405, 156, 'Jigawa', 'JI', 1),
(2406, 156, 'Kaduna', 'KD', 1),
(2407, 156, 'Kano', 'KN', 1),
(2408, 156, 'Katsina', 'KT', 1),
(2409, 156, 'Kebbi', 'KE', 1),
(2410, 156, 'Kogi', 'KO', 1),
(2411, 156, 'Kwara', 'KW', 1),
(2412, 156, 'Lagos', 'LA', 1),
(2413, 156, 'Nassarawa', 'NA', 1),
(2414, 156, 'Niger', 'NI', 1),
(2415, 156, 'Ogun', 'OG', 1),
(2416, 156, 'Ondo', 'ONG', 1),
(2417, 156, 'Osun', 'OS', 1),
(2418, 156, 'Oyo', 'OY', 1),
(2419, 156, 'Plateau', 'PL', 1),
(2420, 156, 'Rivers', 'RI', 1),
(2421, 156, 'Sokoto', 'SO', 1),
(2422, 156, 'Taraba', 'TA', 1),
(2423, 156, 'Yobe', 'YO', 1),
(2424, 156, 'Zamfara', 'ZA', 1),
(2425, 159, 'Northern Islands', 'N', 1),
(2426, 159, 'Rota', 'R', 1),
(2427, 159, 'Saipan', 'S', 1),
(2428, 159, 'Tinian', 'T', 1),
(2429, 160, 'Akershus', 'AK', 1),
(2430, 160, 'Aust-Agder', 'AA', 1),
(2431, 160, 'Buskerud', 'BU', 1),
(2432, 160, 'Finnmark', 'FM', 1),
(2433, 160, 'Hedmark', 'HM', 1),
(2434, 160, 'Hordaland', 'HL', 1),
(2435, 160, 'More og Romdal', 'MR', 1),
(2436, 160, 'Nord-Trondelag', 'NT', 1),
(2437, 160, 'Nordland', 'NL', 1),
(2438, 160, 'Ostfold', 'OF', 1),
(2439, 160, 'Oppland', 'OP', 1),
(2440, 160, 'Oslo', 'OL', 1),
(2441, 160, 'Rogaland', 'RL', 1),
(2442, 160, 'Sor-Trondelag', 'ST', 1),
(2443, 160, 'Sogn og Fjordane', 'SJ', 1),
(2444, 160, 'Svalbard', 'SV', 1),
(2445, 160, 'Telemark', 'TM', 1),
(2446, 160, 'Troms', 'TR', 1),
(2447, 160, 'Vest-Agder', 'VA', 1),
(2448, 160, 'Vestfold', 'VF', 1),
(2449, 161, 'Ad Dakhiliyah', 'DA', 1),
(2450, 161, 'Al Batinah', 'BA', 1),
(2451, 161, 'Al Wusta', 'WU', 1),
(2452, 161, 'Ash Sharqiyah', 'SH', 1),
(2453, 161, 'Az Zahirah', 'ZA', 1),
(2454, 161, 'Masqat', 'MA', 1),
(2455, 161, 'Musandam', 'MU', 1),
(2456, 161, 'Zufar', 'ZU', 1),
(2457, 162, 'Balochistan', 'B', 1),
(2458, 162, 'Federally Administered Tribal Areas', 'T', 1),
(2459, 162, 'Islamabad Capital Territory', 'I', 1),
(2460, 162, 'North-West Frontier', 'N', 1),
(2461, 162, 'Punjab', 'P', 1),
(2462, 162, 'Sindh', 'S', 1),
(2463, 163, 'Aimeliik', 'AM', 1),
(2464, 163, 'Airai', 'AR', 1),
(2465, 163, 'Angaur', 'AN', 1),
(2466, 163, 'Hatohobei', 'HA', 1),
(2467, 163, 'Kayangel', 'KA', 1),
(2468, 163, 'Koror', 'KO', 1),
(2469, 163, 'Melekeok', 'ME', 1),
(2470, 163, 'Ngaraard', 'NA', 1),
(2471, 163, 'Ngarchelong', 'NG', 1),
(2472, 163, 'Ngardmau', 'ND', 1),
(2473, 163, 'Ngatpang', 'NT', 1),
(2474, 163, 'Ngchesar', 'NC', 1),
(2475, 163, 'Ngeremlengui', 'NR', 1),
(2476, 163, 'Ngiwal', 'NW', 1),
(2477, 163, 'Peleliu', 'PE', 1),
(2478, 163, 'Sonsorol', 'SO', 1),
(2479, 164, 'Bocas del Toro', 'BT', 1),
(2480, 164, 'Chiriqui', 'CH', 1),
(2481, 164, 'Cocle', 'CC', 1),
(2482, 164, 'Colon', 'CL', 1),
(2483, 164, 'Darien', 'DA', 1),
(2484, 164, 'Herrera', 'HE', 1),
(2485, 164, 'Los Santos', 'LS', 1),
(2486, 164, 'Panama', 'PA', 1),
(2487, 164, 'San Blas', 'SB', 1),
(2488, 164, 'Veraguas', 'VG', 1),
(2489, 165, 'Bougainville', 'BV', 1),
(2490, 165, 'Central', 'CE', 1),
(2491, 165, 'Chimbu', 'CH', 1),
(2492, 165, 'Eastern Highlands', 'EH', 1),
(2493, 165, 'East New Britain', 'EB', 1),
(2494, 165, 'East Sepik', 'ES', 1),
(2495, 165, 'Enga', 'EN', 1),
(2496, 165, 'Gulf', 'GU', 1),
(2497, 165, 'Madang', 'MD', 1),
(2498, 165, 'Manus', 'MN', 1),
(2499, 165, 'Milne Bay', 'MB', 1),
(2500, 165, 'Morobe', 'MR', 1),
(2501, 165, 'National Capital', 'NC', 1),
(2502, 165, 'New Ireland', 'NI', 1),
(2503, 165, 'Northern', 'NO', 1),
(2504, 165, 'Sandaun', 'SA', 1),
(2505, 165, 'Southern Highlands', 'SH', 1),
(2506, 165, 'Western', 'WE', 1),
(2507, 165, 'Western Highlands', 'WH', 1),
(2508, 165, 'West New Britain', 'WB', 1),
(2509, 166, 'Alto Paraguay', 'AG', 1),
(2510, 166, 'Alto Parana', 'AN', 1),
(2511, 166, 'Amambay', 'AM', 1),
(2512, 166, 'Asuncion', 'AS', 1),
(2513, 166, 'Boqueron', 'BO', 1),
(2514, 166, 'Caaguazu', 'CG', 1),
(2515, 166, 'Caazapa', 'CZ', 1),
(2516, 166, 'Canindeyu', 'CN', 1),
(2517, 166, 'Central', 'CE', 1),
(2518, 166, 'Concepcion', 'CC', 1),
(2519, 166, 'Cordillera', 'CD', 1),
(2520, 166, 'Guaira', 'GU', 1),
(2521, 166, 'Itapua', 'IT', 1),
(2522, 166, 'Misiones', 'MI', 1),
(2523, 166, 'Neembucu', 'NE', 1),
(2524, 166, 'Paraguari', 'PA', 1),
(2525, 166, 'Presidente Hayes', 'PH', 1),
(2526, 166, 'San Pedro', 'SP', 1),
(2527, 167, 'Amazonas', 'AM', 1),
(2528, 167, 'Ancash', 'AN', 1),
(2529, 167, 'Apurimac', 'AP', 1),
(2530, 167, 'Arequipa', 'AR', 1),
(2531, 167, 'Ayacucho', 'AY', 1),
(2532, 167, 'Cajamarca', 'CJ', 1),
(2533, 167, 'Callao', 'CL', 1),
(2534, 167, 'Cusco', 'CU', 1),
(2535, 167, 'Huancavelica', 'HV', 1),
(2536, 167, 'Huanuco', 'HO', 1),
(2537, 167, 'Ica', 'IC', 1),
(2538, 167, 'Junin', 'JU', 1),
(2539, 167, 'La Libertad', 'LD', 1),
(2540, 167, 'Lambayeque', 'LY', 1),
(2541, 167, 'Lima', 'LI', 1),
(2542, 167, 'Loreto', 'LO', 1),
(2543, 167, 'Madre de Dios', 'MD', 1),
(2544, 167, 'Moquegua', 'MO', 1),
(2545, 167, 'Pasco', 'PA', 1),
(2546, 167, 'Piura', 'PI', 1),
(2547, 167, 'Puno', 'PU', 1),
(2548, 167, 'San Martin', 'SM', 1),
(2549, 167, 'Tacna', 'TA', 1),
(2550, 167, 'Tumbes', 'TU', 1),
(2551, 167, 'Ucayali', 'UC', 1),
(2552, 168, 'Abra', 'ABR', 1),
(2553, 168, 'Agusan del Norte', 'ANO', 1),
(2554, 168, 'Agusan del Sur', 'ASU', 1),
(2555, 168, 'Aklan', 'AKL', 1),
(2556, 168, 'Albay', 'ALB', 1),
(2557, 168, 'Antique', 'ANT', 1),
(2558, 168, 'Apayao', 'APY', 1),
(2559, 168, 'Aurora', 'AUR', 1),
(2560, 168, 'Basilan', 'BAS', 1),
(2561, 168, 'Bataan', 'BTA', 1),
(2562, 168, 'Batanes', 'BTE', 1),
(2563, 168, 'Batangas', 'BTG', 1),
(2564, 168, 'Biliran', 'BLR', 1),
(2565, 168, 'Benguet', 'BEN', 1),
(2566, 168, 'Bohol', 'BOL', 1),
(2567, 168, 'Bukidnon', 'BUK', 1),
(2568, 168, 'Bulacan', 'BUL', 1),
(2569, 168, 'Cagayan', 'CAG', 1),
(2570, 168, 'Camarines Norte', 'CNO', 1),
(2571, 168, 'Camarines Sur', 'CSU', 1),
(2572, 168, 'Camiguin', 'CAM', 1),
(2573, 168, 'Capiz', 'CAP', 1),
(2574, 168, 'Catanduanes', 'CAT', 1),
(2575, 168, 'Cavite', 'CAV', 1),
(2576, 168, 'Cebu', 'CEB', 1),
(2577, 168, 'Compostela', 'CMP', 1),
(2578, 168, 'Davao del Norte', 'DNO', 1),
(2579, 168, 'Davao del Sur', 'DSU', 1),
(2580, 168, 'Davao Oriental', 'DOR', 1),
(2581, 168, 'Eastern Samar', 'ESA', 1),
(2582, 168, 'Guimaras', 'GUI', 1),
(2583, 168, 'Ifugao', 'IFU', 1),
(2584, 168, 'Ilocos Norte', 'INO', 1),
(2585, 168, 'Ilocos Sur', 'ISU', 1),
(2586, 168, 'Iloilo', 'ILO', 1),
(2587, 168, 'Isabela', 'ISA', 1),
(2588, 168, 'Kalinga', 'KAL', 1),
(2589, 168, 'Laguna', 'LAG', 1),
(2590, 168, 'Lanao del Norte', 'LNO', 1),
(2591, 168, 'Lanao del Sur', 'LSU', 1),
(2592, 168, 'La Union', 'UNI', 1),
(2593, 168, 'Leyte', 'LEY', 1),
(2594, 168, 'Maguindanao', 'MAG', 1),
(2595, 168, 'Marinduque', 'MRN', 1),
(2596, 168, 'Masbate', 'MSB', 1),
(2597, 168, 'Mindoro Occidental', 'MIC', 1),
(2598, 168, 'Mindoro Oriental', 'MIR', 1),
(2599, 168, 'Misamis Occidental', 'MSC', 1),
(2600, 168, 'Misamis Oriental', 'MOR', 1),
(2601, 168, 'Mountain', 'MOP', 1),
(2602, 168, 'Negros Occidental', 'NOC', 1),
(2603, 168, 'Negros Oriental', 'NOR', 1),
(2604, 168, 'North Cotabato', 'NCT', 1),
(2605, 168, 'Northern Samar', 'NSM', 1),
(2606, 168, 'Nueva Ecija', 'NEC', 1),
(2607, 168, 'Nueva Vizcaya', 'NVZ', 1),
(2608, 168, 'Palawan', 'PLW', 1),
(2609, 168, 'Pampanga', 'PMP', 1),
(2610, 168, 'Pangasinan', 'PNG', 1),
(2611, 168, 'Quezon', 'QZN', 1),
(2612, 168, 'Quirino', 'QRN', 1),
(2613, 168, 'Rizal', 'RIZ', 1),
(2614, 168, 'Romblon', 'ROM', 1),
(2615, 168, 'Samar', 'SMR', 1),
(2616, 168, 'Sarangani', 'SRG', 1),
(2617, 168, 'Siquijor', 'SQJ', 1),
(2618, 168, 'Sorsogon', 'SRS', 1),
(2619, 168, 'South Cotabato', 'SCO', 1),
(2620, 168, 'Southern Leyte', 'SLE', 1),
(2621, 168, 'Sultan Kudarat', 'SKU', 1),
(2622, 168, 'Sulu', 'SLU', 1),
(2623, 168, 'Surigao del Norte', 'SNO', 1),
(2624, 168, 'Surigao del Sur', 'SSU', 1),
(2625, 168, 'Tarlac', 'TAR', 1),
(2626, 168, 'Tawi-Tawi', 'TAW', 1),
(2627, 168, 'Zambales', 'ZBL', 1),
(2628, 168, 'Zamboanga del Norte', 'ZNO', 1),
(2629, 168, 'Zamboanga del Sur', 'ZSU', 1),
(2630, 168, 'Zamboanga Sibugay', 'ZSI', 1),
(2631, 170, 'Dolnoslaskie', 'DO', 1),
(2632, 170, 'Kujawsko-Pomorskie', 'KP', 1),
(2633, 170, 'Lodzkie', 'LO', 1),
(2634, 170, 'Lubelskie', 'LL', 1),
(2635, 170, 'Lubuskie', 'LU', 1),
(2636, 170, 'Malopolskie', 'ML', 1),
(2637, 170, 'Mazowieckie', 'MZ', 1),
(2638, 170, 'Opolskie', 'OP', 1),
(2639, 170, 'Podkarpackie', 'PP', 1),
(2640, 170, 'Podlaskie', 'PL', 1),
(2641, 170, 'Pomorskie', 'PM', 1),
(2642, 170, 'Slaskie', 'SL', 1),
(2643, 170, 'Swietokrzyskie', 'SW', 1),
(2644, 170, 'Warminsko-Mazurskie', 'WM', 1),
(2645, 170, 'Wielkopolskie', 'WP', 1),
(2646, 170, 'Zachodniopomorskie', 'ZA', 1),
(2647, 198, 'Saint Pierre', 'P', 1),
(2648, 198, 'Miquelon', 'M', 1),
(2649, 171, 'A&ccedil;ores', 'AC', 1),
(2650, 171, 'Aveiro', 'AV', 1),
(2651, 171, 'Beja', 'BE', 1),
(2652, 171, 'Braga', 'BR', 1),
(2653, 171, 'Bragan&ccedil;a', 'BA', 1),
(2654, 171, 'Castelo Branco', 'CB', 1),
(2655, 171, 'Coimbra', 'CO', 1),
(2656, 171, '&Eacute;vora', 'EV', 1),
(2657, 171, 'Faro', 'FA', 1),
(2658, 171, 'Guarda', 'GU', 1),
(2659, 171, 'Leiria', 'LE', 1),
(2660, 171, 'Lisboa', 'LI', 1),
(2661, 171, 'Madeira', 'ME', 1),
(2662, 171, 'Portalegre', 'PO', 1),
(2663, 171, 'Porto', 'PR', 1),
(2664, 171, 'Santar&eacute;m', 'SA', 1),
(2665, 171, 'Set&uacute;bal', 'SE', 1),
(2666, 171, 'Viana do Castelo', 'VC', 1),
(2667, 171, 'Vila Real', 'VR', 1),
(2668, 171, 'Viseu', 'VI', 1),
(2669, 173, 'Ad Dawhah', 'DW', 1),
(2670, 173, 'Al Ghuwayriyah', 'GW', 1),
(2671, 173, 'Al Jumayliyah', 'JM', 1),
(2672, 173, 'Al Khawr', 'KR', 1),
(2673, 173, 'Al Wakrah', 'WK', 1),
(2674, 173, 'Ar Rayyan', 'RN', 1),
(2675, 173, 'Jarayan al Batinah', 'JB', 1),
(2676, 173, 'Madinat ash Shamal', 'MS', 1),
(2677, 173, 'Umm Sa\'id', 'UD', 1),
(2678, 173, 'Umm Salal', 'UL', 1),
(2679, 175, 'Alba', 'AB', 1),
(2680, 175, 'Arad', 'AR', 1),
(2681, 175, 'Arges', 'AG', 1),
(2682, 175, 'Bacau', 'BC', 1),
(2683, 175, 'Bihor', 'BH', 1),
(2684, 175, 'Bistrita-Nasaud', 'BN', 1),
(2685, 175, 'Botosani', 'BT', 1),
(2686, 175, 'Brasov', 'BV', 1),
(2687, 175, 'Braila', 'BR', 1),
(2688, 175, 'Bucuresti', 'B', 1),
(2689, 175, 'Buzau', 'BZ', 1),
(2690, 175, 'Caras-Severin', 'CS', 1),
(2691, 175, 'Calarasi', 'CL', 1),
(2692, 175, 'Cluj', 'CJ', 1),
(2693, 175, 'Constanta', 'CT', 1),
(2694, 175, 'Covasna', 'CV', 1),
(2695, 175, 'Dimbovita', 'DB', 1),
(2696, 175, 'Dolj', 'DJ', 1),
(2697, 175, 'Galati', 'GL', 1),
(2698, 175, 'Giurgiu', 'GR', 1),
(2699, 175, 'Gorj', 'GJ', 1),
(2700, 175, 'Harghita', 'HR', 1),
(2701, 175, 'Hunedoara', 'HD', 1),
(2702, 175, 'Ialomita', 'IL', 1),
(2703, 175, 'Iasi', 'IS', 1),
(2704, 175, 'Ilfov', 'IF', 1),
(2705, 175, 'Maramures', 'MM', 1),
(2706, 175, 'Mehedinti', 'MH', 1),
(2707, 175, 'Mures', 'MS', 1),
(2708, 175, 'Neamt', 'NT', 1),
(2709, 175, 'Olt', 'OT', 1),
(2710, 175, 'Prahova', 'PH', 1),
(2711, 175, 'Satu-Mare', 'SM', 1),
(2712, 175, 'Salaj', 'SJ', 1),
(2713, 175, 'Sibiu', 'SB', 1),
(2714, 175, 'Suceava', 'SV', 1),
(2715, 175, 'Teleorman', 'TR', 1),
(2716, 175, 'Timis', 'TM', 1),
(2717, 175, 'Tulcea', 'TL', 1),
(2718, 175, 'Vaslui', 'VS', 1),
(2719, 175, 'Valcea', 'VL', 1),
(2720, 175, 'Vrancea', 'VN', 1),
(2721, 176, 'Abakan', 'AB', 1),
(2722, 176, 'Aginskoye', 'AG', 1),
(2723, 176, 'Anadyr', 'AN', 1),
(2724, 176, 'Arkahangelsk', 'AR', 1),
(2725, 176, 'Astrakhan', 'AS', 1),
(2726, 176, 'Barnaul', 'BA', 1),
(2727, 176, 'Belgorod', 'BE', 1),
(2728, 176, 'Birobidzhan', 'BI', 1),
(2729, 176, 'Blagoveshchensk', 'BL', 1),
(2730, 176, 'Bryansk', 'BR', 1),
(2731, 176, 'Cheboksary', 'CH', 1),
(2732, 176, 'Chelyabinsk', 'CL', 1),
(2733, 176, 'Cherkessk', 'CR', 1),
(2734, 176, 'Chita', 'CI', 1),
(2735, 176, 'Dudinka', 'DU', 1),
(2736, 176, 'Elista', 'EL', 1),
(2737, 176, 'Gomo-Altaysk', 'GO', 1),
(2738, 176, 'Gorno-Altaysk', 'GA', 1),
(2739, 176, 'Groznyy', 'GR', 1),
(2740, 176, 'Irkutsk', 'IR', 1),
(2741, 176, 'Ivanovo', 'IV', 1),
(2742, 176, 'Izhevsk', 'IZ', 1),
(2743, 176, 'Kalinigrad', 'KA', 1),
(2744, 176, 'Kaluga', 'KL', 1),
(2745, 176, 'Kasnodar', 'KS', 1),
(2746, 176, 'Kazan', 'KZ', 1),
(2747, 176, 'Kemerovo', 'KE', 1),
(2748, 176, 'Khabarovsk', 'KH', 1),
(2749, 176, 'Khanty-Mansiysk', 'KM', 1),
(2750, 176, 'Kostroma', 'KO', 1),
(2751, 176, 'Krasnodar', 'KR', 1),
(2752, 176, 'Krasnoyarsk', 'KN', 1),
(2753, 176, 'Kudymkar', 'KU', 1),
(2754, 176, 'Kurgan', 'KG', 1),
(2755, 176, 'Kursk', 'KK', 1),
(2756, 176, 'Kyzyl', 'KY', 1),
(2757, 176, 'Lipetsk', 'LI', 1),
(2758, 176, 'Magadan', 'MA', 1),
(2759, 176, 'Makhachkala', 'MK', 1),
(2760, 176, 'Maykop', 'MY', 1),
(2761, 176, 'Moscow', 'MO', 1),
(2762, 176, 'Murmansk', 'MU', 1),
(2763, 176, 'Nalchik', 'NA', 1),
(2764, 176, 'Naryan Mar', 'NR', 1),
(2765, 176, 'Nazran', 'NZ', 1),
(2766, 176, 'Nizhniy Novgorod', 'NI', 1),
(2767, 176, 'Novgorod', 'NO', 1),
(2768, 176, 'Novosibirsk', 'NV', 1),
(2769, 176, 'Omsk', 'OM', 1),
(2770, 176, 'Orel', 'OR', 1),
(2771, 176, 'Orenburg', 'OE', 1),
(2772, 176, 'Palana', 'PA', 1),
(2773, 176, 'Penza', 'PE', 1),
(2774, 176, 'Perm', 'PR', 1),
(2775, 176, 'Petropavlovsk-Kamchatskiy', 'PK', 1),
(2776, 176, 'Petrozavodsk', 'PT', 1),
(2777, 176, 'Pskov', 'PS', 1),
(2778, 176, 'Rostov-na-Donu', 'RO', 1),
(2779, 176, 'Ryazan', 'RY', 1),
(2780, 176, 'Salekhard', 'SL', 1),
(2781, 176, 'Samara', 'SA', 1),
(2782, 176, 'Saransk', 'SR', 1),
(2783, 176, 'Saratov', 'SV', 1),
(2784, 176, 'Smolensk', 'SM', 1),
(2785, 176, 'St. Petersburg', 'SP', 1),
(2786, 176, 'Stavropol', 'ST', 1),
(2787, 176, 'Syktyvkar', 'SY', 1),
(2788, 176, 'Tambov', 'TA', 1),
(2789, 176, 'Tomsk', 'TO', 1),
(2790, 176, 'Tula', 'TU', 1),
(2791, 176, 'Tura', 'TR', 1),
(2792, 176, 'Tver', 'TV', 1),
(2793, 176, 'Tyumen', 'TY', 1),
(2794, 176, 'Ufa', 'UF', 1),
(2795, 176, 'Ul\'yanovsk', 'UL', 1),
(2796, 176, 'Ulan-Ude', 'UU', 1),
(2797, 176, 'Ust\'-Ordynskiy', 'US', 1),
(2798, 176, 'Vladikavkaz', 'VL', 1),
(2799, 176, 'Vladimir', 'VA', 1),
(2800, 176, 'Vladivostok', 'VV', 1),
(2801, 176, 'Volgograd', 'VG', 1),
(2802, 176, 'Vologda', 'VD', 1),
(2803, 176, 'Voronezh', 'VO', 1),
(2804, 176, 'Vyatka', 'VY', 1),
(2805, 176, 'Yakutsk', 'YA', 1),
(2806, 176, 'Yaroslavl', 'YR', 1),
(2807, 176, 'Yekaterinburg', 'YE', 1),
(2808, 176, 'Yoshkar-Ola', 'YO', 1),
(2809, 177, 'Butare', 'BU', 1),
(2810, 177, 'Byumba', 'BY', 1),
(2811, 177, 'Cyangugu', 'CY', 1),
(2812, 177, 'Gikongoro', 'GK', 1),
(2813, 177, 'Gisenyi', 'GS', 1),
(2814, 177, 'Gitarama', 'GT', 1),
(2815, 177, 'Kibungo', 'KG', 1),
(2816, 177, 'Kibuye', 'KY', 1),
(2817, 177, 'Kigali Rurale', 'KR', 1),
(2818, 177, 'Kigali-ville', 'KV', 1),
(2819, 177, 'Ruhengeri', 'RU', 1),
(2820, 177, 'Umutara', 'UM', 1),
(2821, 178, 'Christ Church Nichola Town', 'CCN', 1),
(2822, 178, 'Saint Anne Sandy Point', 'SAS', 1),
(2823, 178, 'Saint George Basseterre', 'SGB', 1),
(2824, 178, 'Saint George Gingerland', 'SGG', 1),
(2825, 178, 'Saint James Windward', 'SJW', 1),
(2826, 178, 'Saint John Capesterre', 'SJC', 1),
(2827, 178, 'Saint John Figtree', 'SJF', 1),
(2828, 178, 'Saint Mary Cayon', 'SMC', 1),
(2829, 178, 'Saint Paul Capesterre', 'CAP', 1),
(2830, 178, 'Saint Paul Charlestown', 'CHA', 1),
(2831, 178, 'Saint Peter Basseterre', 'SPB', 1),
(2832, 178, 'Saint Thomas Lowland', 'STL', 1),
(2833, 178, 'Saint Thomas Middle Island', 'STM', 1),
(2834, 178, 'Trinity Palmetto Point', 'TPP', 1),
(2835, 179, 'Anse-la-Raye', 'AR', 1),
(2836, 179, 'Castries', 'CA', 1),
(2837, 179, 'Choiseul', 'CH', 1),
(2838, 179, 'Dauphin', 'DA', 1),
(2839, 179, 'Dennery', 'DE', 1),
(2840, 179, 'Gros-Islet', 'GI', 1),
(2841, 179, 'Laborie', 'LA', 1),
(2842, 179, 'Micoud', 'MI', 1),
(2843, 179, 'Praslin', 'PR', 1),
(2844, 179, 'Soufriere', 'SO', 1),
(2845, 179, 'Vieux-Fort', 'VF', 1),
(2846, 180, 'Charlotte', 'C', 1),
(2847, 180, 'Grenadines', 'R', 1),
(2848, 180, 'Saint Andrew', 'A', 1),
(2849, 180, 'Saint David', 'D', 1),
(2850, 180, 'Saint George', 'G', 1),
(2851, 180, 'Saint Patrick', 'P', 1),
(2852, 181, 'A\'ana', 'AN', 1),
(2853, 181, 'Aiga-i-le-Tai', 'AI', 1),
(2854, 181, 'Atua', 'AT', 1),
(2855, 181, 'Fa\'asaleleaga', 'FA', 1),
(2856, 181, 'Gaga\'emauga', 'GE', 1),
(2857, 181, 'Gagaifomauga', 'GF', 1),
(2858, 181, 'Palauli', 'PA', 1),
(2859, 181, 'Satupa\'itea', 'SA', 1),
(2860, 181, 'Tuamasaga', 'TU', 1),
(2861, 181, 'Va\'a-o-Fonoti', 'VF', 1),
(2862, 181, 'Vaisigano', 'VS', 1),
(2863, 182, 'Acquaviva', 'AC', 1),
(2864, 182, 'Borgo Maggiore', 'BM', 1),
(2865, 182, 'Chiesanuova', 'CH', 1),
(2866, 182, 'Domagnano', 'DO', 1),
(2867, 182, 'Faetano', 'FA', 1),
(2868, 182, 'Fiorentino', 'FI', 1),
(2869, 182, 'Montegiardino', 'MO', 1),
(2870, 182, 'Citta di San Marino', 'SM', 1),
(2871, 182, 'Serravalle', 'SE', 1),
(2872, 183, 'Sao Tome', 'S', 1),
(2873, 183, 'Principe', 'P', 1),
(2874, 184, 'Al Bahah', 'BH', 1),
(2875, 184, 'Al Hudud ash Shamaliyah', 'HS', 1),
(2876, 184, 'Al Jawf', 'JF', 1),
(2877, 184, 'Al Madinah', 'MD', 1),
(2878, 184, 'Al Qasim', 'QS', 1),
(2879, 184, 'Ar Riyad', 'RD', 1),
(2880, 184, 'Ash Sharqiyah (Eastern)', 'AQ', 1),
(2881, 184, '\'Asir', 'AS', 1),
(2882, 184, 'Ha\'il', 'HL', 1),
(2883, 184, 'Jizan', 'JZ', 1),
(2884, 184, 'Makkah', 'ML', 1),
(2885, 184, 'Najran', 'NR', 1),
(2886, 184, 'Tabuk', 'TB', 1),
(2887, 185, 'Dakar', 'DA', 1),
(2888, 185, 'Diourbel', 'DI', 1),
(2889, 185, 'Fatick', 'FA', 1),
(2890, 185, 'Kaolack', 'KA', 1),
(2891, 185, 'Kolda', 'KO', 1),
(2892, 185, 'Louga', 'LO', 1),
(2893, 185, 'Matam', 'MA', 1),
(2894, 185, 'Saint-Louis', 'SL', 1),
(2895, 185, 'Tambacounda', 'TA', 1),
(2896, 185, 'Thies', 'TH', 1),
(2897, 185, 'Ziguinchor', 'ZI', 1),
(2898, 186, 'Anse aux Pins', 'AP', 1),
(2899, 186, 'Anse Boileau', 'AB', 1),
(2900, 186, 'Anse Etoile', 'AE', 1),
(2901, 186, 'Anse Louis', 'AL', 1),
(2902, 186, 'Anse Royale', 'AR', 1),
(2903, 186, 'Baie Lazare', 'BL', 1),
(2904, 186, 'Baie Sainte Anne', 'BS', 1),
(2905, 186, 'Beau Vallon', 'BV', 1),
(2906, 186, 'Bel Air', 'BA', 1),
(2907, 186, 'Bel Ombre', 'BO', 1),
(2908, 186, 'Cascade', 'CA', 1),
(2909, 186, 'Glacis', 'GL', 1),
(2910, 186, 'Grand\' Anse (on Mahe)', 'GM', 1),
(2911, 186, 'Grand\' Anse (on Praslin)', 'GP', 1),
(2912, 186, 'La Digue', 'DG', 1),
(2913, 186, 'La Riviere Anglaise', 'RA', 1),
(2914, 186, 'Mont Buxton', 'MB', 1),
(2915, 186, 'Mont Fleuri', 'MF', 1),
(2916, 186, 'Plaisance', 'PL', 1),
(2917, 186, 'Pointe La Rue', 'PR', 1),
(2918, 186, 'Port Glaud', 'PG', 1),
(2919, 186, 'Saint Louis', 'SL', 1),
(2920, 186, 'Takamaka', 'TA', 1),
(2921, 187, 'Eastern', 'E', 1),
(2922, 187, 'Northern', 'N', 1),
(2923, 187, 'Southern', 'S', 1),
(2924, 187, 'Western', 'W', 1),
(2925, 189, 'Banskobystrický', 'BA', 1),
(2926, 189, 'Bratislavský', 'BR', 1),
(2927, 189, 'Košický', 'KO', 1),
(2928, 189, 'Nitriansky', 'NI', 1),
(2929, 189, 'Prešovský', 'PR', 1),
(2930, 189, 'Trenčiansky', 'TC', 1),
(2931, 189, 'Trnavský', 'TV', 1),
(2932, 189, 'Žilinský', 'ZI', 1),
(2933, 191, 'Central', 'CE', 1),
(2934, 191, 'Choiseul', 'CH', 1),
(2935, 191, 'Guadalcanal', 'GC', 1),
(2936, 191, 'Honiara', 'HO', 1),
(2937, 191, 'Isabel', 'IS', 1),
(2938, 191, 'Makira', 'MK', 1),
(2939, 191, 'Malaita', 'ML', 1),
(2940, 191, 'Rennell and Bellona', 'RB', 1),
(2941, 191, 'Temotu', 'TM', 1),
(2942, 191, 'Western', 'WE', 1),
(2943, 192, 'Awdal', 'AW', 1),
(2944, 192, 'Bakool', 'BK', 1),
(2945, 192, 'Banaadir', 'BN', 1),
(2946, 192, 'Bari', 'BR', 1),
(2947, 192, 'Bay', 'BY', 1),
(2948, 192, 'Galguduud', 'GA', 1),
(2949, 192, 'Gedo', 'GE', 1),
(2950, 192, 'Hiiraan', 'HI', 1),
(2951, 192, 'Jubbada Dhexe', 'JD', 1),
(2952, 192, 'Jubbada Hoose', 'JH', 1),
(2953, 192, 'Mudug', 'MU', 1),
(2954, 192, 'Nugaal', 'NU', 1),
(2955, 192, 'Sanaag', 'SA', 1),
(2956, 192, 'Shabeellaha Dhexe', 'SD', 1),
(2957, 192, 'Shabeellaha Hoose', 'SH', 1),
(2958, 192, 'Sool', 'SL', 1),
(2959, 192, 'Togdheer', 'TO', 1),
(2960, 192, 'Woqooyi Galbeed', 'WG', 1),
(2961, 193, 'Eastern Cape', 'EC', 1),
(2962, 193, 'Free State', 'FS', 1),
(2963, 193, 'Gauteng', 'GT', 1),
(2964, 193, 'KwaZulu-Natal', 'KN', 1),
(2965, 193, 'Limpopo', 'LP', 1),
(2966, 193, 'Mpumalanga', 'MP', 1),
(2967, 193, 'North West', 'NW', 1),
(2968, 193, 'Northern Cape', 'NC', 1),
(2969, 193, 'Western Cape', 'WC', 1),
(2970, 195, 'La Coru&ntilde;a', 'CA', 1),
(2971, 195, '&Aacute;lava', 'AL', 1),
(2972, 195, 'Albacete', 'AB', 1),
(2973, 195, 'Alicante', 'AC', 1),
(2974, 195, 'Almeria', 'AM', 1),
(2975, 195, 'Asturias', 'AS', 1),
(2976, 195, '&Aacute;vila', 'AV', 1),
(2977, 195, 'Badajoz', 'BJ', 1),
(2978, 195, 'Baleares', 'IB', 1),
(2979, 195, 'Barcelona', 'BA', 1),
(2980, 195, 'Burgos', 'BU', 1),
(2981, 195, 'C&aacute;ceres', 'CC', 1),
(2982, 195, 'C&aacute;diz', 'CZ', 1),
(2983, 195, 'Cantabria', 'CT', 1),
(2984, 195, 'Castell&oacute;n', 'CL', 1),
(2985, 195, 'Ceuta', 'CE', 1),
(2986, 195, 'Ciudad Real', 'CR', 1),
(2987, 195, 'C&oacute;rdoba', 'CD', 1),
(2988, 195, 'Cuenca', 'CU', 1),
(2989, 195, 'Girona', 'GI', 1),
(2990, 195, 'Granada', 'GD', 1),
(2991, 195, 'Guadalajara', 'GJ', 1),
(2992, 195, 'Guip&uacute;zcoa', 'GP', 1),
(2993, 195, 'Huelva', 'HL', 1),
(2994, 195, 'Huesca', 'HS', 1),
(2995, 195, 'Ja&eacute;n', 'JN', 1),
(2996, 195, 'La Rioja', 'RJ', 1),
(2997, 195, 'Las Palmas', 'PM', 1),
(2998, 195, 'Leon', 'LE', 1),
(2999, 195, 'Lleida', 'LL', 1),
(3000, 195, 'Lugo', 'LG', 1),
(3001, 195, 'Madrid', 'MD', 1),
(3002, 195, 'Malaga', 'MA', 1),
(3003, 195, 'Melilla', 'ML', 1),
(3004, 195, 'Murcia', 'MU', 1),
(3005, 195, 'Navarra', 'NV', 1),
(3006, 195, 'Ourense', 'OU', 1),
(3007, 195, 'Palencia', 'PL', 1),
(3008, 195, 'Pontevedra', 'PO', 1),
(3009, 195, 'Salamanca', 'SL', 1),
(3010, 195, 'Santa Cruz de Tenerife', 'SC', 1),
(3011, 195, 'Segovia', 'SG', 1),
(3012, 195, 'Sevilla', 'SV', 1),
(3013, 195, 'Soria', 'SO', 1),
(3014, 195, 'Tarragona', 'TA', 1),
(3015, 195, 'Teruel', 'TE', 1),
(3016, 195, 'Toledo', 'TO', 1),
(3017, 195, 'Valencia', 'VC', 1),
(3018, 195, 'Valladolid', 'VD', 1),
(3019, 195, 'Vizcaya', 'VZ', 1),
(3020, 195, 'Zamora', 'ZM', 1),
(3021, 195, 'Zaragoza', 'ZR', 1),
(3022, 196, 'Central', 'CE', 1),
(3023, 196, 'Eastern', 'EA', 1),
(3024, 196, 'North Central', 'NC', 1),
(3025, 196, 'Northern', 'NO', 1),
(3026, 196, 'North Western', 'NW', 1),
(3027, 196, 'Sabaragamuwa', 'SA', 1),
(3028, 196, 'Southern', 'SO', 1),
(3029, 196, 'Uva', 'UV', 1),
(3030, 196, 'Western', 'WE', 1),
(3032, 197, 'Saint Helena', 'S', 1),
(3034, 199, 'A\'ali an Nil', 'ANL', 1),
(3035, 199, 'Al Bahr al Ahmar', 'BAM', 1),
(3036, 199, 'Al Buhayrat', 'BRT', 1),
(3037, 199, 'Al Jazirah', 'JZR', 1),
(3038, 199, 'Al Khartum', 'KRT', 1),
(3039, 199, 'Al Qadarif', 'QDR', 1),
(3040, 199, 'Al Wahdah', 'WDH', 1),
(3041, 199, 'An Nil al Abyad', 'ANB', 1),
(3042, 199, 'An Nil al Azraq', 'ANZ', 1),
(3043, 199, 'Ash Shamaliyah', 'ASH', 1),
(3044, 199, 'Bahr al Jabal', 'BJA', 1),
(3045, 199, 'Gharb al Istiwa\'iyah', 'GIS', 1),
(3046, 199, 'Gharb Bahr al Ghazal', 'GBG', 1),
(3047, 199, 'Gharb Darfur', 'GDA', 1),
(3048, 199, 'Gharb Kurdufan', 'GKU', 1),
(3049, 199, 'Janub Darfur', 'JDA', 1),
(3050, 199, 'Janub Kurdufan', 'JKU', 1),
(3051, 199, 'Junqali', 'JQL', 1),
(3052, 199, 'Kassala', 'KSL', 1),
(3053, 199, 'Nahr an Nil', 'NNL', 1),
(3054, 199, 'Shamal Bahr al Ghazal', 'SBG', 1),
(3055, 199, 'Shamal Darfur', 'SDA', 1),
(3056, 199, 'Shamal Kurdufan', 'SKU', 1),
(3057, 199, 'Sharq al Istiwa\'iyah', 'SIS', 1),
(3058, 199, 'Sinnar', 'SNR', 1),
(3059, 199, 'Warab', 'WRB', 1),
(3060, 200, 'Brokopondo', 'BR', 1),
(3061, 200, 'Commewijne', 'CM', 1),
(3062, 200, 'Coronie', 'CR', 1),
(3063, 200, 'Marowijne', 'MA', 1),
(3064, 200, 'Nickerie', 'NI', 1),
(3065, 200, 'Para', 'PA', 1),
(3066, 200, 'Paramaribo', 'PM', 1),
(3067, 200, 'Saramacca', 'SA', 1),
(3068, 200, 'Sipaliwini', 'SI', 1),
(3069, 200, 'Wanica', 'WA', 1),
(3070, 202, 'Hhohho', 'H', 1),
(3071, 202, 'Lubombo', 'L', 1),
(3072, 202, 'Manzini', 'M', 1),
(3073, 202, 'Shishelweni', 'S', 1),
(3074, 203, 'Blekinge', 'K', 1),
(3075, 203, 'Dalarna', 'W', 1),
(3076, 203, 'G&auml;vleborg', 'X', 1),
(3077, 203, 'Gotland', 'I', 1),
(3078, 203, 'Halland', 'N', 1),
(3079, 203, 'J&auml;mtland', 'Z', 1),
(3080, 203, 'J&ouml;nk&ouml;ping', 'F', 1),
(3081, 203, 'Kalmar', 'H', 1),
(3082, 203, 'Kronoberg', 'G', 1),
(3083, 203, 'Norrbotten', 'BD', 1),
(3084, 203, '&Ouml;rebro', 'T', 1),
(3085, 203, '&Ouml;sterg&ouml;tland', 'E', 1),
(3086, 203, 'Sk&aring;ne', 'M', 1),
(3087, 203, 'S&ouml;dermanland', 'D', 1),
(3088, 203, 'Stockholm', 'AB', 1),
(3089, 203, 'Uppsala', 'C', 1),
(3090, 203, 'V&auml;rmland', 'S', 1),
(3091, 203, 'V&auml;sterbotten', 'AC', 1),
(3092, 203, 'V&auml;sternorrland', 'Y', 1),
(3093, 203, 'V&auml;stmanland', 'U', 1),
(3094, 203, 'V&auml;stra G&ouml;taland', 'O', 1),
(3095, 204, 'Aargau', 'AG', 1),
(3096, 204, 'Appenzell Ausserrhoden', 'AR', 1),
(3097, 204, 'Appenzell Innerrhoden', 'AI', 1),
(3098, 204, 'Basel-Stadt', 'BS', 1),
(3099, 204, 'Basel-Landschaft', 'BL', 1),
(3100, 204, 'Bern', 'BE', 1),
(3101, 204, 'Fribourg', 'FR', 1),
(3102, 204, 'Gen&egrave;ve', 'GE', 1),
(3103, 204, 'Glarus', 'GL', 1),
(3104, 204, 'Graub&uuml;nden', 'GR', 1),
(3105, 204, 'Jura', 'JU', 1),
(3106, 204, 'Luzern', 'LU', 1),
(3107, 204, 'Neuch&acirc;tel', 'NE', 1),
(3108, 204, 'Nidwald', 'NW', 1),
(3109, 204, 'Obwald', 'OW', 1),
(3110, 204, 'St. Gallen', 'SG', 1),
(3111, 204, 'Schaffhausen', 'SH', 1),
(3112, 204, 'Schwyz', 'SZ', 1),
(3113, 204, 'Solothurn', 'SO', 1),
(3114, 204, 'Thurgau', 'TG', 1),
(3115, 204, 'Ticino', 'TI', 1),
(3116, 204, 'Uri', 'UR', 1),
(3117, 204, 'Valais', 'VS', 1),
(3118, 204, 'Vaud', 'VD', 1),
(3119, 204, 'Zug', 'ZG', 1),
(3120, 204, 'Z&uuml;rich', 'ZH', 1),
(3121, 205, 'Al Hasakah', 'HA', 1),
(3122, 205, 'Al Ladhiqiyah', 'LA', 1),
(3123, 205, 'Al Qunaytirah', 'QU', 1),
(3124, 205, 'Ar Raqqah', 'RQ', 1),
(3125, 205, 'As Suwayda', 'SU', 1),
(3126, 205, 'Dara', 'DA', 1),
(3127, 205, 'Dayr az Zawr', 'DZ', 1),
(3128, 205, 'Dimashq', 'DI', 1),
(3129, 205, 'Halab', 'HL', 1),
(3130, 205, 'Hamah', 'HM', 1),
(3131, 205, 'Hims', 'HI', 1),
(3132, 205, 'Idlib', 'ID', 1);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(3133, 205, 'Rif Dimashq', 'RD', 1),
(3134, 205, 'Tartus', 'TA', 1),
(3135, 206, 'Chang-hua', 'CH', 1),
(3136, 206, 'Chia-i', 'CI', 1),
(3137, 206, 'Hsin-chu', 'HS', 1),
(3138, 206, 'Hua-lien', 'HL', 1),
(3139, 206, 'I-lan', 'IL', 1),
(3140, 206, 'Kao-hsiung county', 'KH', 1),
(3141, 206, 'Kin-men', 'KM', 1),
(3142, 206, 'Lien-chiang', 'LC', 1),
(3143, 206, 'Miao-li', 'ML', 1),
(3144, 206, 'Nan-t\'ou', 'NT', 1),
(3145, 206, 'P\'eng-hu', 'PH', 1),
(3146, 206, 'P\'ing-tung', 'PT', 1),
(3147, 206, 'T\'ai-chung', 'TG', 1),
(3148, 206, 'T\'ai-nan', 'TA', 1),
(3149, 206, 'T\'ai-pei county', 'TP', 1),
(3150, 206, 'T\'ai-tung', 'TT', 1),
(3151, 206, 'T\'ao-yuan', 'TY', 1),
(3152, 206, 'Yun-lin', 'YL', 1),
(3153, 206, 'Chia-i city', 'CC', 1),
(3154, 206, 'Chi-lung', 'CL', 1),
(3155, 206, 'Hsin-chu', 'HC', 1),
(3156, 206, 'T\'ai-chung', 'TH', 1),
(3157, 206, 'T\'ai-nan', 'TN', 1),
(3158, 206, 'Kao-hsiung city', 'KC', 1),
(3159, 206, 'T\'ai-pei city', 'TC', 1),
(3160, 207, 'Gorno-Badakhstan', 'GB', 1),
(3161, 207, 'Khatlon', 'KT', 1),
(3162, 207, 'Sughd', 'SU', 1),
(3163, 208, 'Arusha', 'AR', 1),
(3164, 208, 'Dar es Salaam', 'DS', 1),
(3165, 208, 'Dodoma', 'DO', 1),
(3166, 208, 'Iringa', 'IR', 1),
(3167, 208, 'Kagera', 'KA', 1),
(3168, 208, 'Kigoma', 'KI', 1),
(3169, 208, 'Kilimanjaro', 'KJ', 1),
(3170, 208, 'Lindi', 'LN', 1),
(3171, 208, 'Manyara', 'MY', 1),
(3172, 208, 'Mara', 'MR', 1),
(3173, 208, 'Mbeya', 'MB', 1),
(3174, 208, 'Morogoro', 'MO', 1),
(3175, 208, 'Mtwara', 'MT', 1),
(3176, 208, 'Mwanza', 'MW', 1),
(3177, 208, 'Pemba North', 'PN', 1),
(3178, 208, 'Pemba South', 'PS', 1),
(3179, 208, 'Pwani', 'PW', 1),
(3180, 208, 'Rukwa', 'RK', 1),
(3181, 208, 'Ruvuma', 'RV', 1),
(3182, 208, 'Shinyanga', 'SH', 1),
(3183, 208, 'Singida', 'SI', 1),
(3184, 208, 'Tabora', 'TB', 1),
(3185, 208, 'Tanga', 'TN', 1),
(3186, 208, 'Zanzibar Central/South', 'ZC', 1),
(3187, 208, 'Zanzibar North', 'ZN', 1),
(3188, 208, 'Zanzibar Urban/West', 'ZU', 1),
(3189, 209, 'Amnat Charoen', 'Amnat Charoen', 1),
(3190, 209, 'Ang Thong', 'Ang Thong', 1),
(3191, 209, 'Ayutthaya', 'Ayutthaya', 1),
(3192, 209, 'Bangkok', 'Bangkok', 1),
(3193, 209, 'Buriram', 'Buriram', 1),
(3194, 209, 'Chachoengsao', 'Chachoengsao', 1),
(3195, 209, 'Chai Nat', 'Chai Nat', 1),
(3196, 209, 'Chaiyaphum', 'Chaiyaphum', 1),
(3197, 209, 'Chanthaburi', 'Chanthaburi', 1),
(3198, 209, 'Chiang Mai', 'Chiang Mai', 1),
(3199, 209, 'Chiang Rai', 'Chiang Rai', 1),
(3200, 209, 'Chon Buri', 'Chon Buri', 1),
(3201, 209, 'Chumphon', 'Chumphon', 1),
(3202, 209, 'Kalasin', 'Kalasin', 1),
(3203, 209, 'Kamphaeng Phet', 'Kamphaeng Phet', 1),
(3204, 209, 'Kanchanaburi', 'Kanchanaburi', 1),
(3205, 209, 'Khon Kaen', 'Khon Kaen', 1),
(3206, 209, 'Krabi', 'Krabi', 1),
(3207, 209, 'Lampang', 'Lampang', 1),
(3208, 209, 'Lamphun', 'Lamphun', 1),
(3209, 209, 'Loei', 'Loei', 1),
(3210, 209, 'Lop Buri', 'Lop Buri', 1),
(3211, 209, 'Mae Hong Son', 'Mae Hong Son', 1),
(3212, 209, 'Maha Sarakham', 'Maha Sarakham', 1),
(3213, 209, 'Mukdahan', 'Mukdahan', 1),
(3214, 209, 'Nakhon Nayok', 'Nakhon Nayok', 1),
(3215, 209, 'Nakhon Pathom', 'Nakhon Pathom', 1),
(3216, 209, 'Nakhon Phanom', 'Nakhon Phanom', 1),
(3217, 209, 'Nakhon Ratchasima', 'Nakhon Ratchasima', 1),
(3218, 209, 'Nakhon Sawan', 'Nakhon Sawan', 1),
(3219, 209, 'Nakhon Si Thammarat', 'Nakhon Si Thammarat', 1),
(3220, 209, 'Nan', 'Nan', 1),
(3221, 209, 'Narathiwat', 'Narathiwat', 1),
(3222, 209, 'Nong Bua Lamphu', 'Nong Bua Lamphu', 1),
(3223, 209, 'Nong Khai', 'Nong Khai', 1),
(3224, 209, 'Nonthaburi', 'Nonthaburi', 1),
(3225, 209, 'Pathum Thani', 'Pathum Thani', 1),
(3226, 209, 'Pattani', 'Pattani', 1),
(3227, 209, 'Phangnga', 'Phangnga', 1),
(3228, 209, 'Phatthalung', 'Phatthalung', 1),
(3229, 209, 'Phayao', 'Phayao', 1),
(3230, 209, 'Phetchabun', 'Phetchabun', 1),
(3231, 209, 'Phetchaburi', 'Phetchaburi', 1),
(3232, 209, 'Phichit', 'Phichit', 1),
(3233, 209, 'Phitsanulok', 'Phitsanulok', 1),
(3234, 209, 'Phrae', 'Phrae', 1),
(3235, 209, 'Phuket', 'Phuket', 1),
(3236, 209, 'Prachin Buri', 'Prachin Buri', 1),
(3237, 209, 'Prachuap Khiri Khan', 'Prachuap Khiri Khan', 1),
(3238, 209, 'Ranong', 'Ranong', 1),
(3239, 209, 'Ratchaburi', 'Ratchaburi', 1),
(3240, 209, 'Rayong', 'Rayong', 1),
(3241, 209, 'Roi Et', 'Roi Et', 1),
(3242, 209, 'Sa Kaeo', 'Sa Kaeo', 1),
(3243, 209, 'Sakon Nakhon', 'Sakon Nakhon', 1),
(3244, 209, 'Samut Prakan', 'Samut Prakan', 1),
(3245, 209, 'Samut Sakhon', 'Samut Sakhon', 1),
(3246, 209, 'Samut Songkhram', 'Samut Songkhram', 1),
(3247, 209, 'Sara Buri', 'Sara Buri', 1),
(3248, 209, 'Satun', 'Satun', 1),
(3249, 209, 'Sing Buri', 'Sing Buri', 1),
(3250, 209, 'Sisaket', 'Sisaket', 1),
(3251, 209, 'Songkhla', 'Songkhla', 1),
(3252, 209, 'Sukhothai', 'Sukhothai', 1),
(3253, 209, 'Suphan Buri', 'Suphan Buri', 1),
(3254, 209, 'Surat Thani', 'Surat Thani', 1),
(3255, 209, 'Surin', 'Surin', 1),
(3256, 209, 'Tak', 'Tak', 1),
(3257, 209, 'Trang', 'Trang', 1),
(3258, 209, 'Trat', 'Trat', 1),
(3259, 209, 'Ubon Ratchathani', 'Ubon Ratchathani', 1),
(3260, 209, 'Udon Thani', 'Udon Thani', 1),
(3261, 209, 'Uthai Thani', 'Uthai Thani', 1),
(3262, 209, 'Uttaradit', 'Uttaradit', 1),
(3263, 209, 'Yala', 'Yala', 1),
(3264, 209, 'Yasothon', 'Yasothon', 1),
(3265, 210, 'Kara', 'K', 1),
(3266, 210, 'Plateaux', 'P', 1),
(3267, 210, 'Savanes', 'S', 1),
(3268, 210, 'Centrale', 'C', 1),
(3269, 210, 'Maritime', 'M', 1),
(3270, 211, 'Atafu', 'A', 1),
(3271, 211, 'Fakaofo', 'F', 1),
(3272, 211, 'Nukunonu', 'N', 1),
(3273, 212, 'Ha\'apai', 'H', 1),
(3274, 212, 'Tongatapu', 'T', 1),
(3275, 212, 'Vava\'u', 'V', 1),
(3276, 213, 'Couva/Tabaquite/Talparo', 'CT', 1),
(3277, 213, 'Diego Martin', 'DM', 1),
(3278, 213, 'Mayaro/Rio Claro', 'MR', 1),
(3279, 213, 'Penal/Debe', 'PD', 1),
(3280, 213, 'Princes Town', 'PT', 1),
(3281, 213, 'Sangre Grande', 'SG', 1),
(3282, 213, 'San Juan/Laventille', 'SL', 1),
(3283, 213, 'Siparia', 'SI', 1),
(3284, 213, 'Tunapuna/Piarco', 'TP', 1),
(3285, 213, 'Port of Spain', 'PS', 1),
(3286, 213, 'San Fernando', 'SF', 1),
(3287, 213, 'Arima', 'AR', 1),
(3288, 213, 'Point Fortin', 'PF', 1),
(3289, 213, 'Chaguanas', 'CH', 1),
(3290, 213, 'Tobago', 'TO', 1),
(3291, 214, 'Ariana', 'AR', 1),
(3292, 214, 'Beja', 'BJ', 1),
(3293, 214, 'Ben Arous', 'BA', 1),
(3294, 214, 'Bizerte', 'BI', 1),
(3295, 214, 'Gabes', 'GB', 1),
(3296, 214, 'Gafsa', 'GF', 1),
(3297, 214, 'Jendouba', 'JE', 1),
(3298, 214, 'Kairouan', 'KR', 1),
(3299, 214, 'Kasserine', 'KS', 1),
(3300, 214, 'Kebili', 'KB', 1),
(3301, 214, 'Kef', 'KF', 1),
(3302, 214, 'Mahdia', 'MH', 1),
(3303, 214, 'Manouba', 'MN', 1),
(3304, 214, 'Medenine', 'ME', 1),
(3305, 214, 'Monastir', 'MO', 1),
(3306, 214, 'Nabeul', 'NA', 1),
(3307, 214, 'Sfax', 'SF', 1),
(3308, 214, 'Sidi', 'SD', 1),
(3309, 214, 'Siliana', 'SL', 1),
(3310, 214, 'Sousse', 'SO', 1),
(3311, 214, 'Tataouine', 'TA', 1),
(3312, 214, 'Tozeur', 'TO', 1),
(3313, 214, 'Tunis', 'TU', 1),
(3314, 214, 'Zaghouan', 'ZA', 1),
(3315, 215, 'Adana', 'ADA', 1),
(3316, 215, 'Adıyaman', 'ADI', 1),
(3317, 215, 'Afyonkarahisar', 'AFY', 1),
(3318, 215, 'Ağrı', 'AGR', 1),
(3319, 215, 'Aksaray', 'AKS', 1),
(3320, 215, 'Amasya', 'AMA', 1),
(3321, 215, 'Ankara', 'ANK', 1),
(3322, 215, 'Antalya', 'ANT', 1),
(3323, 215, 'Ardahan', 'ARD', 1),
(3324, 215, 'Artvin', 'ART', 1),
(3325, 215, 'Aydın', 'AYI', 1),
(3326, 215, 'Balıkesir', 'BAL', 1),
(3327, 215, 'Bartın', 'BAR', 1),
(3328, 215, 'Batman', 'BAT', 1),
(3329, 215, 'Bayburt', 'BAY', 1),
(3330, 215, 'Bilecik', 'BIL', 1),
(3331, 215, 'Bingöl', 'BIN', 1),
(3332, 215, 'Bitlis', 'BIT', 1),
(3333, 215, 'Bolu', 'BOL', 1),
(3334, 215, 'Burdur', 'BRD', 1),
(3335, 215, 'Bursa', 'BRS', 1),
(3336, 215, 'Çanakkale', 'CKL', 1),
(3337, 215, 'Çankırı', 'CKR', 1),
(3338, 215, 'Çorum', 'COR', 1),
(3339, 215, 'Denizli', 'DEN', 1),
(3340, 215, 'Diyarbakır', 'DIY', 1),
(3341, 215, 'Düzce', 'DUZ', 1),
(3342, 215, 'Edirne', 'EDI', 1),
(3343, 215, 'Elazığ', 'ELA', 1),
(3344, 215, 'Erzincan', 'EZC', 1),
(3345, 215, 'Erzurum', 'EZR', 1),
(3346, 215, 'Eskişehir', 'ESK', 1),
(3347, 215, 'Gaziantep', 'GAZ', 1),
(3348, 215, 'Giresun', 'GIR', 1),
(3349, 215, 'Gümüşhane', 'GMS', 1),
(3350, 215, 'Hakkari', 'HKR', 1),
(3351, 215, 'Hatay', 'HTY', 1),
(3352, 215, 'Iğdır', 'IGD', 1),
(3353, 215, 'Isparta', 'ISP', 1),
(3354, 215, 'İstanbul', 'IST', 1),
(3355, 215, 'İzmir', 'IZM', 1),
(3356, 215, 'Kahramanmaraş', 'KAH', 1),
(3357, 215, 'Karabük', 'KRB', 1),
(3358, 215, 'Karaman', 'KRM', 1),
(3359, 215, 'Kars', 'KRS', 1),
(3360, 215, 'Kastamonu', 'KAS', 1),
(3361, 215, 'Kayseri', 'KAY', 1),
(3362, 215, 'Kilis', 'KLS', 1),
(3363, 215, 'Kırıkkale', 'KRK', 1),
(3364, 215, 'Kırklareli', 'KLR', 1),
(3365, 215, 'Kırşehir', 'KRH', 1),
(3366, 215, 'Kocaeli', 'KOC', 1),
(3367, 215, 'Konya', 'KON', 1),
(3368, 215, 'Kütahya', 'KUT', 1),
(3369, 215, 'Malatya', 'MAL', 1),
(3370, 215, 'Manisa', 'MAN', 1),
(3371, 215, 'Mardin', 'MAR', 1),
(3372, 215, 'Mersin', 'MER', 1),
(3373, 215, 'Muğla', 'MUG', 1),
(3374, 215, 'Muş', 'MUS', 1),
(3375, 215, 'Nevşehir', 'NEV', 1),
(3376, 215, 'Niğde', 'NIG', 1),
(3377, 215, 'Ordu', 'ORD', 1),
(3378, 215, 'Osmaniye', 'OSM', 1),
(3379, 215, 'Rize', 'RIZ', 1),
(3380, 215, 'Sakarya', 'SAK', 1),
(3381, 215, 'Samsun', 'SAM', 1),
(3382, 215, 'Şanlıurfa', 'SAN', 1),
(3383, 215, 'Siirt', 'SII', 1),
(3384, 215, 'Sinop', 'SIN', 1),
(3385, 215, 'Şırnak', 'SIR', 1),
(3386, 215, 'Sivas', 'SIV', 1),
(3387, 215, 'Tekirdağ', 'TEL', 1),
(3388, 215, 'Tokat', 'TOK', 1),
(3389, 215, 'Trabzon', 'TRA', 1),
(3390, 215, 'Tunceli', 'TUN', 1),
(3391, 215, 'Uşak', 'USK', 1),
(3392, 215, 'Van', 'VAN', 1),
(3393, 215, 'Yalova', 'YAL', 1),
(3394, 215, 'Yozgat', 'YOZ', 1),
(3395, 215, 'Zonguldak', 'ZON', 1),
(3396, 216, 'Ahal Welayaty', 'A', 1),
(3397, 216, 'Balkan Welayaty', 'B', 1),
(3398, 216, 'Dashhowuz Welayaty', 'D', 1),
(3399, 216, 'Lebap Welayaty', 'L', 1),
(3400, 216, 'Mary Welayaty', 'M', 1),
(3401, 217, 'Ambergris Cays', 'AC', 1),
(3402, 217, 'Dellis Cay', 'DC', 1),
(3403, 217, 'French Cay', 'FC', 1),
(3404, 217, 'Little Water Cay', 'LW', 1),
(3405, 217, 'Parrot Cay', 'RC', 1),
(3406, 217, 'Pine Cay', 'PN', 1),
(3407, 217, 'Salt Cay', 'SL', 1),
(3408, 217, 'Grand Turk', 'GT', 1),
(3409, 217, 'South Caicos', 'SC', 1),
(3410, 217, 'East Caicos', 'EC', 1),
(3411, 217, 'Middle Caicos', 'MC', 1),
(3412, 217, 'North Caicos', 'NC', 1),
(3413, 217, 'Providenciales', 'PR', 1),
(3414, 217, 'West Caicos', 'WC', 1),
(3415, 218, 'Nanumanga', 'NMG', 1),
(3416, 218, 'Niulakita', 'NLK', 1),
(3417, 218, 'Niutao', 'NTO', 1),
(3418, 218, 'Funafuti', 'FUN', 1),
(3419, 218, 'Nanumea', 'NME', 1),
(3420, 218, 'Nui', 'NUI', 1),
(3421, 218, 'Nukufetau', 'NFT', 1),
(3422, 218, 'Nukulaelae', 'NLL', 1),
(3423, 218, 'Vaitupu', 'VAI', 1),
(3424, 219, 'Kalangala', 'KAL', 1),
(3425, 219, 'Kampala', 'KMP', 1),
(3426, 219, 'Kayunga', 'KAY', 1),
(3427, 219, 'Kiboga', 'KIB', 1),
(3428, 219, 'Luwero', 'LUW', 1),
(3429, 219, 'Masaka', 'MAS', 1),
(3430, 219, 'Mpigi', 'MPI', 1),
(3431, 219, 'Mubende', 'MUB', 1),
(3432, 219, 'Mukono', 'MUK', 1),
(3433, 219, 'Nakasongola', 'NKS', 1),
(3434, 219, 'Rakai', 'RAK', 1),
(3435, 219, 'Sembabule', 'SEM', 1),
(3436, 219, 'Wakiso', 'WAK', 1),
(3437, 219, 'Bugiri', 'BUG', 1),
(3438, 219, 'Busia', 'BUS', 1),
(3439, 219, 'Iganga', 'IGA', 1),
(3440, 219, 'Jinja', 'JIN', 1),
(3441, 219, 'Kaberamaido', 'KAB', 1),
(3442, 219, 'Kamuli', 'KML', 1),
(3443, 219, 'Kapchorwa', 'KPC', 1),
(3444, 219, 'Katakwi', 'KTK', 1),
(3445, 219, 'Kumi', 'KUM', 1),
(3446, 219, 'Mayuge', 'MAY', 1),
(3447, 219, 'Mbale', 'MBA', 1),
(3448, 219, 'Pallisa', 'PAL', 1),
(3449, 219, 'Sironko', 'SIR', 1),
(3450, 219, 'Soroti', 'SOR', 1),
(3451, 219, 'Tororo', 'TOR', 1),
(3452, 219, 'Adjumani', 'ADJ', 1),
(3453, 219, 'Apac', 'APC', 1),
(3454, 219, 'Arua', 'ARU', 1),
(3455, 219, 'Gulu', 'GUL', 1),
(3456, 219, 'Kitgum', 'KIT', 1),
(3457, 219, 'Kotido', 'KOT', 1),
(3458, 219, 'Lira', 'LIR', 1),
(3459, 219, 'Moroto', 'MRT', 1),
(3460, 219, 'Moyo', 'MOY', 1),
(3461, 219, 'Nakapiripirit', 'NAK', 1),
(3462, 219, 'Nebbi', 'NEB', 1),
(3463, 219, 'Pader', 'PAD', 1),
(3464, 219, 'Yumbe', 'YUM', 1),
(3465, 219, 'Bundibugyo', 'BUN', 1),
(3466, 219, 'Bushenyi', 'BSH', 1),
(3467, 219, 'Hoima', 'HOI', 1),
(3468, 219, 'Kabale', 'KBL', 1),
(3469, 219, 'Kabarole', 'KAR', 1),
(3470, 219, 'Kamwenge', 'KAM', 1),
(3471, 219, 'Kanungu', 'KAN', 1),
(3472, 219, 'Kasese', 'KAS', 1),
(3473, 219, 'Kibaale', 'KBA', 1),
(3474, 219, 'Kisoro', 'KIS', 1),
(3475, 219, 'Kyenjojo', 'KYE', 1),
(3476, 219, 'Masindi', 'MSN', 1),
(3477, 219, 'Mbarara', 'MBR', 1),
(3478, 219, 'Ntungamo', 'NTU', 1),
(3479, 219, 'Rukungiri', 'RUK', 1),
(3480, 220, 'Cherkas\'ka Oblast\'', '71', 1),
(3481, 220, 'Chernihivs\'ka Oblast\'', '74', 1),
(3482, 220, 'Chernivets\'ka Oblast\'', '77', 1),
(3483, 220, 'Crimea', '43', 1),
(3484, 220, 'Dnipropetrovs\'ka Oblast\'', '12', 1),
(3485, 220, 'Donets\'ka Oblast\'', '14', 1),
(3486, 220, 'Ivano-Frankivs\'ka Oblast\'', '26', 1),
(3487, 220, 'Khersons\'ka Oblast\'', '65', 1),
(3488, 220, 'Khmel\'nyts\'ka Oblast\'', '68', 1),
(3489, 220, 'Kirovohrads\'ka Oblast\'', '35', 1),
(3490, 220, 'Kyiv', '30', 1),
(3491, 220, 'Kyivs\'ka Oblast\'', '32', 1),
(3492, 220, 'Luhans\'ka Oblast\'', '09', 1),
(3493, 220, 'L\'vivs\'ka Oblast\'', '46', 1),
(3494, 220, 'Mykolayivs\'ka Oblast\'', '48', 1),
(3495, 220, 'Odes\'ka Oblast\'', '51', 1),
(3496, 220, 'Poltavs\'ka Oblast\'', '53', 1),
(3497, 220, 'Rivnens\'ka Oblast\'', '56', 1),
(3498, 220, 'Sevastopol\'', '40', 1),
(3499, 220, 'Sums\'ka Oblast\'', '59', 1),
(3500, 220, 'Ternopil\'s\'ka Oblast\'', '61', 1),
(3501, 220, 'Vinnyts\'ka Oblast\'', '05', 1),
(3502, 220, 'Volyns\'ka Oblast\'', '07', 1),
(3503, 220, 'Zakarpats\'ka Oblast\'', '21', 1),
(3504, 220, 'Zaporiz\'ka Oblast\'', '23', 1),
(3505, 220, 'Zhytomyrs\'ka oblast\'', '18', 1),
(3506, 221, 'Abu Zaby', 'AZ', 1),
(3507, 221, '\'Ajman', 'AJ', 1),
(3508, 221, 'Al Fujayrah', 'FU', 1),
(3509, 221, 'Ash Shariqah', 'SH', 1),
(3510, 221, 'Dubayy', 'DU', 1),
(3511, 221, 'R\'as al Khaymah', 'RK', 1),
(3512, 221, 'Umm al Qaywayn', 'UQ', 1),
(3513, 222, 'Aberdeen', 'ABN', 1),
(3514, 222, 'Aberdeenshire', 'ABNS', 1),
(3515, 222, 'Anglesey', 'ANG', 1),
(3516, 222, 'Angus', 'AGS', 1),
(3517, 222, 'Argyll and Bute', 'ARY', 1),
(3518, 222, 'Bedfordshire', 'BEDS', 1),
(3519, 222, 'Berkshire', 'BERKS', 1),
(3520, 222, 'Blaenau Gwent', 'BLA', 1),
(3521, 222, 'Bridgend', 'BRI', 1),
(3522, 222, 'Bristol', 'BSTL', 1),
(3523, 222, 'Buckinghamshire', 'BUCKS', 1),
(3524, 222, 'Caerphilly', 'CAE', 1),
(3525, 222, 'Cambridgeshire', 'CAMBS', 1),
(3526, 222, 'Cardiff', 'CDF', 1),
(3527, 222, 'Carmarthenshire', 'CARM', 1),
(3528, 222, 'Ceredigion', 'CDGN', 1),
(3529, 222, 'Cheshire', 'CHES', 1),
(3530, 222, 'Clackmannanshire', 'CLACK', 1),
(3531, 222, 'Conwy', 'CON', 1),
(3532, 222, 'Cornwall', 'CORN', 1),
(3533, 222, 'Denbighshire', 'DNBG', 1),
(3534, 222, 'Derbyshire', 'DERBY', 1),
(3535, 222, 'Devon', 'DVN', 1),
(3536, 222, 'Dorset', 'DOR', 1),
(3537, 222, 'Dumfries and Galloway', 'DGL', 1),
(3538, 222, 'Dundee', 'DUND', 1),
(3539, 222, 'Durham', 'DHM', 1),
(3540, 222, 'East Ayrshire', 'ARYE', 1),
(3541, 222, 'East Dunbartonshire', 'DUNBE', 1),
(3542, 222, 'East Lothian', 'LOTE', 1),
(3543, 222, 'East Renfrewshire', 'RENE', 1),
(3544, 222, 'East Riding of Yorkshire', 'ERYS', 1),
(3545, 222, 'East Sussex', 'SXE', 1),
(3546, 222, 'Edinburgh', 'EDIN', 1),
(3547, 222, 'Essex', 'ESX', 1),
(3548, 222, 'Falkirk', 'FALK', 1),
(3549, 222, 'Fife', 'FFE', 1),
(3550, 222, 'Flintshire', 'FLINT', 1),
(3551, 222, 'Glasgow', 'GLAS', 1),
(3552, 222, 'Gloucestershire', 'GLOS', 1),
(3553, 222, 'Greater London', 'LDN', 1),
(3554, 222, 'Greater Manchester', 'MCH', 1),
(3555, 222, 'Gwynedd', 'GDD', 1),
(3556, 222, 'Hampshire', 'HANTS', 1),
(3557, 222, 'Herefordshire', 'HWR', 1),
(3558, 222, 'Hertfordshire', 'HERTS', 1),
(3559, 222, 'Highlands', 'HLD', 1),
(3560, 222, 'Inverclyde', 'IVER', 1),
(3561, 222, 'Isle of Wight', 'IOW', 1),
(3562, 222, 'Kent', 'KNT', 1),
(3563, 222, 'Lancashire', 'LANCS', 1),
(3564, 222, 'Leicestershire', 'LEICS', 1),
(3565, 222, 'Lincolnshire', 'LINCS', 1),
(3566, 222, 'Merseyside', 'MSY', 1),
(3567, 222, 'Merthyr Tydfil', 'MERT', 1),
(3568, 222, 'Midlothian', 'MLOT', 1),
(3569, 222, 'Monmouthshire', 'MMOUTH', 1),
(3570, 222, 'Moray', 'MORAY', 1),
(3571, 222, 'Neath Port Talbot', 'NPRTAL', 1),
(3572, 222, 'Newport', 'NEWPT', 1),
(3573, 222, 'Norfolk', 'NOR', 1),
(3574, 222, 'North Ayrshire', 'ARYN', 1),
(3575, 222, 'North Lanarkshire', 'LANN', 1),
(3576, 222, 'North Yorkshire', 'YSN', 1),
(3577, 222, 'Northamptonshire', 'NHM', 1),
(3578, 222, 'Northumberland', 'NLD', 1),
(3579, 222, 'Nottinghamshire', 'NOT', 1),
(3580, 222, 'Orkney Islands', 'ORK', 1),
(3581, 222, 'Oxfordshire', 'OFE', 1),
(3582, 222, 'Pembrokeshire', 'PEM', 1),
(3583, 222, 'Perth and Kinross', 'PERTH', 1),
(3584, 222, 'Powys', 'PWS', 1),
(3585, 222, 'Renfrewshire', 'REN', 1),
(3586, 222, 'Rhondda Cynon Taff', 'RHON', 1),
(3587, 222, 'Rutland', 'RUT', 1),
(3588, 222, 'Scottish Borders', 'BOR', 1),
(3589, 222, 'Shetland Islands', 'SHET', 1),
(3590, 222, 'Shropshire', 'SPE', 1),
(3591, 222, 'Somerset', 'SOM', 1),
(3592, 222, 'South Ayrshire', 'ARYS', 1),
(3593, 222, 'South Lanarkshire', 'LANS', 1),
(3594, 222, 'South Yorkshire', 'YSS', 1),
(3595, 222, 'Staffordshire', 'SFD', 1),
(3596, 222, 'Stirling', 'STIR', 1),
(3597, 222, 'Suffolk', 'SFK', 1),
(3598, 222, 'Surrey', 'SRY', 1),
(3599, 222, 'Swansea', 'SWAN', 1),
(3600, 222, 'Torfaen', 'TORF', 1),
(3601, 222, 'Tyne and Wear', 'TWR', 1),
(3602, 222, 'Vale of Glamorgan', 'VGLAM', 1),
(3603, 222, 'Warwickshire', 'WARKS', 1),
(3604, 222, 'West Dunbartonshire', 'WDUN', 1),
(3605, 222, 'West Lothian', 'WLOT', 1),
(3606, 222, 'West Midlands', 'WMD', 1),
(3607, 222, 'West Sussex', 'SXW', 1),
(3608, 222, 'West Yorkshire', 'YSW', 1),
(3609, 222, 'Western Isles', 'WIL', 1),
(3610, 222, 'Wiltshire', 'WLT', 1),
(3611, 222, 'Worcestershire', 'WORCS', 1),
(3612, 222, 'Wrexham', 'WRX', 1),
(3613, 223, 'Alabama', 'AL', 1),
(3614, 223, 'Alaska', 'AK', 1),
(3615, 223, 'American Samoa', 'AS', 1),
(3616, 223, 'Arizona', 'AZ', 1),
(3617, 223, 'Arkansas', 'AR', 1),
(3618, 223, 'Armed Forces Africa', 'AF', 1),
(3619, 223, 'Armed Forces Americas', 'AA', 1),
(3620, 223, 'Armed Forces Canada', 'AC', 1),
(3621, 223, 'Armed Forces Europe', 'AE', 1),
(3622, 223, 'Armed Forces Middle East', 'AM', 1),
(3623, 223, 'Armed Forces Pacific', 'AP', 1),
(3624, 223, 'California', 'CA', 1),
(3625, 223, 'Colorado', 'CO', 1),
(3626, 223, 'Connecticut', 'CT', 1),
(3627, 223, 'Delaware', 'DE', 1),
(3628, 223, 'District of Columbia', 'DC', 1),
(3629, 223, 'Federated States Of Micronesia', 'FM', 1),
(3630, 223, 'Florida', 'FL', 1),
(3631, 223, 'Georgia', 'GA', 1),
(3632, 223, 'Guam', 'GU', 1),
(3633, 223, 'Hawaii', 'HI', 1),
(3634, 223, 'Idaho', 'ID', 1),
(3635, 223, 'Illinois', 'IL', 1),
(3636, 223, 'Indiana', 'IN', 1),
(3637, 223, 'Iowa', 'IA', 1),
(3638, 223, 'Kansas', 'KS', 1),
(3639, 223, 'Kentucky', 'KY', 1),
(3640, 223, 'Louisiana', 'LA', 1),
(3641, 223, 'Maine', 'ME', 1),
(3642, 223, 'Marshall Islands', 'MH', 1),
(3643, 223, 'Maryland', 'MD', 1),
(3644, 223, 'Massachusetts', 'MA', 1),
(3645, 223, 'Michigan', 'MI', 1),
(3646, 223, 'Minnesota', 'MN', 1),
(3647, 223, 'Mississippi', 'MS', 1),
(3648, 223, 'Missouri', 'MO', 1),
(3649, 223, 'Montana', 'MT', 1),
(3650, 223, 'Nebraska', 'NE', 1),
(3651, 223, 'Nevada', 'NV', 1),
(3652, 223, 'New Hampshire', 'NH', 1),
(3653, 223, 'New Jersey', 'NJ', 1),
(3654, 223, 'New Mexico', 'NM', 1),
(3655, 223, 'New York', 'NY', 1),
(3656, 223, 'North Carolina', 'NC', 1),
(3657, 223, 'North Dakota', 'ND', 1),
(3658, 223, 'Northern Mariana Islands', 'MP', 1),
(3659, 223, 'Ohio', 'OH', 1),
(3660, 223, 'Oklahoma', 'OK', 1),
(3661, 223, 'Oregon', 'OR', 1),
(3662, 223, 'Palau', 'PW', 1),
(3663, 223, 'Pennsylvania', 'PA', 1),
(3664, 223, 'Puerto Rico', 'PR', 1),
(3665, 223, 'Rhode Island', 'RI', 1),
(3666, 223, 'South Carolina', 'SC', 1),
(3667, 223, 'South Dakota', 'SD', 1),
(3668, 223, 'Tennessee', 'TN', 1),
(3669, 223, 'Texas', 'TX', 1),
(3670, 223, 'Utah', 'UT', 1),
(3671, 223, 'Vermont', 'VT', 1),
(3672, 223, 'Virgin Islands', 'VI', 1),
(3673, 223, 'Virginia', 'VA', 1),
(3674, 223, 'Washington', 'WA', 1),
(3675, 223, 'West Virginia', 'WV', 1),
(3676, 223, 'Wisconsin', 'WI', 1),
(3677, 223, 'Wyoming', 'WY', 1),
(3678, 224, 'Baker Island', 'BI', 1),
(3679, 224, 'Howland Island', 'HI', 1),
(3680, 224, 'Jarvis Island', 'JI', 1),
(3681, 224, 'Johnston Atoll', 'JA', 1),
(3682, 224, 'Kingman Reef', 'KR', 1),
(3683, 224, 'Midway Atoll', 'MA', 1),
(3684, 224, 'Navassa Island', 'NI', 1),
(3685, 224, 'Palmyra Atoll', 'PA', 1),
(3686, 224, 'Wake Island', 'WI', 1),
(3687, 225, 'Artigas', 'AR', 1),
(3688, 225, 'Canelones', 'CA', 1),
(3689, 225, 'Cerro Largo', 'CL', 1),
(3690, 225, 'Colonia', 'CO', 1),
(3691, 225, 'Durazno', 'DU', 1),
(3692, 225, 'Flores', 'FS', 1),
(3693, 225, 'Florida', 'FA', 1),
(3694, 225, 'Lavalleja', 'LA', 1),
(3695, 225, 'Maldonado', 'MA', 1),
(3696, 225, 'Montevideo', 'MO', 1),
(3697, 225, 'Paysandu', 'PA', 1),
(3698, 225, 'Rio Negro', 'RN', 1),
(3699, 225, 'Rivera', 'RV', 1),
(3700, 225, 'Rocha', 'RO', 1),
(3701, 225, 'Salto', 'SL', 1),
(3702, 225, 'San Jose', 'SJ', 1),
(3703, 225, 'Soriano', 'SO', 1),
(3704, 225, 'Tacuarembo', 'TA', 1),
(3705, 225, 'Treinta y Tres', 'TT', 1),
(3706, 226, 'Andijon', 'AN', 1),
(3707, 226, 'Buxoro', 'BU', 1),
(3708, 226, 'Farg\'ona', 'FA', 1),
(3709, 226, 'Jizzax', 'JI', 1),
(3710, 226, 'Namangan', 'NG', 1),
(3711, 226, 'Navoiy', 'NW', 1),
(3712, 226, 'Qashqadaryo', 'QA', 1),
(3713, 226, 'Qoraqalpog\'iston Republikasi', 'QR', 1),
(3714, 226, 'Samarqand', 'SA', 1),
(3715, 226, 'Sirdaryo', 'SI', 1),
(3716, 226, 'Surxondaryo', 'SU', 1),
(3717, 226, 'Toshkent City', 'TK', 1),
(3718, 226, 'Toshkent Region', 'TO', 1),
(3719, 226, 'Xorazm', 'XO', 1),
(3720, 227, 'Malampa', 'MA', 1),
(3721, 227, 'Penama', 'PE', 1),
(3722, 227, 'Sanma', 'SA', 1),
(3723, 227, 'Shefa', 'SH', 1),
(3724, 227, 'Tafea', 'TA', 1),
(3725, 227, 'Torba', 'TO', 1),
(3726, 229, 'Amazonas', 'AM', 1),
(3727, 229, 'Anzoategui', 'AN', 1),
(3728, 229, 'Apure', 'AP', 1),
(3729, 229, 'Aragua', 'AR', 1),
(3730, 229, 'Barinas', 'BA', 1),
(3731, 229, 'Bolivar', 'BO', 1),
(3732, 229, 'Carabobo', 'CA', 1),
(3733, 229, 'Cojedes', 'CO', 1),
(3734, 229, 'Delta Amacuro', 'DA', 1),
(3735, 229, 'Dependencias Federales', 'DF', 1),
(3736, 229, 'Distrito Federal', 'DI', 1),
(3737, 229, 'Falcon', 'FA', 1),
(3738, 229, 'Guarico', 'GU', 1),
(3739, 229, 'Lara', 'LA', 1),
(3740, 229, 'Merida', 'ME', 1),
(3741, 229, 'Miranda', 'MI', 1),
(3742, 229, 'Monagas', 'MO', 1),
(3743, 229, 'Nueva Esparta', 'NE', 1),
(3744, 229, 'Portuguesa', 'PO', 1),
(3745, 229, 'Sucre', 'SU', 1),
(3746, 229, 'Tachira', 'TA', 1),
(3747, 229, 'Trujillo', 'TR', 1),
(3748, 229, 'Vargas', 'VA', 1),
(3749, 229, 'Yaracuy', 'YA', 1),
(3750, 229, 'Zulia', 'ZU', 1),
(3751, 230, 'An Giang', 'AG', 1),
(3752, 230, 'Bac Giang', 'BG', 1),
(3753, 230, 'Bac Kan', 'BK', 1),
(3754, 230, 'Bac Lieu', 'BL', 1),
(3755, 230, 'Bac Ninh', 'BC', 1),
(3756, 230, 'Ba Ria-Vung Tau', 'BR', 1),
(3757, 230, 'Ben Tre', 'BN', 1),
(3758, 230, 'Binh Dinh', 'BH', 1),
(3759, 230, 'Binh Duong', 'BU', 1),
(3760, 230, 'Binh Phuoc', 'BP', 1),
(3761, 230, 'Binh Thuan', 'BT', 1),
(3762, 230, 'Ca Mau', 'CM', 1),
(3763, 230, 'Can Tho', 'CT', 1),
(3764, 230, 'Cao Bang', 'CB', 1),
(3765, 230, 'Dak Lak', 'DL', 1),
(3766, 230, 'Dak Nong', 'DG', 1),
(3767, 230, 'Da Nang', 'DN', 1),
(3768, 230, 'Dien Bien', 'DB', 1),
(3769, 230, 'Dong Nai', 'DI', 1),
(3770, 230, 'Dong Thap', 'DT', 1),
(3771, 230, 'Gia Lai', 'GL', 1),
(3772, 230, 'Ha Giang', 'HG', 1),
(3773, 230, 'Hai Duong', 'HD', 1),
(3774, 230, 'Hai Phong', 'HP', 1),
(3775, 230, 'Ha Nam', 'HM', 1),
(3776, 230, 'Ha Noi', 'HI', 1),
(3777, 230, 'Ha Tay', 'HT', 1),
(3778, 230, 'Ha Tinh', 'HH', 1),
(3779, 230, 'Hoa Binh', 'HB', 1),
(3780, 230, 'Ho Chi Minh City', 'HC', 1),
(3781, 230, 'Hau Giang', 'HU', 1),
(3782, 230, 'Hung Yen', 'HY', 1),
(3783, 232, 'Saint Croix', 'C', 1),
(3784, 232, 'Saint John', 'J', 1),
(3785, 232, 'Saint Thomas', 'T', 1),
(3786, 233, 'Alo', 'A', 1),
(3787, 233, 'Sigave', 'S', 1),
(3788, 233, 'Wallis', 'W', 1),
(3789, 235, 'Abyan', 'AB', 1),
(3790, 235, 'Adan', 'AD', 1),
(3791, 235, 'Amran', 'AM', 1),
(3792, 235, 'Al Bayda', 'BA', 1),
(3793, 235, 'Ad Dali', 'DA', 1),
(3794, 235, 'Dhamar', 'DH', 1),
(3795, 235, 'Hadramawt', 'HD', 1),
(3796, 235, 'Hajjah', 'HJ', 1),
(3797, 235, 'Al Hudaydah', 'HU', 1),
(3798, 235, 'Ibb', 'IB', 1),
(3799, 235, 'Al Jawf', 'JA', 1),
(3800, 235, 'Lahij', 'LA', 1),
(3801, 235, 'Ma\'rib', 'MA', 1),
(3802, 235, 'Al Mahrah', 'MR', 1),
(3803, 235, 'Al Mahwit', 'MW', 1),
(3804, 235, 'Sa\'dah', 'SD', 1),
(3805, 235, 'San\'a', 'SN', 1),
(3806, 235, 'Shabwah', 'SH', 1),
(3807, 235, 'Ta\'izz', 'TA', 1),
(3812, 237, 'Bas-Congo', 'BC', 1),
(3813, 237, 'Bandundu', 'BN', 1),
(3814, 237, 'Equateur', 'EQ', 1),
(3815, 237, 'Katanga', 'KA', 1),
(3816, 237, 'Kasai-Oriental', 'KE', 1),
(3817, 237, 'Kinshasa', 'KN', 1),
(3818, 237, 'Kasai-Occidental', 'KW', 1),
(3819, 237, 'Maniema', 'MA', 1),
(3820, 237, 'Nord-Kivu', 'NK', 1),
(3821, 237, 'Orientale', 'OR', 1),
(3822, 237, 'Sud-Kivu', 'SK', 1),
(3823, 238, 'Central', 'CE', 1),
(3824, 238, 'Copperbelt', 'CB', 1),
(3825, 238, 'Eastern', 'EA', 1),
(3826, 238, 'Luapula', 'LP', 1),
(3827, 238, 'Lusaka', 'LK', 1),
(3828, 238, 'Northern', 'NO', 1),
(3829, 238, 'North-Western', 'NW', 1),
(3830, 238, 'Southern', 'SO', 1),
(3831, 238, 'Western', 'WE', 1),
(3832, 239, 'Bulawayo', 'BU', 1),
(3833, 239, 'Harare', 'HA', 1),
(3834, 239, 'Manicaland', 'ML', 1),
(3835, 239, 'Mashonaland Central', 'MC', 1),
(3836, 239, 'Mashonaland East', 'ME', 1),
(3837, 239, 'Mashonaland West', 'MW', 1),
(3838, 239, 'Masvingo', 'MV', 1),
(3839, 239, 'Matabeleland North', 'MN', 1),
(3840, 239, 'Matabeleland South', 'MS', 1),
(3841, 239, 'Midlands', 'MD', 1),
(3861, 105, 'Campobasso', 'CB', 1),
(3862, 105, 'Carbonia-Iglesias', 'CI', 1),
(3863, 105, 'Caserta', 'CE', 1),
(3864, 105, 'Catania', 'CT', 1),
(3865, 105, 'Catanzaro', 'CZ', 1),
(3866, 105, 'Chieti', 'CH', 1),
(3867, 105, 'Como', 'CO', 1),
(3868, 105, 'Cosenza', 'CS', 1),
(3869, 105, 'Cremona', 'CR', 1),
(3870, 105, 'Crotone', 'KR', 1),
(3871, 105, 'Cuneo', 'CN', 1),
(3872, 105, 'Enna', 'EN', 1),
(3873, 105, 'Ferrara', 'FE', 1),
(3874, 105, 'Firenze', 'FI', 1),
(3875, 105, 'Foggia', 'FG', 1),
(3876, 105, 'Forli-Cesena', 'FC', 1),
(3877, 105, 'Frosinone', 'FR', 1),
(3878, 105, 'Genova', 'GE', 1),
(3879, 105, 'Gorizia', 'GO', 1),
(3880, 105, 'Grosseto', 'GR', 1),
(3881, 105, 'Imperia', 'IM', 1),
(3882, 105, 'Isernia', 'IS', 1),
(3883, 105, 'L&#39;Aquila', 'AQ', 1),
(3884, 105, 'La Spezia', 'SP', 1),
(3885, 105, 'Latina', 'LT', 1),
(3886, 105, 'Lecce', 'LE', 1),
(3887, 105, 'Lecco', 'LC', 1),
(3888, 105, 'Livorno', 'LI', 1),
(3889, 105, 'Lodi', 'LO', 1),
(3890, 105, 'Lucca', 'LU', 1),
(3891, 105, 'Macerata', 'MC', 1),
(3892, 105, 'Mantova', 'MN', 1),
(3893, 105, 'Massa-Carrara', 'MS', 1),
(3894, 105, 'Matera', 'MT', 1),
(3895, 105, 'Medio Campidano', 'VS', 1),
(3896, 105, 'Messina', 'ME', 1),
(3897, 105, 'Milano', 'MI', 1),
(3898, 105, 'Modena', 'MO', 1),
(3899, 105, 'Napoli', 'NA', 1),
(3900, 105, 'Novara', 'NO', 1),
(3901, 105, 'Nuoro', 'NU', 1),
(3902, 105, 'Ogliastra', 'OG', 1),
(3903, 105, 'Olbia-Tempio', 'OT', 1),
(3904, 105, 'Oristano', 'OR', 1),
(3905, 105, 'Padova', 'PD', 1),
(3906, 105, 'Palermo', 'PA', 1),
(3907, 105, 'Parma', 'PR', 1),
(3908, 105, 'Pavia', 'PV', 1),
(3909, 105, 'Perugia', 'PG', 1),
(3910, 105, 'Pesaro e Urbino', 'PU', 1),
(3911, 105, 'Pescara', 'PE', 1),
(3912, 105, 'Piacenza', 'PC', 1),
(3913, 105, 'Pisa', 'PI', 1),
(3914, 105, 'Pistoia', 'PT', 1),
(3915, 105, 'Pordenone', 'PN', 1),
(3916, 105, 'Potenza', 'PZ', 1),
(3917, 105, 'Prato', 'PO', 1),
(3918, 105, 'Ragusa', 'RG', 1),
(3919, 105, 'Ravenna', 'RA', 1),
(3920, 105, 'Reggio Calabria', 'RC', 1),
(3921, 105, 'Reggio Emilia', 'RE', 1),
(3922, 105, 'Rieti', 'RI', 1),
(3923, 105, 'Rimini', 'RN', 1),
(3924, 105, 'Roma', 'RM', 1),
(3925, 105, 'Rovigo', 'RO', 1),
(3926, 105, 'Salerno', 'SA', 1),
(3927, 105, 'Sassari', 'SS', 1),
(3928, 105, 'Savona', 'SV', 1),
(3929, 105, 'Siena', 'SI', 1),
(3930, 105, 'Siracusa', 'SR', 1),
(3931, 105, 'Sondrio', 'SO', 1),
(3932, 105, 'Taranto', 'TA', 1),
(3933, 105, 'Teramo', 'TE', 1),
(3934, 105, 'Terni', 'TR', 1),
(3935, 105, 'Torino', 'TO', 1),
(3936, 105, 'Trapani', 'TP', 1),
(3937, 105, 'Trento', 'TN', 1),
(3938, 105, 'Treviso', 'TV', 1),
(3939, 105, 'Trieste', 'TS', 1),
(3940, 105, 'Udine', 'UD', 1),
(3941, 105, 'Varese', 'VA', 1),
(3942, 105, 'Venezia', 'VE', 1),
(3943, 105, 'Verbano-Cusio-Ossola', 'VB', 1),
(3944, 105, 'Vercelli', 'VC', 1),
(3945, 105, 'Verona', 'VR', 1),
(3946, 105, 'Vibo Valentia', 'VV', 1),
(3947, 105, 'Vicenza', 'VI', 1),
(3948, 105, 'Viterbo', 'VT', 1),
(3949, 222, 'County Antrim', 'ANT', 1),
(3950, 222, 'County Armagh', 'ARM', 1),
(3951, 222, 'County Down', 'DOW', 1),
(3952, 222, 'County Fermanagh', 'FER', 1),
(3953, 222, 'County Londonderry', 'LDY', 1),
(3954, 222, 'County Tyrone', 'TYR', 1),
(3955, 222, 'Cumbria', 'CMA', 1),
(3956, 190, 'Pomurska', '1', 1),
(3957, 190, 'Podravska', '2', 1),
(3958, 190, 'Koroška', '3', 1),
(3959, 190, 'Savinjska', '4', 1),
(3960, 190, 'Zasavska', '5', 1),
(3961, 190, 'Spodnjeposavska', '6', 1),
(3962, 190, 'Jugovzhodna Slovenija', '7', 1),
(3963, 190, 'Osrednjeslovenska', '8', 1),
(3964, 190, 'Gorenjska', '9', 1),
(3965, 190, 'Notranjsko-kraška', '10', 1),
(3966, 190, 'Goriška', '11', 1),
(3967, 190, 'Obalno-kraška', '12', 1),
(3968, 33, 'Ruse', '', 1),
(3969, 101, 'Alborz', 'ALB', 1),
(3970, 21, 'Brussels-Capital Region', 'BRU', 1),
(3971, 138, 'Aguascalientes', 'AG', 1),
(3973, 242, 'Andrijevica', '01', 1),
(3974, 242, 'Bar', '02', 1),
(3975, 242, 'Berane', '03', 1),
(3976, 242, 'Bijelo Polje', '04', 1),
(3977, 242, 'Budva', '05', 1),
(3978, 242, 'Cetinje', '06', 1),
(3979, 242, 'Danilovgrad', '07', 1),
(3980, 242, 'Herceg-Novi', '08', 1),
(3981, 242, 'Kolašin', '09', 1),
(3982, 242, 'Kotor', '10', 1),
(3983, 242, 'Mojkovac', '11', 1),
(3984, 242, 'Nikšić', '12', 1),
(3985, 242, 'Plav', '13', 1),
(3986, 242, 'Pljevlja', '14', 1),
(3987, 242, 'Plužine', '15', 1),
(3988, 242, 'Podgorica', '16', 1),
(3989, 242, 'Rožaje', '17', 1),
(3990, 242, 'Šavnik', '18', 1),
(3991, 242, 'Tivat', '19', 1),
(3992, 242, 'Ulcinj', '20', 1),
(3993, 242, 'Žabljak', '21', 1),
(3994, 243, 'Belgrade', '00', 1),
(3995, 243, 'North Bačka', '01', 1),
(3996, 243, 'Central Banat', '02', 1),
(3997, 243, 'North Banat', '03', 1),
(3998, 243, 'South Banat', '04', 1),
(3999, 243, 'West Bačka', '05', 1),
(4000, 243, 'South Bačka', '06', 1),
(4001, 243, 'Srem', '07', 1),
(4002, 243, 'Mačva', '08', 1),
(4003, 243, 'Kolubara', '09', 1),
(4004, 243, 'Podunavlje', '10', 1),
(4005, 243, 'Braničevo', '11', 1),
(4006, 243, 'Šumadija', '12', 1),
(4007, 243, 'Pomoravlje', '13', 1),
(4008, 243, 'Bor', '14', 1),
(4009, 243, 'Zaječar', '15', 1),
(4010, 243, 'Zlatibor', '16', 1),
(4011, 243, 'Moravica', '17', 1),
(4012, 243, 'Raška', '18', 1),
(4013, 243, 'Rasina', '19', 1),
(4014, 243, 'Nišava', '20', 1),
(4015, 243, 'Toplica', '21', 1),
(4016, 243, 'Pirot', '22', 1),
(4017, 243, 'Jablanica', '23', 1),
(4018, 243, 'Pčinja', '24', 1),
(4020, 245, 'Bonaire', 'BO', 1),
(4021, 245, 'Saba', 'SA', 1),
(4022, 245, 'Sint Eustatius', 'SE', 1),
(4023, 248, 'Central Equatoria', 'EC', 1),
(4024, 248, 'Eastern Equatoria', 'EE', 1),
(4025, 248, 'Jonglei', 'JG', 1),
(4026, 248, 'Lakes', 'LK', 1),
(4027, 248, 'Northern Bahr el-Ghazal', 'BN', 1),
(4028, 248, 'Unity', 'UY', 1),
(4029, 248, 'Upper Nile', 'NU', 1),
(4030, 248, 'Warrap', 'WR', 1),
(4031, 248, 'Western Bahr el-Ghazal', 'BW', 1),
(4032, 248, 'Western Equatoria', 'EW', 1),
(4036, 117, 'Ainaži, Salacgrīvas novads', '0661405', 1),
(4037, 117, 'Aizkraukle, Aizkraukles novads', '0320201', 1),
(4038, 117, 'Aizkraukles novads', '0320200', 1),
(4039, 117, 'Aizpute, Aizputes novads', '0640605', 1),
(4040, 117, 'Aizputes novads', '0640600', 1),
(4041, 117, 'Aknīste, Aknīstes novads', '0560805', 1),
(4042, 117, 'Aknīstes novads', '0560800', 1),
(4043, 117, 'Aloja, Alojas novads', '0661007', 1),
(4044, 117, 'Alojas novads', '0661000', 1),
(4045, 117, 'Alsungas novads', '0624200', 1),
(4046, 117, 'Alūksne, Alūksnes novads', '0360201', 1),
(4047, 117, 'Alūksnes novads', '0360200', 1),
(4048, 117, 'Amatas novads', '0424701', 1),
(4049, 117, 'Ape, Apes novads', '0360805', 1),
(4050, 117, 'Apes novads', '0360800', 1),
(4051, 117, 'Auce, Auces novads', '0460805', 1),
(4052, 117, 'Auces novads', '0460800', 1),
(4053, 117, 'Ādažu novads', '0804400', 1),
(4054, 117, 'Babītes novads', '0804900', 1),
(4055, 117, 'Baldone, Baldones novads', '0800605', 1),
(4056, 117, 'Baldones novads', '0800600', 1),
(4057, 117, 'Baloži, Ķekavas novads', '0800807', 1),
(4058, 117, 'Baltinavas novads', '0384400', 1),
(4059, 117, 'Balvi, Balvu novads', '0380201', 1),
(4060, 117, 'Balvu novads', '0380200', 1),
(4061, 117, 'Bauska, Bauskas novads', '0400201', 1),
(4062, 117, 'Bauskas novads', '0400200', 1),
(4063, 117, 'Beverīnas novads', '0964700', 1),
(4064, 117, 'Brocēni, Brocēnu novads', '0840605', 1),
(4065, 117, 'Brocēnu novads', '0840601', 1),
(4066, 117, 'Burtnieku novads', '0967101', 1),
(4067, 117, 'Carnikavas novads', '0805200', 1),
(4068, 117, 'Cesvaine, Cesvaines novads', '0700807', 1),
(4069, 117, 'Cesvaines novads', '0700800', 1),
(4070, 117, 'Cēsis, Cēsu novads', '0420201', 1),
(4071, 117, 'Cēsu novads', '0420200', 1),
(4072, 117, 'Ciblas novads', '0684901', 1),
(4073, 117, 'Dagda, Dagdas novads', '0601009', 1),
(4074, 117, 'Dagdas novads', '0601000', 1),
(4075, 117, 'Daugavpils', '0050000', 1),
(4076, 117, 'Daugavpils novads', '0440200', 1),
(4077, 117, 'Dobele, Dobeles novads', '0460201', 1),
(4078, 117, 'Dobeles novads', '0460200', 1),
(4079, 117, 'Dundagas novads', '0885100', 1),
(4080, 117, 'Durbe, Durbes novads', '0640807', 1),
(4081, 117, 'Durbes novads', '0640801', 1),
(4082, 117, 'Engures novads', '0905100', 1),
(4083, 117, 'Ērgļu novads', '0705500', 1),
(4084, 117, 'Garkalnes novads', '0806000', 1),
(4085, 117, 'Grobiņa, Grobiņas novads', '0641009', 1),
(4086, 117, 'Grobiņas novads', '0641000', 1),
(4087, 117, 'Gulbene, Gulbenes novads', '0500201', 1),
(4088, 117, 'Gulbenes novads', '0500200', 1),
(4089, 117, 'Iecavas novads', '0406400', 1),
(4090, 117, 'Ikšķile, Ikšķiles novads', '0740605', 1),
(4091, 117, 'Ikšķiles novads', '0740600', 1),
(4092, 117, 'Ilūkste, Ilūkstes novads', '0440807', 1),
(4093, 117, 'Ilūkstes novads', '0440801', 1),
(4094, 117, 'Inčukalna novads', '0801800', 1),
(4095, 117, 'Jaunjelgava, Jaunjelgavas novads', '0321007', 1),
(4096, 117, 'Jaunjelgavas novads', '0321000', 1),
(4097, 117, 'Jaunpiebalgas novads', '0425700', 1),
(4098, 117, 'Jaunpils novads', '0905700', 1),
(4099, 117, 'Jelgava', '0090000', 1),
(4100, 117, 'Jelgavas novads', '0540200', 1),
(4101, 117, 'Jēkabpils', '0110000', 1),
(4102, 117, 'Jēkabpils novads', '0560200', 1),
(4103, 117, 'Jūrmala', '0130000', 1),
(4104, 117, 'Kalnciems, Jelgavas novads', '0540211', 1),
(4105, 117, 'Kandava, Kandavas novads', '0901211', 1),
(4106, 117, 'Kandavas novads', '0901201', 1),
(4107, 117, 'Kārsava, Kārsavas novads', '0681009', 1),
(4108, 117, 'Kārsavas novads', '0681000', 1),
(4109, 117, 'Kocēnu novads ,bij. Valmieras)', '0960200', 1),
(4110, 117, 'Kokneses novads', '0326100', 1),
(4111, 117, 'Krāslava, Krāslavas novads', '0600201', 1),
(4112, 117, 'Krāslavas novads', '0600202', 1),
(4113, 117, 'Krimuldas novads', '0806900', 1),
(4114, 117, 'Krustpils novads', '0566900', 1),
(4115, 117, 'Kuldīga, Kuldīgas novads', '0620201', 1),
(4116, 117, 'Kuldīgas novads', '0620200', 1),
(4117, 117, 'Ķeguma novads', '0741001', 1),
(4118, 117, 'Ķegums, Ķeguma novads', '0741009', 1),
(4119, 117, 'Ķekavas novads', '0800800', 1),
(4120, 117, 'Lielvārde, Lielvārdes novads', '0741413', 1),
(4121, 117, 'Lielvārdes novads', '0741401', 1),
(4122, 117, 'Liepāja', '0170000', 1),
(4123, 117, 'Limbaži, Limbažu novads', '0660201', 1),
(4124, 117, 'Limbažu novads', '0660200', 1),
(4125, 117, 'Līgatne, Līgatnes novads', '0421211', 1),
(4126, 117, 'Līgatnes novads', '0421200', 1),
(4127, 117, 'Līvāni, Līvānu novads', '0761211', 1),
(4128, 117, 'Līvānu novads', '0761201', 1),
(4129, 117, 'Lubāna, Lubānas novads', '0701413', 1),
(4130, 117, 'Lubānas novads', '0701400', 1),
(4131, 117, 'Ludza, Ludzas novads', '0680201', 1),
(4132, 117, 'Ludzas novads', '0680200', 1),
(4133, 117, 'Madona, Madonas novads', '0700201', 1),
(4134, 117, 'Madonas novads', '0700200', 1),
(4135, 117, 'Mazsalaca, Mazsalacas novads', '0961011', 1),
(4136, 117, 'Mazsalacas novads', '0961000', 1),
(4137, 117, 'Mālpils novads', '0807400', 1),
(4138, 117, 'Mārupes novads', '0807600', 1),
(4139, 117, 'Mērsraga novads', '0887600', 1),
(4140, 117, 'Naukšēnu novads', '0967300', 1),
(4141, 117, 'Neretas novads', '0327100', 1),
(4142, 117, 'Nīcas novads', '0647900', 1),
(4143, 117, 'Ogre, Ogres novads', '0740201', 1),
(4144, 117, 'Ogres novads', '0740202', 1),
(4145, 117, 'Olaine, Olaines novads', '0801009', 1),
(4146, 117, 'Olaines novads', '0801000', 1),
(4147, 117, 'Ozolnieku novads', '0546701', 1),
(4148, 117, 'Pārgaujas novads', '0427500', 1),
(4149, 117, 'Pāvilosta, Pāvilostas novads', '0641413', 1),
(4150, 117, 'Pāvilostas novads', '0641401', 1),
(4151, 117, 'Piltene, Ventspils novads', '0980213', 1),
(4152, 117, 'Pļaviņas, Pļaviņu novads', '0321413', 1),
(4153, 117, 'Pļaviņu novads', '0321400', 1),
(4154, 117, 'Preiļi, Preiļu novads', '0760201', 1),
(4155, 117, 'Preiļu novads', '0760202', 1),
(4156, 117, 'Priekule, Priekules novads', '0641615', 1),
(4157, 117, 'Priekules novads', '0641600', 1),
(4158, 117, 'Priekuļu novads', '0427300', 1),
(4159, 117, 'Raunas novads', '0427700', 1),
(4160, 117, 'Rēzekne', '0210000', 1),
(4161, 117, 'Rēzeknes novads', '0780200', 1),
(4162, 117, 'Riebiņu novads', '0766300', 1),
(4163, 117, 'Rīga', '0010000', 1),
(4164, 117, 'Rojas novads', '0888300', 1),
(4165, 117, 'Ropažu novads', '0808400', 1),
(4166, 117, 'Rucavas novads', '0648500', 1),
(4167, 117, 'Rugāju novads', '0387500', 1),
(4168, 117, 'Rundāles novads', '0407700', 1),
(4169, 117, 'Rūjiena, Rūjienas novads', '0961615', 1),
(4170, 117, 'Rūjienas novads', '0961600', 1),
(4171, 117, 'Sabile, Talsu novads', '0880213', 1),
(4172, 117, 'Salacgrīva, Salacgrīvas novads', '0661415', 1),
(4173, 117, 'Salacgrīvas novads', '0661400', 1),
(4174, 117, 'Salas novads', '0568700', 1),
(4175, 117, 'Salaspils novads', '0801200', 1),
(4176, 117, 'Salaspils, Salaspils novads', '0801211', 1),
(4177, 117, 'Saldus novads', '0840200', 1),
(4178, 117, 'Saldus, Saldus novads', '0840201', 1),
(4179, 117, 'Saulkrasti, Saulkrastu novads', '0801413', 1),
(4180, 117, 'Saulkrastu novads', '0801400', 1),
(4181, 117, 'Seda, Strenču novads', '0941813', 1),
(4182, 117, 'Sējas novads', '0809200', 1),
(4183, 117, 'Sigulda, Siguldas novads', '0801615', 1),
(4184, 117, 'Siguldas novads', '0801601', 1),
(4185, 117, 'Skrīveru novads', '0328200', 1),
(4186, 117, 'Skrunda, Skrundas novads', '0621209', 1),
(4187, 117, 'Skrundas novads', '0621200', 1),
(4188, 117, 'Smiltene, Smiltenes novads', '0941615', 1),
(4189, 117, 'Smiltenes novads', '0941600', 1),
(4190, 117, 'Staicele, Alojas novads', '0661017', 1),
(4191, 117, 'Stende, Talsu novads', '0880215', 1),
(4192, 117, 'Stopiņu novads', '0809600', 1),
(4193, 117, 'Strenči, Strenču novads', '0941817', 1),
(4194, 117, 'Strenču novads', '0941800', 1),
(4195, 117, 'Subate, Ilūkstes novads', '0440815', 1),
(4196, 117, 'Talsi, Talsu novads', '0880201', 1),
(4197, 117, 'Talsu novads', '0880200', 1),
(4198, 117, 'Tērvetes novads', '0468900', 1),
(4199, 117, 'Tukuma novads', '0900200', 1),
(4200, 117, 'Tukums, Tukuma novads', '0900201', 1),
(4201, 117, 'Vaiņodes novads', '0649300', 1),
(4202, 117, 'Valdemārpils, Talsu novads', '0880217', 1),
(4203, 117, 'Valka, Valkas novads', '0940201', 1),
(4204, 117, 'Valkas novads', '0940200', 1),
(4205, 117, 'Valmiera', '0250000', 1),
(4206, 117, 'Vangaži, Inčukalna novads', '0801817', 1),
(4207, 117, 'Varakļāni, Varakļānu novads', '0701817', 1),
(4208, 117, 'Varakļānu novads', '0701800', 1),
(4209, 117, 'Vārkavas novads', '0769101', 1),
(4210, 117, 'Vecpiebalgas novads', '0429300', 1),
(4211, 117, 'Vecumnieku novads', '0409500', 1),
(4212, 117, 'Ventspils', '0270000', 1),
(4213, 117, 'Ventspils novads', '0980200', 1),
(4214, 117, 'Viesīte, Viesītes novads', '0561815', 1),
(4215, 117, 'Viesītes novads', '0561800', 1),
(4216, 117, 'Viļaka, Viļakas novads', '0381615', 1),
(4217, 117, 'Viļakas novads', '0381600', 1),
(4218, 117, 'Viļāni, Viļānu novads', '0781817', 1),
(4219, 117, 'Viļānu novads', '0781800', 1),
(4220, 117, 'Zilupe, Zilupes novads', '0681817', 1),
(4221, 117, 'Zilupes novads', '0681801', 1),
(4222, 43, 'Arica y Parinacota', 'AP', 1),
(4223, 43, 'Los Rios', 'LR', 1),
(4224, 220, 'Kharkivs\'ka Oblast\'', '63', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_zone_to_geo_zone`
--

CREATE TABLE `oc_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_zone_to_geo_zone`
--

INSERT INTO `oc_zone_to_geo_zone` (`zone_to_geo_zone_id`, `country_id`, `zone_id`, `geo_zone_id`, `date_added`, `date_modified`) VALUES
(1, 222, 0, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 222, 3513, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 222, 3514, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 222, 3515, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 222, 3516, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 222, 3517, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 222, 3518, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 222, 3519, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 222, 3520, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 222, 3521, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 222, 3522, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 222, 3523, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 222, 3524, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 222, 3525, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 222, 3526, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 222, 3527, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 222, 3528, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 222, 3529, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 222, 3530, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 222, 3531, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 222, 3532, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 222, 3533, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 222, 3534, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 222, 3535, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 222, 3536, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 222, 3537, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 222, 3538, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 222, 3539, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 222, 3540, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 222, 3541, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 222, 3542, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 222, 3543, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 222, 3544, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 222, 3545, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 222, 3546, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 222, 3547, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 222, 3548, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 222, 3549, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 222, 3550, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 222, 3551, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 222, 3552, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 222, 3553, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 222, 3554, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 222, 3555, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 222, 3556, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 222, 3557, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 222, 3558, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 222, 3559, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 222, 3560, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 222, 3561, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 222, 3562, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 222, 3563, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 222, 3564, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 222, 3565, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 222, 3566, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 222, 3567, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 222, 3568, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 222, 3569, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 222, 3570, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 222, 3571, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 222, 3572, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 222, 3573, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 222, 3574, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 222, 3575, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 222, 3576, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 222, 3577, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 222, 3578, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 222, 3579, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 222, 3580, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 222, 3581, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 222, 3582, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 222, 3583, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 222, 3584, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 222, 3585, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 222, 3586, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 222, 3587, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 222, 3588, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 222, 3589, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 222, 3590, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 222, 3591, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 222, 3592, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 222, 3593, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 222, 3594, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 222, 3595, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 222, 3596, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 222, 3597, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 222, 3598, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 222, 3599, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 222, 3600, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 222, 3601, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 222, 3602, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 222, 3603, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 222, 3604, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 222, 3605, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 222, 3606, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 222, 3607, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 222, 3608, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 222, 3609, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 222, 3610, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 222, 3611, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 222, 3612, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 222, 3949, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 222, 3950, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 222, 3951, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 222, 3952, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 222, 3953, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 222, 3954, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 222, 3955, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 222, 3972, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `oc_address`
--
ALTER TABLE `oc_address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `oc_affiliate`
--
ALTER TABLE `oc_affiliate`
  ADD PRIMARY KEY (`affiliate_id`);

--
-- Indexes for table `oc_affiliate_activity`
--
ALTER TABLE `oc_affiliate_activity`
  ADD PRIMARY KEY (`activity_id`);

--
-- Indexes for table `oc_affiliate_login`
--
ALTER TABLE `oc_affiliate_login`
  ADD PRIMARY KEY (`affiliate_login_id`),
  ADD KEY `email` (`email`),
  ADD KEY `ip` (`ip`);

--
-- Indexes for table `oc_affiliate_transaction`
--
ALTER TABLE `oc_affiliate_transaction`
  ADD PRIMARY KEY (`affiliate_transaction_id`);

--
-- Indexes for table `oc_api`
--
ALTER TABLE `oc_api`
  ADD PRIMARY KEY (`api_id`);

--
-- Indexes for table `oc_attribute`
--
ALTER TABLE `oc_attribute`
  ADD PRIMARY KEY (`attribute_id`);

--
-- Indexes for table `oc_attribute_description`
--
ALTER TABLE `oc_attribute_description`
  ADD PRIMARY KEY (`attribute_id`,`language_id`);

--
-- Indexes for table `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
  ADD PRIMARY KEY (`attribute_group_id`);

--
-- Indexes for table `oc_attribute_group_description`
--
ALTER TABLE `oc_attribute_group_description`
  ADD PRIMARY KEY (`attribute_group_id`,`language_id`);

--
-- Indexes for table `oc_banner`
--
ALTER TABLE `oc_banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
  ADD PRIMARY KEY (`banner_image_id`);

--
-- Indexes for table `oc_banner_image_description`
--
ALTER TABLE `oc_banner_image_description`
  ADD PRIMARY KEY (`banner_image_id`,`language_id`);

--
-- Indexes for table `oc_category`
--
ALTER TABLE `oc_category`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `oc_category_description`
--
ALTER TABLE `oc_category_description`
  ADD PRIMARY KEY (`category_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `oc_category_filter`
--
ALTER TABLE `oc_category_filter`
  ADD PRIMARY KEY (`category_id`,`filter_id`);

--
-- Indexes for table `oc_category_path`
--
ALTER TABLE `oc_category_path`
  ADD PRIMARY KEY (`category_id`,`path_id`);

--
-- Indexes for table `oc_category_to_layout`
--
ALTER TABLE `oc_category_to_layout`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Indexes for table `oc_category_to_store`
--
ALTER TABLE `oc_category_to_store`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Indexes for table `oc_country`
--
ALTER TABLE `oc_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `oc_coupon`
--
ALTER TABLE `oc_coupon`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `oc_coupon_category`
--
ALTER TABLE `oc_coupon_category`
  ADD PRIMARY KEY (`coupon_id`,`category_id`);

--
-- Indexes for table `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
  ADD PRIMARY KEY (`coupon_history_id`);

--
-- Indexes for table `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
  ADD PRIMARY KEY (`coupon_product_id`);

--
-- Indexes for table `oc_currency`
--
ALTER TABLE `oc_currency`
  ADD PRIMARY KEY (`currency_id`);

--
-- Indexes for table `oc_customer`
--
ALTER TABLE `oc_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `oc_customer_activity`
--
ALTER TABLE `oc_customer_activity`
  ADD PRIMARY KEY (`activity_id`);

--
-- Indexes for table `oc_customer_ban_ip`
--
ALTER TABLE `oc_customer_ban_ip`
  ADD PRIMARY KEY (`customer_ban_ip_id`),
  ADD KEY `ip` (`ip`);

--
-- Indexes for table `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
  ADD PRIMARY KEY (`customer_group_id`);

--
-- Indexes for table `oc_customer_group_description`
--
ALTER TABLE `oc_customer_group_description`
  ADD PRIMARY KEY (`customer_group_id`,`language_id`);

--
-- Indexes for table `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
  ADD PRIMARY KEY (`customer_history_id`);

--
-- Indexes for table `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
  ADD PRIMARY KEY (`customer_ip_id`),
  ADD KEY `ip` (`ip`);

--
-- Indexes for table `oc_customer_login`
--
ALTER TABLE `oc_customer_login`
  ADD PRIMARY KEY (`customer_login_id`),
  ADD KEY `email` (`email`),
  ADD KEY `ip` (`ip`);

--
-- Indexes for table `oc_customer_online`
--
ALTER TABLE `oc_customer_online`
  ADD PRIMARY KEY (`ip`);

--
-- Indexes for table `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
  ADD PRIMARY KEY (`customer_reward_id`);

--
-- Indexes for table `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
  ADD PRIMARY KEY (`customer_transaction_id`);

--
-- Indexes for table `oc_custom_field`
--
ALTER TABLE `oc_custom_field`
  ADD PRIMARY KEY (`custom_field_id`);

--
-- Indexes for table `oc_custom_field_customer_group`
--
ALTER TABLE `oc_custom_field_customer_group`
  ADD PRIMARY KEY (`custom_field_id`,`customer_group_id`);

--
-- Indexes for table `oc_custom_field_description`
--
ALTER TABLE `oc_custom_field_description`
  ADD PRIMARY KEY (`custom_field_id`,`language_id`);

--
-- Indexes for table `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
  ADD PRIMARY KEY (`custom_field_value_id`);

--
-- Indexes for table `oc_custom_field_value_description`
--
ALTER TABLE `oc_custom_field_value_description`
  ADD PRIMARY KEY (`custom_field_value_id`,`language_id`);

--
-- Indexes for table `oc_download`
--
ALTER TABLE `oc_download`
  ADD PRIMARY KEY (`download_id`);

--
-- Indexes for table `oc_download_description`
--
ALTER TABLE `oc_download_description`
  ADD PRIMARY KEY (`download_id`,`language_id`);

--
-- Indexes for table `oc_event`
--
ALTER TABLE `oc_event`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `oc_extension`
--
ALTER TABLE `oc_extension`
  ADD PRIMARY KEY (`extension_id`);

--
-- Indexes for table `oc_filter`
--
ALTER TABLE `oc_filter`
  ADD PRIMARY KEY (`filter_id`);

--
-- Indexes for table `oc_filter_description`
--
ALTER TABLE `oc_filter_description`
  ADD PRIMARY KEY (`filter_id`,`language_id`);

--
-- Indexes for table `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
  ADD PRIMARY KEY (`filter_group_id`);

--
-- Indexes for table `oc_filter_group_description`
--
ALTER TABLE `oc_filter_group_description`
  ADD PRIMARY KEY (`filter_group_id`,`language_id`);

--
-- Indexes for table `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
  ADD PRIMARY KEY (`geo_zone_id`);

--
-- Indexes for table `oc_information`
--
ALTER TABLE `oc_information`
  ADD PRIMARY KEY (`information_id`);

--
-- Indexes for table `oc_information_description`
--
ALTER TABLE `oc_information_description`
  ADD PRIMARY KEY (`information_id`,`language_id`);

--
-- Indexes for table `oc_information_to_layout`
--
ALTER TABLE `oc_information_to_layout`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Indexes for table `oc_information_to_store`
--
ALTER TABLE `oc_information_to_store`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Indexes for table `oc_language`
--
ALTER TABLE `oc_language`
  ADD PRIMARY KEY (`language_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `oc_layout`
--
ALTER TABLE `oc_layout`
  ADD PRIMARY KEY (`layout_id`);

--
-- Indexes for table `oc_layout_module`
--
ALTER TABLE `oc_layout_module`
  ADD PRIMARY KEY (`layout_module_id`);

--
-- Indexes for table `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
  ADD PRIMARY KEY (`layout_route_id`);

--
-- Indexes for table `oc_length_class`
--
ALTER TABLE `oc_length_class`
  ADD PRIMARY KEY (`length_class_id`);

--
-- Indexes for table `oc_length_class_description`
--
ALTER TABLE `oc_length_class_description`
  ADD PRIMARY KEY (`length_class_id`,`language_id`);

--
-- Indexes for table `oc_location`
--
ALTER TABLE `oc_location`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Indexes for table `oc_manufacturer_to_store`
--
ALTER TABLE `oc_manufacturer_to_store`
  ADD PRIMARY KEY (`manufacturer_id`,`store_id`);

--
-- Indexes for table `oc_marketing`
--
ALTER TABLE `oc_marketing`
  ADD PRIMARY KEY (`marketing_id`);

--
-- Indexes for table `oc_megamenu`
--
ALTER TABLE `oc_megamenu`
  ADD PRIMARY KEY (`megamenu_id`);

--
-- Indexes for table `oc_megamenu_description`
--
ALTER TABLE `oc_megamenu_description`
  ADD PRIMARY KEY (`megamenu_id`,`language_id`),
  ADD KEY `name` (`title`);

--
-- Indexes for table `oc_megamenu_widgets`
--
ALTER TABLE `oc_megamenu_widgets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oc_modification`
--
ALTER TABLE `oc_modification`
  ADD PRIMARY KEY (`modification_id`);

--
-- Indexes for table `oc_module`
--
ALTER TABLE `oc_module`
  ADD PRIMARY KEY (`module_id`);

--
-- Indexes for table `oc_option`
--
ALTER TABLE `oc_option`
  ADD PRIMARY KEY (`option_id`);

--
-- Indexes for table `oc_option_description`
--
ALTER TABLE `oc_option_description`
  ADD PRIMARY KEY (`option_id`,`language_id`);

--
-- Indexes for table `oc_option_value`
--
ALTER TABLE `oc_option_value`
  ADD PRIMARY KEY (`option_value_id`);

--
-- Indexes for table `oc_option_value_description`
--
ALTER TABLE `oc_option_value_description`
  ADD PRIMARY KEY (`option_value_id`,`language_id`);

--
-- Indexes for table `oc_order`
--
ALTER TABLE `oc_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `oc_order_custom_field`
--
ALTER TABLE `oc_order_custom_field`
  ADD PRIMARY KEY (`order_custom_field_id`);

--
-- Indexes for table `oc_order_fraud`
--
ALTER TABLE `oc_order_fraud`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `oc_order_history`
--
ALTER TABLE `oc_order_history`
  ADD PRIMARY KEY (`order_history_id`);

--
-- Indexes for table `oc_order_option`
--
ALTER TABLE `oc_order_option`
  ADD PRIMARY KEY (`order_option_id`);

--
-- Indexes for table `oc_order_product`
--
ALTER TABLE `oc_order_product`
  ADD PRIMARY KEY (`order_product_id`);

--
-- Indexes for table `oc_order_recurring`
--
ALTER TABLE `oc_order_recurring`
  ADD PRIMARY KEY (`order_recurring_id`);

--
-- Indexes for table `oc_order_recurring_transaction`
--
ALTER TABLE `oc_order_recurring_transaction`
  ADD PRIMARY KEY (`order_recurring_transaction_id`);

--
-- Indexes for table `oc_order_status`
--
ALTER TABLE `oc_order_status`
  ADD PRIMARY KEY (`order_status_id`,`language_id`);

--
-- Indexes for table `oc_order_total`
--
ALTER TABLE `oc_order_total`
  ADD PRIMARY KEY (`order_total_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
  ADD PRIMARY KEY (`order_voucher_id`);

--
-- Indexes for table `oc_pavblog_blog`
--
ALTER TABLE `oc_pavblog_blog`
  ADD PRIMARY KEY (`blog_id`);

--
-- Indexes for table `oc_pavblog_category`
--
ALTER TABLE `oc_pavblog_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `oc_pavblog_category_description`
--
ALTER TABLE `oc_pavblog_category_description`
  ADD PRIMARY KEY (`category_id`,`language_id`),
  ADD KEY `name` (`title`);

--
-- Indexes for table `oc_pavblog_comment`
--
ALTER TABLE `oc_pavblog_comment`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `FK_blog_comment` (`blog_id`);

--
-- Indexes for table `oc_pavnewsletter_email`
--
ALTER TABLE `oc_pavnewsletter_email`
  ADD PRIMARY KEY (`email_id`);

--
-- Indexes for table `oc_pavnewsletter_history`
--
ALTER TABLE `oc_pavnewsletter_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oc_pavnewsletter_subscribe`
--
ALTER TABLE `oc_pavnewsletter_subscribe`
  ADD PRIMARY KEY (`subscribe_id`);

--
-- Indexes for table `oc_pavnewsletter_template`
--
ALTER TABLE `oc_pavnewsletter_template`
  ADD PRIMARY KEY (`template_id`);

--
-- Indexes for table `oc_pavoslidergroups`
--
ALTER TABLE `oc_pavoslidergroups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oc_pavosliderlayers`
--
ALTER TABLE `oc_pavosliderlayers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `oc_pavwidget`
--
ALTER TABLE `oc_pavwidget`
  ADD PRIMARY KEY (`pavwidget_id`);

--
-- Indexes for table `oc_product`
--
ALTER TABLE `oc_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `oc_product_attribute`
--
ALTER TABLE `oc_product_attribute`
  ADD PRIMARY KEY (`product_id`,`attribute_id`,`language_id`);

--
-- Indexes for table `oc_product_description`
--
ALTER TABLE `oc_product_description`
  ADD PRIMARY KEY (`product_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
  ADD PRIMARY KEY (`product_discount_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_product_filter`
--
ALTER TABLE `oc_product_filter`
  ADD PRIMARY KEY (`product_id`,`filter_id`);

--
-- Indexes for table `oc_product_image`
--
ALTER TABLE `oc_product_image`
  ADD PRIMARY KEY (`product_image_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_product_option`
--
ALTER TABLE `oc_product_option`
  ADD PRIMARY KEY (`product_option_id`);

--
-- Indexes for table `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
  ADD PRIMARY KEY (`product_option_value_id`);

--
-- Indexes for table `oc_product_recurring`
--
ALTER TABLE `oc_product_recurring`
  ADD PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`);

--
-- Indexes for table `oc_product_related`
--
ALTER TABLE `oc_product_related`
  ADD PRIMARY KEY (`product_id`,`related_id`);

--
-- Indexes for table `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
  ADD PRIMARY KEY (`product_reward_id`);

--
-- Indexes for table `oc_product_special`
--
ALTER TABLE `oc_product_special`
  ADD PRIMARY KEY (`product_special_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_product_to_category`
--
ALTER TABLE `oc_product_to_category`
  ADD PRIMARY KEY (`product_id`,`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `oc_product_to_download`
--
ALTER TABLE `oc_product_to_download`
  ADD PRIMARY KEY (`product_id`,`download_id`);

--
-- Indexes for table `oc_product_to_layout`
--
ALTER TABLE `oc_product_to_layout`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Indexes for table `oc_product_to_store`
--
ALTER TABLE `oc_product_to_store`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Indexes for table `oc_recurring`
--
ALTER TABLE `oc_recurring`
  ADD PRIMARY KEY (`recurring_id`);

--
-- Indexes for table `oc_recurring_description`
--
ALTER TABLE `oc_recurring_description`
  ADD PRIMARY KEY (`recurring_id`,`language_id`);

--
-- Indexes for table `oc_return`
--
ALTER TABLE `oc_return`
  ADD PRIMARY KEY (`return_id`);

--
-- Indexes for table `oc_return_action`
--
ALTER TABLE `oc_return_action`
  ADD PRIMARY KEY (`return_action_id`,`language_id`);

--
-- Indexes for table `oc_return_history`
--
ALTER TABLE `oc_return_history`
  ADD PRIMARY KEY (`return_history_id`);

--
-- Indexes for table `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
  ADD PRIMARY KEY (`return_reason_id`,`language_id`);

--
-- Indexes for table `oc_return_status`
--
ALTER TABLE `oc_return_status`
  ADD PRIMARY KEY (`return_status_id`,`language_id`);

--
-- Indexes for table `oc_review`
--
ALTER TABLE `oc_review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_setting`
--
ALTER TABLE `oc_setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
  ADD PRIMARY KEY (`stock_status_id`,`language_id`);

--
-- Indexes for table `oc_store`
--
ALTER TABLE `oc_store`
  ADD PRIMARY KEY (`store_id`);

--
-- Indexes for table `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
  ADD PRIMARY KEY (`tax_class_id`);

--
-- Indexes for table `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
  ADD PRIMARY KEY (`tax_rate_id`);

--
-- Indexes for table `oc_tax_rate_to_customer_group`
--
ALTER TABLE `oc_tax_rate_to_customer_group`
  ADD PRIMARY KEY (`tax_rate_id`,`customer_group_id`);

--
-- Indexes for table `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
  ADD PRIMARY KEY (`tax_rule_id`);

--
-- Indexes for table `oc_upload`
--
ALTER TABLE `oc_upload`
  ADD PRIMARY KEY (`upload_id`);

--
-- Indexes for table `oc_url_alias`
--
ALTER TABLE `oc_url_alias`
  ADD PRIMARY KEY (`url_alias_id`),
  ADD KEY `query` (`query`),
  ADD KEY `keyword` (`keyword`);

--
-- Indexes for table `oc_user`
--
ALTER TABLE `oc_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `oc_user_group`
--
ALTER TABLE `oc_user_group`
  ADD PRIMARY KEY (`user_group_id`);

--
-- Indexes for table `oc_verticalmenu`
--
ALTER TABLE `oc_verticalmenu`
  ADD PRIMARY KEY (`verticalmenu_id`);

--
-- Indexes for table `oc_verticalmenu_description`
--
ALTER TABLE `oc_verticalmenu_description`
  ADD PRIMARY KEY (`verticalmenu_id`,`language_id`),
  ADD KEY `name` (`title`);

--
-- Indexes for table `oc_verticalmenu_widgets`
--
ALTER TABLE `oc_verticalmenu_widgets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oc_voucher`
--
ALTER TABLE `oc_voucher`
  ADD PRIMARY KEY (`voucher_id`);

--
-- Indexes for table `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
  ADD PRIMARY KEY (`voucher_history_id`);

--
-- Indexes for table `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
  ADD PRIMARY KEY (`voucher_theme_id`);

--
-- Indexes for table `oc_voucher_theme_description`
--
ALTER TABLE `oc_voucher_theme_description`
  ADD PRIMARY KEY (`voucher_theme_id`,`language_id`);

--
-- Indexes for table `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
  ADD PRIMARY KEY (`weight_class_id`);

--
-- Indexes for table `oc_weight_class_description`
--
ALTER TABLE `oc_weight_class_description`
  ADD PRIMARY KEY (`weight_class_id`,`language_id`);

--
-- Indexes for table `oc_zone`
--
ALTER TABLE `oc_zone`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
  ADD PRIMARY KEY (`zone_to_geo_zone_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `oc_address`
--
ALTER TABLE `oc_address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `oc_affiliate`
--
ALTER TABLE `oc_affiliate`
  MODIFY `affiliate_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_affiliate_activity`
--
ALTER TABLE `oc_affiliate_activity`
  MODIFY `activity_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_affiliate_login`
--
ALTER TABLE `oc_affiliate_login`
  MODIFY `affiliate_login_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_affiliate_transaction`
--
ALTER TABLE `oc_affiliate_transaction`
  MODIFY `affiliate_transaction_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_api`
--
ALTER TABLE `oc_api`
  MODIFY `api_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `oc_attribute`
--
ALTER TABLE `oc_attribute`
  MODIFY `attribute_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
  MODIFY `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `oc_banner`
--
ALTER TABLE `oc_banner`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
  MODIFY `banner_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;
--
-- AUTO_INCREMENT for table `oc_category`
--
ALTER TABLE `oc_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT for table `oc_country`
--
ALTER TABLE `oc_country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;
--
-- AUTO_INCREMENT for table `oc_coupon`
--
ALTER TABLE `oc_coupon`
  MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
  MODIFY `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
  MODIFY `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_currency`
--
ALTER TABLE `oc_currency`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `oc_customer`
--
ALTER TABLE `oc_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `oc_customer_activity`
--
ALTER TABLE `oc_customer_activity`
  MODIFY `activity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `oc_customer_ban_ip`
--
ALTER TABLE `oc_customer_ban_ip`
  MODIFY `customer_ban_ip_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
  MODIFY `customer_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
  MODIFY `customer_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
  MODIFY `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `oc_customer_login`
--
ALTER TABLE `oc_customer_login`
  MODIFY `customer_login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
  MODIFY `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
  MODIFY `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_custom_field`
--
ALTER TABLE `oc_custom_field`
  MODIFY `custom_field_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
  MODIFY `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_download`
--
ALTER TABLE `oc_download`
  MODIFY `download_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_event`
--
ALTER TABLE `oc_event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_extension`
--
ALTER TABLE `oc_extension`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=471;
--
-- AUTO_INCREMENT for table `oc_filter`
--
ALTER TABLE `oc_filter`
  MODIFY `filter_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
  MODIFY `filter_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
  MODIFY `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `oc_information`
--
ALTER TABLE `oc_information`
  MODIFY `information_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `oc_language`
--
ALTER TABLE `oc_language`
  MODIFY `language_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `oc_layout`
--
ALTER TABLE `oc_layout`
  MODIFY `layout_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `oc_layout_module`
--
ALTER TABLE `oc_layout_module`
  MODIFY `layout_module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=839;
--
-- AUTO_INCREMENT for table `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
  MODIFY `layout_route_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=344;
--
-- AUTO_INCREMENT for table `oc_length_class`
--
ALTER TABLE `oc_length_class`
  MODIFY `length_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `oc_length_class_description`
--
ALTER TABLE `oc_length_class_description`
  MODIFY `length_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `oc_location`
--
ALTER TABLE `oc_location`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
  MODIFY `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `oc_marketing`
--
ALTER TABLE `oc_marketing`
  MODIFY `marketing_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_megamenu`
--
ALTER TABLE `oc_megamenu`
  MODIFY `megamenu_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
--
-- AUTO_INCREMENT for table `oc_megamenu_widgets`
--
ALTER TABLE `oc_megamenu_widgets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `oc_modification`
--
ALTER TABLE `oc_modification`
  MODIFY `modification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `oc_module`
--
ALTER TABLE `oc_module`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;
--
-- AUTO_INCREMENT for table `oc_option`
--
ALTER TABLE `oc_option`
  MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `oc_option_value`
--
ALTER TABLE `oc_option_value`
  MODIFY `option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `oc_order`
--
ALTER TABLE `oc_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `oc_order_custom_field`
--
ALTER TABLE `oc_order_custom_field`
  MODIFY `order_custom_field_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_order_history`
--
ALTER TABLE `oc_order_history`
  MODIFY `order_history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `oc_order_option`
--
ALTER TABLE `oc_order_option`
  MODIFY `order_option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `oc_order_product`
--
ALTER TABLE `oc_order_product`
  MODIFY `order_product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `oc_order_recurring`
--
ALTER TABLE `oc_order_recurring`
  MODIFY `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_order_recurring_transaction`
--
ALTER TABLE `oc_order_recurring_transaction`
  MODIFY `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_order_status`
--
ALTER TABLE `oc_order_status`
  MODIFY `order_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `oc_order_total`
--
ALTER TABLE `oc_order_total`
  MODIFY `order_total_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
  MODIFY `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_pavblog_blog`
--
ALTER TABLE `oc_pavblog_blog`
  MODIFY `blog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `oc_pavblog_category`
--
ALTER TABLE `oc_pavblog_category`
  MODIFY `category_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `oc_pavblog_comment`
--
ALTER TABLE `oc_pavblog_comment`
  MODIFY `comment_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `oc_pavnewsletter_email`
--
ALTER TABLE `oc_pavnewsletter_email`
  MODIFY `email_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_pavnewsletter_history`
--
ALTER TABLE `oc_pavnewsletter_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_pavnewsletter_subscribe`
--
ALTER TABLE `oc_pavnewsletter_subscribe`
  MODIFY `subscribe_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `oc_pavnewsletter_template`
--
ALTER TABLE `oc_pavnewsletter_template`
  MODIFY `template_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_pavoslidergroups`
--
ALTER TABLE `oc_pavoslidergroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `oc_pavosliderlayers`
--
ALTER TABLE `oc_pavosliderlayers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT for table `oc_pavwidget`
--
ALTER TABLE `oc_pavwidget`
  MODIFY `pavwidget_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5849;
--
-- AUTO_INCREMENT for table `oc_product`
--
ALTER TABLE `oc_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
  MODIFY `product_discount_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=489;
--
-- AUTO_INCREMENT for table `oc_product_image`
--
ALTER TABLE `oc_product_image`
  MODIFY `product_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2705;
--
-- AUTO_INCREMENT for table `oc_product_option`
--
ALTER TABLE `oc_product_option`
  MODIFY `product_option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;
--
-- AUTO_INCREMENT for table `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
  MODIFY `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
  MODIFY `product_reward_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=610;
--
-- AUTO_INCREMENT for table `oc_product_special`
--
ALTER TABLE `oc_product_special`
  MODIFY `product_special_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=487;
--
-- AUTO_INCREMENT for table `oc_recurring`
--
ALTER TABLE `oc_recurring`
  MODIFY `recurring_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_return`
--
ALTER TABLE `oc_return`
  MODIFY `return_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_return_action`
--
ALTER TABLE `oc_return_action`
  MODIFY `return_action_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `oc_return_history`
--
ALTER TABLE `oc_return_history`
  MODIFY `return_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
  MODIFY `return_reason_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `oc_return_status`
--
ALTER TABLE `oc_return_status`
  MODIFY `return_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `oc_review`
--
ALTER TABLE `oc_review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `oc_setting`
--
ALTER TABLE `oc_setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8689;
--
-- AUTO_INCREMENT for table `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
  MODIFY `stock_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `oc_store`
--
ALTER TABLE `oc_store`
  MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
  MODIFY `tax_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
  MODIFY `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;
--
-- AUTO_INCREMENT for table `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
  MODIFY `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;
--
-- AUTO_INCREMENT for table `oc_upload`
--
ALTER TABLE `oc_upload`
  MODIFY `upload_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `oc_url_alias`
--
ALTER TABLE `oc_url_alias`
  MODIFY `url_alias_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1030;
--
-- AUTO_INCREMENT for table `oc_user`
--
ALTER TABLE `oc_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `oc_user_group`
--
ALTER TABLE `oc_user_group`
  MODIFY `user_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `oc_verticalmenu`
--
ALTER TABLE `oc_verticalmenu`
  MODIFY `verticalmenu_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `oc_verticalmenu_widgets`
--
ALTER TABLE `oc_verticalmenu_widgets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT for table `oc_voucher`
--
ALTER TABLE `oc_voucher`
  MODIFY `voucher_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
  MODIFY `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
  MODIFY `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
  MODIFY `weight_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `oc_weight_class_description`
--
ALTER TABLE `oc_weight_class_description`
  MODIFY `weight_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `oc_zone`
--
ALTER TABLE `oc_zone`
  MODIFY `zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4225;
--
-- AUTO_INCREMENT for table `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
  MODIFY `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
