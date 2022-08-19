-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20220817.de1eb66dbf
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 19, 2022 at 03:16 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `snake`
--

-- --------------------------------------------------------

--
-- Table structure for table `algo`
--

CREATE TABLE `algo` (
  `iId` int(10) NOT NULL,
  `snake` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `headshape` varchar(255) NOT NULL,
  `pattern` varchar(255) NOT NULL,
  `eyeshape` varchar(255) NOT NULL,
  `symptoms` varchar(255) NOT NULL,
  `dCreatedDate` datetime NOT NULL DEFAULT current_timestamp(),
  `vStatus` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `algo`
--

INSERT INTO `algo` (`iId`, `snake`, `type`, `color`, `headshape`, `pattern`, `eyeshape`, `symptoms`, `dCreatedDate`, `vStatus`) VALUES
(1, 'cobra', 'venomous', 'black', 'triangular spade shaped', 'Body color is yellowish white', 'round', 'redness', '0000-00-00 00:00:00', '1'),
(2, 'cobra', 'venomous', 'black', 'triangular spade shaped', 'Body color is yellowish white', 'round', 'swelling', '0000-00-00 00:00:00', '1'),
(3, 'cobra', 'venomous', 'black', 'triangular spade shaped', 'Body color is yellowish white', 'round', 'severe pain', '0000-00-00 00:00:00', '1'),
(4, 'cobra', 'venomous', 'black', 'triangular spade shaped', 'Body color is yellowish white', 'round', 'breathing problem', '0000-00-00 00:00:00', '1'),
(5, 'cobra', 'venomous', 'black', 'triangular spade shaped', 'Body color is yellowish white', 'round', 'vomiting', '0000-00-00 00:00:00', '1'),
(6, 'cobra', 'venomous', 'black', 'triangular spade shaped', 'Body color is yellowish white', 'round', 'kidney failure', '0000-00-00 00:00:00', '1'),
(7, 'cobra', 'venomous', 'dark brown', 'triangular spade shaped', 'Body color is yellowish white', 'round', 'redness', '0000-00-00 00:00:00', '1'),
(8, 'cobra', 'venomous', 'dark brown', 'triangular spade shaped', 'Body color is yellowish white', 'round', 'swelling', '0000-00-00 00:00:00', '1'),
(9, 'cobra', 'venomous', 'dark brown', 'triangular spade shaped', 'Body color is yellowish white', 'round', 'severe pain', '0000-00-00 00:00:00', '1'),
(10, 'cobra', 'venomous', 'dark brown', 'triangular spade shaped', 'Body color is yellowish white', 'round', 'breathing problem', '0000-00-00 00:00:00', '1'),
(11, 'cobra', 'venomous', 'dark brown', 'triangular spade shaped', 'Body color is yellowish white', 'round', 'vomiting', '0000-00-00 00:00:00', '1'),
(12, 'cobra', 'venomous', 'dark brown', 'triangular spade shaped', 'Body color is yellowish white', 'round', 'kidney failure', '0000-00-00 00:00:00', '1'),
(13, 'king cobra', 'venomous', 'yellow', 'roughly wedged shaped head broad and flattened', 'chevron pattern on back', 'round', 'blurred vision', '0000-00-00 00:00:00', '1'),
(14, 'king cobra', 'venomous', 'yellow', 'roughly wedged shaped head broad and flattened', 'chevron pattern on back', 'round', 'speech problem', '0000-00-00 00:00:00', '1'),
(15, 'king cobra', 'venomous', 'yellow', 'roughly wedged shaped head broad and flattened', 'chevron pattern on back', 'round', 'sudden loss of consciousness', '0000-00-00 00:00:00', '1'),
(16, 'king cobra', 'venomous', 'yellow', 'roughly wedged shaped head broad and flattened', 'chevron pattern on back', 'round', 'headache', '0000-00-00 00:00:00', '1'),
(17, 'king cobra', 'venomous', 'yellow', 'roughly wedged shaped head broad and flattened', 'chevron pattern on back', 'round', 'respiratory paralysis', '0000-00-00 00:00:00', '1'),
(18, 'king cobra', 'venomous', 'green', 'roughly wedged shaped head broad and flattened', 'chevron pattern on back', 'round', 'blurred vision', '0000-00-00 00:00:00', '1'),
(19, 'king cobra', 'venomous', 'green', 'roughly wedged shaped head broad and flattened', 'chevron pattern on back', 'round', 'speech problem', '0000-00-00 00:00:00', '1'),
(20, 'king cobra', 'venomous', 'green', 'roughly wedged shaped head broad and flattened', 'chevron pattern on back', 'round', 'sudden loss of consciousness', '0000-00-00 00:00:00', '1'),
(21, 'king cobra', 'venomous', 'green', 'roughly wedged shaped head broad and flattened', 'chevron pattern on back', 'round', 'headache', '0000-00-00 00:00:00', '1'),
(22, 'king cobra', 'venomous', 'green', 'roughly wedged shaped head broad and flattened', 'chevron pattern on back', 'round', 'respiratory paralysis', '0000-00-00 00:00:00', '1'),
(23, 'king cobra', 'venomous', 'brown black white crossbars', 'roughly wedged shaped head broad and flattened', 'chevron pattern on back', 'round', 'blurred vision', '0000-00-00 00:00:00', '1'),
(24, 'king cobra', 'venomous', 'brown black white crossbars', 'roughly wedged shaped head broad and flattened', 'chevron pattern on back', 'round', 'speech problem', '0000-00-00 00:00:00', '1'),
(25, 'king cobra', 'venomous', 'brown black white crossbars', 'roughly wedged shaped head broad and flattened', 'chevron pattern on back', 'round', 'sudden loss of consciousness', '0000-00-00 00:00:00', '1'),
(26, 'king cobra', 'venomous', 'brown black white crossbars', 'roughly wedged shaped head broad and flattened', 'chevron pattern on back', 'round', 'headache', '0000-00-00 00:00:00', '1'),
(27, 'king cobra', 'venomous', 'brown black white crossbars', 'roughly wedged shaped head broad and flattened', 'chevron pattern on back', 'round', 'respiratory paralysis', '0000-00-00 00:00:00', '1'),
(28, 'saw scaled viper', 'venomous', 'pale buff', 'pear shaped', 'whitish spots edged with dark brown', 'elliptical', 'blood clothing', '0000-00-00 00:00:00', '1'),
(29, 'saw scaled viper', 'venomous', 'pale buff', 'pear shaped', 'whitish spots edged with dark brown', 'elliptical', 'abdominal pain', '0000-00-00 00:00:00', '1'),
(30, 'saw scaled viper', 'venomous', 'pale buff', 'pear shaped', 'whitish spots edged with dark brown', 'elliptical', 'vomiting', '0000-00-00 00:00:00', '1'),
(31, 'saw scaled viper', 'venomous', 'pale buff', 'pear shaped', 'whitish spots edged with dark brown', 'elliptical', 'kidney failure', '0000-00-00 00:00:00', '1'),
(32, 'saw scaled viper', 'venomous', 'pale buff', 'pear shaped', 'whitish spots edged with dark brown', 'elliptical', 'internal bleeding', '0000-00-00 00:00:00', '1'),
(33, 'saw scaled viper', 'venomous', 'greyish', 'pear shaped', 'whitish spots edged with dark brown', 'elliptical', 'blood clothing', '0000-00-00 00:00:00', '1'),
(34, 'saw scaled viper', 'venomous', 'greyish', 'pear shaped', 'whitish spots edged with dark brown', 'elliptical', 'abdominal pain', '0000-00-00 00:00:00', '1'),
(35, 'saw scaled viper', 'venomous', 'greyish', 'pear shaped', 'whitish spots edged with dark brown', 'elliptical', 'vomiting', '0000-00-00 00:00:00', '1'),
(36, 'saw scaled viper', 'venomous', 'greyish', 'pear shaped', 'whitish spots edged with dark brown', 'elliptical', 'kidney failure', '0000-00-00 00:00:00', '1'),
(37, 'saw scaled viper', 'venomous', 'greyish', 'pear shaped', 'whitish spots edged with dark brown', 'elliptical', 'internal bleeding', '0000-00-00 00:00:00', '1'),
(38, 'saw scaled viper', 'venomous', 'olive', 'pear shaped', 'whitish spots edged with dark brown', 'elliptical', 'blood clothing', '0000-00-00 00:00:00', '1'),
(39, 'saw scaled viper', 'venomous', 'olive', 'pear shaped', 'whitish spots edged with dark brown', 'elliptical', 'abdominal pain', '0000-00-00 00:00:00', '1'),
(40, 'saw scaled viper', 'venomous', 'olive', 'pear shaped', 'whitish spots edged with dark brown', 'elliptical', 'vomiting', '0000-00-00 00:00:00', '1'),
(41, 'saw scaled viper', 'venomous', 'olive', 'pear shaped', 'whitish spots edged with dark brown', 'elliptical', 'kidney failure', '0000-00-00 00:00:00', '1'),
(42, 'saw scaled viper', 'venomous', 'olive', 'pear shaped', 'whitish spots edged with dark brown', 'elliptical', 'internal bleeding', '0000-00-00 00:00:00', '1'),
(43, 'saw scaled viper', 'venomous', 'pale brown', 'pear shaped', 'whitish spots edged with dark brown', 'elliptical', 'blood clothing', '0000-00-00 00:00:00', '1'),
(44, 'saw scaled viper', 'venomous', 'pale brown', 'pear shaped', 'whitish spots edged with dark brown', 'elliptical', 'abdominal pain', '0000-00-00 00:00:00', '1'),
(45, 'saw scaled viper', 'venomous', 'pale brown', 'pear shaped', 'whitish spots edged with dark brown', 'elliptical', 'vomiting', '0000-00-00 00:00:00', '1'),
(46, 'saw scaled viper', 'venomous', 'pale brown', 'pear shaped', 'whitish spots edged with dark brown', 'elliptical', 'kidney failure', '0000-00-00 00:00:00', '1'),
(47, 'saw scaled viper', 'venomous', 'pale brown', 'pear shaped', 'whitish spots edged with dark brown', 'elliptical', 'internal bleeding', '0000-00-00 00:00:00', '1'),
(48, 'russel viper', 'venomous', 'yellow', 'flattened and triangular', 'three series of dark brown spots on the body surrounded by black rings', 'elliptical', 'severe pain', '0000-00-00 00:00:00', '1'),
(49, 'russel viper', 'venomous', 'yellow', 'flattened and triangular', 'three series of dark brown spots on the body surrounded by black rings', 'elliptical', 'swelling', '0000-00-00 00:00:00', '1'),
(50, 'russel viper', 'venomous', 'yellow', 'flattened and triangular', 'three series of dark brown spots on the body surrounded by black rings', 'elliptical', 'lower back pain', '0000-00-00 00:00:00', '1'),
(51, 'russel viper', 'venomous', 'yellow', 'flattened and triangular', 'three series of dark brown spots on the body surrounded by black rings', 'elliptical', 'feeling sleepy', '0000-00-00 00:00:00', '1'),
(52, 'russel viper', 'venomous', 'yellow', 'flattened and triangular', 'three series of dark brown spots on the body surrounded by black rings', 'elliptical', 'bleeding from distant sites', '0000-00-00 00:00:00', '1'),
(53, 'russel viper', 'venomous', 'yellow', 'flattened and triangular', 'three series of dark brown spots on the body surrounded by black rings', 'elliptical', 'vomiting', '0000-00-00 00:00:00', '1'),
(54, 'russel viper', 'venomous', 'tan', 'flattened and triangular', 'three series of dark brown spots on the body surrounded by black rings', 'elliptical', 'severe pain', '0000-00-00 00:00:00', '1'),
(55, 'russel viper', 'venomous', 'tan', 'flattened and triangular', 'three series of dark brown spots on the body surrounded by black rings', 'elliptical', 'swelling', '0000-00-00 00:00:00', '1'),
(56, 'russel viper', 'venomous', 'tan', 'flattened and triangular', 'three series of dark brown spots on the body surrounded by black rings', 'elliptical', 'lower back pain', '0000-00-00 00:00:00', '1'),
(57, 'russel viper', 'venomous', 'tan', 'flattened and triangular', 'three series of dark brown spots on the body surrounded by black rings', 'elliptical', 'feeling sleepy', '0000-00-00 00:00:00', '1'),
(58, 'russel viper', 'venomous', 'tan', 'flattened and triangular', 'three series of dark brown spots on the body surrounded by black rings', 'elliptical', 'bleeding from distant sites', '0000-00-00 00:00:00', '1'),
(59, 'russel viper', 'venomous', 'tan', 'flattened and triangular', 'three series of dark brown spots on the body surrounded by black rings', 'elliptical', 'vomiting', '0000-00-00 00:00:00', '1'),
(60, 'russel viper', 'venomous', 'brown', 'flattened and triangular', 'three series of dark brown spots on the body surrounded by black rings', 'elliptical', 'severe pain', '0000-00-00 00:00:00', '1'),
(61, 'russel viper', 'venomous', 'brown', 'flattened and triangular', 'three series of dark brown spots on the body surrounded by black rings', 'elliptical', 'swelling', '0000-00-00 00:00:00', '1'),
(62, 'russel viper', 'venomous', 'brown', 'flattened and triangular', 'three series of dark brown spots on the body surrounded by black rings', 'elliptical', 'lower back pain', '0000-00-00 00:00:00', '1'),
(63, 'russel viper', 'venomous', 'brown', 'flattened and triangular', 'three series of dark brown spots on the body surrounded by black rings', 'elliptical', 'feeling sleepy', '0000-00-00 00:00:00', '1'),
(64, 'russel viper', 'venomous', 'brown', 'flattened and triangular', 'three series of dark brown spots on the body surrounded by black rings', 'elliptical', 'bleeding from distant sites', '0000-00-00 00:00:00', '1'),
(65, 'russel viper', 'venomous', 'brown', 'flattened and triangular', 'three series of dark brown spots on the body surrounded by black rings', 'elliptical', 'vomiting', '0000-00-00 00:00:00', '1'),
(66, 'common krait', 'venomous', 'black', 'flattened', 'white crossbars', 'round', 'respiratory paralysis', '0000-00-00 00:00:00', '1'),
(67, 'common krait', 'venomous', 'black', 'flattened', 'white crossbars', 'round', 'abdominal pain', '0000-00-00 00:00:00', '1'),
(68, 'common krait', 'venomous', 'black', 'flattened', 'white crossbars', 'round', 'vomiting', '0000-00-00 00:00:00', '1'),
(69, 'common krait', 'venomous', 'black', 'flattened', 'white crossbars', 'round', 'facial paralysis', '0000-00-00 00:00:00', '1'),
(70, 'common krait', 'venomous', 'black', 'flattened', 'white crossbars', 'round', 'headache', '0000-00-00 00:00:00', '1'),
(71, 'common krait', 'venomous', 'bluish black', 'flattened', 'white crossbars', 'round', 'respiratory paralysis', '0000-00-00 00:00:00', '1'),
(72, 'common krait', 'venomous', 'bluish black', 'flattened', 'white crossbars', 'round', 'abdominal pain', '0000-00-00 00:00:00', '1'),
(73, 'common krait', 'venomous', 'bluish black', 'flattened', 'white crossbars', 'round', 'vomiting', '0000-00-00 00:00:00', '1'),
(74, 'common krait', 'venomous', 'bluish black', 'flattened', 'white crossbars', 'round', 'facial paralysis', '0000-00-00 00:00:00', '1'),
(75, 'common krait', 'venomous', 'bluish black', 'flattened', 'white crossbars', 'round', 'headache', '0000-00-00 00:00:00', '1'),
(76, 'bamboo pit viper', 'venomous', 'bright green', 'triangular', 'tail is red or yellow in color', 'vertical', 'immediate pain with rapid swelling', '0000-00-00 00:00:00', '1'),
(77, 'bamboo pit viper', 'venomous', 'bright green', 'triangular', 'tail is red or yellow in color', 'vertical', 'swelling in lymph nodes near the bite', '0000-00-00 00:00:00', '1'),
(78, 'bamboo pit viper', 'venomous', 'bright green', 'triangular', 'tail is red or yellow in color', 'vertical', 'changes in heart rate ', '0000-00-00 00:00:00', '1'),
(79, 'bamboo pit viper', 'venomous', 'bright green', 'triangular', 'tail is red or yellow in color', 'vertical', 'breathing problem', '0000-00-00 00:00:00', '1'),
(80, 'bamboo pit viper', 'venomous', 'yellow', 'triangular', 'tail is red or yellow in color', 'vertical', 'immediate pain with rapid swelling', '0000-00-00 00:00:00', '1'),
(81, 'bamboo pit viper', 'venomous', 'yellow', 'triangular', 'tail is red or yellow in color', 'vertical', 'sign of shock', '0000-00-00 00:00:00', '1'),
(82, 'bamboo pit viper', 'venomous', 'yellow', 'triangular', 'tail is red or yellow in color', 'vertical', 'swelling in lymph nodes near the bite', '0000-00-00 00:00:00', '1'),
(83, 'bamboo pit viper', 'venomous', 'yellow', 'triangular', 'tail is red or yellow in color', 'vertical', 'changes in heart rate ', '0000-00-00 00:00:00', '1'),
(84, 'bamboo pit viper', 'venomous', 'yellow', 'triangular', 'tail is red or yellow in color', 'vertical', 'breathing problem', '0000-00-00 00:00:00', '1'),
(85, 'bamboo pit viper', 'venomous', 'greyish', 'triangular', 'tail is red or yellow in color', 'vertical', 'immediate pain with rapid swelling', '0000-00-00 00:00:00', '1'),
(86, 'bamboo pit viper', 'venomous', 'greyish', 'triangular', 'tail is red or yellow in color', 'vertical', 'sign of shock', '0000-00-00 00:00:00', '1'),
(87, 'bamboo pit viper', 'venomous', 'greyish', 'triangular', 'tail is red or yellow in color', 'vertical', 'swelling in lymph nodes near the bite', '0000-00-00 00:00:00', '1'),
(88, 'bamboo pit viper', 'venomous', 'greyish', 'triangular', 'tail is red or yellow in color', 'vertical', 'changes in heart rate ', '0000-00-00 00:00:00', '1'),
(89, 'bamboo pit viper', 'venomous', 'greyish', 'triangular', 'tail is red or yellow in color', 'vertical', 'breathing problem', '0000-00-00 00:00:00', '1'),
(90, 'bamboo pit viper', 'venomous', 'purplish brown', 'triangular', 'tail is red or yellow in color', 'vertical', 'immediate pain with rapid swelling', '0000-00-00 00:00:00', '1'),
(91, 'bamboo pit viper', 'venomous', 'purplish brown', 'triangular', 'tail is red or yellow in color', 'vertical', 'sign of shock', '0000-00-00 00:00:00', '1'),
(92, 'bamboo pit viper', 'venomous', 'purplish brown', 'triangular', 'tail is red or yellow in color', 'vertical', 'swelling in lymph nodes near the bite', '0000-00-00 00:00:00', '1'),
(93, 'bamboo pit viper', 'venomous', 'purplish brown', 'triangular', 'tail is red or yellow in color', 'vertical', 'changes in heart rate ', '0000-00-00 00:00:00', '1'),
(94, 'bamboo pit viper', 'venomous', 'purplish brown', 'triangular', 'tail is red or yellow in color', 'vertical', 'breathing problem', '0000-00-00 00:00:00', '1'),
(95, 'malabar pit viper', 'venomous', 'pale green', 'triangular', 'triangular shaped head with heat sensing pit organs', 'vertically elliptical', 'Severe pain', '0000-00-00 00:00:00', '1'),
(96, 'hump nosed pit viper', 'venomous', 'light brown', 'a wide head the snout is pointed and turned upwards ending in a hump', 'light brown with a double row of darker brown patches along the back', 'vertical', 'sign of shock', '0000-00-00 00:00:00', '1'),
(97, 'hump nosed pit viper', 'venomous', 'light brown', 'a wide head the snout is pointed and turned upwards ending in a hump', 'light brown with a double row of darker brown patches along the back', 'vertical', 'vomiting', '0000-00-00 00:00:00', '1'),
(98, 'hump nosed pit viper', 'venomous', 'light brown', 'a wide head the snout is pointed and turned upwards ending in a hump', 'light brown with a double row of darker brown patches along the back', 'vertical', 'abdominal pain', '0000-00-00 00:00:00', '1'),
(99, 'hump nosed pit viper', 'venomous', 'light brown', 'a wide head the snout is pointed and turned upwards ending in a hump', 'light brown with a double row of darker brown patches along the back', 'vertical', 'diarrhea', '0000-00-00 00:00:00', '1'),
(100, 'striped coral snake', 'venomous', 'warm red', 'curved', 'strips with different color patterns', 'round', 'vomiting', '0000-00-00 00:00:00', '1'),
(101, 'striped coral snake', 'venomous', 'warm red', 'curved', 'strips with different color patterns', 'round', 'paralysis', '0000-00-00 00:00:00', '1'),
(102, 'striped coral snake', 'venomous', 'warm red', 'curved', 'strips with different color patterns', 'round', 'muscle twitching', '0000-00-00 00:00:00', '1'),
(103, 'striped coral snake', 'venomous', 'warm red', 'curved', 'strips with different color patterns', 'round', 'feeling sleepy', '0000-00-00 00:00:00', '1'),
(104, 'striped coral snake', 'venomous', 'warm red', 'curved', 'strips with different color patterns', 'round', 'double vision', '0000-00-00 00:00:00', '1'),
(105, 'striped coral snake', 'venomous', 'warm red', 'curved', 'strips with different color patterns', 'round', 'abnormal sensations', '0000-00-00 00:00:00', '1'),
(106, 'striped coral snake', 'venomous', 'reddish orange', 'curved', 'strips with different color patterns', 'round', 'vomiting', '0000-00-00 00:00:00', '1'),
(107, 'striped coral snake', 'venomous', 'reddish orange', 'curved', 'strips with different color patterns', 'round', 'paralysis', '0000-00-00 00:00:00', '1'),
(108, 'striped coral snake', 'venomous', 'reddish orange', 'curved', 'strips with different color patterns', 'round', 'muscle twitching', '0000-00-00 00:00:00', '1'),
(109, 'striped coral snake', 'venomous', 'reddish orange', 'curved', 'strips with different color patterns', 'round', 'feeling sleepy', '0000-00-00 00:00:00', '1'),
(110, 'striped coral snake', 'venomous', 'reddish orange', 'curved', 'strips with different color patterns', 'round', 'double vision', '0000-00-00 00:00:00', '1'),
(111, 'striped coral snake', 'venomous', 'reddish orange', 'curved', 'strips with different color patterns', 'round', 'abnormal sensations', '0000-00-00 00:00:00', '1'),
(112, 'short sea snake', 'venomous', 'black with grey rings', 'triangular', 'flattened body with a short oarlike tail', 'round', 'dizziness', '0000-00-00 00:00:00', '1'),
(113, 'short sea snake', 'venomous', 'black with grey rings', 'triangular', 'flattened body with a short oarlike tail', 'round', 'respiratory paralysis', '0000-00-00 00:00:00', '1'),
(114, 'short sea snake', 'venomous', 'black with grey rings', 'triangular', 'flattened body with a short oarlike tail', 'round', 'coma', '0000-00-00 00:00:00', '1'),
(115, 'short sea snake', 'venomous', 'black with grey rings', 'triangular', 'flattened body with a short oarlike tail', 'round', 'altered mental status', '0000-00-00 00:00:00', '1'),
(116, 'short sea snake', 'venomous', 'black with grey rings', 'triangular', 'flattened body with a short oarlike tail', 'round', 'speech problem', '0000-00-00 00:00:00', '1'),
(117, 'short sea snake', 'venomous', 'black with grey rings', 'triangular', 'flattened body with a short oarlike tail', 'round', 'weakness', '0000-00-00 00:00:00', '1'),
(118, 'short sea snake', 'venomous', 'black with blue rings', 'triangular', 'flattened body with a short oarlike tail', 'round', 'dizziness', '0000-00-00 00:00:00', '1'),
(119, 'short sea snake', 'venomous', 'black with blue rings', 'triangular', 'flattened body with a short oarlike tail', 'round', 'respiratory paralysis', '0000-00-00 00:00:00', '1'),
(120, 'short sea snake', 'venomous', 'black with blue rings', 'triangular', 'flattened body with a short oarlike tail', 'round', 'coma', '0000-00-00 00:00:00', '1'),
(121, 'short sea snake', 'venomous', 'black with blue rings', 'triangular', 'flattened body with a short oarlike tail', 'round', 'altered mental status', '0000-00-00 00:00:00', '1'),
(122, 'short sea snake', 'venomous', 'black with blue rings', 'triangular', 'flattened body with a short oarlike tail', 'round', 'speech problem', '0000-00-00 00:00:00', '1'),
(123, 'short sea snake', 'venomous', 'black with blue rings', 'triangular', 'flattened body with a short oarlike tail', 'round', 'weakness', '0000-00-00 00:00:00', '1'),
(124, 'short sea snake', 'venomous', 'black with white rings', 'triangular', 'flattened body with a short oarlike tail', 'round', 'dizziness', '0000-00-00 00:00:00', '1'),
(125, 'short sea snake', 'venomous', 'black with white rings', 'triangular', 'flattened body with a short oarlike tail', 'round', 'respiratory paralysis', '0000-00-00 00:00:00', '1'),
(126, 'short sea snake', 'venomous', 'black with white rings', 'triangular', 'flattened body with a short oarlike tail', 'round', 'coma', '0000-00-00 00:00:00', '1'),
(127, 'short sea snake', 'venomous', 'black with white rings', 'triangular', 'flattened body with a short oarlike tail', 'round', 'altered mental status', '0000-00-00 00:00:00', '1'),
(128, 'short sea snake', 'venomous', 'black with white rings', 'triangular', 'flattened body with a short oarlike tail', 'round', 'speech problem', '0000-00-00 00:00:00', '1'),
(129, 'short sea snake', 'venomous', 'black with white rings', 'triangular', 'flattened body with a short oarlike tail', 'round', 'weakness', '0000-00-00 00:00:00', '1'),
(130, 'nosed sea snake', 'venomous', 'greyish green', 'broad', 'flattened body with a short oarlike tail', 'round', 'muscle twitching', '0000-00-00 00:00:00', '1'),
(131, 'nosed sea snake', 'venomous', 'greyish green', 'broad', 'flattened body with a short oarlike tail', 'round', 'blurred vision', '0000-00-00 00:00:00', '1'),
(132, 'nosed sea snake', 'venomous', 'greyish green', 'broad', 'flattened body with a short oarlike tail', 'round', 'joint aches', '0000-00-00 00:00:00', '1'),
(133, 'nosed sea snake', 'venomous', 'greyish green', 'broad', 'flattened body with a short oarlike tail', 'round', 'paralysis legs', '0000-00-00 00:00:00', '1'),
(134, 'common vine snake', 'mildly venomous', 'green', 'narrow head and pointed snout', 'black and white scale marking', 'horizontal', 'swelling', '0000-00-00 00:00:00', '1'),
(135, 'common vine snake', 'mildly venomous', 'green', 'narrow head and pointed snout', 'black and white scale marking', 'horizontal', 'numbness', '0000-00-00 00:00:00', '1'),
(136, 'common vine snake', 'mildly venomous', 'green', 'narrow head and pointed snout', 'black and white scale marking', 'horizontal', 'bruising', '0000-00-00 00:00:00', '1'),
(137, 'common vine snake', 'mildly venomous', 'green', 'narrow head and pointed snout', 'black and white scale marking', 'horizontal', 'severe pain', '0000-00-00 00:00:00', '1'),
(138, 'common vine snake', 'mildly venomous', 'greyish', 'narrow head and pointed snout', 'black and white scale marking', 'horizontal', 'swelling', '0000-00-00 00:00:00', '1'),
(139, 'common vine snake', 'mildly venomous', 'greyish', 'narrow head and pointed snout', 'black and white scale marking', 'horizontal', 'numbness', '0000-00-00 00:00:00', '1'),
(140, 'common vine snake', 'mildly venomous', 'greyish', 'narrow head and pointed snout', 'black and white scale marking', 'horizontal', 'bruising', '0000-00-00 00:00:00', '1'),
(141, 'common vine snake', 'mildly venomous', 'greyish', 'narrow head and pointed snout', 'black and white scale marking', 'horizontal', 'severe pain', '0000-00-00 00:00:00', '1'),
(142, 'common vine snake', 'mildly venomous', 'brown', 'narrow head and pointed snout', 'black and white scale marking', 'horizontal', 'swelling', '0000-00-00 00:00:00', '1'),
(143, 'common vine snake', 'mildly venomous', 'brown', 'narrow head and pointed snout', 'black and white scale marking', 'horizontal', 'numbness', '0000-00-00 00:00:00', '1'),
(144, 'common vine snake', 'mildly venomous', 'brown', 'narrow head and pointed snout', 'black and white scale marking', 'horizontal', 'bruising', '0000-00-00 00:00:00', '1'),
(145, 'common vine snake', 'mildly venomous', 'brown', 'narrow head and pointed snout', 'black and white scale marking', 'horizontal', 'severe pain', '0000-00-00 00:00:00', '1'),
(146, 'ornate flying snake', 'mildly venomous', 'green', 'flattened', 'black cross hatching yellow or gold color accents', 'round', 'swelling', '0000-00-00 00:00:00', '1'),
(147, 'ornate flying snake', 'mildly venomous', 'green', 'flattened', 'black cross hatching yellow or gold color accents', 'round', 'bleeding', '0000-00-00 00:00:00', '1'),
(148, 'ornate flying snake', 'mildly venomous', 'green', 'flattened', 'black cross hatching yellow or gold color accents', 'round', 'paresthesia', '0000-00-00 00:00:00', '1'),
(149, 'ornate flying snake', 'mildly venomous', 'green', 'flattened', 'black cross hatching yellow or gold color accents', 'round', 'bruising', '0000-00-00 00:00:00', '1'),
(150, 'ornate flying snake', 'mildly venomous', 'green', 'flattened', 'black cross hatching yellow or gold color accents', 'round', 'severe pain', '0000-00-00 00:00:00', '1'),
(151, 'ornate flying snake', 'mildly venomous', 'brown', 'flattened', 'black cross hatching yellow or gold color accents', 'round', 'swelling', '0000-00-00 00:00:00', '1'),
(152, 'ornate flying snake', 'mildly venomous', 'brown', 'flattened', 'black cross hatching yellow or gold color accents', 'round', 'bleeding', '0000-00-00 00:00:00', '1'),
(153, 'ornate flying snake', 'mildly venomous', 'brown', 'flattened', 'black cross hatching yellow or gold color accents', 'round', 'paresthesia', '0000-00-00 00:00:00', '1'),
(154, 'ornate flying snake', 'mildly venomous', 'brown', 'flattened', 'black cross hatching yellow or gold color accents', 'round', 'bruising', '0000-00-00 00:00:00', '1'),
(155, 'ornate flying snake', 'mildly venomous', 'brown', 'flattened', 'black cross hatching yellow or gold color accents', 'round', 'severe pain', '0000-00-00 00:00:00', '1'),
(156, 'common cat snake', 'mildly venomous', 'greyish brown', 'triangular', 'lighter zig zag patterns over the body', 'narrow vertical slits', 'swelling', '0000-00-00 00:00:00', '1'),
(157, 'common cat snake', 'mildly venomous', 'greyish brown', 'triangular', 'lighter zig zag patterns over the body', 'narrow vertical slits', 'coma', '0000-00-00 00:00:00', '1'),
(158, 'common cat snake', 'mildly venomous', 'greyish brown', 'triangular', 'lighter zig zag patterns over the body', 'narrow vertical slits', 'blood in urine', '0000-00-00 00:00:00', '1'),
(159, 'common cat snake', 'mildly venomous', 'greyish brown', 'triangular', 'lighter zig zag patterns over the body', 'narrow vertical slits', 'breathing problem', '0000-00-00 00:00:00', '1'),
(160, 'common cat snake', 'mildly venomous', 'greyish brown', 'triangular', 'lighter zig zag patterns over the body', 'narrow vertical slits', 'diarrhea', '0000-00-00 00:00:00', '1'),
(161, 'common cat snake', 'mildly venomous', 'brown', 'triangular', 'lighter zig zag patterns over the body', 'narrow vertical slits', 'swelling', '0000-00-00 00:00:00', '1'),
(162, 'common cat snake', 'mildly venomous', 'brown', 'triangular', 'lighter zig zag patterns over the body', 'narrow vertical slits', 'coma', '0000-00-00 00:00:00', '1'),
(163, 'common cat snake', 'mildly venomous', 'brown', 'triangular', 'lighter zig zag patterns over the body', 'narrow vertical slits', 'blood in urine', '0000-00-00 00:00:00', '1'),
(164, 'common cat snake', 'mildly venomous', 'brown', 'triangular', 'lighter zig zag patterns over the body', 'narrow vertical slits', 'breathing problem', '0000-00-00 00:00:00', '1'),
(165, 'common cat snake', 'mildly venomous', 'brown', 'triangular', 'lighter zig zag patterns over the body', 'narrow vertical slits', 'diarrhea', '0000-00-00 00:00:00', '1'),
(166, 'ceylon cat snake', 'mildly venomous', 'brown mixed with reddish', 'triangular', 'cross lines found from head to tail', 'vertical', 'swelling', '0000-00-00 00:00:00', '1'),
(167, 'ceylon cat snake', 'mildly venomous', 'brown mixed with reddish', 'triangular', 'cross lines found from head to tail', 'vertical', 'paralysis', '0000-00-00 00:00:00', '1'),
(168, 'ceylon cat snake', 'mildly venomous', 'brown mixed with reddish', 'triangular', 'cross lines found from head to tail', 'vertical', 'blood in urine', '0000-00-00 00:00:00', '1'),
(169, 'ceylon cat snake', 'mildly venomous', 'brown mixed with reddish', 'triangular', 'cross lines found from head to tail', 'vertical', 'breathing problem', '0000-00-00 00:00:00', '1'),
(170, 'ceylon cat snake', 'mildly venomous', 'brown mixed with reddish', 'triangular', 'cross lines found from head to tail', 'vertical', 'diarrhea', '0000-00-00 00:00:00', '1'),
(171, 'ceylon cat snake', 'mildly venomous', 'yellowish  mixed with reddish', 'triangular', 'cross lines found from head to tail', 'vertical', 'swelling', '0000-00-00 00:00:00', '1'),
(172, 'ceylon cat snake', 'mildly venomous', 'yellowish  mixed with reddish', 'triangular', 'cross lines found from head to tail', 'vertical', 'paralysis', '0000-00-00 00:00:00', '1'),
(173, 'ceylon cat snake', 'mildly venomous', 'yellowish  mixed with reddish', 'triangular', 'cross lines found from head to tail', 'vertical', 'blood in urine', '0000-00-00 00:00:00', '1'),
(174, 'ceylon cat snake', 'mildly venomous', 'yellowish  mixed with reddish', 'triangular', 'cross lines found from head to tail', 'vertical', 'breathing problem', '0000-00-00 00:00:00', '1'),
(175, 'ceylon cat snake', 'mildly venomous', 'yellowish  mixed with reddish', 'triangular', 'cross lines found from head to tail', 'vertical', 'diarrhea', '0000-00-00 00:00:00', '1'),
(176, 'forsten cat snake', 'mildly venomous', 'greyish', 'triangular', 'black and yellowish white zig zag markings on the body', 'vertical', 'swelling', '0000-00-00 00:00:00', '1'),
(177, 'forsten cat snake', 'mildly venomous', 'greyish', 'triangular', 'black and yellowish white zig zag markings on the body', 'vertical', 'severe pain', '0000-00-00 00:00:00', '1'),
(178, 'forsten cat snake', 'mildly venomous', 'greyish', 'triangular', 'black and yellowish white zig zag markings on the body', 'vertical', 'vomiting', '0000-00-00 00:00:00', '1'),
(179, 'forsten cat snake', 'mildly venomous', 'greyish', 'triangular', 'black and yellowish white zig zag markings on the body', 'vertical', 'nausea', '0000-00-00 00:00:00', '1'),
(180, 'forsten cat snake', 'mildly venomous', 'greyish', 'triangular', 'black and yellowish white zig zag markings on the body', 'vertical', 'bruising', '0000-00-00 00:00:00', '1'),
(181, 'forsten cat snake', 'mildly venomous', 'brown', 'triangular', 'black and yellowish white zig zag markings on the body', 'vertical', 'swelling', '0000-00-00 00:00:00', '1'),
(182, 'forsten cat snake', 'mildly venomous', 'brown', 'triangular', 'black and yellowish white zig zag markings on the body', 'vertical', 'severe pain', '0000-00-00 00:00:00', '1'),
(183, 'forsten cat snake', 'mildly venomous', 'brown', 'triangular', 'black and yellowish white zig zag markings on the body', 'vertical', 'vomiting', '0000-00-00 00:00:00', '1'),
(184, 'forsten cat snake', 'mildly venomous', 'brown', 'triangular', 'black and yellowish white zig zag markings on the body', 'vertical', 'nausea', '0000-00-00 00:00:00', '1'),
(185, 'forsten cat snake', 'mildly venomous', 'brown', 'triangular', 'black and yellowish white zig zag markings on the body', 'vertical', 'bruising', '0000-00-00 00:00:00', '1'),
(186, 'brown vine snake', 'mildly venomous', 'green', 'sharply triangular', 'black spots throughout body with underneath color white', 'horizontal', 'no symptoms', '0000-00-00 00:00:00', '1'),
(187, 'brown vine snake', 'mildly venomous', 'grey brown', 'sharply triangular', 'black spots throughout body with underneath color white', 'horizontal', 'no symptoms', '0000-00-00 00:00:00', '1'),
(188, 'beddoms cat snake', 'mildly venomous', 'brown', 'Supralabial', 'cross lines found from head to tail', 'vertical', 'no symptoms', '0000-00-00 00:00:00', '1'),
(189, 'beddoms cat snake', 'mildly venomous', 'yellowish mixed with reddish', 'Supralabial', 'cross lines found from head to tail', 'vertical', 'no symptoms', '0000-00-00 00:00:00', '1'),
(190, 'beddoms cat snake', 'mildly venomous', 'brown mixed with reddish', 'Supralabial', 'cross lines found from head to tail', 'vertical', 'no symptoms', '0000-00-00 00:00:00', '1'),
(191, 'blind or worm snake', 'non venomous', 'charcoal grey', 'head is same size as body', 'head and tail are superficially similar', 'round', 'no symptoms', '0000-00-00 00:00:00', '1'),
(192, 'blind or worm snake', 'non venomous', 'silver grey', 'head is same size as body', 'head and tail are superficially similar', 'round', 'no symptoms', '0000-00-00 00:00:00', '1'),
(193, 'blind or worm snake', 'non venomous', 'light yellow', 'head is same size as body', 'head and tail are superficially similar', 'round', 'no symptoms', '0000-00-00 00:00:00', '1'),
(194, 'blind or worm snake', 'non venomous', 'purplish', 'head is same size as body', 'head and tail are superficially similar', 'round', 'no symptoms', '0000-00-00 00:00:00', '1'),
(195, 'beaked blind', 'non venomous', 'pink', 'small thin and shiny head', 'tail is tipped with a tiny pointed spur', 'round', 'no bite', '0000-00-00 00:00:00', '1'),
(196, 'whitakers boa', 'non venomous', 'yellowish white with dark patches', 'small head', 'tail is thick and short and ends with a rounded tip', 'vertically elliptical', 'swelling', '0000-00-00 00:00:00', '1'),
(197, 'whitakers boa', 'non venomous', 'yellowish white with dark patches', 'small head', 'tail is thick and short and ends with a rounded tip', 'vertically elliptical', 'redness', '0000-00-00 00:00:00', '1'),
(198, 'whitakers boa', 'non venomous', 'yellowish white without dark patches', 'small head', 'tail is thick and short and ends with a rounded tip', 'vertically elliptical', 'swelling', '0000-00-00 00:00:00', '1'),
(199, 'whitakers boa', 'non venomous', 'yellowish white without dark patches', 'small head', 'tail is thick and short and ends with a rounded tip', 'vertically elliptical', 'redness', '0000-00-00 00:00:00', '1'),
(200, 'indian rock python', 'non venomous', 'whitish', 'arrow shaped marking present on the top of the head', 'whitish or yellowish with blotched patterns', 'vertical', 'several teeth marks in curved shape', '0000-00-00 00:00:00', '1'),
(201, 'indian rock python', 'non venomous', 'whitish', 'arrow shaped marking present on the top of the head', 'whitish or yellowish with blotched patterns', 'vertical', 'sustained a severe hand injury', '0000-00-00 00:00:00', '1'),
(202, 'indian rock python', 'non venomous', 'yellow', 'arrow shaped marking present on the top of the head', 'whitish or yellowish with blotched patterns', 'vertical', 'several teeth marks in curved shape', '0000-00-00 00:00:00', '1'),
(203, 'indian rock python', 'non venomous', 'yellow', 'arrow shaped marking present on the top of the head', 'whitish or yellowish with blotched patterns', 'vertical', 'sustained a severe hand injury', '0000-00-00 00:00:00', '1'),
(204, 'indian rock python', 'non venomous', 'dark brown', 'arrow shaped marking present on the top of the head', 'whitish or yellowish with blotched patterns', 'vertical', 'several teeth marks in curved shape', '0000-00-00 00:00:00', '1'),
(205, 'indian rock python', 'non venomous', 'dark brown', 'arrow shaped marking present on the top of the head', 'whitish or yellowish with blotched patterns', 'vertical', 'sustained a severe hand injury', '0000-00-00 00:00:00', '1'),
(206, 'rat snake', 'non venomous', 'pale yellow', 'head larger than neck', 'a keeled upper body with underside  prominent dark bands', 'round', 'redness', '0000-00-00 00:00:00', '1'),
(207, 'rat snake', 'non venomous', 'pale yellow', 'head larger than neck', 'a keeled upper body with underside  prominent dark bands', 'round', 'facial paralysis', '0000-00-00 00:00:00', '1'),
(208, 'rat snake', 'non venomous', 'pale yellow', 'head larger than neck', 'a keeled upper body with underside  prominent dark bands', 'round', 'increased salivation and sweating', '0000-00-00 00:00:00', '1'),
(209, 'rat snake', 'non venomous', 'pale yellow', 'head larger than neck', 'a keeled upper body with underside  prominent dark bands', 'round', 'swelling', '0000-00-00 00:00:00', '1'),
(210, 'rat snake', 'non venomous', 'olive', 'head larger than neck', 'a keeled upper body with underside  prominent dark bands', 'round', 'redness', '0000-00-00 00:00:00', '1'),
(211, 'rat snake', 'non venomous', 'olive', 'head larger than neck', 'a keeled upper body with underside  prominent dark bands', 'round', 'facial paralysis', '0000-00-00 00:00:00', '1'),
(212, 'rat snake', 'non venomous', 'olive', 'head larger than neck', 'a keeled upper body with underside  prominent dark bands', 'round', 'increased salivation and sweating', '0000-00-00 00:00:00', '1'),
(213, 'rat snake', 'non venomous', 'olive', 'head larger than neck', 'a keeled upper body with underside  prominent dark bands', 'round', 'swelling', '0000-00-00 00:00:00', '1'),
(214, 'rat snake', 'non venomous', 'brown', 'head larger than neck', 'a keeled upper body with underside  prominent dark bands', 'round', 'redness', '0000-00-00 00:00:00', '1'),
(215, 'rat snake', 'non venomous', 'brown', 'head larger than neck', 'a keeled upper body with underside  prominent dark bands', 'round', 'facial paralysis', '0000-00-00 00:00:00', '1'),
(216, 'rat snake', 'non venomous', 'brown', 'head larger than neck', 'a keeled upper body with underside  prominent dark bands', 'round', 'increased salivation and sweating', '0000-00-00 00:00:00', '1'),
(217, 'rat snake', 'non venomous', 'brown', 'head larger than neck', 'a keeled upper body with underside  prominent dark bands', 'round', 'swelling', '0000-00-00 00:00:00', '1'),
(218, 'rat snake', 'non venomous', 'greyish black', 'head larger than neck', 'a keeled upper body with underside  prominent dark bands', 'round', 'redness', '0000-00-00 00:00:00', '1'),
(219, 'rat snake', 'non venomous', 'greyish black', 'head larger than neck', 'a keeled upper body with underside  prominent dark bands', 'round', 'facial paralysis', '0000-00-00 00:00:00', '1'),
(220, 'rat snake', 'non venomous', 'greyish black', 'head larger than neck', 'a keeled upper body with underside  prominent dark bands', 'round', 'increased salivation and sweating', '0000-00-00 00:00:00', '1'),
(221, 'rat snake', 'non venomous', 'greyish black', 'head larger than neck', 'a keeled upper body with underside  prominent dark bands', 'round', 'swelling', '0000-00-00 00:00:00', '1'),
(222, 'montane trinket snake', 'non venomous', 'brown', 'somewhat elongated', 'patterns have highest contrast near the head', 'bear round', 'bleeding', '0000-00-00 00:00:00', '1'),
(223, 'montane trinket snake', 'non venomous', 'brown', 'somewhat elongated', 'patterns have highest contrast near the head', 'bear round', 'Itching', '0000-00-00 00:00:00', '1'),
(224, 'montane trinket snake', 'non venomous', 'brown', 'somewhat elongated', 'patterns have highest contrast near the head', 'bear round', 'redness', '0000-00-00 00:00:00', '1'),
(225, 'montane trinket snake', 'non venomous', 'brown', 'somewhat elongated', 'patterns have highest contrast near the head', 'bear round', 'swelling', '0000-00-00 00:00:00', '1'),
(226, 'montane trinket snake', 'non venomous', 'whitish brown', 'somewhat elongated', 'patterns have highest contrast near the head', 'bear round', 'bleeding', '0000-00-00 00:00:00', '1'),
(227, 'montane trinket snake', 'non venomous', 'whitish brown', 'somewhat elongated', 'patterns have highest contrast near the head', 'bear round', 'Itching', '0000-00-00 00:00:00', '1'),
(228, 'montane trinket snake', 'non venomous', 'whitish brown', 'somewhat elongated', 'patterns have highest contrast near the head', 'bear round', 'redness', '0000-00-00 00:00:00', '1'),
(229, 'montane trinket snake', 'non venomous', 'whitish brown', 'somewhat elongated', 'patterns have highest contrast near the head', 'bear round', 'swelling', '0000-00-00 00:00:00', '1'),
(230, 'checkered keelback', 'non venomous', 'olive brown', 'pointed and slightly broader than their neck', 'checkered pattern all over the body in variation of green yellow or black', 'round', 'minor pain', '0000-00-00 00:00:00', '1'),
(231, 'checkered keelback', 'non venomous', 'olive brown', 'pointed and slightly broader than their neck', 'checkered pattern all over the body in variation of green yellow or black', 'round', 'swelling', '0000-00-00 00:00:00', '1'),
(232, 'checkered keelback', 'non venomous', 'olive green', 'pointed and slightly broader than their neck', 'checkered pattern all over the body in variation of green yellow or black', 'round', 'minor pain', '0000-00-00 00:00:00', '1'),
(233, 'checkered keelback', 'non venomous', 'olive green', 'pointed and slightly broader than their neck', 'checkered pattern all over the body in variation of green yellow or black', 'round', 'swelling', '0000-00-00 00:00:00', '1'),
(234, 'checkered keelback', 'non venomous', 'yellow', 'pointed and slightly broader than their neck', 'checkered pattern all over the body in variation of green yellow or black', 'round', 'minor pain', '0000-00-00 00:00:00', '1'),
(235, 'checkered keelback', 'non venomous', 'yellow', 'pointed and slightly broader than their neck', 'checkered pattern all over the body in variation of green yellow or black', 'round', 'swelling', '0000-00-00 00:00:00', '1'),
(236, 'green keelback or grass snake', 'non venomous', 'yellowish green', 'triangular and wide', 'viper like body with  keeled glossy scales', 'round', 'minor pain', '0000-00-00 00:00:00', '1'),
(237, 'green keelback or grass snake', 'non venomous', 'yellowish green', 'triangular and wide', 'viper like body with  keeled glossy scales', 'round', 'itching', '0000-00-00 00:00:00', '1'),
(238, 'green keelback or grass snake', 'non venomous', 'yellowish green', 'triangular and wide', 'viper like body with  keeled glossy scales', 'round', 'redness', '0000-00-00 00:00:00', '1'),
(239, 'green keelback or grass snake', 'non venomous', 'yellowish green', 'triangular and wide', 'viper like body with  keeled glossy scales', 'round', 'swelling', '0000-00-00 00:00:00', '1'),
(240, 'green keelback or grass snake', 'non venomous', 'yellowish green', 'triangular and wide', 'viper like body with  keeled glossy scales', 'round', 'bleeding', '0000-00-00 00:00:00', '1'),
(241, 'striped keelback', 'non venomous', 'olive brown', 'triangular and curve', 'two yellow stripes along the body', 'round', 'no symptoms', '0000-00-00 00:00:00', '1'),
(242, 'striped keelback', 'non venomous', 'greyish', 'triangular and curve', 'two yellow stripes along the body', 'round', 'no symptoms', '0000-00-00 00:00:00', '1'),
(243, 'banded racer', 'non venomous', 'reddish brown', 'flattened', 'have smooth scales and yellowish or whitish belly', 'round', 'no symptoms', '0000-00-00 00:00:00', '1'),
(244, 'bronzeback tree snake', 'non venomous', 'bronze', 'flattened and elongated', 'thin long body covered with smooth scales', 'large round', 'no symptoms', '0000-00-00 00:00:00', '1'),
(245, 'bronzeback tree snake', 'non venomous', 'brown', 'flattened and elongated', 'thin long body covered with smooth scales', 'large round', 'no symptoms', '0000-00-00 00:00:00', '1'),
(246, 'bronzeback tree snake', 'non venomous', 'blackish brown', 'flattened and elongated', 'thin long body covered with smooth scales', 'large round', 'no symptoms', '0000-00-00 00:00:00', '1'),
(247, 'boulengers bronze back', 'non venomous', 'blackish brown', 'flattened pear shaped', 'yellow lines margined by black dots run on the lateral sides of the body', 'round', 'no symptoms', '0000-00-00 00:00:00', '1'),
(248, 'boulengers bronze back', 'non venomous', 'copper', 'flattened pear shaped', 'yellow lines margined by black dots run on the lateral sides of the body', 'round', 'no symptoms', '0000-00-00 00:00:00', '1'),
(249, 'common wolf snake', 'non venomous', 'jet black', 'flattened and broader', 'smooth scales and white unmarked belly', 'round', 'minor pain', '0000-00-00 00:00:00', '1'),
(250, 'common wolf snake', 'non venomous', 'jet black', 'flattened and broader', 'smooth scales and white unmarked belly', 'round', 'swelling', '0000-00-00 00:00:00', '1'),
(254, 'common wolf snake', 'non venomous', 'reddish brown', 'flattened and broader', 'smooth scales and white unmarked belly', 'round', 'minor pain', '0000-00-00 00:00:00', '1'),
(255, 'common wolf snake', 'non venomous', 'reddish brown', 'flattened and broader', 'smooth scales and white unmarked belly', 'round', 'swelling', '0000-00-00 00:00:00', '1'),
(256, 'common wolf snake', 'non venomous', 'dark grey', 'flattened and broader', 'smooth scales and white unmarked belly', 'round', 'minor pain', '0000-00-00 00:00:00', '1'),
(257, 'common wolf snake', 'non venomous', 'dark grey', 'flattened and broader', 'smooth scales and white unmarked belly', 'round', 'swelling', '0000-00-00 00:00:00', '1'),
(258, 'travancore wolf snake', 'non venomous', 'dark brown', 'flattened and broader', 'dark brown and black dorsally with white crossbands', 'invisible', 'minor pain', '0000-00-00 00:00:00', '1'),
(259, 'travancore wolf snake', 'non venomous', 'dark brown', 'flattened and broader', 'dark brown and black dorsally with white crossbands', 'invisible', 'swelling', '0000-00-00 00:00:00', '1'),
(260, 'travancore wolf snake', 'non venomous', 'black', 'flattened and broader', 'dark brown and black dorsally with white crossbands', 'invisible', 'minor pain', '0000-00-00 00:00:00', '1'),
(261, 'travancore wolf snake', 'non venomous', 'black', 'flattened and broader', 'dark brown and black dorsally with white crossbands', 'invisible', 'swelling', '0000-00-00 00:00:00', '1'),
(262, 'common banded kukri snake', 'non venomous', 'pale brown', 'large A shaped rostral', 'large A shaped rostral and distinct arrowhead', 'round', 'prolonged bleeding', '0000-00-00 00:00:00', '1'),
(263, 'common banded kukri snake', 'non venomous', 'orange', 'large A shaped rostral', 'large A shaped rostral and distinct arrowhead', 'round', 'prolonged bleeding', '0000-00-00 00:00:00', '1'),
(264, 'russells kukri snake', 'non venomous', 'reddish brown', 'arrow shaped marking present on the top of the head', 'glossy scales colored reddish brown on dorsal', 'round', 'minor pain', '0000-00-00 00:00:00', '1'),
(265, 'beddomes keelback', 'non venomous', 'yellowish brown', 'flattened', 'brown above a series of yellow spots', 'round', 'severe pain', '0000-00-00 00:00:00', '1'),
(266, 'beddomes keelback', 'non venomous', 'black', 'flattened', 'brown above a series of yellow spots', 'round', 'severe pain', '0000-00-00 00:00:00', '1');

-- --------------------------------------------------------

--
-- Table structure for table `color`
--

CREATE TABLE `color` (
  `iId` int(10) NOT NULL,
  `vName` varchar(255) NOT NULL,
  `dCreatedDate` datetime NOT NULL,
  `vStatus` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `color`
--

INSERT INTO `color` (`iId`, `vName`, `dCreatedDate`, `vStatus`) VALUES
(1, 'yellowish brown', '2022-07-06 12:35:00', '1'),
(2, 'brown', '2022-07-06 12:35:00', '1'),
(3, 'green', '2022-07-06 12:35:00', '1'),
(4, 'yellowish white with dark patches', '2022-07-06 12:35:00', '1'),
(5, 'yellowish white without dark patches', '2022-07-06 12:35:00', '1'),
(6, 'greyish', '2022-07-06 12:35:00', '1'),
(7, 'reddish', '2022-07-06 12:35:00', '1'),
(8, 'olive', '2022-07-06 12:35:00', '1'),
(9, 'tan', '2022-07-06 12:35:00', '1'),
(10, 'pale brown', '2022-07-06 12:35:00', '1'),
(11, 'brown black white crossbars', '2022-07-06 12:35:00', '1'),
(12, 'black with blue rings', '2022-07-06 12:35:00', '1'),
(13, 'olive brown', '2022-07-06 12:35:00', '1'),
(14, 'black with grey rings', '2022-07-06 12:35:00', '1'),
(15, 'silver grey', '2022-07-06 12:35:00', '1'),
(16, 'whitish brown', '2022-07-06 12:35:00', '1'),
(17, 'black', '2022-07-06 12:35:00', '1'),
(18, 'yellow', '2022-07-06 12:35:00', '1'),
(19, 'brown mixed with reddish', '2022-07-06 12:35:00', '1'),
(20, 'dark brown', '2022-07-06 12:35:00', '1'),
(21, 'light brown', '2022-07-06 12:35:00', '1'),
(22, 'pale green', '2022-07-06 12:35:00', '1'),
(23, 'yellowish mixed with reddish', '2022-07-06 12:35:00', '1'),
(24, 'char coal grey', '2022-07-06 12:35:00', '1'),
(25, 'greyish brown', '2022-07-06 12:35:00', '1'),
(26, 'light yellow', '2022-07-06 12:35:00', '1'),
(27, 'black with white rings', '2022-07-06 12:35:00', '1'),
(28, 'greyish black', '2022-07-06 12:35:00', '1'),
(29, 'greyish green', '2022-07-06 12:35:00', '1'),
(30, 'pale buff', '2022-07-06 12:35:00', '1'),
(31, 'purplish', '2022-07-06 12:35:00', '1'),
(32, 'pink', '2022-07-06 12:35:00', '1'),
(33, 'bluish black', '2022-07-06 12:35:00', '1'),
(34, 'whitish', '2022-07-06 12:35:00', '1'),
(35, 'olive green', '2022-07-06 12:35:00', '1'),
(36, 'yellowish green', '2022-07-06 12:35:00', '1'),
(37, 'bronze', '2022-07-06 12:35:00', '1'),
(38, 'pale brown', '2022-07-06 12:35:00', '1'),
(39, 'orange', '2022-07-06 12:35:00', '1'),
(40, 'copper', '2022-07-06 12:35:00', '1'),
(41, 'jet black', '2022-07-06 12:35:00', '1'),
(42, 'reddish brown', '2022-07-06 12:35:00', '1'),
(43, 'dark grey', '2022-07-06 12:35:00', '1'),
(44, 'bright green', '2022-07-06 12:35:00', '1'),
(45, 'purplish brown', '2022-07-06 12:35:00', '1'),
(46, 'warm red', '2022-07-06 12:35:00', '1'),
(47, 'reddish orange', '2022-07-06 12:35:00', '1'),
(48, 'pale yellow', '2022-07-06 12:35:00', '1');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `iId` int(10) NOT NULL,
  `vName` varchar(225) NOT NULL,
  `vDescription` varchar(225) NOT NULL,
  `vImage` varchar(255) NOT NULL,
  `dCreatedDate` datetime NOT NULL,
  `vStatus` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`iId`, `vName`, `vDescription`, `vImage`, `dCreatedDate`, `vStatus`) VALUES
(1, 'kai na', 'null', 'http://localhost/snake/api/http://localhost/snake/api/uploads/events/events_Compress_20220120_110748_8407.jpg', '0000-00-00 00:00:00', '1');

-- --------------------------------------------------------

--
-- Table structure for table `eyeshape`
--

CREATE TABLE `eyeshape` (
  `iId` int(10) NOT NULL,
  `vName` varchar(255) NOT NULL,
  `dCreatedDate` datetime NOT NULL,
  `vStatus` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `eyeshape`
--

INSERT INTO `eyeshape` (`iId`, `vName`, `dCreatedDate`, `vStatus`) VALUES
(1, 'elliptical', '2022-06-05 14:17:43', '1'),
(2, 'horizontal', '2022-06-05 14:17:43', '1'),
(3, 'vertical', '2022-06-05 14:17:43', '1'),
(4, 'round', '2022-06-05 14:17:43', '1'),
(5, 'narrow vertical slits', '2022-06-05 14:17:43', '1'),
(6, 'bear round', '2022-06-05 14:17:43', '1'),
(7, 'invisible', '2022-06-05 14:17:43', '1'),
(8, 'large round', '2022-06-05 14:17:43', '1'),
(9, 'vertically elliptical', '2022-06-05 14:17:43', '1');

-- --------------------------------------------------------

--
-- Table structure for table `headshape`
--

CREATE TABLE `headshape` (
  `iId` int(10) NOT NULL,
  `vName` varchar(255) NOT NULL,
  `dCreatedDate` datetime NOT NULL,
  `vStatus` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `headshape`
--

INSERT INTO `headshape` (`iId`, `vName`, `dCreatedDate`, `vStatus`) VALUES
(1, 'triangular spade shaped', '2022-06-05 14:17:43', '1'),
(2, 'head is same size as body', '2022-06-05 14:17:43', '1'),
(3, 'roughly wedged shape head broad and flattened', '2022-06-05 14:17:43', '1'),
(4, 'a wide head the snout is pointed and turned upwards ending in a hump', '2022-06-05 14:17:43', '1'),
(5, 'pear shaped', '2022-06-05 14:17:43', '1'),
(6, 'triangular', '2022-06-05 14:17:43', '1'),
(7, 'broad', '2022-06-05 14:17:43', '1'),
(8, 'flattened', '2022-06-05 14:17:43', '1'),
(9, 'flattened and triangular', '2022-06-05 14:17:43', '1'),
(10, 'arrow shaped marking present on the top of the head', '2022-06-05 14:17:43', '1'),
(11, 'head larger than neck', '2022-06-05 14:17:43', '1'),
(12, 'somewhat elongated', '2022-06-05 14:17:43', '1'),
(13, 'pointed and slightly broader than their neck', '2022-06-05 14:17:43', '1'),
(14, 'triangular and wide', '2022-06-05 14:17:43', '1'),
(15, 'trianguar and curve', '2022-06-05 14:17:43', '1'),
(16, 'curved', '2022-06-05 14:17:43', '1'),
(17, 'small head', '2022-06-05 14:17:43', '1'),
(18, 'small thin and shiny head', '2022-06-05 14:17:43', '1'),
(19, 'narrow head and pointed snout', '2022-06-05 14:17:43', '1'),
(20, 'supralabial', '2022-06-05 14:17:43', '1'),
(21, 'sharply triangular', '2022-06-05 14:17:43', '1'),
(22, 'flattened and elongated', '2022-06-05 14:17:43', '1'),
(23, 'flattened pear shaped', '2022-06-05 14:17:43', '1'),
(24, 'flattened and broader', '2022-06-05 14:17:43', '1'),
(25, 'large A shaped rostral', '2022-06-05 14:17:43', '1');

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `iId` int(10) NOT NULL,
  `vName` varchar(255) NOT NULL,
  `vAddress` varchar(255) NOT NULL,
  `vImage` varchar(255) NOT NULL,
  `vContact` varchar(255) NOT NULL,
  `vEmail` varchar(255) NOT NULL,
  `vLongitude` varchar(255) NOT NULL,
  `vLatitude` varchar(255) NOT NULL,
  `dCreatedDate` datetime NOT NULL,
  `vStatus` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`iId`, `vName`, `vAddress`, `vImage`, `vContact`, `vEmail`, `vLongitude`, `vLatitude`, `dCreatedDate`, `vStatus`) VALUES
(1, 'Hospicio District Hospital', ' Fr Agnel Institute Of Commerce, Road, Monte Hill, Margao, Goa', 'uploads/hospital/hospital_hospicio.jpg', '0832-2705754', 'hospicio@gmail.com', '15.292419773253032', '73.96494222470896', '2022-05-29 13:19:02', '1'),
(2, 'Goa Medical College and Hospital, Bambolim', 'Bambolim, Goa', 'uploads/hospital/hospital_bambolim.jpg', '8007733696', 'bambolim@gmail.com', '15.57577636377406', ' 73.84833952886996', '2022-05-29 13:35:06', '1'),
(3, 'Govenment Hospital I D', 'Tisca,Goa', 'uploads/hospital/hospital_id.jpg', '7020350423', 'id@gmail.com', '15.34658471249514', '73.99106264647023', '2022-05-29 13:42:10', '1');

-- --------------------------------------------------------

--
-- Table structure for table `otp`
--

CREATE TABLE `otp` (
  `iId` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `otp` varchar(255) NOT NULL,
  `verified` varchar(255) NOT NULL,
  `dCreatedDate` datetime NOT NULL,
  `vStatus` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `otp`
--

INSERT INTO `otp` (`iId`, `email`, `otp`, `verified`, `dCreatedDate`, `vStatus`) VALUES
(4, 'deepeshmadgaonkar.dm@gmail.com', '7226', '1', '0000-00-00 00:00:00', '1'),
(5, 'nikhilopolekar0@gmail.com', '9529', '1', '0000-00-00 00:00:00', '1'),
(6, '18co21@aitdgoa.edu.in', '4106', '1', '0000-00-00 00:00:00', '1'),
(7, '18co35@aitdgoa.edu.in', '7934', '1', '0000-00-00 00:00:00', '1'),
(8, '18co08@aitdgoa.edu.in', '2020', '1', '0000-00-00 00:00:00', '1'),
(9, 'deulkarshivani4353@gmail.com', '5578', '1', '0000-00-00 00:00:00', '1'),
(10, '17co25@aitdgoa.edu.in', '9469', '1', '0000-00-00 00:00:00', '1');

-- --------------------------------------------------------

--
-- Table structure for table `pattern`
--

CREATE TABLE `pattern` (
  `iId` int(10) NOT NULL,
  `vName` varchar(255) NOT NULL,
  `dCreatedDate` datetime NOT NULL,
  `vStatus` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pattern`
--

INSERT INTO `pattern` (`iId`, `vName`, `dCreatedDate`, `vStatus`) VALUES
(1, 'brown above a series of yellow spots', '2022-06-05 14:16:42', '1'),
(2, 'glossy scales colored reddish brown on dorsal', '2022-06-05 14:16:42', '1'),
(3, 'large A shaped rostral and distinct arrow head', '2022-06-05 14:16:42', '1'),
(4, 'dark brown and black dorsally with white crossbands', '2022-06-05 14:16:42', '1'),
(5, 'smooth scales and white unmarked belly', '2022-06-05 14:16:42', '1'),
(6, 'yellow lines margined by black dots run on the lateral side of the body', '2022-06-05 14:16:42', '1'),
(7, 'black cross hatching yellow or gold color accents', '2022-06-05 14:16:42', '1'),
(8, 'black and white scale marking', '2022-06-05 14:16:42', '1'),
(9, 'flattened body with a short oarlike tail', '2022-06-05 14:16:42', '1'),
(10, 'strips with different color patterns', '2022-06-05 14:16:42', '1'),
(11, 'light brown with a double row of darker brown patches along the back', '2022-06-05 14:16:42', '1'),
(12, 'triangular shaped head with heat sensing pit organs', '2022-06-05 14:16:42', '1'),
(13, 'tail is red or yellow in color', '2022-06-05 14:16:42', '1'),
(14, 'white crossbars', '2022-06-05 14:16:42', '1'),
(15, 'three series of dark brown spots on the body surrounded by black rings', '2022-06-05 14:16:42', '1'),
(16, 'whitish spots edged with dark brown', '2022-06-05 14:16:42', '1'),
(17, 'chevron pattern on back', '2022-06-05 14:16:42', '1'),
(18, 'body color is yellowish white', '2022-06-05 14:16:42', '1'),
(19, 'thin long body covered with smooth scales', '2022-06-05 14:16:42', '1'),
(20, 'checkered pattern all over the body in variation of green, yellow or black', '2022-06-05 14:16:42', '1'),
(21, 'patterns have highest contrast near the head', '2022-06-05 14:16:42', '1'),
(22, 'a keeled upper body with underside prominent dark bands', '2022-06-05 14:16:42', '1'),
(23, 'whitish or yellowish with blotched patterns', '2022-06-05 14:16:42', '1'),
(24, 'tail is thick and short and ends with a rounded tip', '2022-06-05 14:16:42', '1'),
(25, 'tail is tipped with a tiny pointed spur', '2022-06-05 14:16:42', '1'),
(26, 'head and tail are superficially similar', '2022-06-05 14:16:42', '1'),
(27, 'black spots throughout body with underneath color white', '2022-06-05 14:16:42', '1'),
(28, 'black and yellowish white zig zag markings on the body', '2022-06-05 14:16:42', '1'),
(29, 'cross lines found from head to tail', '2022-06-05 14:16:42', '1'),
(30, 'lighter zig zag patterns over the body', '2022-06-05 14:16:42', '1'),
(31, 'viper like body with keeled glossy scales', '2022-06-05 14:16:42', '1'),
(32, 'two yellow strips along the body', '2022-06-05 14:16:42', '1'),
(33, 'have smooth scales and yellowish or whitish belly', '2022-06-05 14:16:42', '1');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `iId` int(10) NOT NULL,
  `iRescuerId` int(10) NOT NULL,
  `vPostImage` varchar(255) NOT NULL,
  `vComments` varchar(255) NOT NULL DEFAULT '',
  `iLikes` int(10) NOT NULL DEFAULT 0,
  `iViews` int(10) NOT NULL DEFAULT 0,
  `dCreatedDate` datetime NOT NULL,
  `vStatus` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`iId`, `iRescuerId`, `vPostImage`, `vComments`, `iLikes`, `iViews`, `dCreatedDate`, `vStatus`) VALUES
(4, 10, 'http://localhost/snake/api/uploads/post/post_ceylon_cat_snake.jpg', '', 0, 0, '2022-08-19 17:37:15', '1'),
(5, 10, 'http://localhost/snake/api/uploads/post/post_forsten_cat_snake.jpg', '', 0, 0, '2022-08-19 17:44:54', '1'),
(6, 10, 'http://localhost/snake/api/uploads/post/post_travancore_wolf_snake.jpg', '', 0, 0, '2022-08-19 17:45:12', '1'),
(7, 10, 'http://localhost/snake/api/uploads/post/post_ornate_flying_snake.jfif', '', 1, 0, '2022-08-19 17:45:26', '1'),
(8, 11, 'http://localhost/snake/api/uploads/post/post_Common_vine_snake.jpg', '', 1, 0, '2022-08-19 17:49:07', '1'),
(9, 11, 'http://localhost/snake/api/uploads/post/post_banded_racer.jpg', '', 0, 0, '2022-08-19 17:49:22', '1'),
(10, 11, 'http://localhost/snake/api/uploads/post/post_Checkered_keelback.jpg', '', 0, 0, '2022-08-19 17:49:39', '1'),
(11, 12, 'http://localhost/snake/api/uploads/post/post_Common_banded_kukri_snake.jfif', '', 1, 0, '2022-08-19 18:03:19', '1'),
(12, 12, 'http://localhost/snake/api/uploads/post/post_Comman_cat_snake.jpg', '', 0, 0, '2022-08-19 18:03:43', '1'),
(13, 13, 'http://localhost/snake/api/uploads/post/post_Cobra.jpg', '', 1, 0, '2022-08-19 18:07:05', '1'),
(14, 13, 'http://localhost/snake/api/uploads/post/post_bamboo_pit_viper.jpg', '', 1, 0, '2022-08-19 18:07:35', '1'),
(15, 13, 'http://localhost/snake/api/uploads/post/post_beaked_blind.jpg', '', 0, 0, '2022-08-19 18:11:10', '1');

-- --------------------------------------------------------

--
-- Table structure for table `post_liked`
--

CREATE TABLE `post_liked` (
  `iId` int(10) NOT NULL,
  `iPostId` int(10) NOT NULL,
  `iUserId` int(10) NOT NULL DEFAULT 0,
  `iRescuerId` int(10) NOT NULL DEFAULT 0,
  `dCreatedDate` datetime NOT NULL,
  `vStatus` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post_liked`
--

INSERT INTO `post_liked` (`iId`, `iPostId`, `iUserId`, `iRescuerId`, `dCreatedDate`, `vStatus`) VALUES
(0, 3, 0, 9, '2022-08-19 11:30:27', '1'),
(0, 3, 4, 0, '2022-08-19 15:42:10', '1'),
(0, 3, 4, 0, '2022-08-19 15:42:11', '1'),
(0, 3, 4, 0, '2022-08-19 15:42:11', '1'),
(0, 14, 0, 13, '2022-08-19 18:08:01', '1'),
(0, 13, 0, 13, '2022-08-19 18:08:02', '1'),
(0, 7, 0, 13, '2022-08-19 18:08:16', '1'),
(0, 8, 0, 13, '2022-08-19 18:08:18', '1'),
(0, 11, 0, 13, '2022-08-19 18:08:20', '1');

-- --------------------------------------------------------

--
-- Table structure for table `rescuer`
--

CREATE TABLE `rescuer` (
  `iId` int(10) NOT NULL,
  `vName` varchar(255) NOT NULL,
  `vPhone` varchar(255) NOT NULL,
  `vUserName` varchar(255) NOT NULL,
  `vPassword` varchar(255) NOT NULL,
  `iRoleId` int(10) NOT NULL DEFAULT 1,
  `tAddress` text NOT NULL,
  `iAge` int(10) NOT NULL,
  `vEmail` varchar(255) NOT NULL,
  `vGender` varchar(255) NOT NULL,
  `vCertificate` varchar(255) NOT NULL,
  `vExperience` varchar(255) NOT NULL,
  `vImage` varchar(255) NOT NULL,
  `vAchievement` varchar(255) NOT NULL,
  `vVerificationstatus` varchar(255) NOT NULL DEFAULT '0',
  `vLat` varchar(255) NOT NULL DEFAULT '0',
  `vLong` varchar(255) NOT NULL DEFAULT '0',
  `iPoints` int(10) NOT NULL,
  `dCreatedDate` datetime NOT NULL,
  `vStatus` varchar(255) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rescuer`
--

INSERT INTO `rescuer` (`iId`, `vName`, `vPhone`, `vUserName`, `vPassword`, `iRoleId`, `tAddress`, `iAge`, `vEmail`, `vGender`, `vCertificate`, `vExperience`, `vImage`, `vAchievement`, `vVerificationstatus`, `vLat`, `vLong`, `iPoints`, `dCreatedDate`, `vStatus`) VALUES
(10, 'Deepesh', '9168827644', 'Skywalker', '81dc9bdb52d04dc20036dbd8313ed055', 1, '', 0, 'deepeshmadgaonkar.dm@gmail.com', '', '', '', 'http://localhost/snake/api/uploads/rescuer/rescuer_IMG_9637.JPG', '0', '1', '18.5597952', '73.8492416', 0, '2022-08-19 17:36:00', '1'),
(11, 'Nikhil', '9922865357', 'Nikhil', '81dc9bdb52d04dc20036dbd8313ed055', 1, '', 0, '18co35@aitdgoa.edu.in', '', '', '', 'http://localhost/snake/api/uploads/rescuer/rescuer_IMG_9468.JPG', '0', '1', '', '', 0, '2022-08-19 17:48:18', '1'),
(12, 'Laximi', '7020350423', 'Laximi', '81dc9bdb52d04dc20036dbd8313ed055', 1, '', 0, '18co08@aitdgoa.edu.in', '', '', '', 'http://localhost/snake/api/uploads/rescuer/rescuer_IMG_0581.JPG', '0', '1', '18.5597952', '73.8492416', 0, '2022-08-19 17:58:06', '1'),
(13, 'Shripad', '7218022181', 'Shripad', '81dc9bdb52d04dc20036dbd8313ed055', 1, '', 0, '17co25@aitdgoa.edu.in', '', '', '', 'http://localhost/snake/api/uploads/rescuer/rescuer_IMG_0476.JPG', '0', '1', '18.5597952', '73.8492416', 0, '2022-08-19 18:06:01', '1');

-- --------------------------------------------------------

--
-- Table structure for table `snake`
--

CREATE TABLE `snake` (
  `iId` int(10) NOT NULL,
  `vName` varchar(255) NOT NULL,
  `vLocalName` varchar(255) NOT NULL,
  `vSize` varchar(255) NOT NULL,
  `iColor` int(10) NOT NULL,
  `iPattern` int(10) NOT NULL,
  `vImage` varchar(255) NOT NULL,
  `iType` int(10) NOT NULL,
  `iHeadShape` int(10) NOT NULL,
  `tDesc` text NOT NULL,
  `dCreatedDate` date NOT NULL,
  `vStatus` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `snake`
--

INSERT INTO `snake` (`iId`, `vName`, `vLocalName`, `vSize`, `iColor`, `iPattern`, `vImage`, `iType`, `iHeadShape`, `tDesc`, `dCreatedDate`, `vStatus`) VALUES
(1, 'Bamboo pit viper', 'sds', '45', 44, 13, 'uploads/snake/snake_bamboo_pit_viper.jpg', 1, 1803, 'asdasd', '2022-08-18', '1'),
(2, 'Banded racer', 'sdf', '454', 42, 33, 'uploads/snake/snake_banded_racer.jpg', 0, 8, 'asd', '2022-08-18', '1'),
(3, 'Beaked blind', 'sd', '45', 32, 25, 'uploads/snake/snake_beaked_blind.jpg', 2, 18, 'asd', '2022-08-18', '1'),
(4, 'Beddomes keelback', 'sdf', '45', 17, 1, 'uploads/snake/snake_beddomes_keelback.jpg', 2, 8, 'asdasd', '2022-08-18', '1'),
(5, 'Beddoms cat snake', 'sdf', '45', 19, 29, 'uploads/snake/snake_beddoms_cat_snake.jfif', 3, 20, 'sad', '2022-08-18', '1'),
(6, 'Boulengers bronze back', 'sdf', '45', 40, 6, 'uploads/snake/snake_boulengers_bronze_back.jpg', 2, 23, 'asdasd', '2022-08-18', '1'),
(7, 'bronzeback tree snake', 'sdf', '34', 2, 19, 'uploads/snake/snake_bronzeback_tree_snake.jpeg', 2, 22, 'sdfsdf', '2022-08-18', '1'),
(8, 'Brown vine snake', 'asd', '45', 25, 27, 'uploads/snake/snake_brown_vine_snake.jfif', 3, 21, 'sdf', '2022-08-18', '1'),
(9, 'Ceylon cat snake', 'abc', '0', 19, 29, 'uploads/snake/snake_ceylon_cat_snake.jpg', 3, 6, 'abc', '2022-08-18', '1'),
(10, 'Checkered keelback', 'abc', '0', 13, 20, 'uploads/snake/snake_Checkered_keelback.jpg', 2, 13, 'abc', '2022-08-18', '1'),
(11, 'Cobra', 'abc', '0', 17, 18, 'uploads/snake/snake_Cobra.jpg', 1, 1, 'abc', '2022-08-18', '1'),
(12, 'Common cat snake', 'abc', '0', 25, 30, 'uploads/snake/snake_Comman_cat_snake.jpg', 3, 6, 'abc', '2022-08-18', '1'),
(13, 'Common krait', 'abc', '0', 17, 14, 'uploads/snake/snake_Common_krait.jpg', 1, 8, 'abc', '2022-08-18', '1'),
(14, 'Common vine snake', 'abc', '0', 3, 8, 'uploads/snake/snake_Common_vine_snake.jpg', 3, 19, 'abc', '2022-08-18', '1'),
(15, 'Common banded kukri snake', 'abc', '0', 38, 3, 'uploads/snake/snake_Common_banded_kukri_snake.jfif', 2, 25, 'abc', '2022-08-18', '1'),
(16, 'Common wolf snake', 'abc', '0', 42, 5, 'uploads/snake/snake_common_wolf_snake.jpg', 2, 24, 'abc', '2022-08-18', '1'),
(17, 'Forsten cat snake', 'abc', '0', 6, 28, 'uploads/snake/snake_forsten_cat_snake.jpg', 3, 6, 'abc', '2022-08-18', '1'),
(18, 'Green keelback or grass snake', 'abc', '0', 36, 31, 'uploads/snake/snake_green_keelback_or)grass_snake.jpg', 2, 14, 'abc', '2022-08-18', '1'),
(19, 'Hump nosed pit viper', 'abc', '0', 21, 11, 'uploads/snake/snake_humped_nose_pit_viper.jpg', 1, 4, 'abc', '2022-08-18', '1'),
(20, 'Indian rock python', 'abc', '0', 20, 23, 'uploads/snake/snake_indian_rock_python.jpg', 2, 10, 'abc', '2022-08-18', '1'),
(21, 'King cobra', 'abc', '0', 18, 17, 'uploads/snake/snake_king_cobra.jpg', 1, 3, 'abc', '2022-08-18', '1'),
(22, 'Malabar pit viper', 'abc', '0', 22, 12, 'uploads/snake/snake_Malabar_Pit_Viper.jpg', 1, 6, 'abc', '2022-08-18', '1'),
(23, 'Montane trinket snake', 'abc', '0', 16, 21, 'uploads/snake/snake_montane_trinket_snake.jfif', 2, 12, 'abc', '2022-08-18', '1'),
(24, 'Nosed sea snake', 'abc', '0', 29, 9, 'uploads/snake/snake_nosed_sea_snake.jpg', 1, 7, 'abc', '2022-08-18', '1'),
(25, 'Ornate flying snake', 'abc', '0', 2, 7, 'uploads/snake/snake_ornate_flying_snake.jfif', 3, 8, 'abc', '2022-08-18', '1'),
(26, 'Rat snake', 'abc', '0', 28, 22, 'uploads/snake/snake_rat_snake.jpg', 2, 11, 'abc', '2022-08-18', '1'),
(27, 'Russel viper', 'abc', '0', 2, 15, 'uploads/snake/snake_russel_viper.jpg', 1, 9, 'abc', '2022-08-18', '1'),
(28, 'Russells kukri snake', 'abc', '0', 42, 2, 'uploads/snake/snake_russells_kukri_snake.jpg', 2, 10, 'abc', '2022-08-18', '1'),
(29, 'Saw scaled viper', 'abc', '0', 38, 16, 'uploads/snake/snake_saw_scaled_viper.jpg', 1, 5, 'abc', '2022-08-18', '1'),
(30, 'Short sea snake', 'abc', '0', 12, 9, 'uploads/snake/snake_short_sea_snake.jfif', 1, 6, 'abc', '2022-08-18', '1'),
(31, 'Striped coral snake', 'abc', '0', 46, 10, 'uploads/snake/snake_striped_coral_snake.jfif', 1, 16, 'abc', '2022-08-18', '1'),
(32, 'Striped keelback', 'abc', '0', 6, 32, 'uploads/snake/snake_striped_keelback.jfif', 2, 15, 'abc', '2022-08-18', '1'),
(33, 'Travancore wolf snake', 'abc', '0', 17, 4, 'uploads/snake/snake_travancore_wolf_snake.jpg', 2, 24, 'abc', '2022-08-18', '1'),
(34, 'Whitakers boa', 'abc', '0', 4, 24, 'uploads/snake/snake_whitakers_boa.jpg', 2, 17, 'abc', '2022-08-18', '1'),
(35, 'Blind or worm snake', 'abc', '0', 15, 26, 'uploads/snake/snake_Carphophis-amoenus-4-VanDevender-copy.jpg', 2, 2, 'abc', '2022-08-18', '1');

-- --------------------------------------------------------

--
-- Table structure for table `snaketype`
--

CREATE TABLE `snaketype` (
  `iId` int(10) NOT NULL,
  `vName` varchar(255) NOT NULL,
  `dCreatedDate` datetime NOT NULL,
  `vStatus` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `snaketype`
--

INSERT INTO `snaketype` (`iId`, `vName`, `dCreatedDate`, `vStatus`) VALUES
(1, 'venomous', '2022-06-05 14:45:42', '1'),
(2, 'non venomous', '2022-06-07 18:08:55', '1'),
(3, 'mildly venomous', '2022-06-07 18:06:31', '1');

-- --------------------------------------------------------

--
-- Table structure for table `statustrans`
--

CREATE TABLE `statustrans` (
  `iId` int(10) NOT NULL,
  `vName` varchar(255) NOT NULL,
  `dCreatedDate` datetime NOT NULL,
  `vStatus` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `statustrans`
--

INSERT INTO `statustrans` (`iId`, `vName`, `dCreatedDate`, `vStatus`) VALUES
(1, 'Created', '2022-06-05 13:10:01', '1'),
(2, 'Updated', '2022-06-05 13:10:22', '1'),
(3, 'Completed', '2022-06-05 13:12:06', '1');

-- --------------------------------------------------------

--
-- Table structure for table `symptoms`
--

CREATE TABLE `symptoms` (
  `iId` int(10) NOT NULL,
  `vName` varchar(255) NOT NULL,
  `dCreatedDate` datetime NOT NULL,
  `vStatus` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `symptoms`
--

INSERT INTO `symptoms` (`iId`, `vName`, `dCreatedDate`, `vStatus`) VALUES
(1, 'feeling sleepy', '2022-06-05 14:30:42', '1'),
(2, 'lower back pain', '2022-06-05 14:30:42', '1'),
(3, 'internal bleeding', '2022-06-05 14:30:42', '1'),
(4, 'abdominal pain', '2022-06-05 14:30:42', '1'),
(5, 'bleeding from distant sites', '2022-06-05 14:30:42', '1'),
(6, 'respiratory paralysis', '2022-06-05 14:30:42', '1'),
(7, 'diarrhea', '2022-06-05 14:30:42', '1'),
(8, 'paralysis', '2022-06-05 14:30:42', '1'),
(9, 'muscle twitching', '2022-06-05 14:30:42', '1'),
(10, 'double vision', '2022-06-05 14:30:42', '1'),
(11, 'abnormal sensations', '2022-06-05 14:30:42', '1'),
(12, 'headache', '2022-06-05 14:30:42', '1'),
(13, 'severe pain', '2022-06-05 14:30:42', '1'),
(14, 'breathing problem', '2022-06-05 14:30:42', '1'),
(15, 'kidney failure', '2022-06-05 14:30:42', '1'),
(16, 'prolonged bleeding', '2022-06-05 14:30:42', '1'),
(17, 'facial paralysis', '2022-06-05 14:30:42', '1'),
(18, 'dizziness', '2022-06-05 14:30:42', '1'),
(19, 'coma', '2022-06-05 14:30:42', '1'),
(20, 'redness', '2022-06-05 14:30:42', '1'),
(21, 'speech problem', '2022-06-05 14:30:42', '1'),
(22, 'swelling', '2022-06-05 14:30:42', '1'),
(23, 'sign of shock', '2022-06-05 14:30:42', '1'),
(24, 'sudden loss of consciousness', '2022-06-05 14:30:42', '1'),
(25, 'vomiting', '2022-06-05 14:30:42', '1'),
(26, 'blood clothing', '2022-06-05 14:30:42', '1'),
(27, 'blurred vision', '2022-06-05 14:30:42', '1'),
(28, 'change in heart rate', '2022-06-05 14:30:42', '1'),
(29, 'swelling in lymph nodes near the bite', '2022-06-05 14:30:42', '1'),
(30, 'immediate pain with rapid swelling', '2022-06-05 14:30:42', '1'),
(31, 'altered mental status', '2022-06-05 14:30:42', '1'),
(32, 'weakness', '2022-06-05 14:30:42', '1'),
(33, 'joint aches', '2022-06-05 14:30:42', '1'),
(34, 'legs paralysis', '2022-06-05 14:30:42', '1'),
(35, 'numbness', '2022-06-05 14:30:42', '1'),
(36, 'bruising', '2022-06-05 14:30:42', '1'),
(37, 'no bite', '2022-06-05 14:30:42', '1'),
(38, 'itching', '2022-06-05 14:30:42', '1'),
(39, 'paresthesia', '2022-06-05 14:30:42', '1'),
(40, 'blood in urine', '2022-06-05 14:30:42', '1'),
(41, 'minor pain', '2022-06-05 14:30:42', '1'),
(42, 'nausea', '2022-06-05 14:30:42', '1'),
(43, 'no symptoms', '2022-06-05 14:30:42', '1'),
(44, 'several teeth marks in curved shape', '2022-06-05 14:30:42', '1'),
(45, 'sustain a severe hand injury', '2022-06-05 14:30:42', '1'),
(46, 'increased salivation and sweating', '2022-06-05 14:30:42', '1');

-- --------------------------------------------------------

--
-- Table structure for table `transcation`
--

CREATE TABLE `transcation` (
  `iId` int(10) NOT NULL,
  `iRescuerId` int(10) NOT NULL,
  `iUserId` int(10) NOT NULL,
  `iSnakeId` int(10) NOT NULL,
  `vImage` varchar(255) NOT NULL,
  `dRescuerDate` datetime NOT NULL,
  `tRescuerAddress` text NOT NULL,
  `ilength` int(10) NOT NULL,
  `iWeight` int(10) NOT NULL,
  `vTranStatus` varchar(255) NOT NULL,
  `tComment` text NOT NULL,
  `vRate` varchar(255) NOT NULL,
  `tQuestionAnswer` text NOT NULL,
  `dCreatedDate` datetime NOT NULL,
  `vStatus` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transcation`
--

INSERT INTO `transcation` (`iId`, `iRescuerId`, `iUserId`, `iSnakeId`, `vImage`, `dRescuerDate`, `tRescuerAddress`, `ilength`, `iWeight`, `vTranStatus`, `tComment`, `vRate`, `tQuestionAnswer`, `dCreatedDate`, `vStatus`) VALUES
(8, 1, 3, 4, 'http://localhost/snake/api/uploads/rescuer/rescuer_bondla.jpg', '2022-06-18 17:17:00', 'Assonora', 45, 23, '3', 'sdfghjk', '5', '', '2022-06-29 17:16:58', '1'),
(9, 1, 1, 4, 'http://localhost/snake/api/uploads/transaction/transaction_id.jpg', '2022-07-21 17:39:00', 'Fr Agnel Institute Of Commerce, Road, Monte Hill, Margao, Goa', 23, 45, '3', 'hii', '4', '', '2022-07-04 17:20:53', '1'),
(10, 10, 6, 0, '', '0000-00-00 00:00:00', '', 0, 0, '1', '', '', '', '2022-08-19 18:23:03', '1');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `iId` int(10) NOT NULL,
  `vName` varchar(255) NOT NULL,
  `vPhone` varchar(255) NOT NULL,
  `vEmail` varchar(255) NOT NULL,
  `vUsername` varchar(255) NOT NULL,
  `vPassword` varchar(255) NOT NULL,
  `iRoleId` int(10) NOT NULL DEFAULT 2,
  `vImage` varchar(255) NOT NULL,
  `dCreatedDate` datetime NOT NULL,
  `vStatus` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`iId`, `vName`, `vPhone`, `vEmail`, `vUsername`, `vPassword`, `iRoleId`, `vImage`, `dCreatedDate`, `vStatus`) VALUES
(5, 'Nikhil', '9922865357', 'nikhilopolekar0@gmail.com', 'Nikhil', '81dc9bdb52d04dc20036dbd8313ed055', 2, 'http://localhost/snake/api/uploads/user/user_IMG_9468.JPG', '2022-08-19 17:41:52', '1'),
(6, 'Deepesh', '9168827644', '18co21@aitdgoa.edu.in', 'Deepesh', '81dc9bdb52d04dc20036dbd8313ed055', 2, 'http://localhost/snake/api/uploads/user/user_IMG_9637.JPG', '2022-08-19 17:44:07', '1'),
(7, 'Laximi', '7020350423', 'deulkarshivani4353@gmail.com', 'Laximi', '81dc9bdb52d04dc20036dbd8313ed055', 2, 'http://localhost/snake/api/uploads/user/user_IMG_0581.JPG', '2022-08-19 17:59:58', '1');

-- --------------------------------------------------------

--
-- Table structure for table `wildlife`
--

CREATE TABLE `wildlife` (
  `iId` int(10) NOT NULL,
  `vName` varchar(255) NOT NULL,
  `vAddress` varchar(255) NOT NULL,
  `vImage` varchar(255) NOT NULL,
  `vContact` varchar(255) NOT NULL,
  `vEmail` varchar(255) NOT NULL,
  `vLongitude` varchar(255) NOT NULL,
  `vLatitude` varchar(255) NOT NULL,
  `dCreatedDate` datetime NOT NULL,
  `vStatus` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `algo`
--
ALTER TABLE `algo`
  ADD PRIMARY KEY (`iId`);

--
-- Indexes for table `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`iId`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`iId`);

--
-- Indexes for table `eyeshape`
--
ALTER TABLE `eyeshape`
  ADD PRIMARY KEY (`iId`);

--
-- Indexes for table `headshape`
--
ALTER TABLE `headshape`
  ADD PRIMARY KEY (`iId`);

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`iId`);

--
-- Indexes for table `otp`
--
ALTER TABLE `otp`
  ADD PRIMARY KEY (`iId`);

--
-- Indexes for table `pattern`
--
ALTER TABLE `pattern`
  ADD PRIMARY KEY (`iId`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`iId`);

--
-- Indexes for table `rescuer`
--
ALTER TABLE `rescuer`
  ADD PRIMARY KEY (`iId`);

--
-- Indexes for table `snake`
--
ALTER TABLE `snake`
  ADD PRIMARY KEY (`iId`);

--
-- Indexes for table `snaketype`
--
ALTER TABLE `snaketype`
  ADD PRIMARY KEY (`iId`);

--
-- Indexes for table `statustrans`
--
ALTER TABLE `statustrans`
  ADD PRIMARY KEY (`iId`);

--
-- Indexes for table `symptoms`
--
ALTER TABLE `symptoms`
  ADD PRIMARY KEY (`iId`);

--
-- Indexes for table `transcation`
--
ALTER TABLE `transcation`
  ADD PRIMARY KEY (`iId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`iId`);

--
-- Indexes for table `wildlife`
--
ALTER TABLE `wildlife`
  ADD PRIMARY KEY (`iId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `algo`
--
ALTER TABLE `algo`
  MODIFY `iId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=267;

--
-- AUTO_INCREMENT for table `color`
--
ALTER TABLE `color`
  MODIFY `iId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=526;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `iId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `eyeshape`
--
ALTER TABLE `eyeshape`
  MODIFY `iId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `headshape`
--
ALTER TABLE `headshape`
  MODIFY `iId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=927;

--
-- AUTO_INCREMENT for table `hospital`
--
ALTER TABLE `hospital`
  MODIFY `iId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `otp`
--
ALTER TABLE `otp`
  MODIFY `iId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pattern`
--
ALTER TABLE `pattern`
  MODIFY `iId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1783;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `iId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `rescuer`
--
ALTER TABLE `rescuer`
  MODIFY `iId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `snake`
--
ALTER TABLE `snake`
  MODIFY `iId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `snaketype`
--
ALTER TABLE `snaketype`
  MODIFY `iId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `statustrans`
--
ALTER TABLE `statustrans`
  MODIFY `iId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `symptoms`
--
ALTER TABLE `symptoms`
  MODIFY `iId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=736;

--
-- AUTO_INCREMENT for table `transcation`
--
ALTER TABLE `transcation`
  MODIFY `iId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `iId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wildlife`
--
ALTER TABLE `wildlife`
  MODIFY `iId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
