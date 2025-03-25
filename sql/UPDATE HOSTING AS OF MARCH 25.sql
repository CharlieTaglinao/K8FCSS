-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 25, 2025 at 06:45 AM
-- Server version: 10.11.10-MariaDB-ubu2204
-- PHP Version: 8.2.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `k8financial_db`
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
(232, 'marionparil26@gmail.com', 'uploaded a file', '115738312_p0.png', '2024-12-04 12:08:36'),
(233, 'anglewesley21@gmail.com', 'Profile Picture Changed', '20241204_204010.webp', '2024-12-04 14:26:31'),
(234, 'anglewesley21@gmail.com', 'Profile Picture Changed', 'Screenshot_2024-12-04-13-43-30-275_com.google.android.youtube.webp', '2024-12-04 14:27:22'),
(235, 'anglewesley21@gmail.com', 'Profile Picture Changed', 'Screenshot_2024-11-30-03-35-23-127_org.videolan.vlc.webp', '2024-12-04 14:30:01'),
(236, 'taglinao06@gmail.com', 'deleted a file', 'TAPSILOG.jpg', '2024-12-05 05:54:04'),
(237, 'taglinao06@gmail.com', 'uploaded a file', 'Untitled.png', '2024-12-05 06:02:19'),
(238, 'taglinao06@gmail.com', 'deleted a file', 'Untitled.png', '2024-12-05 06:02:27'),
(239, 'kreianlanaria@gmail.com', 'uploaded a file', 'Lanaria_Enabling Assessment No.6.png', '2024-12-05 06:32:00'),
(240, 'taglinao06@gmail.com', 'uploaded a file', 'TOCILOG.png', '2024-12-05 06:32:35'),
(241, 'Employee@employee.com', 'Accepted Appointment of Transaction ID: 2024-417978-04898', 'N/A', '2024-12-05 06:39:52'),
(242, 'kreianlanaria@gmail.com', 'uploaded a file', 'OriginalPicture.png', '2024-12-05 07:04:09'),
(243, 'taglinao06@gmail.com', 'Changed password', 'N/A', '2024-12-05 12:44:54'),
(244, 'taglinao06@gmail.com', 'Information Changed', 'N/A', '2024-12-05 12:50:08'),
(245, 'taglinao06@gmail.com', 'Information Changed', 'N/A', '2024-12-05 12:50:31'),
(246, 'taglinao06@gmail.com', 'uploaded a file', 'COR.pdf', '2025-02-10 15:05:26'),
(247, 'kreianlanaria@gmail.com', 'uploaded a file', 'TAPSILOG.jpg', '2025-02-11 10:50:58'),
(248, 'Employee@employee.com', 'Accepted Appointment of Transaction ID: 2024-950851-22897', 'N/A', '2025-02-11 11:07:00'),
(249, 'Employee@employee.com', 'Accepted Appointment of Transaction ID: 2024-353031-13100', 'N/A', '2025-02-11 11:11:40'),
(250, 'Employee@employee.com', 'Approved Transaction ID: 2024-353031-13100', 'N/A', '2025-02-11 11:13:35'),
(251, 'Employee@employee.com', 'Approved Transaction ID: 2024-950851-22897', 'N/A', '2025-02-11 11:20:00'),
(252, 'Employee@employee.com', 'Accepted Payment of Transaction ID: 2024-950851-22897', 'N/A', '2025-02-11 11:21:03'),
(253, 'admin@admin.com', 'Accepted appointment w/ Transaction ID: 2024-731674-32044', 'N/A', '2025-02-13 18:04:48'),
(254, 'admin@admin.com', 'Approved appointment w/ Transaction ID: 2024-731674-32044', 'payment-ui.php', '2025-02-13 18:06:51'),
(255, 'Employee@employee.com', 'Accepted Payment of Transaction ID: 2024-353031-13100', 'N/A', '2025-02-18 14:40:55'),
(256, 'liquifienx4@gmail.com', 'uploaded a file', 'Lanaria_Enabling Assessment No.6.png', '2025-02-27 12:19:11'),
(257, 'liquifienx4@gmail.com', 'Profile Picture Changed', 'Lanaria_Vector.webp', '2025-02-27 12:21:20'),
(258, 'Employee@employee.com', 'Accepted Appointment of Transaction ID: 2024-157945-69822', 'N/A', '2025-02-27 13:05:44'),
(259, 'Employee@employee.com', 'Approved Transaction ID: 2024-157945-69822', 'N/A', '2025-02-27 13:11:19'),
(260, 'Employee@employee.com', 'Accepted Payment of Transaction ID: 2024-157945-69822', 'N/A', '2025-02-27 13:14:09'),
(261, 'admin@admin.com', 'Accepted appointment w/ Transaction ID: 2024-747727-85827', 'N/A', '2025-03-23 04:46:30'),
(262, 'admin@admin.com', 'Approved appointment w/ Transaction ID: 2024-747727-85827', 'payment-ui.php', '2025-03-23 04:52:04'),
(263, 'chrldlcrztgln@gmail.com', 'uploaded a file', 'aboutus.jpg', '2025-03-23 08:54:00'),
(264, 'chrldlcrztgln@gmail.com', 'deleted a file', 'aboutus.jpg', '2025-03-23 08:54:24'),
(265, 'Employee@employee.com', 'Accepted Appointment of Transaction ID: 2024-853557-27153', 'N/A', '2025-03-23 09:15:35'),
(266, 'Employee@employee.com', 'Approved Transaction ID: 2024-853557-27153', 'N/A', '2025-03-23 09:19:31'),
(267, 'Employee@employee.com', 'Accepted Payment of Transaction ID: 2024-853557-27153', 'N/A', '2025-03-23 09:23:53'),
(268, 'Employee@employee.com', 'Accepted Appointment of Transaction ID: 2024-218973-35500', 'N/A', '2025-03-24 12:24:03'),
(269, 'Employee@employee.com', 'Approved Transaction ID: 2024-218973-35500', 'N/A', '2025-03-24 12:24:43'),
(270, 'Employee@employee.com', 'Accepted Payment of Transaction ID: 2024-218973-35500', 'N/A', '2025-03-24 12:28:37'),
(271, 'Employee@employee.com', 'Declined Transaction ID: 2024-367210-85820', 'N/A', '2025-03-24 18:33:54');

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
(22, 'Jhune Ante', '2024-157018-64999', 'jca092080@gmail.com', 'Processing', NULL, '2024-11-27 02:30:19', NULL, '2024-11-27 02:31:11', 'brand-new', NULL, NULL, 0, NULL, NULL, NULL, '2024-11-29', '10:30:00', NULL, NULL, NULL, NULL, 1),
(26, 'Kevin Bagasbas', '2024-932720-31914', 'quilapiomatthew31@gmail.com', 'Processing', NULL, '2024-11-27 13:06:45', NULL, NULL, 'second-hand', NULL, NULL, 1, NULL, NULL, NULL, '2024-11-28', '09:30:00', NULL, NULL, NULL, NULL, 1),
(34, 'Roma Almendras', '2024-809081-39210', 'romalennalmendras@gmail.com', 'Processing', NULL, '2024-11-27 14:14:42', NULL, NULL, 'brand-new', NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-02', '10:00:00', NULL, NULL, NULL, NULL, 1),
(42, 'Charlie Taglinao', '2024-323574-79474', 'taglinao06@gmail.com', 'Approved', NULL, '2024-12-04 11:44:08', '2024-12-03 07:23:44', '2024-12-03 07:23:15', 'sangla-orcr', NULL, NULL, 1, 2, 'JACCS', 'asd', '2024-12-02', '12:00:00', '6', 10000000.00, '2025-06-04', '2024-12-16', NULL),
(43, 'Miko Paril', '2024-209648-16824', 'marionparil26@gmail.com', 'Approved', NULL, '2024-12-04 01:08:33', '2024-12-04 01:10:16', '2024-12-04 01:09:13', 'brand-new', 'Chattel Mortgage Fees & Comprehensive Car Insurance', 100000.00, 1, 1, 'ORICO', 'this is a test', '2024-12-04', '09:30:00', '36', 202020.00, '2024-12-20', '2024-12-20', NULL),
(44, 'Jin Uy', '2024-500504-98240', 'anglewesley21@gmail.com', 'Processing', NULL, '2024-12-04 14:53:00', NULL, NULL, 'brand-new', NULL, NULL, 0, NULL, NULL, NULL, '2024-12-25', '14:30:00', NULL, NULL, NULL, NULL, 1),
(45, 'Charlie Taglinao', '2024-417978-04898', 'taglinao06@gmail.com', 'Approved', NULL, '2024-12-05 06:00:14', NULL, '2024-12-05 06:39:52', 'sangla-orcr', NULL, NULL, 1, 2, 'Banco De Oro', 'Approve by BDO', '2024-12-05', '09:30:00', '6', 20000.00, '2025-06-05', '2024-12-09', NULL),
(46, 'Kreian Lanaria', '2024-826795-81223', 'kreianlanaria@gmail.com', 'Approved', NULL, '2025-02-10 13:34:44', NULL, NULL, 'brand-new', NULL, NULL, 1, 1, NULL, NULL, '2025-02-13', '11:00:00', NULL, NULL, NULL, NULL, 1),
(47, 'Kreian Lanaria', '2024-950851-22897', 'kreianlanaria@gmail.com', 'Approved', NULL, '2025-02-11 10:52:48', '2025-02-11 11:20:00', '2025-02-11 11:07:00', 'brand-new', 'Chattel Mortgage Fees & Comprehensive Car Insurance', 10000.00, 1, 1, 'JACCS', 'Chattel Mortgage Fees: 7000\r\nCar Insurance: 3000', '2025-02-19', '11:00:00', '6', 500000.00, '2025-02-12', '2025-02-13', 1),
(48, 'Kreian Lanaria', '2024-353031-13100', 'kreianlanaria@gmail.com', 'Approved', NULL, '2025-02-11 11:09:23', '2025-02-11 11:13:35', '2025-02-11 11:11:40', 'brand-new', 'Chattel Mortgage Fees & Comprehensive Car Insurance', 10000.00, 1, 1, 'JACCS', 'Chattel Mortgage: 5000\r\nCar Insurance: 5000', '2025-02-13', '11:30:00', '6', 5000000.00, '2025-02-18', '2025-02-28', 1),
(49, 'Charlie Taglinao', '2024-731674-32044', 'taglinao06@gmail.com', 'Approved', NULL, '2025-02-12 08:43:16', '2025-02-13 18:08:59', '2025-02-13 18:04:48', 'brand-new', 'Chattel Mortgage Fees & Comprehensive Car Insurance', 100032.00, 1, 1, 'Banco De Oro', 'test', '2025-02-12', '17:00:00', '6', 100000.00, '2025-10-14', '2025-02-17', NULL),
(50, 'Kreian Lanaria', '2024-157945-69822', 'liquifienx4@gmail.com', 'Approved', NULL, '2025-02-27 12:35:40', '2025-02-27 13:11:19', '2025-02-27 13:05:44', 'brand-new', 'Chattel Mortgage Fees & Comprehensive Car Insurance', 100000.00, 1, 1, 'Security Bank', 'Chattel Mortgage: 50000\r\nCar Insurance: 50000', '2025-02-28', '13:30:00', '12', 1000000.00, '2025-02-28', '2025-03-14', 1),
(51, 'Charlie Taglinao', '2024-747727-85827', 'taglinao06@gmail.com', 'Approved', NULL, '2025-03-23 04:44:28', '2025-03-23 04:53:51', '2025-03-23 04:46:30', 'brand-new', 'Chattel Mortgage Fees & Comprehensive Car Insurance', 35678.00, 1, 1, 'ORICO', 'thfgh', '2025-03-24', '14:00:00', '6', 444444.00, '2025-06-20', '2025-04-07', NULL),
(52, 'John Dela Cruz', '2024-853557-27153', 'chrldlcrztgln@gmail.com', 'Approved', NULL, '2025-03-23 09:10:30', '2025-03-23 09:19:31', '2025-03-23 09:15:35', 'brand-new', 'Chattel Mortgage Fees & Comprehensive Car Insurance', 20000.00, 1, 1, 'Banco De Oro', 'Congrats pwede ka na mag loan', '2025-03-24', '12:30:00', '24', 1000000.00, '2028-06-23', '2025-03-28', 1),
(53, 'Marion Mimiko Paril', '2024-880658-00732', 'mimikoparil@gmail.com', 'Processing', NULL, '2025-03-24 12:13:38', NULL, NULL, 'brand-new', NULL, NULL, 0, NULL, NULL, NULL, '2025-03-26', '12:30:00', NULL, NULL, NULL, NULL, NULL),
(54, 'Marion Mimiko Paril', '2024-380041-85434', 'mimikoparil@gmail.com', 'Processing', NULL, '2025-03-24 12:19:27', NULL, NULL, 'second-hand', NULL, NULL, 0, NULL, NULL, NULL, '2025-03-24', '13:00:00', NULL, NULL, NULL, NULL, NULL),
(55, 'Marion Mimiko Paril', '2024-218973-35500', 'mimikoparil@gmail.com', 'Approved', NULL, '2025-03-24 12:22:31', '2025-03-24 12:24:43', '2025-03-24 12:24:03', 'brand-new', 'Chattel Mortgage Fees & Comprehensive Car Insurance', 123456.00, 1, 1, 'ORICO', 'test', '2025-03-24', '15:00:00', '36', 1000000.00, '2026-06-24', '2025-03-25', NULL),
(56, 'Charlie Taglinao', '2024-789746-29145', 'taglinao06@gmail.com', 'Processing', NULL, '2025-03-24 18:09:41', NULL, NULL, 'brand-new', NULL, NULL, 0, NULL, NULL, NULL, '2025-03-24', '14:30:00', NULL, NULL, NULL, NULL, NULL),
(57, 'Charlie Taglinao', '2024-367210-85820', 'taglinao06@gmail.com', 'Declined', NULL, '2025-03-24 18:31:25', NULL, NULL, 'second-hand', NULL, NULL, 1, NULL, NULL, 'idk', '2025-03-24', '09:30:00', NULL, NULL, NULL, NULL, NULL),
(58, 'Charlie Taglinao', '2024-099515-79275', 'taglinao06@gmail.com', 'Processing', NULL, '2025-03-25 05:04:25', NULL, NULL, 'brand-new', NULL, NULL, 0, NULL, NULL, NULL, '2025-03-26', '09:00:00', NULL, NULL, NULL, NULL, 1);

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
(72, 'liquifienx4@gmail.com', 'Lanaria_Enabling Assessment No.6.png', 'Identification Documents', '2025-02-27 12:19:11'),
(75, 'Employee@employee.com', 'mildred.webp', NULL, '2025-03-23 09:37:15');

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
  `mother_maiden_first_name_CoBorrower` varchar(100) NOT NULL,
  `mother_maiden_middle_name_CoBorrower` varchar(100) NOT NULL,
  `mother_maiden_last_name_CoBorrower` varchar(100) NOT NULL,
  `father_first_name_CoBorrower` varchar(100) NOT NULL,
  `father_middle_name_CoBorrower` varchar(100) NOT NULL,
  `father_last_name_CoBorrower` varchar(100) NOT NULL,
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

INSERT INTO `forms_brandnew_applicants` (`id`, `year_model`, `make`, `type`, `transmition_type`, `first_name`, `last_name`, `middle_name`, `dob`, `place_of_birth`, `marital_status`, `present_address`, `years_present_address`, `ownership`, `ownership_other`, `previous_address`, `years_previous_address`, `contact_number_1`, `contact_number_2`, `email`, `tin_number`, `sss_number`, `dependents`, `mother_maiden_first_name`, `mother_maiden_last_name`, `mother_maiden_middle_name`, `father_first_name`, `father_last_name`, `father_middle_name`, `income_source`, `income_source_other`, `employer_name`, `office_address`, `office_number`, `company_email`, `position`, `years_service`, `monthly_income`, `credit_cards`, `credit_history`, `comments`, `transaction_id`, `form_type`, `appointment_date`, `appointment_time`, `relationship_borrower`, `first_name_borrower`, `last_name_borrower`, `middle_name_borrower`, `date_of_birth_borrower`, `place_birth_borrower`, `residential_address_borrower`, `years_stay_borrower`, `contact_number_borrower`, `email_address_borrower`, `tin_number_borrower`, `sss_number_borrower`, `mother_maiden_first_name_CoBorrower`, `mother_maiden_middle_name_CoBorrower`, `mother_maiden_last_name_CoBorrower`, `father_first_name_CoBorrower`, `father_middle_name_CoBorrower`, `father_last_name_CoBorrower`, `employer_name_borrower`, `office_address_borrower`, `position_borrower`, `years_service_borrower`, `monthly_income_borrower`, `credit_cards_borrower`, `appointed_at`) VALUES
(11, 1981, 'Raphael Sweeney', 'Obcaecati sed occaec', 'Automatic', 'Charlie', 'Taglinao', 'Dela Cruz', '1999-11-12', 'Sit placeat ratione', 'Separated', 'Nesciunt omnis tota', '2005', 'Free living with Parents', '', 'Ex ea officia offici', '1978', '09123456789', '09123456785', 'taglinao06@gmail.com', '504', '953', '382', 'Yen', 'Moran', 'Jeremy Branch', 'Lois', 'Morgan', 'Hedwig Holland', 'Employed', '', 'Jocelyn Fry', 'Veniam nisi volupta', '660', 'zefasacak@mailinator.com', 'Sint omnis optio et', 1984, '878.00', '50', 'Est exercitation cu', 'Quaerat voluptatem d', '2024-658313-70257', 'brand-new', '2024-11-28', '13:00:00', 'Qui in sequi natus o', 'Noble', 'Snow', 'Lewis Harrell', '1996-10-15', 'Anim nihil sed amet', 'Recusandae Sed earu', '1973', '759', 'sefu@mailinator.com', '372', '282', '', '', '', '', '', '', 'Alma Atkins', 'Aspernatur impedit ', 'Dolores porro aliqui', '1982', '200.00', '64', '2024-11-30 05:42:09'),
(12, 2024, 'FORD RAPTOR', 'Pick up', 'Automatic', 'Jhune', 'Ante', 'GILTENDEZ', '1970-09-20', 'DASMA', 'Married', 'Dasmarinas', '24', 'Rented', '', 'DASMARINAS', '30', '09167755539', '', 'jca092080@gmail.com', '', '', '2', '', '', '', '', '', '', 'Employed', '', 'For se', 'For survey', '3453469', 'forsurveyonly@gmail.com', 'OWNER', 5, '2000.00', '1346346534629764', 'Good', '', '2024-157018-64999', 'brand-new', '2024-11-29', '10:30:00', 'COUSIN', 'Daniel', 'Tan', 'A', '1978-11-21', '', 'Dasmarinas', '5', '09346699245', 'danieltan@gmail.com', '', '', '', '', '', '', '', '', 'For survey', 'For survey', 'Owner', '5', '20000.00', '3465346966258427', '2024-11-30 05:42:09'),
(18, 2024, 'Toyota Vios', 'Sedan', 'Automatic', 'Roma', 'Almendras', 'Lenn', '1988-01-16', 'Manila', 'Married', 'Liora Homes', '6', 'Owned', '', 'Imus City', '10', '09173393308', '09173393308', 'romalennalmendras@gmail.com', '111222333444', '0022674392', '1', 'Stephany', 'Franca', 'Noble', 'Felix', 'Pedres', 'Cael', 'Employed', '', 'Deltek', 'Makati City', '7894657', 'romaaalmendras@deltek.com', 'Analyst', 10, '50000', '6578345200359151', 'Good', 'Application Docs', '2024-809081-39210', 'brand-new', '2024-12-02', '10:00:00', 'Spouse', 'Felman', 'Sumortin', 'Pedres', '1980-10-06', 'Bacolod', 'Liora Homes', '6', '09286574416', 'felman.sumortin@gmail.com', '054765239', '6496386550', '', '', '', '', '', '', 'Deltek', 'Makati City', 'Sr Analyst', '11', '50000', '6497225600359789', '2024-11-30 05:42:09'),
(20, 1986, 'Hedley Ford', 'Esse minima esse es', 'Manual', 'Kreian', 'Lanaria', 'De La Cruz', '1998-01-07', 'Qui nesciunt dolori', 'Separated', 'Doloribus iusto nece', '2011', 'Owned', '', 'Voluptas blanditiis ', '1997', '09456954559', '', 'kreianlanaria@gmail.com', '', '', '361', 'Ruby', 'Madden', 'Dexter Mejia', 'Zeph', 'Ortega', 'Kennan Stewart', 'Business', '', 'Rhoda Patrick', 'Est a id veritatis ', '649', 'hiqaxufu@mailinator.com', 'Eum occaecat et dolo', 1999, '808', '1111111111111111', 'Possimus magni dele', 'Laborum eos veniam ', '2024-726314-33360', 'brand-new', '2024-12-06', '10:30:00', 'Perspiciatis molest', 'Bradley', 'Ortega', 'Priscilla Pittman', '2003-04-20', 'Nostrud cillum et do', 'Aliquid quis vitae o', '2014', '09456954558', 'tibahuc@mailinator.com', '', '', '', '', '', '', '', '', 'Ima Sandoval', 'Voluptas quia volupt', 'Enim in minus exerci', '2000', '206', '', '2024-12-02 02:42:31'),
(21, 2013, 'Gillian Sutton', 'Est odit aut illum ', 'Manual', 'Kreian', 'Lanaria', 'De La Cruz', '1971-08-25', 'Consequatur quis qu', 'Separated', 'Eveniet esse qui d', '1990', 'Rented', '', 'Amet mollit minim a', '1995', '09456954559', '', 'kreianlanaria@gmail.com', '', '', '937', 'Tucker', 'Henson', 'Ferris King', 'Sasha', 'Pruitt', 'Alma Lamb', 'Employed', '', 'Philip Graves', 'Omnis molestias et o', '179', 'lulubat@mailinator.com', 'Fugiat soluta magni', 1972, '517', '1111111111111111', 'Esse nihil minima a', 'Placeat nobis praes', '2024-437147-79845', 'brand-new', '2024-12-22', '00:00:00', 'Ipsam ad aut molesti', 'Hunter', 'Macdonald', 'Jeremy Todd', '2006-05-23', 'Accusantium est nequ', 'Et omnis Nam ut et a', '1981', '09456954558', 'lomexixyk@mailinator.com', '', '', '', '', '', '', '', '', 'Cody Silva', 'Mollit aut quia haru', 'Duis totam sit comm', '1993', '465', '', '2024-12-02 10:22:41'),
(22, 2007, 'Mary Hudson', 'Sed commodi cumque q', 'Manual', 'Kreian', 'Lanaria', 'De La Cruz', '2003-03-08', 'Et qui facere ea sit', 'Widowed', 'Qui nihil aliquip ve', '1985', 'Free living with Parents', '', 'Architecto molestias', '1973', '09456954559', '', 'kreianlanaria@gmail.com', '', '', '505', 'Larissa', 'Flynn', 'Arthur Palmer', 'Uma', 'Hanson', 'Troy Hall', 'Business', '', 'Ivy Ayers', 'Ipsum aut fuga Cul', '932', 'bolisomix@mailinator.com', 'Animi itaque est be', 2017, '30', '1111111111111111', 'Quidem exercitation ', 'A delectus a ex lab', '2024-324006-73263', 'brand-new', '2024-12-23', '15:30:00', 'Quis qui sapiente es', 'Kane', 'Vincent', 'Lesley Nguyen', '2003-01-28', 'Officiis esse qui nu', 'Aut totam amet qui ', '1989', '09456954558', 'tynylafer@mailinator.com', '', '', '', '', '', '', '', '', 'Joan Forbes', 'Irure tempora mollit', 'Sint iure consequatu', '1977', '524', '', '2024-12-02 10:24:01'),
(23, 2013, 'Xavier Valenzuela', 'Exercitationem minus', 'Manual', 'Kreian', 'Lanaria', 'De La Cruz', '1970-04-15', 'Assumenda consectetu', 'Single', 'Perferendis est dol', '1995', 'Owned', '', 'Quidem fuga Qui eiu', '2009', '09456954559', '', 'kreianlanaria@gmail.com', '', '', '159', 'Brianna', 'Myers', 'Marah Rasmussen', 'Carter', 'Howard', 'Jaden Morales', 'Remittance', '', 'Alvin Mccarthy', 'Ratione et ex iusto ', '309', 'ridadyhek@mailinator.com', 'Vero minus et quod u', 1992, '915', '1111111111111111', 'Id iure sunt labori', 'Fugit labore ut dol', '2024-285287-43781', 'brand-new', '2024-12-12', '10:30:00', 'Ut exercitation face', 'Brent', 'Short', 'Jolene Saunders', '2003-05-06', 'Vel deserunt lorem n', 'Commodi maiores numq', '2001', '09456954558', 'kuwajigafi@mailinator.com', '', '', '', '', '', '', '', '', 'Hilda Cole', 'Ut ullamco pariatur', 'Incidunt quasi veli', '2017', '686', '', '2024-12-02 11:15:52'),
(24, 2024, 'toyota vios', 'pickup', 'Automatic', 'Miko', 'Paril', 'P', '2002-01-26', 'Gen trias', 'Separated', 'sidjadsi', '12', 'Rented', '', '', '', '09123456789', '', 'marionparil26@gmail.com', '', '', '', '', '', '', '', '', '', 'Employed', '', 'asdas', 'asdas', '123123', 'asd@asda.asd', 'asdasd', 123112, '123123', '1111111111111111', 'sadkjas', '', '2024-209648-16824', 'brand-new', '2024-12-04', '09:30:00', 'sdf', 'adas', 'asdasdasdas', 'asdasdasdad', '2001-08-22', '', '', '', '09123475891', 'asdasd@asd.asd', '', '', '', '', '', '', '', '', 'asdassadas', 'sadas', 'asdas', '10', '', '', '2024-12-04 01:08:33'),
(25, 1980, 'Type-59', 'Medium Tank', 'Automatic', 'Jin', 'Uy', 'N/A', '2000-07-07', 'Pyongyang, North Korea', 'Single', 'Pyongyang, North Korea', '24', 'Free living with Parents', '', '', '', '11111111111', '', 'anglewesley21@gmail.com', '444444444444', '4444444444', '0', '', '', '', '', '', '', 'Employed', '', 'Temu Industies', 'Kangwon, North Korea', '987654', 'abc@gmail.com', 'Missionary', 28, '24000', '9999888877774444', 'Negative', '', '2024-500504-98240', 'brand-new', '2024-12-25', '14:30:00', 'Acquaintance', 'Eva', 'Hitler', 'Braun', '1890-12-04', 'Berlin', '', '-1', '99999999999', 'eva@gmail.com', '', '', '', '', '', '', '', '', 'Auschwitz', 'Berlin', 'Warden', '10', '', '', '2024-12-04 14:53:00'),
(26, 2002, 'John Gallegos', 'Voluptate veniam la', 'Automatic', 'Kreian', 'Lanaria', 'De La Cruz', '2003-06-19', 'Binan Laguna', 'Single', 'Dasmarinas City, Cavite', '10', 'Owned', '', '', '', '09456954559', '', 'kreianlanaria@gmail.com', '', '', '', 'Brady', 'Welch', 'Ariel Sears', 'Amal', 'Gilbert', 'Violet Bradshaw', 'Other', '', 'Joshua Strickland', 'Deleniti aspernatur ', '915', 'jehufizol@mailinator.com', 'Consequatur atque e', 1986, '405', '1111111111111111', 'Delectus praesentiu', 'Omnis nulla officiis', '2024-826795-81223', 'brand-new', '2025-02-13', '11:00:00', 'Totam veniam ut aut', 'Sonia', 'Jensen', 'Adria Powers', '1999-01-08', 'Quibusdam et ab est', 'Et itaque voluptatib', '1986', '11111111111', 'bexifo@mailinator.com', '111111111111', '1111111111', '', '', '', '', '', '', 'Griffin Roy', 'Vero ipsam mollit qu', 'Laborum Iste exerci', '1973', '986', '1111111111111111', '2025-02-10 13:34:44'),
(27, 1998, 'Iris Riley', 'Officia cum dolore a', 'Automatic', 'Kreian', 'Lanaria', 'De La Cruz', '2003-06-19', 'Dolor ea tempore ea', 'Single', 'Dasmarinas City, Cavite', '1975', 'Rented', '', 'Assumenda sit dolor ', '2016', '09456954559', '09456954551', 'kreianlanaria@gmail.com', '111111111111', '1111111111', '527', 'Kaitlin', 'Oneil', 'Willa Ray', 'Martha', 'Guerrero', 'Colette Yates', 'Business', '', 'Dai Shepard', 'Dignissimos dolores ', '936', 'xacojudi@mailinator.com', 'Asperiores ipsa vol', 1974, '803', '1111111111111111', 'Velit sequi elit eo', 'Corrupti atque prae', '2024-950851-22897', 'brand-new', '2025-02-19', '11:00:00', 'Et incidunt sunt sa', 'Louis', 'Kelley', 'Rahim Gay', '1996-07-16', 'Doloribus cupiditate', 'Consequatur Fuga C', '1991', '11111111111', 'kuderyfa@mailinator.com', '111111111111', '1111111111', '', '', '', '', '', '', 'Kelly Boyle', 'Asperiores ex et sun', 'Quis quis ut archite', '1988', '283', '1111111111111111', '2025-02-11 10:52:48'),
(28, 2013, 'Brian Mosley', 'Praesentium officiis', 'Manual', 'Kreian', 'Lanaria', 'De La Cruz', '2003-06-19', 'Perspiciatis omnis ', 'Single', 'Dasmarinas City, Cavite', '1973', 'Owned', '', 'Ipsum est pariatur ', '1983', '09456954559', '09456954551', 'kreianlanaria@gmail.com', '111111111111', '1111111111', '508', 'Beau', 'Leonard', 'Patrick Mcdowell', 'Adrian', 'Bates', 'Wayne Le', 'Business', '', 'Gretchen Lane', 'Ex corrupti consequ', '126', 'merudos@mailinator.com', 'Rerum quis nisi sit ', 1975, '776', '1111111111111111', 'Non qui quisquam dis', 'Do iure in rem nulla', '2024-353031-13100', 'brand-new', '2025-02-13', '11:30:00', 'Tempora sunt iste n', 'Hilel', 'French', 'Cody Smith', '2003-11-27', 'Quis commodo reprehe', 'Cumque excepteur ut ', '1990', '11111111111', 'juwode@mailinator.com', '111111111111', '1111111111', '', '', '', '', '', '', 'Cadman Brock', 'Magni iste pariatur', 'Ducimus dolor qui a', '1983', '247', '1111111111111111', '2025-02-11 11:09:23'),
(29, 2013, 'Colin Landry', 'Minus anim laboris i', 'Automatic', 'Charlie', 'Taglinao', 'Dela Cruz', '2003-06-26', 'Omnis beatae exercit', 'Widowed', '0548 Purok 3 Barangay Pinagtipunan City of General Trias, Cavite', '1994', 'Rented', '', 'Aperiam qui accusant', '1989', '09212288244', '09421121635', 'taglinao06@gmail.com', '', '', '342', 'Hoyt', 'Todd', 'Wing Cannon', 'Palmer', 'Hubbard', 'Bertha Mccall', 'Employed', '', 'Orson Mcdowell', 'Adipisci iste quis e', '31', 'lixatahaq@mailinator.com', 'Excepteur eos nihil ', 1970, '914', '0929292392392837', 'Molestiae ipsum con', 'Commodo qui nostrum ', '2024-731674-32044', 'brand-new', '2025-02-12', '17:00:00', 'Consectetur ab sunt ', 'Isaac', 'Cross', 'Daniel Cohen', '1993-09-19', 'Eveniet sint aut s', 'Exercitation distinc', '2002', '21312313333', 'dozedemi@mailinator.com', '', '', '', '', '', '', '', '', 'Clementine Soto', 'Sed est aliquip dele', 'Debitis eiusmod ut t', '1977', '801', '', '2025-02-12 08:43:16'),
(30, 1988, 'Rina Walker', 'Sit et ut adipisici', 'Manual', 'Kreian', 'Lanaria', 'De La Cruz', '2004-07-19', 'Vero quas ut nulla q', 'Single', 'Dasmarinas CIty, Cavite', '1985', 'Owned', '', 'Molestiae quia moles', '1988', '09456954559', '09456943221', 'liquifienx4@gmail.com', '', '', '87', 'Hop', 'Whitney', 'Myles Maxwell', 'Liberty', 'Lester', 'Echo Hodges', 'Employed', '', 'Holly Mcguire', 'Ad qui proident nob', '647', 'bypydofo@mailinator.com', 'Laborum Itaque libe', 1993, '344', '1111111111111111', 'Voluptatum nemo accu', 'Reiciendis suscipit ', '2024-157945-69822', 'brand-new', '2025-02-28', '13:30:00', 'Voluptatibus ut quae', 'Kimberly', 'Donaldson', 'Fay Cooper', '1987-07-18', 'Excepteur nemo ullam', 'Suscipit quis neque ', '2006', '09123456789', 'janav@mailinator.com', '', '', '', '', '', '', '', '', 'Mariam Hancock', 'Nisi perspiciatis i', 'Dolores et dolor qua', '1990', '408', '', '2025-02-27 12:35:40'),
(31, 2024, 'toyota wigo', 'hatchback', 'Manual', 'Charlie', 'Taglinao', 'Dela Cruz', '2003-06-26', 'General Trias', 'Single', '0548 Purok 3 Barangay Pinagtipunan City of General Trias, Cavite', '6', 'Owned', '', '', '', '09212288244', '', 'taglinao06@gmail.com', '', '', '', '', '', '', '', '', '', 'Employed', '', 'asd', 'asd', '23', 'asd@asd.asd', 'asdasd', 3, '23233', '2131231233123123', 'asdasd', 'sadasdasd', '2024-747727-85827', 'brand-new', '2025-03-24', '14:00:00', 'asdasdasd', 'asd', 'asdsad', 'asd', '2002-02-23', '', '', '', '09123412342', 'asdasd@asd.asd', '', '', '', '', '', '', '', '', 'asd', 'asd', 'asd', '22', '', '', '2025-03-23 04:44:28'),
(32, 2025, 'Toyota Yaris Cross', 'SUV Crossover', 'Automatic', 'John', 'Dela Cruz', 'Santos', '2003-03-06', 'General Trias Cavite', 'Single', 'General Trias, Cavite', '10', 'Owned', '', '', '', '09456954559', '', 'chrldlcrztgln@gmail.com', '', '', '', '', '', '', '', '', '', 'Employed', '', 'Service IT+', 'Makati City, Manila', '112345', 'serviceit@gmail.com', 'Software Engineer', 3, '50000', '1234455567772222', '', '', '2024-853557-27153', 'brand-new', '2025-03-24', '12:30:00', 'Spouse', 'Ellen', 'Joe', 'Gonzales', '2003-12-05', '', '', '', '09456954551', 'ellen1@gmail.com', '', '', '', '', '', '', '', '', 'Tesla', 'Taguig, Metro Manila', 'Car Dealer', '2', '', '', '2025-03-23 09:10:30'),
(33, 2025, 'Toyota Raize G', 'Sedan', 'Manual', 'Marion Mimiko', 'Paril', 'P.', '1988-01-01', 'General Trias', 'Married', 'Gen Tri', '2', 'Owned', '', '', '', '09123456789', '09123456781', 'mimikoparil@gmail.com', '', '', '', 'Jane', 'Smith', 'Zamora', 'John', 'Doe', 'Cruz', 'Employed', '', 'Tesla', 'Makati City', '1234562', 'abc@gmail.com', 'Software Engineer', 2, '50000', '1111222233334444', '', 'asdasdasdasdasds', '2024-880658-00732', 'brand-new', '2025-03-26', '12:30:00', 'Spouse', 'Ellen', 'Joe', 'Gonzales', '1975-01-01', 'General Trias', 'Damarinas Cavite', '10', '09123456782', 'ellen@gmail.com', '111111111111', '1111111111', '', '', '', '', '', '', 'Tesla', 'Pascam II', 'Quality Assurance', '10', '500000', '1111111111111111', '2025-03-24 12:13:38'),
(34, 2025, 'Jermaine Frederick', 'Ex cillum amet solu', 'Automatic', 'Marion Mimiko', 'Paril', 'P.', '1988-01-01', 'Quas elit odit quia', 'Separated', 'Gen Tri', '12', 'Free living with Parents', '', '', '', '09123456789', '', 'mimikoparil@gmail.com', '', '', '', '', '', '', '', '', '', 'Business', '', 'Kerry Rocha', 'Ratione dolorum ulla', '12312312312', 'logaguwij@mailinator.com', 'Enim qui voluptatem', 3, '213123123', '1111111111111111', '', 'Aut anim reprehenderit culpa dolor culpa nihil blanditiis dolor aut vero qui magni provident quos consectetur nisi eum explicabo Nostrum', '2024-218973-35500', 'brand-new', '2025-03-24', '15:00:00', 'Aut explicabo Venia', 'Serena', 'Stewart', 'Xander Farmer', '1972-01-13', 'Aut sed in cupiditat', 'Doloremque sunt non ', '21', '09123872378', 'qude@mailinator.com', '111111111111', '2222222222', '', '', '', '', '', '', 'Wynter Glass', 'Eiusmod nulla adipis', 'Aut est anim odit n', '12', '', '', '2025-03-24 12:22:31'),
(35, 2010, 'Emery Solis', 'Id modi aut eiusmod ', 'Manual', 'Charlie', 'Taglinao', 'Dela Cruz', '2003-06-26', 'Quae aut nihil aut t', 'Single', '0548 Purok 3 Barangay Pinagtipunan City of General Trias, Cavite', '3', 'Others', '', 'Ut quisquam ipsum i', '3', '09212288244', '09212288243', 'taglinao06@gmail.com', '092122882442', '092122882', '496', 'Steel', 'Charles', 'Holly Melendez', 'Myra', 'Sykes', 'Chanda Serrano', 'Remittance', '', 'Taylor Macdonald', 'Qui reprehenderit fu', '123123321', 'lagazeru@mailinator.com', 'Beatae recusandae N', 3, '412313', '1231231231233333', 'Do rerum rerum omnis', 'Dolores et amet neque quia voluptatem quo voluptatem mollitia sunt occaecat aut sed reiciendis ut est aperiam beatae autem', '2024-789746-29145', 'brand-new', '2025-03-24', '14:30:00', 'Occaecat voluptas pa', 'Phoebe', 'Dominguez', 'Wyatt Faulkner', '1970-02-04', 'Magnam vitae dolorib', 'Provident illum co', '3', '12312312312', 'mosyhydap@mailinator.com', '123123123123', '2871231233', '', '', '', '', '', '', 'Lila Wilson', 'Elit similique accu', 'Eveniet dolorem cul', '12', '123455', '1231231231231233', '2025-03-24 18:09:41'),
(36, 2014, 'Coby Barron', 'Similique sint accus', 'Automatic', 'Charlie', 'Taglinao', 'Dela Cruz', '2003-06-26', 'General Trias, Cavite', 'Single', '0548 Purok 3 Barangay Pinagtipunan City of General Trias, Cavite', '21', 'Owned', '', '0548 Purok 3 Barangay Pinagtipunan City of General Trias, Cavite', '21', '09212288244', '09087865516', 'taglinao06@gmail.com', '123412341234', '111222333', '2', 'Shelby', 'Ballard', 'Rama Floyd', 'Frances', 'Robbins', 'Marshall Church', 'Business', '299', 'Regan Kim', 'Enim velit sit exe', '09236482', 'liqobeqy@mailinator.com', 'Aliquid cupidatat om', 12, '1234423', '1234123412341234', 'Sed possimus cumque', 'Ea aperiam eos sint sit irure deserunt laborum aut itaque incidunt sint eum laudantium magna cum dolor voluptatem duis213', '2024-099515-79275', 'brand-new', '2025-03-26', '09:00:00', 'Numquam est dolorem', 'Nell', 'Rice', 'Xyla Hatfield', '1990-03-26', 'Facilis amet offici', 'Doloremque mollit ex', '2', '09237482374', 'nalowydine@mailinator.com', '423412341234', '123444332', '', '', '', '', '', '', 'Kellie Wilkerson', 'Quos non eveniet ni', 'Rerum incidunt in d', '2', '31234', '1231234441233322', '2025-03-25 05:04:25');

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
  `employer_name_borrower` varchar(255) DEFAULT NULL,
  `office_address_borrower` text DEFAULT NULL,
  `position_borrower` varchar(255) DEFAULT NULL,
  `years_service_borrower` varchar(255) DEFAULT NULL,
  `monthly_income_borrower` varchar(255) DEFAULT NULL,
  `credit_cards_borrower` text DEFAULT NULL,
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

INSERT INTO `forms_sanglaorcr_applicants` (`id`, `year_model`, `make`, `type`, `transmition_type`, `first_name`, `last_name`, `middle_name`, `dob`, `place_of_birth`, `marital_status`, `present_address`, `years_present_address`, `ownership`, `ownership_other`, `previous_address`, `years_previous_address`, `contact_number_1`, `contact_number_2`, `email`, `tin_number`, `sss_number`, `dependents`, `mother_maiden_first_name`, `mother_maiden_last_name`, `mother_maiden_middle_name`, `father_first_name`, `father_last_name`, `father_middle_name`, `income_source`, `income_source_other`, `employer_name`, `office_address`, `office_number`, `company_email`, `position`, `years_service`, `monthly_income`, `credit_cards`, `credit_history`, `relationship_borrower`, `first_name_borrower`, `last_name_borrower`, `middle_name_borrower`, `date_of_birth_borrower`, `place_birth_borrower`, `residential_address_borrower`, `years_stay_borrower`, `contact_number_borrower`, `email_address_borrower`, `tin_number_borrower`, `sss_number_borrower`, `mother_maiden_first_name_CoBorrower`, `mother_maiden_last_name_CoBorrower`, `mother_maiden_middle_name_CoBorrower`, `father_first_name_CoBorrower`, `father_last_name_CoBorrower`, `father_middle_name_CoBorrower`, `employer_name_borrower`, `office_address_borrower`, `position_borrower`, `years_service_borrower`, `monthly_income_borrower`, `credit_cards_borrower`, `comments`, `transaction_id`, `form_type`, `file_name`, `appointment_date`, `appointment_time`, `ORCR_filename`, `appointed_at`) VALUES
(8, '2004', 'Tamara Warner', 'Repudiandae eum ea q', 'Manual', 'Charlie', 'Taglinao', 'Dela Cruz', '12', 'Aut laborum vel sed ', 'Married', 'Velit aperiam nesciu', '1973', 'Free living with Parents', '', 'Id ad aut non volup', '1994', '09212288244', '09212288245', 'taglinao06@gmail.com', '', '', '', 'Jena', 'Flynn', 'Brenda Keller', 'Keaton', 'Lucas', 'Uta Daugherty', 'Business', '', 'Madaline Salazar', 'Ex in quia fugiat ve', '612', 'pive@mailinator.com', 'Eligendi ut iusto cu', '2015', '400', '1234123412341234', 'Rerum et perferendis', 'Doloribus non quam o', 'Heather', 'Holmes', 'Brody Wilder', '1987-04-29', 'Recusandae Necessit', 'Reiciendis numquam t', '2', '09212288564', 'vugegoci@mailinator.com', '123412341222', '1234666687', 'asd', 'asd', 'lasd', 'asd', 'asd', 'asd', NULL, NULL, NULL, NULL, NULL, NULL, '123', '2024-323574-79474', 'sangla-orcr', NULL, '2024-12-02', '12:00:00', 'Charlie Taglinao_ORCR_2024-12-02_13-08-08_0.jpg', '2024-12-02 12:08:08'),
(9, '2024', 'Tesla Y', 'Hatchback', 'Automatic', 'Charlie', 'Taglinao', 'Dela Cruz', '', 'General Trias', 'Single', 'General Trias', '21', 'Owned', '', 'General Trias', '21', '09212288244', '09212288246', 'taglinao06@gmail.com', '623414239494', '8935798123', '2', '', '', '', '', '', '', 'Employed', '', 'Paresan', 'Gentri', '03859933', 'paresannimiko@corp.com', 'CEO', '3', '400000', '4975394294020923', 'Very Good', 'test', 'Kreian', 'Lanaria', 'diko alam', '2003-12-05', 'test', 'dasma', '21', '09123456789', 'kreianlanaria@gmail.com', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-417978-04898', 'sangla-orcr', NULL, '2024-12-05', '09:30:00', 'Charlie Taglinao_ORCR_2024-12-05_06-00-14_0.jpg', '2024-12-05 06:00:14');

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
  `mother_maiden_first_name_CoBorrower` varchar(100) NOT NULL,
  `mother_maiden_middle_name_CoBorrower` varchar(100) NOT NULL,
  `mother_maiden_last_name_CoBorrower` varchar(100) NOT NULL,
  `father_first_name_CoBorrower` varchar(100) NOT NULL,
  `father_middle_name_CoBorrower` varchar(100) NOT NULL,
  `father_last_name_CoBorrower` varchar(100) NOT NULL,
  `employer_name_borrower` varchar(255) DEFAULT NULL,
  `office_address_borrower` text DEFAULT NULL,
  `position_borrower` varchar(255) DEFAULT NULL,
  `years_service_borrower` varchar(255) DEFAULT NULL,
  `monthly_income_borrower` varchar(255) DEFAULT NULL,
  `credit_cards_borrower` text DEFAULT NULL,
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

INSERT INTO `forms_secondhand_applicants` (`id`, `year_model`, `make`, `type`, `transmition_type`, `first_name`, `last_name`, `middle_name`, `dob`, `place_of_birth`, `marital_status`, `present_address`, `years_present_address`, `ownership`, `ownership_other`, `previous_address`, `years_previous_address`, `contact_number_1`, `contact_number_2`, `email`, `tin_number`, `sss_number`, `dependents`, `mother_maiden_first_name`, `mother_maiden_last_name`, `mother_maiden_middle_name`, `father_first_name`, `father_last_name`, `father_middle_name`, `income_source`, `income_source_other`, `employer_name`, `office_address`, `office_number`, `company_email`, `position`, `years_service`, `monthly_income`, `credit_cards`, `credit_history`, `relationship_borrower`, `first_name_borrower`, `last_name_borrower`, `middle_name_borrower`, `date_of_birth_borrower`, `place_birth_borrower`, `residential_address_borrower`, `years_stay_borrower`, `contact_number_borrower`, `email_address_borrower`, `tin_number_borrower`, `sss_number_borrower`, `mother_maiden_first_name_CoBorrower`, `mother_maiden_middle_name_CoBorrower`, `mother_maiden_last_name_CoBorrower`, `father_first_name_CoBorrower`, `father_middle_name_CoBorrower`, `father_last_name_CoBorrower`, `employer_name_borrower`, `office_address_borrower`, `position_borrower`, `years_service_borrower`, `monthly_income_borrower`, `credit_cards_borrower`, `comments`, `transaction_id`, `form_type`, `appointment_date`, `appointment_time`, `appointed_at`) VALUES
(11, '2500', 'Hino', 'Don Aldrin', 'Manual', 'Kevin', 'Bagasbas', 'X.', '2000-02-29', 'Dongcheng, China', 'Separated', 'Wuhan, China', '16', 'Free living with Parents', '', 'N/A', '0', '09999999912', '09999999945', 'quilapiomatthew31@gmail.com', '0000000000000', '11888888833', '2', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A', 'Business', '', 'Philippine Offshore Gaming Operators', 'Pasay, Metro Manila', '7777777', 'quilapiomatthew31@gmail.com', 'Pogo Manager', '4', '1000000.00', '9999555577771623', 'Negative Credit Score', 'Kabet', 'Alice', 'Guo', 'Ping', '2003-01-01', 'Bamban, Tarlac', 'N/A', '12', '000', 'aliceguo@gmail.com', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-932720-31914', 'second-hand', '2024-11-28', '09:30:00', '2024-11-30 05:43:04'),
(14, '2000', 'Madonna Richmond', 'Deserunt sunt persp', 'Automatic', 'Kreian', 'Lanaria', 'De La Cruz', '1997-06-21', 'Dolorem maxime tempo', 'Married', 'Dolore dolorem ullam', '1983', 'Owned', '', 'Consequatur Debitis', '1990', '09456954559', '', 'kreianlanaria@gmail.com', '', '', '145', 'Libby', 'Copeland', 'Steel Bullock', 'Vanna', 'Garrison', 'Kalia Burgess', 'Business', '', 'Hamilton Burris', 'Voluptates numquam d', '738', 'balajuzul@mailinator.com', 'Eum neque aspernatur', '2014', '822', '', 'Necessitatibus asper', 'Cum quos occaecat cu', 'Peter', 'Montoya', 'Lana Patterson', '2003-03-08', 'Voluptatem Laborum', 'Sint labore aperiam', '2014', '09456954558', 'lebokopa@mailinator.com', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-012319-57270', 'second-hand', '2024-12-17', '11:00:00', '2024-12-02 10:30:58'),
(15, '2025', 'Honda Civic', 'Sedan', 'Automatic', 'Marion Mimiko', 'Paril', 'P.', '1988-01-01', 'Officiis odio deseru', 'Married', 'Gen Tri', '2', 'Owned', '', 'Sed corrupti iste s', '9', '09123456789', '09123456781', 'mimikoparil@gmail.com', '', '', '', '', '', '', '', '', '', 'Employed', '', 'Tesla', '123Street', '12313123', 'test@gmail.com', 'Software Developer', '1', '4000000', '1111111111111111', '', 'Eos sit incidunt ', 'Axel', 'Sheppard', 'Hollee Richmond', '1994-04-05', 'Iste in itaque volup', 'Amet recusandae Qu', '12', '09123456784', 'sysiseby@mailinator.com', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-380041-85434', 'second-hand', '2025-03-24', '13:00:00', '2025-03-24 12:19:27'),
(16, '2004', 'Lavinia Pope', 'Reiciendis nihil mag', 'Automatic', 'Charlie', 'Taglinao', 'Dela Cruz', '2003-06-26', 'Sint voluptas impedi', 'Single', '0548 Purok 3 Barangay Pinagtipunan City of General Trias, Cavite', '3', 'Owned', '', 'Voluptatem Culpa v', '3', '09212288244', '12331232133', 'taglinao06@gmail.com', '232332325423', '123412344', '685', 'Caryn', 'Barton', 'Ciaran Graham', 'Gwendolyn', 'Everett', 'Quin Blackburn', 'Business', '', 'Wyoming Blackburn', 'Similique id qui pro', '123123123', 'fixa@mailinator.com', 'Dolores unde tempora', '12', '44423', '1234123412341234', 'Sequi possimus prov', 'Temporibus fugiat am', 'Dante', 'Tanner', 'Camden Mercer', '1980-06-03', 'Dolores omnis itaque', 'Dignissimos vitae qu', '2', '12345124123', 'fuhegukad@mailinator.com', '123541235321', '123431242', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'Incidunt culpa in nostrud ut eveniet vel ut perferendis esse aspernatur eligendi do fugiat', '2024-367210-85820', 'second-hand', '2025-03-24', '09:30:00', '2025-03-24 18:31:25');

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
(21, 'liquifienx4@gmail.com', 'c24f8c80a6e9c9a3f72f159184e543cfc57cb0c73ba9e7b88e8421a1daf784cccb17e824f1ce5492ed441a9f24d0f0863e56', '2024-12-02 14:03:52', '2024-12-02 12:48:52'),
(23, 'taglinao06@gmail.com', '12e73c02e66a21a38f834a0664c54261d143d1089a8d1b5d63eb537ceb24e9d436cf63feac12faa6bf6bd71c273d044e4ec3', '2025-02-10 15:15:44', '2025-02-10 15:00:44');

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
(403, 22, '0i8jtk1e8nd289ivesn4e4um72', '2024-12-04 20:08:52', '2024-12-04 12:11:32'),
(404, 48, 'jnigu6k56gub8jdtubu5klhgk1', '2024-12-04 20:08:58', '2024-12-04 12:09:37'),
(405, 29, 'fp13ihmim57n2qc63rom80vng9', '2024-12-04 20:11:36', '2024-12-04 12:18:57'),
(406, 152, '50kd017lkbroiott5e5bv7cv2m', '2024-12-04 22:25:55', '2024-12-04 14:31:18'),
(407, 152, '219uklcc09vf49o6v0hj3jitma', '2024-12-04 22:34:06', '2024-12-04 14:54:27'),
(408, 29, 'svcp48r6u0bkit04g7eh0ldr5u', '2024-12-04 23:09:47', '2024-12-04 15:09:57'),
(409, 48, 'tllrkuhugju9hludq55bu5h5q8', '2024-12-04 23:10:07', '2024-12-04 15:10:13'),
(410, 29, '1h7haup8cqf5h0e01d5rah9lh0', '2024-12-05 14:43:03', '2024-12-05 06:53:09'),
(411, 22, 'he83j01f7k7l40tbbh6ls08fob', '2024-12-05 10:59:27', '2024-12-05 03:13:41'),
(412, 22, 'vurj7uk4m12uslcg6qprcqj3t1', '2024-12-05 11:16:44', '2024-12-05 03:20:18'),
(413, 22, 'qg0seebs960c2eiehjg7nt1shb', '2024-12-05 11:37:44', '2024-12-05 03:39:52'),
(414, 22, 'df38k3jno5975qc6pqeosdr19n', '2024-12-05 13:53:39', '2024-12-05 14:00:49'),
(415, 22, 'df38k3jno5975qc6pqeosdr19n', '2024-12-05 14:01:54', '2024-12-05 06:32:17'),
(416, 112, '6du478278e0jk5fuciucnlv5cc', '2024-12-05 14:31:41', '2024-12-05 06:39:38'),
(417, 22, 'bh8m7sov0dmqqiiqqjpouv16nk', '2024-12-05 14:32:23', '2024-12-05 06:33:32'),
(418, 22, '5e54ivkc10i7o5mlnrm3nrkf92', '2024-12-05 14:36:09', '2024-12-05 06:38:02'),
(419, 48, 'envvv0gqkhnfqvkbkkhiquvo5a', '2024-12-05 14:40:41', '2024-12-05 06:42:52'),
(420, 22, '3o29mjpvvhj7lqdfnmutljqodt', '2024-12-05 14:40:27', '2024-12-05 06:40:37'),
(421, 22, 'bc404ci24jtk13e2htubthqrb5', '2024-12-05 14:53:13', '2024-12-05 07:02:37'),
(422, 22, 'd4hrjs7u3i71ipm7jv36bdv88m', '2024-12-05 15:03:31', '2024-12-05 07:16:13'),
(423, 112, '92ij9jo8d3ptj2u1bkqj843din', '2025-02-10 21:33:04', '2025-02-10 13:37:03'),
(424, 153, 'mrgf8r59fla6feh0g4v7ck8i8k', '2024-12-05 15:34:50', '2024-12-05 07:42:47'),
(425, 154, 'd93ml8sbb1n8lshmfathtvduaj', '2024-12-05 19:05:43', '2024-12-05 11:06:33'),
(426, 154, 'pbi17o3ao3gte5ae7e1rkfs8v9', '2024-12-05 19:06:59', '2024-12-05 11:07:38'),
(427, 154, '2efir5cdjut7b541o55h0l0pr9', '2024-12-05 19:08:40', '2024-12-05 11:10:24'),
(428, 22, 'u2o65p7u0a69g275qkktuhm2f1', '2024-12-05 20:45:32', '2024-12-05 13:06:55'),
(429, 29, 'en5l6p1eddgctc23rviqbc16kg', '2024-12-05 21:58:01', '2024-12-05 22:57:43'),
(430, 22, 'qj0lhadlctj94krur879k19ntk', '2024-12-06 12:42:41', '2024-12-06 04:43:26'),
(431, 22, 'v342vhccjdhucf28h5ng65276l', '2024-12-06 12:43:59', '2024-12-06 04:44:32'),
(432, 29, 'c491jpugklfkto797pf6jgr4te', '2024-12-06 12:44:43', '2024-12-06 04:47:56'),
(433, 22, 'qsfmhgig1qveta9a1941r18to3', '2024-12-06 21:22:15', '2024-12-06 15:37:58'),
(434, 22, 'f4tmpe4m987738s5a3kq3kjso5', '2024-12-09 21:39:13', '2024-12-09 13:40:00'),
(435, 132, 'rtljr0r1qlsp8eumcnbqrorsc9', '2024-12-09 19:42:56', '2024-12-09 11:47:00'),
(436, 48, '4q4mu01dl7jb8i4um8uda1ggml', '2024-12-09 19:47:11', '2024-12-09 11:47:51'),
(437, 29, 'b76hllgnd6up9uormefmbebr54', '2024-12-09 19:47:59', '2024-12-09 11:50:56'),
(438, 132, 'h2ov3vhe4bet4j96bmhnhpfeca', '2024-12-09 19:58:25', '2024-12-09 12:12:43'),
(439, 48, 'e5bruhqv27t7jcol0s0nb07c6n', '2024-12-09 20:12:58', '2024-12-09 20:51:55'),
(440, 132, 'e5bruhqv27t7jcol0s0nb07c6n', '2024-12-09 20:52:21', '2024-12-09 20:59:45'),
(441, 132, 'e5bruhqv27t7jcol0s0nb07c6n', '2024-12-09 21:09:49', '2024-12-09 21:39:08'),
(442, 132, 'e5bruhqv27t7jcol0s0nb07c6n', '2024-12-09 21:39:19', '2024-12-10 21:53:41'),
(443, 48, 'v6rh1c22qh3ae561g0sq1bvgp3', '2024-12-10 22:42:56', '2024-12-10 14:43:03'),
(444, 22, '506q9htodrqpuk20tueladqgs3', '2024-12-10 22:42:46', '2024-12-10 14:42:50'),
(445, 22, '2du28qc2j4vhostiho43sk6pd6', '2024-12-10 22:43:08', '2024-12-10 14:45:38'),
(446, 132, '59q60kms6oag7gl972avibrqcf', '2024-12-13 10:18:24', '2024-12-13 02:19:41'),
(447, 48, '9lsj70idrbt90l0uc93eobnj0f', '2024-12-13 10:19:53', '2024-12-13 02:24:28'),
(448, 29, '8jh0rlbo3fglk1sm0fol7n6ecj', '2024-12-17 22:50:37', '2024-12-18 04:55:07'),
(449, 48, 'qbacuarumc4of02u2u6urhi0g7', '2024-12-18 04:58:12', '2024-12-18 05:03:59'),
(450, 48, 'qbacuarumc4of02u2u6urhi0g7', '2024-12-18 05:04:02', '2024-12-17 21:13:01'),
(451, 29, 'nd7i1ue8jv4mraoi2ro0j1dfg6', '2025-02-10 21:21:12', '2025-02-10 13:21:36'),
(452, 48, '0ljgnkogojsb22dtqjtggtl2ut', '2025-02-10 21:21:49', '2025-02-10 21:29:27'),
(453, 48, '0ljgnkogojsb22dtqjtggtl2ut', '2025-02-10 21:35:07', '2025-02-10 22:02:11'),
(454, 48, '0ljgnkogojsb22dtqjtggtl2ut', '2025-02-10 22:02:15', '2025-02-10 22:13:38'),
(455, 48, 'ak5brdb3voicfsftigs3qrvpq2', '2025-02-10 22:13:47', '2025-02-10 22:38:49'),
(456, 48, 'ak5brdb3voicfsftigs3qrvpq2', '2025-02-10 22:38:59', '2025-02-10 22:52:10'),
(457, 48, '0ljgnkogojsb22dtqjtggtl2ut', '2025-02-10 22:52:16', '2025-02-10 23:00:25'),
(458, 48, '9kf68frmmptvkgppg1bbrlf0dt', '2025-02-10 23:04:33', '2025-02-10 15:05:09'),
(459, 22, 'bq7ucfcug125ejirn2gqtr5fgv', '2025-02-10 23:05:16', '2025-02-10 15:05:30'),
(460, 48, 'co3ekgrjbfoh0iha1unbtd62g9', '2025-02-10 23:05:36', '2025-02-10 15:10:07'),
(461, 48, '2h5in8jp8t8r7f2v5uj426tsj4', '2025-02-11 18:48:29', '2025-02-11 10:48:50'),
(462, 112, 'pe2ma2t22rmehh4l3t6ihrvar3', '2025-02-11 18:28:31', '2025-02-11 10:28:35'),
(463, 112, 'suggbtkus8pa0816baspvmguik', '2025-02-11 18:50:38', '2025-02-11 10:52:57'),
(464, 48, 'betgqbluh9i1dhg2jnbe9no0uk', '2025-02-11 18:49:23', '2025-02-11 10:50:30'),
(465, 48, 'oe7ergmdilbgoun6nrgq95u7ed', '2025-02-11 18:53:03', '2025-02-11 11:08:15'),
(466, 112, 'aj5ort4q2ak38htfcj5mlssjhu', '2025-02-11 19:08:28', '2025-02-11 11:09:29'),
(467, 48, 'rjp0u6updhe4e73kv6lqv02i3p', '2025-02-12 16:40:05', '2025-02-12 08:41:10'),
(468, 112, 'ak5brdb3voicfsftigs3qrvpq2', '2025-02-11 21:56:00', '2025-02-11 22:50:27'),
(469, 112, 'ak5brdb3voicfsftigs3qrvpq2', '2025-02-11 22:50:40', '2025-02-11 14:50:52'),
(470, 29, 'bprqhppkijl0g2jfmprnorb45s', '2025-02-11 22:51:00', '2025-02-11 14:51:27'),
(471, 29, '9rsnqq9rcqcgq10cce4d0622b6', '2025-02-12 16:32:53', '2025-02-12 08:33:03'),
(472, 22, 'o87fo7htdut49fp5sc91vb474h', '2025-02-12 16:33:22', '2025-02-12 08:39:28'),
(473, 29, '78ncafns0hq66vjg5bld58ii33', '2025-02-12 16:39:55', '2025-02-12 08:40:00'),
(474, 22, 'lgrbe21fdqtrma3og0ntsksugb', '2025-02-12 16:41:19', '2025-02-12 08:43:49'),
(475, 29, '6dmvl4j6b9hurcs5os92mgqmd1', '2025-02-12 16:43:56', '2025-02-12 08:44:00'),
(476, 48, 'so8i7m9neomtuu54v00ietfhaf', '2025-02-12 16:45:01', '2025-02-12 08:45:19'),
(477, 48, 'a8898ggc8qvc4jj65e07h1ntug', '2025-02-13 21:58:09', '2025-02-18 20:43:23'),
(478, 29, 'f0s9a2gnmof5rc82ha1rdmetfl', '2025-02-14 02:02:36', '2025-02-14 02:15:46'),
(479, 22, 'ub4p5894b72ge1909hbm5aitqd', '2025-02-28 14:51:36', '2025-02-28 06:52:26'),
(480, 29, 'v186dlsjhq94kk1l85q0270v0v', '2025-02-18 10:23:59', '2025-02-18 10:50:17'),
(481, 29, 'v186dlsjhq94kk1l85q0270v0v', '2025-02-18 10:50:23', '2025-02-18 03:10:24'),
(482, 29, 'kueu755a3admgfcdv3c6q5bu0t', '2025-02-20 10:15:46', '2025-02-23 13:26:25'),
(483, 48, '60r8epe4jtsqij575vpgghk1ck', '2025-02-18 21:34:32', '2025-02-18 14:40:59'),
(484, 48, '89gvnn8eump3d91jjlqftq15h8', '2025-02-18 22:47:50', '2025-02-18 14:48:22'),
(485, 29, 'kueu755a3admgfcdv3c6q5bu0t', '2025-02-23 13:26:34', '2025-02-26 11:37:44'),
(486, 29, 'mdfcl1t00h4r89pavncsaqss86', '2025-02-26 12:04:32', '2025-02-26 13:14:14'),
(487, 29, 'kueu755a3admgfcdv3c6q5bu0t', '2025-02-26 13:14:24', '2025-02-26 13:31:33'),
(488, 29, 'kueu755a3admgfcdv3c6q5bu0t', '2025-02-26 13:31:41', '2025-02-26 14:21:53'),
(489, 29, '4mmgss3v1fjgl9h21jdul9cbl5', '2025-02-27 19:35:56', '2025-02-27 11:36:25'),
(490, 48, 'qvvav0oh4g611e68h0vp5k4o3s', '2025-02-27 19:34:10', '2025-02-27 11:34:33'),
(491, 48, '5p4cs0tdabga4i0ur7g4op4m4q', '2025-02-27 19:35:28', '2025-02-27 11:35:49'),
(492, 48, 'g8kgmgjrvkelbudjdn4rq0u8f9', '2025-02-27 19:39:35', '2025-02-27 11:40:01'),
(493, 155, '89qfdik0u62truv67dcacuge4b', '2025-02-27 20:18:28', '2025-02-27 12:36:00'),
(494, 48, 'g2fohmg81vah6129d5d444cbuc', '2025-02-27 20:36:08', '2025-02-27 12:36:49'),
(495, 155, '8j333iasv8bb3uto6hlto7fnai', '2025-02-27 20:37:13', '2025-02-27 12:37:28'),
(496, 48, 'bnp3evv05cb2meaek386pm1o4h', '2025-02-27 20:37:50', '2025-02-27 13:07:00'),
(497, 29, 'k6ignrbo2k8sqerka1jme7k62d', '2025-02-27 21:07:08', '2025-02-27 13:09:08'),
(498, 48, 'nqt0cqi2iqfjur3qcet3fskrc0', '2025-02-27 21:09:18', '2025-02-27 13:26:28'),
(499, 29, 'ce3sgbf2ja2jqaavplg2ku208v', '2025-02-28 08:27:30', '2025-02-28 08:55:53'),
(500, 29, 'j4uodlrc7igdf78pq3u787ktbt', '2025-02-28 10:42:57', '2025-02-28 02:43:28'),
(501, 48, '283mec06gdmjqdu4l5ff511k8r', '2025-02-28 10:33:41', '2025-02-28 10:42:49'),
(502, 48, '497dt0vq6jim0m8od7hoq17afk', '2025-02-28 10:55:59', '2025-02-28 02:56:30'),
(503, 29, 'dr9ks8sadbmjua6foqf7bgav20', '2025-02-28 11:09:21', '2025-02-28 03:10:38'),
(504, 48, 'cr1bacq5iih3i9on65kkst913i', '2025-02-28 11:18:07', '2025-02-28 03:23:05'),
(505, 29, 'amen34klp260fik7tl2ca2vuc6', '2025-02-28 11:23:51', '2025-02-28 03:24:39'),
(506, 29, 'b4459rihmn8tll2fnqdushu5dl', '2025-02-28 14:25:46', '2025-02-28 14:51:26'),
(507, 29, '35dnl0r2j0dg97irie3vt45nc3', '2025-02-28 14:52:31', '2025-02-28 07:00:47'),
(508, 29, '1giskqacjvl28980i7pov206qj', '2025-03-08 21:47:10', '2025-03-08 13:48:29'),
(509, 29, 'tm0rfcj9gv1upg42i5buuhdrvr', '2025-03-13 09:14:36', '2025-03-13 01:16:07'),
(510, 29, 'rsj7cep602e4dphdrbbk6ivp3i', '2025-03-17 10:10:55', '2025-03-17 02:11:22'),
(511, 22, 's1uvhgo3r8j30ju57hjp73i3v3', '2025-03-23 12:26:05', '2025-03-23 04:38:36'),
(512, 29, 'pjp1hknme6aoa59avkfe546jul', '2025-03-23 12:38:44', '2025-03-23 04:39:43'),
(513, 48, 'pgpko0rfsfq9pfr6u2s3vco5n7', '2025-03-23 17:11:21', '2025-03-23 09:26:18'),
(514, 22, 'ksol9f89cbgqdkgj90p123v2ce', '2025-03-23 12:40:04', '2025-03-23 04:44:37'),
(515, 29, 'mmpq7rptocp8fc2l4sfaffio10', '2025-03-23 17:26:53', '2025-03-23 09:37:02'),
(516, 121, 'ocesk5ib2kbfpvp0odp09hmfvp', '2025-03-23 15:03:28', '2025-03-24 16:15:50'),
(517, 156, 'drg6rf1cahdobou4tepakrt84l', '2025-03-23 16:52:01', '2025-03-23 08:52:05'),
(518, 156, '64vk0vsn7bap00rbgkbl9inj7h', '2025-03-23 16:52:35', '2025-03-23 09:10:46'),
(519, 48, 'q5cvjpide7d1a5o6tm19urugau', '2025-03-23 17:37:06', '2025-03-23 09:37:19'),
(520, 29, '3orluphhgrcru3cecl5ls1pqfi', '2025-03-23 17:43:05', '2025-03-23 17:48:51'),
(521, 22, '05f6ta6c8ap1namhdnbe4qmji2', '2025-03-24 18:30:45', '2025-03-24 10:36:33'),
(522, 121, 'mf7vgbt9u0jamrsoo8vnk54kq6', '2025-03-24 20:09:04', '2025-03-24 12:22:42'),
(523, 48, '71qtj95hn9kqpntkbgeu1udupv', '2025-03-25 02:32:10', '2025-03-24 18:34:01'),
(524, 22, 'dhqtq83jdlufaggn1smri090ja', '2025-03-24 22:34:48', '2025-03-24 23:31:23'),
(525, 22, 'dhqtq83jdlufaggn1smri090ja', '2025-03-24 23:31:26', '2025-03-24 23:38:16'),
(526, 22, 'dhqtq83jdlufaggn1smri090ja', '2025-03-24 23:38:21', '2025-03-24 16:48:31'),
(527, 22, 'j14cn19aammpbnf117oqug7eml', '2025-03-25 02:04:58', '2025-03-25 02:25:41'),
(528, 22, 'j14cn19aammpbnf117oqug7eml', '2025-03-25 02:26:46', '2025-03-24 18:32:06'),
(529, 22, 'rs60le694mvr97jfhqdo22qe09', '2025-03-25 02:34:06', '2025-03-24 18:42:34'),
(530, 22, 'seob18oe29jgq57o05ja8i3lq4', '2025-03-25 03:11:46', '2025-03-24 19:11:48'),
(531, 22, 'u3n6g6eh03rcj10gbbqo4blt5b', '2025-03-25 12:28:58', '2025-03-25 04:29:00'),
(532, 22, 'u3d5o4mddggh958tsim8tqam2b', '2025-03-25 12:33:23', '2025-03-25 12:43:35'),
(533, 48, 'u3d5o4mddggh958tsim8tqam2b', '2025-03-25 12:43:40', '2025-03-25 04:44:25'),
(534, 22, 'sd24h1lh7knt1c7jm8kol75stv', '2025-03-25 12:44:30', '2025-03-25 05:02:02'),
(535, 22, 'qudcejm3feqqt9t5dqb30rrj3s', '2025-03-25 13:02:09', '2025-03-25 05:04:40'),
(536, 48, 'rafajlmovn457cu2rqfbafjtbf', '2025-03-25 13:04:46', '2025-03-25 13:10:28'),
(537, 22, 'r6ug2pctb6lckvl4a4b56676cn', '2025-03-25 13:10:55', '2025-03-25 05:16:10'),
(538, 48, '475j78fdmh9co0fif87uhnvtc1', '2025-03-25 13:16:17', '2025-03-25 14:18:08'),
(539, 112, '6bh87iimp8oe4b6898cnifn0mf', '2025-03-25 14:21:43', '2025-03-25 06:22:14'),
(540, 48, 'r1skikpab456g0kb80munm07m4', '2025-03-25 14:23:20', '2025-03-25 06:23:30'),
(541, 112, 'qvk2gmmpb2si9mjjqm5agduadj', '2025-03-25 14:23:38', '2025-03-25 06:36:25');

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
(136, 44, 'Processing', 'Processing', '2024-12-04 14:53:00'),
(137, 45, 'Application received', 'Processing', '2024-12-05 06:00:14'),
(138, 45, 'Accepted', 'Accepted', '2024-12-05 06:39:52'),
(139, 46, 'Processing', 'Processing', '2025-02-10 13:34:44'),
(140, 47, 'Processing', 'Processing', '2025-02-11 10:52:48'),
(141, 47, 'Accepted', 'Accepted', '2025-02-11 11:07:00'),
(142, 48, 'Processing', 'Processing', '2025-02-11 11:09:23'),
(143, 48, 'Accepted', 'Accepted', '2025-02-11 11:11:40'),
(144, 48, 'Approved', 'Approved', '2025-02-11 11:13:35'),
(145, 47, 'Approved', 'Approved', '2025-02-11 11:20:00'),
(146, 49, 'Processing', 'Processing', '2025-02-12 08:43:16'),
(147, 49, 'Approved', 'Approved', '2025-02-13 18:06:48'),
(148, 50, 'Processing', 'Processing', '2025-02-27 12:35:40'),
(149, 50, 'Accepted', 'Accepted', '2025-02-27 13:05:44'),
(150, 50, 'Approved', 'Approved', '2025-02-27 13:11:19'),
(151, 51, 'Processing', 'Processing', '2025-03-23 04:44:28'),
(152, 51, 'Approved', 'Approved', '2025-03-23 04:52:00'),
(153, 52, 'Processing', 'Processing', '2025-03-23 09:10:30'),
(154, 52, 'Accepted', 'Accepted', '2025-03-23 09:15:35'),
(155, 52, 'Approved', 'Approved', '2025-03-23 09:19:31'),
(156, 53, 'Processing', 'Processing', '2025-03-24 12:13:38'),
(157, 54, 'Processing', 'Processing', '2025-03-24 12:19:27'),
(158, 55, 'Processing', 'Processing', '2025-03-24 12:22:31'),
(159, 55, 'Accepted', 'Accepted', '2025-03-24 12:24:03'),
(160, 55, 'Approved', 'Approved', '2025-03-24 12:24:43'),
(161, 56, 'Processing', 'Processing', '2025-03-24 18:09:41'),
(162, 57, 'Processing', 'Processing', '2025-03-24 18:31:26'),
(163, 57, 'Declined', 'Declined', '2025-03-24 18:33:54'),
(164, 58, 'Processing', 'Processing', '2025-03-25 05:04:25');

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
(11, 135, 'Kain', '2024-11-27 14:02:27'),
(12, 135, 'Tulog', '2024-11-27 14:02:38'),
(13, 135, 'Hanap project', '2024-11-27 14:02:57'),
(14, 48, 'Check Pending Accounts', '2025-02-11 11:10:15');

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
(22, 'Charlie', 'Dela Cruz', 'Taglinao', 21, 'Male', '2003-06-26', '0548 Purok 3 Barangay Pinagtipunan City of General Trias, Cavite', 'taglinao06@gmail.com', '09212288244', '$2y$10$DwC3U6W.FvRPZuWZ0izVy.0tlPwDAHfn21G4RseYJf5efl3.fzWiu', 'Client', 'uploads/profile_picture/taglinao06@gmail.com/453305309_3765345913785914_7193141333388046034_n.webp', '2024-10-11 15:22:29'),
(29, 'Miko', 'Badinng', 'Admin', 99, 'Male', '2003-02-20', 'admin st.', 'admin@admin.com', '12345678910', '$2y$10$fF02nvJMPv2ttN6KLU9csOf16IYAFRGmZlG8obepQkE5nM2YxKW/C', 'Admin', '', '2024-10-11 15:22:29'),
(48, 'Employee', 'Employee', 'Employee', 99, 'Male', '1900-01-01', 'Employee', 'Employee@employee.com', '09123456789', '$2y$10$YRLZZzfRpEVP9keLTL5fQuElwXxnSGGiF8egjvqYerVHgc5jU3tse', 'Employee', '', '2024-10-11 15:22:29'),
(112, 'Kreian', 'De La Cruz', 'Lanaria', 21, 'Male', '2003-06-19', 'Dasmarinas City, Cavite', 'kreianlanaria@gmail.com', '09456954559', '$2y$10$NF0qmpfWRO4Enelv5ZnGxO5v/MZhTTsGRr./3VXzJ0c4x3tK4Yom.', 'Client', 'uploads/profile_picture/kreianlanaria@gmail.com/IMG_7720.webp', '2024-10-11 15:22:29'),
(121, 'Marion Mimiko', 'P.', 'Paril', 22, 'Male', '1988-01-01', 'Gen Tri', 'mimikoparil@gmail.com', '09123456789', '$2y$10$1a3qzLU6/5UwpFoGRszyFOvxhCrh6hkO8mXnVPSdzoFoEdVWqcbjK', 'Client', NULL, '2024-11-13 09:04:21'),
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
(136, 'Roma', 'Lenn', 'Almendras', 36, 'Female', '1988-01-16', 'Liora Homes', 'romalennalmendras@gmail.com', '09173393308', '$2y$10$RPKTUv80Wm5bweastBeU6uVHHiiJbULXF8yYZOeZ/uZINY.ZAA7qK', 'Client', NULL, '2024-11-27 14:07:33'),
(152, 'Jin', 'N/A', 'Uy', 24, 'Male', '2000-07-07', 'Pyongyang, North Korea', 'anglewesley21@gmail.com', '11111111111', '$2y$10$qsgvNKUhB1hz2xXIXhDZ2Oq7JrCYeV74OFnSnY9Tjzt8Nf.fJlPp6', 'Client', 'uploads/profile_picture/anglewesley21@gmail.com/Screenshot_2024-11-30-03-35-23-127_org.videolan.vlc.webp', '2024-12-04 14:25:13'),
(153, 'Sheril', 'De la Cruz', 'Lanaria', 49, 'Female', '1975-06-02', 'Dasmariñas City, Cavite', 'sherillanaria@gmail.com', '09473410281', '$2y$10$D30xIB42f52xhrxn744KMOezMJxwXLclHc4/0SQf1/DKiVrkqa8Iq', 'Client', NULL, '2024-12-05 07:33:55'),
(154, 'Gino', 'Galimba', 'Compendio', 24, 'Male', '2000-01-10', 'Liliw, Laguna', 'gcompendio1@gmail.com', '09123219193', '$2y$10$G9iilu9lymT4yM3YTH6rn.DOXZEmrCIHk02xUE2ehVn8Zm2J1OIGC', 'Client', NULL, '2024-12-05 11:05:26'),
(155, 'Kreian', 'De La Cruz', 'Lanaria', 20, 'Male', '2004-07-19', 'Dasmarinas CIty, Cavite', 'liquifienx4@gmail.com', '09456954559', '$2y$10$6HcjfAO6zY/.7YL7FeK3k.K5n1Sgn3/4GVgss.2rm4tMYg4z52Ica', 'Client', 'uploads/profile_picture/liquifienx4@gmail.com/Lanaria_Vector.webp', '2025-02-27 12:18:01'),
(156, 'John2', 'Santos', 'Dela Cruz', 22, 'Male', '2003-03-06', 'General Trias, Cavite', 'chrldlcrztgln@gmail.com', '09456954559', '$2y$10$hbW6CKuF88SOhShSPB8ple1zNwHcXx25atlfXzR5IOYlHU0rEbLfS', 'Client', NULL, '2025-03-23 08:51:40');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=272;

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `forms_brandnew_applicants`
--
ALTER TABLE `forms_brandnew_applicants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `forms_sanglaorcr_applicants`
--
ALTER TABLE `forms_sanglaorcr_applicants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `forms_secondhand_applicants`
--
ALTER TABLE `forms_secondhand_applicants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=542;

--
-- AUTO_INCREMENT for table `status_updates`
--
ALTER TABLE `status_updates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

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
