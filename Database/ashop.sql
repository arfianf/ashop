-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 10, 2019 at 08:22 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce_pro`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(50) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `remember_token` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `username`, `email`, `phone`, `password`, `role`, `photo`, `created_at`, `updated_at`, `remember_token`, `status`) VALUES
(1, 'Genius Admin', 'admin', 'admin@gmail.com', '01717890623', '$2y$10$GG3SSLfO9gylr5Qta4SQ1uM0tbMqFfTr0XeFa1SVjCkh7/hQ9ZWEC', 'Administrator', '1491825290645x430-film-animasi-larrikins-borong-bintang-bintang-australia-160604k.jpg', '2017-01-24 03:21:40', '2017-05-06 12:39:47', 'mJFj8WkDlmmCFnwYDaCSO7JZSRSpFwGkyOgp5LA3Gfuvt0dUmO6O8tICHHT4', 1),
(2, 'S Zaman', 'genius', 'genius@gmail.com', '017178906233', '$2y$10$DozM30vRGMY9aDIh2EKxROmvuJRtBMimO2ox/rF8uXjMBYBjLvVRe', 'Administrator', '11822730_1619598781649385_5506560502405630990_n.jpg', '2017-01-27 22:35:17', '2017-03-06 11:02:08', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `advertisements`
--

CREATE TABLE `advertisements` (
  `id` int(11) NOT NULL,
  `type` enum('script','banner') NOT NULL,
  `advertiser_name` varchar(255) DEFAULT NULL,
  `redirect_url` varchar(255) DEFAULT NULL,
  `banner_size` varchar(255) NOT NULL,
  `banner_file` varchar(255) DEFAULT NULL,
  `script` text,
  `clicks` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `uniqueid` varchar(255) DEFAULT NULL,
  `product` int(11) DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `cost` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `mainid` int(11) DEFAULT NULL,
  `subid` int(11) DEFAULT NULL,
  `role` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET latin1 NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `mainid`, `subid`, `role`, `name`, `slug`, `status`) VALUES
(17, NULL, NULL, 'main', 'Laki-laki', 'men', 1),
(18, 17, NULL, 'sub', 'T-shirt', 't-shirt', 1),
(19, 17, 18, 'child', 'Dewasa', 'ldewasa', 1),
(20, 35, NULL, 'sub', 'Dress', 'Dress', 1),
(24, 35, 20, 'child', 'Anak-anak', 'W.child', 1),
(34, 17, 18, 'child', 'Anak-anak', 'Child', 1),
(35, NULL, NULL, 'main', 'Perempuan', 'women', 1),
(41, 35, 20, 'child', 'Dewasa', 'pdewasa', 1),
(48, 17, NULL, 'sub', 'Busana Muslim', 'lbmuslim', 1),
(49, 17, NULL, 'sub', 'Batik', 'lbatik', 1),
(50, 35, NULL, 'sub', 'Busana Muslim', 'bmperempuan', 1),
(51, 35, NULL, 'sub', 'Batik', 'bperempuan', 1),
(52, 17, 48, 'child', 'Anak-anak', 'manak', 1),
(53, 17, 49, 'child', 'Anak-anak', 'banaklaki', 1),
(54, 17, 48, 'child', 'Dewasa', 'mdewasa', 1),
(55, 17, 49, 'child', 'Dewasa', 'bdewasa', 1),
(56, 35, 50, 'child', 'Anak-anak', 'bmanak', 1),
(57, 35, 50, 'child', 'Dewasa', 'bmdewasa', 1),
(58, 35, 51, 'child', 'Anak-anak', 'banakperempuan', 1),
(59, 35, 51, 'child', 'Dewasa', 'Bdewasap', 1);

-- --------------------------------------------------------

--
-- Table structure for table `code_scripts`
--

CREATE TABLE `code_scripts` (
  `id` int(11) NOT NULL,
  `google_analytics` text NOT NULL,
  `meta_keys` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `code_scripts`
--

INSERT INTO `code_scripts` (`id`, `google_analytics`, `meta_keys`) VALUES
(1, '<script>\r\n   //Google Analytics Scriptfffffffffffffffffffffffssssfffffs\r\n</script>', 'Genius,Ocean,Sea,Etc,Genius,Ocean,SeaGenius,Ocean,Sea,Etc,Genius,Ocean,SeaGenius,Ocean,Sea,Etc,Genius,Ocean,Sea');

-- --------------------------------------------------------

--
-- Table structure for table `ordered_products`
--

CREATE TABLE `ordered_products` (
  `id` int(11) NOT NULL,
  `orderid` varchar(255) DEFAULT NULL,
  `owner` enum('vendor','admin') DEFAULT NULL,
  `vendorid` int(11) DEFAULT NULL,
  `productid` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `cost` float DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `payment` varchar(255) NOT NULL DEFAULT 'completed',
  `paid` enum('yes','no') NOT NULL DEFAULT 'no',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` enum('pending','processing','completed') NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customerid` int(11) NOT NULL,
  `products` varchar(255) DEFAULT NULL,
  `quantities` varchar(255) DEFAULT NULL,
  `sizes` varchar(255) DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL,
  `pay_amount` float NOT NULL,
  `txnid` varchar(255) DEFAULT NULL,
  `charge_id` varchar(255) DEFAULT NULL,
  `order_number` varchar(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `customer_phone` varchar(255) NOT NULL,
  `customer_address` varchar(255) NOT NULL,
  `customer_city` varchar(255) NOT NULL,
  `customer_zip` varchar(255) NOT NULL,
  `booking_date` datetime DEFAULT NULL,
  `status` enum('pending','processing','completed','declined') NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `page_settings`
--

CREATE TABLE `page_settings` (
  `id` int(11) NOT NULL,
  `contact` text CHARACTER SET latin1 NOT NULL,
  `contact_email` text CHARACTER SET latin1 NOT NULL,
  `about` text CHARACTER SET latin1 NOT NULL,
  `faq` text CHARACTER SET latin1 NOT NULL,
  `c_status` int(11) NOT NULL,
  `a_status` int(11) NOT NULL,
  `f_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `page_settings`
--

INSERT INTO `page_settings` (`id`, `contact`, `contact_email`, `about`, `faq`, `c_status`, `a_status`, `f_status`) VALUES
(1, 'Berhasil ! Terima kasih telah menghubungi kami.', 'aku@gmail.com', '<h3>Tugas UAS E-Commerce</h3>', '<h2><br></h2>', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `vendorid` int(11) DEFAULT NULL,
  `owner` enum('admin','vendor') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'admin',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(255) CHARACTER SET latin1 NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `price` float NOT NULL,
  `previous_price` float DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `sizes` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `feature_image` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `policy` text COLLATE utf8_unicode_ci,
  `featured` int(1) NOT NULL DEFAULT '0',
  `views` int(11) DEFAULT '0',
  `approved` enum('no','yes') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `vendorid`, `owner`, `title`, `category`, `description`, `price`, `previous_price`, `stock`, `sizes`, `feature_image`, `policy`, `featured`, `views`, `approved`, `created_at`, `updated_at`, `status`) VALUES
(12, NULL, 'admin', 'Black Shirt', '17,18,19', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 700, 1000, 44, 'X,XL,XXL,M,L,S', '149465973014.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, 59, 'yes', '2017-05-12 16:05:41', '2019-08-09 06:46:50', 0),
(14, NULL, 'admin', 'Some Shirt', '17,18,19', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 1000, 500, 99, NULL, '149465973014.jpg', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 1, 35, 'yes', '2017-05-13 07:12:48', '2019-08-09 06:46:46', 0),
(15, NULL, 'admin', 'Grey Shirt', '17,18,19', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 1000, 600, 98, NULL, '149465973014.jpg', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 1, 34, 'yes', '2017-05-13 07:14:40', '2019-08-09 06:46:40', 0),
(16, NULL, 'admin', 'Striped Shirt', '17,18,19', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 1000, 600, 99, NULL, '149465973014.jpg', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 1, 21, 'yes', '2017-05-13 07:14:42', '2019-08-09 06:46:43', 0),
(17, NULL, 'admin', 'Here Will Be Your Product Title', '17,18,19', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', 1200, 1500, 40, NULL, '149465973014.jpg', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', 1, 25, 'yes', '2017-05-13 08:07:41', '2019-08-09 06:46:35', 0),
(18, NULL, 'admin', 'Here Will Be Your Product Title', '17,18,19', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', 800, 1500, 0, NULL, '149465973014.jpg', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', 1, 28, 'yes', '2017-05-13 08:08:45', '2019-08-09 06:46:33', 0),
(19, NULL, 'admin', 'Here Will Be Your Product Title', '17,18,19', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', 800, 1200, 42, NULL, '149465973014.jpg', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', 1, 79, 'yes', '2017-05-13 08:10:15', '2019-08-09 06:46:22', 0),
(27, NULL, 'admin', 'Hipe Black Women', '35,20,41', '<br>', 339, 419, 5, 'X,XL,XXL,M,L,S', '15653356781565333088250401d4e81461249e9089f796eef663.jpg', '<br>', 1, 0, 'yes', '2019-08-09 06:44:48', '2019-08-09 07:27:58', 1),
(28, NULL, 'admin', 'Blazer', '17,18,19', '<br>', 399, 429, 6, 'X,XL,XXL,M,L,S', '156533564914952102852.jpg', '<br>', 1, 0, 'yes', '2019-08-09 06:49:11', '2019-08-09 07:27:29', 1),
(31, NULL, 'admin', 'Baju Koko anak hitz', '17,48,52', '<br>', 319, 299, 7, 'X,XL,XXL,M,L,S', '15653362811565333507download (1).jpg', '<br>', 1, 0, 'yes', '2019-08-09 07:38:01', '2019-08-09 07:38:01', 1),
(32, NULL, 'admin', 'Busana Muslim hitz anak', '35,50,56', '<br>', 319, 299, 9, 'X,XL,XXL,M,L,S', '15653363591565334701download (2).jpg', '<br>', 1, 0, 'yes', '2019-08-09 07:39:19', '2019-08-09 07:39:19', 1),
(33, NULL, 'admin', 'Koko anak merah', '17,48,52', '<br>', 329, 289, 8, 'X,XL,XXL,M,L,S', '1565336428download.jpg', '<br>', 1, 0, 'yes', '2019-08-09 07:40:28', '2019-08-09 07:40:28', 1),
(34, NULL, 'admin', 'Dress Biru Perempuan', '35,20,41', '<br>', 599, 499, 4, 'X,XL,XXL,M,L,S', '1565336511images (1).jpg', '<br>', 1, 0, 'yes', '2019-08-09 07:41:51', '2019-08-09 07:41:51', 1),
(35, NULL, 'admin', 'Sweater Black Pria', '17,18,19', '<br>', 499, 399, 3, 'X,XL,XXL,M,L,S', '1565336557images (2).jpg', '<br>', 1, 0, 'yes', '2019-08-09 07:42:37', '2019-08-09 07:42:37', 1),
(36, NULL, 'admin', 'T-shirt Japan', '17,18,19', '<br>', 389, 299, 21, 'X,XL,XXL,M,L,S', '1565336605images (3).jpg', '<br>', 1, 0, 'yes', '2019-08-09 07:43:25', '2019-08-09 07:43:25', 1),
(37, NULL, 'admin', 'Batik Super Kece Perempuan', '35,51,59', '<br>', 589, 529, 5, 'X,XL,XXL,M,L,S', '1565336659images (4).jpg', '<br>', 1, 0, 'yes', '2019-08-09 07:44:19', '2019-08-09 07:44:19', 1),
(38, NULL, 'admin', 'BEPE super keren anak', '17,18,34', '<br>', 359, 389, 12, 'X,XL,XXL,M,L,S', '1565336724images (5).jpg', '<br>', 1, 0, 'yes', '2019-08-09 07:45:24', '2019-08-09 07:45:47', 1),
(39, NULL, 'admin', 'Muslim pria keren', '17,48,54', '<br>', 449, 419, 5, 'X,XL,XXL,M,L,S', '1565336805intresse_intresse-trend-baju-koko-grey--kf-8300243-gr-_full02.jpg', '<br>', 1, 0, 'yes', '2019-08-09 07:46:45', '2019-08-09 07:46:45', 1),
(40, NULL, 'admin', 'Batik Pria Super Kece', '17,49,55', '<br>', 629, 599, 2, 'X,XL,XXL,M,L,S', '1565336891adiwangsa_model-baju-kemeja-batik-modern-pria-slim-fit-025_full05.jpg', '<br>', 1, 0, 'yes', '2019-08-09 07:48:11', '2019-08-09 07:48:11', 1),
(41, NULL, 'admin', 'Batik Anak Keren', '17,49,53', '<br>', 455, 429, 12, 'X,XL,XXL,M,L,S', '1565337099Batik anak.png', '<br>', 1, 0, 'yes', '2019-08-09 07:51:39', '2019-08-09 07:51:39', 1),
(42, NULL, 'admin', 'Dress Super Lucu Anak Perempuan', '35,20,24', '<br>', 349, 319, 10, 'X,XL,XXL,M,L,S', '1565337219Dress anak.jpg', '<br>', 1, 0, 'yes', '2019-08-09 07:53:39', '2019-08-09 07:53:39', 1),
(43, NULL, 'admin', 'Dress Muslim Wanita', '35,50,57', '<br>', 459, 499, 8, 'X,XL,XXL,M,L,S', '1565337309Muslim wanita.jpg', '<br>', 1, 8, 'yes', '2019-08-09 07:55:09', '2019-08-09 13:20:24', 1),
(44, NULL, 'admin', 'Batik Anak Perempuan Super Lucu', '35,51,58', '<br>', 349, 399, 27, 'X,XL,XXL,M,L,S', '1565337380Batik anak Perempuan', '<br>', 1, 1, 'yes', '2019-08-09 07:56:20', '2019-08-09 13:00:30', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_gallery`
--

CREATE TABLE `product_gallery` (
  `id` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_gallery`
--

INSERT INTO `product_gallery` (`id`, `productid`, `image`) VALUES
(1, 26, 'br150028710072d783df472ec91220ca7714adf113c6.jpg'),
(2, 26, 'tq1500287100E1F.jpg'),
(3, 28, 'wC156533335114952102852.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `productid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `review` text,
  `rating` int(11) DEFAULT NULL,
  `review_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `productid`, `name`, `email`, `review`, `rating`, `review_date`) VALUES
(1, NULL, 'sssssssss', 'user@gmail.com', NULL, NULL, '2017-05-08 17:15:56'),
(2, NULL, 'shaon', 'user@gmail.com', 'Lorem ipsamLorem ipsamLorem ipsamLorem ipsamLorem ipsamLorem ipsamLorem ipsamLorem ipsam Lorem ipsamLorem ipsamLorem ipsamLorem ipsamLorem ipsamLorem ipsamLorem ipsamLorem ipsam', NULL, '2017-05-08 17:17:32'),
(3, 8, 'shaon', 'admin@gmail.com', 'Lorem ipsamLorem ipsamLorem ipsamLorem ipsamLorem ipsamLorem ipsamLorem ipsamLorem ipsam Lorem ipsamLorem ipsamLorem ipsamLorem ipsamLorem ipsamLorem ipsamLorem ipsamLorem ipsam', 5, '2017-05-08 17:18:15'),
(4, 8, 'wwwwwwwww wwwwwwww', 'user@gmail.com', 'wwwwww www wwww wwwwwww wwwwwwww wwwwww www wwwwww', 4, '2017-05-08 18:15:37'),
(5, 3, 'Shaon Zaman', 'user@gmail.com', 'Good Product.', 5, '2017-05-08 21:37:38'),
(6, 3, 'B Chow', 'admin@gmail.com', 'Nice Product.', 4, '2017-05-09 10:20:51'),
(7, 3, 'Dreamy', 'user@gmail.com', 'Poor Product.', 1, '2017-05-09 10:21:45'),
(9, 4, 'Shaon Zaman', 'user@gmail.com', 'aaaaaaaaaaaaaaaaaa', 5, '2017-05-12 10:56:24'),
(10, 24, 'ddddddddf', 'badruddozsa.me@gmail.com', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 5, '2017-05-19 15:13:24');

-- --------------------------------------------------------

--
-- Table structure for table `section_titles`
--

CREATE TABLE `section_titles` (
  `id` int(11) NOT NULL,
  `service_title` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `service_text` text CHARACTER SET latin1,
  `pricing_title` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `pricing_text` text CHARACTER SET latin1,
  `portfolio_title` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `portfolio_text` text CHARACTER SET latin1,
  `testimonial_title` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `testimonial_text` text CHARACTER SET latin1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `section_titles`
--

INSERT INTO `section_titles` (`id`, `service_title`, `service_text`, `pricing_title`, `pricing_text`, `portfolio_title`, `portfolio_text`, `testimonial_title`, `testimonial_text`) VALUES
(1, 'Products', 'Berbagai macam produk yang menarik.', 'Pricing Plans', 'In publishing and graphic design, lorem ipsum is a filler text commonly used to demonstrate the graphic elements of a document or visual presentation.', 'Latest Projects', 'In publishing and graphic design, lorem ipsum is a filler text commonly used to demonstrate the graphic elements of a document or visual presentation.', 'Ulasan Pelanggan', 'Berikan ulasan kalian :)');

-- --------------------------------------------------------

--
-- Table structure for table `service_section`
--

CREATE TABLE `service_section` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET latin1 NOT NULL,
  `text` text CHARACTER SET latin1 NOT NULL,
  `icon` varchar(255) CHARACTER SET latin1 NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `logo` varchar(255) CHARACTER SET latin1 NOT NULL,
  `favicon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET latin1 NOT NULL,
  `url` varchar(255) CHARACTER SET latin1 NOT NULL,
  `about` text CHARACTER SET latin1 NOT NULL,
  `address` varchar(255) CHARACTER SET latin1 NOT NULL,
  `phone` varchar(50) CHARACTER SET latin1 NOT NULL,
  `fax` varchar(50) CHARACTER SET latin1 NOT NULL,
  `email` varchar(255) CHARACTER SET latin1 NOT NULL,
  `footer` varchar(255) CHARACTER SET latin1 NOT NULL,
  `background` varchar(255) CHARACTER SET latin1 NOT NULL,
  `theme_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `withdraw_fee` float NOT NULL DEFAULT '0',
  `paypal_business` varchar(255) CHARACTER SET latin1 NOT NULL,
  `shipping_cost` float DEFAULT '0',
  `stripe_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stripe_secret` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `css_file` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `logo`, `favicon`, `title`, `url`, `about`, `address`, `phone`, `fax`, `email`, `footer`, `background`, `theme_color`, `withdraw_fee`, `paypal_business`, `shipping_cost`, `stripe_key`, `stripe_secret`, `css_file`) VALUES
(1, 'Logo ASHOP.jpg', 'favicon.ico', 'AShop', 'Fuckcccccc', 'Kami adalah penjual pakaian terbaik seBandung Kota :)', 'Bandung Kota', '0123456789', '21458', 'AShop@gmail.com', 'U2NyaXB0IGRvd25sb2FkZWQgZnJvbSBDT0RFTElTVC5DQw==', 'smm-min.jpg', '#5494df', 3.5, 'adminashop@gmail.com', 0, 'pk_test_bD5Si0msHNV75sd5R71jSJFb', 'sk_test_r7zxASOuYYCiuT3svkUtuh6W', 'genius1.css');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET latin1 NOT NULL,
  `text` text CHARACTER SET latin1 NOT NULL,
  `image` varchar(255) CHARACTER SET latin1 NOT NULL,
  `text_position` varchar(255) CHARACTER SET latin1 NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `text`, `image`, `text_position`, `status`) VALUES
(3, 'Model Style', 'Memberikan Style terbaik untuk anda!', 'BrUslider.jpg', 'slide_style_left', 1),
(4, 'Confortable Style', 'Membuat hari-harimu nyaman.', '8Nsslider3.jpg', 'slide_style_center', 1),
(5, 'Impressive', 'Membuat hari-harimu mengesankan!', 'RWXslider1.jpg', 'slide_style_right', 1);

-- --------------------------------------------------------

--
-- Table structure for table `social_links`
--

CREATE TABLE `social_links` (
  `id` int(11) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `twiter` varchar(255) NOT NULL,
  `g_plus` varchar(255) NOT NULL,
  `linkedin` varchar(255) NOT NULL,
  `f_status` enum('enable','disable') NOT NULL DEFAULT 'enable',
  `t_status` enum('enable','disable') NOT NULL DEFAULT 'enable',
  `g_status` enum('enable','disable') NOT NULL DEFAULT 'enable',
  `link_status` enum('enable','disable') NOT NULL DEFAULT 'enable'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `social_links`
--

INSERT INTO `social_links` (`id`, `facebook`, `twiter`, `g_plus`, `linkedin`, `f_status`, `t_status`, `g_status`, `link_status`) VALUES
(1, 'http://facebook.com/', 'http://twitter.com/', 'http://google.com/', 'http://linkedin.com/', 'enable', 'enable', 'enable', 'enable');

-- --------------------------------------------------------

--
-- Table structure for table `subscription`
--

CREATE TABLE `subscription` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(11) NOT NULL,
  `review` text CHARACTER SET latin1 NOT NULL,
  `client` varchar(255) CHARACTER SET latin1 NOT NULL,
  `designation` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `review`, `client`, `designation`) VALUES
(1, 'Sangat bagussss dan sangat nyaman dipakai!', 'Bambang', 'Mahasiswa'),
(2, 'KEREEEEEN!!!!', 'Tiara', 'Pelajar'),
(3, 'Bagus sekali!!', 'Agus', 'Pegawai Negri');

-- --------------------------------------------------------

--
-- Table structure for table `user_profiles`
--

CREATE TABLE `user_profiles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_profiles`
--

INSERT INTO `user_profiles` (`id`, `name`, `gender`, `phone`, `fax`, `email`, `password`, `address`, `city`, `zip`, `created_at`, `updated_at`, `status`) VALUES
(1, 'aku', NULL, '000000000000', NULL, 'aku@aku.com', '$2y$10$JSUgS.GRHiImbNeYRlsimuQX4fwuGCN8cggeU4gWKoAr8qWKILl.e', NULL, NULL, NULL, '2019-08-08 11:31:27', '2019-08-09 02:41:32', 1),
(2, 'kamu', NULL, '081122334455', NULL, 'kamu@gmail.com', '$2y$10$cQvgz.k.piKR9UKeIwgUbet2mnIJm2RUSzuCGWN6IRvlMTTCRgXsW', NULL, NULL, NULL, '2019-08-09 08:23:34', '2019-08-09 08:23:34', 1),
(3, 'selsi', NULL, '099909990999', NULL, 'selsidv@gmail.com', '$2y$10$usa3h2RfjpJ2UPtPkQIk4uhABcpaBUtYDfBcI5SkuO392Lh6n3oJa', NULL, NULL, NULL, '2019-08-09 12:59:27', '2019-08-09 12:59:27', 1),
(4, 'selsidv', NULL, '0123456789', NULL, 'selsidv@yahoo.co.id', '$2y$10$jE1QNkyrD.Zsxt7ZYpzPJ.fhhx7dbO3BioNzskWgCvbE9BkVpGkiu', NULL, NULL, NULL, '2019-08-09 13:07:32', '2019-08-09 13:07:32', 1),
(5, 'sesi', NULL, '099909990999', NULL, 'sesi@gmail.com', '$2y$10$WrPQS0xsYZ17DJtuXVPoqeLG2mxqC8NMO1BUe4JcUdDKRmKFQMJqu', NULL, NULL, NULL, '2019-08-09 13:19:26', '2019-08-09 13:19:26', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vendor_profiles`
--

CREATE TABLE `vendor_profiles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `shop_name` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `current_balance` float NOT NULL DEFAULT '0',
  `remember_token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vendor_profiles`
--

INSERT INTO `vendor_profiles` (`id`, `name`, `shop_name`, `photo`, `gender`, `phone`, `fax`, `email`, `password`, `address`, `city`, `zip`, `current_balance`, `remember_token`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Shaon Zaman', 'Test Shop Name', '1500220805docddddd.jpg', NULL, '33333333', NULL, 'vendor@gmail.com', '$2y$10$yRmXyhuEXbJ/X/VJkuyHVekY8zC01n9vaICrfAqOP.iGGLTRCZtEa', NULL, NULL, NULL, 2187.49, '0Z5abNaqqVYBf92rxPs0OSyPjGx9K0hIEGTEub7FjwLAAiExWoZGs3UPZMpV', '2017-07-11 00:00:00', '2017-07-17 12:06:48', 1),
(10, 'Aku', 'Aku Shop', NULL, NULL, '087711112222', NULL, 'aku@gmail.com', '$2y$10$U/P/72PLiL4o09YuWQPPy./1LUeHjnraavRGh2Aoe8Hfnqbh7/rma', NULL, NULL, NULL, 0, 'NzpryFzIXoQokaJ9pXP7zM6BghynsclDdsCF6rsryShMaAhwPbtl7AhiPvC8', '2019-08-09 08:17:31', '2019-08-09 08:17:31', 0);

-- --------------------------------------------------------

--
-- Table structure for table `withdraws`
--

CREATE TABLE `withdraws` (
  `id` int(11) NOT NULL,
  `vendorid` int(11) DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL,
  `acc_email` varchar(255) DEFAULT NULL,
  `iban` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `acc_name` varchar(255) DEFAULT NULL,
  `address` text,
  `swift` varchar(255) DEFAULT NULL,
  `reference` text,
  `amount` float DEFAULT NULL,
  `fee` float DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` enum('pending','completed','rejected') NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `advertisements`
--
ALTER TABLE `advertisements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `code_scripts`
--
ALTER TABLE `code_scripts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordered_products`
--
ALTER TABLE `ordered_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_settings`
--
ALTER TABLE `page_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_gallery`
--
ALTER TABLE `product_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `section_titles`
--
ALTER TABLE `section_titles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_section`
--
ALTER TABLE `service_section`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_links`
--
ALTER TABLE `social_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscription`
--
ALTER TABLE `subscription`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_profiles`
--
ALTER TABLE `user_profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor_profiles`
--
ALTER TABLE `vendor_profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraws`
--
ALTER TABLE `withdraws`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `advertisements`
--
ALTER TABLE `advertisements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `code_scripts`
--
ALTER TABLE `code_scripts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ordered_products`
--
ALTER TABLE `ordered_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `page_settings`
--
ALTER TABLE `page_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `product_gallery`
--
ALTER TABLE `product_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `section_titles`
--
ALTER TABLE `section_titles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `service_section`
--
ALTER TABLE `service_section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `social_links`
--
ALTER TABLE `social_links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subscription`
--
ALTER TABLE `subscription`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_profiles`
--
ALTER TABLE `user_profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vendor_profiles`
--
ALTER TABLE `vendor_profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `withdraws`
--
ALTER TABLE `withdraws`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
