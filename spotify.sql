-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 13, 2018 at 11:03 PM
-- Server version: 5.1.73
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `spotify`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `artworkPath` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `title`, `artist`, `genre`, `artworkPath`) VALUES
(1, 'Dragana Mirkovic 2006', 1, 1, 'assets/images/artwork/dragana.jpg'),
(2, 'Donde estan los ladrones', 2, 2, 'assets/images/artwork/shakira.jpg'),
(3, 'Who You Are', 3, 3, 'assets/images/artwork/jessi.jpg'),
(4, 'Lady Gaga', 4, 3, 'assets/images/artwork/ladygaga.jpg'),
(5, 'Nicki Minaj', 5, 3, 'assets/images/artwork/niki.jpg'),
(6, 'Pitbull', 6, 3, 'assets/images/artwork/pitbull.jpg'),
(7, 'The Qemists feat. Jenna G-On TheRun', 7, 4, 'assets/images/artwork/qemists.jpg'),
(8, 'Hard House', 8, 5, 'assets/images/artwork/lisa.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE `artists` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`id`, `name`) VALUES
(1, 'Dragana Mirkovic '),
(2, 'Shakira'),
(3, 'Jessie J'),
(4, 'Lady Gaga'),
(5, 'Nicki Minaj'),
(6, 'Pitbull'),
(7, 'The_Qemists'),
(8, 'Lisa Lashes');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`) VALUES
(1, 'Disco'),
(2, 'Latino'),
(3, 'Pop'),
(4, 'Electro '),
(5, 'House');

-- --------------------------------------------------------

--
-- Table structure for table `playlists`
--

CREATE TABLE `playlists` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `owner` varchar(50) NOT NULL,
  `dateCreated` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `playlists`
--

INSERT INTO `playlists` (`id`, `name`, `owner`, `dateCreated`) VALUES
(1, 'Muzica', 'schneider', '2018-07-22 00:00:00'),
(2, 'muzica', 'Schneider3', '2018-07-25 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `playlistSongs`
--

CREATE TABLE `playlistSongs` (
  `id` int(11) NOT NULL,
  `songId` int(11) NOT NULL,
  `playlistid` int(11) NOT NULL,
  `playlistOrder` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `playlistSongs`
--

INSERT INTO `playlistSongs` (`id`, `songId`, `playlistid`, `playlistOrder`) VALUES
(1, 2, 1, 0),
(2, 2, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `album` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `duration` varchar(8) NOT NULL,
  `path` varchar(600) NOT NULL,
  `albumOrder` int(11) NOT NULL,
  `plays` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `title`, `artist`, `album`, `genre`, `duration`, `path`, `albumOrder`, `plays`) VALUES
(1, 'Ako me ostavis', 1, 1, 1, '04:18', 'assets/music/Dragana/Ako me ostavis.mp3', 2, 34),
(2, 'Danak ljubavi', 1, 1, 1, '03:31', 'assets/music/Dragana/Danak ljubavi.mp3', 1, 23),
(3, 'Depresivan dan', 1, 1, 1, '04:14', 'assets/music/Dragana/Depresivan dan.mp3', 3, 12),
(4, 'Hocu sve', 1, 1, 1, '04:25', 'assets/music/Dragana/Hocu sve.mp3', 4, 10),
(5, 'Ljubi ili ubi', 1, 1, 1, '03:41', 'assets/music/Dragana/Ljubi ili ubi.mp3', 5, 8),
(6, 'Luce moje', 1, 1, 1, '03:20', 'assets/music/Dragana/Luce moje.mp3', 6, 5),
(7, 'Luda kao ja', 1, 1, 1, '03:12', 'assets/music/Dragana/Luda kao ja.mp3', 7, 5),
(8, 'Na kraju', 1, 1, 1, '04:12', 'assets/music/Dragana/Na kraju.mp3', 8, 5),
(9, 'Nepozeljna\r\n', 1, 1, 1, '03:07', 'assets/music/Dragana/Nepozeljna.mp3\r\n', 9, 6),
(10, 'Pecat na usnama', 1, 1, 1, '03:23', 'assets/music/Dragana/Pecat na usnama.mp3', 10, 5),
(11, 'Sudbina', 1, 1, 1, '03:28', 'assets/music/Dragana/Sudbina.mp3', 11, 4),
(12, 'Teci mi kroz vene', 1, 1, 1, '03:11', 'assets/music/Dragana/Teci mi kroz vene.mp3', 12, 6),
(13, 'Abracadabra', 3, 3, 3, '03:50', 'assets/music/Jessi/Abracadabra.mp3 ', 1, 5),
(14, 'Big White Room (Live)', 3, 3, 3, '05:29', 'assets/music/Jessi/Big White Room (Live).mp3 ', 2, 2),
(15, 'Casualty of Love', 3, 3, 3, '05:29', 'assets/music/Jessi/Casualty of Love.mp3', 3, 3),
(16, 'Do It Like a Dude (Acoustic Version', 3, 3, 3, '04:18', 'assets/music/Jessi/Do It Like a Dude (Acoustic Version).mp3', 4, 2),
(17, 'Do It Like a Dude', 3, 3, 3, '03:15', 'assets/music/Jessi/Do It Like a Dude.mp3', 5, 4),
(18, 'I Need This', 3, 3, 3, '04:21', 'assets/music/Jessi/I Need This.mp3 ', 6, 3),
(19, 'L.O.V.E', 3, 3, 3, '03:50', 'assets/music/Jessi/L.O.V.E..mp3', 7, 3),
(20, 'Mamma Knows Best ', 3, 3, 3, '03:15', 'assets/music/Jessi/Mamma Knows Best.mp3 ', 8, 2),
(21, 'Nobody\'s Perfect', 3, 3, 3, '04:19', 'assets/music/Jessi/Nobody\'s Perfect.mp3', 9, 2),
(22, 'Price Tag (Acoustic Version)', 3, 3, 3, '03:18', 'assets/music/Jessi/Price Tag (Acoustic Version).mp3', 10, 1),
(23, 'Price Tag', 3, 3, 3, '03:42', 'assets/music/Jessi/Price Tag.mp3', 11, 3),
(24, 'Rainbow.mp3', 3, 3, 3, '03:05', 'assets/music/Jessi/Rainbow.mp3', 12, 3),
(25, 'Stand Up', 3, 3, 3, '03:27', 'assets/music/Jessi/Stand Up.mp3', 13, 3),
(26, 'Who You Are (Live Acoustic Versio)', 3, 3, 3, '05:19', 'assets/music/Jessi/Who You Are (Live Acoustic Versio).mp3', 14, 2),
(27, 'Who You Are', 3, 3, 3, '03:50', 'assets/music/Jessi/Who You Are.mp3', 15, 1),
(28, 'Who\'s Laughing Now', 3, 3, 3, '03:54', 'assets/music/Jessi/Who\'s Laughing Now.mp3 ', 16, 1),
(29, 'Alejandro', 4, 4, 3, '04:34', 'assets/music/LadyGaga/Alejandro.mp3  ', 1, 3),
(30, 'Bad Romance', 4, 4, 3, '04:54', 'assets/music/LadyGaga/Bad Romance.mp3    ', 2, 2),
(31, 'Dance In The Dark ', 4, 4, 3, '04:49', 'assets/music/LadyGaga/Dance In The Dark.mp3 ', 3, 2),
(32, 'Monster ', 4, 4, 3, '04:09', 'assets/music/LadyGaga/Monster.mp3   ', 4, 2),
(33, 'Paparazzi ', 4, 4, 3, '03:29', 'assets/music/LadyGaga/Paparazzi.mp3    ', 5, 2),
(34, 'Poker Face', 4, 4, 3, '03:57', 'assets/music/LadyGaga/Poker Face.mp3', 6, 2),
(35, 'So Happy I Could Die', 4, 4, 3, '03:55', 'assets/music/LadyGaga/So Happy I Could Die.mp3', 7, 2),
(36, 'Speechless', 4, 4, 3, '04:30', 'assets/music/LadyGaga/Speechless.mp3 ', 8, 2),
(37, 'Teeth', 4, 4, 3, '03:40', 'assets/music/LadyGaga/Teeth.mp3  ', 9, 2),
(38, 'Telephone ft. Beyonce', 4, 4, 3, '03:40', 'assets/music/LadyGaga/Telephone ft. Beyonce.mp3', 10, 2),
(39, 'The Fame', 4, 4, 3, '03:42', 'assets/music/LadyGaga/The Fame.mp3', 11, 1),
(40, 'Blazin', 5, 5, 3, '05:03', 'assets/music/Nicki/Blazin.mp3', 1, 1),
(41, 'Blow Ya Mind ', 5, 5, 3, '03:42', 'assets/music/Nicki/Blow Ya Mind.mp3', 2, 4),
(42, 'Catch Me', 5, 5, 3, '03:56', 'assets/music/Nicki/Catch Me.mp3\r\n', 3, 1),
(44, 'Check it Out', 5, 5, 3, '04:13', 'assets/music/Nicki/Check it Out.mp3\r\n', 4, 0),
(59, 'Across The World', 6, 6, 3, '03:49', 'assets/music/Pitbull/Across The World.mp3', 1, 1),
(45, 'Dear Old Nicki', 5, 5, 3, '03:55', 'assets/music/Nicki/Dear Old Nicki.mp3', 5, 0),
(46, 'Did it Onem', 5, 5, 3, '03:34', 'assets/music/Nicki/Did it Onem.mp3', 6, 0),
(47, 'Did it Onem', 5, 5, 3, '03:34', 'assets/music/Nicki/Did it Onem.mp3', 7, 0),
(48, 'Here I Am', 5, 5, 3, '02:57', 'assets/music/Nicki/Here I Am.mp3', 8, 1),
(49, 'Im the Best', 5, 5, 3, '03:338', 'assets/music/Nicki/Im the Best.mp3', 9, 0),
(50, 'Last Chance', 5, 5, 3, '03:53', 'assets/music/Nicki/Last Chance.mp3', 10, 0),
(51, 'Moment 4 Life\r\n', 5, 5, 3, '04:41', 'assets/music/Nicki/Moment 4 Life.mp3\r\n', 11, 0),
(52, 'Muny', 5, 5, 3, '03:47', 'assets/music/Nicki/Muny.mp3', 12, 0),
(53, 'Right Thru Me', 5, 5, 3, '03:57', 'assets/music/Nicki/Right Thru Me.mp3', 13, 0),
(54, 'Romans Revenge\r\n', 5, 5, 4, '04:38', 'assets/music/Nicki/Romans Revenge.mp3\r\n', 14, 0),
(55, 'Save Me\r\n', 5, 5, 3, '03:07', 'assets/music/Nicki/Save Me.mp3\r\n', 15, 0),
(56, 'Super Bass.mp3', 5, 5, 3, '03:22', 'assets/music/Nicki/Super Bass.mp3', 16, 1),
(57, 'Wave Ya Hand.mp3', 5, 5, 3, '03:01', 'assets/music/Nicki/Wave Ya Hand.mp3', 17, 0),
(58, 'Your Love\r\n', 5, 5, 3, '04:09', 'assets/music/Nicki/Your Love.mp3\r\n', 18, 1),
(60, 'Call Of The Wild', 6, 6, 3, '03:11', 'assets/music/Pitbull/Call Of The Wild.mp3', 2, 3),
(61, 'Can\'t Stop Me Now', 6, 6, 3, '03:14', 'assets/music/Pitbull/Can\'t Stop Me Now.mp3', 3, 1),
(62, 'Daddy\'s Little Girl', 6, 6, 3, '03:44', 'assets/music/Pitbull/Daddy\'s Little Girl.mp3', 4, 4),
(63, 'Dope Ball', 6, 6, 3, '01:40', 'assets/music/Pitbull/Dope Ball.mp3', 5, 0),
(64, 'Full Of Shit\r\n', 6, 6, 3, '03:54', 'assets/music/Pitbull/Full Of Shit.mp3\r\n', 6, 0),
(65, 'Girls', 6, 6, 3, '03:07', 'assets/music/Pitbull/Girls.mp3', 7, 0),
(66, 'Give Them What They Ask For', 6, 6, 3, '02:57', 'assets/music/Pitbull/Give Them What They Ask For.mp3', 7, 0),
(67, 'Hotel Room Service', 6, 6, 3, '03:57', 'assets/music/Pitbull/Hotel Room Service.mp3', 8, 0),
(68, 'I Know You Want Me', 6, 6, 3, '03:57', 'assets/music/Pitbull/I Know You Want Me.mp3', 9, 0),
(69, 'Juice Box', 6, 6, 3, '03:05', 'assets/music/Pitbull/Juice Box.mp3', 10, 0),
(70, 'Krazy', 6, 6, 3, '03:51', 'assets/music/Pitbull/Krazy.mp3', 12, 4),
(71, 'Shut It Down [Ft. Akon]\r\n', 6, 6, 3, '03:46', 'assets/music/Pitbull/Shut It Down [Ft. Akon].mp3\r\n', 13, 2),
(72, 'Triumph\r\n', 6, 6, 3, '03:20', 'assets/music/Pitbull/Triumph.mp3\r\n', 14, 1),
(73, 'Ciega, sordomuda', 2, 2, 2, '04:27', 'assets/music/Shakira/Ciega, sordomuda.mp3', 1, 1),
(74, 'Donde estan los ladrones', 2, 2, 2, '03:13', 'assets/music/Shakira/Donde estan los ladrones.mp3', 2, 0),
(75, 'Inevitable', 2, 2, 2, '03:13', 'assets/music/Shakira/Inevitable.mp3', 3, 0),
(76, 'Moscas en la casa', 2, 2, 2, '03:31', 'assets/music/Shakira/Moscas en la casa.mp3', 4, 0),
(77, 'No Creo', 2, 2, 2, '03:53', 'assets/music/Shakira/No Creo.mp3', 5, 1),
(78, 'Octavo Dia', 2, 2, 2, '04:31', 'assets/music/Shakira/Octavo Dia.mp3', 6, 0),
(79, 'Ojos asi', 2, 2, 2, '03:56', 'assets/music/Shakira/Ojos asi.mp3', 7, 0),
(80, 'Que vuelvas\r\n', 2, 2, 2, '03:50', 'assets/music/Shakira/Que vuelvas.mp3\r\n', 8, 0),
(81, 'Si te vas', 2, 2, 2, '03:29', 'assets/music/Shakira/Si te vas.mp3', 9, 0),
(82, 'Sombra de ti\r\n', 2, 2, 2, '03:33', 'assets/music/Shakira/Sombra de ti.mp3\r\n', 10, 0),
(83, 'Tu', 2, 2, 2, '03:35', 'assets/music/Shakira/Tu.mp3', 11, 0),
(84, 'g on the run - instrumental', 7, 7, 4, '05:50', 'assets/music/Qemists/g on the run - instrumental.mp3', 1, 3),
(85, 'g on the run radio edit', 7, 7, 4, '03:36', 'assets/music/Qemists/g on the run radio edit.mp3', 2, 1),
(86, 'hot pink delorean remix.mp3', 7, 7, 4, '06:08', 'assets/music/Qemists/hot pink delorean remix.mp3', 3, 1),
(87, 'ross orton radio mix', 7, 7, 4, '03:12', 'assets/music/Qemists/ross orton radio mix.mp3', 4, 0),
(88, 'the qemists got your money remix\r\n', 7, 7, 4, '05:13', 'assets/music/Qemists/the qemists got your money remix.mp3\r\n', 5, 1),
(89, 'always faithful\r\n', 8, 8, 5, '07:10', 'assets/music/Lisa/always faithful.mp3\r\n', 1, 0),
(90, 'cant sleep', 8, 8, 5, '06:23', 'assets/music/Lisa/cant sleep.mp3', 2, 0),
(91, 'come to this', 8, 8, 5, '05:59', 'assets/music/Lisa/come to this.mp3', 3, 0),
(92, 'go to jail', 8, 8, 5, '05:58', 'assets/music/Lisa/go to jail.mp3', 4, 1),
(93, 'looking good', 8, 8, 5, '06:33', 'assets/music/Lisa/looking good.mp3', 5, 0),
(94, 'new age rave\r\n', 8, 8, 5, '06:3', 'assets/music/Lisa/new age rave.mp3\r\n', 6, 0),
(95, 'overloaded', 8, 8, 5, '06:12', 'assets/music/Lisa/overloaded.mp3', 7, 0),
(96, 'punk little sucka', 8, 8, 5, '05:31', 'assets/music/Lisa/punk little sucka.mp3', 8, 0),
(97, 'redadmiral\r\n', 8, 8, 5, '06:42', 'assets/music/Lisa/redadmiral.mp3\r\n', 9, 0),
(98, 'zipp it', 8, 8, 5, '06:28', 'assets/music/Lisa/zipp it.mp3\r\n', 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(32) NOT NULL,
  `signUpDate` datetime NOT NULL,
  `profilePic` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `firstName`, `lastName`, `email`, `password`, `signUpDate`, `profilePic`) VALUES
(18, 'schneider', 'Schneider', 'Schneider', 'Schneider@gmail.com', 'bd7cdd31ba07b93b22981305b264a2ab', '2018-08-13 00:00:00', 'assets/images/profile-pics/head_emerald.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlists`
--
ALTER TABLE `playlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlistSongs`
--
ALTER TABLE `playlistSongs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
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
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `playlists`
--
ALTER TABLE `playlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `playlistSongs`
--
ALTER TABLE `playlistSongs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
