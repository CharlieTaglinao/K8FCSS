CREATE TABLE `files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_email` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_description` text DEFAULT NULL,
  `upload_date` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `user_email` (`user_email`),
  CONSTRAINT `files_ibfk_1` FOREIGN KEY (`user_email`) REFERENCES `users` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `files` (`id`, `user_email`, `file_name`, `file_description`, `upload_date`) VALUES ('83', 'Employee@employee.com', 'Paril_Resume.pdf', NULL, '2025-03-30 10:47:36');
INSERT INTO `files` (`id`, `user_email`, `file_name`, `file_description`, `upload_date`) VALUES ('85', 'weeneynegos@gmail.com', 'AcunaAlbayArenasParilTaglinaoEnablingAssessment1.png', 'Credit Information', '2025-03-30 15:22:54');
INSERT INTO `files` (`id`, `user_email`, `file_name`, `file_description`, `upload_date`) VALUES ('88', 'kreianlanaria@gmail.com', 'Screenshot 2023-10-01 175436.png', 'Identification Documents', '2025-03-30 21:08:11');
INSERT INTO `files` (`id`, `user_email`, `file_name`, `file_description`, `upload_date`) VALUES ('89', 'kreianlanaria@gmail.com', 'Screenshot 2023-10-01 175436.png', 'Identification Documents', '2025-03-30 21:08:28');
INSERT INTO `files` (`id`, `user_email`, `file_name`, `file_description`, `upload_date`) VALUES ('90', 'Employee@employee.com', 'Kreian Lanaria_ORCR_2025-03-28_15-50-56_0 (1).png', NULL, '2025-03-31 09:54:12');
INSERT INTO `files` (`id`, `user_email`, `file_name`, `file_description`, `upload_date`) VALUES ('92', 'edmayuga@dlsud.edu.ph', 'Screenshot 2023-10-01 175436.png', 'Income Verification', '2025-03-31 10:29:27');

