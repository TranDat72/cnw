-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2021 at 02:59 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dhtl`
--

-- --------------------------------------------------------

--
-- Table structure for table `canbo`
--

CREATE TABLE `canbo` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `chucvu` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `coquan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sdt` int(11) NOT NULL,
  `id_donvi` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `canbo`
--

INSERT INTO `canbo` (`id`, `name`, `thumbnail`, `chucvu`, `coquan`, `email`, `sdt`, `id_donvi`) VALUES
(9, 'Phan Thị Thanh Huyền', 'http://cse.tlu.edu.vn/Portals/0/2016/phan%20thanh%20huyen.jpg', 'Giảng Viên', '0335493111', 'PTTH@e.tlu.edu.vn', 334565789, 6),
(11, 'Nguyễn THị Vân', 'http://cse.tlu.edu.vn/Portals/0/2016/nguyen%20thi%20van.jpg', 'Giảng Viên ', '0335493111', 'NTV@e.tlu.edu.vn', 334565789, 7),
(12, 'Đặng Thị Thu Hiền', 'http://cse.tlu.edu.vn/Portals/0/Users/DangThuHien.jpg', 'P.Trưởng Trạm', '0335493111', 'dtth@e.tlu.edu.vn', 334565789, 19),
(27, '	Nguyễn Thị Phương Thảo', 'http://cse.tlu.edu.vn/Portals/0/Users/thao.jpg', 'Trưởng Phòng Tài Chính', '0335493111', 'thaont@tlu.edu.vn', 334565789, 11),
(31, '	Nguyễn Hằng Phương', 'http://cse.tlu.edu.vn/Portals/0/Users/HPhuong.jpg', 'Thư Kí Thư Viện', '0335493111', 'phuongnh@tlu.edu.vn', 334565789, 15),
(34, '	Nguyễn Thị Lý', 'http://cse.tlu.edu.vn/Portals/0/2016/nguyen%20thi%20ly.jpg', 'Giảng viên', '0335493111', 'NTL@gmail.com', 334565789, 22),
(38, '	Nguyễn Ngọc Quỳnh Châu ', 'http://cse.tlu.edu.vn/Portals/0/Users/chau.jpg', 'Giảng viên', '0335493111', 'nnqc@e.tlu.edu.vn', 334565789, 24),
(41, '	Bùi Thu Cúc', 'http://cse.tlu.edu.vn/Portals/0/2016/Bui%20thu%20cuc.jpg', 'Giảng viên', '0335493111', 'cucbt@tlu.edu.vn', 334565789, 20),
(42, '		Trần Thị Minh Hoàn (ThS.)', 'http://cse.tlu.edu.vn/Portals/0/Users/tran%20minh%20hoan.jpg', 'Giảng viên', '0335493111', 'hoantm@tlu.edu.vn', 334565789, 23),
(43, '		Trần Thị Hà Trang (ThS.)', 'http://cse.tlu.edu.vn/Portals/0/Trang%20Tran.jpg', 'Giảng viên', '0335493111', 'Trangtth@tlu.edu.vn', 334565789, 13);

-- --------------------------------------------------------

--
-- Table structure for table `donvi`
--

CREATE TABLE `donvi` (
  `id` int(10) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sophong` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `maytruc` int(255) DEFAULT NULL,
  `diachi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_child` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `donvi`
--

INSERT INTO `donvi` (`id`, `name`, `sophong`, `maytruc`, `diachi`, `email`, `website`, `id_child`) VALUES
(1, 'Ban Giám Hiệu', 'P202', 368236741, 'Tầng2  toà A1', 'vpkdhtl@e.tlu.edu.vn', 'http://cse.tlu.edu.vn', NULL),
(2, 'Hội Đồng Trường', 'P102', 36974512, 'Tầng 1 nhà B2', 'vpkdhtl@e.tlu.edu.vn', 'http://cse.tlu.edu.vn', NULL),
(3, 'Văn Phòng Đảng Uỷ', 'P407', 427241274, 'tầng 4 nhà  A2', 'vpkdhtl@e.tlu.edu.vn', 'http://cse.tlu.edu.vn', NULL),
(4, 'Văn Phòng Công Đoàn', 'P453', 124852741, 'tầng 4 nhà  A2', 'vpkdhtl@e.tlu.edu.vn', 'http://cse.tlu.edu.vn', 3),
(5, 'Văn Phòng Đoàn Thanh Niên', 'P410', 124785963, 'tầng 4 nhà  A2', 'vpkdhtl@e.tlu.edu.vn', 'http://cse.tlu.edu.vn', 3),
(6, 'Phòng Hành Chính Tổng Hợp', 'P114', 564127851, 'tầng 1 nhà A4', 'vpkdhtl@e.tlu.edu.vn', 'http://cse.tlu.edu.vn', NULL),
(7, 'Phòng Quản Trị', 'P136', 784963245, 'tầng 1 nhà A4', 'vpkdhtl@e.tlu.edu.vn', 'http://cse.tlu.edu.vn', 6),
(8, 'Phòng Tổ Chức Cán Bộ', 'P101', 364235124, 'tầng 1 nhà A4', 'vpkdhtl@e.tlu.edu.vn', 'http://cse.tlu.edu.vn', 6),
(9, 'Phòng Đào Tạo', 'P102', 963258753, 'tầng 1 nhà A4', 'vpkdhtl@e.tlu.edu.vn', 'http://cse.tlu.edu.vn', 6),
(10, 'Phòng Khảo Thí Và Đảm Bảo Chất Lượng', 'P105', 305896352, 'tầng 1 nhà A4', 'vpkdhtl@e.tlu.edu.vn', 'http://cse.tlu.edu.vn', 6),
(11, 'Phòng Tài Chinh-Kế Toán', 'P113', 312654861, 'tầng 1 nhà A4', 'vpkdhtl@e.tlu.edu.vn', 'http://cse.tlu.edu.vn', 6),
(12, 'Phòng Hợp Tác Quốc Tế', 'P124', 236984360, 'tầng 1 nhà A4', 'vpkdhtl@e.tlu.edu.vn', 'http://cse.tlu.edu.vn', 6),
(13, 'Phòng Chính Trị & Công Tác Sinh Viên', 'P131', 145302753, 'tầng 1 nhà A4', 'vpkdhtl@e.tlu.edu.vn', 'http://cse.tlu.edu.vn', 6),
(14, 'Phòng Khoa Học Công Nghệ', 'P145', 141239751, 'tầng 1 nhà A4', 'vpkdhtl@e.tlu.edu.vn', 'http://cse.tlu.edu.vn', 6),
(15, 'Thư Viện', 'P159', 420364850, 'tầng 1 nhà A4', 'vpkdhtl@e.tlu.edu.vn', 'http://cse.tlu.edu.vn', 6),
(19, 'Trạm y tế', 'P164', 301425762, 'tầng 1 nhà A4', 'vpkdhtl@e.tlu.edu.vn', 'http://cse.tlu.edu.vn', 6),
(20, 'Khoa Công Nghệ Thông Tin', 'P230', 363951364, 'Tầng 2 Toà C5 ', 'CNTTtlu@e.tlu.edu.vn', 'CTNTT.edu.vn', NULL),
(22, 'BM Toán Học', 'p201', NULL, NULL, NULL, NULL, 20),
(23, 'BM Kỹ thuật MT & Mạng', 'P207', NULL, NULL, NULL, NULL, 20),
(24, 'BM Hệ Thống Thông Tin', 'P223', NULL, NULL, NULL, NULL, 20),
(30, 'Test Thêm,Sửa,Xoá Đơn Vị', 'P102', 363123654, 'tầng 1 toà B3', 'doanhnn@tlu.edu.vn', 'dvm.edu.vn', NULL),
(32, 'Test đơn vị con', '31', 31313131, 'tầng 31 toà B3', '31@tlu.edu.vn', 'website31', 30);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `taikhoan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `matkhau` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `trangthai` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `taikhoan`, `matkhau`, `trangthai`) VALUES
(1, 'admin', '1', b'1'),
(2, 'user1', '1', b'0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `canbo`
--
ALTER TABLE `canbo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_donvi` (`id_donvi`);

--
-- Indexes for table `donvi`
--
ALTER TABLE `donvi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_child` (`id_child`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `canbo`
--
ALTER TABLE `canbo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `donvi`
--
ALTER TABLE `donvi`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `canbo`
--
ALTER TABLE `canbo`
  ADD CONSTRAINT `Fk_donvi` FOREIGN KEY (`id_donvi`) REFERENCES `donvi` (`id`);

--
-- Constraints for table `donvi`
--
ALTER TABLE `donvi`
  ADD CONSTRAINT `FK_child` FOREIGN KEY (`id_child`) REFERENCES `donvi` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
