-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2021-06-10 18:42:56
-- 服务器版本： 5.7.26
-- PHP 版本： 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `test`
--

-- --------------------------------------------------------

--
-- 表的结构 `list`
--

CREATE TABLE `list` (
  `id` int(11) NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `list`
--

INSERT INTO `list` (`id`, `title`) VALUES
(1, '江苏张家港：传承红色基因 建设文明典范城市'),
(2, '中国航天的“三件宝”  科技承载复兴梦');

-- --------------------------------------------------------

--
-- 表的结构 `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `list_id` int(11) NOT NULL,
  `text` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `time` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `post`
--

INSERT INTO `post` (`id`, `list_id`, `text`, `name`, `time`) VALUES
(1, 1, '6月7日，正在青海考察调研的习近平总书记走进西宁的企业和社区。 \r\n\r\n总书记此行——进企业，看特色产业发展、推进乡村振兴；入社区，考察社区加强基层党建、完善基层治理、推进民族团结进步等情况。 \r\n\r\n走进人民中间，一声声询问，一句句叮嘱，饱含总书记对人民幸福、美好生活的关切。', '央视新闻客户端', '2021-06-05 00:00:00'),
(2, 2, '6月7日，习近平总书记在青海省西宁市青海圣源地毯集团有限公司考察调研。\r\n\r\n7日下午，习近平总书记来到西宁市青海圣源地毯集团有限公司考察调研。 ', '央视新闻', '2021-06-08 00:00:00');

-- --------------------------------------------------------

--
-- 表的结构 `produce`
--

CREATE TABLE `produce` (
  `id` int(11) NOT NULL COMMENT '商品编号',
  `pname` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '商品名称',
  `price` int(11) NOT NULL COMMENT '商品价格',
  `pcount` int(11) NOT NULL COMMENT '商品数量',
  `remark` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '商品备注'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `produce`
--

INSERT INTO `produce` (`id`, `pname`, `price`, `pcount`, `remark`) VALUES
(2, '炫迈口香糖', 5, 10, '根本停不下来'),
(3, '乐事', 3, 15, '就是脆'),
(5, '可乐', 3, 20, 'yyds'),
(9, '奶茶', 10, 30, '一天一杯美滋滋'),
(10, '薯条', 7, 33, '新鲜出炉'),
(20, '你好', 3, 8, '77');

--
-- 转储表的索引
--

--
-- 表的索引 `list`
--
ALTER TABLE `list`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `produce`
--
ALTER TABLE `produce`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `list`
--
ALTER TABLE `list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `produce`
--
ALTER TABLE `produce`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品编号', AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
