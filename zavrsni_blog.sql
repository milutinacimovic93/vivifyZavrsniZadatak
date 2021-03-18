-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 18, 2021 at 12:17 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `author` varchar(60) DEFAULT NULL,
  `text` varchar(300) DEFAULT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `author`, `text`, `post_id`) VALUES
(1, 'anonimus1', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 1),
(2, 'anonimus2', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 1),
(3, 'anonimus3', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 1),
(4, 'Anonimus4', 'Enable the option include specific text and enter text, if you want to filter comments based on a specific answer or #hashtag.', 2),
(5, 'Komentator5', 'Enable the option include specific text and enter text, if you want to filter comments based on a specific answer or #hashtag.', 2),
(6, 'Komentator6', 'Enable the option include specific text and enter text, if you want to filter comments based on a specific answer or #hashtag.', 2),
(7, 'Anonimus4', 'Click the button \"Get YouTube comments\" to get the comments from a YouTube video.', 31),
(8, 'Komentator5', 'Click the button \"Get YouTube comments\" to get the comments from a YouTube video.', 31),
(9, 'Komentator6', 'Click the button \"Get YouTube comments\" to get the comments from a YouTube video.', 31),
(10, 'Anonimus7', 'Click the button \"Create a unique giveaway link and share your giveaway result by using one of the share buttons (optional).', 32),
(11, 'Komentator8', 'Click the button \"Create a unique giveaway link and share your giveaway result by using one of the share buttons (optional).', 32),
(12, 'Komentator9', 'Click the button \"Create a unique giveaway link and share your giveaway result by using one of the share buttons (optional).', 32),
(13, 'AnonimusF', 'Click the button \"HOW TO GET MORE VIEWS ON YOUTUBE? ', 29),
(14, 'KomentatorF', 'Click the button \"HOW TO GET MORE VIEWS ON YOUTUBE? ', 29),
(15, 'KomentatorF', 'HOW TO GET MORE VIEWS ON YOUTUBE? ', 29),
(16, 'AnonimusX', 'Do you want to get more YouTube views and subscribers?  ', 26),
(17, 'KomentatorX', 'Do you want to get more YouTube views and subscribers? ', 26),
(18, 'KomentatorX', 'Do you want to get more YouTube views and subscribers? ', 26);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `body` varchar(500) DEFAULT NULL,
  `author` varchar(60) DEFAULT NULL,
  `created_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `author`, `created_at`) VALUES
(1, 'neki naslov 1', 'Lorem Ipsum is simply dummy text of the printing typesetting industry.', 'Milutin', '2021-03-16'),
(2, 'neki naslov 2', 'Lorem Ipsum is simply dummy text of the printing typesetting industry.', 'Mihajlo', '2021-03-11'),
(3, 'neki naslov 3', 'Lorem Ipsum is simply dummy text of the printing typesetting industry.', 'Gordana', '2021-01-12'),
(4, 'neki naslov 4', 'Lorem Ipsum is simply dummy text of the printing typesetting industry.', 'Milena', '2021-03-14'),
(5, 'neki naslov 5', 'Lorem Ipsum is simply dummy text of the printing typesetting industry.', 'Goran', '2021-03-01'),
(6, 'neki naslov 6', 'Lorem Ipsum is simply dummy text of the printing typesetting industry.', 'Zoran', '2021-03-06'),
(19, '213', 'content nekog najnovijeg naslova', 'qwe', '0000-00-00'),
(20, 'OVO JE SAD NAJNOVIJI', 'content nekog najnovijeg naslova', 'ANONIMUSN3', '0000-00-00'),
(21, 'das', 'asd', 'asd', '0000-00-00'),
(22, 'sad', 'asdqwe123', '12312', '0000-00-00'),
(23, 'neki najnoviji naslov', '', '2314', '0000-00-00'),
(24, 'neki jos noviji naslov', 'OWDPOWAJDOPAWODPJAWPODJOAWJDOPJAWOPDJOPAWJDOP', 'ANONIMUSN3', '0000-00-00'),
(25, 'wqe', 'wrq', 'ANONIMUSN3', '0000-00-00'),
(26, 'OVO JE SAD NAJNOVIJI', 'NEKI CONTENT', 'anonimusNajnoviji', '0000-00-00'),
(27, 'neki najnoviji naslov', 'iowiofjowiejfweojifwef', 'ANONIMUSN3', '0000-00-00'),
(28, 'neki najnoviji naslov', 'Etiam porta sem malesuada magna mollis euismod. Cras mattis consectetur purus sit amet fermentum.', 'ANONIMUSN3', '2021-03-04'),
(29, 'ZAVRSNI RAD', 'Aenean lacinia bibendum nulla sed consectetur.', 'Milutin Acimovic', '2021-03-17'),
(30, 'OVO JE SAD NAJNOVIJI', 'Etiam porta sem malesuada magna mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.', 'anonimusNajnoviji', '2021-03-17'),
(31, 'POSLEDNJI NASLOV', 'TEKST POSLEDNJEG NASLOVA', 'ZAVRSNIAUTOR', '2021-03-18'),
(32, 'JOSJEDNAPROVERA', 'Etiam porta sem malesuada magna mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.', 'anonimusNajnoviji', '2021-03-18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
