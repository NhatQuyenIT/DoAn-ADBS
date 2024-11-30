-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3307
-- Thời gian đã tạo: Th10 30, 2024 lúc 02:05 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `fabric_new`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bolt`
--

CREATE TABLE `bolt` (
  `BCode` int(11) NOT NULL,
  `Length` int(11) DEFAULT NULL,
  `CCode` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `bolt`
--

INSERT INTO `bolt` (`BCode`, `Length`, `CCode`) VALUES
(1, 50, 1),
(2, 75, 2),
(3, 35, 3),
(4, 40, 4),
(5, 25, 5),
(6, 15, 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `CCode` int(11) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Color` varchar(50) DEFAULT NULL,
  `RemainQuantity` int(11) DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  `AppliedDate` date DEFAULT NULL,
  `SCode` int(11) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`CCode`, `Name`, `Color`, `RemainQuantity`, `Price`, `AppliedDate`, `SCode`, `img`) VALUES
(1, 'Silk', 'Red', 97, 25.00, '2023-01-13', 4, 'img9.jpg'),
(2, 'Kaki', 'Green', 192, 30.00, '2023-02-01', 1, 'img2.jpg'),
(3, 'Embroidered', 'Blue', 137, 35.00, '2023-03-01', 2, 'img3.jpg'),
(4, 'Jacquard', 'Yellow', 89, 18.00, '2023-04-01', 2, 'img4.jpg'),
(5, 'Polyester', 'Black', 288, 40.00, '2023-05-01', 3, 'img5.jpg'),
(6, 'Linen', 'White', 240, 12.00, '2023-06-01', 3, 'img6.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `CusId` int(11) NOT NULL,
  `Fname` varchar(100) DEFAULT NULL,
  `Lname` varchar(100) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `Dept` decimal(10,2) DEFAULT NULL,
  `ECode` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`CusId`, `Fname`, `Lname`, `Phone`, `Address`, `Dept`, `ECode`) VALUES
(1, 'Tom', 'Hanks', '333444555', '123 River St', 10.00, 5),
(2, 'Emma', 'Stone', '777888999', '456 Mountain Rd', 0.00, 5),
(3, 'Chris', 'Evans', '111222333', '789 Hill Ln', 20.00, 5),
(4, 'Quyền', 'Lê', '0993246149', '273 An Dương Vương P3, Q.5', 2000.00, 2),
(5, 'Phát', 'Lê', '2025550187', '1600 Pennsylvania Avenue NW, Washington, DC 20500, USA', 3000.00, 5),
(6, 'Kiệt', 'Trương', '2079464458', '10 Downing Street, Westminster, London SW1A 2AA, United Kingdom', 5000.00, 5),
(7, 'Phúc', 'Nguyễn', '8394373421', '392 Clifford Place, Fontanelle, Arizona, 2687', 1000.00, 5),
(8, 'Nguyên', 'Lý', '8614602317', '203 Allen Avenue, Elrama, North Carolina, 4453', 1000.00, 5),
(9, 'Minh', 'Nguyễn', '9415692231', '111 Schroeders Avenue, Suitland, Louisiana, 7042', 1000.00, 2),
(10, 'Trí', 'Trần', '8085002793', '190 Just Court, Canoochee, Alabama, 325', 1000.00, 5),
(11, 'FirstName_11', 'LastName_11', '03821304715', 'Street 331, City 93', 2861.00, 5),
(12, 'FirstName_12', 'LastName_12', '03980689308', 'Street 355, City 2', 2475.00, 5),
(13, 'FirstName_13', 'LastName_13', '03320829015', 'Street 386, City 1', 4913.00, 5),
(14, 'FirstName_14', 'LastName_14', '03130083929', 'Street 79, City 47', 3837.00, 2),
(15, 'FirstName_15', 'LastName_15', '03169272310', 'Street 495, City 94', 309.00, 5),
(16, 'FirstName_16', 'LastName_16', '03894673567', 'Street 34, City 38', 540.00, 2),
(17, 'FirstName_17', 'LastName_17', '03709185565', 'Street 394, City 27', 1624.00, 2),
(18, 'FirstName_18', 'LastName_18', '03438120489', 'Street 92, City 87', 2206.00, 2),
(19, 'FirstName_19', 'LastName_19', '03289463703', 'Street 110, City 97', 502.00, 2),
(20, 'FirstName_20', 'LastName_20', '03768918248', 'Street 157, City 96', 2073.00, 2),
(21, 'FirstName_21', 'LastName_21', '03292015728', 'Street 170, City 27', 4450.00, 5),
(22, 'FirstName_22', 'LastName_22', '03367094118', 'Street 221, City 52', 2323.00, 2),
(23, 'FirstName_23', 'LastName_23', '03738750500', 'Street 106, City 99', 1334.00, 5),
(24, 'FirstName_24', 'LastName_24', '03781744015', 'Street 292, City 84', 468.00, 2),
(25, 'FirstName_25', 'LastName_25', '03268404370', 'Street 41, City 71', 3263.00, 5),
(26, 'FirstName_26', 'LastName_26', '03431174950', 'Street 358, City 13', 3457.00, 5),
(27, 'FirstName_27', 'LastName_27', '03283204368', 'Street 172, City 69', 4213.00, 2),
(28, 'FirstName_28', 'LastName_28', '03211453046', 'Street 244, City 6', 1709.00, 2),
(29, 'FirstName_29', 'LastName_29', '03405919753', 'Street 172, City 6', 2808.00, 5),
(30, 'FirstName_30', 'LastName_30', '03278674833', 'Street 225, City 82', 3538.00, 2),
(31, 'FirstName_31', 'LastName_31', '03397240052', 'Street 346, City 14', 2636.00, 5),
(32, 'FirstName_32', 'LastName_32', '03520583548', 'Street 405, City 16', 4947.00, 2),
(33, 'FirstName_33', 'LastName_33', '03638235730', 'Street 345, City 60', 2859.00, 2),
(34, 'FirstName_34', 'LastName_34', '03899278692', 'Street 452, City 14', 4068.00, 2),
(35, 'FirstName_35', 'LastName_35', '03961516465', 'Street 337, City 15', 3584.00, 5),
(36, 'FirstName_36', 'LastName_36', '03363208329', 'Street 53, City 87', 2340.00, 5),
(37, 'FirstName_37', 'LastName_37', '03732151813', 'Street 386, City 72', 3164.00, 5),
(38, 'FirstName_38', 'LastName_38', '03779078933', 'Street 215, City 35', 2998.00, 5),
(39, 'FirstName_39', 'LastName_39', '03699773343', 'Street 295, City 9', 128.00, 2),
(40, 'FirstName_40', 'LastName_40', '03811982098', 'Street 193, City 93', 2281.00, 2),
(41, 'FirstName_41', 'LastName_41', '03962486861', 'Street 388, City 15', 4076.00, 2),
(42, 'FirstName_42', 'LastName_42', '03113087489', 'Street 162, City 72', 84.00, 5),
(43, 'FirstName_43', 'LastName_43', '03616999471', 'Street 258, City 38', 3346.00, 2),
(44, 'FirstName_44', 'LastName_44', '03561135083', 'Street 148, City 99', 3882.00, 2),
(45, 'FirstName_45', 'LastName_45', '03350838216', 'Street 461, City 76', 4655.00, 2),
(46, 'FirstName_46', 'LastName_46', '03608004299', 'Street 207, City 12', 109.00, 2),
(47, 'FirstName_47', 'LastName_47', '03291511004', 'Street 155, City 7', 4351.00, 2),
(48, 'FirstName_48', 'LastName_48', '03432505431', 'Street 479, City 84', 1233.00, 2),
(49, 'FirstName_49', 'LastName_49', '03944053912', 'Street 476, City 36', 3593.00, 5),
(50, 'FirstName_50', 'LastName_50', '03856661142', 'Street 313, City 75', 523.00, 2),
(51, 'FirstName_51', 'LastName_51', '03741797356', 'Street 164, City 75', 1196.00, 5),
(52, 'FirstName_52', 'LastName_52', '03778959144', 'Street 180, City 3', 2434.00, 2),
(53, 'FirstName_53', 'LastName_53', '03810713095', 'Street 15, City 64', 628.00, 5),
(54, 'FirstName_54', 'LastName_54', '03152984048', 'Street 6, City 50', 2754.00, 2),
(55, 'FirstName_55', 'LastName_55', '03416421840', 'Street 177, City 48', 1241.00, 2),
(56, 'FirstName_56', 'LastName_56', '03859378084', 'Street 318, City 56', 2238.00, 5),
(57, 'FirstName_57', 'LastName_57', '03820273923', 'Street 395, City 84', 2230.00, 5),
(58, 'FirstName_58', 'LastName_58', '03304415224', 'Street 37, City 55', 4858.00, 2),
(59, 'FirstName_59', 'LastName_59', '03477550593', 'Street 473, City 7', 219.00, 2),
(60, 'FirstName_60', 'LastName_60', '03303078013', 'Street 404, City 63', 3345.00, 2),
(61, 'FirstName_61', 'LastName_61', '03500088787', 'Street 196, City 37', 1849.00, 2),
(62, 'FirstName_62', 'LastName_62', '03525687990', 'Street 379, City 38', 0.00, 2),
(63, 'FirstName_63', 'LastName_63', '03973356356', 'Street 120, City 94', 4359.00, 5),
(64, 'FirstName_64', 'LastName_64', '03272439333', 'Street 397, City 48', 1625.00, 2),
(65, 'FirstName_65', 'LastName_65', '03721824294', 'Street 96, City 83', 1541.00, 2),
(66, 'FirstName_66', 'LastName_66', '03232103519', 'Street 296, City 57', 2939.00, 5),
(67, 'FirstName_67', 'LastName_67', '03388333193', 'Street 189, City 82', 2151.00, 5),
(68, 'FirstName_68', 'LastName_68', '03842898074', 'Street 156, City 12', 3317.00, 5),
(69, 'FirstName_69', 'LastName_69', '03454540352', 'Street 145, City 90', 4339.00, 2),
(70, 'FirstName_70', 'LastName_70', '03968692939', 'Street 421, City 23', 2339.00, 5),
(71, 'FirstName_71', 'LastName_71', '03690001693', 'Street 421, City 82', 208.00, 5),
(72, 'FirstName_72', 'LastName_72', '03865819908', 'Street 220, City 75', 1130.00, 5),
(73, 'FirstName_73', 'LastName_73', '03789914693', 'Street 375, City 71', 1648.00, 5),
(74, 'FirstName_74', 'LastName_74', '03881600547', 'Street 393, City 28', 3314.00, 2),
(75, 'FirstName_75', 'LastName_75', '03434042735', 'Street 142, City 65', 350.00, 2),
(76, 'FirstName_76', 'LastName_76', '03565320663', 'Street 376, City 1', 950.00, 5),
(77, 'FirstName_77', 'LastName_77', '03315539607', 'Street 319, City 4', 593.00, 2),
(78, 'FirstName_78', 'LastName_78', '03250576638', 'Street 420, City 78', 4662.00, 2),
(79, 'FirstName_79', 'LastName_79', '03220810867', 'Street 242, City 33', 3802.00, 2),
(80, 'FirstName_80', 'LastName_80', '03104837890', 'Street 353, City 26', 3789.00, 5),
(81, 'FirstName_81', 'LastName_81', '03982846076', 'Street 120, City 14', 4931.00, 5),
(82, 'FirstName_82', 'LastName_82', '03267344529', 'Street 274, City 92', 224.00, 2),
(83, 'FirstName_83', 'LastName_83', '03612404093', 'Street 9, City 36', 2375.00, 2),
(84, 'FirstName_84', 'LastName_84', '03645619690', 'Street 143, City 48', 736.00, 5),
(85, 'FirstName_85', 'LastName_85', '03531316422', 'Street 35, City 90', 1299.00, 2),
(86, 'FirstName_86', 'LastName_86', '03884406174', 'Street 329, City 64', 566.00, 2),
(87, 'FirstName_87', 'LastName_87', '03817652466', 'Street 303, City 27', 1124.00, 2),
(88, 'FirstName_88', 'LastName_88', '03125277070', 'Street 290, City 3', 1598.00, 5),
(89, 'FirstName_89', 'LastName_89', '03346597363', 'Street 148, City 35', 222.00, 2),
(90, 'FirstName_90', 'LastName_90', '03399941100', 'Street 236, City 59', 4462.00, 5),
(91, 'FirstName_91', 'LastName_91', '03212360050', 'Street 415, City 83', 422.00, 5),
(92, 'FirstName_92', 'LastName_92', '03226917343', 'Street 398, City 62', 1906.00, 5),
(93, 'FirstName_93', 'LastName_93', '03455865103', 'Street 325, City 99', 1260.00, 5),
(94, 'FirstName_94', 'LastName_94', '03143542723', 'Street 422, City 46', 1231.00, 5),
(95, 'FirstName_95', 'LastName_95', '03321365470', 'Street 339, City 16', 758.00, 5),
(96, 'FirstName_96', 'LastName_96', '03899275098', 'Street 143, City 67', 4264.00, 2),
(97, 'FirstName_97', 'LastName_97', '03103103337', 'Street 200, City 91', 2463.00, 2),
(98, 'FirstName_98', 'LastName_98', '03763110651', 'Street 217, City 65', 175.00, 2),
(99, 'FirstName_99', 'LastName_99', '03363175964', 'Street 221, City 70', 1671.00, 5),
(100, 'FirstName_100', 'LastName_100', '03438888984', 'Street 213, City 47', 350.00, 2),
(101, 'FirstName_101', 'LastName_101', '03106681710', 'Street 54, City 92', 2705.00, 2),
(102, 'FirstName_102', 'LastName_102', '03486854105', 'Street 49, City 9', 1867.00, 5),
(103, 'FirstName_103', 'LastName_103', '03590050213', 'Street 418, City 24', 1615.00, 2),
(104, 'FirstName_104', 'LastName_104', '03214831106', 'Street 45, City 94', 4815.00, 2),
(105, 'FirstName_105', 'LastName_105', '03113682407', 'Street 487, City 17', 37.00, 5),
(106, 'FirstName_106', 'LastName_106', '03732588095', 'Street 135, City 16', 2041.00, 2),
(107, 'FirstName_107', 'LastName_107', '03370919339', 'Street 485, City 4', 3927.00, 2),
(108, 'FirstName_108', 'LastName_108', '03515504503', 'Street 406, City 4', 2812.00, 2),
(109, 'FirstName_109', 'LastName_109', '03134605650', 'Street 290, City 72', 784.00, 2),
(110, 'FirstName_110', 'LastName_110', '03171462448', 'Street 497, City 82', 3635.00, 5),
(111, 'FirstName_111', 'LastName_111', '03386756003', 'Street 12, City 97', 1617.00, 2),
(112, 'FirstName_112', 'LastName_112', '03960952969', 'Street 154, City 35', 827.00, 5),
(113, 'FirstName_113', 'LastName_113', '03413533127', 'Street 225, City 9', 3758.00, 5),
(114, 'FirstName_114', 'LastName_114', '03716839311', 'Street 307, City 11', 1326.00, 2),
(115, 'FirstName_115', 'LastName_115', '03667330636', 'Street 433, City 63', 4684.00, 2),
(116, 'FirstName_116', 'LastName_116', '03380513730', 'Street 240, City 4', 3760.00, 5),
(117, 'FirstName_117', 'LastName_117', '03515567847', 'Street 235, City 55', 3772.00, 2),
(118, 'FirstName_118', 'LastName_118', '03356137775', 'Street 223, City 18', 2368.00, 2),
(119, 'FirstName_119', 'LastName_119', '03344558116', 'Street 32, City 20', 4980.00, 2),
(120, 'FirstName_120', 'LastName_120', '03318021726', 'Street 337, City 87', 4525.00, 5),
(121, 'FirstName_121', 'LastName_121', '03600311524', 'Street 318, City 85', 697.00, 5),
(122, 'FirstName_122', 'LastName_122', '03689603474', 'Street 15, City 61', 1463.00, 5),
(123, 'FirstName_123', 'LastName_123', '03131693500', 'Street 107, City 56', 568.00, 2),
(124, 'FirstName_124', 'LastName_124', '03390873875', 'Street 457, City 71', 2057.00, 2),
(125, 'FirstName_125', 'LastName_125', '03520852748', 'Street 347, City 1', 1118.00, 5),
(126, 'FirstName_126', 'LastName_126', '03804284299', 'Street 139, City 52', 2184.00, 2),
(127, 'FirstName_127', 'LastName_127', '03927735487', 'Street 75, City 89', 2073.00, 2),
(128, 'FirstName_128', 'LastName_128', '03657801933', 'Street 330, City 47', 4570.00, 5),
(129, 'FirstName_129', 'LastName_129', '03451369848', 'Street 280, City 2', 3764.00, 5),
(130, 'FirstName_130', 'LastName_130', '03481332905', 'Street 220, City 49', 2540.00, 2),
(131, 'FirstName_131', 'LastName_131', '03741369620', 'Street 243, City 72', 4082.00, 2),
(132, 'FirstName_132', 'LastName_132', '03796491202', 'Street 419, City 78', 4364.00, 2),
(133, 'FirstName_133', 'LastName_133', '03690394906', 'Street 465, City 47', 2668.00, 5),
(134, 'FirstName_134', 'LastName_134', '03502546278', 'Street 160, City 37', 4216.00, 2),
(135, 'FirstName_135', 'LastName_135', '03567898792', 'Street 408, City 100', 3577.00, 2),
(136, 'FirstName_136', 'LastName_136', '03819126787', 'Street 286, City 25', 3587.00, 2),
(137, 'FirstName_137', 'LastName_137', '03548962172', 'Street 150, City 81', 3094.00, 2),
(138, 'FirstName_138', 'LastName_138', '03587988826', 'Street 409, City 34', 3173.00, 2),
(139, 'FirstName_139', 'LastName_139', '03152870887', 'Street 443, City 89', 2444.00, 2),
(140, 'FirstName_140', 'LastName_140', '03366593385', 'Street 382, City 63', 576.00, 2),
(141, 'FirstName_141', 'LastName_141', '03230734931', 'Street 156, City 91', 2924.00, 2),
(142, 'FirstName_142', 'LastName_142', '03832578871', 'Street 258, City 80', 3272.00, 2),
(143, 'FirstName_143', 'LastName_143', '03934007951', 'Street 363, City 57', 337.00, 2),
(144, 'FirstName_144', 'LastName_144', '03572851033', 'Street 157, City 68', 4056.00, 5),
(145, 'FirstName_145', 'LastName_145', '03694773429', 'Street 186, City 51', 4368.00, 2),
(146, 'FirstName_146', 'LastName_146', '03685010927', 'Street 240, City 78', 2411.00, 2),
(147, 'FirstName_147', 'LastName_147', '03728148190', 'Street 314, City 67', 218.00, 2),
(148, 'FirstName_148', 'LastName_148', '03324421108', 'Street 18, City 57', 3156.00, 2),
(149, 'FirstName_149', 'LastName_149', '03584451256', 'Street 428, City 52', 428.00, 5),
(150, 'FirstName_150', 'LastName_150', '03870377555', 'Street 362, City 97', 2274.00, 2),
(151, 'FirstName_151', 'LastName_151', '03513975542', 'Street 272, City 16', 240.00, 5),
(152, 'FirstName_152', 'LastName_152', '03644389514', 'Street 305, City 73', 2343.00, 2),
(153, 'FirstName_153', 'LastName_153', '03591280940', 'Street 264, City 43', 2171.00, 5),
(154, 'FirstName_154', 'LastName_154', '03417851182', 'Street 142, City 13', 122.00, 5),
(155, 'FirstName_155', 'LastName_155', '03375001328', 'Street 490, City 72', 2298.00, 5),
(156, 'FirstName_156', 'LastName_156', '03530692409', 'Street 56, City 43', 501.00, 5),
(157, 'FirstName_157', 'LastName_157', '03802500252', 'Street 493, City 32', 2824.00, 2),
(158, 'FirstName_158', 'LastName_158', '03101492777', 'Street 407, City 68', 2174.00, 2),
(159, 'FirstName_159', 'LastName_159', '03237778977', 'Street 174, City 25', 4514.00, 2),
(160, 'FirstName_160', 'LastName_160', '03731305646', 'Street 39, City 7', 150.00, 2),
(161, 'FirstName_161', 'LastName_161', '03706580302', 'Street 74, City 97', 4706.00, 2),
(162, 'FirstName_162', 'LastName_162', '03431249125', 'Street 179, City 85', 1938.00, 5),
(163, 'FirstName_163', 'LastName_163', '03444157247', 'Street 313, City 24', 4343.00, 5),
(164, 'FirstName_164', 'LastName_164', '03681169446', 'Street 161, City 45', 4905.00, 2),
(165, 'FirstName_165', 'LastName_165', '03157903461', 'Street 382, City 56', 174.00, 5),
(166, 'FirstName_166', 'LastName_166', '03972179864', 'Street 191, City 18', 2446.00, 5),
(167, 'FirstName_167', 'LastName_167', '03631014312', 'Street 480, City 47', 4133.00, 5),
(168, 'FirstName_168', 'LastName_168', '03404947419', 'Street 37, City 45', 3519.00, 2),
(169, 'FirstName_169', 'LastName_169', '03574435609', 'Street 7, City 95', 2333.00, 5),
(170, 'FirstName_170', 'LastName_170', '03577349963', 'Street 322, City 60', 1738.00, 2),
(171, 'FirstName_171', 'LastName_171', '03907299634', 'Street 64, City 63', 1019.00, 2),
(172, 'FirstName_172', 'LastName_172', '03527212742', 'Street 471, City 24', 840.00, 5),
(173, 'FirstName_173', 'LastName_173', '03871403254', 'Street 467, City 20', 3356.00, 2),
(174, 'FirstName_174', 'LastName_174', '03720980259', 'Street 13, City 59', 3381.00, 5),
(175, 'FirstName_175', 'LastName_175', '03944831464', 'Street 163, City 18', 801.00, 5),
(176, 'FirstName_176', 'LastName_176', '03752527716', 'Street 382, City 21', 356.00, 5),
(177, 'FirstName_177', 'LastName_177', '03333277364', 'Street 403, City 20', 4098.00, 5),
(178, 'FirstName_178', 'LastName_178', '03676877158', 'Street 482, City 23', 1301.00, 5),
(179, 'FirstName_179', 'LastName_179', '03105329478', 'Street 163, City 36', 3616.00, 5),
(180, 'FirstName_180', 'LastName_180', '03925398459', 'Street 329, City 32', 3394.00, 5),
(181, 'FirstName_181', 'LastName_181', '03211013602', 'Street 114, City 9', 4074.00, 5),
(182, 'FirstName_182', 'LastName_182', '03655670142', 'Street 466, City 69', 2819.00, 2),
(183, 'FirstName_183', 'LastName_183', '03421502297', 'Street 471, City 27', 1538.00, 2),
(184, 'FirstName_184', 'LastName_184', '03738876024', 'Street 420, City 100', 459.00, 5),
(185, 'FirstName_185', 'LastName_185', '03854032654', 'Street 171, City 44', 2783.00, 5),
(186, 'FirstName_186', 'LastName_186', '03941701836', 'Street 408, City 73', 2890.00, 5),
(187, 'FirstName_187', 'LastName_187', '03153890893', 'Street 149, City 50', 362.00, 2),
(188, 'FirstName_188', 'LastName_188', '03151637546', 'Street 44, City 40', 2517.00, 2),
(189, 'FirstName_189', 'LastName_189', '03396705438', 'Street 73, City 98', 3022.00, 5),
(190, 'FirstName_190', 'LastName_190', '03560315224', 'Street 126, City 27', 697.00, 2),
(191, 'FirstName_191', 'LastName_191', '03342998806', 'Street 243, City 85', 2032.00, 5),
(192, 'FirstName_192', 'LastName_192', '03818849450', 'Street 332, City 82', 1854.00, 5),
(193, 'FirstName_193', 'LastName_193', '03713368079', 'Street 427, City 3', 1465.00, 2),
(194, 'FirstName_194', 'LastName_194', '03839501863', 'Street 444, City 67', 1460.00, 5),
(195, 'FirstName_195', 'LastName_195', '03257597689', 'Street 99, City 99', 3955.00, 2),
(196, 'FirstName_196', 'LastName_196', '03834974012', 'Street 212, City 74', 3677.00, 2),
(197, 'FirstName_197', 'LastName_197', '03402530333', 'Street 321, City 1', 780.00, 2),
(198, 'FirstName_198', 'LastName_198', '03701276898', 'Street 419, City 71', 2854.00, 5),
(199, 'FirstName_199', 'LastName_199', '03592491615', 'Street 386, City 75', 3229.00, 5),
(200, 'FirstName_200', 'LastName_200', '03287886843', 'Street 283, City 53', 2769.00, 5),
(201, 'FirstName_201', 'LastName_201', '03574677310', 'Street 494, City 89', 2780.00, 2),
(202, 'FirstName_202', 'LastName_202', '03308220777', 'Street 119, City 96', 2043.00, 2),
(203, 'FirstName_203', 'LastName_203', '03480024387', 'Street 492, City 35', 863.00, 2),
(204, 'FirstName_204', 'LastName_204', '03407890650', 'Street 499, City 11', 4737.00, 2),
(205, 'FirstName_205', 'LastName_205', '03203421105', 'Street 459, City 46', 693.00, 5),
(206, 'FirstName_206', 'LastName_206', '03759136758', 'Street 326, City 12', 571.00, 2),
(207, 'FirstName_207', 'LastName_207', '03338124255', 'Street 235, City 95', 1021.00, 5),
(208, 'FirstName_208', 'LastName_208', '03302349615', 'Street 7, City 19', 2214.00, 2),
(209, 'FirstName_209', 'LastName_209', '03694500180', 'Street 232, City 64', 484.00, 2),
(210, 'FirstName_210', 'LastName_210', '03462089174', 'Street 250, City 58', 695.00, 2),
(211, 'FirstName_211', 'LastName_211', '03644994469', 'Street 2, City 10', 1816.00, 5),
(212, 'FirstName_212', 'LastName_212', '03664537769', 'Street 261, City 16', 1226.00, 5),
(213, 'FirstName_213', 'LastName_213', '03999861316', 'Street 21, City 28', 157.00, 2),
(214, 'FirstName_214', 'LastName_214', '03356325650', 'Street 264, City 88', 3042.00, 5),
(215, 'FirstName_215', 'LastName_215', '03856334909', 'Street 53, City 14', 402.00, 2),
(216, 'FirstName_216', 'LastName_216', '03259364626', 'Street 417, City 14', 3060.00, 2),
(217, 'FirstName_217', 'LastName_217', '03900392275', 'Street 254, City 74', 221.00, 5),
(218, 'FirstName_218', 'LastName_218', '03549537726', 'Street 320, City 22', 3811.00, 5),
(219, 'FirstName_219', 'LastName_219', '03256406191', 'Street 20, City 37', 4835.00, 5),
(220, 'FirstName_220', 'LastName_220', '03420437568', 'Street 70, City 25', 1784.00, 5),
(221, 'FirstName_221', 'LastName_221', '03188340454', 'Street 76, City 19', 339.00, 5),
(222, 'FirstName_222', 'LastName_222', '03374421211', 'Street 245, City 14', 222.00, 5),
(223, 'FirstName_223', 'LastName_223', '03883055837', 'Street 302, City 31', 3933.00, 5),
(224, 'FirstName_224', 'LastName_224', '03560411366', 'Street 140, City 15', 1251.00, 2),
(225, 'FirstName_225', 'LastName_225', '03641559321', 'Street 107, City 72', 1606.00, 2),
(226, 'FirstName_226', 'LastName_226', '03327840062', 'Street 461, City 40', 3101.00, 5),
(227, 'FirstName_227', 'LastName_227', '03722876529', 'Street 154, City 49', 1447.00, 2),
(228, 'FirstName_228', 'LastName_228', '03990876450', 'Street 359, City 31', 3967.00, 2),
(229, 'FirstName_229', 'LastName_229', '03143570975', 'Street 311, City 66', 2169.00, 2),
(230, 'FirstName_230', 'LastName_230', '03411938926', 'Street 404, City 7', 4573.00, 5),
(231, 'FirstName_231', 'LastName_231', '03373683608', 'Street 408, City 29', 4176.00, 2),
(232, 'FirstName_232', 'LastName_232', '03702854324', 'Street 397, City 90', 1332.00, 5),
(233, 'FirstName_233', 'LastName_233', '03323752660', 'Street 128, City 63', 1009.00, 5),
(234, 'FirstName_234', 'LastName_234', '03944630573', 'Street 285, City 71', 3954.00, 5),
(235, 'FirstName_235', 'LastName_235', '03423322359', 'Street 77, City 22', 1438.00, 5),
(236, 'FirstName_236', 'LastName_236', '03841590259', 'Street 309, City 3', 3007.00, 5),
(237, 'FirstName_237', 'LastName_237', '03911729127', 'Street 352, City 60', 2141.00, 2),
(238, 'FirstName_238', 'LastName_238', '03433160561', 'Street 140, City 45', 3836.00, 5),
(239, 'FirstName_239', 'LastName_239', '03876971850', 'Street 361, City 72', 2170.00, 2),
(240, 'FirstName_240', 'LastName_240', '03106580034', 'Street 270, City 25', 4521.00, 5),
(241, 'FirstName_241', 'LastName_241', '03787772787', 'Street 310, City 6', 409.00, 5),
(242, 'FirstName_242', 'LastName_242', '03274975619', 'Street 14, City 64', 3593.00, 5),
(243, 'FirstName_243', 'LastName_243', '03301124899', 'Street 218, City 32', 990.00, 5),
(244, 'FirstName_244', 'LastName_244', '03753512555', 'Street 435, City 47', 1343.00, 2),
(245, 'FirstName_245', 'LastName_245', '03149231539', 'Street 182, City 57', 2987.00, 2),
(246, 'FirstName_246', 'LastName_246', '03112936222', 'Street 158, City 8', 114.00, 2),
(247, 'FirstName_247', 'LastName_247', '03588494365', 'Street 311, City 7', 3756.00, 5),
(248, 'FirstName_248', 'LastName_248', '03926724079', 'Street 317, City 33', 4383.00, 2),
(249, 'FirstName_249', 'LastName_249', '03121815862', 'Street 202, City 52', 1294.00, 2),
(250, 'FirstName_250', 'LastName_250', '03663777798', 'Street 344, City 73', 2110.00, 5),
(251, 'FirstName_251', 'LastName_251', '03662152277', 'Street 352, City 1', 4232.00, 2),
(252, 'FirstName_252', 'LastName_252', '03398606032', 'Street 153, City 89', 2768.00, 5),
(253, 'FirstName_253', 'LastName_253', '03716530376', 'Street 93, City 71', 3102.00, 5),
(254, 'FirstName_254', 'LastName_254', '03556273936', 'Street 444, City 25', 274.00, 5),
(255, 'FirstName_255', 'LastName_255', '03853550397', 'Street 497, City 34', 1063.00, 5),
(256, 'FirstName_256', 'LastName_256', '03748496886', 'Street 272, City 31', 3591.00, 5),
(257, 'FirstName_257', 'LastName_257', '03110245952', 'Street 96, City 57', 3468.00, 5),
(258, 'FirstName_258', 'LastName_258', '03466225963', 'Street 388, City 31', 1753.00, 5),
(259, 'FirstName_259', 'LastName_259', '03604982563', 'Street 15, City 65', 2553.00, 2),
(260, 'FirstName_260', 'LastName_260', '03401922744', 'Street 275, City 49', 3851.00, 2),
(261, 'FirstName_261', 'LastName_261', '03913332557', 'Street 255, City 7', 2.00, 2),
(262, 'FirstName_262', 'LastName_262', '03330702679', 'Street 401, City 48', 3889.00, 2),
(263, 'FirstName_263', 'LastName_263', '03368317503', 'Street 272, City 28', 2940.00, 5),
(264, 'FirstName_264', 'LastName_264', '03946006284', 'Street 398, City 19', 4523.00, 2),
(265, 'FirstName_265', 'LastName_265', '03562651553', 'Street 46, City 82', 3580.00, 2),
(266, 'FirstName_266', 'LastName_266', '03281983087', 'Street 253, City 85', 4067.00, 2),
(267, 'FirstName_267', 'LastName_267', '03952887125', 'Street 113, City 31', 1310.00, 5),
(268, 'FirstName_268', 'LastName_268', '03552350240', 'Street 330, City 86', 4120.00, 2),
(269, 'FirstName_269', 'LastName_269', '03238153330', 'Street 176, City 13', 163.00, 2),
(270, 'FirstName_270', 'LastName_270', '03492154662', 'Street 283, City 11', 3940.00, 2),
(271, 'FirstName_271', 'LastName_271', '03567040523', 'Street 497, City 23', 3768.00, 2),
(272, 'FirstName_272', 'LastName_272', '03549150436', 'Street 190, City 34', 1997.00, 2),
(273, 'FirstName_273', 'LastName_273', '03828260877', 'Street 223, City 46', 3181.00, 2),
(274, 'FirstName_274', 'LastName_274', '03851043662', 'Street 183, City 86', 193.00, 2),
(275, 'FirstName_275', 'LastName_275', '03458955345', 'Street 17, City 39', 2671.00, 2),
(276, 'FirstName_276', 'LastName_276', '03698191101', 'Street 107, City 46', 1971.00, 2),
(277, 'FirstName_277', 'LastName_277', '03841603499', 'Street 180, City 5', 3322.00, 2),
(278, 'FirstName_278', 'LastName_278', '03435854148', 'Street 375, City 54', 2830.00, 2),
(279, 'FirstName_279', 'LastName_279', '03230243395', 'Street 218, City 43', 3820.00, 2),
(280, 'FirstName_280', 'LastName_280', '03897829964', 'Street 360, City 65', 1174.00, 2),
(281, 'FirstName_281', 'LastName_281', '03365440222', 'Street 319, City 13', 4599.00, 2),
(282, 'FirstName_282', 'LastName_282', '03927339958', 'Street 432, City 99', 2900.00, 2),
(283, 'FirstName_283', 'LastName_283', '03619297926', 'Street 170, City 47', 165.00, 5),
(284, 'FirstName_284', 'LastName_284', '03362154778', 'Street 253, City 88', 3347.00, 2),
(285, 'FirstName_285', 'LastName_285', '03420026933', 'Street 480, City 64', 230.00, 5),
(286, 'FirstName_286', 'LastName_286', '03838366290', 'Street 91, City 39', 1300.00, 5),
(287, 'FirstName_287', 'LastName_287', '03774248082', 'Street 18, City 67', 2820.00, 2),
(288, 'FirstName_288', 'LastName_288', '03459346383', 'Street 380, City 29', 3651.00, 5),
(289, 'FirstName_289', 'LastName_289', '03394249210', 'Street 311, City 4', 3761.00, 5),
(290, 'FirstName_290', 'LastName_290', '03258404959', 'Street 34, City 46', 195.00, 5),
(291, 'FirstName_291', 'LastName_291', '03395346956', 'Street 441, City 55', 4002.00, 2),
(292, 'FirstName_292', 'LastName_292', '03303807301', 'Street 447, City 13', 191.00, 5),
(293, 'FirstName_293', 'LastName_293', '03846657863', 'Street 302, City 40', 3626.00, 2),
(294, 'FirstName_294', 'LastName_294', '03193958645', 'Street 320, City 48', 4461.00, 2),
(295, 'FirstName_295', 'LastName_295', '03759143644', 'Street 14, City 59', 1550.00, 5),
(296, 'FirstName_296', 'LastName_296', '03578291747', 'Street 99, City 39', 4372.00, 2),
(297, 'FirstName_297', 'LastName_297', '03161874744', 'Street 388, City 46', 4157.00, 2),
(298, 'FirstName_298', 'LastName_298', '03122704206', 'Street 346, City 21', 864.00, 2),
(299, 'FirstName_299', 'LastName_299', '03931908565', 'Street 316, City 98', 826.00, 2),
(300, 'FirstName_300', 'LastName_300', '03375192022', 'Street 102, City 97', 3053.00, 2),
(301, 'FirstName_301', 'LastName_301', '03646772721', 'Street 178, City 12', 4156.00, 5),
(302, 'FirstName_302', 'LastName_302', '03261811619', 'Street 368, City 66', 3700.00, 2),
(303, 'FirstName_303', 'LastName_303', '03486915107', 'Street 477, City 15', 1304.00, 2),
(304, 'FirstName_304', 'LastName_304', '03980477922', 'Street 448, City 88', 1835.00, 5),
(305, 'FirstName_305', 'LastName_305', '03997434458', 'Street 344, City 26', 3926.00, 2),
(306, 'FirstName_306', 'LastName_306', '03177571228', 'Street 374, City 83', 1687.00, 5),
(307, 'FirstName_307', 'LastName_307', '03784768855', 'Street 323, City 57', 1893.00, 2),
(308, 'FirstName_308', 'LastName_308', '03719655186', 'Street 336, City 29', 2606.00, 2),
(309, 'FirstName_309', 'LastName_309', '03856705725', 'Street 317, City 68', 1716.00, 5),
(310, 'FirstName_310', 'LastName_310', '03231841806', 'Street 339, City 2', 3876.00, 5),
(311, 'FirstName_311', 'LastName_311', '03466276190', 'Street 313, City 92', 4041.00, 5),
(312, 'FirstName_312', 'LastName_312', '03553537802', 'Street 302, City 74', 3969.00, 5),
(313, 'FirstName_313', 'LastName_313', '03617580359', 'Street 428, City 46', 4622.00, 2),
(314, 'FirstName_314', 'LastName_314', '03328683155', 'Street 500, City 69', 194.00, 2),
(315, 'FirstName_315', 'LastName_315', '03889686166', 'Street 299, City 80', 591.00, 2),
(316, 'FirstName_316', 'LastName_316', '03643890855', 'Street 208, City 61', 3141.00, 5),
(317, 'FirstName_317', 'LastName_317', '03579198767', 'Street 166, City 31', 103.00, 5),
(318, 'FirstName_318', 'LastName_318', '03304230851', 'Street 403, City 62', 1841.00, 5),
(319, 'FirstName_319', 'LastName_319', '03643094228', 'Street 96, City 24', 323.00, 2),
(320, 'FirstName_320', 'LastName_320', '03215112760', 'Street 426, City 61', 3662.00, 5),
(321, 'FirstName_321', 'LastName_321', '03795431260', 'Street 332, City 33', 3264.00, 2),
(322, 'FirstName_322', 'LastName_322', '03763063894', 'Street 212, City 31', 3855.00, 2),
(323, 'FirstName_323', 'LastName_323', '03382278872', 'Street 223, City 54', 2083.00, 2),
(324, 'FirstName_324', 'LastName_324', '03202211097', 'Street 254, City 54', 4404.00, 5),
(325, 'FirstName_325', 'LastName_325', '03577057680', 'Street 411, City 99', 4032.00, 5),
(326, 'FirstName_326', 'LastName_326', '03934618631', 'Street 491, City 14', 1781.00, 5),
(327, 'FirstName_327', 'LastName_327', '03639285926', 'Street 227, City 77', 3559.00, 5),
(328, 'FirstName_328', 'LastName_328', '03478249552', 'Street 136, City 61', 2916.00, 5),
(329, 'FirstName_329', 'LastName_329', '03695422106', 'Street 211, City 30', 4905.00, 5),
(330, 'FirstName_330', 'LastName_330', '03797623988', 'Street 68, City 61', 1842.00, 5),
(331, 'FirstName_331', 'LastName_331', '03499813906', 'Street 457, City 13', 3727.00, 5),
(332, 'FirstName_332', 'LastName_332', '03643396015', 'Street 346, City 99', 3032.00, 5),
(333, 'FirstName_333', 'LastName_333', '03337068454', 'Street 81, City 17', 1112.00, 2),
(334, 'FirstName_334', 'LastName_334', '03124660759', 'Street 64, City 56', 780.00, 2),
(335, 'FirstName_335', 'LastName_335', '03773501614', 'Street 24, City 25', 4935.00, 2),
(336, 'FirstName_336', 'LastName_336', '03459395711', 'Street 430, City 100', 1132.00, 2),
(337, 'FirstName_337', 'LastName_337', '03931500757', 'Street 285, City 96', 4266.00, 5),
(338, 'FirstName_338', 'LastName_338', '03597178218', 'Street 448, City 59', 3801.00, 2),
(339, 'FirstName_339', 'LastName_339', '03569528786', 'Street 107, City 71', 589.00, 5),
(340, 'FirstName_340', 'LastName_340', '03564879535', 'Street 369, City 79', 4318.00, 5),
(341, 'FirstName_341', 'LastName_341', '03771102063', 'Street 67, City 44', 4039.00, 2),
(342, 'FirstName_342', 'LastName_342', '03496875951', 'Street 415, City 47', 1706.00, 5),
(343, 'FirstName_343', 'LastName_343', '03937813479', 'Street 334, City 88', 331.00, 5),
(344, 'FirstName_344', 'LastName_344', '03266288350', 'Street 268, City 95', 1262.00, 5),
(345, 'FirstName_345', 'LastName_345', '03173147788', 'Street 463, City 38', 3061.00, 2),
(346, 'FirstName_346', 'LastName_346', '03604238702', 'Street 490, City 26', 2233.00, 2),
(347, 'FirstName_347', 'LastName_347', '03501075611', 'Street 432, City 53', 4223.00, 5),
(348, 'FirstName_348', 'LastName_348', '03735391029', 'Street 346, City 82', 597.00, 5),
(349, 'FirstName_349', 'LastName_349', '03481077914', 'Street 425, City 71', 912.00, 2),
(350, 'FirstName_350', 'LastName_350', '03827461316', 'Street 381, City 22', 2294.00, 5),
(351, 'FirstName_351', 'LastName_351', '03817245145', 'Street 254, City 92', 3790.00, 2),
(352, 'FirstName_352', 'LastName_352', '03205816395', 'Street 494, City 90', 3555.00, 5),
(353, 'FirstName_353', 'LastName_353', '03725216854', 'Street 72, City 38', 3099.00, 5),
(354, 'FirstName_354', 'LastName_354', '03302354927', 'Street 191, City 14', 2261.00, 5),
(355, 'FirstName_355', 'LastName_355', '03675452571', 'Street 41, City 100', 3835.00, 5),
(356, 'FirstName_356', 'LastName_356', '03686882578', 'Street 46, City 91', 4011.00, 5),
(357, 'FirstName_357', 'LastName_357', '03440325887', 'Street 345, City 43', 3160.00, 5),
(358, 'FirstName_358', 'LastName_358', '03753012700', 'Street 385, City 45', 2616.00, 2),
(359, 'FirstName_359', 'LastName_359', '03821156663', 'Street 4, City 51', 3471.00, 5),
(360, 'FirstName_360', 'LastName_360', '03907586817', 'Street 474, City 89', 3516.00, 5),
(361, 'FirstName_361', 'LastName_361', '03123066594', 'Street 33, City 58', 865.00, 2),
(362, 'FirstName_362', 'LastName_362', '03126969272', 'Street 410, City 18', 4416.00, 5),
(363, 'FirstName_363', 'LastName_363', '03771718419', 'Street 254, City 12', 515.00, 2),
(364, 'FirstName_364', 'LastName_364', '03508728104', 'Street 468, City 100', 1869.00, 5),
(365, 'FirstName_365', 'LastName_365', '03764186403', 'Street 449, City 98', 141.00, 2),
(366, 'FirstName_366', 'LastName_366', '03876617527', 'Street 38, City 66', 1324.00, 2),
(367, 'FirstName_367', 'LastName_367', '03849610015', 'Street 84, City 44', 2896.00, 5),
(368, 'FirstName_368', 'LastName_368', '03872714090', 'Street 271, City 80', 2982.00, 5),
(369, 'FirstName_369', 'LastName_369', '03183430029', 'Street 350, City 74', 2056.00, 2),
(370, 'FirstName_370', 'LastName_370', '03121090134', 'Street 148, City 2', 1189.00, 2),
(371, 'FirstName_371', 'LastName_371', '03872141655', 'Street 407, City 81', 746.00, 2),
(372, 'FirstName_372', 'LastName_372', '03598894435', 'Street 335, City 64', 3705.00, 5),
(373, 'FirstName_373', 'LastName_373', '03853205857', 'Street 486, City 43', 3706.00, 2),
(374, 'FirstName_374', 'LastName_374', '03366889560', 'Street 447, City 1', 4026.00, 2),
(375, 'FirstName_375', 'LastName_375', '03641604258', 'Street 119, City 30', 1587.00, 5),
(376, 'FirstName_376', 'LastName_376', '03724224628', 'Street 356, City 94', 4930.00, 2),
(377, 'FirstName_377', 'LastName_377', '03269899808', 'Street 500, City 56', 3501.00, 2),
(378, 'FirstName_378', 'LastName_378', '03170759467', 'Street 234, City 20', 3028.00, 2),
(379, 'FirstName_379', 'LastName_379', '03683329653', 'Street 313, City 15', 743.00, 2),
(380, 'FirstName_380', 'LastName_380', '03850454895', 'Street 366, City 91', 1218.00, 2),
(381, 'FirstName_381', 'LastName_381', '03753753406', 'Street 467, City 6', 3624.00, 5),
(382, 'FirstName_382', 'LastName_382', '03307706356', 'Street 67, City 51', 3239.00, 5),
(383, 'FirstName_383', 'LastName_383', '03210070146', 'Street 133, City 37', 3676.00, 2),
(384, 'FirstName_384', 'LastName_384', '03731420905', 'Street 241, City 85', 872.00, 5),
(385, 'FirstName_385', 'LastName_385', '03572989290', 'Street 265, City 67', 4961.00, 2),
(386, 'FirstName_386', 'LastName_386', '03673035539', 'Street 289, City 81', 1949.00, 5),
(387, 'FirstName_387', 'LastName_387', '03721781525', 'Street 487, City 43', 220.00, 2),
(388, 'FirstName_388', 'LastName_388', '03339333109', 'Street 474, City 82', 2317.00, 2),
(389, 'FirstName_389', 'LastName_389', '03282715853', 'Street 155, City 11', 3800.00, 5),
(390, 'FirstName_390', 'LastName_390', '03499616643', 'Street 365, City 41', 2455.00, 5),
(391, 'FirstName_391', 'LastName_391', '03214419829', 'Street 156, City 34', 3699.00, 5),
(392, 'FirstName_392', 'LastName_392', '03914090023', 'Street 62, City 92', 2937.00, 5),
(393, 'FirstName_393', 'LastName_393', '03622065119', 'Street 496, City 75', 1455.00, 2),
(394, 'FirstName_394', 'LastName_394', '03199259549', 'Street 297, City 94', 3986.00, 5),
(395, 'FirstName_395', 'LastName_395', '03645370756', 'Street 202, City 82', 1062.00, 2),
(396, 'FirstName_396', 'LastName_396', '03768699789', 'Street 330, City 66', 2428.00, 2),
(397, 'FirstName_397', 'LastName_397', '03862551878', 'Street 398, City 27', 4540.00, 2),
(398, 'FirstName_398', 'LastName_398', '03560865455', 'Street 243, City 63', 4771.00, 5),
(399, 'FirstName_399', 'LastName_399', '03511755104', 'Street 264, City 38', 1161.00, 5),
(400, 'FirstName_400', 'LastName_400', '03165551420', 'Street 367, City 20', 2590.00, 2),
(401, 'FirstName_401', 'LastName_401', '03722016477', 'Street 328, City 75', 4195.00, 2),
(402, 'FirstName_402', 'LastName_402', '03258850075', 'Street 350, City 12', 3244.00, 2),
(403, 'FirstName_403', 'LastName_403', '03991174200', 'Street 304, City 87', 999.00, 5),
(404, 'FirstName_404', 'LastName_404', '03490930990', 'Street 286, City 19', 2409.00, 2),
(405, 'FirstName_405', 'LastName_405', '03168739991', 'Street 166, City 14', 3971.00, 2),
(406, 'FirstName_406', 'LastName_406', '03808542464', 'Street 238, City 58', 4941.00, 5),
(407, 'FirstName_407', 'LastName_407', '03866986937', 'Street 141, City 54', 3391.00, 5),
(408, 'FirstName_408', 'LastName_408', '03140625275', 'Street 3, City 92', 2428.00, 2),
(409, 'FirstName_409', 'LastName_409', '03531904023', 'Street 55, City 35', 4292.00, 2),
(410, 'FirstName_410', 'LastName_410', '03274779052', 'Street 376, City 52', 4027.00, 2),
(411, 'FirstName_411', 'LastName_411', '03499826524', 'Street 492, City 53', 4059.00, 2),
(412, 'FirstName_412', 'LastName_412', '03146735186', 'Street 458, City 22', 4838.00, 2),
(413, 'FirstName_413', 'LastName_413', '03249002183', 'Street 194, City 53', 3300.00, 2),
(414, 'FirstName_414', 'LastName_414', '03783901063', 'Street 361, City 53', 1141.00, 2),
(415, 'FirstName_415', 'LastName_415', '03639206814', 'Street 368, City 71', 4593.00, 5),
(416, 'FirstName_416', 'LastName_416', '03501065398', 'Street 33, City 30', 1083.00, 5),
(417, 'FirstName_417', 'LastName_417', '03742132178', 'Street 119, City 49', 784.00, 2),
(418, 'FirstName_418', 'LastName_418', '03642155468', 'Street 499, City 47', 2045.00, 2),
(419, 'FirstName_419', 'LastName_419', '03675208980', 'Street 2, City 81', 1229.00, 5),
(420, 'FirstName_420', 'LastName_420', '03499744037', 'Street 359, City 6', 2612.00, 5),
(421, 'FirstName_421', 'LastName_421', '03307570941', 'Street 338, City 2', 923.00, 2),
(422, 'FirstName_422', 'LastName_422', '03597616553', 'Street 24, City 52', 2790.00, 5),
(423, 'FirstName_423', 'LastName_423', '03651381094', 'Street 213, City 24', 4449.00, 5),
(424, 'FirstName_424', 'LastName_424', '03774906454', 'Street 62, City 64', 3795.00, 5),
(425, 'FirstName_425', 'LastName_425', '03743087473', 'Street 369, City 7', 928.00, 2),
(426, 'FirstName_426', 'LastName_426', '03877066177', 'Street 42, City 43', 3011.00, 2),
(427, 'FirstName_427', 'LastName_427', '03775599768', 'Street 364, City 61', 1894.00, 5),
(428, 'FirstName_428', 'LastName_428', '03586224015', 'Street 347, City 78', 2869.00, 5),
(429, 'FirstName_429', 'LastName_429', '03630430437', 'Street 225, City 97', 1512.00, 2),
(430, 'FirstName_430', 'LastName_430', '03312701899', 'Street 350, City 65', 3327.00, 2),
(431, 'FirstName_431', 'LastName_431', '03794400234', 'Street 130, City 35', 3000.00, 5),
(432, 'FirstName_432', 'LastName_432', '03285667406', 'Street 422, City 84', 1454.00, 5),
(433, 'FirstName_433', 'LastName_433', '03604129653', 'Street 484, City 40', 3469.00, 2),
(434, 'FirstName_434', 'LastName_434', '03224174071', 'Street 36, City 37', 4071.00, 2),
(435, 'FirstName_435', 'LastName_435', '03569644579', 'Street 21, City 94', 2054.00, 2),
(436, 'FirstName_436', 'LastName_436', '03950618531', 'Street 342, City 99', 3022.00, 5),
(437, 'FirstName_437', 'LastName_437', '03912213940', 'Street 143, City 22', 1336.00, 5),
(438, 'FirstName_438', 'LastName_438', '03368641481', 'Street 226, City 52', 2358.00, 2),
(439, 'FirstName_439', 'LastName_439', '03681201068', 'Street 10, City 5', 1351.00, 5),
(440, 'FirstName_440', 'LastName_440', '03574814941', 'Street 385, City 41', 4441.00, 5),
(441, 'FirstName_441', 'LastName_441', '03806725979', 'Street 45, City 72', 3322.00, 5),
(442, 'FirstName_442', 'LastName_442', '03587266180', 'Street 345, City 55', 3065.00, 2),
(443, 'FirstName_443', 'LastName_443', '03120965189', 'Street 45, City 70', 1748.00, 5),
(444, 'FirstName_444', 'LastName_444', '03482960280', 'Street 51, City 27', 542.00, 2),
(445, 'FirstName_445', 'LastName_445', '03764025028', 'Street 54, City 60', 2565.00, 2),
(446, 'FirstName_446', 'LastName_446', '03482951068', 'Street 18, City 20', 3691.00, 2),
(447, 'FirstName_447', 'LastName_447', '03477402141', 'Street 8, City 35', 2366.00, 2),
(448, 'FirstName_448', 'LastName_448', '03284639665', 'Street 363, City 79', 4392.00, 2),
(449, 'FirstName_449', 'LastName_449', '03541658333', 'Street 15, City 86', 4597.00, 2),
(450, 'FirstName_450', 'LastName_450', '03305579103', 'Street 287, City 85', 467.00, 2),
(451, 'FirstName_451', 'LastName_451', '03181028872', 'Street 113, City 31', 3455.00, 2),
(452, 'FirstName_452', 'LastName_452', '03566290845', 'Street 141, City 35', 3694.00, 2),
(453, 'FirstName_453', 'LastName_453', '03769542399', 'Street 326, City 8', 4504.00, 5),
(454, 'FirstName_454', 'LastName_454', '03249067109', 'Street 355, City 81', 2276.00, 5),
(455, 'FirstName_455', 'LastName_455', '03854528970', 'Street 141, City 8', 975.00, 2),
(456, 'FirstName_456', 'LastName_456', '03161316746', 'Street 161, City 38', 2569.00, 2),
(457, 'FirstName_457', 'LastName_457', '03711922603', 'Street 493, City 68', 3281.00, 2),
(458, 'FirstName_458', 'LastName_458', '03703203562', 'Street 228, City 10', 3655.00, 2),
(459, 'FirstName_459', 'LastName_459', '03846649282', 'Street 7, City 42', 435.00, 2),
(460, 'FirstName_460', 'LastName_460', '03226556862', 'Street 198, City 43', 2562.00, 5),
(461, 'FirstName_461', 'LastName_461', '03997788079', 'Street 306, City 88', 267.00, 5),
(462, 'FirstName_462', 'LastName_462', '03318534651', 'Street 439, City 100', 1701.00, 5),
(463, 'FirstName_463', 'LastName_463', '03883336412', 'Street 310, City 92', 2935.00, 2),
(464, 'FirstName_464', 'LastName_464', '03868486996', 'Street 158, City 22', 4304.00, 5),
(465, 'FirstName_465', 'LastName_465', '03530813296', 'Street 286, City 79', 4812.00, 5),
(466, 'FirstName_466', 'LastName_466', '03232553981', 'Street 275, City 84', 4808.00, 5),
(467, 'FirstName_467', 'LastName_467', '03782179779', 'Street 498, City 95', 3855.00, 2),
(468, 'FirstName_468', 'LastName_468', '03115142619', 'Street 422, City 97', 334.00, 2),
(469, 'FirstName_469', 'LastName_469', '03330253487', 'Street 204, City 55', 3169.00, 2),
(470, 'FirstName_470', 'LastName_470', '03595368259', 'Street 500, City 9', 2419.00, 5),
(471, 'FirstName_471', 'LastName_471', '03807175601', 'Street 296, City 59', 1486.00, 2),
(472, 'FirstName_472', 'LastName_472', '03437489911', 'Street 482, City 1', 3717.00, 5),
(473, 'FirstName_473', 'LastName_473', '03972190964', 'Street 391, City 49', 3958.00, 2),
(474, 'FirstName_474', 'LastName_474', '03732045700', 'Street 386, City 25', 1126.00, 2),
(475, 'FirstName_475', 'LastName_475', '03923632709', 'Street 384, City 87', 2776.00, 2),
(476, 'FirstName_476', 'LastName_476', '03955307139', 'Street 142, City 20', 2056.00, 5),
(477, 'FirstName_477', 'LastName_477', '03391121114', 'Street 349, City 82', 2890.00, 2),
(478, 'FirstName_478', 'LastName_478', '03210108279', 'Street 294, City 44', 3612.00, 5),
(479, 'FirstName_479', 'LastName_479', '03878674552', 'Street 463, City 41', 524.00, 5),
(480, 'FirstName_480', 'LastName_480', '03673302067', 'Street 490, City 65', 3255.00, 5),
(481, 'FirstName_481', 'LastName_481', '03113105692', 'Street 59, City 29', 407.00, 5),
(482, 'FirstName_482', 'LastName_482', '03668925420', 'Street 369, City 72', 2094.00, 2),
(483, 'FirstName_483', 'LastName_483', '03248075988', 'Street 275, City 41', 1482.00, 5),
(484, 'FirstName_484', 'LastName_484', '03840014712', 'Street 454, City 34', 177.00, 5),
(485, 'FirstName_485', 'LastName_485', '03638100149', 'Street 56, City 31', 2906.00, 2),
(486, 'FirstName_486', 'LastName_486', '03194701726', 'Street 206, City 70', 1121.00, 2),
(487, 'FirstName_487', 'LastName_487', '03669539365', 'Street 216, City 26', 4387.00, 2),
(488, 'FirstName_488', 'LastName_488', '03860403788', 'Street 278, City 18', 4454.00, 5),
(489, 'FirstName_489', 'LastName_489', '03204486926', 'Street 405, City 39', 4333.00, 5),
(490, 'FirstName_490', 'LastName_490', '03477322202', 'Street 363, City 24', 3085.00, 5),
(491, 'FirstName_491', 'LastName_491', '03366740284', 'Street 359, City 17', 3719.00, 5),
(492, 'FirstName_492', 'LastName_492', '03965983568', 'Street 296, City 61', 2948.00, 2),
(493, 'FirstName_493', 'LastName_493', '03924597207', 'Street 188, City 64', 469.00, 5),
(494, 'FirstName_494', 'LastName_494', '03449830113', 'Street 295, City 24', 847.00, 2),
(495, 'FirstName_495', 'LastName_495', '03705012361', 'Street 14, City 17', 4793.00, 2),
(496, 'FirstName_496', 'LastName_496', '03204200448', 'Street 165, City 27', 1573.00, 5),
(497, 'FirstName_497', 'LastName_497', '03351807581', 'Street 425, City 1', 3173.00, 2),
(498, 'FirstName_498', 'LastName_498', '03652492476', 'Street 10, City 73', 453.00, 2),
(499, 'FirstName_499', 'LastName_499', '03612943900', 'Street 174, City 81', 2883.00, 5),
(500, 'FirstName_500', 'LastName_500', '03928871809', 'Street 158, City 65', 3046.00, 5),
(501, 'FirstName_501', 'LastName_501', '03564835802', 'Street 476, City 68', 1929.00, 2),
(502, 'FirstName_502', 'LastName_502', '03627695086', 'Street 455, City 48', 2396.00, 5),
(503, 'FirstName_503', 'LastName_503', '03549718376', 'Street 306, City 27', 4741.00, 5),
(504, 'FirstName_504', 'LastName_504', '03264028532', 'Street 34, City 88', 414.00, 2),
(505, 'FirstName_505', 'LastName_505', '03566067430', 'Street 29, City 14', 4988.00, 2),
(506, 'FirstName_506', 'LastName_506', '03922537540', 'Street 327, City 34', 2081.00, 2),
(507, 'FirstName_507', 'LastName_507', '03452256388', 'Street 53, City 83', 2006.00, 5),
(508, 'FirstName_508', 'LastName_508', '03889440690', 'Street 295, City 91', 2421.00, 2),
(509, 'FirstName_509', 'LastName_509', '03175639667', 'Street 364, City 97', 2093.00, 5),
(510, 'FirstName_510', 'LastName_510', '03607398696', 'Street 418, City 97', 4465.00, 2),
(511, 'FirstName_511', 'LastName_511', '03410466473', 'Street 368, City 51', 4431.00, 5),
(512, 'FirstName_512', 'LastName_512', '03486829940', 'Street 299, City 59', 974.00, 5),
(513, 'FirstName_513', 'LastName_513', '03245878815', 'Street 259, City 38', 4066.00, 2),
(514, 'FirstName_514', 'LastName_514', '03814940857', 'Street 300, City 69', 876.00, 5),
(515, 'FirstName_515', 'LastName_515', '03787444223', 'Street 293, City 66', 1831.00, 5),
(516, 'FirstName_516', 'LastName_516', '03837480338', 'Street 148, City 66', 2241.00, 5),
(517, 'FirstName_517', 'LastName_517', '03975883350', 'Street 381, City 17', 4057.00, 2),
(518, 'FirstName_518', 'LastName_518', '03439666216', 'Street 398, City 87', 4949.00, 5),
(519, 'FirstName_519', 'LastName_519', '03428859388', 'Street 305, City 39', 3058.00, 5),
(520, 'FirstName_520', 'LastName_520', '03408129053', 'Street 412, City 82', 821.00, 5),
(521, 'FirstName_521', 'LastName_521', '03196242297', 'Street 444, City 19', 840.00, 2),
(522, 'FirstName_522', 'LastName_522', '03637667688', 'Street 173, City 32', 1249.00, 5),
(523, 'FirstName_523', 'LastName_523', '03173154702', 'Street 205, City 97', 665.00, 2),
(524, 'FirstName_524', 'LastName_524', '03439101815', 'Street 212, City 61', 3852.00, 2),
(525, 'FirstName_525', 'LastName_525', '03390284767', 'Street 461, City 93', 3892.00, 5),
(526, 'FirstName_526', 'LastName_526', '03509543489', 'Street 98, City 79', 4178.00, 2),
(527, 'FirstName_527', 'LastName_527', '03488697182', 'Street 41, City 5', 1290.00, 5),
(528, 'FirstName_528', 'LastName_528', '03183784298', 'Street 467, City 2', 1783.00, 2),
(529, 'FirstName_529', 'LastName_529', '03946770536', 'Street 294, City 63', 2523.00, 2),
(530, 'FirstName_530', 'LastName_530', '03191523200', 'Street 309, City 89', 4199.00, 5),
(531, 'FirstName_531', 'LastName_531', '03725370414', 'Street 288, City 49', 2843.00, 5),
(532, 'FirstName_532', 'LastName_532', '03391824375', 'Street 194, City 65', 3626.00, 5),
(533, 'FirstName_533', 'LastName_533', '03273474260', 'Street 62, City 21', 1077.00, 2),
(534, 'FirstName_534', 'LastName_534', '03456551765', 'Street 116, City 40', 4906.00, 2),
(535, 'FirstName_535', 'LastName_535', '03217445121', 'Street 295, City 12', 4054.00, 2),
(536, 'FirstName_536', 'LastName_536', '03385280368', 'Street 12, City 95', 3739.00, 2),
(537, 'FirstName_537', 'LastName_537', '03593029447', 'Street 340, City 19', 637.00, 2),
(538, 'FirstName_538', 'LastName_538', '03380414084', 'Street 53, City 98', 1661.00, 2),
(539, 'FirstName_539', 'LastName_539', '03161076414', 'Street 253, City 4', 794.00, 5),
(540, 'FirstName_540', 'LastName_540', '03232121141', 'Street 325, City 99', 1490.00, 2),
(541, 'FirstName_541', 'LastName_541', '03518503395', 'Street 183, City 47', 4524.00, 5),
(542, 'FirstName_542', 'LastName_542', '03994566302', 'Street 343, City 18', 430.00, 5),
(543, 'FirstName_543', 'LastName_543', '03705065820', 'Street 143, City 58', 4152.00, 5),
(544, 'FirstName_544', 'LastName_544', '03517660548', 'Street 295, City 87', 4915.00, 2),
(545, 'FirstName_545', 'LastName_545', '03605520821', 'Street 25, City 40', 3896.00, 2),
(546, 'FirstName_546', 'LastName_546', '03914258298', 'Street 106, City 84', 2831.00, 2),
(547, 'FirstName_547', 'LastName_547', '03614855748', 'Street 343, City 10', 2865.00, 5),
(548, 'FirstName_548', 'LastName_548', '03852984172', 'Street 1, City 13', 2498.00, 2),
(549, 'FirstName_549', 'LastName_549', '03700694713', 'Street 486, City 28', 362.00, 5),
(550, 'FirstName_550', 'LastName_550', '03843027608', 'Street 303, City 53', 1977.00, 2),
(551, 'FirstName_551', 'LastName_551', '03622665061', 'Street 488, City 79', 1821.00, 5),
(552, 'FirstName_552', 'LastName_552', '03886362843', 'Street 392, City 63', 1514.00, 5),
(553, 'FirstName_553', 'LastName_553', '03988487448', 'Street 289, City 41', 3407.00, 2),
(554, 'FirstName_554', 'LastName_554', '03368706220', 'Street 66, City 5', 2159.00, 2),
(555, 'FirstName_555', 'LastName_555', '03133733329', 'Street 351, City 21', 4469.00, 2),
(556, 'FirstName_556', 'LastName_556', '03263742019', 'Street 343, City 29', 742.00, 5),
(557, 'FirstName_557', 'LastName_557', '03859719103', 'Street 476, City 50', 3200.00, 2),
(558, 'FirstName_558', 'LastName_558', '03545964638', 'Street 168, City 21', 3533.00, 5),
(559, 'FirstName_559', 'LastName_559', '03719946558', 'Street 400, City 81', 1542.00, 2),
(560, 'FirstName_560', 'LastName_560', '03171664506', 'Street 144, City 83', 4586.00, 5),
(561, 'FirstName_561', 'LastName_561', '03545129317', 'Street 29, City 19', 3666.00, 5),
(562, 'FirstName_562', 'LastName_562', '03579032323', 'Street 374, City 57', 1140.00, 2),
(563, 'FirstName_563', 'LastName_563', '03437805944', 'Street 156, City 27', 3284.00, 5),
(564, 'FirstName_564', 'LastName_564', '03453445716', 'Street 331, City 73', 882.00, 5),
(565, 'FirstName_565', 'LastName_565', '03634284370', 'Street 473, City 39', 4345.00, 2),
(566, 'FirstName_566', 'LastName_566', '03311453562', 'Street 169, City 94', 1414.00, 2),
(567, 'FirstName_567', 'LastName_567', '03771352902', 'Street 333, City 72', 108.00, 2),
(568, 'FirstName_568', 'LastName_568', '03455891847', 'Street 39, City 40', 4563.00, 2),
(569, 'FirstName_569', 'LastName_569', '03207021927', 'Street 49, City 60', 4296.00, 2),
(570, 'FirstName_570', 'LastName_570', '03422795473', 'Street 343, City 81', 3874.00, 5),
(571, 'FirstName_571', 'LastName_571', '03506624729', 'Street 487, City 91', 3251.00, 5),
(572, 'FirstName_572', 'LastName_572', '03848644185', 'Street 28, City 9', 1786.00, 5),
(573, 'FirstName_573', 'LastName_573', '03419117630', 'Street 271, City 32', 4498.00, 2);
INSERT INTO `customer` (`CusId`, `Fname`, `Lname`, `Phone`, `Address`, `Dept`, `ECode`) VALUES
(574, 'FirstName_574', 'LastName_574', '03383887204', 'Street 484, City 82', 3494.00, 5),
(575, 'FirstName_575', 'LastName_575', '03814244391', 'Street 287, City 30', 4162.00, 5),
(576, 'FirstName_576', 'LastName_576', '03772758870', 'Street 182, City 46', 4099.00, 2),
(577, 'FirstName_577', 'LastName_577', '03165943188', 'Street 325, City 33', 659.00, 5),
(578, 'FirstName_578', 'LastName_578', '03669066530', 'Street 424, City 74', 3727.00, 5),
(579, 'FirstName_579', 'LastName_579', '03751612716', 'Street 455, City 88', 3316.00, 2),
(580, 'FirstName_580', 'LastName_580', '03240952770', 'Street 227, City 70', 557.00, 2),
(581, 'FirstName_581', 'LastName_581', '03657052642', 'Street 366, City 43', 2111.00, 2),
(582, 'FirstName_582', 'LastName_582', '03287349156', 'Street 128, City 17', 4141.00, 5),
(583, 'FirstName_583', 'LastName_583', '03101032537', 'Street 191, City 98', 71.00, 5),
(584, 'FirstName_584', 'LastName_584', '03634526529', 'Street 55, City 94', 1704.00, 5),
(585, 'FirstName_585', 'LastName_585', '03815459024', 'Street 319, City 90', 684.00, 2),
(586, 'FirstName_586', 'LastName_586', '03831004990', 'Street 24, City 27', 3037.00, 5),
(587, 'FirstName_587', 'LastName_587', '03184234732', 'Street 284, City 57', 1967.00, 5),
(588, 'FirstName_588', 'LastName_588', '03478241141', 'Street 223, City 77', 3522.00, 2),
(589, 'FirstName_589', 'LastName_589', '03894691238', 'Street 94, City 48', 4279.00, 5),
(590, 'FirstName_590', 'LastName_590', '03340346616', 'Street 416, City 30', 3926.00, 5),
(591, 'FirstName_591', 'LastName_591', '03566425213', 'Street 135, City 32', 3333.00, 5),
(592, 'FirstName_592', 'LastName_592', '03145705389', 'Street 292, City 53', 4319.00, 5),
(593, 'FirstName_593', 'LastName_593', '03803827536', 'Street 448, City 70', 3190.00, 5),
(594, 'FirstName_594', 'LastName_594', '03870340806', 'Street 389, City 62', 211.00, 5),
(595, 'FirstName_595', 'LastName_595', '03818739295', 'Street 6, City 22', 1120.00, 5),
(596, 'FirstName_596', 'LastName_596', '03284317482', 'Street 455, City 73', 3446.00, 2),
(597, 'FirstName_597', 'LastName_597', '03768085495', 'Street 326, City 75', 1481.00, 5),
(598, 'FirstName_598', 'LastName_598', '03445385861', 'Street 435, City 28', 389.00, 5),
(599, 'FirstName_599', 'LastName_599', '03216836655', 'Street 15, City 50', 1833.00, 5),
(600, 'FirstName_600', 'LastName_600', '03617459215', 'Street 27, City 61', 1742.00, 2),
(601, 'FirstName_601', 'LastName_601', '03300019559', 'Street 136, City 85', 1819.00, 2),
(602, 'FirstName_602', 'LastName_602', '03521742996', 'Street 235, City 83', 4440.00, 2),
(603, 'FirstName_603', 'LastName_603', '03321721194', 'Street 319, City 66', 2745.00, 5),
(604, 'FirstName_604', 'LastName_604', '03240909820', 'Street 190, City 10', 3325.00, 5),
(605, 'FirstName_605', 'LastName_605', '03384520496', 'Street 369, City 45', 1508.00, 2),
(606, 'FirstName_606', 'LastName_606', '03214985211', 'Street 78, City 20', 4900.00, 2),
(607, 'FirstName_607', 'LastName_607', '03972614647', 'Street 316, City 73', 3592.00, 5),
(608, 'FirstName_608', 'LastName_608', '03742084640', 'Street 196, City 10', 1413.00, 2),
(609, 'FirstName_609', 'LastName_609', '03787963700', 'Street 8, City 98', 3029.00, 2),
(610, 'FirstName_610', 'LastName_610', '03533982667', 'Street 489, City 61', 4039.00, 5),
(611, 'FirstName_611', 'LastName_611', '03779659844', 'Street 250, City 87', 4603.00, 5),
(612, 'FirstName_612', 'LastName_612', '03438974482', 'Street 337, City 7', 4751.00, 2),
(613, 'FirstName_613', 'LastName_613', '03688945719', 'Street 307, City 72', 4881.00, 5),
(614, 'FirstName_614', 'LastName_614', '03645192535', 'Street 472, City 84', 570.00, 5),
(615, 'FirstName_615', 'LastName_615', '03912414993', 'Street 283, City 77', 4695.00, 2),
(616, 'FirstName_616', 'LastName_616', '03964280454', 'Street 229, City 35', 772.00, 5),
(617, 'FirstName_617', 'LastName_617', '03600846842', 'Street 79, City 89', 3452.00, 5),
(618, 'FirstName_618', 'LastName_618', '03759042622', 'Street 220, City 57', 136.00, 5),
(619, 'FirstName_619', 'LastName_619', '03200307185', 'Street 475, City 51', 1931.00, 2),
(620, 'FirstName_620', 'LastName_620', '03800350320', 'Street 118, City 89', 3936.00, 2),
(621, 'FirstName_621', 'LastName_621', '03446679014', 'Street 404, City 66', 4920.00, 2),
(622, 'FirstName_622', 'LastName_622', '03816942162', 'Street 127, City 3', 2941.00, 2),
(623, 'FirstName_623', 'LastName_623', '03466042399', 'Street 27, City 54', 1605.00, 2),
(624, 'FirstName_624', 'LastName_624', '03535896982', 'Street 151, City 4', 4021.00, 5),
(625, 'FirstName_625', 'LastName_625', '03344507322', 'Street 41, City 39', 4497.00, 5),
(626, 'FirstName_626', 'LastName_626', '03533736050', 'Street 117, City 12', 2549.00, 2),
(627, 'FirstName_627', 'LastName_627', '03780225801', 'Street 125, City 13', 3911.00, 5),
(628, 'FirstName_628', 'LastName_628', '03306770145', 'Street 283, City 78', 462.00, 2),
(629, 'FirstName_629', 'LastName_629', '03644953097', 'Street 366, City 10', 324.00, 5),
(630, 'FirstName_630', 'LastName_630', '03656487166', 'Street 90, City 60', 4902.00, 5),
(631, 'FirstName_631', 'LastName_631', '03888057996', 'Street 235, City 60', 3773.00, 2),
(632, 'FirstName_632', 'LastName_632', '03567606360', 'Street 455, City 77', 4677.00, 2),
(633, 'FirstName_633', 'LastName_633', '03628718420', 'Street 452, City 1', 4423.00, 5),
(634, 'FirstName_634', 'LastName_634', '03700821944', 'Street 476, City 15', 1546.00, 2),
(635, 'FirstName_635', 'LastName_635', '03681210771', 'Street 159, City 76', 4721.00, 2),
(636, 'FirstName_636', 'LastName_636', '03395309258', 'Street 444, City 10', 3260.00, 5),
(637, 'FirstName_637', 'LastName_637', '03118212928', 'Street 391, City 55', 3684.00, 5),
(638, 'FirstName_638', 'LastName_638', '03943749931', 'Street 107, City 89', 3669.00, 5),
(639, 'FirstName_639', 'LastName_639', '03959749143', 'Street 498, City 23', 1761.00, 5),
(640, 'FirstName_640', 'LastName_640', '03621171110', 'Street 277, City 88', 4511.00, 5),
(641, 'FirstName_641', 'LastName_641', '03580550271', 'Street 323, City 39', 2792.00, 2),
(642, 'FirstName_642', 'LastName_642', '03963670240', 'Street 482, City 91', 766.00, 5),
(643, 'FirstName_643', 'LastName_643', '03424232233', 'Street 318, City 11', 2204.00, 2),
(644, 'FirstName_644', 'LastName_644', '03464097124', 'Street 148, City 30', 2749.00, 5),
(645, 'FirstName_645', 'LastName_645', '03650949651', 'Street 174, City 39', 4789.00, 2),
(646, 'FirstName_646', 'LastName_646', '03706264461', 'Street 237, City 47', 546.00, 5),
(647, 'FirstName_647', 'LastName_647', '03874652746', 'Street 167, City 71', 3583.00, 2),
(648, 'FirstName_648', 'LastName_648', '03960138301', 'Street 160, City 63', 2510.00, 2),
(649, 'FirstName_649', 'LastName_649', '03294978478', 'Street 498, City 47', 4960.00, 5),
(650, 'FirstName_650', 'LastName_650', '03610400364', 'Street 237, City 88', 3695.00, 5),
(651, 'FirstName_651', 'LastName_651', '03223032196', 'Street 33, City 14', 3906.00, 2),
(652, 'FirstName_652', 'LastName_652', '03602110558', 'Street 22, City 100', 586.00, 2),
(653, 'FirstName_653', 'LastName_653', '03530985000', 'Street 407, City 81', 2716.00, 2),
(654, 'FirstName_654', 'LastName_654', '03266101749', 'Street 37, City 91', 3226.00, 5),
(655, 'FirstName_655', 'LastName_655', '03994946040', 'Street 267, City 41', 1516.00, 2),
(656, 'FirstName_656', 'LastName_656', '03650495436', 'Street 438, City 56', 2271.00, 5),
(657, 'FirstName_657', 'LastName_657', '03445787334', 'Street 49, City 58', 3069.00, 5),
(658, 'FirstName_658', 'LastName_658', '03846463585', 'Street 185, City 36', 4452.00, 2),
(659, 'FirstName_659', 'LastName_659', '03559964035', 'Street 88, City 44', 3.00, 2),
(660, 'FirstName_660', 'LastName_660', '03958463181', 'Street 451, City 88', 3499.00, 5),
(661, 'FirstName_661', 'LastName_661', '03624099660', 'Street 485, City 62', 4615.00, 2),
(662, 'FirstName_662', 'LastName_662', '03728056773', 'Street 180, City 14', 1509.00, 5),
(663, 'FirstName_663', 'LastName_663', '03200601023', 'Street 150, City 97', 844.00, 5),
(664, 'FirstName_664', 'LastName_664', '03769917657', 'Street 418, City 59', 4702.00, 2),
(665, 'FirstName_665', 'LastName_665', '03972879895', 'Street 466, City 79', 979.00, 2),
(666, 'FirstName_666', 'LastName_666', '03823158246', 'Street 11, City 67', 4950.00, 5),
(667, 'FirstName_667', 'LastName_667', '03243964791', 'Street 86, City 91', 952.00, 5),
(668, 'FirstName_668', 'LastName_668', '03316621520', 'Street 246, City 31', 2130.00, 5),
(669, 'FirstName_669', 'LastName_669', '03837110315', 'Street 456, City 31', 510.00, 5),
(670, 'FirstName_670', 'LastName_670', '03621505876', 'Street 104, City 16', 4215.00, 5),
(671, 'FirstName_671', 'LastName_671', '03102879067', 'Street 321, City 27', 4823.00, 2),
(672, 'FirstName_672', 'LastName_672', '03868959538', 'Street 46, City 23', 199.00, 2),
(673, 'FirstName_673', 'LastName_673', '03945616053', 'Street 367, City 60', 1498.00, 5),
(674, 'FirstName_674', 'LastName_674', '03333677841', 'Street 265, City 5', 2773.00, 5),
(675, 'FirstName_675', 'LastName_675', '03185850827', 'Street 192, City 83', 4726.00, 2),
(676, 'FirstName_676', 'LastName_676', '03320419705', 'Street 62, City 55', 621.00, 2),
(677, 'FirstName_677', 'LastName_677', '03192441994', 'Street 144, City 81', 4423.00, 5),
(678, 'FirstName_678', 'LastName_678', '03101800556', 'Street 215, City 97', 3556.00, 2),
(679, 'FirstName_679', 'LastName_679', '03481979735', 'Street 425, City 78', 4598.00, 5),
(680, 'FirstName_680', 'LastName_680', '03273556571', 'Street 205, City 19', 894.00, 5),
(681, 'FirstName_681', 'LastName_681', '03483430549', 'Street 319, City 26', 1618.00, 2),
(682, 'FirstName_682', 'LastName_682', '03617420565', 'Street 317, City 32', 1978.00, 2),
(683, 'FirstName_683', 'LastName_683', '03355156100', 'Street 255, City 80', 1075.00, 5),
(684, 'FirstName_684', 'LastName_684', '03816967350', 'Street 438, City 52', 1348.00, 5),
(685, 'FirstName_685', 'LastName_685', '03997923549', 'Street 361, City 33', 3687.00, 2),
(686, 'FirstName_686', 'LastName_686', '03344439007', 'Street 422, City 52', 1856.00, 5),
(687, 'FirstName_687', 'LastName_687', '03473199022', 'Street 496, City 89', 63.00, 5),
(688, 'FirstName_688', 'LastName_688', '03674125731', 'Street 87, City 74', 2333.00, 5),
(689, 'FirstName_689', 'LastName_689', '03398765978', 'Street 396, City 38', 4766.00, 5),
(690, 'FirstName_690', 'LastName_690', '03105406126', 'Street 114, City 22', 4152.00, 2),
(691, 'FirstName_691', 'LastName_691', '03498553123', 'Street 263, City 20', 62.00, 5),
(692, 'FirstName_692', 'LastName_692', '03597602187', 'Street 181, City 66', 1397.00, 2),
(693, 'FirstName_693', 'LastName_693', '03950200191', 'Street 135, City 80', 4549.00, 2),
(694, 'FirstName_694', 'LastName_694', '03697184897', 'Street 104, City 48', 2737.00, 5),
(695, 'FirstName_695', 'LastName_695', '03408219653', 'Street 402, City 3', 4143.00, 2),
(696, 'FirstName_696', 'LastName_696', '03399558663', 'Street 41, City 24', 1927.00, 5),
(697, 'FirstName_697', 'LastName_697', '03631481492', 'Street 94, City 97', 1065.00, 5),
(698, 'FirstName_698', 'LastName_698', '03689025097', 'Street 453, City 44', 173.00, 2),
(699, 'FirstName_699', 'LastName_699', '03272366352', 'Street 334, City 75', 1193.00, 2),
(700, 'FirstName_700', 'LastName_700', '03610446965', 'Street 155, City 84', 701.00, 2),
(701, 'FirstName_701', 'LastName_701', '03944159756', 'Street 30, City 85', 2560.00, 5),
(702, 'FirstName_702', 'LastName_702', '03280863030', 'Street 204, City 95', 766.00, 2),
(703, 'FirstName_703', 'LastName_703', '03337569364', 'Street 377, City 80', 3406.00, 2),
(704, 'FirstName_704', 'LastName_704', '03635012133', 'Street 335, City 96', 2953.00, 5),
(705, 'FirstName_705', 'LastName_705', '03914289640', 'Street 31, City 60', 1218.00, 2),
(706, 'FirstName_706', 'LastName_706', '03136779858', 'Street 213, City 38', 884.00, 2),
(707, 'FirstName_707', 'LastName_707', '03352090665', 'Street 285, City 61', 2253.00, 2),
(708, 'FirstName_708', 'LastName_708', '03834971049', 'Street 405, City 88', 4837.00, 2),
(709, 'FirstName_709', 'LastName_709', '03894875128', 'Street 455, City 57', 1444.00, 2),
(710, 'FirstName_710', 'LastName_710', '03939590251', 'Street 266, City 38', 489.00, 2),
(711, 'FirstName_711', 'LastName_711', '03759985582', 'Street 464, City 26', 211.00, 2),
(712, 'FirstName_712', 'LastName_712', '03743379124', 'Street 120, City 2', 1117.00, 5),
(713, 'FirstName_713', 'LastName_713', '03887628545', 'Street 320, City 5', 406.00, 5),
(714, 'FirstName_714', 'LastName_714', '03191008921', 'Street 340, City 73', 2478.00, 2),
(715, 'FirstName_715', 'LastName_715', '03530639737', 'Street 15, City 92', 2835.00, 2),
(716, 'FirstName_716', 'LastName_716', '03164948197', 'Street 459, City 25', 4545.00, 5),
(717, 'FirstName_717', 'LastName_717', '03250052934', 'Street 66, City 3', 3022.00, 2),
(718, 'FirstName_718', 'LastName_718', '03136103377', 'Street 179, City 8', 2319.00, 5),
(719, 'FirstName_719', 'LastName_719', '03643243761', 'Street 240, City 57', 2692.00, 2),
(720, 'FirstName_720', 'LastName_720', '03333257879', 'Street 354, City 80', 3088.00, 5),
(721, 'FirstName_721', 'LastName_721', '03595402674', 'Street 102, City 82', 2804.00, 2),
(722, 'FirstName_722', 'LastName_722', '03264104472', 'Street 286, City 2', 363.00, 2),
(723, 'FirstName_723', 'LastName_723', '03926266517', 'Street 487, City 88', 1393.00, 5),
(724, 'FirstName_724', 'LastName_724', '03718481907', 'Street 491, City 40', 4217.00, 2),
(725, 'FirstName_725', 'LastName_725', '03762925239', 'Street 6, City 71', 1758.00, 5),
(726, 'FirstName_726', 'LastName_726', '03328914562', 'Street 457, City 7', 3591.00, 2),
(727, 'FirstName_727', 'LastName_727', '03604835340', 'Street 142, City 16', 73.00, 2),
(728, 'FirstName_728', 'LastName_728', '03846756984', 'Street 419, City 13', 3950.00, 2),
(729, 'FirstName_729', 'LastName_729', '03148919327', 'Street 241, City 52', 4219.00, 2),
(730, 'FirstName_730', 'LastName_730', '03159665744', 'Street 78, City 25', 1405.00, 2),
(731, 'FirstName_731', 'LastName_731', '03959196453', 'Street 489, City 66', 3768.00, 2),
(732, 'FirstName_732', 'LastName_732', '03961284125', 'Street 183, City 36', 106.00, 5),
(733, 'FirstName_733', 'LastName_733', '03741863016', 'Street 240, City 73', 1970.00, 5),
(734, 'FirstName_734', 'LastName_734', '03843398346', 'Street 149, City 78', 2378.00, 2),
(735, 'FirstName_735', 'LastName_735', '03512541393', 'Street 435, City 51', 2663.00, 5),
(736, 'FirstName_736', 'LastName_736', '03343963120', 'Street 263, City 40', 3385.00, 5),
(737, 'FirstName_737', 'LastName_737', '03497482322', 'Street 87, City 31', 3077.00, 2),
(738, 'FirstName_738', 'LastName_738', '03317164493', 'Street 355, City 50', 3292.00, 2),
(739, 'FirstName_739', 'LastName_739', '03571305070', 'Street 84, City 11', 3333.00, 5),
(740, 'FirstName_740', 'LastName_740', '03812875759', 'Street 177, City 47', 2005.00, 2),
(741, 'FirstName_741', 'LastName_741', '03212419964', 'Street 2, City 21', 734.00, 2),
(742, 'FirstName_742', 'LastName_742', '03811598909', 'Street 311, City 78', 717.00, 5),
(743, 'FirstName_743', 'LastName_743', '03733012503', 'Street 28, City 33', 4767.00, 2),
(744, 'FirstName_744', 'LastName_744', '03743829388', 'Street 154, City 81', 3301.00, 2),
(745, 'FirstName_745', 'LastName_745', '03734078215', 'Street 57, City 96', 1128.00, 5),
(746, 'FirstName_746', 'LastName_746', '03220567734', 'Street 326, City 61', 786.00, 2),
(747, 'FirstName_747', 'LastName_747', '03472880438', 'Street 27, City 95', 2225.00, 2),
(748, 'FirstName_748', 'LastName_748', '03646217679', 'Street 96, City 50', 2643.00, 5),
(749, 'FirstName_749', 'LastName_749', '03484488927', 'Street 15, City 84', 477.00, 5),
(750, 'FirstName_750', 'LastName_750', '03668852396', 'Street 207, City 5', 3163.00, 5),
(751, 'FirstName_751', 'LastName_751', '03149531667', 'Street 241, City 28', 2900.00, 2),
(752, 'FirstName_752', 'LastName_752', '03164294909', 'Street 151, City 66', 154.00, 2),
(753, 'FirstName_753', 'LastName_753', '03542272128', 'Street 254, City 17', 3393.00, 2),
(754, 'FirstName_754', 'LastName_754', '03347584398', 'Street 416, City 47', 1652.00, 2),
(755, 'FirstName_755', 'LastName_755', '03723313291', 'Street 22, City 51', 307.00, 2),
(756, 'FirstName_756', 'LastName_756', '03588083272', 'Street 259, City 2', 2496.00, 5),
(757, 'FirstName_757', 'LastName_757', '03348030666', 'Street 364, City 94', 4040.00, 5),
(758, 'FirstName_758', 'LastName_758', '03491440442', 'Street 424, City 88', 4507.00, 2),
(759, 'FirstName_759', 'LastName_759', '03164275572', 'Street 451, City 15', 4618.00, 2),
(760, 'FirstName_760', 'LastName_760', '03427365604', 'Street 223, City 38', 4790.00, 2),
(761, 'FirstName_761', 'LastName_761', '03727140851', 'Street 184, City 35', 3711.00, 5),
(762, 'FirstName_762', 'LastName_762', '03719138749', 'Street 174, City 21', 4889.00, 5),
(763, 'FirstName_763', 'LastName_763', '03764139291', 'Street 336, City 54', 2894.00, 5),
(764, 'FirstName_764', 'LastName_764', '03734489573', 'Street 291, City 46', 2340.00, 2),
(765, 'FirstName_765', 'LastName_765', '03154565162', 'Street 299, City 2', 3918.00, 2),
(766, 'FirstName_766', 'LastName_766', '03909312636', 'Street 135, City 89', 2644.00, 5),
(767, 'FirstName_767', 'LastName_767', '03375790460', 'Street 471, City 36', 1661.00, 5),
(768, 'FirstName_768', 'LastName_768', '03317839113', 'Street 95, City 98', 2502.00, 2),
(769, 'FirstName_769', 'LastName_769', '03706749396', 'Street 434, City 48', 803.00, 5),
(770, 'FirstName_770', 'LastName_770', '03932895862', 'Street 38, City 22', 415.00, 2),
(771, 'FirstName_771', 'LastName_771', '03929597295', 'Street 57, City 66', 4416.00, 5),
(772, 'FirstName_772', 'LastName_772', '03963559536', 'Street 361, City 19', 600.00, 2),
(773, 'FirstName_773', 'LastName_773', '03939782901', 'Street 74, City 30', 2486.00, 2),
(774, 'FirstName_774', 'LastName_774', '03224322990', 'Street 154, City 21', 4301.00, 2),
(775, 'FirstName_775', 'LastName_775', '03949858997', 'Street 142, City 90', 3742.00, 2),
(776, 'FirstName_776', 'LastName_776', '03767193150', 'Street 229, City 23', 1969.00, 5),
(777, 'FirstName_777', 'LastName_777', '03449602374', 'Street 443, City 63', 2066.00, 2),
(778, 'FirstName_778', 'LastName_778', '03942197384', 'Street 402, City 81', 4553.00, 5),
(779, 'FirstName_779', 'LastName_779', '03118295351', 'Street 362, City 95', 1975.00, 2),
(780, 'FirstName_780', 'LastName_780', '03259870274', 'Street 192, City 21', 3628.00, 5),
(781, 'FirstName_781', 'LastName_781', '03325835874', 'Street 260, City 64', 278.00, 2),
(782, 'FirstName_782', 'LastName_782', '03703471110', 'Street 462, City 82', 3720.00, 5),
(783, 'FirstName_783', 'LastName_783', '03771050134', 'Street 185, City 39', 3499.00, 2),
(784, 'FirstName_784', 'LastName_784', '03483609975', 'Street 371, City 11', 3040.00, 5),
(785, 'FirstName_785', 'LastName_785', '03913203710', 'Street 279, City 6', 3416.00, 5),
(786, 'FirstName_786', 'LastName_786', '03612086695', 'Street 169, City 67', 4820.00, 2),
(787, 'FirstName_787', 'LastName_787', '03405572640', 'Street 401, City 14', 4737.00, 5),
(788, 'FirstName_788', 'LastName_788', '03547989845', 'Street 132, City 76', 1628.00, 5),
(789, 'FirstName_789', 'LastName_789', '03994202605', 'Street 263, City 41', 2593.00, 2),
(790, 'FirstName_790', 'LastName_790', '03653603235', 'Street 469, City 83', 3.00, 2),
(791, 'FirstName_791', 'LastName_791', '03908394887', 'Street 37, City 32', 739.00, 5),
(792, 'FirstName_792', 'LastName_792', '03251947131', 'Street 168, City 100', 3496.00, 2),
(793, 'FirstName_793', 'LastName_793', '03593851286', 'Street 235, City 69', 2791.00, 5),
(794, 'FirstName_794', 'LastName_794', '03621694386', 'Street 63, City 44', 2092.00, 2),
(795, 'FirstName_795', 'LastName_795', '03397760752', 'Street 50, City 64', 2564.00, 5),
(796, 'FirstName_796', 'LastName_796', '03366762831', 'Street 15, City 95', 208.00, 2),
(797, 'FirstName_797', 'LastName_797', '03687317189', 'Street 460, City 7', 4497.00, 5),
(798, 'FirstName_798', 'LastName_798', '03762239711', 'Street 393, City 5', 4264.00, 5),
(799, 'FirstName_799', 'LastName_799', '03752155677', 'Street 235, City 55', 2538.00, 5),
(800, 'FirstName_800', 'LastName_800', '03834624173', 'Street 6, City 50', 969.00, 5),
(801, 'FirstName_801', 'LastName_801', '03714149273', 'Street 368, City 23', 4629.00, 5),
(802, 'FirstName_802', 'LastName_802', '03959222052', 'Street 25, City 7', 697.00, 5),
(803, 'FirstName_803', 'LastName_803', '03122140331', 'Street 327, City 30', 3505.00, 5),
(804, 'FirstName_804', 'LastName_804', '03971942519', 'Street 50, City 17', 2490.00, 2),
(805, 'FirstName_805', 'LastName_805', '03264851463', 'Street 12, City 97', 2996.00, 5),
(806, 'FirstName_806', 'LastName_806', '03633762519', 'Street 30, City 3', 4389.00, 5),
(807, 'FirstName_807', 'LastName_807', '03254132910', 'Street 18, City 8', 2275.00, 5),
(808, 'FirstName_808', 'LastName_808', '03974049821', 'Street 35, City 67', 28.00, 5),
(809, 'FirstName_809', 'LastName_809', '03460861791', 'Street 195, City 75', 689.00, 5),
(810, 'FirstName_810', 'LastName_810', '03145628929', 'Street 46, City 53', 3093.00, 5),
(811, 'FirstName_811', 'LastName_811', '03808954132', 'Street 347, City 58', 3876.00, 2),
(812, 'FirstName_812', 'LastName_812', '03978053567', 'Street 322, City 86', 2068.00, 2),
(813, 'FirstName_813', 'LastName_813', '03275672068', 'Street 202, City 64', 2820.00, 2),
(814, 'FirstName_814', 'LastName_814', '03626574755', 'Street 251, City 12', 154.00, 5),
(815, 'FirstName_815', 'LastName_815', '03492188772', 'Street 218, City 13', 3074.00, 5),
(816, 'FirstName_816', 'LastName_816', '03241308120', 'Street 425, City 58', 4148.00, 5),
(817, 'FirstName_817', 'LastName_817', '03345273631', 'Street 388, City 57', 1652.00, 2),
(818, 'FirstName_818', 'LastName_818', '03947225341', 'Street 305, City 9', 2243.00, 2),
(819, 'FirstName_819', 'LastName_819', '03410678512', 'Street 207, City 36', 4511.00, 5),
(820, 'FirstName_820', 'LastName_820', '03207977748', 'Street 368, City 79', 2345.00, 2),
(821, 'FirstName_821', 'LastName_821', '03610209545', 'Street 129, City 83', 423.00, 5),
(822, 'FirstName_822', 'LastName_822', '03341764917', 'Street 273, City 50', 4186.00, 5),
(823, 'FirstName_823', 'LastName_823', '03270513104', 'Street 232, City 34', 676.00, 5),
(824, 'FirstName_824', 'LastName_824', '03272103875', 'Street 183, City 25', 4991.00, 2),
(825, 'FirstName_825', 'LastName_825', '03900739673', 'Street 218, City 34', 1707.00, 5),
(826, 'FirstName_826', 'LastName_826', '03697067382', 'Street 489, City 72', 343.00, 2),
(827, 'FirstName_827', 'LastName_827', '03297759883', 'Street 376, City 24', 2152.00, 2),
(828, 'FirstName_828', 'LastName_828', '03531857833', 'Street 275, City 65', 2635.00, 5),
(829, 'FirstName_829', 'LastName_829', '03742916905', 'Street 233, City 86', 4150.00, 5),
(830, 'FirstName_830', 'LastName_830', '03129280672', 'Street 403, City 97', 3594.00, 2),
(831, 'FirstName_831', 'LastName_831', '03647680603', 'Street 471, City 76', 2166.00, 5),
(832, 'FirstName_832', 'LastName_832', '03956127324', 'Street 486, City 70', 1308.00, 5),
(833, 'FirstName_833', 'LastName_833', '03122163543', 'Street 312, City 32', 2166.00, 2),
(834, 'FirstName_834', 'LastName_834', '03282585195', 'Street 412, City 62', 1747.00, 2),
(835, 'FirstName_835', 'LastName_835', '03135841370', 'Street 343, City 9', 379.00, 2),
(836, 'FirstName_836', 'LastName_836', '03605893794', 'Street 220, City 32', 3640.00, 2),
(837, 'FirstName_837', 'LastName_837', '03933216662', 'Street 443, City 21', 3554.00, 2),
(838, 'FirstName_838', 'LastName_838', '03493755940', 'Street 10, City 91', 3494.00, 5),
(839, 'FirstName_839', 'LastName_839', '03516626943', 'Street 136, City 27', 4733.00, 5),
(840, 'FirstName_840', 'LastName_840', '03726686299', 'Street 47, City 58', 1459.00, 5),
(841, 'FirstName_841', 'LastName_841', '03935194585', 'Street 91, City 70', 4121.00, 2),
(842, 'FirstName_842', 'LastName_842', '03708368330', 'Street 474, City 100', 3790.00, 5),
(843, 'FirstName_843', 'LastName_843', '03312230018', 'Street 321, City 58', 9.00, 2),
(844, 'FirstName_844', 'LastName_844', '03623171629', 'Street 489, City 66', 2463.00, 5),
(845, 'FirstName_845', 'LastName_845', '03328772702', 'Street 418, City 44', 1354.00, 5),
(846, 'FirstName_846', 'LastName_846', '03684335537', 'Street 376, City 38', 2890.00, 5),
(847, 'FirstName_847', 'LastName_847', '03405351008', 'Street 235, City 31', 982.00, 2),
(848, 'FirstName_848', 'LastName_848', '03621689348', 'Street 374, City 65', 4992.00, 5),
(849, 'FirstName_849', 'LastName_849', '03128370627', 'Street 409, City 12', 2208.00, 2),
(850, 'FirstName_850', 'LastName_850', '03131331050', 'Street 46, City 66', 4212.00, 5),
(851, 'FirstName_851', 'LastName_851', '03795893062', 'Street 231, City 4', 2797.00, 5),
(852, 'FirstName_852', 'LastName_852', '03118553199', 'Street 461, City 16', 3270.00, 2),
(853, 'FirstName_853', 'LastName_853', '03201110460', 'Street 276, City 6', 852.00, 2),
(854, 'FirstName_854', 'LastName_854', '03140197889', 'Street 173, City 16', 1669.00, 2),
(855, 'FirstName_855', 'LastName_855', '03601220564', 'Street 220, City 75', 79.00, 5),
(856, 'FirstName_856', 'LastName_856', '03675370717', 'Street 24, City 80', 1083.00, 5),
(857, 'FirstName_857', 'LastName_857', '03836196769', 'Street 86, City 37', 3422.00, 2),
(858, 'FirstName_858', 'LastName_858', '03588708497', 'Street 111, City 27', 4340.00, 5),
(859, 'FirstName_859', 'LastName_859', '03861314185', 'Street 211, City 26', 1363.00, 5),
(860, 'FirstName_860', 'LastName_860', '03888201017', 'Street 323, City 65', 1934.00, 2),
(861, 'FirstName_861', 'LastName_861', '03221335493', 'Street 449, City 49', 764.00, 5),
(862, 'FirstName_862', 'LastName_862', '03391315109', 'Street 71, City 25', 1458.00, 2),
(863, 'FirstName_863', 'LastName_863', '03688465461', 'Street 48, City 16', 4993.00, 2),
(864, 'FirstName_864', 'LastName_864', '03527817610', 'Street 34, City 74', 467.00, 2),
(865, 'FirstName_865', 'LastName_865', '03743224509', 'Street 216, City 58', 1857.00, 5),
(866, 'FirstName_866', 'LastName_866', '03156130074', 'Street 173, City 66', 1244.00, 2),
(867, 'FirstName_867', 'LastName_867', '03441858200', 'Street 284, City 28', 2026.00, 2),
(868, 'FirstName_868', 'LastName_868', '03855201475', 'Street 270, City 3', 3943.00, 2),
(869, 'FirstName_869', 'LastName_869', '03897099261', 'Street 122, City 33', 4609.00, 5),
(870, 'FirstName_870', 'LastName_870', '03761759267', 'Street 314, City 94', 1563.00, 5),
(871, 'FirstName_871', 'LastName_871', '03470206563', 'Street 207, City 17', 202.00, 5),
(872, 'FirstName_872', 'LastName_872', '03616612711', 'Street 16, City 35', 239.00, 5),
(873, 'FirstName_873', 'LastName_873', '03741057996', 'Street 132, City 29', 1721.00, 2),
(874, 'FirstName_874', 'LastName_874', '03574203731', 'Street 190, City 32', 3315.00, 5),
(875, 'FirstName_875', 'LastName_875', '03621645290', 'Street 427, City 30', 1728.00, 5),
(876, 'FirstName_876', 'LastName_876', '03196951813', 'Street 273, City 2', 1286.00, 5),
(877, 'FirstName_877', 'LastName_877', '03558815635', 'Street 197, City 82', 1855.00, 5),
(878, 'FirstName_878', 'LastName_878', '03480854414', 'Street 218, City 75', 90.00, 5),
(879, 'FirstName_879', 'LastName_879', '03484797825', 'Street 376, City 58', 4216.00, 5),
(880, 'FirstName_880', 'LastName_880', '03682588039', 'Street 249, City 89', 2470.00, 2),
(881, 'FirstName_881', 'LastName_881', '03787942382', 'Street 474, City 16', 4782.00, 2),
(882, 'FirstName_882', 'LastName_882', '03524900008', 'Street 332, City 28', 417.00, 5),
(883, 'FirstName_883', 'LastName_883', '03502548674', 'Street 157, City 33', 4917.00, 2),
(884, 'FirstName_884', 'LastName_884', '03341332376', 'Street 254, City 75', 3008.00, 5),
(885, 'FirstName_885', 'LastName_885', '03388520758', 'Street 456, City 38', 4589.00, 2),
(886, 'FirstName_886', 'LastName_886', '03718856933', 'Street 452, City 57', 150.00, 5),
(887, 'FirstName_887', 'LastName_887', '03222871681', 'Street 216, City 1', 2027.00, 2),
(888, 'FirstName_888', 'LastName_888', '03284550239', 'Street 143, City 70', 1636.00, 2),
(889, 'FirstName_889', 'LastName_889', '03164373537', 'Street 162, City 90', 1095.00, 2),
(890, 'FirstName_890', 'LastName_890', '03372498727', 'Street 132, City 62', 3692.00, 2),
(891, 'FirstName_891', 'LastName_891', '03188036799', 'Street 54, City 48', 2718.00, 2),
(892, 'FirstName_892', 'LastName_892', '03286138162', 'Street 238, City 12', 4445.00, 5),
(893, 'FirstName_893', 'LastName_893', '03193062475', 'Street 311, City 53', 921.00, 5),
(894, 'FirstName_894', 'LastName_894', '03121348202', 'Street 200, City 83', 612.00, 2),
(895, 'FirstName_895', 'LastName_895', '03153929338', 'Street 55, City 7', 2114.00, 5),
(896, 'FirstName_896', 'LastName_896', '03212899533', 'Street 442, City 80', 4701.00, 5),
(897, 'FirstName_897', 'LastName_897', '03319188806', 'Street 331, City 25', 1596.00, 5),
(898, 'FirstName_898', 'LastName_898', '03183275867', 'Street 331, City 25', 2270.00, 5),
(899, 'FirstName_899', 'LastName_899', '03285262733', 'Street 97, City 80', 1247.00, 2),
(900, 'FirstName_900', 'LastName_900', '03423192651', 'Street 138, City 29', 3493.00, 5),
(901, 'FirstName_901', 'LastName_901', '03154246370', 'Street 318, City 98', 4803.00, 2),
(902, 'FirstName_902', 'LastName_902', '03506028804', 'Street 426, City 21', 2828.00, 5),
(903, 'FirstName_903', 'LastName_903', '03352999661', 'Street 330, City 78', 395.00, 2),
(904, 'FirstName_904', 'LastName_904', '03645444941', 'Street 329, City 26', 1261.00, 2),
(905, 'FirstName_905', 'LastName_905', '03158001957', 'Street 189, City 30', 1049.00, 2),
(906, 'FirstName_906', 'LastName_906', '03677701819', 'Street 58, City 11', 4086.00, 2),
(907, 'FirstName_907', 'LastName_907', '03649283971', 'Street 279, City 29', 1497.00, 2),
(908, 'FirstName_908', 'LastName_908', '03777124908', 'Street 50, City 43', 2242.00, 5),
(909, 'FirstName_909', 'LastName_909', '03609331545', 'Street 354, City 32', 2885.00, 2),
(910, 'FirstName_910', 'LastName_910', '03835162522', 'Street 216, City 64', 4479.00, 5),
(911, 'FirstName_911', 'LastName_911', '03639219922', 'Street 455, City 21', 469.00, 5),
(912, 'FirstName_912', 'LastName_912', '03504259003', 'Street 151, City 21', 429.00, 2),
(913, 'FirstName_913', 'LastName_913', '03498689943', 'Street 292, City 27', 4696.00, 2),
(914, 'FirstName_914', 'LastName_914', '03496871019', 'Street 138, City 100', 1925.00, 2),
(915, 'FirstName_915', 'LastName_915', '03567567677', 'Street 487, City 11', 2296.00, 5),
(916, 'FirstName_916', 'LastName_916', '03109196600', 'Street 461, City 36', 282.00, 5),
(917, 'FirstName_917', 'LastName_917', '03369496532', 'Street 160, City 42', 3704.00, 5),
(918, 'FirstName_918', 'LastName_918', '03118658799', 'Street 332, City 57', 1462.00, 2),
(919, 'FirstName_919', 'LastName_919', '03916473676', 'Street 174, City 4', 395.00, 2),
(920, 'FirstName_920', 'LastName_920', '03362962146', 'Street 489, City 16', 2874.00, 2),
(921, 'FirstName_921', 'LastName_921', '03469317850', 'Street 49, City 3', 2331.00, 2),
(922, 'FirstName_922', 'LastName_922', '03258509259', 'Street 377, City 32', 423.00, 2),
(923, 'FirstName_923', 'LastName_923', '03288589123', 'Street 290, City 72', 4798.00, 5),
(924, 'FirstName_924', 'LastName_924', '03935052106', 'Street 241, City 29', 2928.00, 2),
(925, 'FirstName_925', 'LastName_925', '03778008800', 'Street 486, City 74', 2552.00, 2),
(926, 'FirstName_926', 'LastName_926', '03281537273', 'Street 306, City 25', 4090.00, 5),
(927, 'FirstName_927', 'LastName_927', '03169893261', 'Street 121, City 16', 1527.00, 5),
(928, 'FirstName_928', 'LastName_928', '03510499680', 'Street 127, City 60', 910.00, 5),
(929, 'FirstName_929', 'LastName_929', '03227367082', 'Street 225, City 3', 2406.00, 5),
(930, 'FirstName_930', 'LastName_930', '03954203506', 'Street 58, City 54', 1338.00, 2),
(931, 'FirstName_931', 'LastName_931', '03164244487', 'Street 319, City 90', 3930.00, 5),
(932, 'FirstName_932', 'LastName_932', '03136214509', 'Street 340, City 2', 825.00, 2),
(933, 'FirstName_933', 'LastName_933', '03621601326', 'Street 131, City 43', 4414.00, 2),
(934, 'FirstName_934', 'LastName_934', '03195753460', 'Street 408, City 57', 1840.00, 5),
(935, 'FirstName_935', 'LastName_935', '03891927863', 'Street 102, City 14', 1798.00, 5),
(936, 'FirstName_936', 'LastName_936', '03646566724', 'Street 309, City 54', 1222.00, 2),
(937, 'FirstName_937', 'LastName_937', '03174386351', 'Street 235, City 80', 2044.00, 5),
(938, 'FirstName_938', 'LastName_938', '03866746908', 'Street 164, City 96', 4508.00, 5),
(939, 'FirstName_939', 'LastName_939', '03274371452', 'Street 244, City 21', 406.00, 2),
(940, 'FirstName_940', 'LastName_940', '03871960300', 'Street 233, City 83', 3256.00, 2),
(941, 'FirstName_941', 'LastName_941', '03358401089', 'Street 234, City 4', 4828.00, 2),
(942, 'FirstName_942', 'LastName_942', '03440509511', 'Street 422, City 46', 855.00, 5),
(943, 'FirstName_943', 'LastName_943', '03121679243', 'Street 178, City 75', 2465.00, 2),
(944, 'FirstName_944', 'LastName_944', '03716721677', 'Street 230, City 30', 3097.00, 5),
(945, 'FirstName_945', 'LastName_945', '03515310447', 'Street 214, City 20', 4641.00, 5),
(946, 'FirstName_946', 'LastName_946', '03515888932', 'Street 340, City 79', 3392.00, 5),
(947, 'FirstName_947', 'LastName_947', '03960706311', 'Street 71, City 61', 3854.00, 5),
(948, 'FirstName_948', 'LastName_948', '03705414986', 'Street 310, City 29', 371.00, 5),
(949, 'FirstName_949', 'LastName_949', '03729185984', 'Street 30, City 45', 2596.00, 2),
(950, 'FirstName_950', 'LastName_950', '03345142492', 'Street 250, City 62', 1080.00, 5),
(951, 'FirstName_951', 'LastName_951', '03756115838', 'Street 471, City 32', 4995.00, 5),
(952, 'FirstName_952', 'LastName_952', '03932901385', 'Street 212, City 82', 2144.00, 2),
(953, 'FirstName_953', 'LastName_953', '03577348839', 'Street 498, City 3', 4323.00, 5),
(954, 'FirstName_954', 'LastName_954', '03521957271', 'Street 155, City 43', 4343.00, 2),
(955, 'FirstName_955', 'LastName_955', '03973055379', 'Street 477, City 24', 3829.00, 5),
(956, 'FirstName_956', 'LastName_956', '03686573197', 'Street 384, City 91', 4243.00, 5),
(957, 'FirstName_957', 'LastName_957', '03889810758', 'Street 45, City 84', 956.00, 5),
(958, 'FirstName_958', 'LastName_958', '03961426591', 'Street 21, City 46', 232.00, 2),
(959, 'FirstName_959', 'LastName_959', '03630896595', 'Street 268, City 83', 2416.00, 2),
(960, 'FirstName_960', 'LastName_960', '03442872596', 'Street 130, City 87', 1161.00, 5),
(961, 'FirstName_961', 'LastName_961', '03763210967', 'Street 432, City 19', 4799.00, 2),
(962, 'FirstName_962', 'LastName_962', '03173859657', 'Street 319, City 41', 4964.00, 5),
(963, 'FirstName_963', 'LastName_963', '03399859859', 'Street 442, City 46', 1836.00, 5),
(964, 'FirstName_964', 'LastName_964', '03119838570', 'Street 26, City 70', 411.00, 5),
(965, 'FirstName_965', 'LastName_965', '03650245054', 'Street 200, City 92', 3055.00, 5),
(966, 'FirstName_966', 'LastName_966', '03698593068', 'Street 41, City 57', 184.00, 5),
(967, 'FirstName_967', 'LastName_967', '03251924838', 'Street 220, City 8', 2809.00, 2),
(968, 'FirstName_968', 'LastName_968', '03580680615', 'Street 87, City 11', 1737.00, 5),
(969, 'FirstName_969', 'LastName_969', '03430447458', 'Street 201, City 43', 2577.00, 2),
(970, 'FirstName_970', 'LastName_970', '03951372325', 'Street 455, City 48', 1972.00, 5),
(971, 'FirstName_971', 'LastName_971', '03185572499', 'Street 179, City 93', 1810.00, 5),
(972, 'FirstName_972', 'LastName_972', '03781292388', 'Street 442, City 57', 4861.00, 5),
(973, 'FirstName_973', 'LastName_973', '03651560916', 'Street 222, City 55', 784.00, 5),
(974, 'FirstName_974', 'LastName_974', '03752298540', 'Street 49, City 98', 3946.00, 5),
(975, 'FirstName_975', 'LastName_975', '03341269423', 'Street 153, City 28', 1941.00, 5),
(976, 'FirstName_976', 'LastName_976', '03488274542', 'Street 107, City 53', 4896.00, 5),
(977, 'FirstName_977', 'LastName_977', '03999027013', 'Street 24, City 39', 646.00, 2),
(978, 'FirstName_978', 'LastName_978', '03945949291', 'Street 300, City 44', 4770.00, 2),
(979, 'FirstName_979', 'LastName_979', '03943341265', 'Street 250, City 98', 697.00, 5),
(980, 'FirstName_980', 'LastName_980', '03359779241', 'Street 63, City 81', 665.00, 2),
(981, 'FirstName_981', 'LastName_981', '03750091256', 'Street 49, City 97', 2884.00, 2),
(982, 'FirstName_982', 'LastName_982', '03336417835', 'Street 263, City 55', 4397.00, 5),
(983, 'FirstName_983', 'LastName_983', '03217952570', 'Street 277, City 96', 3179.00, 2),
(984, 'FirstName_984', 'LastName_984', '03767283595', 'Street 163, City 39', 1994.00, 2),
(985, 'FirstName_985', 'LastName_985', '03316324460', 'Street 397, City 63', 1324.00, 5),
(986, 'FirstName_986', 'LastName_986', '03873305895', 'Street 67, City 66', 2604.00, 5),
(987, 'FirstName_987', 'LastName_987', '03694545503', 'Street 467, City 75', 4666.00, 2),
(988, 'FirstName_988', 'LastName_988', '03124567499', 'Street 341, City 47', 4843.00, 5),
(989, 'FirstName_989', 'LastName_989', '03361495729', 'Street 486, City 85', 1921.00, 2),
(990, 'FirstName_990', 'LastName_990', '03126765902', 'Street 16, City 94', 2554.00, 2),
(991, 'FirstName_991', 'LastName_991', '03746526564', 'Street 158, City 55', 3239.00, 5),
(992, 'FirstName_992', 'LastName_992', '03382624639', 'Street 221, City 75', 3023.00, 5),
(993, 'FirstName_993', 'LastName_993', '03851899451', 'Street 454, City 9', 3867.00, 5),
(994, 'FirstName_994', 'LastName_994', '03856627169', 'Street 386, City 35', 3123.00, 2),
(995, 'FirstName_995', 'LastName_995', '03278518702', 'Street 2, City 9', 2274.00, 5),
(996, 'FirstName_996', 'LastName_996', '03842219903', 'Street 484, City 14', 1561.00, 5),
(997, 'FirstName_997', 'LastName_997', '03667288278', 'Street 174, City 14', 4978.00, 2),
(998, 'FirstName_998', 'LastName_998', '03824456409', 'Street 414, City 16', 2958.00, 5),
(999, 'FirstName_999', 'LastName_999', '03280538265', 'Street 433, City 6', 3453.00, 5),
(1000, 'FirstName_1000', 'LastName_1000', '03132496752', 'Street 353, City 75', 1636.00, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customerstatus`
--

CREATE TABLE `customerstatus` (
  `CusId` int(11) NOT NULL,
  `Alert` tinyint(1) DEFAULT NULL,
  `BadDebt` tinyint(1) DEFAULT NULL,
  `AlertStartDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `customerstatus`
--

INSERT INTO `customerstatus` (`CusId`, `Alert`, `BadDebt`, `AlertStartDate`) VALUES
(1, 0, 0, NULL),
(2, 0, 0, '2024-01-01'),
(3, 0, 0, '2024-01-01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer_partialpayments`
--

CREATE TABLE `customer_partialpayments` (
  `CusId` int(11) NOT NULL,
  `Amount` decimal(10,2) DEFAULT NULL,
  `PaymentTime` timestamp NOT NULL DEFAULT current_timestamp(),
  `OCode` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `customer_partialpayments`
--

INSERT INTO `customer_partialpayments` (`CusId`, `Amount`, `PaymentTime`, `OCode`, `id`) VALUES
(1, 50.00, '2024-03-01 05:00:00', NULL, 1),
(1, 444.00, '2024-11-21 20:56:35', NULL, 2),
(1, 1.00, '2024-11-21 21:03:34', NULL, 3),
(1, 1.00, '2024-11-21 21:04:54', NULL, 4),
(1, 1.00, '2024-11-21 21:04:58', NULL, 5),
(1, 100.00, '2024-11-22 09:29:32', 1, 6),
(1, 150.00, '2024-11-22 09:33:46', 1, 7),
(2, 100.00, '2024-03-02 06:00:00', NULL, 8),
(2, 111.00, '2024-11-22 09:31:52', 2, 9),
(3, 75.00, '2024-03-03 07:00:00', NULL, 10),
(3, 111.00, '2024-11-22 09:33:37', 3, 11),
(3, 1.00, '2024-11-22 09:34:03', 3, 12),
(3, 1.00, '2024-11-22 09:35:56', 3, 13),
(3, 1.00, '2024-11-22 09:35:56', 3, 14),
(1, 11.00, '2024-11-22 09:41:51', 8, 15),
(1, 11.00, '2024-11-22 03:42:13', NULL, 16),
(1, 41.00, '2024-11-22 03:49:57', NULL, 17),
(1, 12.00, '2024-11-22 09:56:26', 10, 18),
(1, 12.00, '2024-11-22 09:57:55', 10, 19),
(1, 12.00, '2024-11-22 09:57:58', 10, 20);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `employee`
--

CREATE TABLE `employee` (
  `ECode` int(11) NOT NULL,
  `Fname` varchar(100) DEFAULT NULL,
  `Lname` varchar(100) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL,
  `Role` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `employee`
--

INSERT INTO `employee` (`ECode`, `Fname`, `Lname`, `Gender`, `Address`, `Phone`, `Role`) VALUES
(1, 'John', 'Doe', 'Male', '123 Main St', '123456789', 'Manager'),
(2, 'Jane', 'Smith', 'Female', '456 Elm St', '987654321', 'OfficeStaff'),
(3, 'Alice', 'Brown', 'Female', '789 Oak St', '543216789', 'PartnerStaff'),
(4, 'Bob', 'Johnson', 'Male', '321 Pine Rd', '678954321', 'PartnerStaff'),
(5, 'Pam', 'Beesly', 'Female', '1830 Maple Rd', '9876543210', 'OfficeStaff'),
(6, 'Angela', 'Martin', 'Female', '789 Paws Ave', '1118882222', 'OperationalStaff'),
(7, 'Bold', 'David', 'Female', '1234 Kays St', '1236231233', 'OperationalStaff');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `OCode` int(11) NOT NULL,
  `TotalPrice` decimal(10,2) DEFAULT NULL,
  `OrderTime` timestamp NOT NULL DEFAULT current_timestamp(),
  `Status` varchar(50) DEFAULT NULL,
  `HandleTime` timestamp NULL DEFAULT NULL,
  `ECode` int(11) DEFAULT NULL,
  `CusId` int(11) DEFAULT NULL,
  `Cancellation_Reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`OCode`, `TotalPrice`, `OrderTime`, `Status`, `HandleTime`, `ECode`, `CusId`, `Cancellation_Reason`) VALUES
(1, 250.00, '2024-03-01 03:30:00', 'paid', '2024-03-01 08:00:00', 6, 1, ''),
(2, 500.00, '2024-03-02 04:00:00', 'partial_payment', '2024-11-07 09:15:07', 6, 1, NULL),
(3, 300.00, '2024-03-03 05:00:00', 'partial_payment', '2024-03-03 07:30:00', 7, 3, NULL),
(7, 54.00, '2024-11-21 20:22:00', 'partial_payment', '2024-11-04 09:15:12', 6, 1, '1'),
(8, 90.00, '2024-11-21 20:46:15', 'partial_payment', '2024-11-28 09:15:15', 6, 1, NULL),
(10, 90.00, '2024-11-22 03:47:41', 'cancelled', '2024-11-22 03:47:41', 6, 1, 'quá tệ '),
(12, 60.00, '2024-11-22 23:06:00', 'ordered', '2024-11-22 23:06:02', 6, 1, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `DetailId` int(11) NOT NULL,
  `OCode` int(11) NOT NULL,
  `BCode` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `UnitPrice` decimal(10,2) NOT NULL,
  `TotalPrice` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `order_detail`
--

INSERT INTO `order_detail` (`DetailId`, `OCode`, `BCode`, `Quantity`, `UnitPrice`, `TotalPrice`) VALUES
(4, 7, 4, 3, 18.00, 54.00),
(5, 8, 4, 5, 18.00, 90.00),
(7, 10, 4, 5, 18.00, 90.00),
(9, 12, 2, 2, 30.00, 60.00);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `supplier`
--

CREATE TABLE `supplier` (
  `SCode` int(11) NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `BankAccount` varchar(50) DEFAULT NULL,
  `TaxCode` varchar(50) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL,
  `ECode` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `supplier`
--

INSERT INTO `supplier` (`SCode`, `Name`, `Address`, `BankAccount`, `TaxCode`, `Phone`, `ECode`) VALUES
(1, 'ABC Supplies', '123 Supply Rd', '123-456-789', 'TAX001', '111222333', 3),
(2, 'XYZ Materials', '456 Warehouse Ln', '987-654-321', 'TAX002', '444555666', 3),
(3, 'Global Textiles', '789 Fabric Blvd', '456-789-123', 'TAX003', '777888999', 4),
(4, 'Prime Fabrics', '987 Silk Ave', '789-123-456', 'TAX004', '555666777', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `supplyhistory`
--

CREATE TABLE `supplyhistory` (
  `CCode` int(11) NOT NULL,
  `SuppliedDate` date NOT NULL,
  `SuppliedPrice` decimal(10,2) DEFAULT NULL,
  `SuppliedQuantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `supplyhistory`
--

INSERT INTO `supplyhistory` (`CCode`, `SuppliedDate`, `SuppliedPrice`, `SuppliedQuantity`) VALUES
(1, '2024-01-15', 2.00, 300),
(2, '2024-02-20', 4.50, 150),
(3, '2024-03-10', 3.80, 200),
(4, '2024-03-25', 3.20, 100);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password_hash` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `password_hash`) VALUES
(1, 'admin', '$2y$10$fSXilBpCLsuqIle4zyi7ne5MMTHNS8/HUGVuowtsgRlrYNFhD2eqO'),
(8, 'NhatQuyenIT', '$2y$10$pKLR3oeL5ZP/upmOM2seWuQZP7CGb0SaPTlXJjfABbNDU54/HY58u');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bolt`
--
ALTER TABLE `bolt`
  ADD PRIMARY KEY (`BCode`),
  ADD KEY `CCode` (`CCode`),
  ADD KEY `idx_bolt_bcode` (`BCode`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`CCode`),
  ADD KEY `SCode` (`SCode`),
  ADD KEY `idx_category_ccode` (`CCode`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CusId`),
  ADD KEY `ECode` (`ECode`);

--
-- Chỉ mục cho bảng `customerstatus`
--
ALTER TABLE `customerstatus`
  ADD PRIMARY KEY (`CusId`);

--
-- Chỉ mục cho bảng `customer_partialpayments`
--
ALTER TABLE `customer_partialpayments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_partialpayments_ibfk_1` (`CusId`);

--
-- Chỉ mục cho bảng `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`ECode`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OCode`),
  ADD KEY `ECode` (`ECode`),
  ADD KEY `CusId` (`CusId`),
  ADD KEY `idx_orders_cusid` (`CusId`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`DetailId`),
  ADD KEY `OCode` (`OCode`),
  ADD KEY `BCode` (`BCode`),
  ADD KEY `idx_orderdetail_ocode` (`OCode`);

--
-- Chỉ mục cho bảng `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`SCode`),
  ADD KEY `ECode` (`ECode`);

--
-- Chỉ mục cho bảng `supplyhistory`
--
ALTER TABLE `supplyhistory`
  ADD PRIMARY KEY (`CCode`,`SuppliedDate`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bolt`
--
ALTER TABLE `bolt`
  MODIFY `BCode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `CCode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `CusId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1001;

--
-- AUTO_INCREMENT cho bảng `customer_partialpayments`
--
ALTER TABLE `customer_partialpayments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `employee`
--
ALTER TABLE `employee`
  MODIFY `ECode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `OCode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `DetailId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `supplier`
--
ALTER TABLE `supplier`
  MODIFY `SCode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1004;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `bolt`
--
ALTER TABLE `bolt`
  ADD CONSTRAINT `bolt_ibfk_1` FOREIGN KEY (`CCode`) REFERENCES `category` (`CCode`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `category_ibfk_1` FOREIGN KEY (`SCode`) REFERENCES `supplier` (`SCode`);

--
-- Các ràng buộc cho bảng `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`ECode`) REFERENCES `employee` (`ECode`);

--
-- Các ràng buộc cho bảng `customerstatus`
--
ALTER TABLE `customerstatus`
  ADD CONSTRAINT `customerstatus_ibfk_1` FOREIGN KEY (`CusId`) REFERENCES `customer` (`CusId`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `customer_partialpayments`
--
ALTER TABLE `customer_partialpayments`
  ADD CONSTRAINT `customer_partialpayments_ibfk_1` FOREIGN KEY (`CusId`) REFERENCES `customer` (`CusId`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`ECode`) REFERENCES `employee` (`ECode`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`CusId`) REFERENCES `customer` (`CusId`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`OCode`) REFERENCES `orders` (`OCode`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_detail_ibfk_2` FOREIGN KEY (`BCode`) REFERENCES `bolt` (`BCode`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `supplier`
--
ALTER TABLE `supplier`
  ADD CONSTRAINT `supplier_ibfk_1` FOREIGN KEY (`ECode`) REFERENCES `employee` (`ECode`);

--
-- Các ràng buộc cho bảng `supplyhistory`
--
ALTER TABLE `supplyhistory`
  ADD CONSTRAINT `supplyhistory_ibfk_1` FOREIGN KEY (`CCode`) REFERENCES `category` (`CCode`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
