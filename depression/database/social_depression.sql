-- phpMyAdmin SQL Dump
-- version 2.11.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 17, 2021 at 09:17 PM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `social_depression`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(25) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `id` int(11) NOT NULL auto_increment,
  `from1` varchar(30) NOT NULL,
  `to1` varchar(30) NOT NULL,
  `message` text NOT NULL,
  `status` int(11) NOT NULL,
  `sent` datetime NOT NULL,
  `recd` int(11) NOT NULL,
  `photo` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `chat`
--


-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `log_id` int(11) NOT NULL,
  `uname` varchar(30) NOT NULL,
  `cname` varchar(30) NOT NULL,
  `comment` text NOT NULL,
  `reply` text NOT NULL,
  `category` varchar(30) NOT NULL,
  `like1` varchar(30) NOT NULL,
  `img` varchar(100) NOT NULL,
  `privacy` int(11) NOT NULL,
  `share_user` varchar(30) NOT NULL,
  `rdate` varchar(15) NOT NULL,
  `status` int(11) NOT NULL,
  `post_st` int(11) NOT NULL,
  `pos_cnt` int(11) NOT NULL,
  `neg_cnt` int(11) NOT NULL,
  `gname` varchar(50) NOT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `log_id`, `uname`, `cname`, `comment`, `reply`, `category`, `like1`, `img`, `privacy`, `share_user`, `rdate`, `status`, `post_st`, `pos_cnt`, `neg_cnt`, `gname`, `month`, `year`) VALUES
(1, 0, 'sudha', '', 'Good Morning', '', '', '', '', 1, '', '17-03-2021', 0, 0, 0, 0, '-', 0, 0),
(2, 0, 'sudha', '', 'Have a nice day, enjoy with travel', '', '', '', 'P2bus2.jpg', 1, '', '17-03-2021', 0, 0, 1, 0, '-', 0, 0),
(3, 0, 'raj', '', 'i hate this life', 'Life is very short, enjoy your life', '', '', '', 1, '', '17-03-2021', 0, 1, 1, 1, '-', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `comments2`
--

CREATE TABLE `comments2` (
  `id` int(11) NOT NULL,
  `uname` varchar(30) NOT NULL,
  `poster` varchar(30) NOT NULL,
  `cmid` varchar(20) NOT NULL,
  `comment` varchar(50) NOT NULL,
  `like_st` int(11) NOT NULL,
  `pos_cnt` int(11) NOT NULL,
  `neg_cnt` int(11) NOT NULL,
  `gname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments2`
--

INSERT INTO `comments2` (`id`, `uname`, `poster`, `cmid`, `comment`, `like_st`, `pos_cnt`, `neg_cnt`, `gname`) VALUES
(1, 'raj', '', '1', '', 1, 0, 0, '-');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `uname` varchar(30) NOT NULL,
  `cname` varchar(30) NOT NULL,
  `ftype` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `request_st` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `uname`, `cname`, `ftype`, `status`, `request_st`) VALUES
(1, 'mani', 'sanjai', 1, 1, 1),
(2, 'sanjai', 'mani', 1, 1, 2),
(3, 'kannan', 'mahesh', 1, 0, 1),
(4, 'mahesh', 'kannan', 1, 0, 2),
(5, 'kannan', 'manoj', 1, 0, 1),
(6, 'manoj', 'kannan', 1, 0, 2),
(7, 'kannan', 'prabha', 1, 0, 1),
(8, 'prabha', 'kannan', 1, 0, 2),
(9, 'kannan', 'mani', 1, 1, 1),
(10, 'mani', 'kannan', 1, 1, 2),
(11, 'kannan', 'sanjai', 1, 1, 1),
(12, 'sanjai', 'kannan', 1, 1, 2),
(13, 'tamil', 'sanjai', 1, 1, 1),
(14, 'sanjai', 'tamil', 1, 1, 2),
(15, 'santhosh', 'sanjai', 1, 1, 1),
(16, 'sanjai', 'santhosh', 1, 1, 2),
(17, 'saran', 'mahesh', 1, 0, 1),
(18, 'mahesh', 'saran', 1, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `keyword_neg`
--

CREATE TABLE `keyword_neg` (
  `id` int(11) NOT NULL,
  `keyword` text NOT NULL,
  `reply` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `keyword_neg`
--

INSERT INTO `keyword_neg` (`id`, `keyword`, `reply`) VALUES
(1, 'feeling lonely', 'going to achieve new goals, utilize the time'),
(2, 'going to die', 'Try and do all, the world so large, so keep try good things, always be positive mindset'),
(3, 'i hate this life', 'Life is very short, enjoy your life'),
(4, 'breakup', 'whatever the mind can conceive and belive, it can achieve'),
(5, 'i dont want to live', 'always thing positive ideas'),
(6, 'i feel stresed', 'Take food, and take rest'),
(7, 'depression', 'Relax and play music');

-- --------------------------------------------------------

--
-- Table structure for table `keyword_pos`
--

CREATE TABLE `keyword_pos` (
  `id` int(11) NOT NULL,
  `keyword` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `keyword_pos`
--

INSERT INTO `keyword_pos` (`id`, `keyword`) VALUES
(1, 'good'),
(2, 'super'),
(3, 'excellent'),
(4, 'useful'),
(5, 'important'),
(6, 'wow'),
(7, 'nice'),
(8, 'amazing'),
(9, 'gud'),
(10, 'hi'),
(11, 'great'),
(12, 'wonderful');

-- --------------------------------------------------------

--
-- Table structure for table `post_req`
--

CREATE TABLE `post_req` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `uname` varchar(30) NOT NULL,
  `cname` varchar(30) NOT NULL,
  `req_st` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post_req`
--

INSERT INTO `post_req` (`id`, `pid`, `uname`, `cname`, `req_st`) VALUES
(1, 4, 'sanjai', 'tamil', 2),
(2, 10, 'sanjai', 'sowmi', 2),
(3, 15, 'sanjai', 'mani', 2),
(4, 17, 'mani', 'sanjai', 2);

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dob` varchar(15) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `profession` varchar(50) NOT NULL,
  `aadhar` varchar(20) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(50) NOT NULL,
  `secret_key` varchar(50) NOT NULL,
  `photo` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `question` varchar(75) NOT NULL,
  `answer` varchar(10) NOT NULL,
  `otp` varchar(20) NOT NULL,
  `like_st` text NOT NULL,
  `block_cnt` int(11) NOT NULL,
  `dstatus` int(11) NOT NULL,
  `rdate` varchar(15) NOT NULL,
  PRIMARY KEY  (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `name`, `gender`, `dob`, `mobile`, `email`, `city`, `profession`, `aadhar`, `username`, `password`, `secret_key`, `photo`, `status`, `question`, `answer`, `otp`, `like_st`, `block_cnt`, `dstatus`, `rdate`) VALUES
(1, 'Raj', 'Male', '11-10-1997', 9360967387, 'raj@gmail.com', 'Trichy', 'Software', '423423423342', 'raj', '1234', '', 1, 1, 'Your pet animal', 'cat', '6323', '1', 0, 1, '17-03-2021'),
(2, 'Sudha', 'Female', '24-10-1998', 9360967387, 'sudha@gmail.com', 'Trichy', 'Software', '246812340024', 'sudha', '1234', '', 1, 1, 'Your pet animal', 'Dog', '8847', '', 0, 0, '17-03-2021');

-- --------------------------------------------------------

--
-- Table structure for table `share`
--

CREATE TABLE `share` (
  `id` int(11) NOT NULL,
  `uname` varchar(30) NOT NULL,
  `fid` int(11) NOT NULL,
  `img_name` varchar(50) NOT NULL,
  `ftype` int(11) NOT NULL,
  `permission` int(11) NOT NULL,
  `date_time` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `share`
--


-- --------------------------------------------------------

--
-- Table structure for table `temp`
--

CREATE TABLE `temp` (
  `chatid` int(11) NOT NULL,
  `uname` varchar(25) NOT NULL,
  `cname` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `temp`
--


-- --------------------------------------------------------

--
-- Table structure for table `user_group`
--

CREATE TABLE `user_group` (
  `id` int(11) NOT NULL,
  `uname` varchar(30) NOT NULL,
  `gname` varchar(50) NOT NULL,
  `utype` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_group`
--

INSERT INTO `user_group` (`id`, `uname`, `gname`, `utype`) VALUES
(1, 'sanjai', 'software', 'admin'),
(2, 'mani', 'software', ''),
(3, 'kannan', 'music', ''),
(4, 'manoj', 'software', ''),
(5, 'prabha', 'music', ''),
(6, 'tamil', 'software', ''),
(7, 'saran', 'music', '');
