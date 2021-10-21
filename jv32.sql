-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- ホスト: mysql
-- 生成日時: 2021 年 10 月 21 日 10:06
-- サーバのバージョン： 5.7.35
-- PHP のバージョン: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `jv32`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `categories`
--

CREATE TABLE `categories` (
  `id` char(2) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
('1', '果物'),
('2', '野菜'),
('3', '肉'),
('4', '飲料');

-- --------------------------------------------------------

--
-- テーブルの構造 `products`
--

CREATE TABLE `products` (
  `no` char(5) NOT NULL,
  `name` varchar(22) NOT NULL,
  `category_id` char(2) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `products`
--

INSERT INTO `products` (`no`, `name`, `category_id`, `price`) VALUES
('1', 'メロン', '1', 600),
('10', 'ベーコン', '3', 1000),
('11', '馬刺し', '3', 50000),
('12', 'サーモン', '3', 555),
('2', 'すいか', '1', 900),
('3', '小松菜', '2', 100),
('4', 'チャックフラップ', '3', 2000),
('5', '珈琲', '4', 110),
('6', 'コーラ', '4', 200),
('7', 'さんま', '3', 9000),
('8', 'きゅうり', '2', 20),
('9', 'なす', '2', 60);

-- --------------------------------------------------------

--
-- テーブルの構造 `user_info`
--

CREATE TABLE `user_info` (
  `id` char(6) NOT NULL,
  `name` varchar(12) NOT NULL,
  `pass` varchar(10) NOT NULL,
  `classification` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `user_info`
--

INSERT INTO `user_info` (`id`, `name`, `pass`, `classification`) VALUES
('11111', 'member', '111111', '1'),
('22222', 'admin', '222222', '2'),
('33333', '山田忠明', '333333', '2'),
('44444', '河田英毅', '444444', '2');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`no`);

--
-- テーブルのインデックス `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
