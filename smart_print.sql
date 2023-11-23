-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 23, 2023 lúc 04:32 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `smart_print`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(10) NOT NULL,
  `username_admin` varchar(255) NOT NULL,
  `password_admin` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `username_admin`, `password_admin`) VALUES
(1, 'admin', '456');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `member`
--

CREATE TABLE `member` (
  `id` int(10) NOT NULL,
  `username_member` varchar(255) NOT NULL,
  `password_member` varchar(255) NOT NULL,
  `name_member` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `member`
--

INSERT INTO `member` (`id`, `username_member`, `password_member`, `name_member`) VALUES
(2, 'member', '123', 'Le Van A'),
(3, 'member1', '123456', 'Lê Văn B');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `print_machine`
--

CREATE TABLE `print_machine` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `co_so` int(2) NOT NULL,
  `toa` varchar(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sales`
--

CREATE TABLE `sales` (
  `id` int(10) NOT NULL,
  `username_sales` varchar(255) NOT NULL,
  `password_sales` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sales`
--

INSERT INTO `sales` (`id`, `username_sales`, `password_sales`) VALUES
(1, 'sales', '789');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `print_machine`
--
ALTER TABLE `print_machine`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `member`
--
ALTER TABLE `member`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `print_machine`
--
ALTER TABLE `print_machine`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
