-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2019 at 05:26 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mjib_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `bidayatul_hidayah`
--

CREATE TABLE `bidayatul_hidayah` (
  `id` int(10) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `content` longtext,
  `image` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bidayatul_hidayah`
--

INSERT INTO `bidayatul_hidayah` (`id`, `username`, `judul`, `content`, `image`, `updated_at`) VALUES
(11, 'teguhID', 'BIdayatul Hidayah 1', '<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras id volutpat urna, quis dignissim massa. Suspendisse sagittis nunc magna, nec tempus massa imperdiet iaculis. Proin placerat auctor luctus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam in luctus neque. Integer consequat nulla sem, eget vehicula quam tempor blandit. Vivamus ornare venenatis felis. Nullam scelerisque quam sit amet ullamcorper tincidunt. Donec euismod vitae purus a ultricies. Nunc rhoncus blandit fringilla. Nunc sit amet nibh enim. Morbi in iaculis urna. Donec cursus mauris in libero semper fringilla. Etiam rhoncus a ligula id ornare. Vestibulum non tristique lacus.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Phasellus sagittis sem urna, in tempus lectus elementum sit amet. Quisque scelerisque lacus sit amet odio vestibulum pellentesque. Integer pulvinar aliquam sem consectetur iaculis. Vivamus nisi nulla, gravida non dui ac, venenatis tempor dolor. Nullam molestie dictum ligula, vel viverra felis suscipit vitae. Aenean nunc sem, tempor eu maximus a, elementum et ligula. Fusce nunc eros, vulputate non rhoncus vel, convallis in magna. Proin iaculis aliquet rutrum. Pellentesque porta justo nisi, eget semper sapien dignissim non. Nunc velit leo, efficitur ac felis vel, luctus semper magna. Phasellus sodales diam ac volutpat venenatis. Integer egestas sollicitudin elit, eget sagittis nisi semper ut.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Quisque non pulvinar leo. Aenean neque eros, sagittis nec orci nec, iaculis hendrerit mauris. Pellentesque scelerisque faucibus est, a placerat ipsum cursus id. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus urna nibh, tristique et molestie id, rutrum vel velit. Nam eu pretium ipsum, et venenatis mauris. Nunc vel lacus sit amet sem ultricies varius sit amet nec felis. Phasellus placerat tincidunt ex, at semper nulla aliquam ac. Suspendisse potenti. In urna lectus, tincidunt eget augue et, vestibulum tempor ligula. Donec posuere ante non lectus facilisis, sit amet malesuada nibh vehicula. Morbi quis feugiat risus. Phasellus ullamcorper sapien urna, in porttitor risus iaculis ac. Donec bibendum accumsan tellus et imperdiet. Ut eget lacus non ex pulvinar iaculis. Fusce lacinia nisi sit amet tellus accumsan maximus.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Fusce ullamcorper nunc sed metus ullamcorper sollicitudin. Sed at felis posuere, ultrices mi sed, tristique neque. Vestibulum suscipit mi eu lorem sodales imperdiet. Donec ipsum sem, luctus bibendum risus a, viverra volutpat ante. Donec tincidunt massa in lorem mattis rhoncus. Morbi tempor dictum egestas. Aenean tristique, mauris ultrices vestibulum aliquam, ipsum ipsum accumsan dui, ac commodo ipsum nisi scelerisque metus. Morbi ante nibh, iaculis sit amet est et, dictum pretium purus.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Aliquam sit amet nisl non sapien luctus commodo eu non mi. Aliquam lacinia vulputate lacus, sit amet interdum tellus volutpat nec. Integer vitae volutpat est. Donec ac urna arcu. Maecenas cursus eget lorem ornare tempor. Duis augue sapien, sollicitudin at pulvinar non, rhoncus vel nisl. Ut suscipit sodales nisl, sit amet viverra libero semper vel. Nulla elit diam, dapibus vel molestie ut, consequat quis ex. Mauris faucibus urna ac massa gravida consectetur. Ut nec urna mi. Etiam ac sapien condimentum, congue magna vel, sagittis urna. Donec commodo feugiat nibh quis malesuada. Donec ornare nisi lacus, ut accumsan mauris feugiat at. Nunc in lacus vitae tellus eleifend condimentum. Donec aliquet nisi nec nulla placerat dictum. Morbi id maximus orci.</p>', '201019111459download.png', '2019-10-21');

-- --------------------------------------------------------

--
-- Table structure for table `biografi_mjib`
--

CREATE TABLE `biografi_mjib` (
  `id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `biografi` longtext,
  `judul` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `biografi_mjib`
--

INSERT INTO `biografi_mjib` (`id`, `image`, `biografi`, `judul`, `username`, `updated_at`) VALUES
(1, '061019034812test.jpg', '<p><span style=\"font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; text-align: justify; background-color: #ffffff;\">\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"</span></p>', 'Biografi MJIB', 'TeguhID', '2019-10-20');

-- --------------------------------------------------------

--
-- Table structure for table `biografi_pimpinan_mjib`
--

CREATE TABLE `biografi_pimpinan_mjib` (
  `id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `biografi` longtext,
  `judul` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `biografi_pimpinan_mjib`
--

INSERT INTO `biografi_pimpinan_mjib` (`id`, `image`, `biografi`, `judul`, `username`, `updated_at`) VALUES
(1, '061019034833test.jpg', '<p><span style=\"font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; text-align: justify; background-color: #ffffff;\">\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"</span></p>', 'Biografi Pimpinan MJIB', 'TeguhID', '2019-10-06');

-- --------------------------------------------------------

--
-- Table structure for table `ihya_ulumuddin`
--

CREATE TABLE `ihya_ulumuddin` (
  `id` int(10) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `content` longtext,
  `image` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ihya_ulumuddin`
--

INSERT INTO `ihya_ulumuddin` (`id`, `username`, `judul`, `content`, `image`, `updated_at`) VALUES
(11, 'teguhID', 'Kitab Ihya Ulumuddin 1', '<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras id volutpat urna, quis dignissim massa. Suspendisse sagittis nunc magna, nec tempus massa imperdiet iaculis. Proin placerat auctor luctus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam in luctus neque. Integer consequat nulla sem, eget vehicula quam tempor blandit. Vivamus ornare venenatis felis. Nullam scelerisque quam sit amet ullamcorper tincidunt. Donec euismod vitae purus a ultricies. Nunc rhoncus blandit fringilla. Nunc sit amet nibh enim. Morbi in iaculis urna. Donec cursus mauris in libero semper fringilla. Etiam rhoncus a ligula id ornare. Vestibulum non tristique lacus.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Phasellus sagittis sem urna, in tempus lectus elementum sit amet. Quisque scelerisque lacus sit amet odio vestibulum pellentesque. Integer pulvinar aliquam sem consectetur iaculis. Vivamus nisi nulla, gravida non dui ac, venenatis tempor dolor. Nullam molestie dictum ligula, vel viverra felis suscipit vitae. Aenean nunc sem, tempor eu maximus a, elementum et ligula. Fusce nunc eros, vulputate non rhoncus vel, convallis in magna. Proin iaculis aliquet rutrum. Pellentesque porta justo nisi, eget semper sapien dignissim non. Nunc velit leo, efficitur ac felis vel, luctus semper magna. Phasellus sodales diam ac volutpat venenatis. Integer egestas sollicitudin elit, eget sagittis nisi semper ut.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Quisque non pulvinar leo. Aenean neque eros, sagittis nec orci nec, iaculis hendrerit mauris. Pellentesque scelerisque faucibus est, a placerat ipsum cursus id. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus urna nibh, tristique et molestie id, rutrum vel velit. Nam eu pretium ipsum, et venenatis mauris. Nunc vel lacus sit amet sem ultricies varius sit amet nec felis. Phasellus placerat tincidunt ex, at semper nulla aliquam ac. Suspendisse potenti. In urna lectus, tincidunt eget augue et, vestibulum tempor ligula. Donec posuere ante non lectus facilisis, sit amet malesuada nibh vehicula. Morbi quis feugiat risus. Phasellus ullamcorper sapien urna, in porttitor risus iaculis ac. Donec bibendum accumsan tellus et imperdiet. Ut eget lacus non ex pulvinar iaculis. Fusce lacinia nisi sit amet tellus accumsan maximus.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Fusce ullamcorper nunc sed metus ullamcorper sollicitudin. Sed at felis posuere, ultrices mi sed, tristique neque. Vestibulum suscipit mi eu lorem sodales imperdiet. Donec ipsum sem, luctus bibendum risus a, viverra volutpat ante. Donec tincidunt massa in lorem mattis rhoncus. Morbi tempor dictum egestas. Aenean tristique, mauris ultrices vestibulum aliquam, ipsum ipsum accumsan dui, ac commodo ipsum nisi scelerisque metus. Morbi ante nibh, iaculis sit amet est et, dictum pretium purus.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Aliquam sit amet nisl non sapien luctus commodo eu non mi. Aliquam lacinia vulputate lacus, sit amet interdum tellus volutpat nec. Integer vitae volutpat est. Donec ac urna arcu. Maecenas cursus eget lorem ornare tempor. Duis augue sapien, sollicitudin at pulvinar non, rhoncus vel nisl. Ut suscipit sodales nisl, sit amet viverra libero semper vel. Nulla elit diam, dapibus vel molestie ut, consequat quis ex. Mauris faucibus urna ac massa gravida consectetur. Ut nec urna mi. Etiam ac sapien condimentum, congue magna vel, sagittis urna. Donec commodo feugiat nibh quis malesuada. Donec ornare nisi lacus, ut accumsan mauris feugiat at. Nunc in lacus vitae tellus eleifend condimentum. Donec aliquet nisi nec nulla placerat dictum. Morbi id maximus orci.</p>', '211019011645download.png', '2019-10-21'),
(12, 'teguhID', 'Kitab Ihya Ulumuddin 2', '<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras id volutpat urna, quis dignissim massa. Suspendisse sagittis nunc magna, nec tempus massa imperdiet iaculis. Proin placerat auctor luctus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam in luctus neque. Integer consequat nulla sem, eget vehicula quam tempor blandit. Vivamus ornare venenatis felis. Nullam scelerisque quam sit amet ullamcorper tincidunt. Donec euismod vitae purus a ultricies. Nunc rhoncus blandit fringilla. Nunc sit amet nibh enim. Morbi in iaculis urna. Donec cursus mauris in libero semper fringilla. Etiam rhoncus a ligula id ornare. Vestibulum non tristique lacus.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Phasellus sagittis sem urna, in tempus lectus elementum sit amet. Quisque scelerisque lacus sit amet odio vestibulum pellentesque. Integer pulvinar aliquam sem consectetur iaculis. Vivamus nisi nulla, gravida non dui ac, venenatis tempor dolor. Nullam molestie dictum ligula, vel viverra felis suscipit vitae. Aenean nunc sem, tempor eu maximus a, elementum et ligula. Fusce nunc eros, vulputate non rhoncus vel, convallis in magna. Proin iaculis aliquet rutrum. Pellentesque porta justo nisi, eget semper sapien dignissim non. Nunc velit leo, efficitur ac felis vel, luctus semper magna. Phasellus sodales diam ac volutpat venenatis. Integer egestas sollicitudin elit, eget sagittis nisi semper ut.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Quisque non pulvinar leo. Aenean neque eros, sagittis nec orci nec, iaculis hendrerit mauris. Pellentesque scelerisque faucibus est, a placerat ipsum cursus id. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus urna nibh, tristique et molestie id, rutrum vel velit. Nam eu pretium ipsum, et venenatis mauris. Nunc vel lacus sit amet sem ultricies varius sit amet nec felis. Phasellus placerat tincidunt ex, at semper nulla aliquam ac. Suspendisse potenti. In urna lectus, tincidunt eget augue et, vestibulum tempor ligula. Donec posuere ante non lectus facilisis, sit amet malesuada nibh vehicula. Morbi quis feugiat risus. Phasellus ullamcorper sapien urna, in porttitor risus iaculis ac. Donec bibendum accumsan tellus et imperdiet. Ut eget lacus non ex pulvinar iaculis. Fusce lacinia nisi sit amet tellus accumsan maximus.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Fusce ullamcorper nunc sed metus ullamcorper sollicitudin. Sed at felis posuere, ultrices mi sed, tristique neque. Vestibulum suscipit mi eu lorem sodales imperdiet. Donec ipsum sem, luctus bibendum risus a, viverra volutpat ante. Donec tincidunt massa in lorem mattis rhoncus. Morbi tempor dictum egestas. Aenean tristique, mauris ultrices vestibulum aliquam, ipsum ipsum accumsan dui, ac commodo ipsum nisi scelerisque metus. Morbi ante nibh, iaculis sit amet est et, dictum pretium purus.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Aliquam sit amet nisl non sapien luctus commodo eu non mi. Aliquam lacinia vulputate lacus, sit amet interdum tellus volutpat nec. Integer vitae volutpat est. Donec ac urna arcu. Maecenas cursus eget lorem ornare tempor. Duis augue sapien, sollicitudin at pulvinar non, rhoncus vel nisl. Ut suscipit sodales nisl, sit amet viverra libero semper vel. Nulla elit diam, dapibus vel molestie ut, consequat quis ex. Mauris faucibus urna ac massa gravida consectetur. Ut nec urna mi. Etiam ac sapien condimentum, congue magna vel, sagittis urna. Donec commodo feugiat nibh quis malesuada. Donec ornare nisi lacus, ut accumsan mauris feugiat at. Nunc in lacus vitae tellus eleifend condimentum. Donec aliquet nisi nec nulla placerat dictum. Morbi id maximus orci.</p>', '211019011702download.png', '2019-10-21'),
(13, 'asd', 'Kitab Ihya Ulumuddin 3', '<p style=\"color: grey;\">asd</p>', '211019011713download.png', '2019-10-21');

-- --------------------------------------------------------

--
-- Table structure for table `nashoih_diniyah`
--

CREATE TABLE `nashoih_diniyah` (
  `id` int(10) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `content` longtext,
  `image` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nashoih_diniyah`
--

INSERT INTO `nashoih_diniyah` (`id`, `username`, `judul`, `content`, `image`, `updated_at`) VALUES
(1, 'master', 'Nashoih Diniyah 11', '<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">asd</p>', '211019034925Untitled.png', '2019-10-21'),
(2, 'master', 'Nashoih Diniyah 2', '<p style=\"color: grey;\">Tulis Konten Anda Di Sini</p>', '211019015416download.png', '2019-10-21');

-- --------------------------------------------------------

--
-- Table structure for table `riyadush_sholihin`
--

CREATE TABLE `riyadush_sholihin` (
  `id` int(10) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `content` longtext,
  `image` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `riyadush_sholihin`
--

INSERT INTO `riyadush_sholihin` (`id`, `username`, `judul`, `content`, `image`, `updated_at`) VALUES
(11, 'teguhID', 'Riyadus Sholihin 1', '<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras id volutpat urna, quis dignissim massa. Suspendisse sagittis nunc magna, nec tempus massa imperdiet iaculis. Proin placerat auctor luctus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam in luctus neque. Integer consequat nulla sem, eget vehicula quam tempor blandit. Vivamus ornare venenatis felis. Nullam scelerisque quam sit amet ullamcorper tincidunt. Donec euismod vitae purus a ultricies. Nunc rhoncus blandit fringilla. Nunc sit amet nibh enim. Morbi in iaculis urna. Donec cursus mauris in libero semper fringilla. Etiam rhoncus a ligula id ornare. Vestibulum non tristique lacus.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Phasellus sagittis sem urna, in tempus lectus elementum sit amet. Quisque scelerisque lacus sit amet odio vestibulum pellentesque. Integer pulvinar aliquam sem consectetur iaculis. Vivamus nisi nulla, gravida non dui ac, venenatis tempor dolor. Nullam molestie dictum ligula, vel viverra felis suscipit vitae. Aenean nunc sem, tempor eu maximus a, elementum et ligula. Fusce nunc eros, vulputate non rhoncus vel, convallis in magna. Proin iaculis aliquet rutrum. Pellentesque porta justo nisi, eget semper sapien dignissim non. Nunc velit leo, efficitur ac felis vel, luctus semper magna. Phasellus sodales diam ac volutpat venenatis. Integer egestas sollicitudin elit, eget sagittis nisi semper ut.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Quisque non pulvinar leo. Aenean neque eros, sagittis nec orci nec, iaculis hendrerit mauris. Pellentesque scelerisque faucibus est, a placerat ipsum cursus id. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus urna nibh, tristique et molestie id, rutrum vel velit. Nam eu pretium ipsum, et venenatis mauris. Nunc vel lacus sit amet sem ultricies varius sit amet nec felis. Phasellus placerat tincidunt ex, at semper nulla aliquam ac. Suspendisse potenti. In urna lectus, tincidunt eget augue et, vestibulum tempor ligula. Donec posuere ante non lectus facilisis, sit amet malesuada nibh vehicula. Morbi quis feugiat risus. Phasellus ullamcorper sapien urna, in porttitor risus iaculis ac. Donec bibendum accumsan tellus et imperdiet. Ut eget lacus non ex pulvinar iaculis. Fusce lacinia nisi sit amet tellus accumsan maximus.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Fusce ullamcorper nunc sed metus ullamcorper sollicitudin. Sed at felis posuere, ultrices mi sed, tristique neque. Vestibulum suscipit mi eu lorem sodales imperdiet. Donec ipsum sem, luctus bibendum risus a, viverra volutpat ante. Donec tincidunt massa in lorem mattis rhoncus. Morbi tempor dictum egestas. Aenean tristique, mauris ultrices vestibulum aliquam, ipsum ipsum accumsan dui, ac commodo ipsum nisi scelerisque metus. Morbi ante nibh, iaculis sit amet est et, dictum pretium purus.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Aliquam sit amet nisl non sapien luctus commodo eu non mi. Aliquam lacinia vulputate lacus, sit amet interdum tellus volutpat nec. Integer vitae volutpat est. Donec ac urna arcu. Maecenas cursus eget lorem ornare tempor. Duis augue sapien, sollicitudin at pulvinar non, rhoncus vel nisl. Ut suscipit sodales nisl, sit amet viverra libero semper vel. Nulla elit diam, dapibus vel molestie ut, consequat quis ex. Mauris faucibus urna ac massa gravida consectetur. Ut nec urna mi. Etiam ac sapien condimentum, congue magna vel, sagittis urna. Donec commodo feugiat nibh quis malesuada. Donec ornare nisi lacus, ut accumsan mauris feugiat at. Nunc in lacus vitae tellus eleifend condimentum. Donec aliquet nisi nec nulla placerat dictum. Morbi id maximus orci.</p>', '211019011928download.png', '2019-10-21'),
(12, 'teguhID', 'Riyadus Sholihin 2', '<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras id volutpat urna, quis dignissim massa. Suspendisse sagittis nunc magna, nec tempus massa imperdiet iaculis. Proin placerat auctor luctus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam in luctus neque. Integer consequat nulla sem, eget vehicula quam tempor blandit. Vivamus ornare venenatis felis. Nullam scelerisque quam sit amet ullamcorper tincidunt. Donec euismod vitae purus a ultricies. Nunc rhoncus blandit fringilla. Nunc sit amet nibh enim. Morbi in iaculis urna. Donec cursus mauris in libero semper fringilla. Etiam rhoncus a ligula id ornare. Vestibulum non tristique lacus.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Phasellus sagittis sem urna, in tempus lectus elementum sit amet. Quisque scelerisque lacus sit amet odio vestibulum pellentesque. Integer pulvinar aliquam sem consectetur iaculis. Vivamus nisi nulla, gravida non dui ac, venenatis tempor dolor. Nullam molestie dictum ligula, vel viverra felis suscipit vitae. Aenean nunc sem, tempor eu maximus a, elementum et ligula. Fusce nunc eros, vulputate non rhoncus vel, convallis in magna. Proin iaculis aliquet rutrum. Pellentesque porta justo nisi, eget semper sapien dignissim non. Nunc velit leo, efficitur ac felis vel, luctus semper magna. Phasellus sodales diam ac volutpat venenatis. Integer egestas sollicitudin elit, eget sagittis nisi semper ut.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Quisque non pulvinar leo. Aenean neque eros, sagittis nec orci nec, iaculis hendrerit mauris. Pellentesque scelerisque faucibus est, a placerat ipsum cursus id. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus urna nibh, tristique et molestie id, rutrum vel velit. Nam eu pretium ipsum, et venenatis mauris. Nunc vel lacus sit amet sem ultricies varius sit amet nec felis. Phasellus placerat tincidunt ex, at semper nulla aliquam ac. Suspendisse potenti. In urna lectus, tincidunt eget augue et, vestibulum tempor ligula. Donec posuere ante non lectus facilisis, sit amet malesuada nibh vehicula. Morbi quis feugiat risus. Phasellus ullamcorper sapien urna, in porttitor risus iaculis ac. Donec bibendum accumsan tellus et imperdiet. Ut eget lacus non ex pulvinar iaculis. Fusce lacinia nisi sit amet tellus accumsan maximus.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Fusce ullamcorper nunc sed metus ullamcorper sollicitudin. Sed at felis posuere, ultrices mi sed, tristique neque. Vestibulum suscipit mi eu lorem sodales imperdiet. Donec ipsum sem, luctus bibendum risus a, viverra volutpat ante. Donec tincidunt massa in lorem mattis rhoncus. Morbi tempor dictum egestas. Aenean tristique, mauris ultrices vestibulum aliquam, ipsum ipsum accumsan dui, ac commodo ipsum nisi scelerisque metus. Morbi ante nibh, iaculis sit amet est et, dictum pretium purus.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Aliquam sit amet nisl non sapien luctus commodo eu non mi. Aliquam lacinia vulputate lacus, sit amet interdum tellus volutpat nec. Integer vitae volutpat est. Donec ac urna arcu. Maecenas cursus eget lorem ornare tempor. Duis augue sapien, sollicitudin at pulvinar non, rhoncus vel nisl. Ut suscipit sodales nisl, sit amet viverra libero semper vel. Nulla elit diam, dapibus vel molestie ut, consequat quis ex. Mauris faucibus urna ac massa gravida consectetur. Ut nec urna mi. Etiam ac sapien condimentum, congue magna vel, sagittis urna. Donec commodo feugiat nibh quis malesuada. Donec ornare nisi lacus, ut accumsan mauris feugiat at. Nunc in lacus vitae tellus eleifend condimentum. Donec aliquet nisi nec nulla placerat dictum. Morbi id maximus orci.</p>', '211019011942download.png', '2019-10-21'),
(13, 'asd', 'Riyadus Sholihin 3', '<p style=\"color: grey;\">asd</p>', '211019011950download.png', '2019-10-21');

-- --------------------------------------------------------

--
-- Table structure for table `syarah_hadist_jibril`
--

CREATE TABLE `syarah_hadist_jibril` (
  `id` int(10) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `content` longtext,
  `image` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `syarah_hadist_jibril`
--

INSERT INTO `syarah_hadist_jibril` (`id`, `username`, `judul`, `content`, `image`, `updated_at`) VALUES
(13, 'teguhID', 'Syarah Hadist Jibril 3', '<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">asd</p>', '211019033449Untitled.png', '2019-10-21'),
(14, 'master', 'Syarah Hadist Jibril 2', '<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', '211019023032download.png', '2019-10-21');

-- --------------------------------------------------------

--
-- Table structure for table `syarah_ratib_alhaddad`
--

CREATE TABLE `syarah_ratib_alhaddad` (
  `id` int(10) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `content` longtext,
  `image` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `hak_akses` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `hak_akses`) VALUES
(1, 'master', 'master', 'master'),
(2, 'master', 'a30fc3c39c1083e0216f4e964c81beeb10143f05', 'master');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bidayatul_hidayah`
--
ALTER TABLE `bidayatul_hidayah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `biografi_mjib`
--
ALTER TABLE `biografi_mjib`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `biografi_pimpinan_mjib`
--
ALTER TABLE `biografi_pimpinan_mjib`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ihya_ulumuddin`
--
ALTER TABLE `ihya_ulumuddin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nashoih_diniyah`
--
ALTER TABLE `nashoih_diniyah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `riyadush_sholihin`
--
ALTER TABLE `riyadush_sholihin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `syarah_hadist_jibril`
--
ALTER TABLE `syarah_hadist_jibril`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `syarah_ratib_alhaddad`
--
ALTER TABLE `syarah_ratib_alhaddad`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bidayatul_hidayah`
--
ALTER TABLE `bidayatul_hidayah`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `biografi_mjib`
--
ALTER TABLE `biografi_mjib`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `biografi_pimpinan_mjib`
--
ALTER TABLE `biografi_pimpinan_mjib`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ihya_ulumuddin`
--
ALTER TABLE `ihya_ulumuddin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `nashoih_diniyah`
--
ALTER TABLE `nashoih_diniyah`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `riyadush_sholihin`
--
ALTER TABLE `riyadush_sholihin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `syarah_hadist_jibril`
--
ALTER TABLE `syarah_hadist_jibril`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `syarah_ratib_alhaddad`
--
ALTER TABLE `syarah_ratib_alhaddad`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
