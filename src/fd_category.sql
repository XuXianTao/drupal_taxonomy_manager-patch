-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 2018-07-18 15:05:54
-- 服务器版本： 5.7.18-1
-- PHP Version: 7.1.6-2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fd`
--

-- --------------------------------------------------------

--
-- 表的结构 `fd_category`
--

CREATE TABLE `fd_category` (
  `cate_id` int(11) NOT NULL COMMENT 'Auto increase id',
  `group_id` int(11) NOT NULL COMMENT 'group ID',
  `module` varchar(255) NOT NULL COMMENT 'category module',
  `name` varchar(255) NOT NULL COMMENT 'category name',
  `weight` int(11) NOT NULL DEFAULT '0' COMMENT 'category weight',
  `pid` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The parent category id',
  `data` longblob COMMENT 'The extra data of category'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Stores fd categories';

--
-- 转存表中的数据 `fd_category`
--

INSERT INTO `fd_category` (`cate_id`, `group_id`, `module`, `name`, `weight`, `pid`, `data`) VALUES
(1, 4, 'article', '产品', 0, 0, NULL),
(7, 4, 'article', '赛车耳机', 1, 1, NULL),
(8, 4, 'article', '测试用', 2, 1, NULL),
(9, 5, 'article', '产品', 0, 0, NULL),
(10, 5, 'article', '服务', 1, 0, NULL),
(11, 4, 'article', '文章', 1, 0, NULL),
(12, 3, 'article', '产品', 0, 13, NULL),
(13, 3, 'article', '动态', 1, 13, NULL),
(15, 3, 'article', '资讯', 0, 0, NULL),
(16, 3, 'media', '讲座', 0, 0, NULL),
(17, 3, 'media', '使用手册', 0, 16, NULL),
(18, 3, 'media', '技术文档', 1, 16, NULL),
(19, 7, 'article', '动态', 0, 0, NULL),
(20, 7, 'media', '基础医学', 0, 55, NULL),
(21, 3, 'question', '业务咨询', 0, 0, NULL),
(22, 3, 'question', '技术讨论', 1, 0, NULL),
(23, 7, 'question', '临床', 0, 0, NULL),
(24, 7, 'question', '基本常识', 1, 0, NULL),
(25, 7, 'question', '检验', 2, 0, NULL),
(26, 4, 'question', '关于学习', 0, 0, NULL),
(27, 4, 'question', '赛车耳机', 1, 0, NULL),
(28, 8, 'question', '医学常识', 0, 0, NULL),
(29, 8, 'question', '放射科', 1, 0, NULL),
(30, 8, 'question', '随意', 2, 0, NULL),
(31, 1, 'question', '投资理财', 0, 0, NULL),
(32, 1, 'question', '法律法规', 1, 0, NULL),
(33, 7, 'media', '临床仪器', 1, 55, NULL),
(34, 11, 'question', '临床', 0, 0, NULL),
(35, 11, 'article', '文摘', 0, 0, NULL),
(36, 11, 'article', '平台动态', 1, 0, NULL),
(37, 11, 'media', '训练', 0, 0, NULL),
(40, 13, 'question', '经文', 0, 0, NULL),
(41, 13, 'question', '帮助', 1, 0, NULL),
(42, 13, 'article', '美食', 0, 0, NULL),
(43, 13, 'article', '旅游', 1, 0, NULL),
(46, 15, 'media', '有声书', 0, 0, NULL),
(47, 23, 'article', 'aaa', 0, 0, NULL),
(48, 23, 'article', 'bbb', 1, 0, NULL),
(49, 23, 'question', 'c', 0, 0, NULL),
(50, 23, 'question', 'd', 1, 0, NULL),
(51, 22, 'question', '问老师', 0, 0, NULL),
(52, 22, 'article', '习题训练', 0, 0, NULL),
(53, 22, 'media', '微课堂', 0, 0, NULL),
(54, 13, 'media', '微讲堂', 0, 0, NULL),
(55, 7, 'media', '训练', 2, 0, NULL),
(56, 24, 'question', '鸟类 ', 0, 0, NULL),
(57, 24, 'question', '哺乳类', 1, 0, NULL),
(58, 24, 'question', '爬行类', 2, 0, NULL),
(59, 15, 'question', '讲座', 0, 0, NULL),
(60, 15, 'question', '借书', 1, 0, NULL),
(61, 15, 'question', '还书', 2, 0, NULL),
(62, 30, 'question', '中国日报', 0, 0, NULL),
(68, 32, 'question', '综合分类', 0, 0, NULL),
(69, 30, 'article', '动态', 0, 0, NULL),
(70, 33, 'question', '综合分类', 0, 70, NULL),
(71, 33, 'question', '产品篇', 0, 0, NULL),
(72, 33, 'question', '销售篇', 1, 0, NULL),
(73, 33, 'question', '行业篇', 2, 0, NULL),
(74, 33, 'question', '品牌篇', 3, 0, NULL),
(75, 33, 'question', '大咖随谈', 4, 0, NULL),
(76, 34, 'question', '直销问诊室', 0, 76, NULL),
(77, 34, 'question', '直销问诊室', 0, 0, NULL),
(78, 34, 'article', '直销问诊室', 0, 0, NULL),
(79, 35, 'question', '综合分类', 0, 0, NULL),
(108, 31, 'article', '资讯', 0, 0, NULL),
(109, 31, 'article', '产品', 1, 0, NULL),
(110, 36, 'question', '慢病毒', 0, 0, NULL),
(111, 36, 'article', '动态', 0, 0, NULL),
(112, 36, 'media', '科研', 0, 0, NULL),
(132, 36, 'question', '腺病毒', 1, 0, NULL),
(133, 36, 'question', '腺相关病毒', 2, 0, NULL),
(134, 36, 'question', '质粒', 3, 0, NULL),
(135, 36, 'question', '细胞', 4, 0, NULL),
(136, 36, 'question', '其他', 5, 0, NULL),
(138, 37, 'article', '文章', 0, 0, NULL),
(139, 37, 'media', '微课堂', 0, 0, NULL),
(141, 37, 'question', '行业动态', 2, 0, NULL),
(142, 37, 'question', '实战解答', 3, 0, NULL),
(143, 37, 'question', '新人解惑', 4, 0, NULL),
(144, 37, 'question', '市场开发', 5, 0, NULL),
(146, 37, 'question', '团队管理', 7, 0, NULL),
(148, 15, 'article', '美食', 1, 0, NULL),
(149, 15, 'article', '电影', 2, 0, NULL),
(150, 14, 'article', '插画', 0, 156, NULL),
(151, 14, 'article', '品牌视觉系统VI', 1, 156, NULL),
(152, 14, 'article', '界面视觉效果UI', 2, 156, NULL),
(154, 14, 'media', '音乐', 0, 0, NULL),
(155, 14, 'question', '所有分类', 0, 0, NULL),
(156, 14, 'article', '设计案例', 4, 0, NULL),
(158, 38, 'question', '寿险/重疾', 1, 0, NULL),
(159, 38, 'question', '子女教育', 2, 0, NULL),
(160, 38, 'question', '养老', 3, 0, NULL),
(161, 38, 'question', '社保', 4, 0, NULL),
(162, 38, 'question', '车险', 5, 0, NULL),
(163, 38, 'question', '其他', 6, 0, NULL),
(164, 39, 'question', '综合分类', 0, 164, NULL),
(167, 39, 'question', '备孕', 0, 0, NULL),
(168, 40, 'question', '综合分类', 0, 0, NULL),
(169, 41, 'question', '综合分类', 0, 0, NULL),
(170, 42, 'question', '售前', 0, 0, NULL),
(171, 42, 'question', '售后', 1, 0, NULL),
(172, 42, 'article', '故事会', 0, 0, NULL),
(173, 42, 'article', '格林童话', 0, 172, NULL),
(175, 42, 'article', '案例分析', 1, 0, NULL),
(176, 42, 'article', '国内案例', 2, 175, NULL),
(177, 42, 'article', '国际案例', 3, 175, NULL),
(178, 42, 'media', '视频分享', 0, 0, NULL),
(179, 43, 'question', '综合分类', 0, 0, NULL),
(180, 14, 'question', '我问', 1, 0, NULL),
(181, 14, 'question', '我答', 2, 0, NULL),
(182, 44, 'question', '伊婉怎么买', 0, 0, NULL),
(183, 44, 'question', '部位怎么打', 1, 0, NULL),
(184, 45, 'question', '综合分类', 0, 0, NULL),
(185, 44, 'question', '专家问诊', 2, 0, NULL),
(186, 44, 'question', '其他问题', 3, 0, NULL),
(188, 46, 'question', '综合分类', 0, 0, NULL),
(189, 47, 'question', '综合分类', 0, 0, NULL),
(190, 48, 'question', '综合分类', 0, 0, NULL),
(191, 49, 'question', '综合分类', 0, 0, NULL),
(192, 50, 'question', '综合分类', 0, 0, NULL),
(193, 51, 'question', '综合分类', 0, 0, NULL),
(195, 52, 'question', '综合分类', 0, 0, NULL),
(196, 53, 'question', '综合分类', 0, 0, NULL),
(197, 54, 'question', '综合分类', 0, 0, NULL),
(198, 39, 'question', '孕早期', 1, 0, NULL),
(199, 39, 'question', '产检', 2, 0, NULL),
(200, 39, 'question', '营养', 3, 0, NULL),
(201, 39, 'question', '分娩', 4, 0, NULL),
(202, 39, 'question', '产后', 5, 0, NULL),
(203, 55, 'question', '综合分类', 0, 0, NULL),
(204, 55, 'question', '硬件', 1, 0, NULL),
(205, 55, 'question', 'Java', 2, 0, NULL),
(206, 55, 'question', 'HTML', 3, 0, NULL),
(207, 3, 'article', '技术', 1, 0, NULL),
(209, 4, 'article', '54555', 2, 0, NULL),
(212, 56, 'question', '综合分类', 0, 0, NULL),
(213, 57, 'question', '综合分类', 0, 0, NULL),
(214, 3, 'media', 'Drupal8', 2, 16, NULL),
(215, 57, 'question', '社区课程微问答', 1, 0, NULL),
(221, 15, 'media', '历史', 1, 46, NULL),
(222, 15, 'media', '商业财经', 1, 46, NULL),
(223, 15, 'media', 'IT科技', 2, 46, NULL),
(225, 15, 'question', '历史文学', 3, 0, NULL),
(226, 15, 'question', '商业财经', 4, 0, NULL),
(227, 15, 'question', '自然科学', 5, 0, NULL),
(229, 15, 'question', '艺术', 6, 0, NULL),
(230, 15, 'question', '经济学', 7, 0, NULL),
(231, 15, 'question', '旅游', 8, 0, NULL),
(232, 15, 'question', '运动', 9, 0, NULL),
(233, 15, 'question', '音乐', 10, 0, NULL),
(234, 15, 'question', '篮球', 11, 0, NULL),
(235, 15, 'media', '视频', 1, 0, NULL),
(237, 15, 'media', '岭南印象系列专题片', 1, 235, NULL),
(239, 15, 'media', '社会文化', 3, 46, NULL),
(240, 56, 'article', '楼盘', 0, 0, 0x613a323a7b733a383a2274656d706c617465223b733a363a226c6576656c33223b733a343a2269636f6e223b733a353a22686f757365223b7d),
(241, 56, 'article', '资讯', 1, 0, NULL),
(242, 56, 'article', '二手房', 2, 0, NULL),
(243, 56, 'article', '邮区', 0, 240, NULL),
(244, 56, 'article', '户型', 1, 240, NULL),
(245, 56, 'article', '价格', 2, 240, NULL),
(246, 56, 'article', '产权', 3, 240, NULL),
(247, 56, 'article', '时间', 4, 240, NULL),
(248, 15, 'media', '相声', 4, 46, NULL),
(249, 56, 'article', 'D01-D08', 0, 243, NULL),
(251, 56, 'article', 'D9-D11D21', 1, 243, NULL),
(252, 56, 'article', 'D12-D14', 2, 243, NULL),
(253, 56, 'article', 'D15-D18', 3, 243, NULL),
(254, 56, 'article', 'D19D20', 3, 243, NULL),
(255, 56, 'article', 'D22-D24', 4, 243, NULL),
(256, 56, 'article', 'D25-D28', 5, 243, NULL),
(257, 56, 'article', '1室', 0, 244, NULL),
(258, 56, 'article', '2室', 1, 244, NULL),
(259, 56, 'article', '3室', 2, 244, NULL),
(260, 56, 'article', '4室+', 3, 244, 0x4f3a383a22737464436c617373223a313a7b733a383a2274656d706c617465223b733a33393a22576564204d617920333020323031382031363a31383a353120474d542b30383030202843535429223b7d),
(261, 56, 'article', '100万以下', 0, 245, NULL),
(262, 56, 'article', '100-125万', 1, 245, NULL),
(263, 56, 'article', '125-150万', 2, 245, NULL),
(264, 56, 'article', '150-200万', 3, 245, NULL),
(265, 56, 'article', '200-250万', 4, 245, NULL),
(266, 56, 'article', '250-300万', 5, 245, NULL),
(267, 56, 'article', '300-400万', 6, 245, NULL),
(268, 56, 'article', '豪宅', 7, 245, NULL),
(269, 56, 'article', '价格洼地', 8, 245, NULL),
(270, 56, 'article', '99年产权', 0, 246, NULL),
(271, 56, 'article', '永久产权', 1, 246, NULL),
(272, 56, 'article', '不用等', 0, 247, NULL),
(273, 56, 'article', '即将开盘', 1, 247, NULL),
(274, 56, 'article', '最新&爆款', 2, 247, NULL),
(275, 56, 'article', '过往售罄', 3, 247, NULL),
(276, 15, 'media', '读书', 5, 46, NULL),
(277, 56, 'article', '地产月刊', 0, 241, NULL),
(278, 56, 'article', '新中视野', 1, 241, NULL),
(279, 56, 'article', '财经周报', 2, 241, NULL),
(280, 56, 'article', '租房', 3, 0, NULL),
(281, 56, 'article', '专家专栏', 3, 241, NULL),
(282, 56, 'media', '讲堂', 0, 0, NULL),
(283, 56, 'article', '摘要', 4, 241, NULL),
(284, 58, 'question', '综合分类', 0, 0, NULL),
(286, 59, 'question', '综合分类', 0, 0, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fd_category`
--
ALTER TABLE `fd_category`
  ADD PRIMARY KEY (`cate_id`),
  ADD KEY `group_module` (`group_id`,`module`(191));

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `fd_category`
--
ALTER TABLE `fd_category`
  MODIFY `cate_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Auto increase id', AUTO_INCREMENT=287;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
