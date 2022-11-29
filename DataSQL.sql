-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 30, 2022 at 01:00 AM
-- Server version: 5.7.33-0ubuntu0.16.04.1
-- PHP Version: 7.0.33-0ubuntu0.16.04.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db22_050`
--

-- --------------------------------------------------------

--
-- Table structure for table `AddEquipmentDistrict`
--

CREATE TABLE `AddEquipmentDistrict` (
  `agency_id` int(50) NOT NULL,
  `equipment_id` int(50) NOT NULL,
  `active_status` int(50) DEFAULT NULL,
  `defective_state` int(50) DEFAULT NULL,
  `during_use` int(50) DEFAULT NULL,
  `total` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `AddEquipmentDistrict`
--

INSERT INTO `AddEquipmentDistrict` (`agency_id`, `equipment_id`, `active_status`, `defective_state`, `during_use`, `total`) VALUES
(10001, 4, 400, 2, 200, NULL),
(10001, 6, 10, 0, 10, NULL),
(10002, 4, 499, 1, 200, NULL),
(10002, 6, 6, 0, 4, NULL),
(10003, 4, 500, 0, 300, NULL),
(10003, 6, 30, 0, 10, NULL),
(10004, 4, 200, 0, 50, NULL),
(10004, 6, 10, 0, 5, NULL),
(10005, 1, 300, 10, 0, NULL),
(10005, 6, 10, 1, 5, NULL),
(10003, 1, 50, 5, 20, NULL),
(10001, 9, 80, 10, 20, NULL),
(10003, 10, 50, 3, 12, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Agency`
--

CREATE TABLE `Agency` (
  `agency_id` int(50) NOT NULL,
  `agency_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='หน่วยงาน By Dew';

--
-- Dumping data for table `Agency`
--

INSERT INTO `Agency` (`agency_id`, `agency_name`) VALUES
(10001, 'สำนักเทศกิจ'),
(10002, 'สำนักการระบายน้ำ'),
(10003, 'สำนักการคลัง'),
(10004, 'สำนักการโยธา'),
(10005, 'สำนักงานเขต'),
(10006, 'กลุ่มกรุงเทพกลาง'),
(10007, 'สำนักงานเขตดินแดง'),
(10008, 'สำนักงานเขตดุสิต'),
(10009, 'สำนักงานเขตป้อมปราบศัตรูพ่าย'),
(10010, 'สำนักงานเขตพญาไท'),
(10011, 'สำนักงานเขตพระนคร'),
(10012, 'สำนักงานเขตราชเทวี'),
(10013, 'สำนักงานเขตวังทองหลาง'),
(10014, 'สำนักงานเขตสัมพันธวงศ์'),
(10015, 'สำนักงานเขตห้วยขวาง'),
(10016, 'กลุ่มกรุงเทพใต้'),
(10017, 'สำนักงานเขตคลองเตย'),
(10018, 'สำนักงานเขตบางคอแหลม'),
(10019, 'สำนักงานเขตบางนา'),
(10020, 'สำนักงานเขตบางรัก'),
(10021, 'สำนักงานเขตปทุมวัน'),
(10022, 'สำนักงานเขตพระโขนง'),
(10023, 'สำนักงานเขตยานนาวา'),
(10024, 'สำนักงานเขตวัฒนา'),
(10025, 'สำนักงานเขตสวนหลวง'),
(10026, 'สำนักงานเขตสาทร'),
(10027, 'กลุ่มกรุงเทพเหนือ'),
(10028, 'สำนักงานเขตจตุจักร'),
(10029, 'สำนักงานเขตดอนเมือง'),
(10030, 'สำนักงานเขตบางซื่อ'),
(10031, 'สำนักงานเขตบางเขน'),
(10032, 'สำนักงานเขตลาดพร้าว'),
(10033, 'สำนักงานเขตสายไหม'),
(10034, 'สำนักงานเขตหลักสี่'),
(10035, 'กลุ่มกรุงเทพตะวันออก'),
(10036, 'สำนักงานเขตคลองสามวา'),
(10037, 'สำนักงานเขตคันนายาว'),
(10038, 'สำนักงานเขตบางกะปิ'),
(10039, 'สำนักงานเขตบึงกุ่ม'),
(10040, 'สำนักงานเขตประเวศ'),
(10041, 'สำนักงานเขตมีนบุรี'),
(10042, 'สำนักงานเขตลาดกระบัง'),
(10043, 'สำนักงานเขตสะพานสูง'),
(10044, 'สำนักงานเขตหนองจอก'),
(10045, 'กลุ่มกรุงธนเหนือ'),
(10046, 'สำนักงานเขตคลองสาน'),
(10047, 'สำนักงานเขตจอมทอง'),
(10048, 'สำนักงานเขตตลิ่งชัน'),
(10049, 'สำนักงานเขตทวีวัฒนา'),
(10050, 'สำนักงานเขตธนบุรี'),
(10051, 'สำนักงานเขตบางกอกน้อย'),
(10052, 'สำนักงานเขตบางกอกใหญ่'),
(10053, 'สำนักงานเขตบางพลัด'),
(10054, 'กลุ่มกรุงธนใต้'),
(10055, 'สำนักงานเขตทุ่งครุ'),
(10056, 'สำนักงานเขตบางขุนเทียน'),
(10057, 'สำนักงานเขตบางบอน'),
(10058, 'สำนักงานเขตบางแค'),
(10059, 'สำนักงานเขตภาษีเจริญ'),
(10060, 'สำนักงานเขตราษฎร์บูรณะ'),
(10061, 'สำนักงานเขตหนองแขม');

-- --------------------------------------------------------

--
-- Table structure for table `Canton`
--

CREATE TABLE `Canton` (
  `canton_id` int(50) NOT NULL COMMENT 'ID ของตำบล',
  `canton_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ชื่อของตำบล',
  `district_id` int(50) DEFAULT NULL COMMENT 'เป็นการบอกว่า ตำบลนี้อยู๋อำเภออะไร ดึงจาก district_id (District)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='ตำบล By Art';

--
-- Dumping data for table `Canton`
--

INSERT INTO `Canton` (`canton_id`, `canton_name`, `district_id`) VALUES
(1001, 'พระประแดง', 7),
(1002, 'ดินแดง', 1),
(1003, 'พระโขนง', 2),
(1004, 'บางบอน', 3),
(1005, 'คลองจั่น', 4),
(1006, 'ลุมพินี', 5),
(1007, 'คลองสิบ', 6),
(1008, 'หนองแขม', 8),
(1009, 'ปากน้ำโพ', 9),
(1010, 'แหลมฟ้าผ่า', 10),
(1011, 'บางหว้า', 11),
(1012, 'ทุ่งครุ', 12),
(1013, 'บางมด', 12),
(1017, 'สามเสนใน', 13);

-- --------------------------------------------------------

--
-- Table structure for table `DailyWork`
--

CREATE TABLE `DailyWork` (
  `dailywork_id` int(50) NOT NULL,
  `solving_id` int(50) NOT NULL,
  `solvingsituation_id` int(50) NOT NULL,
  `solving_sequence` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='การดำเนินการต่างๆในแต่ละวัน By อาบิ๊ด';

-- --------------------------------------------------------

--
-- Table structure for table `Dam`
--

CREATE TABLE `Dam` (
  `dam_id` int(50) NOT NULL,
  `dam_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `original_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `river_id` int(50) DEFAULT NULL,
  `district_id` int(50) DEFAULT NULL,
  `dam_capacity` double NOT NULL COMMENT 'ล้าน ลบ.ม.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='ข้อมูลเขื่อน By Little';

--
-- Dumping data for table `Dam`
--

INSERT INTO `Dam` (`dam_id`, `dam_name`, `original_name`, `river_id`, `district_id`, `dam_capacity`) VALUES
(1, 'เขื่อนภูมิพล', 'เขื่อนยันฮี', 1, NULL, 13462),
(2, 'เขื่อนสิริกิติ์', 'เขื่อนผาซ่อม', 3, NULL, 9510),
(3, 'เขื่อนวชิราลงกรณ', 'เขื่อนเขาแหลม', NULL, NULL, 8860),
(4, 'เขื่อนศรีนครินทร์', 'เขื่อนเจ้าเณร', NULL, NULL, 17745),
(5, 'เขื่อนสิรินธร', NULL, NULL, NULL, 1966),
(6, 'เขื่อนจุฬาภรณ์', 'เขื่อนน้ำพรม', NULL, 9, 188),
(7, 'เขื่อนอุบลรัตน์', NULL, NULL, NULL, 2263),
(8, 'เขื่อนแก่งกระจาน', NULL, NULL, NULL, 710),
(9, 'เขื่อนรัชชประภา', 'เขื่อนเชี่ยวหลาน', NULL, NULL, 5638.8),
(10, 'เขื่อนป่าสักชลสิทธิ์', NULL, NULL, NULL, 785),
(11, 'เขื่อนบางลาง', NULL, NULL, NULL, 1420),
(12, 'เขื่อนท่าทุ่งนา', NULL, NULL, NULL, 5503),
(13, 'เขื่อนแม่งัดสมบูรณ์ชล', NULL, NULL, NULL, 265),
(14, 'เขื่อนลำปาว', NULL, NULL, NULL, 1340),
(15, 'เขื่อนลำตะคอง', NULL, NULL, NULL, 310),
(16, 'เขื่อนห้วยหลวง', NULL, NULL, NULL, 113),
(17, 'เขื่อนปราณบุรี', NULL, NULL, NULL, 445);

-- --------------------------------------------------------

--
-- Table structure for table `DamRecord`
--

CREATE TABLE `DamRecord` (
  `dam_record_id` int(50) NOT NULL,
  `dam_record_date` date NOT NULL,
  `dam_id` int(50) NOT NULL,
  `water_amount` double NOT NULL COMMENT 'ล้านลบ.ม.',
  `water_out` double NOT NULL COMMENT 'ล้านลบ.ม.',
  `water_in` double NOT NULL COMMENT 'ล้านลบ.ม.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='บันทึกรายวัน เขื่อน By Little';

--
-- Dumping data for table `DamRecord`
--

INSERT INTO `DamRecord` (`dam_record_id`, `dam_record_date`, `dam_id`, `water_amount`, `water_out`, `water_in`) VALUES
(1, '2022-11-03', 1, 11995, 3, 12.4),
(2, '2022-11-03', 2, 6857, 9.02, 5.33),
(3, '2022-11-03', 3, 6273, 8.08, 5.64),
(4, '2022-11-03', 4, 15971, 6.99, 12.4),
(5, '2022-11-03', 5, 1768, 3.02, 0),
(6, '2022-11-03', 6, 151, 0.8, 0.73),
(7, '2022-11-04', 1, 12004, 3, 12.7),
(8, '2022-11-04', 2, 6857, 9.05, 9.8),
(9, '2022-11-04', 3, 6267, 8.11, 2.5),
(10, '2022-11-04', 4, 15974, 7.02, 14),
(11, '2022-11-04', 5, 1768, 2.85, 3.74),
(12, '2022-11-04', 6, 150, 0.8, 0.2),
(13, '2022-11-05', 1, 12016, 3, 16.11),
(14, '2022-11-05', 2, 6855, 9, 7.54),
(15, '2022-11-05', 3, 6264, 8.14, 5.71),
(16, '2022-11-05', 4, 15982, 6.98, 14.21),
(17, '2022-11-05', 5, 1766, 2.9, 1.09),
(18, '2022-11-05', 6, 149, 0.79, 0.3),
(19, '2022-11-06', 1, 12025, 4, 16.11),
(20, '2022-11-06', 2, 6852, 8.99, 7.54),
(21, '2022-11-06', 3, 6260, 8.11, 5.71),
(22, '2022-11-06', 4, 15982, 12.01, 14.21),
(23, '2022-11-06', 5, 1758, 3.01, 1.09),
(24, '2022-11-06', 6, 149, 0.79, 0.3),
(25, '2022-11-07', 1, 12033, 4, 13.46),
(26, '2022-11-07', 2, 6850, 9.15, 7.69),
(27, '2022-11-07', 3, 6251, 14.03, 5.26),
(28, '2022-11-07', 4, 15982, 12.03, 13.23),
(29, '2022-11-07', 5, 1755, 2.95, 1.14),
(30, '2022-11-07', 6, 148, 0.81, 0.32),
(31, '2022-11-08', 1, 12042, 4, 13.78),
(32, '2022-11-08', 2, 6848, 8.99, 7.52),
(33, '2022-11-08', 3, 6241, 14.05, 5.29),
(34, '2022-11-08', 4, 15978, 12.05, 11.51),
(35, '2022-11-08', 5, 1750, 3.12, 0),
(36, '2022-11-08', 6, 148, 0.79, 0.2);

-- --------------------------------------------------------

--
-- Table structure for table `DamReport`
--

CREATE TABLE `DamReport` (
  `dam_report_id` int(50) NOT NULL,
  `dam_id` int(50) NOT NULL,
  `dam_report_date` date NOT NULL,
  `dam_report_out` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `DamReport`
--

INSERT INTO `DamReport` (`dam_report_id`, `dam_id`, `dam_report_date`, `dam_report_out`) VALUES
(1, 1, '2022-11-10', 15),
(2, 1, '2022-11-10', 25),
(3, 2, '2022-11-10', 15),
(4, 4, '2022-11-08', 999),
(5, 4, '2022-11-06', 15);

-- --------------------------------------------------------

--
-- Table structure for table `District`
--

CREATE TABLE `District` (
  `district_id` int(50) NOT NULL COMMENT 'ID ของอำเภอ',
  `district_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ชื่อของอำเภอ',
  `province_id` int(50) DEFAULT NULL COMMENT 'เป็นการบอกว่า อำเภอนี้อยู่ที่จังหวัดอะไรดึง province_id (Province)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='อำเภอ By Art';

--
-- Dumping data for table `District`
--

INSERT INTO `District` (`district_id`, `district_name`, `province_id`) VALUES
(1, 'ดินแดง', 1),
(2, 'คลองเตย', 1),
(3, 'บางบอน', 1),
(4, 'บางกะปิ', 1),
(5, 'ปทุมวัน', 1),
(6, 'หนองจอก', 1),
(7, 'พระประแดง', 2),
(8, 'หนองแขม', 1),
(9, 'เมืองนครสวรรค์', 3),
(10, 'พระสมุทรเจดีย์', 2),
(11, 'ภาษีเจริญ', 1),
(12, 'ทุ่งครุ', 1),
(13, 'พญาไท', 1);

-- --------------------------------------------------------

--
-- Table structure for table `Equipment`
--

CREATE TABLE `Equipment` (
  `equipment_id` int(50) NOT NULL,
  `equipment_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='อุปกรณ์ By Dew';

--
-- Dumping data for table `Equipment`
--

INSERT INTO `Equipment` (`equipment_id`, `equipment_name`) VALUES
(1, 'เต้นท์สำหรับผู้อพยพ'),
(4, 'กระสอบทราย'),
(6, 'รถยนต์'),
(7, 'เรือ'),
(9, 'เสื้อชูชีพ'),
(10, 'ห้องสุขาเคลื่อนที่');

-- --------------------------------------------------------

--
-- Table structure for table `FloodInformation`
--

CREATE TABLE `FloodInformation` (
  `flood_information_id` int(50) NOT NULL,
  `sub_area_id` int(50) NOT NULL,
  `date_flood` date DEFAULT NULL,
  `damage_value` double DEFAULT NULL,
  `water_level` double NOT NULL,
  `current_flood_situation` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time_flood` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='เก็บข้อมูลน้ำท่วม By เพชร';

--
-- Dumping data for table `FloodInformation`
--

INSERT INTO `FloodInformation` (`flood_information_id`, `sub_area_id`, `date_flood`, `damage_value`, `water_level`, `current_flood_situation`, `time_flood`) VALUES
(920001, 3, '2022-11-01', 42, 63, 'น้ำท่วมสูงมาก', '08:00:00'),
(920005, 2, '2022-11-01', 60, 30, 'น้ำท่วมปานกลาง', '17:00:00'),
(920009, 1, '2022-11-08', 42, 63, 'น้ำท่วมสูงมาก', '08:00:00'),
(920010, 10, '2022-11-08', 40, 56, 'น้ำท่วมสูง', '00:06:00'),
(920011, 7, '2022-11-01', 47, 23, 'น้ำท่วมเล็กน้อย', '12:00:00'),
(920012, 10, '2022-11-01', 44, 50, 'น้ำท่วมสูง', '08:00:00'),
(920013, 7, '2022-11-02', 60, 30, 'น้ำท่วมเล็กน้อย', '17:00:00'),
(920014, 6, '2022-11-02', 50, 23, 'น้ำท่วมเล็กน้อย', '12:00:00'),
(920015, 7, '2022-11-03', 50, 47, 'ท่วมสูง', '16:00:00'),
(930008, 1, '2022-11-01', 50, 47, 'ท่วมปานกลาง', '12:31:00'),
(930009, 7, '2022-11-10', 50, 50, 'ทดสอบ', '07:11:00');

-- --------------------------------------------------------

--
-- Table structure for table `Flowthroughcanton`
--

CREATE TABLE `Flowthroughcanton` (
  `flowthrough_id` int(50) NOT NULL,
  `river_id` int(50) NOT NULL,
  `canton_id` int(50) NOT NULL,
  `river_continue` int(50) DEFAULT NULL,
  `river_distance` double NOT NULL,
  `flowthrough_order` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Flowthroughcanton`
--

INSERT INTO `Flowthroughcanton` (`flowthrough_id`, `river_id`, `canton_id`, `river_continue`, `river_distance`, `flowthrough_order`) VALUES
(1, 1, 1002, 1, 500.53, '1'),
(3, 1, 1003, 6, 465.31, '3'),
(4, 1, 1009, 2, 290.35, '4'),
(10, 4, 1004, 4, 421.2, '1'),
(13, 5, 1002, 5, 312.65, '1'),
(15, 2, 1004, 2, 125.34, '1'),
(16, 2, 1005, 2, 356.12, '2'),
(17, 4, 1001, 9, 444.12, '3'),
(18, 3, 1006, 3, 432.12, '1'),
(19, 9, 1004, 9, 371.65, '3'),
(20, 9, 1002, 1, 578.1, '4'),
(21, 3, 1001, 3, 641.32, '2'),
(24, 3, 1005, 5, 124.22, '3'),
(26, 9, 1003, 9, 242.21, '1'),
(27, 9, 1006, 9, 444.11, '2'),
(29, 8, 1003, 8, 54.121, '2'),
(42, 8, 1008, 4, 558.3, '4'),
(43, 8, 1005, 8, 578.1, '3'),
(44, 4, 1005, 4, 895.2, '2'),
(45, 8, 1004, 8, 784.21, '1'),
(57, 11, 1010, 11, 455.21, '2'),
(60, 11, 1009, 11, 914.1, '5');

-- --------------------------------------------------------

--
-- Table structure for table `Flowthroughsubarea`
--

CREATE TABLE `Flowthroughsubarea` (
  `flowthroughsubarea_id` int(50) NOT NULL,
  `river_id` int(50) NOT NULL,
  `canton_id` int(50) NOT NULL,
  `subarea_id` int(50) NOT NULL,
  `flowthroughsubarea_distance` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Flowthroughsubarea`
--

INSERT INTO `Flowthroughsubarea` (`flowthroughsubarea_id`, `river_id`, `canton_id`, `subarea_id`, `flowthroughsubarea_distance`) VALUES
(9, 1, 1003, 10, 2.11),
(14, 1, 1001, 9, 4.21),
(16, 9, 1006, 2, 3.41),
(18, 9, 1003, 1, 1.24),
(19, 9, 1004, 1, 3.12),
(20, 1, 1002, 7, 3.71),
(21, 3, 1006, 8, 1.11),
(22, 3, 1001, 14, 2),
(23, 3, 1005, 1, 1.54),
(24, 9, 1002, 1, 4.12);

-- --------------------------------------------------------

--
-- Table structure for table `Forecast`
--

CREATE TABLE `Forecast` (
  `forecast_id` int(50) NOT NULL COMMENT 'ID การพยากรณ์อากาศ',
  `forecast_date` date NOT NULL COMMENT 'วันที่การพยากรณ์อากาศ',
  `forecast_cloud` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'จำนวนเมฆในท้องฟ้า',
  `forecast_max_temp` double DEFAULT NULL COMMENT 'อุณหภูมิสูงสุด',
  `forecast_min_temp` double DEFAULT NULL COMMENT 'อุณหภูมิต่ำสุด',
  `forecast_wind` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ทิศทางความเร็วลม',
  `forecast_precipitation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ปริมาณน้ำฝน',
  `forecast_sea_water` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ระดับน้ำทะเลหนุน',
  `forecast_at_id` int(50) NOT NULL COMMENT 'ID ตำแหน่งการพยากรณ์อากาศ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='การพยากรณ์อากาศ By Big';

--
-- Dumping data for table `Forecast`
--

INSERT INTO `Forecast` (`forecast_id`, `forecast_date`, `forecast_cloud`, `forecast_max_temp`, `forecast_min_temp`, `forecast_wind`, `forecast_precipitation`, `forecast_sea_water`, `forecast_at_id`) VALUES
(1, '2022-11-07', 'มีหมอกบางในตอนเช้า', 34, 15, 'ลมตะวันออกเฉียงเหนือความเร็ว10-15กม./ชม.', '-', '-', 1),
(2, '2022-11-07', 'มีเมฆมาก', 32, 23, 'ลมตะวันออกเฉียงเหนือความเร็ว15-30กม./ชม.', 'มีฝนฟ้าคะนองร้อยละ70ของพื้นที่และมีฝนตกหนักบางแห่ง', 'ทะเลมีคลื่นสูงประมาณ1เมตร', 2),
(3, '2022-11-07', 'มีหมอกบางในตอนเช้า', 34, 23, 'ลมตะวันออกเฉียงเหนือความเร็ว15-30กม./ชม', 'มีฝนเล็กน้อยบางแห่ง', 'ทะเลมีคลื่นสูงประมาณ1เมตรห่างฝั่งคลื่นสูงมากกว่า1เมตร', 3),
(4, '2022-11-07', 'มีเมฆมาก', 32, 23, 'ลมตะวันออกความเร็ว15-30กม./ชม.', 'มีฝนฟ้าคะนองร้อยละ60ของพื้นที่และมีฝนตกหนักบางแห่ง', 'ทะเลมีคลื่นสูงประมาณ1เมตรบริเวณที่มีฝนฟ้าคะนองคลื่นสูงมากกว่า1เมตร', 4),
(5, '2022-11-07', 'มีหมอกบางในตอนเช้า', 15, 33, 'ลมตะวันออกเฉียงเหนือความเร็ว10-20กม./ชม.', '-', '-', 5),
(6, '2022-11-07', 'มีหมอกบางในตอนเช้า', 34, 22, 'ลมตะวันออกเฉียงเหนือความเร็ว10-20กม./ชม.', 'มีฝนเล็กน้อยบางแห่งส่วนมากทางตอนล่างของภาค', '-', 6),
(7, '2022-11-07', 'มีหมอกบางในตอนเช้า', 34, 15, 'ลมตะวันออกเฉียงเหนือความเร็ว10-20กม./ชม.', 'มีฝนเล็กน้อยบางแห่ง', 'ทะเลมีคลื่นสูงประมาณ1เมตรบริเวณที่มีฝนฟ้าคะนองคลื่นสูงมากกว่า 1เมตร', 7),
(8, '2022-11-08', 'มีหมอกในตอนเช้า', 34, 15, 'ลมตะวันออกเฉียงเหนือความเร็ว10-15กม./ชม.', '-', '-', 1),
(9, '2022-11-08', 'มีเมฆฝนฟ้าคะนอง', 32, 25, 'ลมตะวันออกเฉียงเหนือความเร็ว15-30กม./ชม.', 'มีฝนฟ้าคะนองร้อยละ60ของพื้นที่', 'ทะเลมีคลื่นสูง1-2 เมตรบริเวณที่มีฝนฟ้าคะนองคลื่นสูงประมาณ2เมตร', 2),
(10, '2022-11-08', 'มีเมฆบางส่วนกับมีหมอกบางในตอนเช้า', 34, 21, 'ลมตะวันออกเฉียงเหนือความเร็ว15-30กม./ชม.', 'ทะเลมีคลื่นสูงประมาณ1เมตรห่างฝั่งคลื่นสูงมากกว่า1เมตร', '-', 3),
(11, '2022-11-08', 'มีเมฆฝนฟ้าคะนอง', 34, 25, 'ลมตะวันออกความเร็ว15-30กม./ชม.', 'มีฝนฟ้าคะนองร้อยละ60ของพื้นที่', 'ทะเลมีคลื่นสูงประมาณ1เมตรบริเวณที่มีฝนฟ้าคะนองคลื่นสูงมากกว่า1เมตร', 4),
(12, '2022-11-08', 'อากาศเย็นถึงหนาวกับมีหมอกในตอนเช้า', 15, 33, 'ลมตะวันออกเฉียงเหนือความเร็ว10-20กม./ชม.', '-', '-', 5),
(13, '2022-11-08', 'มีหมอกบางในตอนเช้า', 21, 34, 'ลมตะวันออกเฉียงเหนือความเร็ว10-20กม./ชม.', '-', '-', 6),
(14, '2022-11-08', 'เมฆบางส่วนกับมีหมอกบางในตอนเช้า', 22, 34, 'ลมตะวันออกเฉียงเหนือความเร็ว10-20กม./ชม.', 'มีฝนฟ้าคะนองร้อยละ60ในบริเวณพื้นที่ทางภาคใต้', 'ทะเลมีคลื่นสูงประมาณ1เมตรห่างฝั่งคลื่นสูงมากกว่า1เมตรบริเวณที่มีฝนฟ้าคะนองคลื่นสูงมากกว่า1เมตร', 7);

-- --------------------------------------------------------

--
-- Table structure for table `ForecastAt`
--

CREATE TABLE `ForecastAt` (
  `forecast_at_id` int(50) NOT NULL COMMENT 'ID ตำแหน่งการพยากรณ์อากาศ',
  `forecast_at_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ชื่อตำแหน่งการพยากรณ์อากาศ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='ตำแหน่งการพยากรณ์อากาศ By Big';

--
-- Dumping data for table `ForecastAt`
--

INSERT INTO `ForecastAt` (`forecast_at_id`, `forecast_at_name`) VALUES
(1, 'ภาคเหนือ'),
(2, 'ภาคใต้'),
(3, 'ภาคตะวันออก'),
(4, 'ภาคตะวันตก'),
(5, 'ภาคตะวันออกเฉียงเหนือ'),
(6, 'ภาคกลาง'),
(7, 'ประเทศไทย');

-- --------------------------------------------------------

--
-- Table structure for table `GaugingStation`
--

CREATE TABLE `GaugingStation` (
  `gaugingstation_id` int(11) NOT NULL,
  `gauging_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `river_id` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='สถานีวัดระดับน้ำ by TAM';

--
-- Dumping data for table `GaugingStation`
--

INSERT INTO `GaugingStation` (`gaugingstation_id`, `gauging_name`, `river_id`) VALUES
(1, 'จุดบริเวณใกล้แม่ลพบุรี', 10),
(2, 'จุดบริเวณต้นแม่น้ำยม', 2),
(3, 'จุดบริเวณปลายแม่น้ำน่าน', 3),
(4, 'จุดบริเวณใกล้แม่น้ำวัง', 4),
(5, 'จุดบริเวณต้นแม่น้ำสะแกกรัง', 5),
(6, 'จุดบริเวณใกล้แม่น้ำท่าจีน', 6),
(7, 'จุดบริเวณต้นแม่น้ำสะแกกรัง', 5),
(8, 'จุดบริเวณใกล้แม่น้ำท่าจีน', 6),
(9, 'จุดบริเวณสุดสายแม่น้ำวัง', 4);

-- --------------------------------------------------------

--
-- Table structure for table `GaugingStationDaily`
--

CREATE TABLE `GaugingStationDaily` (
  `daily_id` int(11) NOT NULL,
  `gaugingstation_id` int(50) NOT NULL,
  `gauging_level` double NOT NULL,
  `gauging_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `GaugingStationDaily`
--

INSERT INTO `GaugingStationDaily` (`daily_id`, `gaugingstation_id`, `gauging_level`, `gauging_date`) VALUES
(1, 1, 1.21, '2022-11-01'),
(2, 2, 0.98, '2022-11-02'),
(3, 3, 1.36, '2022-11-03'),
(4, 4, 1.47, '2022-11-04'),
(7, 1, 56, '2022-11-25'),
(8, 1, 63, '2022-11-25'),
(9, 1, 4.5, '2022-11-12'),
(11, 3, 1.18, '2022-11-16'),
(12, 4, 1.32, '2022-10-31'),
(13, 5, 1.4, '2022-10-13'),
(14, 5, 1.32, '2022-11-02'),
(15, 6, 1.13, '2022-11-11'),
(16, 6, 1.27, '2022-11-07'),
(17, 6, 1.22, '2022-11-03'),
(18, 8, 1.25, '2022-10-31'),
(19, 8, 1.52, '2022-11-05'),
(20, 9, 1.21, '2022-10-14'),
(21, 1, 1.45, '2022-12-12'),
(22, 1, 1.32, '2022-11-15');

-- --------------------------------------------------------

--
-- Table structure for table `Grouping`
--

CREATE TABLE `Grouping` (
  `staffset_id` int(50) NOT NULL,
  `staff_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Grouping`
--

INSERT INTO `Grouping` (`staffset_id`, `staff_id`) VALUES
(1, 9),
(1, 10),
(1, 11),
(2, 12),
(4, 12),
(2, 13),
(2, 14),
(4, 16),
(4, 17),
(3, 19),
(3, 20);

-- --------------------------------------------------------

--
-- Table structure for table `HealApprove`
--

CREATE TABLE `HealApprove` (
  `heal_approve_id` int(11) NOT NULL COMMENT 'id เยียวยา',
  `list_family_money` int(100) DEFAULT NULL COMMENT 'จ่ายเงินแต่ละหลังคาเรือน',
  `list_person_money` int(100) DEFAULT NULL COMMENT 'จ่ายเงินแต่ละคน',
  `date_approve` date DEFAULT NULL COMMENT 'วันที่อนุมัติรับเงินเยียวยา',
  `summary_situation_id` int(50) DEFAULT NULL,
  `house_id` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `HealApprove`
--

INSERT INTO `HealApprove` (`heal_approve_id`, `list_family_money`, `list_person_money`, `date_approve`, `summary_situation_id`, `house_id`) VALUES
(1, 2000, 100, '2022-11-11', 1, 5),
(2, 600, 200, '2022-11-11', 1, 1),
(3, 7000, 600, '2022-11-12', 5, 2),
(666, 5000, 500, '2022-11-18', 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `House`
--

CREATE TABLE `House` (
  `house_id` int(50) NOT NULL COMMENT 'ID ของบ้าน',
  `house_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'เลขรหัสประจำของบ้าน',
  `sub_area_id` int(50) DEFAULT NULL COMMENT '้เป็นการบอกว่าบ้านนี้ อยู่ใน พื้นทื่ย่อยไหนดึงจาก sub_area_id (SubArea)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='บ้านในพื่นที่ By Art';

--
-- Dumping data for table `House`
--

INSERT INTO `House` (`house_id`, `house_number`, `sub_area_id`) VALUES
(1, '0006', 3),
(2, '0007', 3),
(3, '0001', 1),
(4, '0002', 1),
(5, '0004', 2),
(6, '0005', 2),
(7, '0003', 1),
(9, '8302', 7015);

-- --------------------------------------------------------

--
-- Table structure for table `HouseRegistration`
--

CREATE TABLE `HouseRegistration` (
  `house_registration_id` int(50) NOT NULL COMMENT 'ID ของทะเบียนบ้าน',
  `house_id` int(50) DEFAULT NULL COMMENT 'บอกว่า ID ทะเบียนบ้านนี้คือ บ้านที่ดึงมาจาก house_id (House)',
  `registration_people_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ชื่อจริงคนในบ้านนั้นๆ',
  `registration_people_surname` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'นามสกุลคนในบ้านนั้นๆ',
  `registration_people_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'เลขรหัสประชาชนคนในบ้านนั้นๆ',
  `registration_people_sex_id` int(11) NOT NULL COMMENT 'เพศของคนในบ้านนั้นๆ',
  `registration_people_birthday` date NOT NULL COMMENT 'วันเกิดคนในบ้านนั้นๆ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='ทะเบียนบ้าน By Art';

--
-- Dumping data for table `HouseRegistration`
--

INSERT INTO `HouseRegistration` (`house_registration_id`, `house_id`, `registration_people_name`, `registration_people_surname`, `registration_people_number`, `registration_people_sex_id`, `registration_people_birthday`) VALUES
(1, 1, 'มากามิ', 'อิอิอิอิ', '1020502377', 1, '2022-08-03'),
(2, 1, 'ชาย', 'หยิง', '0000000000', 3, '2022-11-02'),
(3, 2, 'กากีกา', 'นารี', '9990609823', 2, '2022-11-23'),
(4, 3, 'อาบิ๊ด', 'มหากลั่น', '6320501600', 1, '2022-11-05'),
(5, 5, 'มีนา', 'มายัง', '9320900000', 3, '2022-11-01'),
(6, 3, 'เอริยา', 'มหากลั่น', '6320509999', 2, '2022-11-05'),
(7, 4, 'กนกพร', 'สมพร', '8320502371', 2, '2022-10-28'),
(8, 9, 'good', 'bad222', '6320502', 3, '2022-11-10'),
(9, 9, 'ชื่อ_สมหมาย', 'นามสกุล_สมหมาย', '23232323', 1, '2022-11-05');

-- --------------------------------------------------------

--
-- Table structure for table `Issue`
--

CREATE TABLE `Issue` (
  `issue_id` int(50) NOT NULL,
  `issue_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ชื่อของปัญหา'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='ปัญหาจากการออกตรวจ by joey';

--
-- Dumping data for table `Issue`
--

INSERT INTO `Issue` (`issue_id`, `issue_name`) VALUES
(1, 'แนวคันกั้นน้ำถล่ม'),
(2, 'น้ำล้นคันกั้นน้ำ'),
(3, 'มีรอยฉีกขาด'),
(6, 'yy00000');

-- --------------------------------------------------------

--
-- Table structure for table `IssueList`
--

CREATE TABLE `IssueList` (
  `issuelist_id` int(50) NOT NULL,
  `observation_id` int(50) NOT NULL,
  `issue_id` int(50) NOT NULL,
  `issuelist_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci COMMENT='รายการออกตรวจ';

--
-- Dumping data for table `IssueList`
--

INSERT INTO `IssueList` (`issuelist_id`, `observation_id`, `issue_id`, `issuelist_description`) VALUES
(8, 10, 3, 'มีรอยขาด5จุด'),
(9, 10, 1, 'ต้องจัดเรียงใหม่'),
(10, 10, 2, 'ต้องหนุนเพิ่ม'),
(11, 12, 1, 'ถล่มยาว8เมตร'),
(12, 12, 3, 'ขาด3จุด'),
(13, 13, 2, 'ต้องการแนวป้องกันเพิ่มยาว20เมตร'),
(15, 16, 2, '-'),
(17, 9, 6, '7777');

-- --------------------------------------------------------

--
-- Table structure for table `IssueSolving`
--

CREATE TABLE `IssueSolving` (
  `solving_id` int(50) NOT NULL,
  `solving_sequence` int(50) NOT NULL,
  `solving_date` date NOT NULL,
  `solving_time` time NOT NULL,
  `solution` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'แนวทางแก้ไข',
  `solstatus_id` int(50) NOT NULL COMMENT 'สถานะแก้ไข',
  `issuelist_id` int(50) DEFAULT NULL,
  `staffset_id` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='การออกแก้ไขปัญหา by :P';

--
-- Dumping data for table `IssueSolving`
--

INSERT INTO `IssueSolving` (`solving_id`, `solving_sequence`, `solving_date`, `solving_time`, `solution`, `solstatus_id`, `issuelist_id`, `staffset_id`) VALUES
(1, 1, '2022-11-14', '08:00:00', '-', 2, 13, 1),
(2, 1, '2022-11-22', '10:00:00', '-', 1, 8, 2),
(3, 1, '2022-11-16', '11:00:00', '-', 1, 11, 3),
(4, 1, '2022-11-30', '06:30:00', '-', 1, 13, 1),
(4, 2, '2022-12-01', '08:10:00', '-', 2, 13, 1);

-- --------------------------------------------------------

--
-- Table structure for table `MaterialHandling`
--

CREATE TABLE `MaterialHandling` (
  `materialhandling_id` int(50) NOT NULL,
  `extraction_date` date NOT NULL,
  `return_date` date NOT NULL,
  `amount_exmaterial` int(50) NOT NULL,
  `amount_rematerial` int(50) NOT NULL,
  `equipment_id` int(50) NOT NULL,
  `staff_id` int(50) NOT NULL,
  `solvingsituation_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='วัสดุที่จำเป็นเข้าพื้นที่ By อาบิ๊ด';

--
-- Dumping data for table `MaterialHandling`
--

INSERT INTO `MaterialHandling` (`materialhandling_id`, `extraction_date`, `return_date`, `amount_exmaterial`, `amount_rematerial`, `equipment_id`, `staff_id`, `solvingsituation_id`) VALUES
(10001, '2022-11-01', '2022-11-02', 9, 8, 7, 12, 920010),
(10002, '2022-11-01', '2022-11-03', 5, 5, 7, 17, 920013),
(10003, '2022-11-01', '2022-11-02', 7, 7, 4, 14, 920010),
(10005, '2022-11-01', '2022-11-02', 10, 10, 6, 9, 920001),
(10006, '2022-11-09', '2022-11-10', 4, 4, 1, 17, 920009),
(10007, '2022-11-01', '2022-11-03', 6, 6, 6, 18, 920009);

-- --------------------------------------------------------

--
-- Table structure for table `MoneyPerFamily`
--

CREATE TABLE `MoneyPerFamily` (
  `pay_family_id` int(11) NOT NULL,
  `pay_family` int(100) DEFAULT NULL,
  `status_family` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pay_date` date DEFAULT NULL,
  `heal_approve_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `MoneyPerFamily`
--

INSERT INTO `MoneyPerFamily` (`pay_family_id`, `pay_family`, `status_family`, `pay_date`, `heal_approve_id`) VALUES
(1, NULL, '0', '2022-11-19', 1),
(9, NULL, '1', '2022-11-15', 3);

-- --------------------------------------------------------

--
-- Table structure for table `MoneyPerPerson`
--

CREATE TABLE `MoneyPerPerson` (
  `heal_person_id` int(11) NOT NULL,
  `pay_person` int(100) DEFAULT NULL,
  `status_person` int(50) DEFAULT NULL,
  `date_heal` date DEFAULT NULL,
  `heal_approve_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `MoneyPerPerson`
--

INSERT INTO `MoneyPerPerson` (`heal_person_id`, `pay_person`, `status_person`, `date_heal`, `heal_approve_id`) VALUES
(1, NULL, 0, '2022-11-11', 1),
(7777, NULL, 0, '2022-11-14', 1);

-- --------------------------------------------------------

--
-- Table structure for table `Observation`
--

CREATE TABLE `Observation` (
  `observation_id` int(50) NOT NULL,
  `observation_date` date NOT NULL COMMENT 'วันที่ออกตรวจ',
  `staff_id` int(50) NOT NULL,
  `waterbarrier_id` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='การออกตรวจ by joey';

--
-- Dumping data for table `Observation`
--

INSERT INTO `Observation` (`observation_id`, `observation_date`, `staff_id`, `waterbarrier_id`) VALUES
(9, '2022-11-10', 20, 7),
(10, '2022-11-08', 16, 9),
(11, '2022-11-08', 11, 12),
(12, '2022-11-04', 14, 13),
(13, '2022-11-02', 19, 10),
(15, '2022-11-09', 20, 12),
(16, '2022-11-10', 12, 13),
(18, '2022-11-13', 20, 7),
(19, '2022-11-10', 10, 7);

-- --------------------------------------------------------

--
-- Table structure for table `OptionNearCoastal`
--

CREATE TABLE `OptionNearCoastal` (
  `sub_area_near_coastal` int(50) NOT NULL,
  `sub_area_near_coastal_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `OptionNearCoastal`
--

INSERT INTO `OptionNearCoastal` (`sub_area_near_coastal`, `sub_area_near_coastal_name`) VALUES
(1, 'Yes'),
(2, 'No');

-- --------------------------------------------------------

--
-- Table structure for table `PrecipitationStorage`
--

CREATE TABLE `PrecipitationStorage` (
  `precipitation_storage_id` int(50) NOT NULL,
  `canton_id` int(50) DEFAULT NULL,
  `diary_rainfall` double NOT NULL,
  `area_rainfall_size` double NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='เก็บปริมาณน้ำฝน By เพชร';

--
-- Dumping data for table `PrecipitationStorage`
--

INSERT INTO `PrecipitationStorage` (`precipitation_storage_id`, `canton_id`, `diary_rainfall`, `area_rainfall_size`, `date`) VALUES
(910001, 1001, 41, 50, '2022-11-01'),
(910002, 1001, 32, 67, '2022-11-02'),
(910003, 1001, 25, 23, '2022-11-03'),
(910004, 1002, 35, 77, '2022-11-01'),
(910005, 1002, 41, 50, '2022-11-03'),
(910006, 1003, 32, 67, '2022-11-04'),
(910007, 1004, 25, 23, '2022-11-03'),
(910008, 1005, 35, 77, '2022-11-03'),
(910009, 1006, 47, 60, '2022-11-09'),
(910010, 1007, 32, 60, '2022-11-07'),
(910011, 1008, 30, 23, '2022-11-04'),
(910012, 1004, 15, 30, '2022-11-05'),
(910013, 1004, 66, 80, '2022-11-04'),
(910014, 1006, 41, 80, '2022-11-04'),
(910015, 1008, 35, 90, '2022-11-07'),
(910016, 1004, 35, 77, '2022-11-08'),
(910017, 1001, 32, 67, '2022-11-05'),
(910018, 1008, 25, 50, '2022-11-10');

-- --------------------------------------------------------

--
-- Table structure for table `Province`
--

CREATE TABLE `Province` (
  `province_id` int(50) NOT NULL COMMENT 'ID ของจังหวัด',
  `province_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ชื่อของจังหวัด',
  `sector_id` int(50) DEFAULT NULL COMMENT 'เป็นการบอกว่าจังหวัดนี้อยู่ภาคไหน ดึง ID มาจาก ภาค (Sector)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='จังหวัด By Art';

--
-- Dumping data for table `Province`
--

INSERT INTO `Province` (`province_id`, `province_name`, `sector_id`) VALUES
(1, 'กรุงเทพมหานคร', 1),
(2, 'สมุทรปราการ', 1),
(3, 'นครสวรรค์', 1);

-- --------------------------------------------------------

--
-- Table structure for table `RegisterPeopleSexTable`
--

CREATE TABLE `RegisterPeopleSexTable` (
  `register_people_sex_id` int(50) NOT NULL,
  `register_people_sex_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `RegisterPeopleSexTable`
--

INSERT INTO `RegisterPeopleSexTable` (`register_people_sex_id`, `register_people_sex_name`) VALUES
(1, 'ชาย'),
(2, 'หญิง'),
(3, 'ไม่ระบุ');

-- --------------------------------------------------------

--
-- Table structure for table `River`
--

CREATE TABLE `River` (
  `river_id` int(50) NOT NULL,
  `river_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `river_start` int(50) DEFAULT NULL,
  `river_finish` int(50) DEFAULT NULL,
  `river_finish_name` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='แม่น้ำ By Top';

--
-- Dumping data for table `River`
--

INSERT INTO `River` (`river_id`, `river_name`, `river_start`, `river_finish`, `river_finish_name`) VALUES
(1, 'แม่น้ำปิง', 1002, 1004, 0),
(2, 'แม่น้ำยม', 1006, 1002, 0),
(3, 'แม่น้ำน่าน', 1001, 1003, 0),
(4, 'แม่น้ำวัง', 1006, 1003, 0),
(5, 'แม่น้ำสะแกกรัง', 1002, 1006, 0),
(6, 'แม่น้ำท่าจีน', 1004, 1007, 0),
(7, 'แม่น้ำนครนายก', 1001, 1002, 0),
(8, 'แม่น้ำปราจีนบุรี', 1006, 1007, 0),
(9, 'แม่น้ำน้อย', 1006, 1003, 0),
(10, 'แม่น้ำลพบุรี', 1002, 1001, 0),
(11, 'แม่น้ำเจ้าพระยา', 1009, 1010, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Riverresult`
--

CREATE TABLE `Riverresult` (
  `riverresult_id` int(50) NOT NULL,
  `river_start` int(50) NOT NULL,
  `river_finish` int(50) NOT NULL,
  `canton_count` int(50) NOT NULL,
  `avg_distance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Sea`
--

CREATE TABLE `Sea` (
  `sea_id` int(50) NOT NULL,
  `sea_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='ทะเล By Top';

-- --------------------------------------------------------

--
-- Table structure for table `Sector`
--

CREATE TABLE `Sector` (
  `sector_id` int(50) NOT NULL COMMENT 'ID ของภาค',
  `sector_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ชื่อของภาค'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='ภาค By Art';

--
-- Dumping data for table `Sector`
--

INSERT INTO `Sector` (`sector_id`, `sector_name`) VALUES
(1, 'ภาคกลาง'),
(2, 'ภาคเหนือ'),
(3, 'ภาคใต้');

-- --------------------------------------------------------

--
-- Table structure for table `Shore`
--

CREATE TABLE `Shore` (
  `shore_id` int(50) NOT NULL,
  `canton_id` int(50) NOT NULL,
  `shore_hight` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Shore`
--

INSERT INTO `Shore` (`shore_id`, `canton_id`, `shore_hight`) VALUES
(1, 1001, 216.62),
(2, 1002, 175.36),
(3, 1003, 164.25),
(4, 1004, 151.9),
(5, 1005, 144.87),
(6, 1006, 142.41),
(7, 1007, 136.76);

-- --------------------------------------------------------

--
-- Table structure for table `SolStatus`
--

CREATE TABLE `SolStatus` (
  `solstatus_id` int(50) NOT NULL,
  `solstatus_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='สเตตัสแก้ไขปัญหา by :P';

--
-- Dumping data for table `SolStatus`
--

INSERT INTO `SolStatus` (`solstatus_id`, `solstatus_name`) VALUES
(1, 'อยู่ระหว่างแก้ไข'),
(2, 'แก้ไขเรียบร้อย');

-- --------------------------------------------------------

--
-- Table structure for table `SolvingSituation`
--

CREATE TABLE `SolvingSituation` (
  `solvingsituation_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='การแก้ไขสถานการณ์น้ำท่วม By อาบิ๊ด';

--
-- Dumping data for table `SolvingSituation`
--

INSERT INTO `SolvingSituation` (`solvingsituation_id`) VALUES
(1),
(2),
(3),
(4),
(5);

-- --------------------------------------------------------

--
-- Table structure for table `Staff`
--

CREATE TABLE `Staff` (
  `staff_id` int(50) NOT NULL,
  `staff_fname` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ชื่อจริง',
  `staff_sname` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'นามสกุล',
  `agency_id` int(50) DEFAULT NULL,
  `staffgen_id` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='เจ้าหน้าที่ by :P';

--
-- Dumping data for table `Staff`
--

INSERT INTO `Staff` (`staff_id`, `staff_fname`, `staff_sname`, `agency_id`, `staffgen_id`) VALUES
(9, 'เกริกวิทย์', 'เธียรนิติฐาดล', 10001, 1),
(10, 'เกวลิน', 'กิตติธนปกรณ์', 10001, 2),
(11, 'ไกรวิชญ์', 'พัฒนภิญญาดล', 10001, 1),
(12, 'จารุพิชญ์', 'จิรวราพงศ์ ', 10002, 2),
(13, 'ชนกาน', 'ขจรพงษ์สกุล', 10007, 1),
(14, 'ฉันทิต', 'ภักดีวัฒนากุล', 10002, 1),
(15, 'ณัฐภูมินทร์', 'เมธาพงศ์นิธิกุล', 10038, 3),
(16, 'เตวิช', 'วีริยะโสภณสกุล', 10055, 1),
(17, 'เชิญขวัญ', 'ปุญญธนาสกุล', 10038, 2),
(18, 'ชนิตพล', 'ธนจิรกานต์', 10057, 1),
(19, 'ชนกันต์', 'ธนาปรีชาสกุล', 10057, 1),
(20, 'ตุลธร', 'อัศวรักษ์โกศล', 10001, 3),
(22, 'เกนจิ', 'ชิมะดะ', 10002, 1);

-- --------------------------------------------------------

--
-- Table structure for table `StaffGender`
--

CREATE TABLE `StaffGender` (
  `staffgen_id` int(50) NOT NULL,
  `staffgen_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `StaffGender`
--

INSERT INTO `StaffGender` (`staffgen_id`, `staffgen_name`) VALUES
(1, 'ชาย'),
(2, 'หญิง'),
(3, 'ไม่ระบุ');

-- --------------------------------------------------------

--
-- Table structure for table `StaffOnSite`
--

CREATE TABLE `StaffOnSite` (
  `staffonsite_id` int(50) NOT NULL,
  `staff_id` int(50) NOT NULL,
  `solvingsituation_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='ข้อมูลเจ้าหน้าที่ที่ลงพื้นที่ในแต่ละวัน By อาบิ๊ด';

--
-- Dumping data for table `StaffOnSite`
--

INSERT INTO `StaffOnSite` (`staffonsite_id`, `staff_id`, `solvingsituation_id`) VALUES
(1001, 9, 920001),
(1002, 10, 920001),
(1003, 11, 920001),
(1004, 12, 920005),
(1005, 13, 920011),
(1006, 14, 920011),
(1007, 15, 920009),
(1008, 16, 930008),
(1009, 17, 930009),
(1010, 18, 920009),
(1011, 19, 920014),
(1012, 20, 920009),
(1013, 22, 920009);

-- --------------------------------------------------------

--
-- Table structure for table `SubArea`
--

CREATE TABLE `SubArea` (
  `sub_area_id` int(50) NOT NULL COMMENT 'ID ของพื้นที่ย่อย',
  `sub_area_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ชื่อของพื้นที่ย่อย',
  `sub_area_size` double NOT NULL COMMENT 'ขนาดของพื้นที่ย่อย หน่วย ตร.กม.',
  `sub_area_latitude` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'latitude ของพื้นที่ย่อย',
  `sub_area_longitude` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'longitude ของพื้นที่ย่อย',
  `sub_area_near_coastal` int(50) NOT NULL COMMENT 'บอกว่าใกล้ชายฝั่งหรือไม่ (Yes/No)',
  `type_sub_area_id` int(50) DEFAULT NULL COMMENT 'เป็นการดึงประเภทของพื้นที่ย่อย (ชุมชน/เศรษฐกิจ/เกษตรกรรม)',
  `canton_id` int(50) DEFAULT NULL COMMENT 'เป็นการดึงว่าพื้นที่ย่อยอยู่ใน ตำบลไหน จาก canton_id (Canton)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='พื้นที่ย่อย ฺBy Art';

--
-- Dumping data for table `SubArea`
--

INSERT INTO `SubArea` (`sub_area_id`, `sub_area_name`, `sub_area_size`, `sub_area_latitude`, `sub_area_longitude`, `sub_area_near_coastal`, `type_sub_area_id`, `canton_id`) VALUES
(1, 'หนามแดง', 713, '-', '-', 1, 3, 1001),
(2, 'บางผึ้ง', 761, '-', '-', 2, 3, 1001),
(3, 'บางบอน3', 36, '13.705272232874', '100.349211604103', 1, 3, 1008),
(5, 'บางครุ', 713, '-', '-', 2, 1, 1001),
(6, 'บางหญ้าแพรก	', 761, '-', '-', 1, 2, 1001),
(7, 'บางหัวเสือ', 814, '-', '-', 2, 3, 1001),
(8, 'สำโรงใต้', 523, '-', '-', 1, 2, 1001),
(9, 'บางยอ', 715, '-', '-', 2, 2, 1001),
(10, 'บางกะเจ้า', 1300, '-', '-', 1, 1, 1001),
(11, 'กำนันแม้น', 78, '13.6886314', '100.4304475', 1, 3, 1011),
(12, 'สวนพฤกษชาติ', 564, '123.42', '186.41', 2, 3, 1005),
(13, 'ชนันธร', 780, '134.56', '197.62', 2, 3, 1004),
(14, 'สายลมโฮมออฟฟิศ', 100, '195.56', '184.46', 2, 1, 1017),
(15, 'สุขสวัสดิ์', 259, '241.14', '674.22', 2, 1, 1017),
(7015, 'KuKPS', 255, '04526', '154515', 1, 2, 1005);

-- --------------------------------------------------------

--
-- Table structure for table `SummarySituation`
--

CREATE TABLE `SummarySituation` (
  `summary_situation_id` int(50) NOT NULL,
  `flood_information_id` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='สรุปสถานการณ์ภาพรวม By เพชร';

--
-- Dumping data for table `SummarySituation`
--

INSERT INTO `SummarySituation` (`summary_situation_id`, `flood_information_id`) VALUES
(1, 920001),
(5, 920005),
(6, 920013);

-- --------------------------------------------------------

--
-- Table structure for table `Tide`
--

CREATE TABLE `Tide` (
  `tide_id` int(50) NOT NULL COMMENT 'ID น้ำขึ้นน้ำลง',
  `tide_date` date DEFAULT NULL COMMENT 'วันที่น้ำขึ้นน้ำลง',
  `tide_time` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'เวลาน้ำขึ้นน้ำลง',
  `tide_water_level` double DEFAULT NULL COMMENT 'ความสูงระดับน้ำขึ้นน้ำลง',
  `type_tide_id` int(50) DEFAULT NULL COMMENT 'ID ประเภทน้ำขี้นน้ำลง'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='น้ำขึ้นน้ำลง By Big';

--
-- Dumping data for table `Tide`
--

INSERT INTO `Tide` (`tide_id`, `tide_date`, `tide_time`, `tide_water_level`, `type_tide_id`) VALUES
(1, '2022-11-07', '06:01', 0.88, 1),
(2, '2022-11-07', '00:36', -0.3, 2),
(3, '2022-11-07', '17:25', 1.14, 3),
(4, '2022-11-07', '12:20', 0.17, 4),
(5, '2022-11-08', '07:02', 1.04, 1),
(6, '2022-11-08', '01:18', -0.47, 2),
(7, '2022-11-08', '17:33', 1.11, 3),
(8, '2022-11-08', '13:06', 0.34, 4),
(9, '2022-11-09', '08:00', 1.14, 1),
(10, '2022-11-09', '01:59 ', -0.53, 2),
(11, '2022-11-09', '17:47', 1.1, 3),
(12, '2022-11-09', '13:34', 0.52, 4),
(13, '2022-11-10', '08:53', 1.19, 1),
(14, '2022-11-10', '02:38', -0.51, 2),
(15, '2022-11-10', '18:08', 1.09, 3),
(16, '2022-11-10', '13:43', 0.65, 4);

-- --------------------------------------------------------

--
-- Table structure for table `TypeSubArea`
--

CREATE TABLE `TypeSubArea` (
  `type_sub_area_id` int(50) NOT NULL COMMENT 'ID ประเภทพื้นที่ย่อย',
  `type_sub_area_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ชื่อของประเภทพื้่นที่ย่อย'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='ประเภทพื้นที่ย่อย By Art';

--
-- Dumping data for table `TypeSubArea`
--

INSERT INTO `TypeSubArea` (`type_sub_area_id`, `type_sub_area_name`) VALUES
(1, 'พื้นที่เศรษฐกิจ'),
(2, 'พื้นที่เกษตร'),
(3, 'พื้นที่ชุมชน');

-- --------------------------------------------------------

--
-- Table structure for table `TypeTide`
--

CREATE TABLE `TypeTide` (
  `type_tide_id` int(50) NOT NULL COMMENT 'ID ประเภทน้ำขึ้้นน้ำลง',
  `type_tide_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ชื่อประเภทน้ำขึ้้นน้ำลง'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='ประเภทน้ำขึ้นน้ำลง By Big';

--
-- Dumping data for table `TypeTide`
--

INSERT INTO `TypeTide` (`type_tide_id`, `type_tide_name`) VALUES
(1, 'น้ำขึ้นเต็มที่ช่วงเช้า'),
(2, 'น้ำขึ้นเต็มที่ช่วงบ่าย'),
(3, 'น้ำลงเต็มที่ช่วงเช้า'),
(4, 'น้ำลงเต็มที่ช่วงบ่าย');

-- --------------------------------------------------------

--
-- Table structure for table `WaterBarrier`
--

CREATE TABLE `WaterBarrier` (
  `waterbarrier_id` int(50) NOT NULL,
  `waterbarrier_name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `agency_id` int(50) NOT NULL,
  `sub_area_id` int(50) NOT NULL,
  `distance` double NOT NULL,
  `waterbarrier_height` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='แนวทางกั้นน้ำ by TAM';

--
-- Dumping data for table `WaterBarrier`
--

INSERT INTO `WaterBarrier` (`waterbarrier_id`, `waterbarrier_name`, `agency_id`, `sub_area_id`, `distance`, `waterbarrier_height`) VALUES
(7, 'ข้างโลตัส', 10001, 1, 25, 12),
(8, 'ข้างบิ๊กซีประชาอุทิศ', 10055, 5, 12, 1.46),
(9, 'สวนธน', 10055, 1, 15, 1.3),
(10, 'ใกล้ชนันธร', 10057, 3, 14, 1.19),
(11, 'การที่ดินเคหะคลองจั่น', 10038, 12, 17.5, 16),
(12, 'หมู่บ้านโคโนฮะ', 10001, 1, 35, 1.32),
(13, 'ข้างวัดไผ่ต้น', 10002, 14, 30, 15.2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `AddEquipmentDistrict`
--
ALTER TABLE `AddEquipmentDistrict`
  ADD KEY `equipment_id` (`agency_id`,`equipment_id`),
  ADD KEY `equipment_id_2` (`equipment_id`);

--
-- Indexes for table `Agency`
--
ALTER TABLE `Agency`
  ADD PRIMARY KEY (`agency_id`);

--
-- Indexes for table `Canton`
--
ALTER TABLE `Canton`
  ADD PRIMARY KEY (`canton_id`),
  ADD KEY `district_id` (`district_id`);

--
-- Indexes for table `DailyWork`
--
ALTER TABLE `DailyWork`
  ADD PRIMARY KEY (`dailywork_id`),
  ADD KEY `solving_id` (`solving_id`),
  ADD KEY `solvingsituation_id` (`solvingsituation_id`),
  ADD KEY `solving_sequence` (`solving_sequence`);

--
-- Indexes for table `Dam`
--
ALTER TABLE `Dam`
  ADD PRIMARY KEY (`dam_id`),
  ADD KEY `riverID` (`river_id`),
  ADD KEY `districtID` (`district_id`);

--
-- Indexes for table `DamRecord`
--
ALTER TABLE `DamRecord`
  ADD PRIMARY KEY (`dam_record_id`),
  ADD KEY `damID` (`dam_id`);

--
-- Indexes for table `DamReport`
--
ALTER TABLE `DamReport`
  ADD PRIMARY KEY (`dam_report_id`),
  ADD KEY `dam_id` (`dam_id`);

--
-- Indexes for table `District`
--
ALTER TABLE `District`
  ADD PRIMARY KEY (`district_id`),
  ADD KEY `province_id` (`province_id`);

--
-- Indexes for table `Equipment`
--
ALTER TABLE `Equipment`
  ADD PRIMARY KEY (`equipment_id`);

--
-- Indexes for table `FloodInformation`
--
ALTER TABLE `FloodInformation`
  ADD PRIMARY KEY (`flood_information_id`),
  ADD KEY `sub_area_id` (`sub_area_id`);

--
-- Indexes for table `Flowthroughcanton`
--
ALTER TABLE `Flowthroughcanton`
  ADD PRIMARY KEY (`flowthrough_id`),
  ADD KEY `river_id` (`river_id`,`canton_id`,`river_continue`),
  ADD KEY `canton_id` (`canton_id`),
  ADD KEY `river_continue` (`river_continue`);

--
-- Indexes for table `Flowthroughsubarea`
--
ALTER TABLE `Flowthroughsubarea`
  ADD PRIMARY KEY (`flowthroughsubarea_id`),
  ADD KEY `river_id` (`river_id`,`canton_id`,`subarea_id`),
  ADD KEY `canton_id` (`canton_id`),
  ADD KEY `subarea_id` (`subarea_id`);

--
-- Indexes for table `Forecast`
--
ALTER TABLE `Forecast`
  ADD PRIMARY KEY (`forecast_id`),
  ADD KEY `forecast_at_id` (`forecast_at_id`);

--
-- Indexes for table `ForecastAt`
--
ALTER TABLE `ForecastAt`
  ADD PRIMARY KEY (`forecast_at_id`);

--
-- Indexes for table `GaugingStation`
--
ALTER TABLE `GaugingStation`
  ADD PRIMARY KEY (`gaugingstation_id`),
  ADD KEY `river_id` (`river_id`);

--
-- Indexes for table `GaugingStationDaily`
--
ALTER TABLE `GaugingStationDaily`
  ADD PRIMARY KEY (`daily_id`),
  ADD KEY `gaugingstation_id` (`gaugingstation_id`);

--
-- Indexes for table `Grouping`
--
ALTER TABLE `Grouping`
  ADD PRIMARY KEY (`staffset_id`,`staff_id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Indexes for table `HealApprove`
--
ALTER TABLE `HealApprove`
  ADD PRIMARY KEY (`heal_approve_id`),
  ADD KEY `summary_situation_id` (`summary_situation_id`),
  ADD KEY `house_id` (`house_id`);

--
-- Indexes for table `House`
--
ALTER TABLE `House`
  ADD PRIMARY KEY (`house_id`),
  ADD KEY `sub_area_id` (`sub_area_id`);

--
-- Indexes for table `HouseRegistration`
--
ALTER TABLE `HouseRegistration`
  ADD PRIMARY KEY (`house_registration_id`),
  ADD KEY `house_id` (`house_id`),
  ADD KEY `registration_people_sex_id` (`registration_people_sex_id`);

--
-- Indexes for table `Issue`
--
ALTER TABLE `Issue`
  ADD PRIMARY KEY (`issue_id`);

--
-- Indexes for table `IssueList`
--
ALTER TABLE `IssueList`
  ADD PRIMARY KEY (`issuelist_id`),
  ADD KEY `issue_id` (`issue_id`),
  ADD KEY `observation_id` (`observation_id`);

--
-- Indexes for table `IssueSolving`
--
ALTER TABLE `IssueSolving`
  ADD PRIMARY KEY (`solving_id`,`solving_sequence`),
  ADD KEY `issuelist_id` (`issuelist_id`),
  ADD KEY `staffset_id` (`staffset_id`),
  ADD KEY `solstatus_id` (`solstatus_id`);

--
-- Indexes for table `MaterialHandling`
--
ALTER TABLE `MaterialHandling`
  ADD PRIMARY KEY (`materialhandling_id`),
  ADD KEY `equipment_id` (`equipment_id`),
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `solvingsituation_id` (`solvingsituation_id`);

--
-- Indexes for table `MoneyPerFamily`
--
ALTER TABLE `MoneyPerFamily`
  ADD PRIMARY KEY (`pay_family_id`),
  ADD KEY `heal_approve_id` (`heal_approve_id`);

--
-- Indexes for table `MoneyPerPerson`
--
ALTER TABLE `MoneyPerPerson`
  ADD PRIMARY KEY (`heal_person_id`),
  ADD KEY `heal_approve_id` (`heal_approve_id`);

--
-- Indexes for table `Observation`
--
ALTER TABLE `Observation`
  ADD PRIMARY KEY (`observation_id`),
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `waterbarrier_id` (`waterbarrier_id`);

--
-- Indexes for table `OptionNearCoastal`
--
ALTER TABLE `OptionNearCoastal`
  ADD PRIMARY KEY (`sub_area_near_coastal`);

--
-- Indexes for table `PrecipitationStorage`
--
ALTER TABLE `PrecipitationStorage`
  ADD PRIMARY KEY (`precipitation_storage_id`),
  ADD KEY `canton_id` (`canton_id`);

--
-- Indexes for table `Province`
--
ALTER TABLE `Province`
  ADD PRIMARY KEY (`province_id`),
  ADD KEY `sector_id` (`sector_id`);

--
-- Indexes for table `RegisterPeopleSexTable`
--
ALTER TABLE `RegisterPeopleSexTable`
  ADD PRIMARY KEY (`register_people_sex_id`);

--
-- Indexes for table `River`
--
ALTER TABLE `River`
  ADD PRIMARY KEY (`river_id`),
  ADD KEY `river_start` (`river_start`),
  ADD KEY `river_finish` (`river_finish`),
  ADD KEY `river_finish_name` (`river_finish_name`);

--
-- Indexes for table `Riverresult`
--
ALTER TABLE `Riverresult`
  ADD PRIMARY KEY (`riverresult_id`),
  ADD KEY `river_start` (`river_start`),
  ADD KEY `river_finish` (`river_finish`);

--
-- Indexes for table `Sea`
--
ALTER TABLE `Sea`
  ADD PRIMARY KEY (`sea_id`);

--
-- Indexes for table `Sector`
--
ALTER TABLE `Sector`
  ADD PRIMARY KEY (`sector_id`);

--
-- Indexes for table `Shore`
--
ALTER TABLE `Shore`
  ADD PRIMARY KEY (`shore_id`),
  ADD KEY `canton_id` (`canton_id`);

--
-- Indexes for table `SolStatus`
--
ALTER TABLE `SolStatus`
  ADD PRIMARY KEY (`solstatus_id`);

--
-- Indexes for table `SolvingSituation`
--
ALTER TABLE `SolvingSituation`
  ADD PRIMARY KEY (`solvingsituation_id`);

--
-- Indexes for table `Staff`
--
ALTER TABLE `Staff`
  ADD PRIMARY KEY (`staff_id`),
  ADD KEY `agency_id` (`agency_id`),
  ADD KEY `staffgen_id` (`staffgen_id`);

--
-- Indexes for table `StaffGender`
--
ALTER TABLE `StaffGender`
  ADD PRIMARY KEY (`staffgen_id`);

--
-- Indexes for table `StaffOnSite`
--
ALTER TABLE `StaffOnSite`
  ADD PRIMARY KEY (`staffonsite_id`),
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `flood_information_id` (`solvingsituation_id`);

--
-- Indexes for table `SubArea`
--
ALTER TABLE `SubArea`
  ADD PRIMARY KEY (`sub_area_id`),
  ADD KEY `type_sub_area_id` (`type_sub_area_id`),
  ADD KEY `canton_id` (`canton_id`),
  ADD KEY `sub_area_near_coastal` (`sub_area_near_coastal`);

--
-- Indexes for table `SummarySituation`
--
ALTER TABLE `SummarySituation`
  ADD PRIMARY KEY (`summary_situation_id`),
  ADD UNIQUE KEY `flood_area_id` (`flood_information_id`);

--
-- Indexes for table `Tide`
--
ALTER TABLE `Tide`
  ADD PRIMARY KEY (`tide_id`),
  ADD KEY `type_tide_id` (`type_tide_id`);

--
-- Indexes for table `TypeSubArea`
--
ALTER TABLE `TypeSubArea`
  ADD PRIMARY KEY (`type_sub_area_id`);

--
-- Indexes for table `TypeTide`
--
ALTER TABLE `TypeTide`
  ADD PRIMARY KEY (`type_tide_id`);

--
-- Indexes for table `WaterBarrier`
--
ALTER TABLE `WaterBarrier`
  ADD PRIMARY KEY (`waterbarrier_id`),
  ADD KEY `agency_id` (`agency_id`),
  ADD KEY `sub_area_id` (`sub_area_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Canton`
--
ALTER TABLE `Canton`
  MODIFY `canton_id` int(50) NOT NULL AUTO_INCREMENT COMMENT 'ID ของตำบล', AUTO_INCREMENT=1018;
--
-- AUTO_INCREMENT for table `DailyWork`
--
ALTER TABLE `DailyWork`
  MODIFY `dailywork_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100002;
--
-- AUTO_INCREMENT for table `Dam`
--
ALTER TABLE `Dam`
  MODIFY `dam_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `DamRecord`
--
ALTER TABLE `DamRecord`
  MODIFY `dam_record_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `DamReport`
--
ALTER TABLE `DamReport`
  MODIFY `dam_report_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `District`
--
ALTER TABLE `District`
  MODIFY `district_id` int(50) NOT NULL AUTO_INCREMENT COMMENT 'ID ของอำเภอ', AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `Equipment`
--
ALTER TABLE `Equipment`
  MODIFY `equipment_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `FloodInformation`
--
ALTER TABLE `FloodInformation`
  MODIFY `flood_information_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=930012;
--
-- AUTO_INCREMENT for table `Flowthroughcanton`
--
ALTER TABLE `Flowthroughcanton`
  MODIFY `flowthrough_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT for table `Flowthroughsubarea`
--
ALTER TABLE `Flowthroughsubarea`
  MODIFY `flowthroughsubarea_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `Forecast`
--
ALTER TABLE `Forecast`
  MODIFY `forecast_id` int(50) NOT NULL AUTO_INCREMENT COMMENT 'ID การพยากรณ์อากาศ', AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `ForecastAt`
--
ALTER TABLE `ForecastAt`
  MODIFY `forecast_at_id` int(50) NOT NULL AUTO_INCREMENT COMMENT 'ID ตำแหน่งการพยากรณ์อากาศ', AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `GaugingStation`
--
ALTER TABLE `GaugingStation`
  MODIFY `gaugingstation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `GaugingStationDaily`
--
ALTER TABLE `GaugingStationDaily`
  MODIFY `daily_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `HealApprove`
--
ALTER TABLE `HealApprove`
  MODIFY `heal_approve_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id เยียวยา', AUTO_INCREMENT=667;
--
-- AUTO_INCREMENT for table `House`
--
ALTER TABLE `House`
  MODIFY `house_id` int(50) NOT NULL AUTO_INCREMENT COMMENT 'ID ของบ้าน', AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `HouseRegistration`
--
ALTER TABLE `HouseRegistration`
  MODIFY `house_registration_id` int(50) NOT NULL AUTO_INCREMENT COMMENT 'ID ของทะเบียนบ้าน', AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `Issue`
--
ALTER TABLE `Issue`
  MODIFY `issue_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `IssueList`
--
ALTER TABLE `IssueList`
  MODIFY `issuelist_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `MaterialHandling`
--
ALTER TABLE `MaterialHandling`
  MODIFY `materialhandling_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10011;
--
-- AUTO_INCREMENT for table `MoneyPerFamily`
--
ALTER TABLE `MoneyPerFamily`
  MODIFY `pay_family_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `MoneyPerPerson`
--
ALTER TABLE `MoneyPerPerson`
  MODIFY `heal_person_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7778;
--
-- AUTO_INCREMENT for table `Observation`
--
ALTER TABLE `Observation`
  MODIFY `observation_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `OptionNearCoastal`
--
ALTER TABLE `OptionNearCoastal`
  MODIFY `sub_area_near_coastal` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `PrecipitationStorage`
--
ALTER TABLE `PrecipitationStorage`
  MODIFY `precipitation_storage_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=910020;
--
-- AUTO_INCREMENT for table `Province`
--
ALTER TABLE `Province`
  MODIFY `province_id` int(50) NOT NULL AUTO_INCREMENT COMMENT 'ID ของจังหวัด', AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `RegisterPeopleSexTable`
--
ALTER TABLE `RegisterPeopleSexTable`
  MODIFY `register_people_sex_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `River`
--
ALTER TABLE `River`
  MODIFY `river_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `Sea`
--
ALTER TABLE `Sea`
  MODIFY `sea_id` int(50) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Sector`
--
ALTER TABLE `Sector`
  MODIFY `sector_id` int(50) NOT NULL AUTO_INCREMENT COMMENT 'ID ของภาค', AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `Shore`
--
ALTER TABLE `Shore`
  MODIFY `shore_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `SolStatus`
--
ALTER TABLE `SolStatus`
  MODIFY `solstatus_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `SolvingSituation`
--
ALTER TABLE `SolvingSituation`
  MODIFY `solvingsituation_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `Staff`
--
ALTER TABLE `Staff`
  MODIFY `staff_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `StaffGender`
--
ALTER TABLE `StaffGender`
  MODIFY `staffgen_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `StaffOnSite`
--
ALTER TABLE `StaffOnSite`
  MODIFY `staffonsite_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10002;
--
-- AUTO_INCREMENT for table `SubArea`
--
ALTER TABLE `SubArea`
  MODIFY `sub_area_id` int(50) NOT NULL AUTO_INCREMENT COMMENT 'ID ของพื้นที่ย่อย', AUTO_INCREMENT=7016;
--
-- AUTO_INCREMENT for table `SummarySituation`
--
ALTER TABLE `SummarySituation`
  MODIFY `summary_situation_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=930003;
--
-- AUTO_INCREMENT for table `Tide`
--
ALTER TABLE `Tide`
  MODIFY `tide_id` int(50) NOT NULL AUTO_INCREMENT COMMENT 'ID น้ำขึ้นน้ำลง', AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `TypeSubArea`
--
ALTER TABLE `TypeSubArea`
  MODIFY `type_sub_area_id` int(50) NOT NULL AUTO_INCREMENT COMMENT 'ID ประเภทพื้นที่ย่อย', AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `WaterBarrier`
--
ALTER TABLE `WaterBarrier`
  MODIFY `waterbarrier_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `AddEquipmentDistrict`
--
ALTER TABLE `AddEquipmentDistrict`
  ADD CONSTRAINT `AddEquipmentDistrict_ibfk_1` FOREIGN KEY (`agency_id`) REFERENCES `Agency` (`agency_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `AddEquipmentDistrict_ibfk_2` FOREIGN KEY (`equipment_id`) REFERENCES `Equipment` (`equipment_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Canton`
--
ALTER TABLE `Canton`
  ADD CONSTRAINT `Canton_ibfk_1` FOREIGN KEY (`district_id`) REFERENCES `District` (`district_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `DailyWork`
--
ALTER TABLE `DailyWork`
  ADD CONSTRAINT `DailyWork_ibfk_2` FOREIGN KEY (`solvingsituation_id`) REFERENCES `FloodInformation` (`flood_information_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `DailyWork_ibfk_3` FOREIGN KEY (`solving_id`) REFERENCES `IssueSolving` (`solving_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Dam`
--
ALTER TABLE `Dam`
  ADD CONSTRAINT `Dam_ibfk_1` FOREIGN KEY (`district_id`) REFERENCES `District` (`district_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Dam_ibfk_2` FOREIGN KEY (`river_id`) REFERENCES `River` (`river_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `DamRecord`
--
ALTER TABLE `DamRecord`
  ADD CONSTRAINT `DamRecord_ibfk_1` FOREIGN KEY (`dam_id`) REFERENCES `Dam` (`dam_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `DamReport`
--
ALTER TABLE `DamReport`
  ADD CONSTRAINT `DamReport_ibfk_1` FOREIGN KEY (`dam_id`) REFERENCES `Dam` (`dam_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `District`
--
ALTER TABLE `District`
  ADD CONSTRAINT `District_ibfk_1` FOREIGN KEY (`province_id`) REFERENCES `Province` (`province_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `FloodInformation`
--
ALTER TABLE `FloodInformation`
  ADD CONSTRAINT `FloodInformation_ibfk_1` FOREIGN KEY (`sub_area_id`) REFERENCES `SubArea` (`sub_area_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Flowthroughcanton`
--
ALTER TABLE `Flowthroughcanton`
  ADD CONSTRAINT `Flowthroughcanton_ibfk_1` FOREIGN KEY (`river_id`) REFERENCES `River` (`river_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Flowthroughcanton_ibfk_2` FOREIGN KEY (`canton_id`) REFERENCES `Canton` (`canton_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Flowthroughcanton_ibfk_3` FOREIGN KEY (`river_continue`) REFERENCES `River` (`river_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Flowthroughsubarea`
--
ALTER TABLE `Flowthroughsubarea`
  ADD CONSTRAINT `Flowthroughsubarea_ibfk_1` FOREIGN KEY (`river_id`) REFERENCES `River` (`river_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Flowthroughsubarea_ibfk_2` FOREIGN KEY (`canton_id`) REFERENCES `Canton` (`canton_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Flowthroughsubarea_ibfk_3` FOREIGN KEY (`subarea_id`) REFERENCES `SubArea` (`sub_area_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Forecast`
--
ALTER TABLE `Forecast`
  ADD CONSTRAINT `Forecast_ibfk_1` FOREIGN KEY (`forecast_at_id`) REFERENCES `ForecastAt` (`forecast_at_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `GaugingStation`
--
ALTER TABLE `GaugingStation`
  ADD CONSTRAINT `GaugingStation_ibfk_1` FOREIGN KEY (`river_id`) REFERENCES `River` (`river_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `GaugingStationDaily`
--
ALTER TABLE `GaugingStationDaily`
  ADD CONSTRAINT `GaugingStationDaily_ibfk_1` FOREIGN KEY (`gaugingstation_id`) REFERENCES `GaugingStation` (`gaugingstation_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Grouping`
--
ALTER TABLE `Grouping`
  ADD CONSTRAINT `Grouping_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `Staff` (`staff_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `HealApprove`
--
ALTER TABLE `HealApprove`
  ADD CONSTRAINT `HealApprove_ibfk_1` FOREIGN KEY (`summary_situation_id`) REFERENCES `SummarySituation` (`summary_situation_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `HealApprove_ibfk_2` FOREIGN KEY (`house_id`) REFERENCES `House` (`house_id`);

--
-- Constraints for table `House`
--
ALTER TABLE `House`
  ADD CONSTRAINT `House_ibfk_1` FOREIGN KEY (`sub_area_id`) REFERENCES `SubArea` (`sub_area_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `HouseRegistration`
--
ALTER TABLE `HouseRegistration`
  ADD CONSTRAINT `HouseRegistration_ibfk_1` FOREIGN KEY (`house_id`) REFERENCES `House` (`house_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `HouseRegistration_ibfk_2` FOREIGN KEY (`registration_people_sex_id`) REFERENCES `RegisterPeopleSexTable` (`register_people_sex_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `IssueList`
--
ALTER TABLE `IssueList`
  ADD CONSTRAINT `IssueList_ibfk_1` FOREIGN KEY (`observation_id`) REFERENCES `Observation` (`observation_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `IssueList_ibfk_2` FOREIGN KEY (`issue_id`) REFERENCES `Issue` (`issue_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `IssueSolving`
--
ALTER TABLE `IssueSolving`
  ADD CONSTRAINT `IssueSolving_ibfk_2` FOREIGN KEY (`issuelist_id`) REFERENCES `IssueList` (`issuelist_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `IssueSolving_ibfk_4` FOREIGN KEY (`solstatus_id`) REFERENCES `SolStatus` (`solstatus_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `IssueSolving_ibfk_5` FOREIGN KEY (`staffset_id`) REFERENCES `Grouping` (`staffset_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `MaterialHandling`
--
ALTER TABLE `MaterialHandling`
  ADD CONSTRAINT `MaterialHandling_ibfk_2` FOREIGN KEY (`equipment_id`) REFERENCES `Equipment` (`equipment_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `MaterialHandling_ibfk_3` FOREIGN KEY (`staff_id`) REFERENCES `StaffOnSite` (`staff_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `MaterialHandling_ibfk_4` FOREIGN KEY (`solvingsituation_id`) REFERENCES `FloodInformation` (`flood_information_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `MoneyPerFamily`
--
ALTER TABLE `MoneyPerFamily`
  ADD CONSTRAINT `MoneyPerFamily_ibfk_1` FOREIGN KEY (`heal_approve_id`) REFERENCES `HealApprove` (`heal_approve_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `MoneyPerPerson`
--
ALTER TABLE `MoneyPerPerson`
  ADD CONSTRAINT `MoneyPerPerson_ibfk_1` FOREIGN KEY (`heal_approve_id`) REFERENCES `HealApprove` (`heal_approve_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Observation`
--
ALTER TABLE `Observation`
  ADD CONSTRAINT `Observation_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `Staff` (`staff_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Observation_ibfk_2` FOREIGN KEY (`waterbarrier_id`) REFERENCES `WaterBarrier` (`waterbarrier_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `PrecipitationStorage`
--
ALTER TABLE `PrecipitationStorage`
  ADD CONSTRAINT `PrecipitationStorage_ibfk_1` FOREIGN KEY (`canton_id`) REFERENCES `Canton` (`canton_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Province`
--
ALTER TABLE `Province`
  ADD CONSTRAINT `Province_ibfk_1` FOREIGN KEY (`sector_id`) REFERENCES `Sector` (`sector_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `River`
--
ALTER TABLE `River`
  ADD CONSTRAINT `River_ibfk_1` FOREIGN KEY (`river_start`) REFERENCES `Canton` (`canton_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `River_ibfk_2` FOREIGN KEY (`river_finish`) REFERENCES `Canton` (`canton_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Riverresult`
--
ALTER TABLE `Riverresult`
  ADD CONSTRAINT `Riverresult_ibfk_1` FOREIGN KEY (`river_start`) REFERENCES `River` (`river_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Riverresult_ibfk_2` FOREIGN KEY (`river_finish`) REFERENCES `River` (`river_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Shore`
--
ALTER TABLE `Shore`
  ADD CONSTRAINT `Shore_ibfk_1` FOREIGN KEY (`canton_id`) REFERENCES `Canton` (`canton_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Staff`
--
ALTER TABLE `Staff`
  ADD CONSTRAINT `Staff_ibfk_1` FOREIGN KEY (`agency_id`) REFERENCES `Agency` (`agency_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Staff_ibfk_2` FOREIGN KEY (`staffgen_id`) REFERENCES `StaffGender` (`staffgen_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `StaffOnSite`
--
ALTER TABLE `StaffOnSite`
  ADD CONSTRAINT `StaffOnSite_ibfk_2` FOREIGN KEY (`staff_id`) REFERENCES `Staff` (`staff_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `flood` FOREIGN KEY (`solvingsituation_id`) REFERENCES `FloodInformation` (`flood_information_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `SubArea`
--
ALTER TABLE `SubArea`
  ADD CONSTRAINT `SubArea_ibfk_1` FOREIGN KEY (`type_sub_area_id`) REFERENCES `TypeSubArea` (`type_sub_area_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `SubArea_ibfk_2` FOREIGN KEY (`canton_id`) REFERENCES `Canton` (`canton_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `SubArea_ibfk_3` FOREIGN KEY (`sub_area_near_coastal`) REFERENCES `OptionNearCoastal` (`sub_area_near_coastal`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `SummarySituation`
--
ALTER TABLE `SummarySituation`
  ADD CONSTRAINT `SummarySituation_ibfk_1` FOREIGN KEY (`flood_information_id`) REFERENCES `FloodInformation` (`flood_information_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Tide`
--
ALTER TABLE `Tide`
  ADD CONSTRAINT `Tide_ibfk_1` FOREIGN KEY (`type_tide_id`) REFERENCES `TypeTide` (`type_tide_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `WaterBarrier`
--
ALTER TABLE `WaterBarrier`
  ADD CONSTRAINT `WaterBarrier_ibfk_2` FOREIGN KEY (`sub_area_id`) REFERENCES `SubArea` (`sub_area_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `WaterBarrier_ibfk_3` FOREIGN KEY (`agency_id`) REFERENCES `Agency` (`agency_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
