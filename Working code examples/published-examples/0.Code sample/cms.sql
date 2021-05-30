-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2019 at 12:10 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(10) NOT NULL,
  `title` varchar(20) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `content`) VALUES
(1, 'News1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lacus vel facilisis volutpat est velit egestas dui id ornare. Sit amet cursus sit amet dictum sit amet. Luctus accumsan tortor posuere ac ut consequat semper. Interdum posuere lorem ipsum dolor. Arcu dui vivamus arcu felis bibendum ut tristique et egestas. Mauris ultrices eros in cursus turpis massa tincidunt dui ut. Accumsan in nisl nisi scelerisque eu ultrices vitae auctor. A lacus vestibulum sed arcu non odio euismod lacinia. Fringilla ut morbi tincidunt augue interdum velit euismod. Morbi tincidunt ornare massa eget. Non odio euismod lacinia at quis. Lorem ipsum dolor sit amet. Ullamcorper dignissim cras tincidunt lobortis feugiat vivamus at. Libero enim sed faucibus turpis in eu. Nec dui nunc mattis enim. Ipsum dolor sit amet consectetur adipiscing elit pellentesque habitant. Praesent semper feugiat nibh sed pulvinar proin gravida.\r\n\r\nOdio morbi quis commodo odio aenean sed adipiscing. Amet mauris commodo quis imperdiet massa tincidunt nunc pulvinar. Nisl nunc mi ipsum faucibus vitae aliquet. Turpis cursus in hac habitasse platea dictumst quisque sagittis purus. Nisi porta lorem mollis aliquam. Adipiscing elit pellentesque habitant morbi tristique senectus et netus. Velit laoreet id donec ultrices tincidunt. Bibendum est ultricies integer quis auctor. Phasellus vestibulum lorem sed risus ultricies. Pulvinar elementum integer enim neque volutpat ac tincidunt vitae semper. Quis viverra nibh cras pulvinar mattis.\r\n\r\nGravida dictum fusce ut placerat orci nulla pellentesque dignissim enim. In cursus turpis massa tincidunt dui. Cras pulvinar mattis nunc sed blandit libero. Consequat id porta nibh venenatis cras sed. Odio pellentesque diam volutpat commodo sed egestas egestas fringilla. Purus in mollis nunc sed id. Pellentesque elit ullamcorper dignissim cras tincidunt lobortis. In cursus turpis massa tincidunt dui. Vel pretium lectus quam id leo in vitae. Neque convallis a cras semper auctor neque vitae tempus. In nisl nisi scelerisque eu ultrices vitae auctor eu augue. Vestibulum sed arcu non odio euismod. Tellus orci ac auctor augue mauris augue. Nisl rhoncus mattis rhoncus urna neque viverra justo. Convallis convallis tellus id interdum velit laoreet. Augue ut lectus arcu bibendum at. Porta lorem mollis aliquam ut porttitor leo a diam sollicitudin. Enim diam vulputate ut pharetra. Fames ac turpis egestas integer eget aliquet nibh praesent.\r\n\r\nDiam in arcu cursus euismod quis viverra nibh cras pulvinar. Sit amet facilisis magna etiam. Ipsum a arcu cursus vitae congue. Amet nisl suscipit adipiscing bibendum est. Bibendum neque egestas congue quisque egestas diam. Eget sit amet tellus cras adipiscing enim. Tempus imperdiet nulla malesuada pellentesque elit eget gravida. Et pharetra pharetra massa massa ultricies. Ac orci phasellus egestas tellus rutrum. Pretium aenean pharetra magna ac placerat vestibulum lectus mauris ultrices. Quisque id diam vel quam. Erat imperdiet sed euismod nisi porta lorem mollis aliquam. Faucibus in ornare quam viverra orci sagittis eu volutpat. Faucibus in ornare quam viverra orci sagittis. Placerat orci nulla pellentesque dignissim enim sit amet venenatis urna. Vehicula ipsum a arcu cursus vitae congue mauris.\r\n\r\nPellentesque adipiscing commodo elit at. Egestas erat imperdiet sed euismod nisi porta lorem mollis. Congue eu consequat ac felis donec et. Sit amet tellus cras adipiscing enim eu turpis egestas. Enim diam vulputate ut pharetra sit amet aliquam id. Scelerisque eleifend donec pretium vulputate sapien nec sagittis aliquam. Euismod quis viverra nibh cras pulvinar mattis. Euismod nisi porta lorem mollis aliquam ut. Blandit libero volutpat sed cras ornare arcu dui vivamus arcu. Amet tellus cras adipiscing enim eu turpis egestas. Vulputate sapien nec sagittis aliquam malesuada bibendum arcu. Dui id ornare arcu odio ut sem nulla. Arcu cursus vitae congue mauris rhoncus aenean vel. Vitae congue eu consequat ac felis donec. Habitasse platea dictumst quisque sagittis purus sit amet volutpat consequat.'),
(2, 'News2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lacus vel facilisis volutpat est velit egestas dui id ornare. Sit amet cursus sit amet dictum sit amet. Luctus accumsan tortor posuere ac ut consequat semper. Interdum posuere lorem ipsum dolor. Arcu dui vivamus arcu felis bibendum ut tristique et egestas. Mauris ultrices eros in cursus turpis massa tincidunt dui ut. Accumsan in nisl nisi scelerisque eu ultrices vitae auctor. A lacus vestibulum sed arcu non odio euismod lacinia. Fringilla ut morbi tincidunt augue interdum velit euismod. Morbi tincidunt ornare massa eget. Non odio euismod lacinia at quis. Lorem ipsum dolor sit amet. Ullamcorper dignissim cras tincidunt lobortis feugiat vivamus at. Libero enim sed faucibus turpis in eu. Nec dui nunc mattis enim. Ipsum dolor sit amet consectetur adipiscing elit pellentesque habitant. Praesent semper feugiat nibh sed pulvinar proin gravida.\r\n\r\nOdio morbi quis commodo odio aenean sed adipiscing. Amet mauris commodo quis imperdiet massa tincidunt nunc pulvinar. Nisl nunc mi ipsum faucibus vitae aliquet. Turpis cursus in hac habitasse platea dictumst quisque sagittis purus. Nisi porta lorem mollis aliquam. Adipiscing elit pellentesque habitant morbi tristique senectus et netus. Velit laoreet id donec ultrices tincidunt. Bibendum est ultricies integer quis auctor. Phasellus vestibulum lorem sed risus ultricies. Pulvinar elementum integer enim neque volutpat ac tincidunt vitae semper. Quis viverra nibh cras pulvinar mattis.\r\n\r\nGravida dictum fusce ut placerat orci nulla pellentesque dignissim enim. In cursus turpis massa tincidunt dui. Cras pulvinar mattis nunc sed blandit libero. Consequat id porta nibh venenatis cras sed. Odio pellentesque diam volutpat commodo sed egestas egestas fringilla. Purus in mollis nunc sed id. Pellentesque elit ullamcorper dignissim cras tincidunt lobortis. In cursus turpis massa tincidunt dui. Vel pretium lectus quam id leo in vitae. Neque convallis a cras semper auctor neque vitae tempus. In nisl nisi scelerisque eu ultrices vitae auctor eu augue. Vestibulum sed arcu non odio euismod. Tellus orci ac auctor augue mauris augue. Nisl rhoncus mattis rhoncus urna neque viverra justo. Convallis convallis tellus id interdum velit laoreet. Augue ut lectus arcu bibendum at. Porta lorem mollis aliquam ut porttitor leo a diam sollicitudin. Enim diam vulputate ut pharetra. Fames ac turpis egestas integer eget aliquet nibh praesent.\r\n\r\nDiam in arcu cursus euismod quis viverra nibh cras pulvinar. Sit amet facilisis magna etiam. Ipsum a arcu cursus vitae congue. Amet nisl suscipit adipiscing bibendum est. Bibendum neque egestas congue quisque egestas diam. Eget sit amet tellus cras adipiscing enim. Tempus imperdiet nulla malesuada pellentesque elit eget gravida. Et pharetra pharetra massa massa ultricies. Ac orci phasellus egestas tellus rutrum. Pretium aenean pharetra magna ac placerat vestibulum lectus mauris ultrices. Quisque id diam vel quam. Erat imperdiet sed euismod nisi porta lorem mollis aliquam. Faucibus in ornare quam viverra orci sagittis eu volutpat. Faucibus in ornare quam viverra orci sagittis. Placerat orci nulla pellentesque dignissim enim sit amet venenatis urna. Vehicula ipsum a arcu cursus vitae congue mauris.\r\n\r\nPellentesque adipiscing commodo elit at. Egestas erat imperdiet sed euismod nisi porta lorem mollis. Congue eu consequat ac felis donec et. Sit amet tellus cras adipiscing enim eu turpis egestas. Enim diam vulputate ut pharetra sit amet aliquam id. Scelerisque eleifend donec pretium vulputate sapien nec sagittis aliquam. Euismod quis viverra nibh cras pulvinar mattis. Euismod nisi porta lorem mollis aliquam ut. Blandit libero volutpat sed cras ornare arcu dui vivamus arcu. Amet tellus cras adipiscing enim eu turpis egestas. Vulputate sapien nec sagittis aliquam malesuada bibendum arcu. Dui id ornare arcu odio ut sem nulla. Arcu cursus vitae congue mauris rhoncus aenean vel. Vitae congue eu consequat ac felis donec. Habitasse platea dictumst quisque sagittis purus sit amet volutpat consequat.'),
(3, 'News3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lacus vel facilisis volutpat est velit egestas dui id ornare. Sit amet cursus sit amet dictum sit amet. Luctus accumsan tortor posuere ac ut consequat semper. Interdum posuere lorem ipsum dolor. Arcu dui vivamus arcu felis bibendum ut tristique et egestas. Mauris ultrices eros in cursus turpis massa tincidunt dui ut. Accumsan in nisl nisi scelerisque eu ultrices vitae auctor. A lacus vestibulum sed arcu non odio euismod lacinia. Fringilla ut morbi tincidunt augue interdum velit euismod. Morbi tincidunt ornare massa eget. Non odio euismod lacinia at quis. Lorem ipsum dolor sit amet. Ullamcorper dignissim cras tincidunt lobortis feugiat vivamus at. Libero enim sed faucibus turpis in eu. Nec dui nunc mattis enim. Ipsum dolor sit amet consectetur adipiscing elit pellentesque habitant. Praesent semper feugiat nibh sed pulvinar proin gravida.\r\n\r\nOdio morbi quis commodo odio aenean sed adipiscing. Amet mauris commodo quis imperdiet massa tincidunt nunc pulvinar. Nisl nunc mi ipsum faucibus vitae aliquet. Turpis cursus in hac habitasse platea dictumst quisque sagittis purus. Nisi porta lorem mollis aliquam. Adipiscing elit pellentesque habitant morbi tristique senectus et netus. Velit laoreet id donec ultrices tincidunt. Bibendum est ultricies integer quis auctor. Phasellus vestibulum lorem sed risus ultricies. Pulvinar elementum integer enim neque volutpat ac tincidunt vitae semper. Quis viverra nibh cras pulvinar mattis.\r\n\r\nGravida dictum fusce ut placerat orci nulla pellentesque dignissim enim. In cursus turpis massa tincidunt dui. Cras pulvinar mattis nunc sed blandit libero. Consequat id porta nibh venenatis cras sed. Odio pellentesque diam volutpat commodo sed egestas egestas fringilla. Purus in mollis nunc sed id. Pellentesque elit ullamcorper dignissim cras tincidunt lobortis. In cursus turpis massa tincidunt dui. Vel pretium lectus quam id leo in vitae. Neque convallis a cras semper auctor neque vitae tempus. In nisl nisi scelerisque eu ultrices vitae auctor eu augue. Vestibulum sed arcu non odio euismod. Tellus orci ac auctor augue mauris augue. Nisl rhoncus mattis rhoncus urna neque viverra justo. Convallis convallis tellus id interdum velit laoreet. Augue ut lectus arcu bibendum at. Porta lorem mollis aliquam ut porttitor leo a diam sollicitudin. Enim diam vulputate ut pharetra. Fames ac turpis egestas integer eget aliquet nibh praesent.\r\n\r\nDiam in arcu cursus euismod quis viverra nibh cras pulvinar. Sit amet facilisis magna etiam. Ipsum a arcu cursus vitae congue. Amet nisl suscipit adipiscing bibendum est. Bibendum neque egestas congue quisque egestas diam. Eget sit amet tellus cras adipiscing enim. Tempus imperdiet nulla malesuada pellentesque elit eget gravida. Et pharetra pharetra massa massa ultricies. Ac orci phasellus egestas tellus rutrum. Pretium aenean pharetra magna ac placerat vestibulum lectus mauris ultrices. Quisque id diam vel quam. Erat imperdiet sed euismod nisi porta lorem mollis aliquam. Faucibus in ornare quam viverra orci sagittis eu volutpat. Faucibus in ornare quam viverra orci sagittis. Placerat orci nulla pellentesque dignissim enim sit amet venenatis urna. Vehicula ipsum a arcu cursus vitae congue mauris.\r\n\r\nPellentesque adipiscing commodo elit at. Egestas erat imperdiet sed euismod nisi porta lorem mollis. Congue eu consequat ac felis donec et. Sit amet tellus cras adipiscing enim eu turpis egestas. Enim diam vulputate ut pharetra sit amet aliquam id. Scelerisque eleifend donec pretium vulputate sapien nec sagittis aliquam. Euismod quis viverra nibh cras pulvinar mattis. Euismod nisi porta lorem mollis aliquam ut. Blandit libero volutpat sed cras ornare arcu dui vivamus arcu. Amet tellus cras adipiscing enim eu turpis egestas. Vulputate sapien nec sagittis aliquam malesuada bibendum arcu. Dui id ornare arcu odio ut sem nulla. Arcu cursus vitae congue mauris rhoncus aenean vel. Vitae congue eu consequat ac felis donec. Habitasse platea dictumst quisque sagittis purus sit amet volutpat consequat.'),
(4, 'News4', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lacus vel facilisis volutpat est velit egestas dui id ornare. Sit amet cursus sit amet dictum sit amet. Luctus accumsan tortor posuere ac ut consequat semper. Interdum posuere lorem ipsum dolor. Arcu dui vivamus arcu felis bibendum ut tristique et egestas. Mauris ultrices eros in cursus turpis massa tincidunt dui ut. Accumsan in nisl nisi scelerisque eu ultrices vitae auctor. A lacus vestibulum sed arcu non odio euismod lacinia. Fringilla ut morbi tincidunt augue interdum velit euismod. Morbi tincidunt ornare massa eget. Non odio euismod lacinia at quis. Lorem ipsum dolor sit amet. Ullamcorper dignissim cras tincidunt lobortis feugiat vivamus at. Libero enim sed faucibus turpis in eu. Nec dui nunc mattis enim. Ipsum dolor sit amet consectetur adipiscing elit pellentesque habitant. Praesent semper feugiat nibh sed pulvinar proin gravida.\r\n\r\nOdio morbi quis commodo odio aenean sed adipiscing. Amet mauris commodo quis imperdiet massa tincidunt nunc pulvinar. Nisl nunc mi ipsum faucibus vitae aliquet. Turpis cursus in hac habitasse platea dictumst quisque sagittis purus. Nisi porta lorem mollis aliquam. Adipiscing elit pellentesque habitant morbi tristique senectus et netus. Velit laoreet id donec ultrices tincidunt. Bibendum est ultricies integer quis auctor. Phasellus vestibulum lorem sed risus ultricies. Pulvinar elementum integer enim neque volutpat ac tincidunt vitae semper. Quis viverra nibh cras pulvinar mattis.\r\n\r\nGravida dictum fusce ut placerat orci nulla pellentesque dignissim enim. In cursus turpis massa tincidunt dui. Cras pulvinar mattis nunc sed blandit libero. Consequat id porta nibh venenatis cras sed. Odio pellentesque diam volutpat commodo sed egestas egestas fringilla. Purus in mollis nunc sed id. Pellentesque elit ullamcorper dignissim cras tincidunt lobortis. In cursus turpis massa tincidunt dui. Vel pretium lectus quam id leo in vitae. Neque convallis a cras semper auctor neque vitae tempus. In nisl nisi scelerisque eu ultrices vitae auctor eu augue. Vestibulum sed arcu non odio euismod. Tellus orci ac auctor augue mauris augue. Nisl rhoncus mattis rhoncus urna neque viverra justo. Convallis convallis tellus id interdum velit laoreet. Augue ut lectus arcu bibendum at. Porta lorem mollis aliquam ut porttitor leo a diam sollicitudin. Enim diam vulputate ut pharetra. Fames ac turpis egestas integer eget aliquet nibh praesent.\r\n\r\nDiam in arcu cursus euismod quis viverra nibh cras pulvinar. Sit amet facilisis magna etiam. Ipsum a arcu cursus vitae congue. Amet nisl suscipit adipiscing bibendum est. Bibendum neque egestas congue quisque egestas diam. Eget sit amet tellus cras adipiscing enim. Tempus imperdiet nulla malesuada pellentesque elit eget gravida. Et pharetra pharetra massa massa ultricies. Ac orci phasellus egestas tellus rutrum. Pretium aenean pharetra magna ac placerat vestibulum lectus mauris ultrices. Quisque id diam vel quam. Erat imperdiet sed euismod nisi porta lorem mollis aliquam. Faucibus in ornare quam viverra orci sagittis eu volutpat. Faucibus in ornare quam viverra orci sagittis. Placerat orci nulla pellentesque dignissim enim sit amet venenatis urna. Vehicula ipsum a arcu cursus vitae congue mauris.\r\n\r\nPellentesque adipiscing commodo elit at. Egestas erat imperdiet sed euismod nisi porta lorem mollis. Congue eu consequat ac felis donec et. Sit amet tellus cras adipiscing enim eu turpis egestas. Enim diam vulputate ut pharetra sit amet aliquam id. Scelerisque eleifend donec pretium vulputate sapien nec sagittis aliquam. Euismod quis viverra nibh cras pulvinar mattis. Euismod nisi porta lorem mollis aliquam ut. Blandit libero volutpat sed cras ornare arcu dui vivamus arcu. Amet tellus cras adipiscing enim eu turpis egestas. Vulputate sapien nec sagittis aliquam malesuada bibendum arcu. Dui id ornare arcu odio ut sem nulla. Arcu cursus vitae congue mauris rhoncus aenean vel. Vitae congue eu consequat ac felis donec. Habitasse platea dictumst quisque sagittis purus sit amet volutpat consequat.');

-- --------------------------------------------------------

--
-- Table structure for table `stats`
--

CREATE TABLE `stats` (
  `browser` varchar(100) NOT NULL,
  `referer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stats`
--

INSERT INTO `stats` (`browser`, `referer`) VALUES
('firefox', ''),
('firefox', ''),
('firefox', ''),
('firefox', ''),
('firefox', ''),
('firefox', ''),
('firefox', ''),
('firefox', ''),
('firefox', 'http://localhost/news.php?id=3'),
('firefox', 'http://localhost/news.php?id=3'),
('firefox', ''),
('firefox', ''),
('firefox', '');

-- --------------------------------------------------------

--
-- Table structure for table `tracking`
--

CREATE TABLE `tracking` (
  `access_page` varchar(100) NOT NULL,
  `access_counter` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tracking`
--

INSERT INTO `tracking` (`access_page`, `access_counter`) VALUES
('Homepage', 21);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tracking`
--
ALTER TABLE `tracking`
  ADD PRIMARY KEY (`access_page`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
