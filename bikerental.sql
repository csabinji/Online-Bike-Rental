-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 16, 2020 at 01:36 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bikerental`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add product', 7, 'add_product'),
(26, 'Can change product', 7, 'change_product'),
(27, 'Can delete product', 7, 'delete_product'),
(28, 'Can view product', 7, 'view_product'),
(29, 'Can add user', 8, 'add_user'),
(30, 'Can change user', 8, 'change_user'),
(31, 'Can delete user', 8, 'delete_user'),
(32, 'Can view user', 8, 'view_user'),
(33, 'Can add user', 9, 'add_user'),
(34, 'Can change user', 9, 'change_user'),
(35, 'Can delete user', 9, 'delete_user'),
(36, 'Can view user', 9, 'view_user'),
(37, 'Can add bike', 10, 'add_bike'),
(38, 'Can change bike', 10, 'change_bike'),
(39, 'Can delete bike', 10, 'delete_bike'),
(40, 'Can view bike', 10, 'view_bike'),
(41, 'Can add booking', 11, 'add_booking'),
(42, 'Can change booking', 11, 'change_booking'),
(43, 'Can delete booking', 11, 'delete_booking'),
(44, 'Can view booking', 11, 'view_booking'),
(45, 'Can add book', 11, 'add_book'),
(46, 'Can change book', 11, 'change_book'),
(47, 'Can delete book', 11, 'delete_book'),
(48, 'Can view book', 11, 'view_book'),
(49, 'Can add feedback', 12, 'add_feedback'),
(50, 'Can change feedback', 12, 'change_feedback'),
(51, 'Can delete feedback', 12, 'delete_feedback'),
(52, 'Can view feedback', 12, 'view_feedback');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(9, 'pbkdf2_sha256$180000$5VHglwjYdan7$+K8SJG2WzDHHATbV7sDcJA/A2H8JcUZo1CVvru9teNM=', '2020-02-11 15:48:14.740021', 1, 'csabin', 'Sabin', 'Chapagain', 'csabinji@gmail.com', 0, 1, '2020-02-08 06:46:44.819270'),
(10, 'pbkdf2_sha256$180000$mTAcWGh1y3Kw$2+m6qdLv1Pkl8T68IKRiAJrNie2JRL1t+Bke1aFwRwM=', '2020-02-09 11:37:08.999853', 0, 'ronish', 'Ronish', 'Puri', 'ronish@gmail.com', 0, 1, '2020-02-09 11:36:54.764685'),
(11, 'pbkdf2_sha256$180000$nQ0fLXwX7Diy$2/Zn+Qyzy9lVisNESyRjXnUEgOukueOSvJX8SiSeC3U=', NULL, 0, 'csabinhh', 'kfdjhk', 'hksjfhkj', 'kjfs@gmail.com', 0, 1, '2020-02-09 11:38:03.143998'),
(12, 'pbkdf2_sha256$180000$4iEYCCz4ACgs$BiUj5/2qn4dR5vflWAEVJt8m7Nc8YFPA9DcCuxZKQHY=', '2020-02-11 15:48:02.499962', 0, 'ramesh', 'Ramesh', 'Bhandari', 'ramesh@gmail.com', 0, 1, '2020-02-11 14:25:06.989749'),
(13, 'pbkdf2_sha256$180000$BQhWAv2wY4lm$IifSJ8lDgXS4EkGVftx+R9YBoK+A3FsIY1zsHjXj3PE=', '2020-02-15 10:34:19.035567', 1, 'sabin', '', '', 'csabinji@gmail.com', 1, 1, '2020-02-11 16:03:46.602895'),
(14, 'pbkdf2_sha256$180000$akzdS68f5ZpR$RvkdSER9BHIJhaHK+Xa1cisxuXSy/MYeT6K/n0MbH+k=', '2020-02-15 04:56:22.357076', 0, 'unish1', 'Unish', 'Bhattarai', 'unish1@gmail.com', 0, 1, '2020-02-15 04:56:00.134682'),
(16, 'pbkdf2_sha256$180000$7C0vfMrITj3K$R8vDzZP/hGTcC21HVO7BScgoRGe9IjushEbb9W4reIk=', '2020-02-15 07:36:30.182337', 0, 'sabita', 'Sabita', 'Chapagain', 'sabita@gmail.com', 0, 1, '2020-02-15 07:36:20.502743'),
(17, 'pbkdf2_sha256$180000$YLB0vt1GJiOA$gf5DNW+Yhm7JMfISWJh4DPivJYYLaX3WFZzRRyoLCis=', '2020-02-15 16:18:22.608552', 0, 'sabinchapagain', 'Sabin ', 'Chapagain', 'sabinchapagain@gmail.com', 0, 1, '2020-02-15 12:45:41.365114');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bike_bike`
--

CREATE TABLE `bike_bike` (
  `id` int(11) NOT NULL,
  `vehicletitle` varchar(50) NOT NULL,
  `Brand` varchar(50) NOT NULL,
  `vehicalorcview` varchar(500) NOT NULL,
  `priceperday` varchar(50) NOT NULL,
  `bikenum` varchar(50) NOT NULL,
  `engine` varchar(50) NOT NULL,
  `img1` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bike_bike`
--

INSERT INTO `bike_bike` (`id`, `vehicletitle`, `Brand`, `vehicalorcview`, `priceperday`, `bikenum`, `engine`, `img1`) VALUES
(2, 'Duke ', 'KTM', 'The KTM 200 Duke is a standard or \"naked\" motorcycle made by KTM and sold in most markets worldwide. It has a single-cylinder, four-stroke, spark-ignition liquid-cooled engine. It has six-speed gearbox with the gear ratios and a cable actuated multi-disc clutch.', '1000', 'Ba 11 pa 2500', '200', 'duke200.jpg'),
(3, 'Discover', 'Bajaj', 'The Bajaj Discover is a motorcycle brand by Bajaj Auto. Currently only Discover 125 DTS-i variant is sold in the market. However, Bajaj had previously manufactured and sold some more variants under the Discover line-up: Discover 100 DTS-Si, Discover 125ST and Discover 150 DTS-i.', '500', 'ba 11 pa 3502', '150', 'ba 11 pa 3502bike.jpg'),
(6, 'R15', 'Yamaha', 'The Yamaha YZF-R15 is a single cylinder sport bike made by Yamaha Motor Company since 2008. In September 2011, the second iteration, called v2.0, was released in India, and in April 2014 it was released in Indonesia. In January 2017, the third iteration of the bike, called v3.0, was launched in Indonesia.', '500', 'Ba 11 pa 2564', '160', 'Ba 11 pa 2564Yamaha-R15-V3-Features-1.jpg'),
(7, 'Splendor', 'Hero', 'The Hero Splendor is a motorcycle manufactured in India by Hero. It has an electronic ignition and a tubular double cradle type frame with a 97.2 cc engine. The engine is based on the Honda cub C100EX with a similar bore and stroke of 50 mm × 49.5 mm.', '500', 'ba 99 pa 6548', '130', 'hero-super-splendor-black-electric-purple.jfif'),
(8, 'Pulsar', 'Bajaj', 'The Bajaj Pulsar is a motorcycle manufactured by Bajaj Auto in India. It was developed by the product engineering division of Bajaj Auto in association with Tokyo R&D, and later with motorcycle designer Glynn Kerr. A variant of the bike, the Pulsar 200NS was launched in 2012, but it was suspended for some time.', '500', 'Ma 3 pa 8656', '150', 'Ma 3 pa 8656pulsar 220.jpg'),
(10, 'Apache RTR', 'TVS', 'The TVS Apache is a brand of motorcycle made by TVS Motors since 2006. In 2008 the company claimed that more than 2.5 million Apaches were on the road. Currently the company sells five variants of the TVS Apache.', '1500', 'Ko 11 pa 7895', '200', '52865_2019_TVS_RTR_200-Fi_E100_1_468x263.jpg'),
(11, 'RC', 'KTM', 'KTM AG is an Austrian motorcycle and sports car manufacturer owned by KTM Industries AG and Indian manufacturer Bajaj Auto. It was formed in 1992 but traces its foundation to as early as 1934. Today, KTM AG is the parent company of the KTM Group. KTM is known for its off-road motorcycles.', '2000', 'ba 99 pa 4759', '220', '05dd3ecc-2794-42ff-ab9b-da24ade9c436.jpg'),
(16, 'Gixxer SF', 'Suzuki', 'The Suzuki Gixxer SF is a 154.9 cc fully faired motorcycle from Suzuki. The bike was launched in 2014. Its design is inspired by the GSX-R1000, and the mighty Suzuki Hayabuza. In fact the fairing of the motorcycle is tested in the same tunnel that they test GSXR and Hayabuza\'s fairing. ', '1500', 'Ba 100 pa 1985', '200', 'bike.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `bike_book`
--

CREATE TABLE `bike_book` (
  `id` int(11) NOT NULL,
  `fromdate` varchar(50) NOT NULL,
  `todate` varchar(50) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bike_book`
--

INSERT INTO `bike_book` (`id`, `fromdate`, `todate`, `message`) VALUES
(1, '02/05/2020', '02/06/2020', 'dghgfhng'),
(2, '02/05/2020', '02/06/2020', 'kgkjafkdsj'),
(3, 'hgjg', 'fgfghj', 'chfhgf'),
(4, 'jjhgjhf', 'hfhgfh', 'hgfghfgj'),
(5, '02/05/2020', '02/06/2020', 'Hello '),
(6, 'kkdfjk', 'hkjhgjhhg', 'gjhgj'),
(7, '02/05/2020', '02/06/2020', 'booking'),
(8, '1/10/2020', '10/10/2020', 'kjadjfkdghj'),
(9, '02/05/2020', '10/10/2020', 'I like this Bike.'),
(10, '02/05/2020', '10/10/2020', 'I like this Bike.');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(10, 'bike', 'bike'),
(11, 'bike', 'book'),
(9, 'bikes', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'product', 'product'),
(6, 'sessions', 'session'),
(12, 'user', 'feedback'),
(8, 'user', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-01-14 04:35:41.480663'),
(2, 'auth', '0001_initial', '2020-01-14 04:35:43.220189'),
(3, 'admin', '0001_initial', '2020-01-14 04:35:51.106285'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-01-14 04:35:52.746936'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-01-14 04:35:52.793786'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-01-14 04:35:53.969738'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-01-14 04:35:55.386934'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-01-14 04:35:55.490592'),
(9, 'auth', '0004_alter_user_username_opts', '2020-01-14 04:35:55.538395'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-01-14 04:35:56.247855'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-01-14 04:35:56.285784'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-01-14 04:35:56.330302'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-01-14 04:35:56.457535'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-01-14 04:35:56.579500'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-01-14 04:35:56.735462'),
(16, 'auth', '0011_update_proxy_permissions', '2020-01-14 04:35:56.768812'),
(17, 'sessions', '0001_initial', '2020-01-14 04:35:57.064653'),
(18, 'product', '0001_initial', '2020-01-14 05:00:58.552600'),
(19, 'user', '0001_initial', '2020-01-23 04:55:51.467329'),
(20, 'user', '0002_user', '2020-02-03 04:56:14.504672'),
(21, 'bikes', '0001_initial', '2020-02-09 11:49:04.265358'),
(22, 'bike', '0001_initial', '2020-02-09 12:27:27.906755'),
(23, 'bike', '0002_auto_20200209_1815', '2020-02-09 12:30:17.723835'),
(24, 'bike', '0003_auto_20200209_1815', '2020-02-09 12:30:41.320236'),
(25, 'bike', '0004_bike_engine', '2020-02-09 12:44:52.693749'),
(26, 'bike', '0005_auto_20200209_1846', '2020-02-11 05:21:51.800555'),
(27, 'bike', '0006_booking', '2020-02-11 05:21:52.206804'),
(28, 'bike', '0007_auto_20200211_1107', '2020-02-11 05:22:44.809284'),
(29, 'bike', '0008_auto_20200211_1109', '2020-02-11 05:24:24.004100'),
(30, 'user', '0003_feedback', '2020-02-11 05:38:59.432898'),
(31, 'user', '0004_auto_20200211_1135', '2020-02-11 05:50:54.475898'),
(32, 'bike', '0009_auto_20200211_2127', '2020-02-11 15:42:32.641790');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('5p06io54spzzfi2cd9ohyzqb56x07tg4', 'M2U5M2Q0ZWQxZTcwMWNkZmUwZThlNzk3ZWJkMzg3MGEzZmE4ZmNlZTp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjMzZhN2MyYzVmY2YzMzhjYWIwZTAzOGNjMzYwOWRjMDAyMmQ0YzViIn0=', '2020-02-19 04:44:29.225912'),
('giobfu2s9jvl587o00fk9gruvaur5mls', 'ZTczZWRkODYwMjU3YzUyZjNiOTAwZmZiOThlMTUzYjAxYWQ2NzMzOTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkZmE5MTIzNjdlNTk2YjEyNmNlOTI4ZTkyMTBjNzQ5OWRiOTg0N2MwIn0=', '2020-02-03 04:34:39.583337'),
('vvjzg9xwbnwxah64zptqpjvwsrp9sdh8', 'MTkxN2RmNmI3ODcwNjJlM2QxMDE4YjBmZDRkOGQwODM3MmE0YmI4ZTp7Il9hdXRoX3VzZXJfaWQiOiIxNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiOTg2ZGQ1OGU5MDJiOWY0YmNiMjc4NDQzYzRlOTQxMThiMGMzYTQxZSJ9', '2020-02-29 16:18:22.878403');

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `age` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `id` int(11) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_feedback`
--

CREATE TABLE `user_feedback` (
  `id` int(11) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `mobileno` varchar(50) NOT NULL,
  `emailid` varchar(50) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_feedback`
--

INSERT INTO `user_feedback` (`id`, `fullname`, `mobileno`, `emailid`, `message`) VALUES
(1, 'Sabin Chapagain', '9814028392', 'csabinji@gmail.com', 'Hello'),
(2, 'Unish Bhattarai', '9823546897', 'Unish@gmail.com', 'Hello. K xa ?'),
(3, 'Sabin Chapagain', '9814028392', 'csabinji@gmail.com', 'Sabin');

-- --------------------------------------------------------

--
-- Table structure for table `user_user`
--

CREATE TABLE `user_user` (
  `id` int(11) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `mobileno` double NOT NULL,
  `emailid` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `confirmpassword` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_user`
--

INSERT INTO `user_user` (`id`, `fullname`, `mobileno`, `emailid`, `password`, `confirmpassword`, `image`) VALUES
(1, 'Sabin', 9814203658, 'unish@gmail.com', '12345', '12345', '9814203658Best-Studio-Recording-Microphone.jpeg'),
(2, 'Sabin Chapagain', 9862761677, 'csabinji@gmail.com', 'sabin468', 'sabin468', '9862761677crossed-microphones-neon-sign_1262-15411');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `bike_bike`
--
ALTER TABLE `bike_bike`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bike_book`
--
ALTER TABLE `bike_book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_feedback`
--
ALTER TABLE `user_feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_user`
--
ALTER TABLE `user_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bike_bike`
--
ALTER TABLE `bike_bike`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `bike_book`
--
ALTER TABLE `bike_book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_feedback`
--
ALTER TABLE `user_feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_user`
--
ALTER TABLE `user_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
