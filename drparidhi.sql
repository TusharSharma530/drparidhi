-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2026 at 01:30 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `drparidhi`
--

-- --------------------------------------------------------

--
-- Table structure for table `achievements`
--

CREATE TABLE `achievements` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `youtube_url` varchar(255) DEFAULT NULL,
  `order` int(11) DEFAULT 0,
  `status` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` int(11) NOT NULL,
  `gal_id` int(11) NOT NULL,
  `file` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `dump_pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `dump_pass`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `announce`
--

CREATE TABLE `announce` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `order` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `applyjob`
--

CREATE TABLE `applyjob` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contactno` varchar(255) NOT NULL,
  `applyfor` int(11) NOT NULL,
  `degree` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `associations`
--

CREATE TABLE `associations` (
  `id` int(11) NOT NULL,
  `file` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `awards`
--

CREATE TABLE `awards` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `order` int(11) DEFAULT 0,
  `status` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blogarticles`
--

CREATE TABLE `blogarticles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `topic` varchar(255) NOT NULL,
  `article` text NOT NULL,
  `blogid` int(11) NOT NULL,
  `blogtitle` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `desc` longtext NOT NULL,
  `sdesc` text NOT NULL,
  `file` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `order` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `metatitle` varchar(255) NOT NULL,
  `metakeywords` varchar(255) NOT NULL,
  `metadesc` text NOT NULL,
  `card_heading` varchar(255) DEFAULT '',
  `card_data` longtext DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `type`, `title`, `url`, `desc`, `sdesc`, `file`, `author`, `order`, `date`, `status`, `metatitle`, `metakeywords`, `metadesc`, `card_heading`, `card_data`) VALUES
(30, 0, 'PCOS: Symptoms and Treatment Options', 'pcos-symptoms-and-treatment-options', '', '<p>Understand common PCOS symptoms,diagnosis, and how individualized treatment can help manage this condition.</p>', 'branch/assets/blogs/img1793353864.png', 'By Dr. Paridhi Chaudhary', '1', '2026-05-19', 1, '', '', '', '', ''),
(31, 0, 'Understanding Irregular Periods', 'understanding-irregular-periods', '', '<p>Discover common reasons for irregular menstrual cycles and when to consult a gynecologist.</p>', 'branch/assets/blogs/img1793353748.png', 'By Dr. Paridhi Chaudhary', '2', '2026-06-19', 1, '', '', '', '', ''),
(32, 0, 'Tips for a Healthy Pregnancy', 'tips-for-a-healthy-pregnancy', '', '<p>Learn about prenatal checkups, healthy habits,nutrition, and important precautions during pregnancy.</p>', 'branch/assets/blogs/img1793353640.webp', 'By Dr. Paridhi Chaudhary', '3', '2026-07-10', 1, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `board`
--

CREATE TABLE `board` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `title` text NOT NULL,
  `url` text NOT NULL,
  `short_desc` longtext NOT NULL,
  `long_desc` longtext NOT NULL,
  `file` varchar(255) NOT NULL,
  `order` int(11) NOT NULL,
  `status` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `c_name` varchar(255) NOT NULL,
  `c_type` varchar(255) NOT NULL,
  `c_url` varchar(255) NOT NULL,
  `c_desc` text NOT NULL,
  `sdesc` text NOT NULL,
  `featured_img` varchar(255) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keywords` varchar(255) NOT NULL,
  `meta_desc` text NOT NULL,
  `card_heading` text DEFAULT NULL,
  `card_data` longtext DEFAULT NULL,
  `section_heading` text DEFAULT NULL,
  `iframe` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `c_name`, `c_type`, `c_url`, `c_desc`, `sdesc`, `featured_img`, `meta_title`, `meta_keywords`, `meta_desc`, `card_heading`, `card_data`, `section_heading`, `iframe`, `status`, `order`) VALUES
(99, 'Home', '1', 'home', '', '', 'branch/assets/category/img1793338167.webp', '', '', '', NULL, NULL, NULL, '', 1, 1),
(100, 'About Us', '1', 'about-us', '', '', '', '', '', '', NULL, NULL, NULL, '', 1, 2),
(101, 'Meet Our Gynecologist in Meerut', '100', 'meet-our-gynecologist-in-meerut', '<p>I believe Obstetrics &amp; Gynecology is an important and sensitive field of medicine that requires dedication, empathy, and compassion. Every woman deserves to be heard, understood, and treated with respect. My goal is to provide a comfortable environment where patients can openly discuss their concerns and receive personalized care according to their needs.</p>\n<p>My approach focuses on supporting women through every stage of life, from routine gynecological care and pregnancy to reproductive health and menopause. I strive to provide clear guidance, compassionate support, and quality medical care while helping every patient make informed decisions about her health and well-being.</p>', '<p>I believe Obstetrics &amp; Gynecology is an important and sensitive field of medicine that requires dedication, empathy, and compassion. Every woman deserves to be heard, understood, and treated with respect. My goal is to provide a comfortable environment where patients can openly discuss their concerns and receive personalized care according to their needs.</p>\n<p>My approach focuses on supporting women through every stage of life, from routine gynecological care and pregnancy to reproductive health and menopause. I strive to provide clear guidance, compassionate support, and quality medical care while helping every patient make informed decisions about her health and well-being.</p>', 'branch/assets/category/img1793339996.webp', '', '', '', NULL, NULL, NULL, '', 1, 1),
(102, 'Specialities', '1', 'specialities', '', '<h2>Conditions Treated By Dr. Paridhi Chaudhary -Gynecologist In Meerut</h2>', '', '', '', '', NULL, NULL, NULL, '', 1, 3),
(103, 'Blogs', '1', 'blogs', '', '', '', '', '', '', NULL, NULL, NULL, '', 1, 4),
(104, 'Gallery', '1', 'gallery', '', '', '', '', '', '', NULL, NULL, NULL, '', 1, 5),
(105, 'Commitment To Every Patient\'s Health & Well-Being', '99', 'commitment-to-every-patient-s-health-well-being', '', '<p>I am committed to providing compassionate, ethical, and evidence-based gynecological care to every woman who walks into my clinic. From routine consultations to complex treatments, every patient receives complete attention, clear guidance, and honest advice at every step.</p>\r\n<p>.My priority is to build a comfortable and trusting relationship where women can openly discuss their health concerns without hesitation and receive personalized care that suits their individual needs and stage of life.</p>', 'branch/assets/category/img1793345645.png', '', '', '', NULL, NULL, NULL, '', 1, 1),
(107, 'What Are The Symptoms Of Gynaecological Diseases?', '99', 'what-are-the-symptoms-of-gynaecological-diseases', '<p>Missed menstrual period</p>\n<p>Irregular periods</p>\n<p>Pain or discomfort during intercourse.</p>\n<p>Vaginal Itching&amp;lt</p>\n<p>Heavy menstrual bleeding</p>\n<p>Pain or pressure in your pelvis that differs from menstrual cramps</p>\n<p>Excessive bloating</p>\n<p>Breast changes</p>', '<p>Gynecological conditions can often go unnoticed in the early stages. Recognizing the warning signs early is key to timely diagnosis and effective treatment. If you&rsquo;re experiencing any of the following symptoms, it may indicate an underlying gynecological issue:</p>', '', '', '', '', NULL, NULL, NULL, '', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `childcategory`
--

CREATE TABLE `childcategory` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `subcat_id` int(11) NOT NULL,
  `childcat` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `cdesc` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keywords` varchar(255) NOT NULL,
  `meta_desc` text NOT NULL,
  `order` int(11) NOT NULL,
  `file` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `complain`
--

CREATE TABLE `complain` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `emailid` varchar(255) NOT NULL,
  `enrollment` varchar(255) NOT NULL,
  `course` varchar(255) NOT NULL,
  `session` int(11) NOT NULL,
  `message` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `enquiry_type` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `counter`
--

CREATE TABLE `counter` (
  `id` int(11) NOT NULL,
  `count` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `creativity`
--

CREATE TABLE `creativity` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `redirect_url` text DEFAULT NULL,
  `order` int(11) DEFAULT 0,
  `status` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `curriculum`
--

CREATE TABLE `curriculum` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `desc` longtext NOT NULL,
  `sdesc` text NOT NULL,
  `file` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `order` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `metatitle` varchar(255) NOT NULL,
  `metakeywords` varchar(255) NOT NULL,
  `metadesc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `curriculumimg`
--

CREATE TABLE `curriculumimg` (
  `id` int(11) NOT NULL,
  `cum_id` int(11) NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

CREATE TABLE `enquiry` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `father_name` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `file` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `events_img`
--

CREATE TABLE `events_img` (
  `id` int(11) NOT NULL,
  `file` varchar(255) NOT NULL,
  `eventid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `founders`
--

CREATE TABLE `founders` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `order` int(11) DEFAULT 0,
  `status` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `title` text NOT NULL,
  `url` text NOT NULL,
  `desc` longtext NOT NULL,
  `file` varchar(255) NOT NULL,
  `order` varchar(255) NOT NULL,
  `status` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gallery_imgs`
--

CREATE TABLE `gallery_imgs` (
  `id` int(11) NOT NULL,
  `gal_id` int(11) NOT NULL,
  `file` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT 0,
  `category` varchar(50) NOT NULL DEFAULT '',
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gallery_imgs`
--

INSERT INTO `gallery_imgs` (`id`, `gal_id`, `file`, `title`, `ordering`, `category`, `status`) VALUES
(267, 0, 'branch/assets/gallery_img/17933446990.jpeg', '', 1, '', 1),
(268, 0, 'branch/assets/gallery_img/17933447140.jpeg', '', 2, '', 1),
(269, 0, 'branch/assets/gallery_img/17933447260.jpeg', '', 3, '', 1),
(270, 0, 'branch/assets/gallery_img/17933447450.jpeg', '', 4, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `halls`
--

CREATE TABLE `halls` (
  `id` int(11) NOT NULL,
  `file` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `subtitle` text DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `halls`
--

INSERT INTO `halls` (`id`, `file`, `title`, `subtitle`, `ordering`, `status`, `description`) VALUES
(1, 'branch/assets/halls_img/17908393350.png', 'Diamond Hall', '50 - 100 GUESTS', 1, 1, 'at Doab Vilas is a grand ballroom designed for magnificent celebrations. With stunning interiors, state-of-the-art lighting, and spacious seating, it is the perfect venue for weddings, receptions, and grand events. Our dedicated team ensures every detail is taken care of to make your special day truly unforgettable'),
(2, 'branch/assets/halls_img/17908396680.jfif', 'AQUARIUS POOL', '100 - 250 GUESTS', 2, 1, 'at Doab Vilas is a stunning poolside venue perfect for cocktail events, pool parties, and intimate celebrations. Surrounded by lush greenery and elegant ambiance, it offers a refreshing escape for your special occasions. Enjoy world-class hospitality by the poolside with your loved ones'),
(3, 'branch/assets/halls_img/17908402550.jpeg', 'Sapphire Hall', '100-350 guests', 3, 1, 'at Doab Vilas is an intimate venue designed for exclusive gatherings. With elegant decor, modern amenities, and a cozy atmosphere, it is perfect for corporate meetings, private parties, and special celebrations. Our team ensures a seamless experience tailored to your needs'),
(4, 'branch/assets/halls_img/17908403790.webp', 'Crystall Ball Room', '300-600 GUESTS', 4, 1, 'at Doab Vilas is a magnificent venue designed for grand celebrations. With dazzling crystal chandeliers, elegant interiors, and a spacious layout, it is the perfect setting for lavish weddings, receptions, and corporate galas. Experience unmatched luxury and world-class hospitality in this stunning ballroom.'),
(5, 'branch/assets/halls_img/17908404560.jpeg', 'Jashan Lawn', '500-1500+ GUESTS', 0, 1, 'at Doab Vilas is elegantly designed to welcome you with warmth and luxury. As you step in, you are greeted by stunning interiors, plush seating, and a sophisticated ambiance that sets the tone for your stay. Our lobby offers a perfect blend of comfort and style, making it an ideal space to relax and unwind.');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `url` text NOT NULL,
  `long_desc` longtext NOT NULL,
  `order` int(11) NOT NULL,
  `status` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(11) NOT NULL,
  `gal_id` int(11) NOT NULL,
  `file` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `month` int(11) NOT NULL,
  `year` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media1`
--

CREATE TABLE `media1` (
  `id` int(11) NOT NULL,
  `gal_id` int(11) NOT NULL,
  `file` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `month` int(11) NOT NULL,
  `year` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `news_events`
--

CREATE TABLE `news_events` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `desc` longtext NOT NULL,
  `sdesc` text NOT NULL,
  `file` varchar(255) NOT NULL,
  `order` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `order` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `years` varchar(255) NOT NULL,
  `faculties` varchar(255) NOT NULL,
  `students` varchar(255) NOT NULL,
  `alumni` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quickaccess`
--

CREATE TABLE `quickaccess` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `order` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contactno` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `graduation` varchar(255) NOT NULL,
  `passingyear` varchar(255) NOT NULL,
  `entranceexam` varchar(255) NOT NULL,
  `aadharno` varchar(255) NOT NULL,
  `examentrance` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `courseapply` int(11) NOT NULL,
  `certificatecourse` varchar(255) NOT NULL,
  `per10` varchar(255) NOT NULL,
  `per12` int(11) NOT NULL,
  `perug` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `file` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `desc` text DEFAULT NULL,
  `sdesc` text DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `web_name` varchar(255) DEFAULT NULL,
  `email_id` varchar(255) DEFAULT NULL,
  `alternate_email_id` varchar(255) DEFAULT NULL,
  `contact_no` varchar(255) DEFAULT NULL,
  `alternate_no` varchar(255) DEFAULT NULL,
  `whatsapp_no` varchar(255) DEFAULT NULL,
  `reception_time` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `youtubelink` varchar(255) DEFAULT NULL,
  `map_iframe` longtext DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_desc` text DEFAULT NULL,
  `smart_classroom_desc` text DEFAULT NULL,
  `smart_classroom_text` varchar(255) DEFAULT NULL,
  `brochure_file` varchar(500) DEFAULT NULL,
  `footerdesc` text DEFAULT NULL,
  `googletag` text DEFAULT NULL,
  `headercenterline` varchar(255) DEFAULT NULL,
  `no_of_experience` varchar(255) DEFAULT NULL,
  `surgeries` varchar(255) DEFAULT NULL,
  `no_of_patients` varchar(255) DEFAULT NULL,
  `satisfied_patients` varchar(255) DEFAULT NULL,
  `working_days` varchar(255) DEFAULT NULL,
  `closed_days` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `web_name`, `email_id`, `alternate_email_id`, `contact_no`, `alternate_no`, `whatsapp_no`, `reception_time`, `address`, `youtubelink`, `map_iframe`, `facebook`, `youtube`, `instagram`, `twitter`, `linkedin`, `logo`, `meta_title`, `meta_keywords`, `meta_desc`, `smart_classroom_desc`, `smart_classroom_text`, `brochure_file`, `footerdesc`, `googletag`, `headercenterline`, `no_of_experience`, `surgeries`, `no_of_patients`, `satisfied_patients`, `working_days`, `closed_days`) VALUES
(1, 'Dr.Paridhi Chaudhary', 'drparidhichaudhary@gmail.com', '', '+91-9286197331', '01214567142', '+91 7906246489', '11:00 AM – 8:00 PM', 'Shop No,6,7,RPG Galleria GP Pocket,Ganga Nagar, Meerut,Uttar Pradesh-250001', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3490.7502196096875!2d77.7371805!3d28.965132200000006!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390c65f6c7b0f123%3A0x78a5f6619a39ab3a!2sBrain%20And%20Spine%20Clinic!5e0!3m2!1sen!2sin!4v1791618923017!5m2!1sen!2sin', 'https://www.facebook.com/Dr.Paridhi.chaudhary', 'https://www.youtube.com/@paridhichaudharyshaurya6955', 'https://www.instagram.com/drparidhigyne/', '', '', 'branch/assets/logo/logoImg1793338057.png', '', '', '', '', '', 'branch/images/brochure_1788931594.pdf', 'Dr. Paridhi Chaudhary believes Obstetrics & Gynecology is an important and sensitive field of medicine that requires dedication, empathy, and compassion. Every woman deserves to be heard, understood, and treated with respect.', '', ' Obstetrician & Gynecologist Laparascopic Surgeon and Infertility Specialist', '', '', '', '', 'Monday - Saturday', 'Sunday : Closed');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscribe`
--

CREATE TABLE `subscribe` (
  `id` int(11) NOT NULL,
  `email` varchar(150) NOT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subscribe`
--

INSERT INTO `subscribe` (`id`, `email`, `ip`, `created_at`) VALUES
(1, 'test@test.com', '::1', '2026-10-14 20:34:33');

-- --------------------------------------------------------

--
-- Table structure for table `sub_cat`
--

CREATE TABLE `sub_cat` (
  `id` int(11) NOT NULL,
  `cat_id` varchar(255) NOT NULL,
  `sc_name` varchar(255) NOT NULL,
  `sc_url` varchar(255) NOT NULL,
  `sc_desc` longtext NOT NULL,
  `sdesc` text NOT NULL,
  `features` text NOT NULL,
  `featured_img` varchar(255) NOT NULL,
  `featured_img1` varchar(255) NOT NULL,
  `icon_img` varchar(255) NOT NULL DEFAULT '',
  `meta_title` varchar(255) NOT NULL,
  `meta_keywords` varchar(255) NOT NULL,
  `meta_desc` text NOT NULL,
  `status` int(11) NOT NULL,
  `order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sub_cat`
--

INSERT INTO `sub_cat` (`id`, `cat_id`, `sc_name`, `sc_url`, `sc_desc`, `sdesc`, `features`, `featured_img`, `featured_img1`, `icon_img`, `meta_title`, `meta_keywords`, `meta_desc`, `status`, `order`) VALUES
(86, '102', 'Antenatal Screening, Pregnancy Treatment Including High Risk Pregnancy', 'antenatal-screening-pregnancy-treatment-including-high-risk-pregnancy', '', 'Antenatal screening detects complications early, while high-risk pregnancy care ensures maternal and fetal safety.', '', 'branch/assets/subcat/img1793341866.webp', '', '', '', '', '', 1, 1),
(87, '102', 'Delivery-Normal and C-Section', 'delivery-normal-and-c-section', '', 'Provides safe normal and C-section deliveries with proper medical care for mother and baby.', '', 'branch/assets/subcat/img1793342457.webp', '', '', '', '', '', 1, 2),
(88, '102', 'Infertility Problem', 'infertility-problem', '', 'Provides diagnosis and treatment to help couples overcome infertility and achieve pregnancy.', '', 'branch/assets/subcat/img1793342567.webp', '', '', '', '', '', 1, 3),
(89, '102', 'Treatment of itching,pain and other Infection of female genital tract,PCOS Treatment', 'treatment-of-itching-pain-and-other-infection-of-female-genital-tract-pcos-treatment', '', 'Provides effective treatment for female genital infections, itching, pain, and PCOS management.', '', 'branch/assets/subcat/img1793342864.webp', '', '', '', '', '', 1, 4),
(90, '102', 'Period Related Problem', 'period-related-problem', '', 'Provides diagnosis and treatment for irregular, painful, and heavy periods.', '', 'branch/assets/subcat/img1793342954.webp', '', '', '', '', '', 1, 5),
(91, '102', 'Adolescent girls health related problem', 'adolescent-girls-health-related-problem', '', 'Provides care and guidance for adolescent girls’ health, menstrual issues, and hormonal changes.', '', 'branch/assets/subcat/img1793343070.webp', '', '', '', '', '', 1, 6),
(92, '102', 'Cancer Screening and Prevention', 'cancer-screening-and-prevention', '', 'Provides early cancer screening, detection, and preventive care for better health.', '', 'branch/assets/subcat/img1793343256.webp', '', '', '', '', '', 1, 7),
(93, '102', 'Laparascopic Hysterectomy and Open Surgical Hysterectomy', 'laparascopic-hysterectomy-and-open-surgical-hysterectomy', '', 'Provides laparoscopic and open surgical hysterectomy with expert care and safe treatment.', '', 'branch/assets/subcat/img1793343377.webp', '', '', '', '', '', 1, 8);

-- --------------------------------------------------------

--
-- Table structure for table `syllabus`
--

CREATE TABLE `syllabus` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `courseid` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `title` text NOT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `url` text NOT NULL,
  `desc` longtext NOT NULL,
  `file` varchar(255) NOT NULL,
  `order` varchar(255) NOT NULL,
  `status` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `category`, `title`, `subtitle`, `url`, `desc`, `file`, `order`, `status`) VALUES
(7, '', 'Rajesh Kumar', '1', 'rajesh-kumar', '<p>Dr. Paridhi Chaudhary is very kind and supportive.She listens patiently and explains medical concerns clearly, making the consultation comfortable.</p>', '', '1', 1),
(8, '', 'Rajeev Shukla', '', 'rajeev-shukla', '<p>The doctor takes time to understand concerns and provides clear guidance. Her respectful approach makes it easier to discuss women\'s health issues</p>', '', '2', 1),
(9, '', 'Amit Verma', '', 'amit-verma', '<p>The consultation was informative, and the doctor explained the available treatment options patiently. I appreciated the attention given to my concerns.</p>', '', '3', 1);

-- --------------------------------------------------------

--
-- Table structure for table `toppers`
--

CREATE TABLE `toppers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `class` int(11) NOT NULL,
  `percentage` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `order` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vacancies`
--

CREATE TABLE `vacancies` (
  `id` int(11) NOT NULL,
  `school_name` varchar(255) NOT NULL,
  `school_add` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `gender` int(255) NOT NULL,
  `contactno` varchar(255) NOT NULL,
  `emailid` varchar(255) NOT NULL,
  `board10` varchar(255) NOT NULL,
  `marks10` varchar(255) NOT NULL,
  `percentage10` varchar(255) NOT NULL,
  `board12` varchar(255) NOT NULL,
  `marks12` varchar(255) NOT NULL,
  `percentage12` varchar(255) NOT NULL,
  `board_g` varchar(255) NOT NULL,
  `marks_g` varchar(255) NOT NULL,
  `percentage_g` varchar(255) NOT NULL,
  `board_pg` varchar(255) NOT NULL,
  `marks_pg` varchar(255) NOT NULL,
  `percentage_pg` varchar(255) NOT NULL,
  `graduation` varchar(255) NOT NULL,
  `certification` varchar(255) NOT NULL,
  `skills_training` varchar(255) NOT NULL,
  `total_exp` varchar(255) NOT NULL,
  `relevant_exp` varchar(255) NOT NULL,
  `resume` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `class10` varchar(255) NOT NULL,
  `class12` varchar(255) NOT NULL,
  `class_graduation` varchar(255) NOT NULL,
  `class_postgraduation` varchar(255) NOT NULL,
  `accept_declaration` int(11) NOT NULL,
  `accept_understanding` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_banner`
--

CREATE TABLE `web_banner` (
  `id` int(11) NOT NULL,
  `wb_img` varchar(255) NOT NULL,
  `wb_heading` varchar(255) NOT NULL DEFAULT '',
  `wb_subheading` text NOT NULL DEFAULT '',
  `featuredimg` varchar(255) NOT NULL DEFAULT '',
  `wb_order` int(11) NOT NULL,
  `category_id` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `youtube`
--

CREATE TABLE `youtube` (
  `id` int(11) NOT NULL,
  `youtubeurl` varchar(255) NOT NULL,
  `order` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `achievements`
--
ALTER TABLE `achievements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `announce`
--
ALTER TABLE `announce`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `applyjob`
--
ALTER TABLE `applyjob`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `associations`
--
ALTER TABLE `associations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `awards`
--
ALTER TABLE `awards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogarticles`
--
ALTER TABLE `blogarticles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `board`
--
ALTER TABLE `board`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `childcategory`
--
ALTER TABLE `childcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complain`
--
ALTER TABLE `complain`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counter`
--
ALTER TABLE `counter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `creativity`
--
ALTER TABLE `creativity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `curriculum`
--
ALTER TABLE `curriculum`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `curriculumimg`
--
ALTER TABLE `curriculumimg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enquiry`
--
ALTER TABLE `enquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events_img`
--
ALTER TABLE `events_img`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `founders`
--
ALTER TABLE `founders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery_imgs`
--
ALTER TABLE `gallery_imgs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `halls`
--
ALTER TABLE `halls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media1`
--
ALTER TABLE `media1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_events`
--
ALTER TABLE `news_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quickaccess`
--
ALTER TABLE `quickaccess`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_url` (`url`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribe`
--
ALTER TABLE `subscribe`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_email` (`email`);

--
-- Indexes for table `sub_cat`
--
ALTER TABLE `sub_cat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `syllabus`
--
ALTER TABLE `syllabus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `toppers`
--
ALTER TABLE `toppers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vacancies`
--
ALTER TABLE `vacancies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_banner`
--
ALTER TABLE `web_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `youtube`
--
ALTER TABLE `youtube`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `achievements`
--
ALTER TABLE `achievements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=282;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `announce`
--
ALTER TABLE `announce`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `applyjob`
--
ALTER TABLE `applyjob`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=279;

--
-- AUTO_INCREMENT for table `associations`
--
ALTER TABLE `associations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `awards`
--
ALTER TABLE `awards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `blogarticles`
--
ALTER TABLE `blogarticles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `board`
--
ALTER TABLE `board`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `childcategory`
--
ALTER TABLE `childcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `complain`
--
ALTER TABLE `complain`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `counter`
--
ALTER TABLE `counter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `creativity`
--
ALTER TABLE `creativity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `curriculum`
--
ALTER TABLE `curriculum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `curriculumimg`
--
ALTER TABLE `curriculumimg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `enquiry`
--
ALTER TABLE `enquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `events_img`
--
ALTER TABLE `events_img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `founders`
--
ALTER TABLE `founders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gallery_imgs`
--
ALTER TABLE `gallery_imgs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=271;

--
-- AUTO_INCREMENT for table `halls`
--
ALTER TABLE `halls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=790;

--
-- AUTO_INCREMENT for table `media1`
--
ALTER TABLE `media1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `news_events`
--
ALTER TABLE `news_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `quickaccess`
--
ALTER TABLE `quickaccess`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscribe`
--
ALTER TABLE `subscribe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sub_cat`
--
ALTER TABLE `sub_cat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `syllabus`
--
ALTER TABLE `syllabus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `toppers`
--
ALTER TABLE `toppers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vacancies`
--
ALTER TABLE `vacancies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `web_banner`
--
ALTER TABLE `web_banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `youtube`
--
ALTER TABLE `youtube`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
