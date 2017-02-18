-- phpMyAdmin SQL Dump
-- version 4.4.15.5
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: 2017-02-10 02:23:11
-- 服务器版本： 5.5.49-log
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `baidunews`
--

-- --------------------------------------------------------

--
-- 表的结构 `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL,
  `newstype` char(200) NOT NULL,
  `newstitle` varchar(200) NOT NULL,
  `newsimg` varchar(200) NOT NULL,
  `newstime` datetime NOT NULL,
  `newssrc` char(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `news`
--

INSERT INTO `news` (`id`, `newstype`, `newstitle`, `newsimg`, `newstime`, `newssrc`) VALUES
(42, '推荐', '2PM演唱会6场公演全席售罄 十年人气不减！', 'image/u=3248511694,1952.JPG', '2017-02-02 00:00:00', '热点'),
(43, '推荐', '大师为您揭秘12生肖改运旺运秘法,摆脱诸事不顺的厄运，化解流年凶灾。', 'image/3.jpg', '2017-02-01 00:00:00', '广告'),
(44, '推荐', '国安华夏碰巧用同一基地 张呈栋遭前队友们围观', 'image/4.jpeg', '2017-02-02 00:00:00', '用百度新闻查看'),
(45, '推荐', '这些细节泄露军事机密:计步软件暴露营区地标', 'image/5.png', '2017-02-01 00:00:00', '网易头条'),
(46, '推荐', '小贝双德再见！英格兰黄金一代谢幕 仅剩鲁尼', 'image/5.jpeg', '2017-02-02 00:00:00', '热点'),
(47, '推荐', '舒淇吃冰淇淋减肥破怀孕传闻', 'image/6.jpeg', '2017-02-01 00:00:00', '娱乐'),
(48, '百家', '糟糕的广告正在搞砸我的网络体验', 'image/b1.png', '2017-02-01 00:00:00', '百家'),
(49, '百家', '高价低配诺基亚6上市，却引得无数网友购买，网友：买的是情怀！', 'image/b2.jpeg', '2017-02-03 00:00:00', '数码'),
(50, '百家', '100M宽带包年仅售800？联通此招一出，紧追电信、移动！', 'image/b3.jpeg', '2017-02-01 00:00:00', '社会'),
(51, '本地', '北京迎来返程客流高峰', 'image/u1.jpeg', '2017-02-02 00:00:00', '春运'),
(52, '推荐', '改革，快马加鞭未下鞍', 'image/2.jpg', '2017-02-02 00:00:00', '民生'),
(67, '推荐', '美联储布拉德称不必过多加息', 'image/1.jpeg', '2017-02-09 00:00:00', '财经'),
(68, '推荐', '暴风雪“尼可”致使美国3000多个航班被迫取消', 'image/1.png', '2017-02-10 00:00:00', 'cnbeta头条');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=71;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
