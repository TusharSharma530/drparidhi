-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 31, 2026 at 01:11 PM
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
(30, 0, 'PCOS: Symptoms and Treatment Options', 'pcos-symptoms-and-treatment-options', '<h1>PCOS/PCOD</h1>\n<h1>PCOS: Symptoms and Treatment Options</h1>\n<p>Polycystic Ovary Syndrome (PCOS) is a common hormonal condition that affects women during their reproductive years. It can influence menstrual cycles, hormone levels, skin health, weight, and fertility. Understanding the symptoms and available treatment options can help women manage PCOS effectively. Dr. Paridhi provides personalized gynecological guidance to help women understand and manage PCOS.</p>\n<h2>1. What Is PCOS?</h2>\n<p>PCOS stands for Polycystic Ovary Syndrome. It is a hormonal and metabolic condition that can affect how the ovaries function. Women with PCOS may experience irregular ovulation, increased androgen levels, and multiple small follicles in the ovaries. Not every woman with PCOS has ovarian cysts, and the condition can vary from person to person.</p>\n<h2>2. Common Symptoms of PCOS</h2>\n<p>PCOS symptoms can differ among women. Some common symptoms include irregular or missed periods, excessive facial or body hair growth, acne, oily skin, weight gain, thinning scalp hair, and difficulty getting pregnant due to irregular ovulation. Some women may experience only a few symptoms.</p>\n<h2>3. Causes and Risk Factors of PCOS</h2>\n<p>The exact cause of PCOS is not fully understood. However, insulin resistance, hormonal imbalance, genetic factors, and family history may contribute to its development. Insulin resistance can cause the body to produce more insulin, which may increase androgen levels and affect ovulation.</p>\n<h2>4. PCOS and Irregular Periods</h2>\n<p>PCOS can interfere with regular ovulation, resulting in unpredictable menstrual cycles. Some women may experience delayed periods, missed periods, or fewer menstrual cycles throughout the year. If periods are consistently irregular, consulting a gynecologist can help identify the underlying cause and reduce the risk of complications.</p>\n<h2>5. How Does PCOS Affect Fertility?</h2>\n<p>PCOS may affect fertility because irregular ovulation can make it difficult to predict fertile days and conceive naturally. However, many women with PCOS can become pregnant with appropriate medical support. Treatment options are available to help improve ovulation and support pregnancy planning.</p>\n<h2>6. How Is PCOS Diagnosed?</h2>\n<p>A gynecologist may evaluate your menstrual history, symptoms, medical background, and physical health. Diagnosis may involve blood tests to assess hormone levels, glucose testing, and a pelvic ultrasound when appropriate. Other conditions that can cause similar symptoms may also need to be ruled out.</p>\n<h2>7. Treatment Options for PCOS</h2>\n<p>PCOS treatment depends on your symptoms, health condition, and pregnancy plans. A gynecologist may recommend lifestyle changes, prescribed hormonal medications to regulate periods, treatments for acne or excessive hair growth, or medicines to improve insulin resistance when appropriate. Women planning pregnancy may be offered fertility treatments to support ovulation.</p>\n<h2>8. Lifestyle Changes to Manage PCOS</h2>\n<p>Healthy lifestyle habits play an important role in managing PCOS. Eating a balanced diet, including fiber-rich foods and adequate protein, staying physically active, getting sufficient sleep, and managing stress may support metabolic and hormonal health. Even modest weight changes, when medically appropriate, may improve symptoms for some women.</p>\n<h2>9. Possible Health Complications of PCOS</h2>\n<p>If PCOS is not properly managed, it may increase the risk of certain health concerns, including type 2 diabetes, high cholesterol, high blood pressure, sleep apnea, and endometrial hyperplasia. Women who experience prolonged gaps between periods should seek medical advice because long periods without menstruation may increase the risk of changes in the uterine lining.</p>\n<h2>10. When Should You Consult a Gynecologist?</h2>\n<p>Consult a gynecologist if you experience consistently irregular periods, missed periods, excessive facial hair growth, persistent acne, unexplained weight changes, or difficulty conceiving. Early evaluation can help identify PCOS and create a suitable treatment and long-term management plan.</p>\n<h2>11. Importance of Regular Follow-Ups</h2>\n<p>PCOS is a long-term condition that may require ongoing care and monitoring. Regular gynecological checkups can help monitor menstrual health, metabolic risk factors, and treatment progress. Dr. Paridhi can guide women in understanding their symptoms and making informed decisions about their reproductive health.</p>\n<h2>Final Thoughts</h2>\n<p>PCOS is a manageable hormonal condition, and early diagnosis can make a meaningful difference in long-term health. With appropriate medical guidance, healthy lifestyle habits, and personalized treatment, women can manage symptoms and maintain better reproductive and metabolic health. Consult Dr. Paridhi for professional guidance and individualized PCOS care.</p>\n<h2>Disclaimer</h2>\n<p>This article is for educational purposes only and does not replace personalized medical advice, diagnosis, or treatment. Consult a qualified gynecologist for your individual health concerns.</p>', '<p>Understand common PCOS symptoms,diagnosis, and how individualized treatment can help manage this condition.</p>', 'branch/assets/blogs/img1793353864.png', 'By Dr. Paridhi Chaudhary', '1', '2026-05-19', 1, '', '', '', '', ''),
(31, 0, 'Understanding Irregular Periods', 'understanding-irregular-periods', '<h1>women health</h1>\n<h1>Understanding Irregular Periods</h1>\n<p>Irregular periods are a common concern among women and can occur due to hormonal changes, lifestyle factors, stress, or certain medical conditions. Understanding your menstrual cycle and identifying changes in your periods can help you take better care of your reproductive health. Dr. Paridhi helps women understand menstrual health concerns and provides personalized gynecological guidance.</p>\n<h2>1. What Are Irregular Periods?</h2>\n<p>Irregular periods occur when your menstrual cycle does not follow a consistent pattern. Your periods may come earlier or later than expected, last longer or shorter than usual, or involve changes in menstrual flow. Occasional variations can happen, but frequent changes should be discussed with a gynecologist.</p>\n<h2>2. Common Causes of Irregular Periods</h2>\n<p>Several factors can affect your menstrual cycle, including hormonal imbalances, stress, sudden weight changes, excessive exercise, thyroid disorders, and conditions such as Polycystic Ovary Syndrome (PCOS). Identifying the underlying cause is important for appropriate treatment.</p>\n<h2>3. Symptoms of Irregular Periods</h2>\n<p>Some common signs of irregular periods include missed periods, unpredictable menstrual dates, unusually heavy or light bleeding, periods lasting longer than usual, and changes in the time between menstrual cycles. Severe menstrual pain or unusual bleeding should also be evaluated by a healthcare professional.</p>\n<h2>4. Irregular Periods and Hormonal Imbalance</h2>\n<p>Hormones play an important role in regulating the menstrual cycle. Changes in estrogen, progesterone, thyroid hormones, or androgen levels may affect the timing and regularity of periods. A gynecologist can recommend appropriate tests to understand possible hormonal causes.</p>\n<h2>5. Connection Between PCOS and Irregular Periods</h2>\n<p>Polycystic Ovary Syndrome (PCOS) is one of the common causes of irregular periods. It may affect ovulation and cause infrequent or missed periods. Other symptoms can include acne, excessive facial hair, weight changes, and difficulty conceiving. Early diagnosis and proper management can help reduce potential complications.</p>\n<h2>6. How Are Irregular Periods Diagnosed?</h2>\n<p>A gynecologist may review your menstrual history, symptoms, medical background, and lifestyle habits. Depending on your condition, investigations may include blood tests, thyroid function tests, hormone assessments, or a pelvic ultrasound to identify the underlying cause.</p>\n<h2>7. Treatment Options for Irregular Periods</h2>\n<p>Treatment depends on the cause of irregular periods and your individual health needs. Your gynecologist may recommend lifestyle modifications, treatment for thyroid or hormonal conditions, or prescribed medications to help regulate menstrual cycles. Avoid taking hormonal medicines without medical advice.</p>\n<h2>8. Lifestyle Tips to Support Menstrual Health</h2>\n<p>Maintaining a balanced diet, staying physically active, managing stress, getting adequate sleep, and maintaining a healthy weight may support hormonal health. Tracking your menstrual dates and symptoms can also help your gynecologist understand your cycle better.</p>\n<h2>9. When Should You Consult a Gynecologist?</h2>\n<p>Consult a gynecologist if your periods frequently become irregular, you miss periods unexpectedly, experience very heavy bleeding, have severe pelvic pain, or notice bleeding between periods. If you have missed a period and pregnancy is possible, consider taking a pregnancy test. Seek urgent medical attention for very heavy bleeding accompanied by dizziness, fainting, or severe pain.</p>\n<h2>10. Importance of Regular Gynecological Checkups</h2>\n<p>Regular gynecological consultations help identify menstrual health concerns early and provide appropriate guidance. Dr. Paridhi focuses on understanding individual symptoms, identifying possible causes, and recommending suitable treatment and menstrual health management.</p>\n<h2>Final Thoughts</h2>\n<p>Irregular periods should not always be ignored, especially when changes occur frequently or are accompanied by other symptoms. Understanding your menstrual cycle, maintaining healthy lifestyle habits, and seeking timely medical advice can help you manage your reproductive health. Consult Dr. Paridhi for personalized guidance and appropriate care for irregular periods.</p>\n<h2>Disclaimer</h2>\n<p>This article is for educational purposes only and does not replace personalized medical advice, diagnosis, or treatment. Consult a qualified gynecologist for your individual health concerns.</p>', '<p>Discover common reasons for irregular menstrual cycles and when to consult a gynecologist.</p>', 'branch/assets/blogs/img1793353748.png', 'By Dr. Paridhi Chaudhary', '2', '2026-06-19', 1, '', '', '', '', ''),
(32, 0, 'Tips for a Healthy Pregnancy', 'tips-for-a-healthy-pregnancy', '<h1>Pregnancy care</h1>\n<h1>Tips for a Healthy Pregnancy</h1>\n<p>Pregnancy is an important phase in a woman\'s life. Taking proper care of your health, attending regular prenatal checkups, and following healthy habits can help support the well-being of both mother and baby.</p>\n<h2>1. Attend Regular Prenatal Checkups</h2>\n<p>Regular prenatal visits help your gynecologist monitor your health and your baby\'s development. These visits also provide an opportunity to discuss symptoms and receive appropriate medical guidance.</p>\n<h2>2. Follow a Balanced and Nutritious Diet</h2>\n<p>Include fruits, vegetables, whole grains, protein-rich foods, and other nutrient-rich foods in your daily meals. Your doctor can recommend supplements according to your individual needs.</p>\n<h2>3. Stay Hydrated</h2>\n<p>Drink enough water throughout the day. Adequate hydration supports normal body functions and helps reduce the risk of dehydration.</p>\n<h2>4. Get Enough Rest and Sleep</h2>\n<p>Take adequate rest, maintain a comfortable sleep routine, and discuss persistent sleep difficulties with your healthcare provider.</p>\n<h2>5. Stay Physically Active</h2>\n<p>Appropriate physical activity, such as walking, may benefit many pregnant women. Consult your gynecologist before starting an exercise routine, especially if your pregnancy is considered high-risk.</p>\n<h2>6. Avoid Harmful Substances</h2>\n<p>Avoid alcohol, smoking, and recreational drugs during pregnancy. Consult your doctor before taking medicines, herbal products, or supplements.</p>\n<h2>7. Recognize Warning Signs</h2>\n<p>Seek prompt medical attention if you experience vaginal bleeding, severe abdominal pain, severe headache, difficulty breathing, or fluid leakage.</p>\n<h2>8. Consult a Gynecologist</h2>\n<p>Every pregnancy is different. Regular medical guidance helps you understand your individual needs and make informed decisions about prenatal care and delivery planning.</p>\n<h2>Final Thoughts</h2>\n<p>A healthy pregnancy involves regular prenatal care, balanced nutrition, appropriate activity, and attention to your physical and emotional well-being. Work closely with your gynecologist for advice tailored to your needs.</p>\n<h2>Disclaimer</h2>\n<p>This article is for educational purposes only and does not replace personalized medical advice. Consult a qualified healthcare professional for your individual needs.</p>', '<p>Learn about prenatal checkups, healthy habits,nutrition, and important precautions during pregnancy.</p>', 'branch/assets/blogs/img1793353640.webp', 'By Dr. Paridhi Chaudhary', '3', '2026-07-10', 1, '', '', '', '', '');

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
(1, 'Dr.Paridhi Chaudhary', 'tusharsharma6868@gmail.com', 'tusharsharma6868@gmail.com', '+91-9286197331', '01214567142', '+91 7906246489', '11:00 AM – 8:00 PM', 'Shop No,6,7,RPG Galleria GP Pocket,Ganga Nagar, Meerut,Uttar Pradesh-250001', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3489.3969264330626!2d77.74936437551455!3d29.00523667546334!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390c7b9d685b63ed%3A0x424008da6370361b!2sDr%20Paridhi%20Chaudhary!5e0!3m2!1sen!2sin!4v1793430155967!5m2!1sen!2sin', 'https://www.facebook.com/Dr.Paridhi.chaudhary', 'https://www.youtube.com/@paridhichaudharyshaurya6955', 'https://www.instagram.com/drparidhigyne/', '', '', 'branch/assets/logo/logoImg1793338057.png', '', '', '', '', '', 'branch/images/brochure_1788931594.pdf', 'Dr. Paridhi Chaudhary believes Obstetrics & Gynecology is an important and sensitive field of medicine that requires dedication, empathy, and compassion. Every woman deserves to be heard, understood, and treated with respect.', '', ' Obstetrician & Gynecologist Laparascopic Surgeon and Infertility Specialist', '', '', '', '', 'Monday - Saturday', 'Sunday');

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
(86, '102', 'Antenatal Screening, Pregnancy Treatment Including High Risk Pregnancy', 'antenatal-screening-pregnancy-treatment-including-high-risk-pregnancy', '<h1>Expert Pregnancy Care</h1>\r\n<h1>Antenatal Screening &amp; High-Risk Pregnancy Treatment in Meerut</h1>\r\n<p>Pregnancy is an important journey that requires proper medical attention, regular monitoring, and personalized care to ensure the well-being of both mother and baby. Antenatal screening plays a vital role in identifying potential pregnancy-related complications at an early stage. It helps gynecologists monitor maternal health, assess fetal development, and provide timely medical guidance throughout pregnancy. Dr. Paridhi Chaudhary offers personalized antenatal screening and high-risk pregnancy treatment in Rohini, Delhi, focusing on comprehensive prenatal care, early diagnosis, and individualized pregnancy management.</p>\r\n<h2>1. What Is Antenatal Screening?</h2>\r\n<p>Antenatal screening refers to a series of medical tests, examinations, and assessments performed during pregnancy to monitor the health of the mother and developing baby. These screenings help identify certain health conditions, genetic risks, and possible pregnancy complications. Regular antenatal checkups allow the gynecologist to understand the progress of pregnancy and recommend appropriate care based on individual health requirements.</p>\r\n<h2>2. Importance of Regular Antenatal Checkups</h2>\r\n<p>Regular antenatal checkups are essential for monitoring pregnancy progress and identifying potential health concerns before they become serious. During these visits, the gynecologist may check blood pressure, weight, blood sugar levels, fetal heartbeat, and overall maternal health. These appointments also provide an opportunity to discuss pregnancy symptoms, nutritional requirements, lifestyle habits, and any concerns experienced during pregnancy.</p>\r\n<h2>3. Common Antenatal Screening Tests During Pregnancy</h2>\r\n<p>Different screening tests may be recommended depending on the stage of pregnancy, medical history, and individual risk factors. Common antenatal investigations include complete blood count, blood group and Rh factor testing, blood sugar screening, thyroid function tests when indicated, urine examination, infection screening, and ultrasound scans. Certain pregnancies may also require additional genetic or fetal assessments based on medical recommendations.</p>\r\n<h2>4. Role of Ultrasound Scans in Pregnancy</h2>\r\n<p>Ultrasound scans are an important part of antenatal care. They help assess fetal growth, monitor the baby\'s heartbeat, evaluate the placenta, and check the amount of amniotic fluid. Depending on the pregnancy stage, doctors may recommend dating scans, first-trimester screening, anomaly scans, and growth scans. These assessments help evaluate the baby\'s development and identify findings that may require further investigation.</p>\r\n<h2>5. What Is a High-Risk Pregnancy?</h2>\r\n<p>A high-risk pregnancy is one in which the mother, baby, or both may have an increased risk of health complications during pregnancy, childbirth, or the postpartum period. Certain existing medical conditions, pregnancy-related complications, and maternal health factors may increase pregnancy risks. Such pregnancies require closer medical supervision, regular assessments, and an individualized care plan to support the health of both mother and baby.</p>\r\n<h2>6. Common Causes of High-Risk Pregnancy</h2>\r\n<p>Several factors can contribute to a high-risk pregnancy. These may include maternal age, pre-existing diabetes, high blood pressure, thyroid disorders, heart conditions, kidney diseases, multiple pregnancies, and a history of previous pregnancy complications. Pregnancy-related conditions such as gestational diabetes, preeclampsia, and fetal growth concerns may also require specialized monitoring and medical care.</p>\r\n<h2>7. Symptoms and Warning Signs During a High-Risk Pregnancy</h2>\r\n<p>Pregnant women should pay attention to unusual symptoms and seek medical advice when necessary. Warning signs may include vaginal bleeding, severe abdominal pain, persistent severe headache, blurred vision, sudden swelling of the face or hands, difficulty breathing, fluid leakage, or reduced fetal movements after movements have become established. Some pregnancy complications may develop without obvious symptoms, making regular antenatal checkups especially important. Seek urgent medical attention if any serious warning signs occur.</p>\r\n<h2>8. High-Risk Pregnancy Management and Treatment Options</h2>\r\n<p>High-risk pregnancy management depends on the underlying medical condition, pregnancy stage, and health of the mother and baby. Treatment may involve more frequent antenatal visits, regular blood pressure and blood sugar monitoring, medication when prescribed, additional ultrasound scans, fetal growth assessments, and specialist consultations when required. The objective is to identify potential complications early and provide appropriate medical care throughout pregnancy.</p>\r\n<h2>9. Managing Gestational Diabetes During Pregnancy</h2>\r\n<p>Gestational diabetes is a type of diabetes that develops during pregnancy and requires proper monitoring. High blood sugar levels can affect both maternal and fetal health if not appropriately managed. Treatment may include dietary modifications, regular physical activity when medically suitable, blood glucose monitoring, and insulin or other prescribed treatment when necessary. Regular follow-ups help maintain appropriate blood sugar control throughout pregnancy.</p>\r\n<h2>10. Managing High Blood Pressure and Preeclampsia</h2>\r\n<p>High blood pressure during pregnancy requires careful medical supervision because it may increase the risk of complications for both mother and baby. Preeclampsia is a pregnancy-related condition characterized by new-onset high blood pressure, often accompanied by signs of organ involvement. Management may include regular blood pressure monitoring, urine and blood investigations, fetal assessments, and prescribed medication. Timely medical evaluation is important to determine the safest approach to pregnancy and delivery.</p>\r\n<h2>11. Importance of Nutrition and Lifestyle During Pregnancy</h2>\r\n<p>Healthy nutrition and appropriate lifestyle habits play an important role in supporting maternal and fetal health. Pregnant women should follow a balanced diet containing fruits, vegetables, whole grains, protein-rich foods, and other essential nutrients. Adequate hydration, sufficient rest, appropriate physical activity, and doctor-recommended supplements can also support a healthy pregnancy. Women with high-risk pregnancies should follow activity and dietary recommendations based on their individual medical conditions.</p>\r\n<h2>12. Fetal Growth Monitoring and Baby\'s Development</h2>\r\n<p>Monitoring fetal growth is an important part of antenatal care, particularly in high-risk pregnancies. Ultrasound examinations may be used to assess the baby\'s growth, estimated weight, amniotic fluid levels, and placental function. Additional assessments, such as Doppler studies or fetal heart rate monitoring, may be recommended when clinically indicated. These evaluations help doctors identify possible growth concerns and plan appropriate medical management.</p>\r\n<h2>13. Delivery Planning for High-Risk Pregnancy</h2>\r\n<p>Delivery planning is an important aspect of high-risk pregnancy management. The timing and mode of delivery depend on maternal health, fetal development, pregnancy complications, and the overall clinical condition. Some women may be able to have a vaginal delivery, while others may require a planned or emergency cesarean section for medical reasons. Regular consultation and monitoring help the gynecologist determine an appropriate delivery plan to support the safety of mother and baby.</p>\r\n<h2>14. When Should You Consult a Gynecologist?</h2>\r\n<p>You should consult a gynecologist as soon as pregnancy is confirmed to begin appropriate antenatal care. Women with existing medical conditions, previous pregnancy complications, recurrent miscarriages, or concerns about fetal development may need specialized assessment. Regular medical consultations are also important if you experience unusual symptoms, changes in fetal movements, persistent headaches, bleeding, or abdominal pain during pregnancy.</p>\r\n<h2>15. Personalized Antenatal Care by Dr. Paridhi Chaudhary</h2>\r\n<p>Every pregnancy is different and requires care according to the mother\'s medical history, health condition, and baby\'s development. Dr. Paridhi Chaudhary focuses on personalized antenatal screening, regular pregnancy monitoring, and high-risk pregnancy management in Rohini, Delhi. Her approach emphasizes understanding individual health concerns, recommending appropriate investigations, explaining medical findings, and guiding expecting mothers through different stages of pregnancy.</p>\r\n<h2>16. Why Is Regular Pregnancy Monitoring Important?</h2>\r\n<p>Regular pregnancy monitoring helps identify changes in maternal health and fetal development over time. It allows the gynecologist to evaluate test results, review existing medical conditions, adjust treatment when necessary, and provide guidance about nutrition, physical activity, and delivery preparation. Consistent follow-ups are particularly valuable for women with high-risk pregnancies because timely medical intervention may help reduce the risk of certain complications.</p>\r\n<h2>Final Thoughts</h2>\r\n<p>Antenatal screening and proper high-risk pregnancy management are essential for supporting a healthy pregnancy journey. Regular prenatal checkups, timely investigations, appropriate treatment, balanced nutrition, and continuous medical supervision can help identify and manage potential pregnancy complications. Whether you need routine antenatal screening or specialized high-risk pregnancy care, consult Dr. Paridhi Chaudhary in Rohini, Delhi, for personalized gynecological guidance and pregnancy care.</p>\r\n<h2>Disclaimer</h2>\r\n<p>This article is intended for educational and informational purposes only. It does not replace professional medical advice, diagnosis, or treatment. Every pregnancy is different, and screening tests and treatment options should be selected according to individual medical needs. Always consult a qualified gynecologist for personalized pregnancy care and medical guidance.</p>', 'Antenatal screening detects complications early, while high-risk pregnancy care ensures maternal and fetal safety.', '', 'branch/assets/subcat/img1793341866.webp', '', '', '', '', '', 1, 1),
(87, '102', 'Delivery-Normal and C-Section', 'delivery-normal-and-c-section', '<h1>c-section and normal delivery</h1>\r\n<h1>Normal Delivery and C-Section Delivery in Rohini, Delhi</h1>\r\n<p>Childbirth is one of the most important stages of pregnancy, and choosing an appropriate delivery method is essential for the health and safety of both mother and baby. Every pregnancy is different, and the mode of delivery depends on the mother\'s health, baby\'s position, pregnancy progress, and any medical complications. Dr. Paridhi Chaudhary provides personalized maternity care for normal vaginal delivery and cesarean section (C-section) delivery in Rohini, Delhi. With proper pregnancy monitoring, labour management, and medical guidance, expecting mothers receive support throughout their childbirth journey.</p>\r\n<h2>1. What Is Normal Vaginal Delivery?</h2>\r\n<p>Normal vaginal delivery is the process of childbirth in which the baby is delivered through the birth canal without surgical intervention. It is a natural process that involves labour contractions, cervical dilation, and the delivery of the baby through the vagina. When there are no medical complications and the mother and baby are doing well, vaginal delivery may be a suitable option. Continuous medical monitoring helps ensure that labour progresses safely.</p>\r\n<h2>2. Benefits of Normal Delivery</h2>\r\n<p>Vaginal delivery may offer several benefits for mothers when medically appropriate. Recovery is generally faster compared to a cesarean section, and hospital stays may be shorter. It also avoids major abdominal surgery and its associated surgical risks. Babies born through vaginal delivery may experience beneficial exposure to maternal bacteria during birth. However, the most important consideration is always the safety of both mother and baby rather than choosing a particular delivery method.</p>\r\n<h2>3. What Is a C-Section Delivery?</h2>\r\n<p>A cesarean section, commonly known as a C-section, is a surgical procedure in which the baby is delivered through incisions made in the mother\'s abdomen and uterus. It may be planned in advance or performed as an emergency procedure when vaginal delivery is not considered safe or possible. C-section delivery is an important medical option that can help manage certain pregnancy and childbirth complications.</p>\r\n<h2>4. When Is a C-Section Delivery Recommended?</h2>\r\n<p>A C-section may be recommended for different medical reasons depending on the condition of the mother and baby. Common reasons include breech or abnormal baby positioning, placenta previa, fetal distress, failure of labour to progress, certain multiple pregnancies, previous uterine surgery, or specific maternal health complications. The gynecologist carefully evaluates the clinical situation before recommending a cesarean section.</p>\r\n<h2>5. Difference Between Normal Delivery and C-Section</h2>\r\n<p>The main difference between normal delivery and C-section is the method of childbirth. Normal delivery takes place through the birth canal, while a C-section involves a surgical procedure to deliver the baby through the abdomen and uterus. Vaginal delivery generally involves a shorter recovery period, whereas C-section recovery usually requires more time and postoperative care. Both methods have benefits and potential risks, and the appropriate option depends on individual medical circumstances.</p>\r\n<h2>6. How to Prepare for Normal Delivery</h2>\r\n<p>Preparing for vaginal delivery involves maintaining good maternal health throughout pregnancy. Regular antenatal checkups, balanced nutrition, adequate hydration, appropriate physical activity, and sufficient rest can support overall pregnancy health. Attending childbirth preparation sessions and discussing labour expectations with your gynecologist may also help expecting mothers feel more confident and prepared for delivery.</p>\r\n<h2>7. How to Prepare for a Planned C-Section</h2>\r\n<p>Preparation for a planned C-section includes medical assessments, reviewing the mother\'s health history, and following the doctor\'s instructions before surgery. Your healthcare team may recommend blood tests, preoperative examinations, and specific instructions regarding food, fluids, and medications. Understanding the procedure and discussing recovery expectations with your gynecologist can help reduce anxiety and prepare you for childbirth.</p>\r\n<h2>8. What Happens During Normal Labour?</h2>\r\n<p>Normal labour generally progresses through three stages. The first stage involves cervical dilation as regular contractions help the cervix open. The second stage involves pushing and the birth of the baby. The third stage involves the delivery of the placenta. During labour, healthcare professionals monitor the mother\'s vital signs, contraction pattern, and baby\'s heartbeat to assess progress and identify any complications that may require medical attention.</p>\r\n<h2>9. What Happens During a C-Section Procedure?</h2>\r\n<p>During a C-section, the mother is usually given regional anesthesia, such as spinal or epidural anesthesia, so she remains awake without feeling pain during the surgery. The gynecologist makes an incision in the lower abdomen and uterus to deliver the baby. After delivery, the placenta is removed and the surgical incisions are carefully closed. The medical team monitors the mother and baby throughout the procedure and during the initial recovery period.</p>\r\n<h2>10. Recovery After Normal Delivery</h2>\r\n<p>Recovery after vaginal delivery varies from woman to woman. Some mothers may experience vaginal soreness, perineal discomfort, bleeding, and tiredness during the initial days. Adequate rest, personal hygiene, proper nutrition, hydration, and following medical advice can support recovery. Postnatal checkups help assess healing and address any concerns related to breastfeeding, pelvic health, or emotional well-being.</p>\r\n<h2>11. Recovery After C-Section Delivery</h2>\r\n<p>Recovery after a C-section generally takes longer because it involves abdominal surgery. Mothers may experience discomfort around the incision area, tiredness, and difficulty moving during the initial recovery period. Proper wound care, prescribed medications, gentle movement as advised by the doctor, and adequate rest are important. Avoid lifting heavy objects and follow your gynecologist\'s instructions regarding physical activities and recovery.</p>\r\n<h2>12. Possible Risks and Complications of Delivery</h2>\r\n<p>Both vaginal delivery and C-section have potential risks. Vaginal delivery may involve perineal tears, excessive bleeding, or labour-related complications. C-section risks may include infection, blood clots, bleeding, anesthesia-related complications, and a longer recovery period. The likelihood of complications depends on individual health conditions and pregnancy-related factors. Proper medical supervision helps identify risks and manage complications promptly.</p>\r\n<h2>13. Importance of Choosing the Right Delivery Method</h2>\r\n<p>The right delivery method should be determined by the mother\'s medical condition, baby\'s position, fetal well-being, and progress of labour. A normal delivery may be suitable for many uncomplicated pregnancies, while a C-section may be necessary when specific medical concerns arise. A planned C-section should be recommended based on appropriate clinical indications. Discussing the benefits and risks of both options with your gynecologist helps you make informed decisions about childbirth.</p>\r\n<h2>14. Importance of Regular Pregnancy Monitoring Before Delivery</h2>\r\n<p>Regular antenatal checkups are important for preparing for a safe delivery. During pregnancy visits, the gynecologist monitors blood pressure, blood sugar levels when indicated, fetal growth, baby\'s position, and overall maternal health. Ultrasound examinations and other investigations may be recommended depending on individual requirements. Regular monitoring helps identify possible complications and allows the medical team to plan appropriate delivery care.</p>\r\n<h2>15. Postnatal Care for Mother and Baby</h2>\r\n<p>Care after childbirth is equally important for the health of both mother and baby. Postnatal care includes monitoring maternal recovery, managing pain, supporting breastfeeding, checking the baby\'s health, and identifying any postpartum complications. Mothers should also receive guidance regarding nutrition, physical recovery, emotional well-being, and follow-up appointments. Timely medical support can help mothers recover comfortably after vaginal or cesarean delivery.</p>\r\n<h2>16. Why Choose Dr. Paridhi Chaudhary for Delivery Care in Rohini, Delhi?</h2>\r\n<p>Choosing an experienced gynecologist for pregnancy and delivery care is an important decision for expecting parents. Dr. Paridhi Chaudhary provides personalized maternity care in Rohini, Delhi, with a focus on pregnancy monitoring, labour management, normal vaginal delivery, and C-section delivery when medically required. Her approach emphasizes understanding each mother\'s health needs, evaluating pregnancy progress, discussing delivery options, and providing appropriate medical guidance throughout the childbirth journey.</p>\r\n<h2>17. When Should You Consult a Gynecologist?</h2>\r\n<p>Expecting mothers should maintain regular consultations with their gynecologist throughout pregnancy and especially during the final trimester. Seek medical attention if you experience vaginal bleeding, fluid leakage, severe abdominal pain, severe headache, difficulty breathing, or reduced fetal movements after movements have become established. Regular medical supervision helps ensure timely evaluation and appropriate care during pregnancy and childbirth.</p>\r\n<h2>Final Thoughts</h2>\r\n<p>Normal vaginal delivery and C-section delivery are both important methods of childbirth, and each has its own benefits and medical considerations. The right approach depends on the health of the mother, the baby\'s condition, and the progress of pregnancy and labour. With regular antenatal checkups, proper medical monitoring, and personalized maternity care, expecting mothers can prepare for childbirth with greater confidence. Consult Dr. Paridhi Chaudhary in Rohini, Delhi, for professional guidance and comprehensive care for normal and cesarean section delivery.</p>\r\n<h2>Disclaimer</h2>\r\n<p>This article is intended for educational and informational purposes only and does not replace professional medical advice, diagnosis, or treatment. The choice of delivery method should be based on individual medical conditions and the recommendation of a qualified gynecologist. Always consult your healthcare provider for personalized pregnancy and childbirth guidance.</p>', 'Provides safe normal and C-section deliveries with proper medical care for mother and baby.', '', 'branch/assets/subcat/img1793342457.webp', '', '', '', '', '', 1, 2),
(88, '102', 'Infertility Problem', 'infertility-problem', '<h1>infertility diagnosis</h1>\r\n<h1>Infertility Diagnosis and Treatment in Meerut</h1>\r\n<p>Infertility is a common reproductive health concern that can affect both women and men who are trying to conceive. Difficulty getting pregnant can occur due to several factors, including hormonal imbalances, ovulation disorders, fallopian tube problems, sperm-related issues, and certain underlying medical conditions. Early diagnosis and appropriate treatment can help couples understand the possible causes and explore suitable fertility options. Dr. Paridhi Chaudhary provides personalized infertility evaluation and treatment guidance in Rohini, Delhi, helping couples take informed steps towards achieving their pregnancy goals.</p>\r\n<h2>1. What Is Infertility?</h2>\r\n<p>Infertility is generally defined as the inability to achieve pregnancy after 12 months or more of regular, unprotected sexual intercourse. For women aged 35 years or older, medical evaluation is generally recommended after six months of trying. Women above 40 years or those with known reproductive health concerns may benefit from earlier evaluation. Infertility can involve female factors, male factors, a combination of both, or sometimes remain unexplained.</p>\r\n<h2>2. Common Causes of Female Infertility</h2>\r\n<p>Female infertility can occur due to several reproductive and hormonal conditions. Common causes include irregular ovulation, Polycystic Ovary Syndrome (PCOS), thyroid disorders, endometriosis, blocked fallopian tubes, uterine fibroids, and age-related changes in egg quality and ovarian reserve. Identifying the underlying cause through appropriate medical evaluation helps determine the most suitable treatment approach.</p>\r\n<h2>3. Common Causes of Male Infertility</h2>\r\n<p>Male infertility may be associated with low sperm count, poor sperm movement, abnormal sperm shape, hormonal imbalances, or problems affecting sperm production and transportation. Certain infections, lifestyle habits, genetic conditions, and medical treatments may also affect male reproductive health. A semen analysis is commonly recommended as an important initial investigation when evaluating infertility in couples.</p>\r\n<h2>4. Symptoms and Signs of Infertility</h2>\r\n<p>Many couples experiencing infertility do not have noticeable symptoms apart from difficulty achieving pregnancy. However, women may experience irregular periods, absent menstruation, painful periods, pelvic discomfort, or symptoms associated with hormonal imbalances. Men may sometimes experience sexual or hormonal health concerns. Medical evaluation is important even when no obvious symptoms are present.</p>\r\n<h2>5. When Should You Consult a Fertility Specialist?</h2>\r\n<p>Couples should consider consulting a gynecologist or fertility specialist if pregnancy has not occurred after 12 months of regular, unprotected intercourse. Women aged 35 years or older should generally seek evaluation after six months. Earlier consultation may be appropriate for women with irregular periods, PCOS, endometriosis, previous pelvic infections, recurrent pregnancy loss, or a history of reproductive health problems. Male partners should also be evaluated as part of the fertility assessment.</p>\r\n<h2>6. How Is Infertility Diagnosed?</h2>\r\n<p>Infertility diagnosis begins with reviewing the medical history, menstrual cycle, previous pregnancies, lifestyle habits, and reproductive health of both partners. The gynecologist may recommend investigations such as hormone blood tests, thyroid function tests, pelvic ultrasound, ovarian reserve assessment, and ovulation evaluation. Male fertility assessment may include semen analysis and additional tests when required. Further investigations are selected according to the couple\'s individual medical needs.</p>\r\n<h2>7. Role of Hormonal Tests in Infertility Evaluation</h2>\r\n<p>Hormones play an important role in regulating ovulation, menstrual cycles, and reproductive health. Hormonal investigations may include thyroid-stimulating hormone, prolactin, follicle-stimulating hormone, luteinizing hormone, and other tests depending on the symptoms and medical history. These investigations help identify hormonal conditions that may affect ovulation and fertility. Appropriate treatment can then be planned according to the test findings.</p>\r\n<h2>8. Role of Ultrasound in Infertility Diagnosis</h2>\r\n<p>Pelvic ultrasound is an important investigation for evaluating female reproductive health. It helps examine the uterus, ovaries, ovarian follicles, and endometrial lining. It may help identify conditions such as ovarian cysts, fibroids, polycystic ovarian morphology, and other structural abnormalities. Additional investigations may be recommended to assess fallopian tube patency or other reproductive concerns.</p>\r\n<h2>9. Infertility and Polycystic Ovary Syndrome (PCOS)</h2>\r\n<p>PCOS is a common hormonal condition that can affect ovulation and menstrual regularity. Women with PCOS may experience irregular periods, delayed ovulation, acne, excessive facial hair growth, and difficulty conceiving. However, many women with PCOS can achieve pregnancy with appropriate medical management. Treatment may involve lifestyle modifications, ovulation assessment, and prescribed fertility medications when indicated.</p>\r\n<h2>10. Infertility Treatment Options for Women</h2>\r\n<p>Female infertility treatment depends on the underlying cause, age, ovarian reserve, and overall reproductive health. Treatment options may include medications to support ovulation, management of hormonal disorders, treatment of thyroid conditions, and procedures to address certain uterine or fallopian tube problems. A personalized treatment plan helps address the specific factors affecting fertility and supports the couple\'s pregnancy goals.</p>\r\n<h2>11. Ovulation Induction Treatment</h2>\r\n<p>Ovulation induction involves using prescribed medications to stimulate the development and release of an egg from the ovary. It may be recommended for women who experience irregular or absent ovulation, including some women with PCOS. The treatment is generally accompanied by ultrasound monitoring and medical supervision to assess follicular development and reduce the risk of complications such as multiple pregnancy or ovarian hyperstimulation.</p>\r\n<h2>12. Treatment Options for Male Infertility</h2>\r\n<p>Male infertility treatment depends on the cause identified during medical evaluation. Management may include treating infections or hormonal conditions, addressing lifestyle factors, and consulting an appropriate specialist when required. Certain reproductive conditions may need specific medical or surgical treatment. Depending on sperm quality and the couple\'s circumstances, assisted reproductive techniques may also be considered.</p>\r\n<h2>13. Assisted Reproductive Techniques (ART)</h2>\r\n<p>Assisted reproductive techniques may be recommended when pregnancy does not occur through simpler fertility treatments or when specific reproductive problems are present. Common options include Intrauterine Insemination (IUI) and In Vitro Fertilization (IVF). The suitability of these treatments depends on factors such as age, ovarian reserve, sperm health, fallopian tube condition, and previous treatment outcomes. Couples should discuss the potential benefits, limitations, and costs with their fertility specialist.</p>\r\n<h2>14. Lifestyle Changes to Improve Fertility</h2>\r\n<p>Healthy lifestyle habits can support overall reproductive health in both men and women. Maintaining a balanced diet, engaging in regular physical activity, getting adequate sleep, managing stress, and avoiding smoking, alcohol, and recreational drugs can contribute to better general health. Maintaining a healthy weight and managing conditions such as diabetes and thyroid disorders may also support fertility. Lifestyle changes are helpful but cannot replace medical treatment when an underlying reproductive condition is present.</p>\r\n<h2>15. Age and Its Impact on Fertility</h2>\r\n<p>Age is an important factor affecting fertility, particularly in women. As women grow older, the number and quality of eggs naturally decline, which may make conception more difficult and increase the risk of miscarriage. Male fertility can also change with age. Seeking timely medical evaluation and discussing available fertility options can help couples make informed decisions about family planning.</p>\r\n<h2>16. Emotional Support During Infertility Treatment</h2>\r\n<p>Experiencing difficulty conceiving can cause emotional stress, anxiety, and frustration for couples. Fertility investigations and treatments may also involve uncertainty and repeated medical appointments. Open communication between partners, emotional support from family, and professional counselling when needed can help couples manage this journey. Understanding the treatment process and discussing expectations with the gynecologist can also provide reassurance.</p>\r\n<h2>17. Importance of Early Infertility Diagnosis</h2>\r\n<p>Early infertility evaluation can help identify underlying reproductive health concerns and prevent unnecessary delays in treatment. It allows doctors to assess both partners, understand the possible causes of difficulty conceiving, and recommend appropriate investigations. Timely diagnosis also helps couples explore suitable treatment options according to their age, medical history, and pregnancy goals.</p>\r\n<h2>18. Personalized Infertility Care by Dr. Paridhi Chaudhary</h2>\r\n<p>Every couple\'s fertility journey is different, and treatment should be based on individual medical needs. Dr. Paridhi Chaudhary provides personalized gynecological consultation and infertility evaluation in Rohini, Delhi. Her approach focuses on understanding reproductive health concerns, assessing possible causes of infertility, recommending appropriate investigations, and guiding couples regarding suitable treatment options. The aim is to help couples make informed decisions and receive appropriate medical support throughout their fertility journey.</p>\r\n<h2>19. When Should You Seek Medical Attention?</h2>\r\n<p>Do not delay a fertility consultation if you experience irregular or absent periods, known PCOS, endometriosis, previous pelvic infections, recurrent miscarriages, or a history of reproductive surgery. Men with known sperm-related health concerns should also seek timely evaluation. Early consultation can help identify potential problems and determine whether further testing or treatment is needed.</p>\r\n<h2>Final Thoughts</h2>\r\n<p>Infertility can be challenging, but many causes can be identified and managed with appropriate medical care. Understanding the underlying reproductive health concerns, evaluating both partners, and choosing a suitable treatment plan are important steps towards achieving pregnancy. With timely diagnosis, personalized fertility guidance, and appropriate medical support, couples can explore different options according to their individual needs. Consult Dr. Paridhi Chaudhary in Rohini, Delhi, for infertility evaluation and professional guidance on your journey towards parenthood.</p>\r\n<h2>Disclaimer</h2>\r\n<p>This article is intended for educational and informational purposes only and does not replace professional medical advice, diagnosis, or treatment. Fertility outcomes vary from person to person, and treatment options should be selected according to individual medical conditions. Always consult a qualified gynecologist or fertility specialist for personalized infertility care.</p>', 'Provides diagnosis and treatment to help couples overcome infertility and achieve pregnancy.', '', 'branch/assets/subcat/img1793342567.webp', '', '', '', '', '', 1, 3),
(89, '102', 'Treatment of itching,pain and other Infection of female genital tract,PCOS Treatment', 'treatment-of-itching-pain-and-other-infection-of-female-genital-tract-pcos-treatment', '<h1>Treatment of itching</h1>\r\n<h1>Female Genital Tract Infection, Itching, Pain and PCOS Treatment in Meerut</h1>\r\n<p>Female reproductive and genital health is an important part of a woman\'s overall well-being. Problems such as vaginal itching, abnormal discharge, genital infections, pelvic pain, and hormonal imbalances can affect daily comfort and quality of life. Polycystic Ovary Syndrome (PCOS) is another common hormonal condition that may cause irregular periods, acne, unwanted hair growth, and difficulty conceiving. Early diagnosis and appropriate medical treatment can help manage these concerns and prevent potential complications. Dr. Paridhi Chaudhary provides personalized gynecological consultation and treatment for female genital tract infections, itching, pain, and PCOS in Rohini, Delhi, with a focus on understanding individual symptoms and recommending suitable care.</p>\r\n<h2>1. What Are Female Genital Tract Infections?</h2>\r\n<p>Female genital tract infections are conditions that affect the vagina, cervix, uterus, or other parts of the reproductive system. These infections may be caused by bacteria, fungi, viruses, or certain sexually transmitted microorganisms. Common conditions include vaginal yeast infections, bacterial vaginosis, urinary and genital infections, and sexually transmitted infections. The symptoms and treatment depend on the type and location of the infection.</p>\r\n<h2>2. Common Symptoms of Vaginal and Genital Infections</h2>\r\n<p>Genital infections may cause different symptoms depending on their underlying cause. Common signs include vaginal itching, burning sensation, unusual vaginal discharge, unpleasant odor, redness, irritation, pain during urination, discomfort during sexual intercourse, and lower abdominal or pelvic pain. Some infections may not cause noticeable symptoms. If symptoms persist or return frequently, a gynecological evaluation is important.</p>\r\n<h2>3. Causes of Vaginal Itching and Irritation</h2>\r\n<p>Vaginal itching can occur due to several reasons, including yeast infections, bacterial vaginosis, sexually transmitted infections, hormonal changes, and skin conditions affecting the genital area. Irritation may also develop due to scented hygiene products, harsh soaps, detergents, or other chemical irritants. Identifying the exact cause is important because different conditions require different treatments.</p>\r\n<h2>4. Types of Female Genital Tract Infections</h2>\r\n<p>Some common female genital infections include vaginal candidiasis, bacterial vaginosis, trichomoniasis, and certain sexually transmitted infections such as chlamydia and gonorrhea. Vaginal candidiasis is usually caused by an overgrowth of yeast, while bacterial vaginosis involves an imbalance in normal vaginal bacteria. Each infection has different symptoms and treatment requirements, making proper diagnosis essential.</p>\r\n<h2>5. Vaginal Discharge: What Is Normal and What Is Not?</h2>\r\n<p>Vaginal discharge is a normal part of reproductive health and helps maintain vaginal cleanliness and moisture. Normal discharge may be clear or white and can change throughout the menstrual cycle. However, discharge accompanied by an unpleasant odor, itching, burning, pelvic pain, or an unusual color may indicate an infection or another health concern. Consulting a gynecologist can help identify the cause and determine whether treatment is needed.</p>\r\n<h2>6. Causes of Pelvic Pain and Lower Abdominal Pain</h2>\r\n<p>Pelvic pain in women can occur due to genital tract infections, urinary tract infections, ovarian cysts, endometriosis, fibroids, or other reproductive health conditions. Some infections affecting the reproductive organs may lead to pelvic inflammatory disease (PID), which requires timely medical attention. Persistent, severe, or unexplained pelvic pain should not be ignored and needs proper medical evaluation.</p>\r\n<h2>7. What Is Pelvic Inflammatory Disease (PID)?</h2>\r\n<p>Pelvic inflammatory disease is an infection affecting the upper female reproductive organs, including the uterus, fallopian tubes, and ovaries. It may develop when certain bacteria, including those associated with sexually transmitted infections, spread from the lower genital tract. Symptoms can include lower abdominal pain, unusual vaginal discharge, fever, painful intercourse, and irregular bleeding. Early diagnosis and appropriate antibiotic treatment are important to reduce the risk of complications, including fertility problems.</p>\r\n<h2>8. How Are Female Genital Infections Diagnosed?</h2>\r\n<p>Diagnosis generally begins with reviewing symptoms, menstrual history, sexual health, and medical background. A gynecologist may perform a pelvic examination and recommend vaginal or cervical swab tests, urine tests, or laboratory investigations depending on the suspected condition. Testing for sexually transmitted infections may also be advised when clinically appropriate. Accurate diagnosis helps ensure that the prescribed treatment addresses the actual cause of the symptoms.</p>\r\n<h2>9. Treatment Options for Female Genital Tract Infections</h2>\r\n<p>Treatment depends on the type of infection and its severity. Bacterial infections may require prescribed antibiotics, while fungal infections may need antifungal medications. Certain sexually transmitted infections require specific treatment, and sexual partners may also need evaluation or treatment. It is important to complete prescribed medicines as directed and avoid self-medication, as incorrect treatment may delay recovery or cause recurring symptoms.</p>\r\n<h2>10. Tips to Maintain Female Genital Hygiene</h2>\r\n<p>Maintaining proper genital hygiene can support vaginal health and reduce irritation. Wash the external genital area gently with water, avoid harsh or scented intimate hygiene products, wear breathable cotton underwear, and change out of wet or sweaty clothing promptly. Avoid vaginal douching because it can disturb the natural vaginal bacterial balance. Good hygiene habits can support comfort but cannot replace medical treatment for an existing infection.</p>\r\n<h2>11. What Is PCOS?</h2>\r\n<p>Polycystic Ovary Syndrome (PCOS) is a common hormonal and metabolic condition affecting women during their reproductive years. It can influence ovulation, menstrual regularity, and androgen hormone levels. Women with PCOS may experience irregular periods, acne, excessive facial or body hair growth, weight changes, and difficulty conceiving. Not every woman with PCOS experiences all these symptoms, and the condition varies from person to person.</p>\r\n<h2>12. Common Symptoms of PCOS</h2>\r\n<p>PCOS symptoms may include irregular or missed periods, infrequent ovulation, excessive facial hair growth, acne, oily skin, thinning scalp hair, and weight gain. Some women may also experience difficulty becoming pregnant because of irregular ovulation. Symptoms can develop gradually, so a proper gynecological evaluation is helpful when menstrual or hormonal changes occur.</p>\r\n<h2>13. Causes and Risk Factors of PCOS</h2>\r\n<p>The exact cause of PCOS is not fully understood. However, genetic factors, insulin resistance, and hormonal imbalances may contribute to its development. Insulin resistance can cause the body to produce higher levels of insulin, which may increase androgen production and interfere with normal ovulation. Family history and metabolic health may also influence the risk of developing PCOS.</p>\r\n<h2>14. How Is PCOS Diagnosed?</h2>\r\n<p>PCOS diagnosis involves reviewing menstrual patterns, symptoms, medical history, and clinical findings. A gynecologist may recommend hormone blood tests, blood sugar assessment, thyroid testing, and pelvic ultrasound when appropriate. Other conditions that can cause similar symptoms may also need to be ruled out. Ultrasound findings alone are not sufficient to diagnose PCOS in every woman.</p>\r\n<h2>15. PCOS Treatment Options</h2>\r\n<p>PCOS treatment depends on the symptoms, age, overall health, and whether the woman is planning pregnancy. Treatment may include lifestyle modifications, prescribed medications to regulate menstrual cycles, treatments for acne and excessive hair growth, and medicines to address insulin resistance when indicated. Women planning pregnancy may require ovulation-inducing treatment under medical supervision. A personalized approach helps address individual concerns and long-term health needs.</p>\r\n<h2>16. Lifestyle Changes to Manage PCOS</h2>\r\n<p>Healthy lifestyle habits can play an important role in PCOS management. Eating a balanced diet, including fiber-rich foods and adequate protein, staying physically active, maintaining a healthy weight when appropriate, and getting sufficient sleep may support metabolic and hormonal health. Stress management and regular medical follow-ups can also help women monitor symptoms and overall health.</p>\r\n<h2>17. Connection Between PCOS and Fertility</h2>\r\n<p>PCOS can affect fertility by interfering with regular ovulation. Women with PCOS may have difficulty predicting fertile days or conceiving naturally because eggs may not be released regularly. However, many women with PCOS can achieve pregnancy with appropriate treatment and medical support. Fertility management may include lifestyle changes, ovulation induction, and other treatment options depending on individual requirements.</p>\r\n<h2>18. When Should You Consult a Gynecologist?</h2>\r\n<p>Consult a gynecologist if you experience persistent vaginal itching, unusual discharge, unpleasant odor, genital irritation, painful urination, pelvic pain, or discomfort during intercourse. Women with frequent irregular periods, missed periods, acne, excessive facial hair growth, or difficulty conceiving should also seek medical evaluation for possible PCOS or other hormonal conditions. Seek urgent medical attention if pelvic pain is severe or accompanied by fever, vomiting, fainting, or heavy bleeding.</p>\r\n<h2>19. Personalized Gynecological Care by Dr. Paridhi Chaudhary</h2>\r\n<p>Every woman\'s reproductive health needs are different, and treatment should be based on an accurate diagnosis and individual medical history. Dr. Paridhi Chaudhary provides personalized gynecological consultation and treatment in Rohini, Delhi, for female genital tract infections, vaginal itching, pelvic pain, menstrual concerns, and PCOS management. Her approach focuses on understanding symptoms, recommending appropriate investigations, and guiding patients towards suitable treatment and preventive care.</p>\r\n<h2>Final Thoughts</h2>\r\n<p>Female genital infections, vaginal itching, pelvic pain, and PCOS are common gynecological concerns that should receive timely medical attention. Identifying the underlying cause is important for selecting appropriate treatment and preventing possible complications. With proper diagnosis, prescribed medications, healthy lifestyle habits, and regular gynecological checkups, many of these conditions can be effectively managed. Consult Dr. Paridhi Chaudhary in Rohini, Delhi, for personalized guidance and comprehensive women\'s healthcare.</p>\r\n<h2>Disclaimer</h2>\r\n<p>This article is intended for educational and informational purposes only and does not replace professional medical advice, diagnosis, or treatment. Vaginal itching, genital infections, pelvic pain, and PCOS can have different underlying causes. Always consult a qualified gynecologist for proper evaluation and personalized treatment. Avoid self-medication or using vaginal medicines without medical advice.</p>', 'Provides effective treatment for female genital infections, itching, pain, and PCOS management.', '', 'branch/assets/subcat/img1793342864.webp', '', '', '', '', '', 1, 4);
INSERT INTO `sub_cat` (`id`, `cat_id`, `sc_name`, `sc_url`, `sc_desc`, `sdesc`, `features`, `featured_img`, `featured_img1`, `icon_img`, `meta_title`, `meta_keywords`, `meta_desc`, `status`, `order`) VALUES
(90, '102', 'Period Related Problem', 'period-related-problem', '<h1>Period related diagnosis</h1>\r\n<h1>Period Related Problems: Diagnosis and Treatment in Meerut</h1>\r\n<p>Menstrual health is an important part of a woman\'s overall reproductive well-being. Many women experience period-related problems such as irregular periods, painful menstruation, heavy bleeding, missed periods, and unexpected changes in their menstrual cycle. These concerns may occur due to hormonal imbalances, Polycystic Ovary Syndrome (PCOS), thyroid disorders, uterine fibroids, endometriosis, or other gynecological conditions. Dr. Paridhi Chaudhary provides personalized diagnosis and treatment for period-related problems in Rohini, Delhi, helping women understand their menstrual health concerns and receive appropriate medical care according to their individual needs.</p>\r\n<h2>1. What Are Period-Related Problems?</h2>\r\n<p>Period-related problems refer to changes or difficulties associated with the menstrual cycle. These may include irregular menstrual dates, unusually heavy or light bleeding, painful periods, missed periods, prolonged menstruation, or bleeding between periods. While occasional changes can happen, frequent or severe menstrual disturbances may indicate an underlying health condition that requires medical evaluation.</p>\r\n<h2>2. Understanding the Normal Menstrual Cycle</h2>\r\n<p>The menstrual cycle is a natural hormonal process that prepares the body for a possible pregnancy. A typical menstrual cycle in adults generally lasts between 21 and 35 days, although individual patterns can vary. Menstrual bleeding usually lasts around two to seven days. Hormones such as estrogen and progesterone regulate the cycle and influence ovulation and the uterine lining. Understanding your normal cycle can help you recognize unusual changes early.</p>\r\n<h2>3. What Are Irregular Periods?</h2>\r\n<p>Irregular periods occur when menstrual cycles do not follow a consistent pattern. Periods may arrive earlier or later than expected, occur less frequently, or sometimes be missed altogether. Irregular menstruation can be associated with hormonal changes, PCOS, thyroid disorders, stress, significant weight changes, excessive exercise, or other medical conditions. Frequent irregularity should be evaluated by a gynecologist to identify the underlying cause.</p>\r\n<h2>4. Common Causes of Irregular Periods</h2>\r\n<p>Several factors can affect menstrual regularity. Common causes include hormonal imbalances, PCOS, thyroid disorders, elevated prolactin levels, stress, sudden weight changes, excessive physical activity, and certain medications. Pregnancy, breastfeeding, and approaching menopause can also cause changes in menstrual patterns. Identifying the underlying reason is important for selecting appropriate treatment.</p>\r\n<h2>5. What Are Painful Periods?</h2>\r\n<p>Painful periods, medically known as dysmenorrhea, involve cramps and discomfort during menstruation. The pain commonly occurs in the lower abdomen and may spread to the lower back and thighs. Some women may also experience nausea, headaches, fatigue, or loose motions. Mild cramps can be common, but severe or worsening menstrual pain should not be ignored because it may be associated with conditions such as endometriosis, adenomyosis, or fibroids.</p>\r\n<h2>6. Causes of Painful Menstruation</h2>\r\n<p>Menstrual pain can occur due to increased production of prostaglandins, which cause the uterus to contract during menstruation. This is known as primary dysmenorrhea. Secondary dysmenorrhea may develop due to underlying gynecological conditions such as endometriosis, adenomyosis, uterine fibroids, or pelvic inflammatory disease. A gynecological examination and appropriate investigations can help determine the cause of persistent pain.</p>\r\n<h2>7. What Is Heavy Menstrual Bleeding?</h2>\r\n<p>Heavy menstrual bleeding refers to menstrual blood loss that is unusually heavy, prolonged, or affects daily activities. Women may experience frequent changes of sanitary pads, bleeding for more than seven days, passing large blood clots, or symptoms such as weakness, tiredness, and dizziness. Heavy periods can sometimes lead to iron-deficiency anemia and should be evaluated by a gynecologist.</p>\r\n<h2>8. Common Causes of Heavy Periods</h2>\r\n<p>Heavy menstrual bleeding can occur due to uterine fibroids, adenomyosis, hormonal imbalances, thyroid disorders, bleeding disorders, and certain medications. In some women, the cause may not be immediately identified. A proper medical assessment helps determine the underlying reason and guides suitable treatment.</p>\r\n<h2>9. What Causes Missed or Delayed Periods?</h2>\r\n<p>Missed or delayed periods may occur due to pregnancy, hormonal imbalances, PCOS, thyroid problems, stress, sudden weight changes, excessive exercise, breastfeeding, or changes associated with perimenopause. If pregnancy is possible, taking a pregnancy test is an important first step. Repeatedly missed periods or long gaps between menstrual cycles should be discussed with a gynecologist.</p>\r\n<h2>10. Period Problems and PCOS</h2>\r\n<p>Polycystic Ovary Syndrome (PCOS) is a common hormonal and metabolic condition that can affect ovulation and menstrual regularity. Women with PCOS may experience infrequent periods, delayed menstruation, or missed cycles. Other symptoms may include acne, excessive facial hair growth, weight changes, and difficulty conceiving. Appropriate medical evaluation and individualized treatment can help manage menstrual irregularities associated with PCOS.</p>\r\n<h2>11. Period Problems and Thyroid Disorders</h2>\r\n<p>Thyroid hormones play an important role in regulating metabolism and reproductive health. Both an underactive thyroid (hypothyroidism) and an overactive thyroid (hyperthyroidism) may affect menstrual patterns. Women may experience irregular periods, unusually heavy bleeding, lighter periods, or changes in cycle frequency. Thyroid function tests may be recommended when symptoms suggest a possible thyroid-related menstrual problem.</p>\r\n<h2>12. How Are Period-Related Problems Diagnosed?</h2>\r\n<p>Diagnosis begins with reviewing menstrual history, symptoms, medical background, lifestyle habits, and pregnancy possibility. Depending on the concern, a gynecologist may recommend blood tests, thyroid function tests, hormone assessments, pregnancy testing, pelvic ultrasound, or other investigations. These tests help evaluate possible hormonal, structural, and reproductive causes of menstrual disturbances.</p>\r\n<h2>13. Treatment for Irregular Periods</h2>\r\n<p>Treatment for irregular periods depends on the underlying cause, age, overall health, and pregnancy plans. A gynecologist may recommend lifestyle modifications, treatment for thyroid or hormonal disorders, or prescribed hormonal medications to regulate menstrual cycles. Women with PCOS may require additional treatment based on their symptoms and metabolic health. The treatment plan should always be individualized.</p>\r\n<h2>14. Treatment for Painful Periods</h2>\r\n<p>Treatment for painful periods depends on the severity of symptoms and their underlying cause. Options may include prescribed pain-relieving medicines, hormonal treatments, and management of conditions such as endometriosis or fibroids. Gentle physical activity, adequate rest, and applying warmth to the lower abdomen may also help relieve menstrual discomfort. Persistent or severe pain requires proper medical assessment rather than repeated self-medication.</p>\r\n<h2>15. Treatment for Heavy Menstrual Bleeding</h2>\r\n<p>Heavy menstrual bleeding can be managed through different medical approaches depending on its cause and severity. Treatment may include prescribed medications to reduce bleeding, hormonal therapy, iron supplementation when iron deficiency is present, or procedures for certain uterine conditions. Women with fibroids, adenomyosis, or other structural problems may need additional evaluation and specialized treatment. The choice of treatment depends on individual health requirements and future pregnancy plans.</p>\r\n<h2>16. Lifestyle Changes to Support Menstrual Health</h2>\r\n<p>Healthy lifestyle habits can support overall hormonal and reproductive health. Eating a balanced diet rich in iron, protein, vitamins, and essential nutrients, maintaining appropriate physical activity, getting adequate sleep, and managing stress may help support menstrual well-being. Tracking menstrual dates, bleeding patterns, and associated symptoms can also help your gynecologist understand changes in your cycle.</p>\r\n<h2>17. Importance of Tracking Your Menstrual Cycle</h2>\r\n<p>Keeping a record of your menstrual cycle can help identify patterns and unusual changes. Note the first day of each period, cycle length, duration of bleeding, amount of blood loss, pain levels, and any additional symptoms. This information can help your gynecologist assess menstrual concerns more effectively and recommend appropriate investigations or treatment.</p>\r\n<h2>18. When Should You Consult a Gynecologist?</h2>\r\n<p>You should consult a gynecologist if your periods frequently become irregular, you miss periods unexpectedly, experience severe menstrual pain, have unusually heavy bleeding, or notice bleeding between periods or after sexual intercourse. Seek urgent medical attention if heavy bleeding is accompanied by fainting, severe dizziness, chest pain, or difficulty breathing. Severe pelvic pain, especially when pregnancy is possible, also requires prompt medical evaluation.</p>\r\n<h2>19. Personalized Menstrual Health Care by Dr. Paridhi Chaudhary</h2>\r\n<p>Every woman has different menstrual health needs, and period-related problems require proper evaluation before treatment. Dr. Paridhi Chaudhary provides personalized gynecological consultation in Rohini, Delhi, for irregular periods, painful menstruation, heavy menstrual bleeding, missed periods, and other menstrual concerns. Her approach focuses on understanding individual symptoms, identifying possible underlying causes, recommending appropriate investigations, and guiding women towards suitable treatment and long-term menstrual health management.</p>\r\n<h2>Final Thoughts</h2>\r\n<p>Irregular periods, painful menstruation, and heavy bleeding are common concerns, but frequent or severe symptoms should never be ignored. Understanding your menstrual cycle, identifying possible hormonal or gynecological conditions, and seeking timely medical advice can help protect your reproductive health. With appropriate diagnosis, personalized treatment, and regular follow-ups, many period-related problems can be effectively managed. Consult Dr. Paridhi Chaudhary in Rohini, Delhi, for professional guidance and comprehensive menstrual health care.</p>\r\n<h2>Disclaimer</h2>\r\n<p>This article is intended for educational and informational purposes only and does not replace professional medical advice, diagnosis, or treatment. Menstrual symptoms can have different underlying causes, and treatment should be based on individual medical evaluation. Always consult a qualified gynecologist for personalized advice and care.</p>', 'Provides diagnosis and treatment for irregular, painful, and heavy periods.', '', 'branch/assets/subcat/img1793342954.webp', '', '', '', '', '', 1, 5),
(91, '102', 'Adolescent girls health related problem', 'adolescent-girls-health-related-problem', '<h1>Adolescent girls health related Treatment</h1>\r\n<h1>Adolescent Girls\' Health Problems and Treatment in Rohini, Delhi</h1>\r\n<p>Adolescence is an important stage in a girl\'s life when the body undergoes several physical, emotional, and hormonal changes. During this period, girls may experience concerns related to menstrual health, puberty, hormonal imbalances, acne, vaginal hygiene, and reproductive development. Understanding these changes and receiving appropriate medical guidance can help adolescent girls maintain good health and confidence. Dr. Paridhi Chaudhary provides personalized gynecological care and guidance for adolescent girls in Rohini, Delhi, focusing on menstrual health, puberty-related concerns, hormonal changes, and overall reproductive well-being.</p>\r\n<h2>1. Understanding Adolescent Girls\' Health</h2>\r\n<p>Adolescence generally refers to the age group between 10 and 19 years. During this stage, girls experience puberty, which involves physical growth, reproductive development, and changes in hormone levels. The beginning of menstruation, breast development, changes in body shape, and emotional variations are all part of normal development. Proper nutrition, hygiene, emotional support, and timely medical guidance are important during this phase.</p>\r\n<h2>2. Common Health Problems in Adolescent Girls</h2>\r\n<p>Adolescent girls may experience various health concerns as their bodies develop. Common problems include irregular periods, painful menstruation, heavy menstrual bleeding, delayed puberty, acne, excessive facial hair growth, vaginal infections, and hormonal imbalances. Some girls may also experience nutritional deficiencies, stress, sleep disturbances, and emotional challenges. Identifying persistent or unusual symptoms early can help prevent complications and support healthy development.</p>\r\n<h2>3. Understanding Puberty and Hormonal Changes</h2>\r\n<p>Puberty is the natural process through which a girl\'s body develops into an adult reproductive system. Hormones such as estrogen and progesterone play important roles in physical growth, breast development, menstrual cycle regulation, and reproductive health. The timing and pace of puberty can vary from one girl to another. Medical evaluation may be necessary if puberty begins unusually early, is significantly delayed, or involves concerning symptoms.</p>\r\n<h2>4. First Periods and Menstrual Health</h2>\r\n<p>The first menstrual period, known as menarche, is an important milestone in adolescent development. Most girls experience their first period between the ages of 10 and 15, although individual variations are common. During the initial years after menarche, menstrual cycles may be irregular because the hormonal system is still developing. Understanding menstrual patterns and maintaining proper menstrual hygiene can help girls manage this transition comfortably.</p>\r\n<h2>5. Irregular Periods in Teenage Girls</h2>\r\n<p>Irregular periods are relatively common during the first few years after menstruation begins. Hormonal development, stress, significant weight changes, excessive exercise, thyroid disorders, and PCOS may contribute to irregular menstrual cycles. However, very long gaps between periods, frequent missed periods, or persistent irregularity should be evaluated by a gynecologist to identify possible underlying causes.</p>\r\n<h2>6. Painful Periods and Menstrual Cramps</h2>\r\n<p>Many adolescent girls experience menstrual cramps, medically known as dysmenorrhea. These cramps usually occur in the lower abdomen and may spread to the back or thighs. Some girls may also experience nausea, headaches, fatigue, or weakness during menstruation. Mild discomfort can often be managed with warmth, adequate rest, and appropriate medical advice. Severe or worsening menstrual pain should be evaluated to rule out conditions such as endometriosis or other gynecological concerns.</p>\r\n<h2>7. Heavy Menstrual Bleeding in Adolescents</h2>\r\n<p>Heavy menstrual bleeding can affect the daily activities, energy levels, and overall health of adolescent girls. It may be associated with hormonal changes, bleeding disorders, or other medical conditions. Symptoms may include prolonged periods, frequent sanitary pad changes, passing large blood clots, and weakness due to iron deficiency. A gynecologist may recommend blood tests and other investigations to identify the cause and provide appropriate treatment.</p>\r\n<h2>8. PCOS and Hormonal Imbalance in Teenage Girls</h2>\r\n<p>Polycystic Ovary Syndrome (PCOS) is a hormonal and metabolic condition that may develop during adolescence. It can cause irregular periods, acne, excessive facial or body hair growth, and weight-related concerns. However, some features of normal puberty may resemble PCOS symptoms, so diagnosis in teenagers requires careful evaluation. A gynecologist considers menstrual history, clinical symptoms, and relevant investigations before recommending a treatment plan.</p>\r\n<h2>9. Acne and Excessive Hair Growth</h2>\r\n<p>Hormonal changes during puberty can increase oil production in the skin and contribute to acne. Some adolescent girls may also notice increased facial or body hair growth due to hormonal changes or conditions such as PCOS. Persistent acne or excessive hair growth accompanied by irregular periods should be discussed with a gynecologist. Treatment may include appropriate skincare guidance and medical management depending on the underlying cause.</p>\r\n<h2>10. Vaginal Hygiene and Genital Health</h2>\r\n<p>Maintaining proper intimate hygiene is important for adolescent girls. The external genital area should be cleaned gently with water, and harsh soaps, scented products, and vaginal douching should be avoided. Wearing clean, breathable cotton underwear and changing menstrual products regularly can support comfort and hygiene. Persistent itching, unusual discharge, unpleasant odor, burning, or genital irritation should be evaluated by a healthcare professional rather than treated through self-medication.</p>\r\n<h2>11. Importance of Nutrition During Adolescence</h2>\r\n<p>Adolescence is a period of rapid physical growth, making proper nutrition especially important. A balanced diet containing fruits, vegetables, whole grains, pulses, dairy products, and protein-rich foods supports healthy development. Iron-rich foods are particularly important because menstruation can increase the risk of iron deficiency. Adequate calcium, vitamin D, and other essential nutrients also support bone health and overall well-being.</p>\r\n<h2>12. Anemia and Iron Deficiency in Teenage Girls</h2>\r\n<p>Iron deficiency is a common nutritional concern among adolescent girls, particularly those who experience heavy menstrual bleeding or have inadequate dietary iron intake. Symptoms may include tiredness, weakness, dizziness, pale skin, and difficulty concentrating. A doctor may recommend blood tests to assess hemoglobin and iron levels. Treatment may involve dietary improvements and iron supplements when medically indicated.</p>\r\n<h2>13. Weight Management and Physical Activity</h2>\r\n<p>Maintaining a healthy lifestyle during adolescence supports physical growth, hormonal health, and emotional well-being. Regular physical activity, balanced meals, adequate hydration, and sufficient sleep are important habits. Extreme dieting, skipping meals, or excessive exercise should be avoided because these habits may affect menstrual health and normal development. Weight-related concerns should be addressed through healthy and age-appropriate medical guidance.</p>\r\n<h2>14. Emotional and Mental Health During Adolescence</h2>\r\n<p>Hormonal changes, academic pressure, social expectations, and physical development can influence emotional well-being during adolescence. Some girls may experience mood changes, stress, anxiety, low confidence, or concerns about body image. A supportive environment, open communication with parents, adequate sleep, and healthy daily routines can help. Persistent emotional distress should be discussed with a qualified healthcare professional or mental health specialist.</p>\r\n<h2>15. Delayed or Early Puberty</h2>\r\n<p>Puberty does not begin at exactly the same age for every girl. However, unusually early or delayed physical development may sometimes indicate an underlying hormonal or medical condition. Early puberty generally refers to the development of secondary sexual characteristics before the age of eight, while delayed puberty may require evaluation if breast development has not started by age 13. A healthcare professional can assess growth patterns, hormone levels, and other factors when necessary.</p>\r\n<h2>16. Common Medical Tests for Adolescent Girls</h2>\r\n<p>Medical investigations depend on the symptoms and health concerns of the adolescent. A gynecologist may recommend blood tests to assess hemoglobin, iron levels, thyroid function, or hormone levels. Additional investigations may be considered for persistent menstrual irregularities, heavy bleeding, suspected PCOS, or delayed puberty. Not every adolescent requires all these tests, and investigations should be selected according to individual medical needs.</p>\r\n<h2>17. When Should Parents Consult a Gynecologist?</h2>\r\n<p>Parents should consider consulting a gynecologist if an adolescent girl experiences very heavy periods, severe menstrual pain, prolonged absence of periods, persistent irregular cycles, unusual vaginal discharge, genital itching, excessive facial hair growth, or concerns about early or delayed puberty. Heavy bleeding accompanied by fainting, severe dizziness, or difficulty breathing requires urgent medical attention. Early consultation can help identify health concerns and provide appropriate guidance.</p>\r\n<h2>18. Importance of Regular Adolescent Health Checkups</h2>\r\n<p>Regular health consultations can help monitor physical development, menstrual health, nutritional status, and overall well-being. These visits also provide an opportunity for adolescent girls to discuss personal health concerns in a comfortable and supportive environment. Age-appropriate education about puberty, menstrual hygiene, nutrition, and reproductive health can help girls develop healthy habits and make informed decisions.</p>\r\n<h2>19. Personalized Adolescent Gynecological Care by Dr. Paridhi Chaudhary</h2>\r\n<p>Every adolescent girl has unique health requirements, especially during the important years of puberty and reproductive development. Dr. Paridhi Chaudhary provides personalized gynecological consultation and guidance in Rohini, Delhi, for menstrual irregularities, painful periods, hormonal changes, PCOS-related concerns, vaginal infections, and other adolescent health problems. Her approach focuses on understanding individual symptoms, recommending appropriate investigations when needed, and providing age-appropriate medical guidance in a comfortable and supportive environment.</p>\r\n<h2>Final Thoughts</h2>\r\n<p>Adolescence is a crucial stage for establishing healthy habits and understanding reproductive health. Menstrual irregularities, hormonal changes, painful periods, nutritional deficiencies, and other concerns should receive appropriate attention when symptoms persist or affect daily life. With proper nutrition, menstrual hygiene, emotional support, and timely medical guidance, adolescent girls can maintain better health and confidence during their growing years. Consult Dr. Paridhi Chaudhary in Rohini, Delhi, for personalized adolescent gynecological care and guidance.</p>\r\n<h2>Disclaimer</h2>\r\n<p>This article is intended for educational and informational purposes only and does not replace professional medical advice, diagnosis, or treatment. Adolescent health concerns should be evaluated according to the girl\'s age, symptoms, and individual medical history. Consult a qualified gynecologist or healthcare professional for personalized medical guidance.</p>', 'Provides care and guidance for adolescent girls’ health, menstrual issues, and hormonal changes.', '', 'branch/assets/subcat/img1793343070.webp', '', '', '', '', '', 1, 6),
(92, '102', 'Cancer Screening and Prevention', 'cancer-screening-and-prevention', '<h1>cancer treatment</h1>\r\n<h1>Cancer Screening and Prevention in Meerut</h1>\r\n<p>Cancer screening and prevention play an important role in women\'s healthcare by helping identify certain cancers and precancerous changes at an early stage. Regular screening, awareness of potential risk factors, and timely medical consultation can support early detection and appropriate treatment. Women may require screening based on their age, medical history, family history, and individual risk factors. Dr. Paridhi Chaudhary provides personalized gynecological consultation and preventive healthcare guidance in Rohini, Delhi, focusing on women\'s cancer awareness, cervical cancer screening, breast health assessment, and early identification of reproductive health concerns.</p>\r\n<h2>1. What Is Cancer Screening?</h2>\r\n<p>Cancer screening refers to medical tests performed to identify certain cancers or precancerous changes before symptoms develop. Screening helps detect abnormalities at an early stage, when further evaluation and treatment may be more effective. In women\'s healthcare, commonly discussed screening tests include cervical cancer screening through Pap tests and HPV testing, along with appropriate breast health assessments. The recommended screening method and frequency depend on age, medical history, and individual risk factors.</p>\r\n<h2>2. Importance of Early Cancer Detection</h2>\r\n<p>Early detection can play an important role in improving cancer treatment outcomes. Some cancers may develop without noticeable symptoms during their early stages. Appropriate screening can identify certain abnormalities before they progress or become more difficult to treat. Regular medical consultations also help women understand their individual risk factors and determine which screening tests are appropriate for them.</p>\r\n<h2>3. Cervical Cancer: Understanding the Disease</h2>\r\n<p>Cervical cancer develops in the cells of the cervix, which is the lower part of the uterus connecting to the vagina. Persistent infection with high-risk types of Human Papillomavirus (HPV) is the major cause of most cervical cancers. Precancerous changes may develop over several years before cancer occurs. Regular screening and appropriate follow-up can help identify these changes and reduce the risk of cervical cancer.</p>\r\n<h2>4. Pap Smear Test for Cervical Cancer Screening</h2>\r\n<p>A Pap smear, also known as a Pap test, is a screening procedure used to identify abnormal or precancerous cells in the cervix. During the test, a healthcare professional gently collects a small sample of cervical cells for laboratory examination. The procedure usually takes only a few minutes and may cause mild temporary discomfort. If abnormal results are detected, additional evaluation may be recommended depending on the findings.</p>\r\n<h2>5. HPV Testing and Its Importance</h2>\r\n<p>Human Papillomavirus (HPV) testing identifies high-risk HPV types associated with cervical cancer. Persistent infection with certain high-risk HPV types can cause changes in cervical cells over time. HPV testing may be recommended alone or together with a Pap test, depending on the woman\'s age, medical history, and applicable screening guidelines. A positive HPV result does not necessarily mean that a woman has cervical cancer, but it may require appropriate follow-up.</p>\r\n<h2>6. HPV Vaccination for Cervical Cancer Prevention</h2>\r\n<p>HPV vaccination helps protect against certain HPV types responsible for most cervical cancers and some other HPV-related diseases. Vaccination is most effective when given before exposure to the virus and is routinely recommended for eligible adolescents. Depending on age and medical guidance, older individuals may also be eligible. HPV vaccination does not replace recommended cervical cancer screening, so women should continue appropriate preventive checkups.</p>\r\n<h2>7. Understanding Breast Cancer Screening</h2>\r\n<p>Breast cancer screening aims to identify breast abnormalities or cancer at an early stage, sometimes before noticeable symptoms develop. Mammography is an important screening tool for eligible women, while additional imaging or clinical assessment may be recommended depending on individual circumstances. Screening recommendations vary according to age, family history, genetic risk, and personal medical history. Women should discuss an appropriate breast screening plan with their healthcare provider.</p>\r\n<h2>8. Common Warning Signs of Breast Cancer</h2>\r\n<p>Women should be aware of unusual changes in their breasts, including a new lump, changes in breast shape or size, nipple discharge that is not breast milk, nipple inversion, skin dimpling, persistent breast pain, or changes in the skin around the nipple. These symptoms do not always indicate cancer, but they should be evaluated by a healthcare professional. Early assessment helps identify the cause and determine whether further investigations are required.</p>\r\n<h2>9. Common Risk Factors for Women\'s Cancers</h2>\r\n<p>Several factors may influence a woman\'s risk of developing certain cancers. These include increasing age, family history of cancer, inherited genetic changes, persistent high-risk HPV infection, smoking, obesity, alcohol consumption, and certain hormonal or reproductive factors. Having one or more risk factors does not mean that cancer will definitely develop. Understanding personal risk factors can help women make informed decisions about screening and preventive care.</p>\r\n<h2>10. Symptoms That Should Not Be Ignored</h2>\r\n<p>Persistent or unusual symptoms should receive medical attention, even if a woman has previously undergone normal screening tests. Warning signs may include abnormal vaginal bleeding, bleeding after sexual intercourse, bleeding after menopause, persistent pelvic pain, unusual vaginal discharge, unexplained weight loss, or ongoing changes in breast appearance. These symptoms can have several causes, and proper medical evaluation is important to identify the underlying condition.</p>\r\n<h2>11. Role of Gynecological Examination in Cancer Prevention</h2>\r\n<p>Regular gynecological consultations provide an opportunity to discuss reproductive health, personal medical history, family history, and possible cancer risk factors. Depending on individual requirements, the gynecologist may recommend cervical screening, HPV testing, breast health assessment, or additional investigations. These consultations also help women understand the importance of vaccination, healthy lifestyle habits, and timely follow-up of abnormal screening results.</p>\r\n<h2>12. Lifestyle Habits That Support Cancer Prevention</h2>\r\n<p>Healthy lifestyle habits may help reduce the risk of certain cancers and support overall well-being. Maintaining a healthy weight, eating a balanced diet, engaging in regular physical activity, avoiding tobacco, limiting alcohol consumption, and following recommended vaccination guidelines are important preventive measures. These habits cannot prevent every cancer, but they contribute to better long-term health.</p>\r\n<h2>13. Importance of Family History in Cancer Screening</h2>\r\n<p>Family history can play an important role in assessing a woman\'s cancer risk. Women with close relatives who have experienced breast, ovarian, uterine, or other cancers may require a more individualized risk assessment. Certain inherited genetic changes, including BRCA1 and BRCA2 mutations, can increase the risk of breast and ovarian cancers. Depending on family history and clinical findings, genetic counselling or additional screening may be recommended.</p>\r\n<h2>14. What Happens After an Abnormal Screening Result?</h2>\r\n<p>An abnormal screening result does not always mean that cancer is present. It may indicate minor cellular changes, an HPV infection, or another finding that requires further evaluation. Depending on the result, a doctor may recommend repeat screening, colposcopy, biopsy, imaging, or referral to an appropriate specialist. Following the recommended medical advice and completing follow-up investigations are important for accurate diagnosis and timely management.</p>\r\n<h2>15. Cervical Cancer Prevention Through Regular Screening</h2>\r\n<p>Cervical cancer prevention involves a combination of HPV vaccination, recommended cervical screening, and timely management of precancerous changes. Screening intervals depend on the test used, age, previous results, and applicable medical guidelines. Women should not wait for symptoms to appear before discussing cervical cancer screening with their gynecologist. Regular follow-up is particularly important for those with previous abnormal test results or other risk factors.</p>\r\n<h2>16. Importance of Screening After Menopause</h2>\r\n<p>Women should continue to pay attention to their health after menopause. Any vaginal bleeding after menopause requires prompt medical evaluation because it may sometimes be associated with abnormalities of the uterine lining or other gynecological conditions. Cervical and breast cancer screening should also continue according to age, previous screening results, overall health, and individual risk factors. A gynecologist can guide women regarding appropriate preventive care during this stage of life.</p>\r\n<h2>17. When Should You Consult a Gynecologist?</h2>\r\n<p>Consult a gynecologist to understand which cancer screening tests are appropriate for your age and medical history. Women with a family history of breast or ovarian cancer, previous abnormal Pap smear results, persistent HPV infection, or unusual reproductive health symptoms may require individualized evaluation. Seek prompt medical attention for abnormal vaginal bleeding, a new breast lump, persistent pelvic pain, or other unexplained changes. Timely consultation helps determine whether additional investigations are needed.</p>\r\n<h2>18. Personalized Cancer Screening and Prevention by Dr. Paridhi Chaudhary</h2>\r\n<p>Preventive healthcare should be based on each woman\'s individual health requirements, age, and medical history. Dr. Paridhi Chaudhary provides personalized gynecological consultation and preventive care in Rohini, Delhi, focusing on cervical cancer screening, HPV-related health concerns, breast health awareness, and early evaluation of suspicious gynecological symptoms. Her approach emphasizes patient education, appropriate screening recommendations, timely investigations, and guidance regarding preventive healthcare. Women can discuss their concerns and understand the screening options suitable for their individual needs.</p>\r\n<h2>Final Thoughts</h2>\r\n<p>Cancer screening and prevention are essential components of long-term women\'s healthcare. Regular gynecological consultations, appropriate cervical and breast cancer screening, HPV vaccination, awareness of warning signs, and healthy lifestyle habits can support early detection and reduce the risk of certain cancers. Understanding personal risk factors and following recommended medical guidance can help women take proactive steps towards better health. Consult Dr. Paridhi Chaudhary in Rohini, Delhi, for personalized cancer screening guidance and preventive gynecological care.</p>\r\n<h2>Disclaimer</h2>\r\n<p>This article is intended for educational and informational purposes only and does not replace professional medical advice, diagnosis, or treatment. Cancer screening recommendations vary according to age, medical history, family history, and individual risk factors. Screening tests cannot detect every cancer, and abnormal results require appropriate medical follow-up. Consult a qualified healthcare professional for personalized screening and preventive care.</p>', 'Provides early cancer screening, detection, and preventive care for better health.', '', 'branch/assets/subcat/img1793343256.webp', '', '', '', '', '', 1, 7);
INSERT INTO `sub_cat` (`id`, `cat_id`, `sc_name`, `sc_url`, `sc_desc`, `sdesc`, `features`, `featured_img`, `featured_img1`, `icon_img`, `meta_title`, `meta_keywords`, `meta_desc`, `status`, `order`) VALUES
(93, '102', 'Laparascopic Hysterectomy and Open Surgical Hysterectomy', 'laparascopic-hysterectomy-and-open-surgical-hysterectomy', '<h1>Laparascopic Hysterectomy</h1>\r\n<h1>Laparoscopic Hysterectomy and Open Surgical Hysterectomy in Meerut</h1>\r\n<p>Hysterectomy is a surgical procedure performed to remove the uterus and may be recommended for women experiencing certain gynecological conditions that do not respond adequately to other treatments. Conditions such as uterine fibroids, heavy menstrual bleeding, adenomyosis, endometriosis, uterine prolapse, and certain gynecological cancers may require consideration of hysterectomy. Depending on the patient\'s medical condition, age, reproductive plans, and overall health, the procedure can be performed using laparoscopic or open surgical techniques. Dr. Paridhi Chaudhary provides personalized gynecological consultation and surgical treatment guidance in Rohini, Delhi, helping women understand their treatment options and make informed decisions about their reproductive health.</p>\r\n<h2>1. What Is Hysterectomy?</h2>\r\n<p>Hysterectomy is a surgical procedure in which the uterus is removed. After a hysterectomy, a woman will no longer have menstrual periods and cannot carry a pregnancy. The procedure may involve removal of the uterus alone or, in certain medical situations, removal of additional reproductive structures such as the cervix, fallopian tubes, or ovaries. The type of hysterectomy is selected according to the underlying condition and individual medical requirements.</p>\r\n<h2>2. What Are the Different Types of Hysterectomy?</h2>\r\n<p>There are different types of hysterectomy depending on how much reproductive tissue needs to be removed. A total hysterectomy involves removing the uterus and cervix, while a subtotal or supracervical hysterectomy involves removing the uterus while leaving the cervix in place. A radical hysterectomy involves removal of the uterus, cervix, surrounding tissues, and sometimes nearby lymph nodes, usually in selected cancer-related cases. The appropriate procedure depends on the diagnosis and treatment goals.</p>\r\n<h2>3. What Is Laparoscopic Hysterectomy?</h2>\r\n<p>Laparoscopic hysterectomy is a minimally invasive surgical procedure in which the uterus is removed through small incisions in the abdomen. A thin instrument with a camera, known as a laparoscope, allows the surgeon to view the internal organs on a monitor. Specialized surgical instruments are used to perform the procedure. Depending on the surgical technique, the uterus may be removed through the vagina or through one of the small abdominal incisions.</p>\r\n<h2>4. Benefits of Laparoscopic Hysterectomy</h2>\r\n<p>When clinically appropriate, laparoscopic hysterectomy may offer several advantages over traditional open surgery. These may include smaller abdominal incisions, less postoperative pain, reduced blood loss, shorter hospital stays, and faster recovery. It may also result in smaller visible scars. However, the suitability and benefits of laparoscopic surgery depend on the patient\'s condition, the size of the uterus, previous abdominal surgeries, and the surgeon\'s assessment.</p>\r\n<h2>5. What Is Open Surgical Hysterectomy?</h2>\r\n<p>Open surgical hysterectomy, also known as abdominal hysterectomy, is a procedure in which the uterus is removed through an incision in the lower abdomen. It may be recommended when the uterus is significantly enlarged, there are complex pelvic conditions, extensive adhesions are present, or a minimally invasive approach is not suitable. Open surgery allows the surgeon direct access to the pelvic organs and may be necessary in certain complicated cases.</p>\r\n<h2>6. When Is Open Hysterectomy Recommended?</h2>\r\n<p>Open hysterectomy may be recommended for women with large uterine fibroids, complex endometriosis, extensive pelvic adhesions, certain suspicious pelvic masses, or other conditions requiring direct surgical access. It may also be considered when laparoscopic surgery is not medically appropriate or safe. The final decision is made after reviewing the patient\'s medical history, examination findings, imaging reports, and overall surgical risk.</p>\r\n<h2>7. Common Reasons for Hysterectomy</h2>\r\n<p>Hysterectomy may be recommended for different gynecological conditions when other treatment options are ineffective, unsuitable, or insufficient. Common reasons include symptomatic uterine fibroids, persistent heavy menstrual bleeding, adenomyosis, severe endometriosis, uterine prolapse, and certain precancerous or cancerous conditions. The decision should be based on a detailed medical evaluation and discussion of alternative treatment options.</p>\r\n<h2>8. Hysterectomy for Uterine Fibroids</h2>\r\n<p>Uterine fibroids are non-cancerous growths that develop in or around the uterus. Some women experience symptoms such as heavy menstrual bleeding, pelvic pressure, lower abdominal discomfort, frequent urination, and difficulty with daily activities. Treatment depends on the size, number, and location of fibroids, as well as the patient\'s age and pregnancy plans. Hysterectomy may be considered when fibroids cause significant symptoms and other suitable treatments have not provided relief, particularly when future pregnancy is not desired.</p>\r\n<h2>9. Hysterectomy for Heavy Menstrual Bleeding</h2>\r\n<p>Persistent heavy menstrual bleeding can affect a woman\'s quality of life and may lead to iron-deficiency anemia. It can occur due to fibroids, adenomyosis, hormonal disturbances, or other uterine conditions. Treatment options may include medications, hormonal therapy, or certain minimally invasive procedures. Hysterectomy may be considered when bleeding is severe, persistent, and does not respond to appropriate alternative treatments. A thorough evaluation is necessary before recommending surgery.</p>\r\n<h2>10. Hysterectomy for Adenomyosis and Endometriosis</h2>\r\n<p>Adenomyosis occurs when tissue similar to the uterine lining grows within the muscular wall of the uterus, potentially causing painful periods, heavy bleeding, and pelvic discomfort. Endometriosis occurs when tissue similar to the uterine lining grows outside the uterus and may cause chronic pelvic pain, painful menstruation, and fertility problems. Depending on the severity of symptoms, previous treatments, and reproductive plans, hysterectomy may be considered in selected cases. However, hysterectomy does not necessarily cure endometriosis, particularly if disease remains outside the uterus.</p>\r\n<h2>11. How Is a Patient Evaluated Before Hysterectomy?</h2>\r\n<p>Before recommending hysterectomy, the gynecologist reviews the patient\'s symptoms, menstrual history, medical conditions, previous surgeries, and reproductive plans. A pelvic examination and investigations such as ultrasound, blood tests, or other imaging may be recommended depending on the condition. In women with abnormal uterine bleeding, additional evaluation of the uterine lining may be necessary. This assessment helps determine whether surgery is required and which surgical approach may be appropriate.</p>\r\n<h2>12. How Is Laparoscopic Hysterectomy Performed?</h2>\r\n<p>Laparoscopic hysterectomy is generally performed under general anesthesia. The surgeon makes small incisions in the abdomen and inserts a laparoscope and specialized surgical instruments. The uterus is carefully separated from surrounding tissues and blood vessels before being removed using the planned surgical technique. The incisions are then closed, and the patient is monitored during recovery. The exact procedure depends on the type of hysterectomy and the patient\'s medical condition.</p>\r\n<h2>13. How Is Open Surgical Hysterectomy Performed?</h2>\r\n<p>Open hysterectomy is performed under anesthesia through an incision in the lower abdomen. The surgeon carefully accesses the uterus, separates it from the surrounding structures, and removes it according to the planned procedure. Blood vessels are controlled, and the surgical incision is closed after completing the operation. The patient is monitored after surgery to manage pain, assess recovery, and identify any possible complications.</p>\r\n<h2>14. Difference Between Laparoscopic and Open Hysterectomy</h2>\r\n<p>The main difference between laparoscopic and open hysterectomy is the surgical approach used to remove the uterus. Laparoscopic hysterectomy involves small abdominal incisions and the use of a camera and specialized instruments, whereas open hysterectomy requires a larger abdominal incision. Laparoscopic surgery generally allows faster recovery and shorter hospital stays when suitable. Open surgery may be more appropriate for certain complex cases. Both procedures have potential benefits and risks, and the choice should be based on individual medical needs.</p>\r\n<h2>15. Recovery After Laparoscopic Hysterectomy</h2>\r\n<p>Recovery after laparoscopic hysterectomy is generally quicker than after open abdominal surgery, although recovery time varies between patients. Mild abdominal discomfort, tiredness, bloating, and temporary changes in bowel habits may occur after surgery. Patients are usually encouraged to begin gentle movement as advised by their healthcare team. Following medication instructions, maintaining incision hygiene, avoiding heavy lifting, and attending follow-up appointments are important for proper healing.</p>\r\n<h2>16. Recovery After Open Surgical Hysterectomy</h2>\r\n<p>Recovery after open hysterectomy usually takes longer because the procedure involves a larger abdominal incision. Patients may experience postoperative pain, fatigue, and temporary difficulty with movement. Adequate rest, prescribed medications, wound care, and gradual physical activity are important during recovery. Heavy lifting and strenuous activities should be avoided until the gynecologist confirms that it is safe to resume them.</p>\r\n<h2>17. Possible Risks and Complications of Hysterectomy</h2>\r\n<p>Like any major surgery, hysterectomy carries certain risks. These may include bleeding, infection, blood clots, injury to nearby organs such as the bladder, bowel or ureters, anesthesia-related complications, and wound-healing problems. The likelihood of complications depends on the patient\'s health, underlying condition, and type of surgery. Appropriate preoperative assessment, surgical planning, and postoperative monitoring help reduce and manage potential risks.</p>\r\n<h2>18. What Happens to Hormones After Hysterectomy?</h2>\r\n<p>Hormonal changes after hysterectomy depend largely on whether the ovaries are removed. If the ovaries are preserved, they usually continue producing hormones, although menstrual periods stop because the uterus has been removed. If both ovaries are removed before natural menopause, the woman experiences surgical menopause, which may cause symptoms such as hot flashes, night sweats, mood changes, and vaginal dryness. The benefits and risks of ovarian removal should be discussed carefully before surgery.</p>\r\n<h2>19. Life After Hysterectomy</h2>\r\n<p>Most women can return to their regular daily activities gradually after recovering from hysterectomy. Menstrual periods stop permanently, and pregnancy is no longer possible. Women may notice improvements in symptoms such as heavy bleeding and uterine-related pelvic pain when the underlying condition has been successfully treated. Follow-up appointments, healthy lifestyle habits, and guidance regarding physical and emotional recovery are important after surgery.</p>\r\n<h2>20. Importance of Choosing the Right Surgical Approach</h2>\r\n<p>Selecting between laparoscopic and open hysterectomy requires careful consideration of the patient\'s diagnosis, uterus size, previous abdominal surgeries, general health, and surgical requirements. Minimally invasive surgery may be suitable for many women, while open surgery remains an important option in complex situations. The safest approach is the one that provides appropriate treatment while minimizing risks for the individual patient.</p>\r\n<h2>21. Personalized Hysterectomy Care by Dr. Paridhi Chaudhary</h2>\r\n<p>Every woman has different gynecological health needs, and hysterectomy treatment requires careful medical evaluation and individualized surgical planning. Dr. Paridhi Chaudhary provides gynecological consultation and guidance in Rohini, Delhi, for women experiencing uterine fibroids, heavy menstrual bleeding, adenomyosis, endometriosis, and other conditions that may require hysterectomy. Patients receive guidance regarding laparoscopic and open surgical approaches, possible benefits and risks, preoperative evaluation, and postoperative recovery according to their individual medical condition.</p>\r\n<h2>22. When Should You Consult a Gynecologist?</h2>\r\n<p>Consult a gynecologist if you experience persistent heavy menstrual bleeding, severe pelvic pain, painful periods, pressure in the lower abdomen, or symptoms related to uterine fibroids or prolapse. Women who have been advised to undergo hysterectomy may also seek consultation to understand the available surgical approaches and alternatives. Early evaluation helps identify the underlying condition and determine the most appropriate treatment plan.</p>\r\n<h2>Final Thoughts</h2>\r\n<p>Laparoscopic and open surgical hysterectomy are important treatment options for managing certain gynecological conditions. While laparoscopic surgery may offer smaller incisions and faster recovery for suitable patients, open surgery remains necessary in some complex medical situations. The decision to undergo hysterectomy and the choice of surgical approach should always be based on individual health requirements, medical evaluation, and discussion of available alternatives. Consult Dr. Paridhi Chaudhary in Rohini, Delhi, for personalized gynecological guidance and appropriate hysterectomy treatment options.</p>\r\n<h2>Disclaimer</h2>\r\n<p>This article is intended for educational and informational purposes only and does not replace professional medical advice, diagnosis, or treatment. Hysterectomy is a major surgical procedure and is not suitable for every gynecological condition. The need for surgery, type of procedure, and treatment approach should be determined by a qualified gynecologist after a detailed medical evaluation. Always discuss potential benefits, risks, alternatives, and future health considerations with your healthcare provider.</p>', 'Provides laparoscopic and open surgical hysterectomy with expert care and safe treatment.', '', 'branch/assets/subcat/img1793343377.webp', '', '', '', '', '', 1, 8);

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

--
-- Dumping data for table `web_banner`
--

INSERT INTO `web_banner` (`id`, `wb_img`, `wb_heading`, `wb_subheading`, `featuredimg`, `wb_order`, `category_id`, `status`) VALUES
(17, 'branch/assets/banner/img1793440102.webp', '', '', '', 2, 0, 1),
(18, 'branch/assets/banner/img1793440152.webp', '', '', '', 1, 0, 1),
(19, 'branch/assets/banner/img1793440169.webp', '', '', '', 3, 0, 1);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `youtube`
--
ALTER TABLE `youtube`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
