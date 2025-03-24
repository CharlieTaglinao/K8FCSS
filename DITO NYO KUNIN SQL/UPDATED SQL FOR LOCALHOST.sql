-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2025 at 07:37 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `k8fcs`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` int(11) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `action` text NOT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `user_email`, `action`, `file_name`, `timestamp`) VALUES
(124, 'taglinao06@gmail.com', 'uploaded a file', 'K8FCS.sql', '2024-11-12 16:46:30'),
(125, 'taglinao06@gmail.com', 'deleted a file', 'K8FCS.sql', '2024-11-12 16:48:28'),
(126, 'taglinao06@gmail.com', 'uploaded a file', 'K8FCS.sql', '2024-11-12 16:55:11'),
(127, 'taglinao06@gmail.com', 'uploaded a file', 'adasd asdas_ORCR_2024-11-12_12-57-30_0.jpg', '2024-11-12 16:57:03'),
(128, 'taglinao06@gmail.com', 'uploaded a file', 'NOVEMBER 9 LATEST 3RD UPDATE.sql', '2024-11-12 17:00:37'),
(129, 'taglinao06@gmail.com', 'uploaded a file', 'NOVEMBER 9 LATEST 6TH UPDATE.sql', '2024-11-12 17:07:57'),
(131, 'Employee@employee.com', 'Automatically Declined by the system w/ Transaction ID: 2024-353830-45938', 'N/A', '2024-11-13 09:10:18'),
(132, 'Employee@employee.com', 'Automatically Declined by the system w/ Transaction ID: 2024-353830-45938', 'N/A', '2024-11-13 09:10:57'),
(133, 'Employee@employee.com', 'Accepted Appointment of Transaction ID: 2024-353830-45938', 'N/A', '2024-11-13 09:14:12'),
(134, 'Employee@employee.com', 'Approved Transaction ID: 2024-353830-45938', 'N/A', '2024-11-13 09:15:03'),
(135, 'Employee@employee.com', 'Accepted Payment of Transaction ID: 2024-353830-45938', 'N/A', '2024-11-13 09:18:07'),
(136, 'Employee@employee.com', 'Accepted Appointment of Transaction ID: 2024-834952-90508', 'N/A', '2024-11-13 09:22:58'),
(137, 'Employee@employee.com', 'Accepted Appointment of Transaction ID: 2024-834952-90508', 'N/A', '2024-11-13 09:26:10'),
(138, 'Employee@employee.com', 'Accepted Appointment of Transaction ID: 2024-834952-90508', 'N/A', '2024-11-13 09:29:17'),
(139, 'Employee@employee.com', 'Accepted Appointment of Transaction ID: 2024-544143-25479', 'N/A', '2024-11-13 10:21:19'),
(140, 'Employee@employee.com', 'Approved Transaction ID: 2024-544143-25479', 'N/A', '2024-11-13 10:21:55'),
(141, 'Employee@employee.com', 'Accepted Payment of Transaction ID: 2024-544143-25479', 'N/A', '2024-11-13 10:22:16'),
(142, 'Employee@employee.com', 'Declined Transaction ID: 2024-544143-25479', 'N/A', '2024-11-13 10:35:36'),
(143, 'Employee@employee.com', 'Declined Transaction ID: 2024-181664-70478', 'N/A', '2024-11-13 10:36:23'),
(144, 'Employee@employee.com', 'Declined Transaction ID: 2024-711226-72037', 'N/A', '2024-11-13 10:37:04'),
(145, 'Employee@employee.com', 'Declined Transaction ID: 2024-544143-25479', 'decline-appointment.php', '2024-11-13 10:39:25'),
(146, 'Employee@employee.com', 'Declined Transaction ID: 2024-181664-70478', 'decline-appointment.php', '2024-11-13 10:40:43'),
(147, 'Employee@employee.com', 'Declined Transaction ID: 2024-711226-72037', 'decline-appointment.php', '2024-11-13 10:42:35'),
(148, 'Employee@employee.com', 'Decline wala lang w/ Transaction ID: 2024-544143-25479', 'N/A', '2024-11-13 10:44:07'),
(149, 'Employee@employee.com', 'Decline ccccc w/ Transaction ID: 2024-711226-72037', 'N/A', '2024-11-13 10:45:05'),
(150, 'Employee@employee.com', 'Accepted Payment of Transaction ID: 2024-711226-72037', 'N/A', '2024-11-13 10:46:14'),
(151, 'Employee@employee.com', 'Accepted Payment of Transaction ID: 2024-544143-25479', 'N/A', '2024-11-13 10:46:56'),
(152, 'justinecarlalbay@gmail.com', 'Profile Picture Changed', 'IMG_2310.webp', '2024-11-13 12:36:06'),
(153, 'justinecarlalbay@gmail.com', 'Profile Picture Changed', 'IMG_2345.webp', '2024-11-13 12:36:24'),
(154, 'justinecarlalbay@gmail.com', 'uploaded a file', '1 Batch 1_ Merchandise Pricing and Availability p1.png', '2024-11-13 12:38:19'),
(155, 'Employee@employee.com', 'Accepted Payment of Transaction ID: 2024-544143-25479', 'N/A', '2024-11-13 15:45:59'),
(156, 'Employee@employee.com', 'Accepted Appointment of Transaction ID: 2024-639969-73478', 'N/A', '2024-11-13 15:56:53'),
(157, 'Employee@employee.com', 'Accepted Appointment of Transaction ID: 2024-362094-84023', 'N/A', '2024-11-13 15:56:58'),
(158, 'Employee@employee.com', 'Approved Transaction ID: 2024-639969-73478', 'N/A', '2024-11-13 15:57:34'),
(159, 'Employee@employee.com', 'Approved Transaction ID: 2024-362094-84023', 'N/A', '2024-11-13 15:58:07'),
(160, 'Employee@employee.com', 'Accepted Payment of Transaction ID: 2024-639969-73478', 'N/A', '2024-11-13 15:58:13'),
(161, 'Employee@employee.com', 'Accepted Payment of Transaction ID: 2024-362094-84023', 'N/A', '2024-11-13 15:58:18'),
(162, 'Employee@employee.com', 'Accepted Appointment of Transaction ID: 2024-946802-26121', 'N/A', '2024-11-14 05:56:53'),
(163, 'Employee@employee.com', 'Accepted Appointment of Transaction ID: 2024-016275-81714', 'N/A', '2024-11-14 05:57:28'),
(164, 'Employee@employee.com', 'Approved Transaction ID: 2024-946802-26121', 'N/A', '2024-11-14 06:05:56'),
(165, 'Employee@employee.com', 'Accepted Payment of Transaction ID: 2024-946802-26121', 'N/A', '2024-11-14 06:13:58'),
(166, 'kreianlanaria@gmail.com', 'Profile Picture Changed', 'Screenshot 2024-10-02 at 8.28.43 AM.webp', '2024-11-19 23:26:42'),
(167, 'kreianlanaria@gmail.com', 'uploaded a file', 'IMG_2310.webp', '2024-11-20 06:45:04'),
(168, 'taglinao06@gmail.com', 'Automatic Deletion by the system', 'K8FCS.sql', '2024-11-20 09:18:43'),
(169, 'taglinao06@gmail.com', 'Automatic Deletion by the system', 'adasd asdas_ORCR_2024-11-12_12-57-30_0.jpg', '2024-11-20 09:18:43'),
(170, 'taglinao06@gmail.com', 'Automatic Deletion by the system', 'NOVEMBER 9 LATEST 3RD UPDATE.sql', '2024-11-20 09:18:43'),
(171, 'taglinao06@gmail.com', 'Automatic Deletion by the system', 'NOVEMBER 9 LATEST 6TH UPDATE.sql', '2024-11-20 09:18:43'),
(172, 'ederlynlyn2@gmail.com', 'Profile Picture Changed', 'ca5c389f-9e4d-4336-8123-ccba3728fbd7.webp', '2024-11-20 11:45:21'),
(173, 'Employee@employee.com', 'Automatically Declined by the system w/ Transaction ID: 2024-187544-09719', 'N/A', '2024-11-22 09:13:27'),
(174, 'Employee@employee.com', 'Accepted Appointment of Transaction ID: 2024-187544-09719', 'N/A', '2024-11-22 09:15:36'),
(175, 'Employee@employee.com', 'Approved Transaction ID: 2024-187544-09719', 'N/A', '2024-11-22 09:16:57'),
(176, 'Employee@employee.com', 'Accepted Payment of Transaction ID: 2024-187544-09719', 'N/A', '2024-11-22 09:18:56'),
(177, 'kreianlanaria@gmail.com', 'uploaded a file', 'NOVEMBER 20 LATEST.sql', '2024-11-23 15:30:45'),
(178, 'admin@admin.com', 'Accepted appointment w/ Transaction ID: 2024-658313-70257', 'N/A', '2024-11-25 15:11:48'),
(179, 'kreianlanaria@gmail.com', 'Profile Picture Changed', 'IMG_7720.webp', '2024-11-26 14:43:06'),
(180, 'jca092080@gmail.com', 'Profile Picture Changed', 'Screenshot_20241126_143956_YouTube.webp', '2024-11-27 02:16:30'),
(181, 'Employee@employee.com', 'Accepted Appointment of Transaction ID: 2024-157018-64999', 'N/A', '2024-11-27 02:31:11'),
(182, 'Employee@employee.com', 'Accepted Appointment of Transaction ID: 2024-498826-38684', 'N/A', '2024-11-27 09:09:20'),
(183, 'Employee@employee.com', 'Approved Transaction ID: 2024-498826-38684', 'N/A', '2024-11-27 09:10:21'),
(184, 'Employee@employee.com', 'Accepted Payment of Transaction ID: 2024-498826-38684', 'N/A', '2024-11-27 09:11:56'),
(185, 'quilapiomatthew31@gmail.com', 'Profile Information and Profile Picture is Changed', 'IMG_20241127_211904.webp', '2024-11-27 13:20:29'),
(186, 'quilapiomatthew31@gmail.com', 'Information Changed', 'N/A', '2024-11-27 13:23:13'),
(187, 'quilapiomatthew31@gmail.com', 'Profile Picture Changed', 'images (2).webp', '2024-11-27 13:23:27'),
(188, 'hikarunagi@yahoo.com', 'Accepted Appointment of Transaction ID: 2024-579973-43440', 'N/A', '2024-11-27 13:58:13'),
(189, 'hikarunagi@yahoo.com', 'Approved Transaction ID: 2024-579973-43440', 'N/A', '2024-11-27 14:00:52'),
(190, 'hikarunagi@yahoo.com', 'Accepted Payment of Transaction ID: 2024-579973-43440', 'N/A', '2024-11-27 14:01:33'),
(191, 'Employee@employee.com', 'Accepted Appointment of Transaction ID: 2024-658313-70257', 'N/A', '2024-11-29 15:17:53'),
(192, 'Employee@employee.com', 'Accepted Appointment of Transaction ID: 2024-658313-70257', 'N/A', '2024-11-29 15:20:29'),
(193, 'Employee@employee.com', 'Accepted Appointment of Transaction ID: 2024-658313-70257', 'N/A', '2024-11-29 15:22:04'),
(194, 'Employee@employee.com', 'Accepted Appointment of Transaction ID: 2024-658313-70257', 'N/A', '2024-11-29 15:26:26'),
(195, 'Employee@employee.com', 'Accepted Appointment of Transaction ID: 2024-726314-33360', 'N/A', '2024-12-02 02:43:52'),
(196, 'Employee@employee.com', 'Accepted Appointment of Transaction ID: 2024-726314-33360', 'N/A', '2024-12-02 02:44:49'),
(197, 'Employee@employee.com', 'Approved Transaction ID: 2024-726314-33360', 'N/A', '2024-12-02 02:46:28'),
(198, 'Employee@employee.com', 'Accepted Payment of Transaction ID: 2024-726314-33360', 'N/A', '2024-12-02 02:47:40'),
(199, 'Employee@employee.com', 'Approved Transaction ID: 2024-726314-33360', 'N/A', '2024-12-02 02:50:20'),
(200, 'Employee@employee.com', 'Accepted Payment of Transaction ID: 2024-726314-33360', 'N/A', '2024-12-02 02:51:13'),
(201, 'Employee@employee.com', 'Accepted Appointment of Transaction ID: 2024-726314-33360', 'N/A', '2024-12-02 03:48:12'),
(202, 'admin@admin.com', 'Accepted appointment w/ Transaction ID: 2024-726314-33360', 'N/A', '2024-12-02 10:03:57'),
(203, 'admin@admin.com', 'Accepted appointment w/ Transaction ID: 2024-726314-33360', 'N/A', '2024-12-02 10:04:33'),
(204, 'admin@admin.com', 'Approved appointment w/ Transaction ID: 2024-726314-33360', 'payment-ui.php', '2024-12-02 10:05:09'),
(205, 'admin@admin.com', 'Approved payment w/ Transaction ID: 2024-726314-33360', 'send-email-receive-payment.php', '2024-12-02 10:05:12'),
(206, 'Employee@employee.com', 'Accepted Appointment of Transaction ID: 2024-706982-36877', 'N/A', '2024-12-02 11:16:35'),
(207, 'Employee@employee.com', 'Accepted Appointment of Transaction ID: 2024-012319-57270', 'N/A', '2024-12-02 11:26:34'),
(208, 'Employee@employee.com', 'Declined Transaction ID: 2024-706982-36877', 'decline-appointment.php', '2024-12-02 11:26:57'),
(209, 'kreianlanaria@gmail.com', 'uploaded a file', 'Lanaria_PracticeActivity - Flutter Doctor.jpg', '2024-12-02 11:31:04'),
(210, 'taglinao06@gmail.com', 'uploaded a file', 'bigwin.png', '2024-12-02 11:46:25'),
(211, 'taglinao06@gmail.com', 'deleted a file', 'bigwin.png', '2024-12-02 11:52:56'),
(212, 'taglinao06@gmail.com', 'uploaded a file', 'bigwin.png', '2024-12-02 11:53:02'),
(213, 'admin@admin.com', 'Accepted appointment w/ Transaction ID: 2024-323574-79474', 'N/A', '2024-12-03 07:23:15'),
(214, 'admin@admin.com', 'Approved appointment w/ Transaction ID: 2024-323574-79474', 'payment-ui.php', '2024-12-03 07:23:47'),
(215, 'admin@admin.com', 'Accepted appointment w/ Transaction ID: 2024-209648-16824', 'N/A', '2024-12-04 01:09:13'),
(216, 'admin@admin.com', 'Approved appointment w/ Transaction ID: 2024-209648-16824', 'payment-ui.php', '2024-12-04 01:10:04'),
(217, 'admin@admin.com', 'Approved payment w/ Transaction ID: 2024-209648-16824', 'send-email-receive-payment.php', '2024-12-04 01:10:09'),
(218, 'Employee@employee.com', 'Approved Transaction ID: 2024-658313-70257', 'N/A', '2024-12-04 02:44:04'),
(219, 'Employee@employee.com', 'Accepted Payment of Transaction ID: 2024-658313-70257', 'N/A', '2024-12-04 02:47:10'),
(220, 'Employee@employee.com', 'Decline test w/ Transaction ID: 2024-658313-70257', 'N/A', '2024-12-04 09:57:11'),
(221, 'Employee@employee.com', 'Decline teasdas w/ Transaction ID: 2024-658313-70257', 'N/A', '2024-12-04 10:00:13'),
(222, 'admin@admin.com', 'Declined payment w/ Transaction ID: 2024-658313-70257', 'send-email-receive-payment.php', '2024-12-04 10:01:05'),
(223, 'Employee@employee.com', 'Decline 12341234 w/ Transaction ID: 2024-658313-70257', 'N/A', '2024-12-04 10:03:29'),
(224, 'admin@admin.com', 'Declined payment w/ Transaction ID: 2024-658313-70257', 'send-email-receive-payment.php', '2024-12-04 10:04:22'),
(225, 'admin@admin.com', 'Declined payment w/ Transaction ID: 2024-658313-70257', 'send-email-receive-payment.php', '2024-12-04 10:07:10'),
(226, 'admin@admin.com', 'Declined payment w/ Transaction ID: 2024-658313-70257', 'send-email-receive-payment.php', '2024-12-04 10:10:45'),
(227, 'Employee@employee.com', 'Decline Declined by Employee w/ Transaction ID: 2024-658313-70257', 'N/A', '2024-12-04 10:11:17'),
(228, 'Employee@employee.com', 'Decline strong w/ Transaction ID: 2024-658313-70257', 'N/A', '2024-12-04 10:12:56'),
(229, 'taglinao06@gmail.com', 'deleted a file', 'bigwin.png', '2024-12-04 11:26:30'),
(230, 'taglinao06@gmail.com', 'uploaded a file', 'TAPSILOG.jpg', '2024-12-04 11:27:51'),
(231, 'taglinao06@gmail.com', 'Automation deletion by the system', 'Charlie Taglinao_ORCR_2024-12-02_13-08-08_0.jpg', '2024-12-04 11:44:21'),
(232, 'admin@admin.com', 'Accepted appointment w/ Transaction ID: 2024-080478-42699', 'N/A', '2024-12-10 12:21:12'),
(233, 'admin@admin.com', 'Accepted appointment w/ Transaction ID: 2024-602134-83186', 'N/A', '2024-12-10 12:22:05'),
(234, 'admin@admin.com', 'Accepted appointment w/ Transaction ID: 2024-080478-42699', 'N/A', '2024-12-10 12:24:05'),
(235, 'admin@admin.com', 'Declined appointment w/ Transaction ID: 2024-602134-83186', 'payment-ui.php', '2024-12-10 12:25:18'),
(236, 'admin@admin.com', 'Accepted appointment w/ Transaction ID: 2024-953307-35839', 'N/A', '2024-12-10 12:28:56'),
(237, 'admin@admin.com', 'Accepted appointment w/ Transaction ID: 2024-542112-40965', 'N/A', '2024-12-10 12:30:47'),
(238, 'admin@admin.com', 'Accepted appointment w/ Transaction ID: 2024-741431-43064', 'N/A', '2024-12-10 12:32:36'),
(239, 'Employee@employee.com', 'Accepted Appointment of Transaction ID: 2024-080478-42699', 'N/A', '2024-12-10 12:34:55'),
(240, 'admin@admin.com', 'Approved appointment w/ Transaction ID: 2024-080478-42699', 'payment-ui.php', '2024-12-10 12:36:08'),
(241, 'Employee@employee.com', 'Approved Transaction ID: 2024-602134-83186', 'N/A', '2024-12-10 12:37:14'),
(242, 'admin@admin.com', 'Approved appointment w/ Transaction ID: 2024-080478-42699', 'payment-ui.php', '2024-12-10 12:46:40'),
(243, 'Employee@employee.com', 'Accepted Payment of Transaction ID: 2024-080478-42699', 'N/A', '2024-12-10 12:49:54'),
(244, 'admin@admin.com', 'Approved payment w/ Transaction ID: 2024-602134-83186', 'send-email-receive-payment.php', '2024-12-10 12:50:02'),
(245, 'Employee@employee.com', 'Accepted Payment of Transaction ID: 2024-602134-83186', 'N/A', '2024-12-10 12:55:49'),
(246, 'Employee@employee.com', 'Decline admin side w/ Transaction ID: 2024-602134-83186', 'N/A', '2024-12-10 12:57:32'),
(247, 'admin@admin.com', 'Accepted appointment w/ Transaction ID: 2024-080478-42699', 'N/A', '2024-12-10 12:58:21'),
(248, 'Employee@employee.com', 'Accepted Appointment of Transaction ID: 2024-602134-83186', 'N/A', '2024-12-10 12:58:33'),
(249, 'admin@admin.com', 'Accepted appointment w/ Transaction ID: 2024-080478-42699', 'N/A', '2024-12-10 13:04:14'),
(250, 'Employee@employee.com', 'Accepted Appointment of Transaction ID: 2024-602134-83186', 'N/A', '2024-12-10 13:04:21'),
(251, 'admin@admin.com', 'Accepted appointment w/ Transaction ID: 2024-953307-35839', 'N/A', '2024-12-17 14:15:46'),
(252, 'admin@admin.com', 'Approved appointment w/ Transaction ID: 2024-602134-83186', 'payment-ui.php', '2024-12-17 14:25:23'),
(253, 'Employee@employee.com', 'Accepted Appointment of Transaction ID: 2024-323574-79474', 'N/A', '2025-02-10 14:03:03'),
(254, 'taglinao06@gmail.com', 'uploaded a file', 'COR.pdf', '2025-02-10 15:06:12'),
(255, 'taglinao06@gmail.com', 'deleted a file', 'COR.pdf', '2025-03-24 14:53:52'),
(256, 'taglinao06@gmail.com', 'uploaded a file', 'clientheader.webp', '2025-03-24 14:54:01'),
(257, 'taglinao06@gmail.com', 'deleted a file', 'clientheader.webp', '2025-03-24 14:54:05'),
(258, 'Employee@employee.com', 'Declined Transaction ID: 2024-784392-90335', 'N/A', '2025-03-24 15:29:22');

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` int(11) NOT NULL,
  `clientname` varchar(255) DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Processing',
  `decline_at` varchar(155) DEFAULT NULL,
  `recieve_at` timestamp NULL DEFAULT current_timestamp(),
  `approve_at` timestamp NULL DEFAULT NULL,
  `accepted_at` timestamp NULL DEFAULT NULL,
  `form_type` varchar(50) DEFAULT NULL,
  `payment_description` varchar(255) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `archived` tinyint(1) DEFAULT 0,
  `paid` int(1) DEFAULT NULL,
  `bank_partner` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `appointment_date` date DEFAULT NULL,
  `appointment_time` time DEFAULT NULL,
  `term` varchar(50) DEFAULT NULL,
  `amount_finance` decimal(10,2) DEFAULT NULL,
  `maturity` date DEFAULT NULL,
  `check_release` date DEFAULT NULL,
  `mark_as_read` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `clientname`, `transaction_id`, `email`, `status`, `decline_at`, `recieve_at`, `approve_at`, `accepted_at`, `form_type`, `payment_description`, `amount`, `archived`, `paid`, `bank_partner`, `remarks`, `appointment_date`, `appointment_time`, `term`, `amount_finance`, `maturity`, `check_release`, `mark_as_read`) VALUES
(21, 'Charlie Taglinao', '2024-658313-70257', 'taglinao06@gmail.com', 'Approved', '2024-12-04 18:12:52', '2024-11-25 12:49:07', '2024-12-04 02:44:04', '2024-11-29 15:26:26', 'brand-new', 'Chattel Mortgage Fees & Comprehensive Car Insurance', 1000.00, 1, 0, 'Banco De Oro', 'strong', '2024-11-28', '13:00:00', '6', 250000.00, '2025-06-04', '2024-12-09', NULL),
(22, 'Jhune Ante', '2024-157018-64999', 'jca092080@gmail.com', 'Accepted', NULL, '2024-11-27 02:30:19', NULL, '2024-11-27 02:31:11', 'brand-new', NULL, NULL, 0, NULL, NULL, NULL, '2024-11-29', '10:30:00', NULL, NULL, NULL, NULL, NULL),
(26, 'Kevin Bagasbas', '2024-932720-31914', 'quilapiomatthew31@gmail.com', 'Accepted', NULL, '2024-11-27 13:06:45', NULL, NULL, 'second-hand', NULL, NULL, 0, NULL, NULL, NULL, '2024-11-28', '15:30:00', NULL, NULL, NULL, NULL, NULL),
(34, 'Roma Almendras', '2024-809081-39210', 'romalennalmendras@gmail.com', 'Accepted', NULL, '2024-11-27 14:14:42', NULL, NULL, 'brand-new', NULL, NULL, 0, NULL, NULL, NULL, '2024-12-02', '10:00:00', NULL, NULL, NULL, NULL, NULL),
(42, 'Charlie Taglinaso', '2024-323574-79474', 'taglinao06@gmail.com', 'Accepted', NULL, '2024-12-04 11:44:08', '2024-12-03 07:23:44', '2025-02-10 14:03:03', 'sangla-orcr', NULL, NULL, 0, NULL, 'Banco De Oro', '', '2024-12-02', '12:00:00', '24', 23.00, '2024-12-28', '2024-12-29', 1),
(43, 'Miko Paril', '2024-209648-16824', 'marionparil26@gmail.com', 'Approved', NULL, '2024-12-04 01:08:33', '2024-12-04 01:10:16', '2024-12-04 01:09:13', 'brand-new', 'Chattel Mortgage Fees & Comprehensive Car Insurance', 100000.00, 1, 1, 'ORICO', 'this is a test', '2024-12-04', '09:30:00', '36', 202020.00, '2024-12-20', '2024-12-20', NULL),
(44, 'Charlie Taglinao', '2024-080478-42699', 'taglinao06@gmail.com', 'Processing', '2024-12-10 20:57:20', '2024-12-09 13:35:20', '2024-12-10 13:18:23', '2024-12-10 13:04:14', 'brand-new', 'Chattel Mortgage Fees & Comprehensive Car Insurance', 0.00, 0, NULL, '', '', '2024-12-10', '10:00:00', '6', 0.00, '0000-00-00', '0000-00-00', 1),
(45, 'Charlie Taglinao', '2024-602134-83186', 'taglinao06@gmail.com', 'Processing', '2024-12-10 20:57:28', '2024-12-18 13:45:46', '2024-12-17 14:25:20', '2024-12-10 13:04:21', 'sangla-orcr', 'Chattel Mortgage Fees & Comprehensive Car Insurance', 10012.00, 0, NULL, 'JACCS', '2321', '2024-12-10', '09:30:00', '24', 2313133.00, '2024-12-18', '2024-12-23', 1),
(46, 'Charlie Taglinao', '2024-953307-35839', 'taglinao06@gmail.com', 'Processing', NULL, '2024-12-09 14:42:43', NULL, '2024-12-17 14:15:46', 'brand-new', NULL, NULL, 0, NULL, NULL, NULL, '2024-12-10', '10:30:00', NULL, NULL, NULL, NULL, 1),
(47, 'Charlie Taglinao', '2024-542112-40965', 'taglinao06@gmail.com', 'Processing', NULL, '2024-12-09 14:46:50', NULL, '2024-12-10 12:30:47', 'brand-new', NULL, NULL, 0, NULL, NULL, NULL, '2024-12-10', '10:30:00', NULL, NULL, NULL, NULL, 1),
(48, 'Charlie Taglinao', '2024-741431-43064', 'taglinao06@gmail.com', 'Processing', NULL, '2024-12-09 14:47:59', NULL, '2024-12-10 12:32:36', 'brand-new', NULL, NULL, 0, NULL, NULL, NULL, '2024-12-10', '12:30:00', NULL, NULL, NULL, NULL, 1),
(49, 'Charlie Taglinao', '2024-288979-37104', 'taglinao06@gmail.com', 'Processing', NULL, '2025-03-23 07:05:10', NULL, NULL, 'brand-new', NULL, NULL, 0, NULL, NULL, NULL, '2020-05-12', '12:30:00', NULL, NULL, NULL, NULL, 1),
(50, 'Charlie Taglinao', '2024-572280-96774', 'taglinao06@gmail.com', 'Processing', NULL, '2025-03-23 07:28:31', NULL, NULL, 'brand-new', NULL, NULL, 0, NULL, NULL, NULL, '1982-05-18', '15:00:00', NULL, NULL, NULL, NULL, 1),
(51, 'Charlie Taglinao', '2024-822013-34124', 'taglinao06@gmail.com', 'Processing', NULL, '2025-03-23 12:31:04', NULL, NULL, 'brand-new', NULL, NULL, 0, NULL, NULL, NULL, '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, 1),
(52, 'Charlie Taglinao', '2024-442064-21024', 'taglinao06@gmail.com', 'Processing', NULL, '2025-03-23 12:32:02', NULL, NULL, 'brand-new', NULL, NULL, 0, NULL, NULL, NULL, '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, 1),
(53, 'Charlie Taglinao', '2024-025383-87769', 'taglinao06@gmail.com', 'Processing', NULL, '2025-03-23 12:32:15', NULL, NULL, 'brand-new', NULL, NULL, 0, NULL, NULL, NULL, '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, 1),
(54, 'Charlie Taglinao', '2024-218018-60228', 'taglinao06@gmail.com', 'Processing', NULL, '2025-03-23 13:02:34', NULL, NULL, 'brand-new', NULL, NULL, 0, NULL, NULL, NULL, '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, 1),
(55, 'Charlie Taglinao', '2024-738744-27188', 'taglinao06@gmail.com', 'Processing', NULL, '2025-03-23 13:03:33', NULL, NULL, 'brand-new', NULL, NULL, 0, NULL, NULL, NULL, '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, 1),
(56, 'Charlie Taglinao', '2024-041794-59013', 'taglinao06@gmail.com', 'Processing', NULL, '2025-03-23 13:06:57', NULL, NULL, 'brand-new', NULL, NULL, 0, NULL, NULL, NULL, '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, 1),
(57, 'Charlie Taglinao', '2024-589533-43177', 'taglinao06@gmail.com', 'Processing', NULL, '2025-03-23 13:07:35', NULL, NULL, 'brand-new', NULL, NULL, 0, NULL, NULL, NULL, '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, 1),
(58, 'Charlie Taglinao', '2024-541338-02318', 'taglinao06@gmail.com', 'Processing', NULL, '2025-03-23 13:07:51', NULL, NULL, 'brand-new', NULL, NULL, 0, NULL, NULL, NULL, '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, 1),
(59, 'Charlie Taglinao', '2024-829491-29463', 'taglinao06@gmail.com', 'Processing', NULL, '2025-03-23 13:08:21', NULL, NULL, 'brand-new', NULL, NULL, 0, NULL, NULL, NULL, '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, 1),
(60, 'Charlie Taglinao', '2024-220886-98629', 'taglinao06@gmail.com', 'Processing', NULL, '2025-03-23 13:08:35', NULL, NULL, 'brand-new', NULL, NULL, 0, NULL, NULL, NULL, '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, 1),
(61, 'Charlie Taglinao', '2024-238928-26669', 'taglinao06@gmail.com', 'Processing', NULL, '2025-03-23 13:18:46', NULL, NULL, 'brand-new', NULL, NULL, 0, NULL, NULL, NULL, '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, 1),
(62, 'Charlie Taglinao', '2024-529035-30027', 'taglinao06@gmail.com', 'Processing', NULL, '2025-03-24 10:09:45', NULL, NULL, 'brand-new', NULL, NULL, 0, NULL, NULL, NULL, '2025-03-24', '11:00:00', NULL, NULL, NULL, NULL, 1),
(63, 'Charlie Taglinao', '2024-754494-39433', 'taglinao06@gmail.com', 'Processing', NULL, '2025-03-24 15:10:04', NULL, NULL, 'brand-new', NULL, NULL, 0, NULL, NULL, NULL, '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, 1),
(64, 'Charlie Taglinao', '2024-222463-88739', 'taglinao06@gmail.com', 'Processing', NULL, '2025-03-24 15:20:27', NULL, NULL, 'brand-new', NULL, NULL, 0, NULL, NULL, NULL, '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, 1),
(65, 'Charlie Taglinao', '2024-978976-96185', 'taglinao06@gmail.com', 'Processing', NULL, '2025-03-24 15:22:42', NULL, NULL, 'brand-new', NULL, NULL, 0, NULL, NULL, NULL, '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, 1),
(66, 'Charlie Taglinao', '2024-784392-90335', 'taglinao06@gmail.com', 'Declined', NULL, '2025-03-24 15:27:53', NULL, NULL, 'second-hand', NULL, NULL, 1, NULL, NULL, '', '2025-03-24', '14:00:00', NULL, NULL, NULL, NULL, 1),
(67, 'Charlie Taglinao', '2024-056465-78198', 'taglinao06@gmail.com', 'Processing', NULL, '2025-03-24 17:00:33', NULL, NULL, 'sangla-orcr', NULL, NULL, 0, NULL, NULL, NULL, '0000-00-00', '00:00:00', NULL, NULL, NULL, NULL, NULL),
(68, 'Charlie Taglinao', '2024-383657-28999', 'taglinao06@gmail.com', 'Processing', NULL, '2025-03-24 17:29:38', NULL, NULL, 'sangla-orcr', NULL, NULL, 0, NULL, NULL, NULL, '2025-03-24', '13:00:00', NULL, NULL, NULL, NULL, NULL),
(69, 'Charlie Taglinao', '2024-450418-11812', 'taglinao06@gmail.com', 'Processing', NULL, '2025-03-24 17:29:39', NULL, NULL, 'sangla-orcr', NULL, NULL, 0, NULL, NULL, NULL, '2025-03-24', '13:00:00', NULL, NULL, NULL, NULL, NULL),
(70, 'Charlie Taglinao', '2024-174974-00405', 'taglinao06@gmail.com', 'Processing', NULL, '2025-03-24 17:32:40', NULL, NULL, 'sangla-orcr', NULL, NULL, 0, NULL, NULL, NULL, '2025-03-24', '13:00:00', NULL, NULL, NULL, NULL, NULL),
(71, 'Charlie Taglinao', '2024-928893-56486', 'taglinao06@gmail.com', 'Processing', NULL, '2025-03-24 17:32:42', NULL, NULL, 'sangla-orcr', NULL, NULL, 0, NULL, NULL, NULL, '2025-03-24', '13:00:00', NULL, NULL, NULL, NULL, NULL),
(72, 'Charlie Taglinao', '2024-426144-19959', 'taglinao06@gmail.com', 'Processing', NULL, '2025-03-24 17:39:21', NULL, NULL, 'sangla-orcr', NULL, NULL, 0, NULL, NULL, NULL, '2025-03-24', '09:00:00', NULL, NULL, NULL, NULL, NULL),
(73, 'Charlie Taglinao', '2024-047318-56831', 'taglinao06@gmail.com', 'Processing', NULL, '2025-03-24 17:39:22', NULL, NULL, 'sangla-orcr', NULL, NULL, 0, NULL, NULL, NULL, '2025-03-24', '09:00:00', NULL, NULL, NULL, NULL, NULL),
(74, 'Charlie Taglinao', '2024-171966-19495', 'taglinao06@gmail.com', 'Processing', NULL, '2025-03-24 17:43:29', NULL, NULL, 'sangla-orcr', NULL, NULL, 0, NULL, NULL, NULL, '2025-03-24', '09:00:00', NULL, NULL, NULL, NULL, NULL),
(75, 'Charlie Taglinao', '2024-386886-51285', 'taglinao06@gmail.com', 'Processing', NULL, '2025-03-24 17:43:30', NULL, NULL, 'sangla-orcr', NULL, NULL, 0, NULL, NULL, NULL, '2025-03-24', '09:00:00', NULL, NULL, NULL, NULL, NULL),
(76, 'Charlie Taglinao', '2024-171966-19495', 'taglinao06@gmail.com', 'Processing', NULL, '2025-03-24 17:45:58', NULL, NULL, 'sangla-orcr', NULL, NULL, 0, NULL, NULL, NULL, '2025-03-24', '09:00:00', NULL, NULL, NULL, NULL, NULL),
(77, 'Charlie Taglinao', '2024-171966-19495', 'taglinao06@gmail.com', 'Processing', NULL, '2025-03-24 17:45:59', NULL, NULL, 'sangla-orcr', NULL, NULL, 0, NULL, NULL, NULL, '2025-03-24', '09:00:00', NULL, NULL, NULL, NULL, NULL),
(78, 'Charlie Taglinao', '2024-171966-19495', 'taglinao06@gmail.com', 'Processing', NULL, '2025-03-24 17:46:09', NULL, NULL, 'sangla-orcr', NULL, NULL, 0, NULL, NULL, NULL, '2025-03-24', '09:00:00', NULL, NULL, NULL, NULL, NULL),
(79, 'Charlie Taglinao', '2024-171966-19495', 'taglinao06@gmail.com', 'Processing', NULL, '2025-03-24 17:46:10', NULL, NULL, 'sangla-orcr', NULL, NULL, 0, NULL, NULL, NULL, '2025-03-24', '09:00:00', NULL, NULL, NULL, NULL, NULL),
(80, 'Charlie Taglinao', '2024-806949-45316', 'taglinao06@gmail.com', 'Processing', NULL, '2025-03-24 17:48:20', NULL, NULL, 'sangla-orcr', NULL, NULL, 0, NULL, NULL, NULL, '2025-03-24', '09:00:00', NULL, NULL, NULL, NULL, NULL),
(81, 'Charlie Taglinao', '2024-454381-61879', 'taglinao06@gmail.com', 'Processing', NULL, '2025-03-24 17:48:21', NULL, NULL, 'sangla-orcr', NULL, NULL, 0, NULL, NULL, NULL, '2025-03-24', '09:00:00', NULL, NULL, NULL, NULL, NULL),
(82, 'Charlie Taglinao', '2024-027401-21574', 'taglinao06@gmail.com', 'Processing', NULL, '2025-03-24 17:48:52', NULL, NULL, 'sangla-orcr', NULL, NULL, 0, NULL, NULL, NULL, '2025-03-24', '09:00:00', NULL, NULL, NULL, NULL, NULL),
(83, 'Charlie Taglinao', '2024-903249-50078', 'taglinao06@gmail.com', 'Processing', NULL, '2025-03-24 17:57:37', NULL, NULL, 'sangla-orcr', NULL, NULL, 0, NULL, NULL, NULL, '2025-03-24', '13:30:00', NULL, NULL, NULL, NULL, NULL),
(84, 'Charlie Taglinao', '2024-365227-99659', 'taglinao06@gmail.com', 'Processing', NULL, '2025-03-24 18:00:22', NULL, NULL, 'sangla-orcr', NULL, NULL, 0, NULL, NULL, NULL, '2025-03-24', '16:00:00', NULL, NULL, NULL, NULL, NULL),
(85, 'Charlie Taglinao', '2024-082023-38677', 'taglinao06@gmail.com', 'Processing', NULL, '2025-03-24 18:11:12', NULL, NULL, 'brand-new', NULL, NULL, 0, NULL, NULL, NULL, '2025-03-24', '16:30:00', NULL, NULL, NULL, NULL, NULL),
(86, 'Charlie Taglinao', '2024-999062-74466', 'taglinao06@gmail.com', 'Processing', NULL, '2025-03-24 18:16:28', NULL, NULL, 'second-hand', NULL, NULL, 0, NULL, NULL, NULL, '2025-03-24', '12:30:00', NULL, NULL, NULL, NULL, NULL),
(87, 'Charlie Taglinao', '2024-131734-17474', 'taglinao06@gmail.com', 'Processing', NULL, '2025-03-24 18:19:48', NULL, NULL, 'second-hand', NULL, NULL, 0, NULL, NULL, NULL, '2025-03-24', '12:30:00', NULL, NULL, NULL, NULL, NULL),
(88, 'Charlie Taglinao', '2024-632208-27447', 'taglinao06@gmail.com', 'Processing', NULL, '2025-03-24 18:30:04', NULL, NULL, 'second-hand', NULL, NULL, 0, NULL, NULL, NULL, '2025-03-24', '15:00:00', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_description` text DEFAULT NULL,
  `upload_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `user_email`, `file_name`, `file_description`, `upload_date`) VALUES
(83, 'Employee@employee.com', 'COR.pdf', NULL, '2025-02-10 14:14:34');

-- --------------------------------------------------------

--
-- Table structure for table `forms_brandnew_applicants`
--

CREATE TABLE `forms_brandnew_applicants` (
  `id` int(11) NOT NULL,
  `year_model` int(11) DEFAULT NULL,
  `make` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `transmition_type` varchar(155) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `place_of_birth` varchar(255) DEFAULT NULL,
  `marital_status` varchar(50) DEFAULT NULL,
  `present_address` text DEFAULT NULL,
  `years_present_address` varchar(255) DEFAULT NULL,
  `ownership` varchar(50) DEFAULT NULL,
  `ownership_other` varchar(255) DEFAULT NULL,
  `previous_address` text DEFAULT NULL,
  `years_previous_address` varchar(255) DEFAULT NULL,
  `contact_number_1` varchar(20) DEFAULT NULL,
  `contact_number_2` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `tin_number` varchar(255) DEFAULT NULL,
  `sss_number` varchar(255) DEFAULT NULL,
  `dependents` varchar(255) DEFAULT NULL,
  `mother_maiden_first_name` varchar(255) DEFAULT NULL,
  `mother_maiden_last_name` varchar(255) DEFAULT NULL,
  `mother_maiden_middle_name` varchar(255) DEFAULT NULL,
  `father_first_name` varchar(255) DEFAULT NULL,
  `father_last_name` varchar(255) DEFAULT NULL,
  `father_middle_name` varchar(255) DEFAULT NULL,
  `income_source` varchar(255) DEFAULT NULL,
  `income_source_other` varchar(255) DEFAULT NULL,
  `employer_name` varchar(255) DEFAULT NULL,
  `office_address` text DEFAULT NULL,
  `office_number` varchar(20) DEFAULT NULL,
  `company_email` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `years_service` int(11) DEFAULT NULL,
  `monthly_income` varchar(255) DEFAULT NULL,
  `credit_cards` text DEFAULT NULL,
  `credit_history` text DEFAULT NULL,
  `comments` text DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `form_type` varchar(50) DEFAULT 'brand-new',
  `appointment_date` date DEFAULT NULL,
  `appointment_time` time DEFAULT NULL,
  `relationship_borrower` varchar(255) DEFAULT NULL,
  `first_name_borrower` varchar(255) DEFAULT NULL,
  `last_name_borrower` varchar(255) DEFAULT NULL,
  `middle_name_borrower` varchar(255) DEFAULT NULL,
  `date_of_birth_borrower` date DEFAULT NULL,
  `place_birth_borrower` varchar(255) DEFAULT NULL,
  `residential_address_borrower` text DEFAULT NULL,
  `years_stay_borrower` varchar(255) DEFAULT NULL,
  `contact_number_borrower` varchar(20) DEFAULT NULL,
  `email_address_borrower` varchar(255) DEFAULT NULL,
  `tin_number_borrower` varchar(255) DEFAULT NULL,
  `sss_number_borrower` varchar(255) DEFAULT NULL,
  `employer_name_borrower` varchar(255) DEFAULT NULL,
  `office_address_borrower` text DEFAULT NULL,
  `position_borrower` varchar(255) DEFAULT NULL,
  `years_service_borrower` varchar(255) DEFAULT NULL,
  `monthly_income_borrower` varchar(255) DEFAULT NULL,
  `credit_cards_borrower` text DEFAULT NULL,
  `appointed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `forms_brandnew_applicants`
--

INSERT INTO `forms_brandnew_applicants` (`id`, `year_model`, `make`, `type`, `transmition_type`, `first_name`, `last_name`, `middle_name`, `dob`, `place_of_birth`, `marital_status`, `present_address`, `years_present_address`, `ownership`, `ownership_other`, `previous_address`, `years_previous_address`, `contact_number_1`, `contact_number_2`, `email`, `tin_number`, `sss_number`, `dependents`, `mother_maiden_first_name`, `mother_maiden_last_name`, `mother_maiden_middle_name`, `father_first_name`, `father_last_name`, `father_middle_name`, `income_source`, `income_source_other`, `employer_name`, `office_address`, `office_number`, `company_email`, `position`, `years_service`, `monthly_income`, `credit_cards`, `credit_history`, `comments`, `transaction_id`, `form_type`, `appointment_date`, `appointment_time`, `relationship_borrower`, `first_name_borrower`, `last_name_borrower`, `middle_name_borrower`, `date_of_birth_borrower`, `place_birth_borrower`, `residential_address_borrower`, `years_stay_borrower`, `contact_number_borrower`, `email_address_borrower`, `tin_number_borrower`, `sss_number_borrower`, `employer_name_borrower`, `office_address_borrower`, `position_borrower`, `years_service_borrower`, `monthly_income_borrower`, `credit_cards_borrower`, `appointed_at`) VALUES
(11, 1981, 'Raphael Sweeney', 'Obcaecati sed occaec', 'Automatic', 'Charlie', 'Taglinao', 'Dela Cruz', '1999-11-12', 'Sit placeat ratione', 'Separated', 'Nesciunt omnis tota', '2005', 'Free living with Parents', '', 'Ex ea officia offici', '1978', '09123456789', '09123456785', 'taglinao06@gmail.com', '504', '953', '382', 'Yen', 'Moran', 'Jeremy Branch', 'Lois', 'Morgan', 'Hedwig Holland', 'Employed', '', 'Jocelyn Fry', 'Veniam nisi volupta', '660', 'zefasacak@mailinator.com', 'Sint omnis optio et', 1984, '878.00', '50', 'Est exercitation cu', 'Quaerat voluptatem d', '2024-658313-70257', 'brand-new', '2024-11-28', '13:00:00', 'Qui in sequi natus o', 'Noble', 'Snow', 'Lewis Harrell', '1996-10-15', 'Anim nihil sed amet', 'Recusandae Sed earu', '1973', '759', 'sefu@mailinator.com', '372', '282', 'Alma Atkins', 'Aspernatur impedit ', 'Dolores porro aliqui', '1982', '200.00', '64', '2024-11-30 05:42:09'),
(12, 2024, 'FORD RAPTOR', 'Pick up', 'Automatic', 'Jhune', 'Ante', 'GILTENDEZ', '1970-09-20', 'DASMA', 'Married', 'Dasmarinas', '24', 'Rented', '', 'DASMARINAS', '30', '09167755539', '', 'jca092080@gmail.com', '', '', '2', '', '', '', '', '', '', 'Employed', '', 'For se', 'For survey', '3453469', 'forsurveyonly@gmail.com', 'OWNER', 5, '2000.00', '1346346534629764', 'Good', '', '2024-157018-64999', 'brand-new', '2024-11-29', '10:30:00', 'COUSIN', 'Daniel', 'Tan', 'A', '1978-11-21', '', 'Dasmarinas', '5', '09346699245', 'danieltan@gmail.com', '', '', 'For survey', 'For survey', 'Owner', '5', '20000.00', '3465346966258427', '2024-11-30 05:42:09'),
(18, 2024, 'Toyota Vios', 'Sedan', 'Automatic', 'Roma', 'Almendras', 'Lenn', '1988-01-16', 'Manila', 'Married', 'Liora Homes', '6', 'Owned', '', 'Imus City', '10', '09173393308', '09173393308', 'romalennalmendras@gmail.com', '111222333444', '0022674392', '1', 'Stephany', 'Franca', 'Noble', 'Felix', 'Pedres', 'Cael', 'Employed', '', 'Deltek', 'Makati City', '7894657', 'romaaalmendras@deltek.com', 'Analyst', 10, '50000', '6578345200359151', 'Good', 'Application Docs', '2024-809081-39210', 'brand-new', '2024-12-02', '10:00:00', 'Spouse', 'Felman', 'Sumortin', 'Pedres', '1980-10-06', 'Bacolod', 'Liora Homes', '6', '09286574416', 'felman.sumortin@gmail.com', '054765239', '6496386550', 'Deltek', 'Makati City', 'Sr Analyst', '11', '50000', '6497225600359789', '2024-11-30 05:42:09'),
(20, 1986, 'Hedley Ford', 'Esse minima esse es', 'Manual', 'Kreian', 'Lanaria', 'De La Cruz', '1998-01-07', 'Qui nesciunt dolori', 'Separated', 'Doloribus iusto nece', '2011', 'Owned', '', 'Voluptas blanditiis ', '1997', '09456954559', '', 'kreianlanaria@gmail.com', '', '', '361', 'Ruby', 'Madden', 'Dexter Mejia', 'Zeph', 'Ortega', 'Kennan Stewart', 'Business', '', 'Rhoda Patrick', 'Est a id veritatis ', '649', 'hiqaxufu@mailinator.com', 'Eum occaecat et dolo', 1999, '808', '1111111111111111', 'Possimus magni dele', 'Laborum eos veniam ', '2024-726314-33360', 'brand-new', '2024-12-06', '10:30:00', 'Perspiciatis molest', 'Bradley', 'Ortega', 'Priscilla Pittman', '2003-04-20', 'Nostrud cillum et do', 'Aliquid quis vitae o', '2014', '09456954558', 'tibahuc@mailinator.com', '', '', 'Ima Sandoval', 'Voluptas quia volupt', 'Enim in minus exerci', '2000', '206', '', '2024-12-02 02:42:31'),
(21, 2013, 'Gillian Sutton', 'Est odit aut illum ', 'Manual', 'Kreian', 'Lanaria', 'De La Cruz', '1971-08-25', 'Consequatur quis qu', 'Separated', 'Eveniet esse qui d', '1990', 'Rented', '', 'Amet mollit minim a', '1995', '09456954559', '', 'kreianlanaria@gmail.com', '', '', '937', 'Tucker', 'Henson', 'Ferris King', 'Sasha', 'Pruitt', 'Alma Lamb', 'Employed', '', 'Philip Graves', 'Omnis molestias et o', '179', 'lulubat@mailinator.com', 'Fugiat soluta magni', 1972, '517', '1111111111111111', 'Esse nihil minima a', 'Placeat nobis praes', '2024-437147-79845', 'brand-new', '2024-12-22', '00:00:00', 'Ipsam ad aut molesti', 'Hunter', 'Macdonald', 'Jeremy Todd', '2006-05-23', 'Accusantium est nequ', 'Et omnis Nam ut et a', '1981', '09456954558', 'lomexixyk@mailinator.com', '', '', 'Cody Silva', 'Mollit aut quia haru', 'Duis totam sit comm', '1993', '465', '', '2024-12-02 10:22:41'),
(22, 2007, 'Mary Hudson', 'Sed commodi cumque q', 'Manual', 'Kreian', 'Lanaria', 'De La Cruz', '2003-03-08', 'Et qui facere ea sit', 'Widowed', 'Qui nihil aliquip ve', '1985', 'Free living with Parents', '', 'Architecto molestias', '1973', '09456954559', '', 'kreianlanaria@gmail.com', '', '', '505', 'Larissa', 'Flynn', 'Arthur Palmer', 'Uma', 'Hanson', 'Troy Hall', 'Business', '', 'Ivy Ayers', 'Ipsum aut fuga Cul', '932', 'bolisomix@mailinator.com', 'Animi itaque est be', 2017, '30', '1111111111111111', 'Quidem exercitation ', 'A delectus a ex lab', '2024-324006-73263', 'brand-new', '2024-12-23', '15:30:00', 'Quis qui sapiente es', 'Kane', 'Vincent', 'Lesley Nguyen', '2003-01-28', 'Officiis esse qui nu', 'Aut totam amet qui ', '1989', '09456954558', 'tynylafer@mailinator.com', '', '', 'Joan Forbes', 'Irure tempora mollit', 'Sint iure consequatu', '1977', '524', '', '2024-12-02 10:24:01'),
(23, 2013, 'Xavier Valenzuela', 'Exercitationem minus', 'Manual', 'Kreian', 'Lanaria', 'De La Cruz', '1970-04-15', 'Assumenda consectetu', 'Single', 'Perferendis est dol', '1995', 'Owned', '', 'Quidem fuga Qui eiu', '2009', '09456954559', '', 'kreianlanaria@gmail.com', '', '', '159', 'Brianna', 'Myers', 'Marah Rasmussen', 'Carter', 'Howard', 'Jaden Morales', 'Remittance', '', 'Alvin Mccarthy', 'Ratione et ex iusto ', '309', 'ridadyhek@mailinator.com', 'Vero minus et quod u', 1992, '915', '1111111111111111', 'Id iure sunt labori', 'Fugit labore ut dol', '2024-285287-43781', 'brand-new', '2024-12-12', '10:30:00', 'Ut exercitation face', 'Brent', 'Short', 'Jolene Saunders', '2003-05-06', 'Vel deserunt lorem n', 'Commodi maiores numq', '2001', '09456954558', 'kuwajigafi@mailinator.com', '', '', 'Hilda Cole', 'Ut ullamco pariatur', 'Incidunt quasi veli', '2017', '686', '', '2024-12-02 11:15:52'),
(24, 2024, 'toyota vios', 'pickup', 'Automatic', 'Miko', 'Paril', 'P', '2002-01-26', 'Gen trias', 'Separated', 'sidjadsi', '12', 'Rented', '', '', '', '09123456789', '', 'marionparil26@gmail.com', '', '', '', '', '', '', '', '', '', 'Employed', '', 'asdas', 'asdas', '123123', 'asd@asda.asd', 'asdasd', 123112, '123123', '1111111111111111', 'sadkjas', '', '2024-209648-16824', 'brand-new', '2024-12-04', '09:30:00', 'sdf', 'adas', 'asdasdasdas', 'asdasdasdad', '2001-08-22', '', '', '', '09123475891', 'asdasd@asd.asd', '', '', 'asdassadas', 'sadas', 'asdas', '10', '', '', '2024-12-04 01:08:33'),
(25, 1999, 'Cassady Leonard', 'Nulla itaque beatae ', 'Automatic', 'Charlie', 'Taglinao', 'Dela Cruz', '2003-06-26', 'Nihil et laboris mol', 'Single', '0548 Purok 3 Barangay Pinagtipunan City of General Trias, Cavite', '1989', 'Owned', '', 'Sit do expedita pos', '1983', '09212288244', '09212288242', 'taglinao06@gmail.com', '', '', '393', 'Philip', 'Moses', 'Francesca Hurley', 'Nichole', 'Velazquez', 'Zachary Torres', 'Business', '', 'Kennan Salazar', 'Ex dolorem reprehend', '458', 'kejetyfi@mailinator.com', 'Culpa magni officia ', 1987, '977', '1234123412342123', 'Id excepturi consect', 'Est eum qui dolor l', '2024-080478-42699', 'brand-new', '2024-12-10', '10:00:00', 'Et velit voluptates ', 'Iola', 'Russell', 'Jin Bradshaw', '1975-01-30', 'Dolor illum commodo', 'Consequatur Aliqua', '2019', '12341234123', 'votuwut@mailinator.com', '947', '671', 'Matthew Barton', 'Non quasi modi offic', 'Atque assumenda inci', '1979', '946', '14', '2024-12-09 13:35:20'),
(26, 1989, 'Macey Jackson', 'Nulla vero cillum om', 'Automatic', 'Charlie', 'Taglinao', 'Dela Cruz', '2003-06-26', 'Est nisi iure fugit', 'Single', '0548 Purok 3 Barangay Pinagtipunan City of General Trias, Cavite', '1995', 'Free living with Parents', '', 'Veniam est reprehe', '2011', '09212288244', '12341234123', 'taglinao06@gmail.com', '', '', '55', 'Francesca', 'Melton', 'Candice Hayes', 'Tate', 'Matthews', 'Kalia Mooney', 'Business', '', 'Audra White', 'Est pariatur Volupt', '284', 'fudigy@mailinator.com', 'Tenetur iste exercit', 1987, '640', '1234123412342134', 'Sunt doloremque dol', 'Sit nihil ex simili', '2024-602134-83186', 'brand-new', '2024-12-10', '09:30:00', 'Culpa veritatis pro', 'Ashely', 'Stone', 'Blythe Mcdaniel', '1996-01-02', 'Laborum Dolore sunt', 'Dolores nihil a beat', '2002', '12341234234', 'fenyhu@mailinator.com', '977', '372', 'Heather Ballard', 'Reprehenderit nostru', 'Voluptas id incididu', '1980', '768', '98', '2024-12-09 13:45:46'),
(27, 1983, 'Emery Rivera', 'Necessitatibus incid', 'Manual', 'Charlie', 'Taglinao', 'Dela Cruz', '2003-06-26', 'Sunt nostrud quia ac', 'Single', '0548 Purok 3 Barangay Pinagtipunan City of General Trias, Cavite', '1977', 'Owned', '', 'Sunt omnis tempore ', '2001', '09212288244', '', 'taglinao06@gmail.com', '', '', '', 'Lunea', 'Pugh', 'Vance Charles', 'Iona', 'Workman', 'Kaitlin Albert', 'Other', '', 'Priscilla Wong', 'Et consequatur tene', '329', 'seti@mailinator.com', 'Iure numquam cupidit', 2001, '195', '1234123412341234', 'Voluptates vel volup', 'Quia perferendis vol', '2024-953307-35839', 'brand-new', '2024-12-10', '10:30:00', 'Autem suscipit rerum', 'Ariana', 'Lynch', 'Emery Ross', '1999-03-14', 'Quo molestiae praese', 'Qui nemo distinctio', '2015', '12341234123', 'vadeqacer@mailinator.com', '', '', 'Cheyenne Pruitt', 'Velit exercitatione', 'Quidem est perferend', '2005', '', '', '2024-12-09 14:42:43'),
(28, 1983, 'Emery Rivera', 'Necessitatibus incid', 'Manual', 'Charlie', 'Taglinao', 'Dela Cruz', '2003-06-26', 'Sunt nostrud quia ac', 'Single', '0548 Purok 3 Barangay Pinagtipunan City of General Trias, Cavite', '1977', 'Owned', '', 'Sunt omnis tempore ', '2001', '09212288244', '', 'taglinao06@gmail.com', '123', '1234', '', 'Lunea', 'Pugh', 'Vance Charles', 'Iona', 'Workman', 'Kaitlin Albert', 'Other', '', 'Priscilla Wong', 'Et consequatur tene', '329', 'seti@mailinator.com', 'Iure numquam cupidit', 2001, '195', '1234123412341234', 'Voluptates vel volup', 'Quia perferendis vol', '2024-542112-40965', 'brand-new', '2024-12-10', '10:30:00', 'Autem suscipit rerum', 'Ariana', 'Lynch', 'Emery Ross', '1999-03-14', 'Quo molestiae praese', 'Qui nemo distinctio', '2015', '12341234123', 'vadeqacer@mailinator.com', '', '', 'Cheyenne Pruitt', 'Velit exercitatione', 'Quidem est perferend', '2005', '', '', '2024-12-09 14:46:50'),
(29, 1990, 'Haley Kane', 'Unde minima eum quae', 'Automatic', 'Charlie', 'Taglinao', 'Dela Cruz', '2003-06-26', 'Excepturi eos nostr', 'Married', '0548 Purok 3 Barangay Pinagtipunan City of General Trias, Cavite', '1992', 'Owned', '', 'Quia explicabo Aut ', '1975', '09212288244', '', 'taglinao06@gmail.com', '1234', '123', '716', 'Mariko', 'Richmond', 'Erasmus Schneider', 'Palmer', 'Noel', 'Raphael Sanford', 'Employed', '', 'Kamal Robertson', 'Iusto et cumque eos', '127', 'limykewi@mailinator.com', 'Sed sed commodi offi', 1987, '457', '1231234123123333', 'Minim mollitia aut u', 'Sunt occaecat dolore', '2024-741431-43064', 'brand-new', '2024-12-10', '12:30:00', 'Tempore sint laboru', 'Maxine', 'Chaney', 'Gray Kane', '1989-04-05', 'Voluptatem Est nihi', 'Est enim earum liber', '2019', '12312312333', 'bofidile@mailinator.com', '', '', 'Barry Burnett', 'Dolore ratione adipi', 'Ea hic recusandae V', '1970', '682', '', '2024-12-09 14:47:59'),
(30, 1973, 'Mona Bartlett', 'Est et nisi mollit c', 'Automatic', 'Charlie', 'Taglinao', 'Dela Cruz', '2003-06-26', 'Placeat qui ullam c', 'Separated', '0548 Purok 3 Barangay Pinagtipunan City of General Trias, Cavite', '1983', 'Rented', '', 'Voluptate nesciunt ', '2005', '09212288244', '12341234123', 'taglinao06@gmail.com', '643', '154', '359', 'Maris', 'Black', 'Lana Jensen', 'Emerald', 'Shannon', 'Dara Carver', 'Other', 'as', 'Zachery Livingston', 'Do sapiente nemo iru', '338', 'tage@mailinator.com', 'Deleniti delectus s', 1999, '924', 'Est totam unde maior', 'Reprehenderit aliqua', 'Minima in est aliqui', '2024-288979-37104', 'brand-new', '2020-05-12', '12:30:00', 'Proident magna et a', 'Isabella', 'Case', 'Renee Farrell', '1999-07-05', 'Necessitatibus aut a', 'Nulla ipsam explicab', '1971', '12341234123', 'xaxumere@mailinator.com', '37', '371', 'Fatima Yang', 'Quasi pariatur Qui ', 'Dolorem officia prae', '1971', '394', 'Consequat Velit ips', '2025-03-23 07:05:10'),
(31, 1992, 'Lionel Dixon', 'Molestias qui nisi f', 'Automatic', 'Charlie', 'Taglinao', 'Dela Cruz', '2003-06-26', 'Lorem culpa sint co', 'Married', '0548 Purok 3 Barangay Pinagtipunan City of General Trias, Cavite', '1973', 'Free living with Parents', '', 'Quis non sit id fug', '1995', '09212288244', '159', 'taglinao06@gmail.com', '577', '26', '746', 'Aaron', 'Barr', 'Edan Quinn', 'Byron', 'Mendez', 'Cora Love', 'Business', '', 'Walter Banks', 'Similique reiciendis', '66', 'jovyri@mailinator.com', 'Aut ullamco dolore o', 1980, '371', 'Nobis vel laboriosam', 'Temporibus eu eaque ', 'Corporis assumenda n', '2024-572280-96774', 'brand-new', '1982-05-18', '15:00:00', 'Quasi sed aliqua Qu', 'Pearl', 'Underwood', 'Tanek Johns', '1972-06-19', 'Numquam est irure in', 'Fugiat repudiandae e', '1991', '602', 'tazyvoxopi@mailinator.com', '440', '735', 'Uriel Snow', 'Voluptatibus aut min', 'Error temporibus lab', '1970', '3012', '1233123412341234', '2025-03-23 07:28:31'),
(32, 0, '', '', '', 'Charlie', 'Taglinao', 'Dela Cruz', '2003-06-26', '', '', '0548 Purok 3 Barangay Pinagtipunan City of General Trias, Cavite', '', '', '', '', '', '09212288244', '', 'taglinao06@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '2024-822013-34124', 'brand-new', '0000-00-00', '00:00:00', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '2025-03-23 12:31:04'),
(33, 0, '', '', '', 'Charlie', 'Taglinao', 'Dela Cruz', '2003-06-26', 'asd', '', '0548 Purok 3 Barangay Pinagtipunan City of General Trias, Cavite', '', 'Rented', '', '', '', '09212288244', '', 'taglinao06@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '2024-442064-21024', 'brand-new', '0000-00-00', '00:00:00', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '2025-03-23 12:32:02'),
(34, 0, '', '', '', 'Charlie', 'Taglinao', 'Dela Cruz', '2003-06-26', '', '', '0548 Purok 3 Barangay Pinagtipunan City of General Trias, Cavite', '', '', '', '', '', '09212288244', '', 'taglinao06@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '2024-025383-87769', 'brand-new', '0000-00-00', '00:00:00', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '2025-03-23 12:32:15'),
(35, 0, '', '', '', 'Charlie', 'Taglinao', 'Dela Cruz', '2003-06-26', '', '', '0548 Purok 3 Barangay Pinagtipunan City of General Trias, Cavite', '', '', '', '', '', '09212288244', '', 'taglinao06@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '2024-218018-60228', 'brand-new', '0000-00-00', '00:00:00', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '2025-03-23 13:02:34'),
(36, 0, '', '', '', 'Charlie', 'Taglinao', 'Dela Cruz', '2003-06-26', '', '', '0548 Purok 3 Barangay Pinagtipunan City of General Trias, Cavite', '', '', '', '', '', '09212288244', '', 'taglinao06@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '2024-738744-27188', 'brand-new', '0000-00-00', '00:00:00', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '2025-03-23 13:03:33'),
(37, 0, '', '', '', 'Charlie', 'Taglinao', 'Dela Cruz', '2003-06-26', '', '', '0548 Purok 3 Barangay Pinagtipunan City of General Trias, Cavite', '', '', '', '', '', '09212288244', '', 'taglinao06@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '2024-041794-59013', 'brand-new', '0000-00-00', '00:00:00', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '2025-03-23 13:06:57'),
(38, 0, '', '', '', 'Charlie', 'Taglinao', 'Dela Cruz', '2003-06-26', '', '', '0548 Purok 3 Barangay Pinagtipunan City of General Trias, Cavite', '', '', '', '', '', '09212288244', '', 'taglinao06@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '2024-589533-43177', 'brand-new', '0000-00-00', '00:00:00', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '2025-03-23 13:07:35'),
(39, 0, '', '', '', 'Charlie', 'Taglinao', 'Dela Cruz', '2003-06-26', '', '', '0548 Purok 3 Barangay Pinagtipunan City of General Trias, Cavite', '', '', '', '', '', '09212288244', '', 'taglinao06@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '2024-541338-02318', 'brand-new', '0000-00-00', '00:00:00', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '2025-03-23 13:07:51'),
(40, 0, '', '', '', 'Charlie', 'Taglinao', 'Dela Cruz', '2003-06-26', '', '', '0548 Purok 3 Barangay Pinagtipunan City of General Trias, Cavite', '', '', '', '', '', '09212288244', '', 'taglinao06@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '2024-829491-29463', 'brand-new', '0000-00-00', '00:00:00', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '2025-03-23 13:08:21'),
(41, 0, '', '', '', 'Charlie', 'Taglinao', 'Dela Cruz', '2003-06-26', '', '', '0548 Purok 3 Barangay Pinagtipunan City of General Trias, Cavite', '', '', '', '', '', '09212288244', '', 'taglinao06@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '2024-220886-98629', 'brand-new', '0000-00-00', '00:00:00', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '2025-03-23 13:08:35'),
(42, 0, '', '', '', 'Charlie', 'Taglinao', 'Dela Cruz', '2003-06-26', '', '', '0548 Purok 3 Barangay Pinagtipunan City of General Trias, Cavite', '', '', '', '', '', '09212288244', '', 'taglinao06@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '2024-238928-26669', 'brand-new', '0000-00-00', '00:00:00', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '2025-03-23 13:18:46'),
(43, 1995, 'Lance Travis', 'Est sed reiciendis v', 'Automatic', 'Charlie', 'Taglinao', 'Dela Cruz', '2003-06-26', 'Sed sequi quisquam n', 'Single', '0548 Purok 3 Barangay Pinagtipunan City of General Trias, Cavite', '3', 'Owned', '', 'Voluptas tempor laud', '3', '09212288244', '09212288245', 'taglinao06@gmail.com', '123412344123', '1234123412', '3', 'Grace', 'Sellers', 'Ulysses Blanchard', 'Christian', 'Mcgowan', 'Gemma Stevens', 'Business', '', 'Venus Durham', 'Eu ab ullam voluptat', '3323344', 'naluwasiza@mailinator.com', 'Perspiciatis lorem ', 1, '32345', '123412341234', 'Optio et aperiam ha', 'Eum ut officia illum iusto aliquam', '2024-529035-30027', 'brand-new', '2025-03-24', '11:00:00', 'Aute sunt corrupti ', 'Illiana', 'Sutton', 'Dominique Hudson', '2006-09-28', 'Esse id quae dolor', 'Eveniet et eum simi', '4', '12345123444', 'pynesyci@mailinator.com', '776232333334', '1234123456', 'Yetta Hogan', 'Tempora natus perfer', 'Illum ullam quae pe', '4', '51234', '12312312312332', '2025-03-24 10:09:45'),
(44, 0, '', '', '', 'Charlie', 'Taglinao', 'Dela Cruz', '2003-06-26', '', '', '0548 Purok 3 Barangay Pinagtipunan City of General Trias, Cavite', '', '', '', '', '', '09212288244', '', 'taglinao06@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '2024-754494-39433', 'brand-new', '0000-00-00', '00:00:00', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '2025-03-24 15:10:04'),
(45, 0, '', '', '', 'Charlie', 'Taglinao', 'Dela Cruz', '2003-06-26', '', '', '0548 Purok 3 Barangay Pinagtipunan City of General Trias, Cavite', '', '', '', '', '', '09212288244', '', 'taglinao06@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '2024-222463-88739', 'brand-new', '0000-00-00', '00:00:00', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '2025-03-24 15:20:27'),
(46, 0, '', '', '', 'Charlie', 'Taglinao', 'Dela Cruz', '2003-06-26', '', '', '0548 Purok 3 Barangay Pinagtipunan City of General Trias, Cavite', '', '', '', '', '', '09212288244', '', 'taglinao06@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', '', '2024-978976-96185', 'brand-new', '0000-00-00', '00:00:00', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '2025-03-24 15:22:42'),
(47, 1991, 'Lunea Fischer', 'Aliqua Incididunt i', 'Manual', 'Charlie', 'Taglinao', 'Dela Cruz', '2003-06-26', 'Recusandae Ipsam qu', 'Married', '0548 Purok 3 Barangay Pinagtipunan City of General Trias, Cavite', '12', 'Rented', '', 'Delectus minus iust', '2', '09212288244', '09212282443', 'taglinao06@gmail.com', '123412341234', '123412341', '216', 'Shana', 'Kirkland', 'Brynn Moran', 'Charde', 'Carroll', 'Jorden Burns', 'Employed', '', 'Eugenia Craft', 'Quisquam sapiente se', '123123123', 'fedizaj@mailinator.com', 'Quidem eu est enim d', 12, '123456', '1234512341234212', 'Tempore dicta qui v', 'Exercitationem accusamus necessitatibus corrupti omnis deleniti illum ducimus quis praesentium possimus quisquam', '2024-082023-38677', 'brand-new', '2025-03-24', '16:30:00', 'Id sed et enim quae ', 'Leonard', 'Nieves', 'April Cunningham', '1987-06-03', 'Culpa est consequat', 'Lorem ullam rerum fu', '3', '12312344444', 'hufahonapi@mailinator.com', '123412341239', '1231231233', 'Sara Knight', 'Cupidatat laudantium', 'Porro esse qui sit', '12', '123123', '1234123412341734', '2025-03-24 18:11:12');

-- --------------------------------------------------------

--
-- Table structure for table `forms_sanglaorcr_applicants`
--

CREATE TABLE `forms_sanglaorcr_applicants` (
  `id` int(11) NOT NULL,
  `year_model` varchar(255) DEFAULT NULL,
  `make` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `transmition_type` varchar(155) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `place_of_birth` varchar(255) DEFAULT NULL,
  `marital_status` varchar(255) DEFAULT NULL,
  `present_address` text DEFAULT NULL,
  `years_present_address` varchar(255) DEFAULT NULL,
  `ownership` varchar(255) DEFAULT NULL,
  `ownership_other` varchar(255) DEFAULT NULL,
  `previous_address` text DEFAULT NULL,
  `years_previous_address` varchar(255) DEFAULT NULL,
  `contact_number_1` varchar(20) DEFAULT NULL,
  `contact_number_2` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `tin_number` varchar(255) DEFAULT NULL,
  `sss_number` varchar(255) DEFAULT NULL,
  `dependents` varchar(255) DEFAULT NULL,
  `mother_maiden_first_name` varchar(255) DEFAULT NULL,
  `mother_maiden_last_name` varchar(255) DEFAULT NULL,
  `mother_maiden_middle_name` varchar(255) DEFAULT NULL,
  `father_first_name` varchar(255) DEFAULT NULL,
  `father_last_name` varchar(255) DEFAULT NULL,
  `father_middle_name` varchar(255) DEFAULT NULL,
  `income_source` varchar(255) DEFAULT NULL,
  `income_source_other` varchar(255) DEFAULT NULL,
  `employer_name` varchar(255) DEFAULT NULL,
  `office_address` text DEFAULT NULL,
  `office_number` varchar(20) DEFAULT NULL,
  `company_email` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `years_service` varchar(255) DEFAULT NULL,
  `monthly_income` varchar(255) DEFAULT NULL,
  `credit_cards` varchar(255) DEFAULT NULL,
  `credit_history` text DEFAULT NULL,
  `relationship_borrower` varchar(255) DEFAULT NULL,
  `first_name_borrower` varchar(255) DEFAULT NULL,
  `last_name_borrower` varchar(255) DEFAULT NULL,
  `middle_name_borrower` varchar(255) DEFAULT NULL,
  `date_of_birth_borrower` date DEFAULT NULL,
  `place_birth_borrower` varchar(255) DEFAULT NULL,
  `residential_address_borrower` text DEFAULT NULL,
  `years_stay_borrower` varchar(255) DEFAULT NULL,
  `contact_number_borrower` varchar(20) DEFAULT NULL,
  `email_address_borrower` varchar(255) DEFAULT NULL,
  `tin_number_borrower` varchar(255) DEFAULT NULL,
  `sss_number_borrower` varchar(255) DEFAULT NULL,
  `mother_maiden_first_name_CoBorrower` varchar(255) DEFAULT NULL,
  `mother_maiden_last_name_CoBorrower` varchar(255) DEFAULT NULL,
  `mother_maiden_middle_name_CoBorrower` varchar(255) DEFAULT NULL,
  `father_first_name_CoBorrower` varchar(255) DEFAULT NULL,
  `father_last_name_CoBorrower` varchar(255) DEFAULT NULL,
  `father_middle_name_CoBorrower` varchar(255) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `form_type` varchar(50) NOT NULL DEFAULT 'sangla-orcr',
  `file_name` varchar(255) DEFAULT NULL,
  `appointment_date` date DEFAULT NULL,
  `appointment_time` time DEFAULT NULL,
  `ORCR_filename` varchar(255) DEFAULT NULL,
  `appointed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `forms_sanglaorcr_applicants`
--

INSERT INTO `forms_sanglaorcr_applicants` (`id`, `year_model`, `make`, `type`, `transmition_type`, `first_name`, `last_name`, `middle_name`, `dob`, `place_of_birth`, `marital_status`, `present_address`, `years_present_address`, `ownership`, `ownership_other`, `previous_address`, `years_previous_address`, `contact_number_1`, `contact_number_2`, `email`, `tin_number`, `sss_number`, `dependents`, `mother_maiden_first_name`, `mother_maiden_last_name`, `mother_maiden_middle_name`, `father_first_name`, `father_last_name`, `father_middle_name`, `income_source`, `income_source_other`, `employer_name`, `office_address`, `office_number`, `company_email`, `position`, `years_service`, `monthly_income`, `credit_cards`, `credit_history`, `relationship_borrower`, `first_name_borrower`, `last_name_borrower`, `middle_name_borrower`, `date_of_birth_borrower`, `place_birth_borrower`, `residential_address_borrower`, `years_stay_borrower`, `contact_number_borrower`, `email_address_borrower`, `tin_number_borrower`, `sss_number_borrower`, `mother_maiden_first_name_CoBorrower`, `mother_maiden_last_name_CoBorrower`, `mother_maiden_middle_name_CoBorrower`, `father_first_name_CoBorrower`, `father_last_name_CoBorrower`, `father_middle_name_CoBorrower`, `comments`, `transaction_id`, `form_type`, `file_name`, `appointment_date`, `appointment_time`, `ORCR_filename`, `appointed_at`) VALUES
(24, '1982', 'Chase Slater', 'Ab cum voluptas mini', 'Manual', 'Charlie', 'Taglinao', 'Dela Cruz', '', 'Eos laborum nihil co', 'Separated', '0548 Purok 3 Barangay Pinagtipunan City of General Trias, Cavite', '2', 'Owned', '', 'Quia expedita blandi', '2', '09212288244', '12332213333', 'taglinao06@gmail.com', '123322133331', '1233221333', '282', 'Lucy', 'Bartlett', 'Dominic Welch', 'Brittany', 'Kim', 'Kiara Barlow', 'Employed', '415', 'Shelley Hines', 'Magni anim eos iusto', '12332213333', 'nyvi@mailinator.com', 'Vel nihil quia eaque', '2', '212333', '2123322133332333', 'Qui quisquam deserun', 'Laudantium dolore N', 'Cyrus', 'Murphy', 'Hasad Holman', '1976-11-14', 'Consequatur voluptat', 'Iste ea et sed quam ', '3', '22131233221', 'fasosymyb@mailinator.com', '123322133332', '1233221334', 'Maxwell', 'Bryan', 'Cleo Watkins', 'Patrick', 'George', 'Brady Haynes', 'Vero quo reprehenderit incidunt autem maiores', '2024-027401-21574', 'sangla-orcr', NULL, '2025-03-24', '09:00:00', 'Charlie Taglinao_ORCR_2025-03-24_18-48-52_0.png', '2025-03-24 17:48:52'),
(25, '2018', 'Astra Calhoun', 'Eu placeat cupidita', 'Manual', 'Charlie', 'Taglinao', 'Dela Cruz', '', 'Numquam ut fugiat s', 'Single', '0548 Purok 3 Barangay Pinagtipunan City of General Trias, Cavite', '2', 'Owned', '', 'Similique voluptatem', '2', '09212288244', '12312333333', 'taglinao06@gmail.com', '212312333333', '1233333333', '971', 'Maisie', 'Craig', 'Florence Reeves', 'Grant', 'Stark', 'Georgia Todd', 'Business', '', 'Remedios Garrison', 'Aperiam rem lorem Na', '12314145235', 'befidyf@mailinator.com', 'Qui voluptatibus est', '12', '123333', '3232312325123423', 'Id earum illo solut', 'Doloremque cupidatat', 'Trevor', 'Branch', 'Odessa Bradshaw', '1973-08-29', 'Laboriosam cumque d', 'Illo non aut quia qu', '4', '12312343123', 'cukexa@mailinator.com', '231451234444', '1231234123', 'Drew', 'Noble', 'September Fisher', 'Lacy', 'Lynn', 'Eve Foley', 'Laboris fuga Molestias blanditiis velit tenetur enim esse id delectus vitae similique debitis ut est ad', '2024-903249-50078', 'sangla-orcr', NULL, '2025-03-24', '13:30:00', 'Charlie Taglinao_ORCR_2025-03-24_18-57-37_0.jpg', '2025-03-24 17:57:37'),
(26, '2000', 'Sigourney Moses', 'Ipsam cumque consect', 'Automatic', 'Charlie', 'Taglinao', 'Dela Cruz', '', 'Ea accusamus volupta', 'Widowed', '0548 Purok 3 Barangay Pinagtipunan City of General Trias, Cavite', '2', 'Free living with Parents', '', 'Doloremque anim ex p', '3', '09212288244', '80921288244', 'taglinao06@gmail.com', '312123123123', '1231231233', '579', 'Risa', 'Meyer', 'Zeph Stewart', 'Mason', 'Christensen', 'Brianna England', 'Employed', '', 'Aurora Velasquez', 'Dolor quasi omnis co', '3323456', 'fapevo@mailinator.com', 'Provident unde et v', '2', '123445', '1231231231231233', 'Quas mollitia nihil ', 'Qui tenetur voluptat', 'Hedda', 'Walker', 'Raya Small', '2002-02-04', 'Aut dolorem ipsam cu', 'Aliqua In proident', '2', '22311235787', 'tipuzal@mailinator.com', '123444123333', '3235477543', 'Lance', 'Ramirez', 'Lucas Sargent', 'Jasper', 'Stuart', 'Leonard Compton', 'Ipsum laborum Minus ipsa ad quae dicta voluptatibus id autem alias dolore nulla reprehenderit voluptates quo omnis nihil', '2024-365227-99659', 'sangla-orcr', NULL, '2025-03-24', '16:00:00', 'Charlie Taglinao_ORCR_2025-03-24_19-00-22_0.png', '2025-03-24 18:00:22');

-- --------------------------------------------------------

--
-- Table structure for table `forms_secondhand_applicants`
--

CREATE TABLE `forms_secondhand_applicants` (
  `id` int(11) NOT NULL,
  `year_model` varchar(255) DEFAULT NULL,
  `make` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `transmition_type` varchar(155) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `place_of_birth` varchar(255) DEFAULT NULL,
  `marital_status` varchar(255) DEFAULT NULL,
  `present_address` text DEFAULT NULL,
  `years_present_address` varchar(255) DEFAULT NULL,
  `ownership` varchar(255) DEFAULT NULL,
  `ownership_other` varchar(255) DEFAULT NULL,
  `previous_address` text DEFAULT NULL,
  `years_previous_address` varchar(255) DEFAULT NULL,
  `contact_number_1` varchar(255) DEFAULT NULL,
  `contact_number_2` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `tin_sss` varchar(255) DEFAULT NULL,
  `tin_number` varchar(255) DEFAULT NULL,
  `sss_number` varchar(255) DEFAULT NULL,
  `dependents` varchar(255) DEFAULT NULL,
  `mother_maiden_first_name` varchar(255) DEFAULT NULL,
  `mother_maiden_last_name` varchar(255) DEFAULT NULL,
  `mother_maiden_middle_name` varchar(255) DEFAULT NULL,
  `father_first_name` varchar(255) DEFAULT NULL,
  `father_last_name` varchar(255) DEFAULT NULL,
  `father_middle_name` varchar(255) DEFAULT NULL,
  `income_source` varchar(255) DEFAULT NULL,
  `income_source_other` varchar(255) DEFAULT NULL,
  `employer_name` varchar(255) DEFAULT NULL,
  `office_address` text DEFAULT NULL,
  `office_number` varchar(255) DEFAULT NULL,
  `company_email` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `years_service` varchar(255) DEFAULT NULL,
  `monthly_income` varchar(255) DEFAULT NULL,
  `credit_cards` varchar(255) DEFAULT NULL,
  `credit_history` text DEFAULT NULL,
  `relationship_borrower` varchar(255) DEFAULT NULL,
  `first_name_borrower` varchar(255) DEFAULT NULL,
  `last_name_borrower` varchar(255) DEFAULT NULL,
  `middle_name_borrower` varchar(255) DEFAULT NULL,
  `date_of_birth_borrower` date DEFAULT NULL,
  `place_birth_borrower` varchar(255) DEFAULT NULL,
  `residential_address_borrower` text DEFAULT NULL,
  `years_stay_borrower` varchar(255) DEFAULT NULL,
  `contact_number_borrower` varchar(255) DEFAULT NULL,
  `email_address_borrower` varchar(255) DEFAULT NULL,
  `tin_number_borrower` varchar(20) DEFAULT NULL,
  `sss_number_borrower` varchar(20) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `form_type` varchar(50) DEFAULT 'second-hand',
  `appointment_date` date DEFAULT NULL,
  `appointment_time` time DEFAULT NULL,
  `appointed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `forms_secondhand_applicants`
--

INSERT INTO `forms_secondhand_applicants` (`id`, `year_model`, `make`, `type`, `transmition_type`, `first_name`, `last_name`, `middle_name`, `dob`, `place_of_birth`, `marital_status`, `present_address`, `years_present_address`, `ownership`, `ownership_other`, `previous_address`, `years_previous_address`, `contact_number_1`, `contact_number_2`, `email`, `tin_sss`, `tin_number`, `sss_number`, `dependents`, `mother_maiden_first_name`, `mother_maiden_last_name`, `mother_maiden_middle_name`, `father_first_name`, `father_last_name`, `father_middle_name`, `income_source`, `income_source_other`, `employer_name`, `office_address`, `office_number`, `company_email`, `position`, `years_service`, `monthly_income`, `credit_cards`, `credit_history`, `relationship_borrower`, `first_name_borrower`, `last_name_borrower`, `middle_name_borrower`, `date_of_birth_borrower`, `place_birth_borrower`, `residential_address_borrower`, `years_stay_borrower`, `contact_number_borrower`, `email_address_borrower`, `tin_number_borrower`, `sss_number_borrower`, `comments`, `transaction_id`, `form_type`, `appointment_date`, `appointment_time`, `appointed_at`) VALUES
(11, '2500', 'Hino', 'Don Aldrin', 'Manual', 'Kevin', 'Bagasbas', 'X.', '2000-02-29', 'Dongcheng, China', 'Separated', 'Wuhan, China', '16', 'Free living with Parents', '', 'N/A', '0', '09999999912', '09999999945', 'quilapiomatthew31@gmail.com', NULL, '0000000000000', '11888888833', '2', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Business', '', 'Philippine Offshore Gaming Operators', 'Pasay, Metro Manila', '7777777', 'quilapiomatthew31@gmail.com', 'Pogo Manager', '4', '1000000.00', '9999555577771623', 'Negative Credit Score', 'Kabet', 'Alice', 'Guo', 'Ping', '2003-01-01', 'Bamban, Tarlac', 'N/A', '12', '000', 'aliceguo@gmail.com', '', '', NULL, '2024-932720-31914', 'second-hand', '2024-11-28', '09:30:00', '2024-11-30 05:43:04'),
(14, '2000', 'Madonna Richmond', 'Deserunt sunt persp', 'Automatic', 'Kreian', 'Lanaria', 'De La Cruz', '1997-06-21', 'Dolorem maxime tempo', 'Married', 'Dolore dolorem ullam', '1983', 'Owned', '', 'Consequatur Debitis', '1990', '09456954559', '', 'kreianlanaria@gmail.com', NULL, '', '', '145', 'Libby', 'Copeland', 'Steel Bullock', 'Vanna', 'Garrison', 'Kalia Burgess', 'Business', '', 'Hamilton Burris', 'Voluptates numquam d', '738', 'balajuzul@mailinator.com', 'Eum neque aspernatur', '2014', '822', '', 'Necessitatibus asper', 'Cum quos occaecat cu', 'Peter', 'Montoya', 'Lana Patterson', '2003-03-08', 'Voluptatem Laborum', 'Sint labore aperiam', '2014', '09456954558', 'lebokopa@mailinator.com', '', '', NULL, '2024-012319-57270', 'second-hand', '2024-12-17', '11:00:00', '2024-12-02 10:30:58'),
(15, '2000', 'asdasdasd', 'asdasd', 'Automatic', 'Charlie', 'Taglinao', 'Dela Cruz', '2003-06-26', 'Rerum enim eligendi ', 'Separated', '0548 Purok 3 Barangay Pinagtipunan City of General Trias, Cavite', '2', 'Free living with Parents', '', 'Quo molestiae adipis', '2', '09212288244', '11231233333', 'taglinao06@gmail.com', NULL, '212333333333', '1231241234', '700', 'Holly', 'Carrillo', 'Ila Foreman', 'Jenette', 'Ashley', 'Hall Ratliff', 'Employed', '', 'dasd', 'sad', '12323113', 'asd@asa.sd', 'asdasd', '23', '233323', '1321231231231231', '', 'Quo commodi et perfe', 'Donovan', 'Simpson', 'Maya Reese', '2003-05-05', 'Qui qui id hic accu', 'Maiores quas deserun', '2', '12344123444', 'mozavuluxo@mailinator.com', '', '', NULL, '2024-784392-90335', 'second-hand', '2025-03-24', '14:00:00', '2025-03-24 15:27:53'),
(16, '1999', 'Leila Patton', 'Praesentium eos eos', 'Automatic', 'Charlie', 'Taglinao', 'Dela Cruz', '2003-06-26', 'Consequat Ratione d', 'Widowed', '0548 Purok 3 Barangay Pinagtipunan City of General Trias, Cavite', '2', 'Owned', '', 'Amet eveniet esse ', '3', '09212288244', '42156456734', 'taglinao06@gmail.com', NULL, '090909937374', '909477283', '841', 'Maggie', 'Lane', 'Laurel Leonard', 'Kylie', 'Love', 'Brett Webb', 'Employed', '592', 'Shellie Mcclure', 'Dolores deserunt vol', '2332323', 'ximege@mailinator.com', 'Rem eu earum qui qui', '1', '124788', '2331233556747642', 'Pariatur Reprehende', 'In nisi assumenda im', 'Tashya', 'Velasquez', 'Norman Weber', '2003-03-05', 'Omnis aut officiis m', 'Eligendi pariatur M', '4', '12565674534', 'fulanisyt@mailinator.com', '', '', NULL, '2024-999062-74466', 'second-hand', '2025-03-24', '12:30:00', '2025-03-24 18:16:28'),
(17, '1999', 'Leila Patton', 'Praesentium eos eos', 'Automatic', 'Charlie', 'Taglinao', 'Dela Cruz', '2003-06-26', 'Consequat Ratione d', 'Widowed', '0548 Purok 3 Barangay Pinagtipunan City of General Trias, Cavite', '2', 'Owned', '', 'Amet eveniet esse ', '3', '09212288244', '42156456734', 'taglinao06@gmail.com', NULL, '090909937374', '909477283', '841', 'Maggie', 'Lane', 'Laurel Leonard', 'Kylie', 'Love', 'Brett Webb', 'Employed', '592', 'Shellie Mcclure', 'Dolores deserunt vol', '2332323', 'ximege@mailinator.com', 'Rem eu earum qui qui', '1', '124788', '2331233556747642', 'Pariatur Reprehende', 'In nisi assumenda im', 'Tashya', 'Velasquez', 'Norman Weber', '2003-03-05', 'Omnis aut officiis m', 'Eligendi pariatur M', '4', '12565674534', 'fulanisyt@mailinator.com', '123454667312', '123546532', NULL, '2024-131734-17474', 'second-hand', '2025-03-24', '12:30:00', '2025-03-24 18:19:48'),
(18, '2000', 'Roth Leonard', 'Et ut qui numquam ra', 'Manual', 'Charlie', 'Taglinao', 'Dela Cruz', '2003-06-26', 'Qui hic voluptate et', 'Widowed', '0548 Purok 3 Barangay Pinagtipunan City of General Trias, Cavite', '12', 'Rented', '', 'Labore officiis exce', '12', '09212288244', '12312312341', 'taglinao06@gmail.com', NULL, '123412341234', '123412341', '596', 'Alfreda', 'Hendrix', 'Petra Vincent', 'Fiona', 'Ware', 'Lysandra Morse', 'Remittance', '', 'Josephine Golden', 'Aut eos laboriosam ', '123123123', 'fepufi@mailinator.com', 'Nam ad amet reprehe', '2', '233323', '1231231231233333', 'Aliquam dicta nostru', 'Sed cupiditate fugit', 'Freya', 'Sandoval', 'Shelly Greene', '1976-10-07', 'Nostrum quo eu rerum', 'Quasi autem duis lau', '3', '11235234523', 'kugaxit@mailinator.com', '431242342344', '333333333', 'Non facere omnis ad praesentium consectetur sed est eaque in reprehenderit', '2024-632208-27447', 'second-hand', '2025-03-24', '15:00:00', '2025-03-24 18:30:04');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `subtitle` varchar(255) NOT NULL,
  `background_image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `font_color` varchar(10) DEFAULT NULL,
  `expiry_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `subtitle`, `background_image`, `created_at`, `font_color`, `expiry_date`) VALUES
(56, 'K8 Financial Consultancy Services', 'Unlock the Keys to Your New Ride with Our Car Loans', 'header1(1).webp', '2024-12-10 13:29:09', 'orange', '2024-12-12 21:29:00'),
(57, 'K8 Financial Consultancy Services', 'Unlock the Keys to Your New Ride with Our Car Loans', 'clientheader(1).webp', '2024-12-10 13:33:03', 'black', '2024-12-11 21:32:00');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `expiry` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`id`, `email`, `token`, `expiry`, `created_at`) VALUES
(20, 'marionparil26@gmail.com', 'be663d5857eb7ac14f124d7c6fbac90305e2d146063043e327b1ee55a809dc547aaad1f7ba60a076441c359829ffe6a5422f', '2024-12-02 14:01:34', '2024-12-02 12:46:34'),
(21, 'liquifienx4@gmail.com', 'c24f8c80a6e9c9a3f72f159184e543cfc57cb0c73ba9e7b88e8421a1daf784cccb17e824f1ce5492ed441a9f24d0f0863e56', '2024-12-02 14:03:52', '2024-12-02 12:48:52');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `session_id` varchar(255) NOT NULL,
  `login_time` datetime NOT NULL,
  `logout_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `session_id`, `login_time`, `logout_time`) VALUES
(220, 22, 'r9ggp4rluh2qrdgf8bakf8q73i', '2024-11-15 23:36:00', '2024-11-15 15:37:33'),
(221, 22, 's6mtgbnd3gt9e9kq01f7iifbo1', '2024-11-15 23:37:43', '2024-11-15 15:37:46'),
(222, 22, '8cba3gj8bam0e9hmvj5012em92', '2024-11-16 02:55:54', '2024-11-15 18:55:58'),
(223, 29, 'qincarn5e5l7hj45475paj23g0', '2024-11-17 14:42:42', '2024-11-18 07:48:33'),
(224, 22, 'e0ah2uf04k0n9lqs6dr7sh7dmd', '2024-11-20 14:41:53', '2024-11-20 07:02:02'),
(225, 112, 'mb0k23u5kp4dh2cp9e74lm1u6a', '2024-11-18 14:19:37', '2024-11-18 06:21:53'),
(226, 48, 'dhiesdo23amu2u13rht4fke5to', '2024-11-18 14:22:01', '2024-11-18 06:23:10'),
(227, 29, 'qvqgs9dt60nlq5ubl23hobf3ip', '2024-11-18 14:23:17', '2024-11-18 06:26:57'),
(228, 122, 'aicla04ckgecmnbtbaeqao126v', '2024-11-18 14:24:30', '2024-11-18 06:24:44'),
(229, 48, '7bf85b4j02frvr4ajjd6mjhrgr', '2024-11-20 07:17:02', '2024-11-19 23:18:40'),
(230, 124, 'ktu8i3n1489fqcem3v1ur37t3p', '2024-11-18 21:43:46', '2024-11-24 19:18:37'),
(231, 112, 'b27hro39mvp8mir48bjd5ic827', '2024-11-20 07:27:50', '2024-11-19 23:30:26'),
(232, 29, 'ubglv5u18q0qf45ltj02njrgq2', '2024-11-20 12:33:54', '2024-11-20 04:43:24'),
(233, 48, 'jn7n52pl1qummvbjidqclhtoqb', '2024-11-20 12:45:15', '2024-11-20 04:50:52'),
(234, 29, '18k9p17qitlsohahn1ctq95ph1', '2024-11-20 13:02:40', '2024-11-20 06:30:06'),
(235, 112, '1cdsirm13ksed4595mo5k7p5uc', '2024-11-20 14:43:40', '2024-11-20 07:06:03'),
(236, 48, 'pe4jfumdndk1k9anrnb3oaaiak', '2024-11-20 15:09:19', '2024-11-20 07:15:52'),
(237, 48, 'ls6974miv2nfdirj3elgvr9s8q', '2024-11-20 15:20:08', '2024-11-20 07:21:05'),
(238, 29, '5g258ianl1q38vu96h4ptp1n1v', '2024-11-20 15:25:44', '2024-11-20 16:14:50'),
(239, 22, '7h8g3vck9g8h82oh0lbis9tko1', '2024-11-20 15:27:48', '2024-11-20 16:14:41'),
(240, 22, '7h8g3vck9g8h82oh0lbis9tko1', '2024-11-20 16:14:43', '2024-11-20 08:20:36'),
(241, 112, '25jq2hjlagv4o2i5gh2lgekp8k', '2024-11-21 19:59:27', '2024-11-21 12:00:35'),
(242, 22, 'qincarn5e5l7hj45475paj23g0', '2024-11-20 17:07:02', '2024-11-20 17:35:18'),
(243, 22, 'qincarn5e5l7hj45475paj23g0', '2024-11-20 17:40:16', '2024-11-20 09:47:47'),
(244, 48, '54li0q1ro68tasdg240kdhrcmv', '2024-11-22 17:10:29', '2024-11-22 09:11:59'),
(245, 125, 'd0dl42v647l5s51k9pmhdl73jm', '2024-11-20 19:42:00', '2024-11-20 11:42:32'),
(246, 125, 'fi2710aegb3gv0kod9kp6e8pp7', '2024-11-20 19:43:16', '2024-11-20 19:48:35'),
(247, 125, 'fi2710aegb3gv0kod9kp6e8pp7', '2024-11-20 19:48:45', '2024-11-20 12:36:07'),
(248, 126, 'aucs4kquclcc1pbvsv6glkk6kl', '2024-11-20 20:06:41', NULL),
(249, 22, '2k304voulgpgb4bfridg405jh2', '2024-11-22 10:05:52', '2024-11-22 02:06:00'),
(250, 112, '5o9ckhgvldtni2potdfl4v4vif', '2024-11-23 16:19:06', '2024-11-23 23:28:35'),
(251, 22, '597vrm064sbjmuls6er0s2s58s', '2024-11-22 13:05:27', '2024-11-22 05:14:29'),
(252, 22, '7uq5uquob521orbbeasgjj9etv', '2024-11-22 17:06:40', '2024-11-22 09:07:22'),
(253, 29, 'gbhqocs2v1snop1p7osglenrd1', '2024-11-22 17:07:47', '2024-11-22 09:10:18'),
(254, 48, '419m5lj2rp5p68akrnu6f4t2r8', '2024-11-22 17:13:23', '2024-11-22 09:23:08'),
(255, 29, '1btcogim3e4e7m8t2tjasahban', '2024-11-23 02:02:27', '2024-11-22 18:17:05'),
(256, 112, 'lllim93cmq86ea690me8ml3ml6', '2024-11-23 23:43:00', '2024-11-23 15:45:21'),
(257, 29, 'n3pber73djtt7c57rsu7pi6pam', '2024-11-23 23:45:29', '2024-11-23 15:46:17'),
(258, 22, 'sg6quecs4khqvakjjmfk1un5h8', '2024-11-24 13:26:46', '2024-11-25 13:58:49'),
(259, 48, 'nq8dgb52nomiig34i4hnguejq1', '2024-11-24 18:09:37', '2024-11-24 10:10:33'),
(260, 29, 'btgvumt4e7qo7ea4a47lmksra0', '2024-11-24 18:11:03', '2024-11-24 10:19:13'),
(261, 29, 'eejiohg0hal1hasseaist865kf', '2024-11-25 14:01:26', '2024-11-25 06:01:42'),
(262, 48, 'sg6quecs4khqvakjjmfk1un5h8', '2024-11-25 14:01:02', '2024-11-25 06:01:05'),
(263, 48, 'n731p6go3aclsger2rk4chfq5a', '2024-11-25 21:26:31', '2024-11-25 21:36:02'),
(264, 112, 'jub911u216ns2g1mahfid4rpb2', '2024-11-25 18:51:37', '2024-11-25 10:52:08'),
(265, 112, 'n3tr4rbsm9bh72s3d3p3rqare2', '2024-11-25 18:56:19', '2024-11-25 19:14:38'),
(266, 112, 'n3tr4rbsm9bh72s3d3p3rqare2', '2024-11-25 19:14:50', '2024-11-25 11:15:22'),
(267, 112, '6oj728kum27hgl6jii6lsh7u71', '2024-11-25 20:02:12', '2024-11-25 12:57:53'),
(268, 22, 'af0l9g4d60ejgve61kj826374n', '2024-11-25 19:42:52', '2024-11-25 11:44:03'),
(269, 22, 'h1oevavbe63rq1ft67ibg47iio', '2024-11-25 19:45:39', '2024-11-25 20:47:59'),
(270, 22, 'h1oevavbe63rq1ft67ibg47iio', '2024-11-25 20:48:08', '2024-11-25 12:49:17'),
(271, 128, '32qc0vr684f6e4km002305bku2', '2024-11-25 20:58:44', '2024-11-25 13:05:58'),
(272, 121, '1l37tt3icoj458jif5f6bbaqf0', '2024-11-25 21:01:46', '2024-11-25 13:01:50'),
(273, 121, 's74gqbnuafl6rqfrht4g33silc', '2024-11-25 21:10:56', '2024-11-25 13:10:59'),
(274, 112, 'qmbsto0n7g0bltriqnhd6rrc78', '2024-11-25 21:17:52', '2024-11-25 13:35:00'),
(275, 121, 'oddd34442rv6effm5bkh3ulpcg', '2024-11-25 21:22:10', '2024-11-25 13:22:12'),
(276, 22, 'g86m1g237t8rm2o4gugu6s3n0a', '2024-11-25 21:36:42', '2024-11-25 13:36:47'),
(277, 29, 'e4a8fn1hhddt5dco3rr6anpdj9', '2024-11-25 21:38:42', '2024-11-25 13:38:45'),
(278, 22, '19mqgn63dp142797q4abrhp8e5', '2024-11-25 21:42:45', '2024-11-25 13:42:53'),
(279, 112, 'kkfmsd2a3coldipnqkurhuojbp', '2024-11-25 21:47:48', '2024-11-25 13:54:06'),
(280, 121, 'n731p6go3aclsger2rk4chfq5a', '2024-11-25 21:44:10', '2024-11-25 13:44:24'),
(281, 48, '7t1jfg67e07t4docifm0t8quqk', '2024-11-25 21:45:05', '2024-11-25 13:47:33'),
(282, 121, '73ts4u8j3pahu70t4td3gk3nbp', '2024-11-25 22:22:04', '2024-11-27 16:09:02'),
(283, 29, 'fi7ombms03gij1foo0303f6617', '2024-11-25 23:11:41', '2024-11-25 15:13:50'),
(284, 48, '4963a8bovcjn9rkgktuom9v43u', '2024-11-26 00:25:54', '2024-11-25 16:26:25'),
(285, 112, 'pe31f0keins8m0kq3fc12efbvf', '2024-11-26 11:39:41', '2024-11-26 16:57:23'),
(286, 29, 'rehhqsgdnqqqlk6kev4h083f5e', '2024-11-26 17:19:58', '2024-11-26 09:23:40'),
(287, 112, 'onbiqhgrslvm43t7o2ill8re9f', '2024-11-26 16:57:34', '2024-11-26 08:57:38'),
(288, 112, '1i3pdtbklv2qm5e5qeo84ancdd', '2024-11-26 22:42:13', '2024-11-26 14:43:22'),
(289, 48, 'kaldgag8ap59e40s870m57a3u5', '2024-11-26 22:44:04', '2024-11-26 14:44:17'),
(290, 29, 'lbbgouhovld7a4sc4eutl21nks', '2024-11-26 22:44:28', '2024-11-26 14:45:19'),
(291, 112, 'r0lhjq5juv8f9svhrhucdqkvcc', '2024-11-26 22:56:12', '2024-11-26 15:03:23'),
(292, 29, 'e63irpeqimmcm3rsk9dj9hdusd', '2024-11-27 16:30:57', '2024-11-27 16:55:01'),
(293, 130, '0kled8ug0021lpmuh7flfi0gs2', '2024-11-27 10:15:16', '2024-11-27 10:33:12'),
(294, 48, '1s43k2349qij90cs8se8imu529', '2024-11-27 10:31:02', '2024-11-27 02:53:40'),
(295, 130, '0kled8ug0021lpmuh7flfi0gs2', '2024-11-27 10:33:34', NULL),
(296, 112, 'c413re5odkbkp4o000t0f4o7t8', '2024-11-27 11:01:53', '2024-11-27 03:02:32'),
(297, 48, 'ie355rvcglr3qiubf2d9s7e8tu', '2024-11-27 11:02:50', '2024-11-27 03:03:29'),
(298, 112, 's77mgo64uhflhovqndn2lr7go7', '2024-11-27 16:19:11', '2024-11-27 08:51:00'),
(299, 112, '93mfd58ljigs4qp2s8orpii6dc', '2024-11-27 16:52:59', '2024-11-27 08:58:50'),
(300, 48, 'dqb3totnc3chf3splgi1tavprn', '2024-11-27 17:01:39', '2024-11-27 09:05:24'),
(301, 121, '3spldsqe1qbl6hlvd6s2rqnc7d', '2024-11-27 17:07:22', '2024-11-27 09:08:55'),
(302, 48, 'uegobdagap3det91qjbpa61og6', '2024-11-27 17:12:39', '2024-11-27 09:12:42'),
(303, 48, 'bjlt9sjveido5rhshq3ikqskin', '2024-11-27 17:12:54', '2024-11-27 09:13:00'),
(304, 112, 'c2dv6nqsv8g42sg3927pojdplu', '2024-11-27 17:22:48', '2024-11-27 17:43:36'),
(305, 112, 'es0ntedr4ugk45ptf4gs75cs73', '2024-11-27 17:50:10', '2024-11-27 09:54:08'),
(306, 48, 'ukopr4hfhtjhvjt8kqlqn0k369', '2024-11-27 17:54:52', '2024-11-27 10:16:55'),
(307, 29, 'k61dqg1niebsslo2pvr96a78qm', '2024-11-27 18:22:11', '2024-11-27 19:31:33'),
(308, 112, '3uurmga9odvbetv5r75k2666fa', '2024-11-27 19:09:34', '2024-11-27 11:31:11'),
(309, 132, 'aml3t3fu6l0sadtmeg7uc6ohan', '2024-11-27 19:42:14', '2024-11-27 19:47:52'),
(310, 132, 'aml3t3fu6l0sadtmeg7uc6ohan', '2024-11-27 19:48:15', '2024-11-27 20:13:57'),
(311, 133, 'm71sjdupf23u33jhaul7c3oa4r', '2024-11-27 21:19:31', '2024-11-27 13:23:52'),
(312, 132, 'aml3t3fu6l0sadtmeg7uc6ohan', '2024-11-27 20:53:09', '2024-11-27 21:52:53'),
(313, 48, '9he4ooqr7kur6ifu29pr1os7ki', '2024-11-27 21:17:59', '2024-11-27 21:45:12'),
(314, 29, 'o9su61of7vkq9bb6pre0fsfbqk', '2024-11-27 21:39:50', '2024-11-27 13:53:25'),
(315, 112, '2nvsa8fbulbudh9bs7bp2sh5p9', '2024-11-27 21:45:19', '2024-11-27 21:59:37'),
(316, 135, 'eghfvv71103u1kdgvrc9qkqdor', '2024-11-27 22:04:43', '2024-11-27 14:07:36'),
(317, 112, '2nvsa8fbulbudh9bs7bp2sh5p9', '2024-11-27 22:00:24', '2024-11-27 14:10:30'),
(318, 136, 'm00c9bb4f2iaua0d2mkb9k4k8o', '2024-11-27 22:07:46', '2024-11-27 14:25:20'),
(319, 112, 'fa6brf3d9a1s78s136orft9qak', '2024-11-29 23:07:02', '2024-11-29 16:07:06'),
(320, 48, 'n1qhhu6mqv2j11qapd165e19ro', '2024-11-27 23:06:15', '2024-11-27 16:09:24'),
(321, 48, '3a4qkgclfsn91gp3upigmvcmsl', '2024-11-27 23:15:58', '2024-11-27 16:16:14'),
(322, 48, 'h759ii0c3q43la4psptfsptrra', '2024-11-28 00:33:26', '2024-11-27 18:16:29'),
(323, 112, '2cgjo03nuk6kkput59vrgijtm6', '2024-11-29 23:08:06', '2024-11-29 16:11:50'),
(324, 48, 'i970nkgq8un0vp14nd7jc07vvb', '2024-12-02 10:40:58', '2024-12-02 03:41:05'),
(326, 112, 'lrdhgu323geh663d9pb7huvrbr', '2024-12-02 10:41:30', '2024-12-02 03:42:39'),
(327, 48, '8klgrfemo7oatnkpl3u9ssbtt0', '2024-12-02 10:42:43', '2024-12-02 03:51:32'),
(328, 29, '3og52pscjhkmd75fibp0p7alsb', '2024-12-02 10:51:50', '2024-12-02 03:52:14'),
(329, 48, 'cpals7emhntgfq1t6m00l65uqe', '2024-12-02 10:52:19', '2024-12-02 03:52:31'),
(330, 29, 'ae6vj27dlqrkcrlitih538u613', '2024-12-02 10:52:40', '2024-12-02 04:05:50'),
(331, 48, 'l0s5nr9trtdcv9tifsf37eaeth', '2024-12-02 11:05:55', '2024-12-02 04:06:01'),
(332, 29, '4ap7rc1mlp632ce63kvujujmh0', '2024-12-02 11:06:06', '2024-12-02 04:36:26'),
(333, 48, 'mteoe81t3g0itujkaii3el68qn', '2024-12-02 11:36:31', '2024-12-02 04:36:41'),
(334, 29, 'eaimn1i1ssodtglsjfunm9pfnu', '2024-12-02 11:36:47', '2024-12-02 04:43:15'),
(335, 48, '614pb7d68j9jo73rndhtcoe1ig', '2024-12-02 18:16:04', '2024-12-02 11:18:09'),
(336, 29, '79a6tea1l1p2gk2ekbipo3vrk8', '2024-12-02 11:48:38', '2024-12-02 05:13:34'),
(337, 112, 'l6eifovm59bie18qv5asi11amq', '2024-12-02 12:13:40', '2024-12-02 05:13:54'),
(338, 29, '7meh7icvlkqnt1t201a51k4aci', '2024-12-02 12:13:59', '2024-12-02 05:14:16'),
(339, 29, '7nln8vhj8653go4fqln1aeal85', '2024-12-02 12:16:14', '2024-12-02 10:18:32'),
(340, 29, '9qri7gm7114v440agpe1epchs3', '2024-12-02 18:02:40', '2024-12-02 11:05:41'),
(341, 112, 'ne8rep9q8a3ijidf2dd4u2sc6v', '2024-12-02 18:05:50', '2024-12-02 11:07:12'),
(342, 112, '5j0vkhljsnbr4dmok04e5rup0c', '2024-12-02 18:18:18', '2024-12-02 11:18:34'),
(343, 29, 'vespnc71u7ue8jelspife56u76', '2024-12-02 18:18:45', '2024-12-02 11:18:50'),
(344, 112, 'hsd6qp5jbj5fg1bucapq5v3mb3', '2024-12-02 18:19:10', '2024-12-02 11:32:11'),
(345, 48, 'vd0c4rudj7ej385qn4t68hg1uu', '2024-12-02 18:32:15', '2024-12-02 11:32:30'),
(346, 29, 'pchivdu362u1b0414k7c4ql4u0', '2024-12-02 18:32:35', '2024-12-02 11:44:27'),
(347, 48, 'fce5rdc5tvgk272h42tmlnlj6f', '2024-12-02 18:44:33', '2024-12-02 11:44:56'),
(348, 112, 'ig0udf0c8rj3uamao0siktvtca', '2024-12-02 18:45:02', '2024-12-02 11:49:02'),
(349, 29, '6reidod30lsfmhrsbhtqf99phb', '2024-12-02 18:49:08', '2024-12-02 12:00:12'),
(350, 48, '88357o3098u5a29qjdvdoisqof', '2024-12-02 19:00:18', '2024-12-02 12:00:31'),
(351, 29, 'junde4vfl5b3900bo2q2vvn0j1', '2024-12-02 19:03:40', '2024-12-02 12:04:25'),
(352, 48, '2pg43ngl0c3pfternu91mddt8a', '2024-12-02 19:06:38', '2024-12-02 12:06:41'),
(353, 29, 'u53nskqhc1a9f1ekn08heo51f9', '2024-12-02 19:06:48', '2024-12-02 12:09:23'),
(354, 48, '97tbpeb86scs3s0i8v8rk9najk', '2024-12-02 19:09:39', '2024-12-02 12:10:01'),
(355, 48, 'ugfjj1gc9795pbujbupgkkdek0', '2024-12-02 19:12:38', '2024-12-02 12:12:42'),
(356, 112, 'uja25hnt3ld43q8obdcpulinfg', '2024-12-02 19:12:52', '2024-12-02 12:13:32'),
(357, 112, 'hc7b5ate23thrchhtkodbksugn', '2024-12-02 19:13:43', '2024-12-02 12:16:26'),
(358, 48, 'j536ajif1rnr4lsl7jctubco8j', '2024-12-02 19:16:30', '2024-12-02 12:17:50'),
(359, 112, 'vmp42b4hf4es73hmle3bd000tc', '2024-12-02 19:19:22', '2024-12-02 12:19:32'),
(360, 112, 'dqo043is6calkfbi9nafa8s3kr', '2024-12-02 19:21:02', '2024-12-02 12:21:50'),
(361, 48, 'dqo043is6calkfbi9nafa8s3kr', '2024-12-02 19:21:19', '2024-12-02 12:21:50'),
(362, 112, 'i278rklqnmn5p8knr3ud4ca9lq', '2024-12-02 19:23:35', '2024-12-02 12:30:51'),
(363, 48, 'i278rklqnmn5p8knr3ud4ca9lq', '2024-12-02 19:26:27', '2024-12-02 12:30:51'),
(364, 112, '43igfv3m77k7f0e8k8t0o0dden', '2024-12-02 19:30:57', '2024-12-02 12:31:06'),
(365, 48, 'elb0v9h66tsg9vre6gfs5v7ike', '2024-12-02 19:31:10', '2024-12-02 19:40:34'),
(366, 48, 'ckdcev5mji0742sruvtut9dehp', '2024-12-02 19:41:36', '2024-12-02 12:45:59'),
(367, 22, 'glbudkcrr69mqochi301httggg', '2024-12-02 19:46:07', '2024-12-02 12:46:29'),
(368, 48, 'sch2m4lipq3sa5ff1qeldu37kl', '2024-12-02 19:46:39', '2024-12-02 12:47:42'),
(369, 48, '80gm73mf3v7c8q00pshi7f1f9f', '2024-12-02 19:48:38', '2024-12-02 12:52:47'),
(370, 22, 'rkh3q7lksrb3g5361hdh1g02ia', '2024-12-02 19:52:52', '2024-12-02 12:53:05'),
(371, 48, 'frrt44ussgofngosbc46qlkgsp', '2024-12-02 19:53:10', '2024-12-02 13:02:21'),
(372, 29, 't7fg5fedudd3ktrunnf9a5lncg', '2024-12-02 20:02:29', '2024-12-02 13:03:51'),
(373, 48, 'pe00pfci9ugkdnu73alk7fqotn', '2024-12-02 20:04:00', '2024-12-02 13:04:25'),
(374, 22, 'cbofkdjvn1pare5a9n1063c961', '2024-12-02 20:04:30', '2024-12-02 13:11:06'),
(375, 48, 'vj2lbuv58bo85n4sni8ml6u9js', '2024-12-02 20:11:11', '2024-12-02 13:29:06'),
(376, 29, '70kife6v6jcu1tc01l2427u03q', '2024-12-02 20:29:14', '2024-12-02 13:35:00'),
(377, 48, '3lgordajniv7b9di9k8pkj77uj', '2024-12-02 20:35:06', '2024-12-02 13:37:27'),
(378, 29, 'a04bg91rqu3lthi9vuh1f6b2j8', '2024-12-02 20:37:33', '2024-12-02 13:42:21'),
(379, 22, 'qstsv26199m9te36k7b7jdadnc', '2024-12-02 20:49:40', '2024-12-02 13:51:05'),
(380, 48, 'juvish916jbabe0b3sq4ct0e8r', '2024-12-02 20:51:10', '2024-12-02 14:03:58'),
(381, 22, 'ukpk22jf4s7t40orptr350ngub', '2024-12-03 15:11:25', '2024-12-03 08:19:05'),
(382, 29, '37gkgqtvrlfd1tqom1u53mbv6e', '2024-12-03 15:22:41', '2024-12-03 15:52:23'),
(383, 22, '37gkgqtvrlfd1tqom1u53mbv6e', '2024-12-03 15:52:27', '2024-12-03 08:54:21'),
(384, 22, '23h2gm47hvq1e2uscu810r76jo', '2024-12-04 07:50:36', '2024-12-04 01:01:13'),
(385, 132, 'npj3fu1fkio76au9356qnikl5j', '2024-12-04 08:11:00', '2024-12-04 01:51:28'),
(386, 29, 'sthqabaeg8q7mfdmd9jscab9iu', '2024-12-04 08:54:35', '2024-12-04 09:05:31'),
(387, 22, 'tph98ej620d0rv0dqksf2q79bb', '2024-12-04 08:59:44', '2024-12-04 09:05:39'),
(388, 132, 'tph98ej620d0rv0dqksf2q79bb', '2024-12-04 09:10:31', '2024-12-04 02:57:11'),
(389, 29, 'sthqabaeg8q7mfdmd9jscab9iu', '2024-12-04 09:08:51', '2024-12-04 03:28:03'),
(390, 22, 'homnpigpgj4fv9oeed4ibtgmi9', '2024-12-04 10:37:27', '2024-12-04 03:37:51'),
(391, 48, 'ksbbrhekhmupgkrkr8m824qbjs', '2024-12-04 10:38:05', '2024-12-04 03:48:22'),
(392, 29, '72fuvcg3ulr0nl41ptdvep7669', '2024-12-04 10:50:24', '2024-12-04 03:54:43'),
(393, 22, '7kr3e7ur8lj8ecupvh5vf72nnq', '2024-12-04 10:51:12', '2024-12-04 03:58:52'),
(394, 48, 'a23l90ci3het13i7sg3vqk920e', '2024-12-04 13:49:59', '2024-12-04 06:52:59'),
(395, 48, '0siu9ab0u7lvhhrab3rl9r4vm0', '2024-12-04 17:16:33', '2024-12-04 10:54:31'),
(396, 48, 'a7tfkaeheb3al6ak6u951ogdgj', '2024-12-04 17:56:19', '2024-12-04 11:00:45'),
(397, 29, 'rnba01nj2rvmq5ng5aargff0nj', '2024-12-04 18:00:50', '2024-12-04 11:02:12'),
(398, 48, 'v3j1bmtnu14ck1msnks210pvoi', '2024-12-04 18:02:18', '2024-12-04 11:04:04'),
(399, 29, 'd2kpbet3jfgna1u10347cp5mmt', '2024-12-04 18:04:08', '2024-12-04 11:10:54'),
(400, 48, '0m2mt4p6oir992gqbgcocsi9to', '2024-12-04 18:10:59', '2024-12-04 11:34:24'),
(401, 29, 'cour8l7gib90f8rpbokjs6kjfr', '2024-12-04 18:42:27', '2024-12-04 11:46:18'),
(402, 22, 'tgi6js06g8ben3j7dh9tvvstbs', '2024-12-04 19:16:42', '2024-12-04 12:55:07'),
(403, 22, 'j4qh2oa0lpdhcadbn298vq0avh', '2024-12-05 19:48:09', '2024-12-05 12:51:37'),
(404, 22, 'mn2kjdlhvgei5hahj5pe13g2qh', '2024-12-05 19:51:39', '2024-12-05 19:57:20'),
(405, 22, 'mn2kjdlhvgei5hahj5pe13g2qh', '2024-12-05 19:57:25', '2024-12-05 13:40:15'),
(406, 29, 'br4o11ahqth594raq5ur243sq7', '2024-12-05 21:47:11', '2024-12-05 22:06:28'),
(407, 29, 'br4o11ahqth594raq5ur243sq7', '2024-12-05 22:06:31', '2024-12-05 22:25:11'),
(408, 29, 'ivpnvnehlguc2vkc8c8f242vtq', '2024-12-05 22:29:58', '2024-12-05 15:32:39'),
(409, 29, 'nlq79kbtrj2rqtjte5sod4ubif', '2024-12-05 22:32:42', '2024-12-05 15:50:28'),
(410, 22, 'b7ll8rhs1nf52qoj0p491omn3a', '2024-12-05 22:50:34', '2024-12-05 15:51:15'),
(411, 22, 'tornniqn464ekelogtahi4cj4e', '2024-12-06 21:02:31', '2024-12-06 21:17:04'),
(412, 22, 'tornniqn464ekelogtahi4cj4e', '2024-12-06 21:20:54', '2024-12-06 16:35:27'),
(413, 22, 'j22tulddkq4p4kvsjm1gvteldb', '2024-12-09 20:51:26', '2024-12-09 21:38:27'),
(414, 22, 'j22tulddkq4p4kvsjm1gvteldb', '2024-12-09 21:42:39', '2024-12-09 15:54:21'),
(415, 48, 'pnu23rv0es1qb9vemtf9hldsjr', '2024-12-10 20:07:35', '2024-12-10 13:20:33'),
(416, 29, '9o5aplbii06v7sp3kncc5me55q', '2024-12-10 20:21:36', '2024-12-10 21:25:17'),
(417, 48, 'm9654cjb99ulug97p59bsgfunb', '2024-12-10 20:20:57', '2024-12-10 14:14:24'),
(418, 22, 'nhrvbjb2h87sqddfo7lck3pfi8', '2024-12-10 21:26:08', '2024-12-10 14:45:01'),
(419, 29, '9o5aplbii06v7sp3kncc5me55q', '2024-12-10 21:29:53', '2024-12-10 14:46:29'),
(420, 48, 'cep4p9i9kcrhseidb6l3pn62hq', '2024-12-10 21:46:35', '2024-12-10 14:51:53'),
(421, 22, 'ic63u95sihi573ijhb6lm2l7mt', '2024-12-10 21:52:01', '2024-12-10 14:52:50'),
(422, 48, 'k1756ef1epi405le8peb4o2jgf', '2024-12-10 21:53:47', '2024-12-10 15:37:51'),
(423, 29, '5a852qva3ve2lno1l099t9j9j2', '2024-12-10 22:01:34', '2024-12-10 15:37:59'),
(424, 29, 'di5ud0bgjvqd4toggffc36e42l', '2024-12-17 22:16:05', '2024-12-17 22:23:08'),
(425, 29, 'di5ud0bgjvqd4toggffc36e42l', '2024-12-17 22:23:10', '2024-12-17 23:05:22'),
(426, 29, 'di5ud0bgjvqd4toggffc36e42l', '2024-12-17 23:06:29', '2024-12-17 16:33:48'),
(427, 48, '0jqge1ag24sr1ql83uet9s27ja', '2024-12-17 23:08:31', '2024-12-17 16:08:43'),
(428, 48, 'j3fch163j637kpm08pvqscm47q', '2024-12-17 23:41:54', '2024-12-18 00:11:13'),
(429, 48, 'j3fch163j637kpm08pvqscm47q', '2024-12-18 00:11:18', '2024-12-18 00:26:22'),
(430, 48, 'j3fch163j637kpm08pvqscm47q', '2024-12-18 00:36:17', '2024-12-18 00:51:35'),
(431, 48, 'j3fch163j637kpm08pvqscm47q', '2024-12-18 01:00:14', '2024-12-18 05:03:15'),
(432, 48, 'j3fch163j637kpm08pvqscm47q', '2024-12-18 05:03:18', '2024-12-17 22:05:10'),
(433, 48, '7sbstg1c5fpd468bl8o05hfli9', '2024-12-18 05:06:05', '2024-12-17 22:14:20'),
(434, 48, 'iscv25sm3p09soi8rf6eclj2sg', '2025-02-10 21:02:44', '2025-02-10 14:24:13'),
(435, 48, 'ear46ra27l311f8a8vin0qpt0c', '2025-02-10 21:25:30', '2025-02-10 21:43:48'),
(436, 48, 'ear46ra27l311f8a8vin0qpt0c', '2025-02-10 21:43:51', '2025-02-10 22:04:10'),
(437, 48, 'ear46ra27l311f8a8vin0qpt0c', '2025-02-10 22:05:19', '2025-02-10 22:55:18'),
(438, 48, 'ear46ra27l311f8a8vin0qpt0c', '2025-02-10 23:00:48', '2025-02-10 16:00:51'),
(439, 48, '0vl1ehs6vdh1bepe9lejf8ae3k', '2025-02-10 23:01:20', '2025-02-10 16:02:02'),
(440, 22, 'v3uq4i9s46or1paj99oj8j4ejn', '2025-02-10 23:06:03', '2025-02-10 16:06:18'),
(441, 48, 'vlh4pr9nuud85mg78jhudgjrsb', '2025-02-10 23:06:24', '2025-02-10 23:13:35'),
(442, 22, 'vlh4pr9nuud85mg78jhudgjrsb', '2025-02-10 23:13:39', '2025-02-10 16:14:00'),
(443, 29, 'uvhber38rkpir2tuvhllgpsgbo', '2025-02-10 23:14:06', '2025-02-10 16:14:18'),
(444, 29, 'bm5o2gao6b0l151jliqr822nrh', '2025-03-23 10:27:33', '2025-03-23 03:27:37'),
(445, 48, 'a5j04es65pgfo24ef99qppb6a2', '2025-03-23 13:37:04', '2025-03-23 06:43:26'),
(446, 29, 'ghle8ek7s026stao2bkt1lhjaj', '2025-03-23 13:36:49', '2025-03-23 06:37:00'),
(447, 29, 'cv5k30kmtc2ukdobjn0u36h51h', '2025-03-23 13:43:34', '2025-03-23 06:58:26'),
(448, 22, 'rkfsir2pc5tde534p97gqrcsr7', '2025-03-23 13:58:33', '2025-03-23 14:05:39'),
(449, 22, 'rkfsir2pc5tde534p97gqrcsr7', '2025-03-23 14:05:41', '2025-03-23 14:14:03'),
(450, 22, 'rkfsir2pc5tde534p97gqrcsr7', '2025-03-23 14:14:05', '2025-03-23 09:43:05'),
(451, 22, '7sqil81n274dmar3hou18dailk', '2025-03-23 17:06:27', '2025-03-23 17:50:25'),
(452, 22, '7sqil81n274dmar3hou18dailk', '2025-03-23 17:54:51', '2025-03-23 11:33:16'),
(453, 22, '10790v77tkt3tpiopd64rvn3ek', '2025-03-23 18:33:21', '2025-03-23 14:28:59'),
(454, 22, '6horb4f7emjsl6pspkcdpkr718', '2025-03-24 12:22:43', '2025-03-24 08:01:20'),
(455, 22, 'pkur4qbg4qdj6sg69gc3ob8q5c', '2025-03-24 16:21:33', '2025-03-24 10:27:01'),
(456, 22, '17d0ab4vkjn80i9c8dtpsahur5', '2025-03-24 17:27:07', '2025-03-24 11:26:07'),
(457, 48, 'bf3covsp8c3broimb77rvf464c', '2025-03-24 18:06:24', '2025-03-24 11:12:40'),
(458, 22, 'p6fuu0sbp09m2pgbpfd6i9fc75', '2025-03-24 18:28:27', '2025-03-24 11:44:22'),
(459, 22, '4uphu48jmbqlgvapv8krb84dnb', '2025-03-24 18:44:28', '2025-03-24 11:45:32'),
(460, 22, 'i3686n2lgs6sif797isl6p6vhs', '2025-03-24 22:34:53', '2025-03-24 16:09:42'),
(461, 22, 'rd6jmif19j8omq4hm49fsp4qrh', '2025-03-24 23:09:46', '2025-03-24 16:28:05'),
(462, 48, 'rr96j7hfn56l4pm0ghu3fae2vj', '2025-03-24 23:28:11', '2025-03-24 16:35:11'),
(463, 22, 'obtclhvc2hl6r2hg4hgio04otq', '2025-03-24 23:35:22', '2025-03-24 17:48:39'),
(464, 22, '44k5ml5kht8rl000oiqe53fmqb', '2025-03-25 00:48:41', '2025-03-24 18:22:02'),
(465, 22, '1nc18iu9v9ldq29cqqdf0vsvcv', '2025-03-25 01:22:55', '2025-03-24 18:28:29'),
(466, 22, 's16frbeqffsnum3d1nikvner0h', '2025-03-25 01:28:31', '2025-03-24 19:09:47'),
(467, 22, '0fgsk4t985dqugks14tco1g537', '2025-03-25 02:09:54', '2025-03-24 19:29:06'),
(468, 22, 'b3fto8ijnhkokio77nq2k1kqtp', '2025-03-25 02:29:10', '2025-03-24 19:36:57');

-- --------------------------------------------------------

--
-- Table structure for table `status_updates`
--

CREATE TABLE `status_updates` (
  `id` int(11) NOT NULL,
  `appointment_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `status_type` varchar(50) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `status_updates`
--

INSERT INTO `status_updates` (`id`, `appointment_id`, `status`, `status_type`, `updated_at`) VALUES
(91, 5, 'Accepted', 'Accepted', '2024-11-22 09:15:36'),
(92, 5, 'Approved', 'Approved', '2024-11-22 09:16:57'),
(93, 21, 'Processing', 'Processing', '2024-11-25 12:49:07'),
(94, 22, 'Processing', 'Processing', '2024-11-27 02:30:19'),
(95, 22, 'Accepted', 'Accepted', '2024-11-27 02:31:11'),
(96, 23, 'Processing', 'Processing', '2024-11-27 09:08:47'),
(97, 23, 'Accepted', 'Accepted', '2024-11-27 09:09:20'),
(98, 23, 'Approved', 'Approved', '2024-11-27 09:10:21'),
(99, 24, 'Processing', 'Processing', '2024-11-27 11:43:19'),
(100, 25, 'Processing', 'Processing', '2024-11-27 11:43:55'),
(101, 26, 'Processing', 'Processing', '2024-11-27 13:06:45'),
(102, 27, 'Processing', 'Processing', '2024-11-27 13:48:34'),
(103, 28, 'Processing', 'Processing', '2024-11-27 13:49:38'),
(104, 29, 'Processing', 'Processing', '2024-11-27 13:52:29'),
(105, 25, 'Accepted', 'Accepted', '2024-11-27 13:58:13'),
(106, 30, 'Application received', 'Processing', '2024-11-27 13:58:27'),
(107, 25, 'Approved', 'Approved', '2024-11-27 14:00:52'),
(108, 31, 'Processing', 'Processing', '2024-11-27 14:01:13'),
(109, 32, 'Processing', 'Processing', '2024-11-27 14:02:17'),
(110, 33, 'Application received', 'Processing', '2024-11-27 14:03:20'),
(111, 34, 'Processing', 'Processing', '2024-11-27 14:14:42'),
(112, 35, 'Processing', 'Processing', '2024-11-27 14:22:10'),
(113, 21, 'Accepted', 'Accepted', '2024-11-29 15:17:53'),
(114, 21, 'Accepted', 'Accepted', '2024-11-29 15:20:29'),
(115, 21, 'Accepted', 'Accepted', '2024-11-29 15:22:04'),
(116, 21, 'Accepted', 'Accepted', '2024-11-29 15:26:26'),
(117, 36, 'Processing', 'Processing', '2024-12-02 02:42:31'),
(118, 36, 'Accepted', 'Accepted', '2024-12-02 02:43:52'),
(119, 36, 'Accepted', 'Accepted', '2024-12-02 02:44:49'),
(120, 36, 'Approved', 'Approved', '2024-12-02 02:46:28'),
(121, 36, 'Approved', 'Approved', '2024-12-02 02:50:20'),
(122, 36, 'Accepted', 'Accepted', '2024-12-02 03:48:12'),
(123, 36, 'Approved', 'Approved', '2024-12-02 10:05:03'),
(124, 37, 'Processing', 'Processing', '2024-12-02 10:22:41'),
(125, 38, 'Processing', 'Processing', '2024-12-02 10:24:01'),
(126, 39, 'Application received', 'Processing', '2024-12-02 10:30:15'),
(127, 40, 'Processing', 'Processing', '2024-12-02 10:30:58'),
(128, 41, 'Processing', 'Processing', '2024-12-02 11:15:52'),
(129, 39, 'Accepted', 'Accepted', '2024-12-02 11:16:35'),
(130, 40, 'Accepted', 'Accepted', '2024-12-02 11:26:34'),
(131, 42, 'Application received', 'Processing', '2024-12-02 12:08:08'),
(132, 42, 'Approved', 'Approved', '2024-12-03 07:23:44'),
(133, 43, 'Processing', 'Processing', '2024-12-04 01:08:33'),
(134, 43, 'Approved', 'Approved', '2024-12-04 01:09:55'),
(135, 21, 'Approved', 'Approved', '2024-12-04 02:44:04'),
(136, 44, 'Processing', 'Processing', '2024-12-09 13:35:20'),
(137, 45, 'Processing', 'Processing', '2024-12-09 13:45:46'),
(138, 46, 'Processing', 'Processing', '2024-12-09 14:42:43'),
(139, 47, 'Processing', 'Processing', '2024-12-09 14:46:50'),
(140, 48, 'Processing', 'Processing', '2024-12-09 14:47:59'),
(141, 45, 'Declined', 'Declined', '2024-12-10 12:25:14'),
(142, 44, 'Accepted', 'Accepted', '2024-12-10 12:34:55'),
(143, 44, 'Approved', 'Approved', '2024-12-10 12:36:04'),
(144, 45, 'Approved', 'Approved', '2024-12-10 12:37:14'),
(145, 44, 'Approved', 'Approved', '2024-12-10 12:45:10'),
(146, 44, 'Approved', 'Approved', '2024-12-10 12:46:36'),
(147, 45, 'Accepted', 'Accepted', '2024-12-10 12:58:33'),
(148, 45, 'Accepted', 'Accepted', '2024-12-10 13:04:21'),
(149, 44, 'Approved', 'Approved', '2024-12-10 13:11:07'),
(150, 45, 'Approved', 'Approved', '2024-12-17 14:25:20'),
(151, 42, 'Accepted', 'Accepted', '2025-02-10 14:03:03'),
(152, 49, 'Processing', 'Processing', '2025-03-23 07:05:10'),
(153, 50, 'Processing', 'Processing', '2025-03-23 07:28:31'),
(154, 51, 'Processing', 'Processing', '2025-03-23 12:31:04'),
(155, 52, 'Processing', 'Processing', '2025-03-23 12:32:02'),
(156, 53, 'Processing', 'Processing', '2025-03-23 12:32:15'),
(157, 54, 'Processing', 'Processing', '2025-03-23 13:02:34'),
(158, 55, 'Processing', 'Processing', '2025-03-23 13:03:33'),
(159, 56, 'Processing', 'Processing', '2025-03-23 13:06:57'),
(160, 57, 'Processing', 'Processing', '2025-03-23 13:07:35'),
(161, 58, 'Processing', 'Processing', '2025-03-23 13:07:51'),
(162, 59, 'Processing', 'Processing', '2025-03-23 13:08:21'),
(163, 60, 'Processing', 'Processing', '2025-03-23 13:08:35'),
(164, 61, 'Processing', 'Processing', '2025-03-23 13:18:46'),
(165, 62, 'Processing', 'Processing', '2025-03-24 10:09:45'),
(166, 63, 'Processing', 'Processing', '2025-03-24 15:10:04'),
(167, 64, 'Processing', 'Processing', '2025-03-24 15:20:27'),
(168, 65, 'Processing', 'Processing', '2025-03-24 15:22:42'),
(169, 66, 'Processing', 'Processing', '2025-03-24 15:27:53'),
(170, 66, 'Declined', 'Declined', '2025-03-24 15:29:22'),
(171, 67, 'Application received', 'Processing', '2025-03-24 17:00:33'),
(172, 68, 'Application received', 'Processing', '2025-03-24 17:29:38'),
(173, 69, 'Application received', 'Processing', '2025-03-24 17:29:39'),
(174, 70, 'Application received', 'Processing', '2025-03-24 17:32:40'),
(175, 71, 'Application received', 'Processing', '2025-03-24 17:32:42'),
(176, 72, 'Application received', 'Processing', '2025-03-24 17:39:21'),
(177, 73, 'Application received', 'Processing', '2025-03-24 17:39:22'),
(178, 74, 'Application received', 'Processing', '2025-03-24 17:43:29'),
(179, 75, 'Application received', 'Processing', '2025-03-24 17:43:30'),
(180, 76, 'Application received', 'Processing', '2025-03-24 17:45:58'),
(181, 77, 'Application received', 'Processing', '2025-03-24 17:45:59'),
(182, 78, 'Application received', 'Processing', '2025-03-24 17:46:09'),
(183, 79, 'Application received', 'Processing', '2025-03-24 17:46:10'),
(184, 80, 'Application received', 'Processing', '2025-03-24 17:48:20'),
(185, 81, 'Application received', 'Processing', '2025-03-24 17:48:21'),
(186, 82, 'Application received', 'Processing', '2025-03-24 17:48:52'),
(187, 83, 'Application received', 'Processing', '2025-03-24 17:57:37'),
(188, 84, 'Application received', 'Processing', '2025-03-24 18:00:22'),
(189, 85, 'Processing', 'Processing', '2025-03-24 18:11:12'),
(190, 86, 'Processing', 'Processing', '2025-03-24 18:16:28'),
(191, 87, 'Processing', 'Processing', '2025-03-24 18:19:48'),
(192, 88, 'Processing', 'Processing', '2025-03-24 18:30:04');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `task` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `user_id`, `task`, `created_at`) VALUES
(9, 48, 'Add Validation for Approval (Sangla) and Decline Appointment ', '2024-11-27 13:20:17'),
(10, 48, 'Fix fetch of View Client Files', '2024-11-27 13:20:31'),
(11, 135, 'Kain', '2024-11-27 14:02:27'),
(12, 135, 'Tulog', '2024-11-27 14:02:38'),
(13, 135, 'Hanap project', '2024-11-27 14:02:57');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `middle_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(50) NOT NULL,
  `profile_picture` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `middle_name`, `last_name`, `age`, `gender`, `dob`, `address`, `email`, `phone`, `password`, `role`, `profile_picture`, `created_at`) VALUES
(22, 'Charlie', 'Dela Cruz', 'Taglinao', 21, 'Male', '2003-06-26', '0548 Purok 3 Barangay Pinagtipunan City of General Trias, Cavite', 'taglinao06@gmail.com', '09212288244', '$2y$10$96Q3Z7ys7hLPBsioLCR2Ue3igvfaIBID91RwqfxjcmVPUabMaUEqy', 'Client', 'uploads/profile_picture/taglinao06@gmail.com/453305309_3765345913785914_7193141333388046034_n.webp', '2024-10-11 15:22:29'),
(29, 'Miko', 'Badinng', 'Admin', 99, 'Male', '2003-02-20', 'admin st.', 'admin@admin.com', '12345678910', '$2y$10$fF02nvJMPv2ttN6KLU9csOf16IYAFRGmZlG8obepQkE5nM2YxKW/C', 'Admin', '', '2024-10-11 15:22:29'),
(48, 'Employee', 'Employee', 'Employee', 99, 'Male', '1900-01-01', 'Employee', 'Employee@employee.com', '09123456789', '$2y$10$YRLZZzfRpEVP9keLTL5fQuElwXxnSGGiF8egjvqYerVHgc5jU3tse', 'Employee', '', '2024-10-11 15:22:29'),
(112, 'Kreian', 'De La Cruz', 'Lanaria', 21, 'Male', '2003-06-19', 'Dasmarinas City, Cavite', 'kreianlanaria@gmail.com', '09456954559', '$2y$10$UQ.z4RXA6DWGfG0OnwGrAuESDOzfwg3lcog5ex0amNnoUd.fEi4TK', 'Client', 'uploads/profile_picture/kreianlanaria@gmail.com/IMG_7720.webp', '2024-10-11 15:22:29'),
(121, 'Marion Mimiko', 'P.', 'Paril', 22, 'Male', '1988-01-01', 'Gen Tri', 'mimikoparil@gmail.com', '09123456789', '$2y$10$bn/tECo4FNj8n.EUOWXYd.84hDBgAQMgzfaqhbTdEJRfV7zE7WoOO', 'Client', NULL, '2024-11-13 09:04:21'),
(122, 'Justine Carl', 'D.', 'Albay', 22, 'Male', '2002-08-05', '293, Lanceville Subd., Malagasang 2A, Imus, Cavite', 'justinecarlalbay@gmail.com', '09686710612', '$2y$10$v/WgYA7s2bLMTuQkxZk8h.6WcsY9epiB78X/aCrBpnaqBDUf19c5W', 'Client', 'uploads/profile_picture/justinecarlalbay@gmail.com/IMG_2345.webp', '2024-11-13 12:35:15'),
(124, 'Franz', 'Altez', 'Acuna', 12, 'Male', '2003-02-23', 'Pascam 2 General Trias City', 'znarf0223@gmail.com', '09695397487', '$2y$10$GfiaJ543hcrjx6PA5QmIDebGaX3l02PtrUd7h8kUY1f/qECcFu5lG', 'Client', NULL, '2024-11-18 13:43:34'),
(125, 'Ederlyn', 'P.', 'Berdiago', 27, 'Female', '1997-03-14', '657 Pinagtipunan General Trias Cavite', 'ederlynlyn2@gmail.com', '09208782151', '$2y$10$IJEFIySBmLv7.yTUO8kOkeZslX3T.Ko6Tx2qGhqJbnZ39qVfcFl.W', 'Client', 'uploads/profile_picture/ederlynlyn2@gmail.com/ca5c389f-9e4d-4336-8123-ccba3728fbd7.webp', '2024-11-20 11:41:53'),
(126, 'EderSr', 'S.', 'Berdiago', 59, 'Male', '1965-09-01', '0595 Sta. Maria st Barangay Pinagtipunan City of General trias, Cavite', 'ederberdiago5@gmail.com', '09353983484', '$2y$10$EhpaSaUqelxA6pTKfJ6l3uN0C5CZxKk36Fu.TdSlEE3DV80Qrid2u', 'Client', NULL, '2024-11-20 12:06:36'),
(128, 'Chyle', 'De La Cruz', 'Lanaria', 22, 'Male', '2003-06-19', 'Dasma', 'liquifienx@gmail.com', '09456954559', '$2y$10$IBE7x/vMZgD3AXIY8XaNk.XRvFtY534xKHjzuUvYThULPB.dx52Jq', 'Client', NULL, '2024-11-25 12:58:33'),
(129, 'Miko', 'A', 'Pena', 22, 'Male', '2001-02-09', 'asdasd', 'test@test.test', '09123456789', '$2y$10$kgCChX6WvHAj.bvXbSik4ufL2R9A1SE7F13Gf9jZWE1KoOb4jSN7a', 'Client', NULL, '2024-11-25 13:14:46'),
(130, 'Jhune', 'GILTENDEZ', 'Ante', 54, 'Male', '1970-09-20', 'Dasmariñas', 'jca092080@gmail.com', '09167755539', '$2y$10$GLof4bDAfdaFO/ti2un3VecBp3zw6zO1uZzKnQD9Dj15zHmx1RlYC', 'Client', 'uploads/profile_picture/jca092080@gmail.com/Screenshot_20241126_143956_YouTube.webp', '2024-11-27 02:15:12'),
(131, 'Kreian', 'De La Cruz', 'Lanaria', 22, 'Male', '2003-12-06', 'Dasmarinas City, Cavite', 'liquifienx2@gmail.com', '09456954559', '$2y$10$NhgzX2IlvVDr7RgjAnPSjemMXMGcjh2HevRR8crhx1aTJkSHz1g0u', 'Client', NULL, '2024-11-27 11:34:25'),
(132, 'Miko', 'P', 'Paril', 22, 'Male', '2002-07-26', 'gen tri', 'marionparil26@gmail.com', '09123456789', '$2y$10$.UAUDyKaom8IHIcIXI4LteMZm5upAwmZKgzwC0MySnaG2ziKUuufW', 'Client', NULL, '2024-11-27 11:42:03'),
(133, 'Kevin', 'X.', 'Bagasbas', 23, 'Male', '2024-02-29', 'Linang, Quezon', 'quilapiomatthew31@gmail.com', '09988888877', '$2y$10$nl4RTAEUH8IfY2dHF8R8dO2qq..NqigGfDAqwxrgF0GrLg2aR1tKi', 'Client', 'uploads/profile_picture/quilapiomatthew31@gmail.com/images (2).webp', '2024-11-27 12:27:15'),
(134, 'Calvin', 'Yang', 'Klein', 30, 'Male', '2000-12-25', 'Real, Laguna', 'jerichorosales@gmail.com', '09774531523', '$2y$10$qSTJHft5NkxArwIHhYYBXeNGWE3h52lP0iV/4ydmEkd0fddV3NdRG', 'Employee', NULL, '2024-11-27 13:44:42'),
(135, 'Hikaru', '', 'Nagi', 27, 'Female', '2000-03-01', 'Tokyo, Japan', 'hikarunagi@yahoo.com', '12345678910', '$2y$10$EK38gn7rxfesvZQ8x3EgTOW/FS4zFNurOEaNUg5Vn50mtHxzAa4RG', 'Employee', NULL, '2024-11-27 13:48:13'),
(136, 'Roma', 'Lenn', 'Almendras', 36, 'Female', '1988-01-16', 'Liora Homes', 'romalennalmendras@gmail.com', '09173393308', '$2y$10$RPKTUv80Wm5bweastBeU6uVHHiiJbULXF8yYZOeZ/uZINY.ZAA7qK', 'Client', NULL, '2024-11-27 14:07:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `forms_brandnew_applicants`
--
ALTER TABLE `forms_brandnew_applicants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forms_sanglaorcr_applicants`
--
ALTER TABLE `forms_sanglaorcr_applicants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_id` (`transaction_id`);

--
-- Indexes for table `forms_secondhand_applicants`
--
ALTER TABLE `forms_secondhand_applicants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `status_updates`
--
ALTER TABLE `status_updates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `appointment_id` (`appointment_id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=259;

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `forms_brandnew_applicants`
--
ALTER TABLE `forms_brandnew_applicants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `forms_sanglaorcr_applicants`
--
ALTER TABLE `forms_sanglaorcr_applicants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `forms_secondhand_applicants`
--
ALTER TABLE `forms_secondhand_applicants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=469;

--
-- AUTO_INCREMENT for table `status_updates`
--
ALTER TABLE `status_updates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD CONSTRAINT `activity_log_ibfk_1` FOREIGN KEY (`user_email`) REFERENCES `users` (`email`);

--
-- Constraints for table `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `files_ibfk_1` FOREIGN KEY (`user_email`) REFERENCES `users` (`email`);

--
-- Constraints for table `sessions`
--
ALTER TABLE `sessions`
  ADD CONSTRAINT `sessions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
