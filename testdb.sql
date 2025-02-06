-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 06, 2025 at 09:24 AM
-- Server version: 8.3.0
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `affiliates`
--

DROP TABLE IF EXISTS `affiliates`;
CREATE TABLE IF NOT EXISTS `affiliates` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `type` int DEFAULT NULL,
  `deleted` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `affiliates`
--

INSERT INTO `affiliates` (`id`, `name`, `type`, `deleted`) VALUES
(1, 'Tool 1', 1, NULL),
(2, 'Tool 2', 1, NULL),
(3, 'Career Path 1', 3, NULL),
(4, 'Career Path 2', 3, NULL),
(5, 'Rec Qualification 1', 2, NULL),
(6, 'Req Qualification 1', 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `basic_abilities`
--

DROP TABLE IF EXISTS `basic_abilities`;
CREATE TABLE IF NOT EXISTS `basic_abilities` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `deleted` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `basic_abilities`
--

INSERT INTO `basic_abilities` (`id`, `name`, `deleted`) VALUES
(1, 'Time Management', NULL),
(2, 'Critical Thinking', NULL),
(3, 'Adaptability', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `media_id` int DEFAULT NULL,
  `job_category_id` int DEFAULT NULL,
  `job_type_id` int DEFAULT NULL,
  `description` text,
  `detail` text,
  `business_skill` text,
  `knowledge` text,
  `location` varchar(255) DEFAULT NULL,
  `activity` text,
  `academic_degree_doctor` tinyint(1) DEFAULT NULL,
  `academic_degree_master` tinyint(1) DEFAULT NULL,
  `academic_degree_professional` tinyint(1) DEFAULT NULL,
  `academic_degree_bachelor` tinyint(1) DEFAULT NULL,
  `salary_statistic_group` varchar(255) DEFAULT NULL,
  `salary_range_first_year` varchar(255) DEFAULT NULL,
  `salary_range_average` varchar(255) DEFAULT NULL,
  `salary_range_remarks` text,
  `restriction` text,
  `estimated_total_workers` int DEFAULT NULL,
  `remarks` text,
  `url` varchar(255) DEFAULT NULL,
  `seo_description` text,
  `seo_keywords` text,
  `sort_order` int DEFAULT NULL,
  `publish_status` tinyint(1) DEFAULT NULL,
  `version` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `deleted` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `name`, `media_id`, `job_category_id`, `job_type_id`, `description`, `detail`, `business_skill`, `knowledge`, `location`, `activity`, `academic_degree_doctor`, `academic_degree_master`, `academic_degree_professional`, `academic_degree_bachelor`, `salary_statistic_group`, `salary_range_first_year`, `salary_range_average`, `salary_range_remarks`, `restriction`, `estimated_total_workers`, `remarks`, `url`, `seo_description`, `seo_keywords`, `sort_order`, `publish_status`, `version`, `created_by`, `created`, `modified`, `deleted`) VALUES
(1, 'キャビンアテンダント Job 1', 1, 1, 1, 'Description for Cabin Attendant', 'Detail for Cabin Attendant', 'Business Skill for Cabin Attendant', 'Knowledge for Cabin Attendant', 'Tokyo', 'Activity for Cabin Attendant', 0, 1, 0, 1, 'Group A', '3,000,000', '4,000,000', 'Salary remarks', 'No restrictions', 1000, 'Remarks for Cabin Attendant', 'http://example.com', 'SEO Description', 'SEO Keywords', 1, 1, 1, 1, '2025-02-06 17:18:46', '2025-02-06 17:18:46', NULL),
(2, 'Software Engineer Job 1', 2, 2, 2, 'Description for Software Engineer', 'Detail for Software Engineer', 'Business Skill for Software Engineer', 'Knowledge for Software Engineer', 'Osaka', 'Activity for Software Engineer', 1, 1, 0, 1, 'Group B', '5,000,000', '6,000,000', 'Salary remarks', 'No restrictions', 500, 'Remarks for Software Engineer', 'http://example.com', 'SEO Description', 'SEO Keywords', 2, 1, 1, 1, '2025-02-06 17:18:46', '2025-02-06 17:18:46', NULL),
(3, 'Nurse Job 1', 3, 3, 3, 'Description for Nurse', 'Detail for Nurse', 'Business Skill for Nurse', 'Knowledge for Nurse', 'Kyoto', 'Activity for Nurse', 0, 1, 1, 1, 'Group C', '4,000,000', '5,000,000', 'Salary remarks', 'No restrictions', 800, 'Remarks for Nurse', 'http://example.com', 'SEO Description', 'SEO Keywords', 3, 1, 1, 1, '2025-02-06 17:18:46', '2025-02-06 17:18:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jobs_basic_abilities`
--

DROP TABLE IF EXISTS `jobs_basic_abilities`;
CREATE TABLE IF NOT EXISTS `jobs_basic_abilities` (
  `id` int NOT NULL AUTO_INCREMENT,
  `job_id` int DEFAULT NULL,
  `basic_ability_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `job_id` (`job_id`),
  KEY `basic_ability_id` (`basic_ability_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `jobs_basic_abilities`
--

INSERT INTO `jobs_basic_abilities` (`id`, `job_id`, `basic_ability_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `jobs_career_paths`
--

DROP TABLE IF EXISTS `jobs_career_paths`;
CREATE TABLE IF NOT EXISTS `jobs_career_paths` (
  `id` int NOT NULL AUTO_INCREMENT,
  `job_id` int DEFAULT NULL,
  `affiliate_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `job_id` (`job_id`),
  KEY `affiliate_id` (`affiliate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `jobs_career_paths`
--

INSERT INTO `jobs_career_paths` (`id`, `job_id`, `affiliate_id`) VALUES
(1, 1, 3),
(2, 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `jobs_personalities`
--

DROP TABLE IF EXISTS `jobs_personalities`;
CREATE TABLE IF NOT EXISTS `jobs_personalities` (
  `id` int NOT NULL AUTO_INCREMENT,
  `job_id` int DEFAULT NULL,
  `personality_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `job_id` (`job_id`),
  KEY `personality_id` (`personality_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `jobs_personalities`
--

INSERT INTO `jobs_personalities` (`id`, `job_id`, `personality_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `jobs_practical_skills`
--

DROP TABLE IF EXISTS `jobs_practical_skills`;
CREATE TABLE IF NOT EXISTS `jobs_practical_skills` (
  `id` int NOT NULL AUTO_INCREMENT,
  `job_id` int DEFAULT NULL,
  `practical_skill_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `job_id` (`job_id`),
  KEY `practical_skill_id` (`practical_skill_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `jobs_practical_skills`
--

INSERT INTO `jobs_practical_skills` (`id`, `job_id`, `practical_skill_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `jobs_rec_qualifications`
--

DROP TABLE IF EXISTS `jobs_rec_qualifications`;
CREATE TABLE IF NOT EXISTS `jobs_rec_qualifications` (
  `id` int NOT NULL AUTO_INCREMENT,
  `job_id` int DEFAULT NULL,
  `affiliate_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `job_id` (`job_id`),
  KEY `affiliate_id` (`affiliate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `jobs_rec_qualifications`
--

INSERT INTO `jobs_rec_qualifications` (`id`, `job_id`, `affiliate_id`) VALUES
(1, 1, 5),
(2, 2, 6);

-- --------------------------------------------------------

--
-- Table structure for table `jobs_req_qualifications`
--

DROP TABLE IF EXISTS `jobs_req_qualifications`;
CREATE TABLE IF NOT EXISTS `jobs_req_qualifications` (
  `id` int NOT NULL AUTO_INCREMENT,
  `job_id` int DEFAULT NULL,
  `affiliate_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `job_id` (`job_id`),
  KEY `affiliate_id` (`affiliate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `jobs_req_qualifications`
--

INSERT INTO `jobs_req_qualifications` (`id`, `job_id`, `affiliate_id`) VALUES
(1, 1, 6),
(2, 2, 5);

-- --------------------------------------------------------

--
-- Table structure for table `jobs_tools`
--

DROP TABLE IF EXISTS `jobs_tools`;
CREATE TABLE IF NOT EXISTS `jobs_tools` (
  `id` int NOT NULL AUTO_INCREMENT,
  `job_id` int DEFAULT NULL,
  `affiliate_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `job_id` (`job_id`),
  KEY `affiliate_id` (`affiliate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `jobs_tools`
--

INSERT INTO `jobs_tools` (`id`, `job_id`, `affiliate_id`) VALUES
(1, 1, 1),
(2, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `job_categories`
--

DROP TABLE IF EXISTS `job_categories`;
CREATE TABLE IF NOT EXISTS `job_categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `sort_order` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `deleted` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `job_categories`
--

INSERT INTO `job_categories` (`id`, `name`, `sort_order`, `created_by`, `created`, `modified`, `deleted`) VALUES
(1, 'Customer Service', 1, 1, '2025-02-06 17:18:46', '2025-02-06 17:18:46', NULL),
(2, 'Engineering', 2, 1, '2025-02-06 17:18:46', '2025-02-06 17:18:46', NULL),
(3, 'Healthcare', 3, 1, '2025-02-06 17:18:46', '2025-02-06 17:18:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `job_types`
--

DROP TABLE IF EXISTS `job_types`;
CREATE TABLE IF NOT EXISTS `job_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `job_category_id` int DEFAULT NULL,
  `sort_order` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `deleted` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `job_types`
--

INSERT INTO `job_types` (`id`, `name`, `job_category_id`, `sort_order`, `created_by`, `created`, `modified`, `deleted`) VALUES
(1, 'キャビンアテンダント', 1, 1, 1, '2025-02-06 17:18:46', '2025-02-06 17:18:46', NULL),
(2, 'Software Engineer', 2, 2, 1, '2025-02-06 17:18:46', '2025-02-06 17:18:46', NULL),
(3, 'Nurse', 3, 3, 1, '2025-02-06 17:18:46', '2025-02-06 17:18:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personalities`
--

DROP TABLE IF EXISTS `personalities`;
CREATE TABLE IF NOT EXISTS `personalities` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `deleted` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `personalities`
--

INSERT INTO `personalities` (`id`, `name`, `deleted`) VALUES
(1, 'Friendly', NULL),
(2, 'Detail-Oriented', NULL),
(3, 'Patient', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `practical_skills`
--

DROP TABLE IF EXISTS `practical_skills`;
CREATE TABLE IF NOT EXISTS `practical_skills` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `deleted` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `practical_skills`
--

INSERT INTO `practical_skills` (`id`, `name`, `deleted`) VALUES
(1, 'Communication', NULL),
(2, 'Problem Solving', NULL),
(3, 'Teamwork', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
