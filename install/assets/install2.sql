-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th10 07, 2017 lúc 05:56 AM
-- Phiên bản máy phục vụ: 10.1.24-MariaDB-cll-lve
-- Phiên bản PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `lrandomd_restaurant`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(11) NOT NULL,
  `path` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `parent_id` bigint(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `path`, `name`, `created_at`, `updated_at`, `parent_id`) VALUES
(39, 'uploads/categories/39_2017/0c20940048b30c616b2d7b3b5b7a48e3.jpg', 'Drink & BreakFast', '2017-07-13 22:01:44', '2017-07-13 22:01:44', 0),
(42, 'uploads/categories/39_2017/14943f33d7daec6ad16718965672a02b.jpg', 'Salads', '2017-07-21 19:49:24', '2017-07-21 19:49:24', 0),
(44, 'uploads/categories/39_2017/5d29a7be02b1a99db0f102c8d67f8453.jpg', 'SeaFood', '2017-07-21 19:54:55', '2017-07-21 19:54:55', 0),
(45, 'uploads/categories/39_2017/368bf10695edf91ce0d24f99c540b81b.jpg', 'Snacks & Sides', '2017-07-21 19:55:54', '2017-07-21 19:55:54', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `full_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `content` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `is_read` tinyint(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `contacts`
--

INSERT INTO `contacts` (`id`, `subject`, `full_name`, `email`, `phone`, `content`, `updated_at`, `created_at`, `is_read`) VALUES
(12, 'CONTACT RESTAURANT', 'a', 'd', NULL, 'C', '2017-08-15 20:35:05', '2017-08-15 20:35:05', 1),
(13, 'CONTACT RESTAURANT', 'Armin', 'ahmetovix@gmail.com', NULL, 'Hello thanks you', '2017-08-30 06:50:58', '2017-08-30 06:50:58', 1),
(17, 'CONTACT RESTAURANT', 'Sam davido', 'sam@live.fr', NULL, 'Merci ', '2017-09-09 00:29:05', '2017-09-09 00:29:05', 1),
(19, 'CONTACT RESTAURANT', 'sdfgsd', 'sgdfg', NULL, 'fdgdfgs', '2017-09-17 06:36:09', '2017-09-17 06:36:09', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `countries`
--

CREATE TABLE `countries` (
  `id` int(3) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iso_alpha2` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iso_alpha3` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iso_numeric` int(11) DEFAULT NULL,
  `currency_code` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_name` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_symbol` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `flag` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `countries`
--

INSERT INTO `countries` (`id`, `name`, `iso_alpha2`, `iso_alpha3`, `iso_numeric`, `currency_code`, `currency_name`, `currency_symbol`, `flag`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', 4, 'AFN', 'Afg', '؋', 'AF.png'),
(2, 'Albania', 'AL', 'ALB', 8, 'ALL', 'Lek', 'Lek', 'AL.png'),
(3, 'Algeria', 'DZ', 'DZA', 12, 'DZD', 'Din', 'دج', 'DZ.png'),
(4, 'American Samoa', 'AS', 'ASM', 16, 'USD', 'Dol', '$', 'AS.png'),
(5, 'Andorra', 'AD', 'AND', 20, 'EUR', 'Eur', '€', 'AD.png'),
(6, 'Angola', 'AO', 'AGO', 24, 'AOA', 'Kwa', 'Kz', 'AO.png'),
(7, 'Anguilla', 'AI', 'AIA', 660, 'XCD', 'Dol', '$', 'AI.png'),
(8, 'Antarctica', 'AQ', 'ATA', 10, '', '', NULL, 'AQ.png'),
(9, 'Antigua and Barbuda', 'AG', 'ATG', 28, 'XCD', 'Dol', '$', 'AG.png'),
(10, 'Argentina', 'AR', 'ARG', 32, 'ARS', 'Pes', '$', 'AR.png'),
(11, 'Armenia', 'AM', 'ARM', 51, 'AMD', 'Dra', NULL, 'AM.png'),
(12, 'Aruba', 'AW', 'ABW', 533, 'AWG', 'Gui', 'Æ’', 'AW.png'),
(13, 'Australia', 'AU', 'AUS', 36, 'AUD', 'Dol', '$', 'AU.png'),
(14, 'Austria', 'AT', 'AUT', 40, 'EUR', 'Eur', '€', 'AT.png'),
(15, 'Azerbaijan', 'AZ', 'AZE', 31, 'AZN', 'Man', 'Ð¼Ð°Ð½', 'AZ.png'),
(16, 'Bahamas', 'BS', 'BHS', 44, 'BSD', 'Dol', '$', 'BS.png'),
(17, 'Bahrain', 'BH', 'BHR', 48, 'BHD', 'Din', NULL, 'BH.png'),
(18, 'Bangladesh', 'BD', 'BGD', 50, 'BDT', 'Tak', NULL, 'BD.png'),
(19, 'Barbados', 'BB', 'BRB', 52, 'BBD', 'Dol', '$', 'BB.png'),
(20, 'Belarus', 'BY', 'BLR', 112, 'BYR', 'Rub', 'p.', 'BY.png'),
(21, 'Belgium', 'BE', 'BEL', 56, 'EUR', 'Eur', '€', 'BE.png'),
(22, 'Belize', 'BZ', 'BLZ', 84, 'BZD', 'Dol', 'BZ$', 'BZ.png'),
(23, 'Benin', 'BJ', 'BEN', 204, 'XOF', 'Fra', NULL, 'BJ.png'),
(24, 'Bermuda', 'BM', 'BMU', 60, 'BMD', 'Dol', '$', 'BM.png'),
(25, 'Bhutan', 'BT', 'BTN', 64, 'BTN', 'Ngu', NULL, 'BT.png'),
(26, 'Bolivia', 'BO', 'BOL', 68, 'BOB', 'Bol', '$b', 'BO.png'),
(27, 'Bosnia and Herzegovina', 'BA', 'BIH', 70, 'BAM', 'Mar', 'KM', 'BA.png'),
(28, 'Botswana', 'BW', 'BWA', 72, 'BWP', 'Pul', 'P', 'BW.png'),
(29, 'Bouvet Island', 'BV', 'BVT', 74, 'NOK', 'Kro', 'kr', 'BV.png'),
(30, 'Brazil', 'BR', 'BRA', 76, 'BRL', 'Rea', 'R$', 'BR.png'),
(31, 'British Indian Ocean Territory', 'IO', 'IOT', 86, 'USD', 'Dol', '$', 'IO.png'),
(32, 'British Virgin Islands', 'VG', 'VGB', 92, 'USD', 'Dol', '$', 'VG.png'),
(33, 'Brunei', 'BN', 'BRN', 96, 'BND', 'Dol', '$', 'BN.png'),
(34, 'Bulgaria', 'BG', 'BGR', 100, 'BGN', 'Lev', 'лъв', 'BG.png'),
(35, 'Burkina Faso', 'BF', 'BFA', 854, 'XOF', 'Fra', NULL, 'BF.png'),
(36, 'Burundi', 'BI', 'BDI', 108, 'BIF', 'Fra', NULL, 'BI.png'),
(37, 'Cambodia', 'KH', 'KHM', 116, 'KHR', 'Rie', '‎៛', 'KH.png'),
(38, 'Cameroon', 'CM', 'CMR', 120, 'XAF', 'Fra', 'FCF', 'CM.png'),
(39, 'Canada', 'CA', 'CAN', 124, 'CAD', 'Dol', '$', 'CA.png'),
(40, 'Cape Verde', 'CV', 'CPV', 132, 'CVE', 'Esc', NULL, 'CV.png'),
(41, 'Cayman Islands', 'KY', 'CYM', 136, 'KYD', 'Dol', '$', 'KY.png'),
(42, 'Central African Republic', 'CF', 'CAF', 140, 'XAF', 'Fra', 'FCF', 'CF.png'),
(43, 'Chad', 'TD', 'TCD', 148, 'XAF', 'Fra', NULL, 'TD.png'),
(44, 'Chile', 'CL', 'CHL', 152, 'CLP', 'Pes', NULL, 'CL.png'),
(45, 'China', 'CN', 'CHN', 156, 'CNY', 'Yua', '¥', 'CN.png'),
(46, 'Christmas Island', 'CX', 'CXR', 162, 'AUD', 'Dol', '$', 'CX.png'),
(47, 'Cocos Islands', 'CC', 'CCK', 166, 'AUD', 'Dol', '$', 'CC.png'),
(48, 'Colombia', 'CO', 'COL', 170, 'COP', 'Pes', '$', 'CO.png'),
(49, 'Comoros', 'KM', 'COM', 174, 'KMF', 'Fra', NULL, 'KM.png'),
(50, 'Cook Islands', 'CK', 'COK', 184, 'NZD', 'Dol', '$', 'CK.png'),
(51, 'Costa Rica', 'CR', 'CRI', 188, 'CRC', 'Col', '₡', 'CR.png'),
(52, 'Croatia', 'HR', 'HRV', 191, 'HRK', 'Kun', 'kn', 'HR.png'),
(53, 'Cuba', 'CU', 'CUB', 192, 'CUP', 'Pes', '₱', 'CU.png'),
(54, 'Cyprus', 'CY', 'CYP', 196, 'CYP', 'Pou', NULL, 'CY.png'),
(55, 'Czech Republic', 'CZ', 'CZE', 203, 'CZK', 'Kor', 'Kč', 'CZ.png'),
(56, 'Democratic Republic of the Congo', 'CD', 'COD', 180, 'CDF', 'Fra', NULL, 'CD.png'),
(57, 'Denmark', 'DK', 'DNK', 208, 'DKK', 'Kro', 'kr', 'DK.png'),
(58, 'Djibouti', 'DJ', 'DJI', 262, 'DJF', 'Fra', NULL, 'DJ.png'),
(59, 'Dominica', 'DM', 'DMA', 212, 'XCD', 'Dol', '$', 'DM.png'),
(60, 'Dominican Republic', 'DO', 'DOM', 214, 'DOP', 'Pes', 'RD$', 'DO.png'),
(61, 'East Timor', 'TL', 'TLS', 626, 'USD', 'Dol', '$', 'TL.png'),
(62, 'Ecuador', 'EC', 'ECU', 218, 'USD', 'Dol', '$', 'EC.png'),
(63, 'Egypt', 'EG', 'EGY', 818, 'EGP', 'Pou', 'E£', 'EG.png'),
(64, 'El Salvador', 'SV', 'SLV', 222, 'SVC', 'Col', '$', 'SV.png'),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', 226, 'XAF', 'Fra', 'FCF', 'GQ.png'),
(66, 'Eritrea', 'ER', 'ERI', 232, 'ERN', 'Nak', 'Nfk', 'ER.png'),
(67, 'Estonia', 'EE', 'EST', 233, 'EEK', 'Kro', 'kr', 'EE.png'),
(68, 'Ethiopia', 'ET', 'ETH', 231, 'ETB', 'Bir', NULL, 'ET.png'),
(69, 'Falkland Islands', 'FK', 'FLK', 238, 'FKP', 'Pou', 'Â£', 'FK.png'),
(70, 'Faroe Islands', 'FO', 'FRO', 234, 'DKK', 'Kro', 'kr', 'FO.png'),
(71, 'Fiji', 'FJ', 'FJI', 242, 'FJD', 'Dol', '$', 'FJ.png'),
(72, 'Finland', 'FI', 'FIN', 246, 'EUR', 'Eur', '€', 'FI.png'),
(73, 'France', 'FR', 'FRA', 250, 'EUR', 'Eur', '€', 'FR.png'),
(74, 'French Guiana', 'GF', 'GUF', 254, 'EUR', 'Eur', '€', 'GF.png'),
(75, 'French Polynesia', 'PF', 'PYF', 258, 'XPF', 'Fra', NULL, 'PF.png'),
(76, 'French Southern Territories', 'TF', 'ATF', 260, 'EUR', 'Eur', '€', 'TF.png'),
(77, 'Gabon', 'GA', 'GAB', 266, 'XAF', 'Fra', 'FCF', 'GA.png'),
(78, 'Gambia', 'GM', 'GMB', 270, 'GMD', 'Dal', 'D', 'GM.png'),
(79, 'Georgia', 'GE', 'GEO', 268, 'GEL', 'Lar', NULL, 'GE.png'),
(80, 'Germany', 'DE', 'DEU', 276, 'EUR', 'Eur', '€', 'DE.png'),
(81, 'Ghana', 'GH', 'GHA', 288, 'GHC', 'Ced', '‎GH₵ ', 'GH.png'),
(82, 'Gibraltar', 'GI', 'GIB', 292, 'GIP', 'Pou', '£', 'GI.png'),
(83, 'Greece', 'GR', 'GRC', 300, 'EUR', 'Eur', '€', 'GR.png'),
(84, 'Greenland', 'GL', 'GRL', 304, 'DKK', 'Kro', 'kr', 'GL.png'),
(85, 'Grenada', 'GD', 'GRD', 308, 'XCD', 'Dol', '$', 'GD.png'),
(86, 'Guadeloupe', 'GP', 'GLP', 312, 'EUR', 'Eur', '€', 'GP.png'),
(87, 'Guam', 'GU', 'GUM', 316, 'USD', 'Dol', '$', 'GU.png'),
(88, 'Guatemala', 'GT', 'GTM', 320, 'GTQ', 'Que', 'Q', 'GT.png'),
(89, 'Guinea', 'GN', 'GIN', 324, 'GNF', 'Fra', NULL, 'GN.png'),
(90, 'Guinea-Bissau', 'GW', 'GNB', 624, 'XOF', 'Fra', NULL, 'GW.png'),
(91, 'Guyana', 'GY', 'GUY', 328, 'GYD', 'Dol', '$', 'GY.png'),
(92, 'Haiti', 'HT', 'HTI', 332, 'HTG', 'Gou', 'G', 'HT.png'),
(93, 'Heard Island and McDonald Islands', 'HM', 'HMD', 334, 'AUD', 'Dol', '$', 'HM.png'),
(94, 'Honduras', 'HN', 'HND', 340, 'HNL', 'Lem', 'L', 'HN.png'),
(95, 'Hong Kong', 'HK', 'HKG', 344, 'HKD', 'Dol', '$', 'HK.png'),
(96, 'Hungary', 'HU', 'HUN', 348, 'HUF', 'For', 'Ft', 'HU.png'),
(97, 'Iceland', 'IS', 'ISL', 352, 'ISK', 'Kro', 'kr', 'IS.png'),
(98, 'India', 'IN', 'IND', 356, 'INR', 'Rup', '₹', 'IN.png'),
(99, 'Indonesia', 'ID', 'IDN', 360, 'IDR', 'Rup', 'Rp', 'ID.png'),
(100, 'Iran', 'IR', 'IRN', 364, 'IRR', 'Ria', '﷼', 'IR.png'),
(101, 'Iraq', 'IQ', 'IRQ', 368, 'IQD', 'Din', NULL, 'IQ.png'),
(102, 'Ireland', 'IE', 'IRL', 372, 'EUR', 'Eur', '€', 'IE.png'),
(103, 'Israel', 'IL', 'ISR', 376, 'ILS', 'She', '₪', 'IL.png'),
(104, 'Italy', 'IT', 'ITA', 380, 'EUR', 'Eur', '€', 'IT.png'),
(105, 'Ivory Coast', 'CI', 'CIV', 384, 'XOF', 'Fra', NULL, 'CI.png'),
(106, 'Jamaica', 'JM', 'JAM', 388, 'JMD', 'Dol', '$', 'JM.png'),
(107, 'Japan', 'JP', 'JPN', 392, 'JPY', 'Yen', '¥', 'JP.png'),
(108, 'Jordan', 'JO', 'JOR', 400, 'JOD', 'Din', NULL, 'JO.png'),
(109, 'Kazakhstan', 'KZ', 'KAZ', 398, 'KZT', 'Ten', 'KZT', 'KZ.png'),
(110, 'Kenya', 'KE', 'KEN', 404, 'KES', 'Shi', NULL, 'KE.png'),
(111, 'Kiribati', 'KI', 'KIR', 296, 'AUD', 'Dol', '$', 'KI.png'),
(112, 'Kuwait', 'KW', 'KWT', 414, 'KWD', 'Din', NULL, 'KW.png'),
(113, 'Kyrgyzstan', 'KG', 'KGZ', 417, 'KGS', 'Som', 'тыйын', 'KG.png'),
(114, 'Laos', 'LA', 'LAO', 418, 'LAK', 'Kip', '₭N', 'LA.png'),
(115, 'Latvia', 'LV', 'LVA', 428, 'LVL', 'Lat', 'Ls', 'LV.png'),
(116, 'Lebanon', 'LB', 'LBN', 422, 'LBP', 'Pou', '£', 'LB.png'),
(117, 'Lesotho', 'LS', 'LSO', 426, 'LSL', 'Lot', 'L', 'LS.png'),
(118, 'Liberia', 'LR', 'LBR', 430, 'LRD', 'Dol', '$', 'LR.png'),
(119, 'Libya', 'LY', 'LBY', 434, 'LYD', 'Din', NULL, 'LY.png'),
(120, 'Liechtenstein', 'LI', 'LIE', 438, 'CHF', 'Fra', 'CHF', 'LI.png'),
(121, 'Lithuania', 'LT', 'LTU', 440, 'LTL', 'Lit', 'Lt', 'LT.png'),
(122, 'Luxembourg', 'LU', 'LUX', 442, 'EUR', 'Eur', 'F', 'LU.png'),
(123, 'Macao', 'MO', 'MAC', 446, 'MOP', 'Pat', 'MOP', 'MO.png'),
(124, 'Macedonia', 'MK', 'MKD', 807, 'MKD', 'Den', 'ден', 'MK.png'),
(125, 'Madagascar', 'MG', 'MDG', 450, 'MGA', 'Ari', NULL, 'MG.png'),
(126, 'Malawi', 'MW', 'MWI', 454, 'MWK', 'Kwa', 'MK', 'MW.png'),
(127, 'Malaysia', 'MY', 'MYS', 458, 'MYR', 'Rin', 'RM', 'MY.png'),
(128, 'Maldives', 'MV', 'MDV', 462, 'MVR', 'Ruf', 'Rf', 'MV.png'),
(129, 'Mali', 'ML', 'MLI', 466, 'XOF', 'Fra', NULL, 'ML.png'),
(130, 'Malta', 'MT', 'MLT', 470, 'MTL', 'Lir', NULL, 'MT.png'),
(131, 'Marshall Islands', 'MH', 'MHL', 584, 'USD', 'Dol', '$', 'MH.png'),
(132, 'Martinique', 'MQ', 'MTQ', 474, 'EUR', 'Eur', '€', 'MQ.png'),
(133, 'Mauritania', 'MR', 'MRT', 478, 'MRO', 'Oug', 'UM', 'MR.png'),
(134, 'Mauritius', 'MU', 'MUS', 480, 'MUR', 'Rup', 'â‚¨', 'MU.png'),
(135, 'Mayotte', 'YT', 'MYT', 175, 'EUR', 'Eur', '€', 'YT.png'),
(136, 'Mexico', 'MX', 'MEX', 484, 'MXN', 'Pes', '$', 'MX.png'),
(137, 'Micronesia', 'FM', 'FSM', 583, 'USD', 'Dol', '$', 'FM.png'),
(138, 'Moldova', 'MD', 'MDA', 498, 'MDL', 'Leu', NULL, 'MD.png'),
(139, 'Monaco', 'MC', 'MCO', 492, 'EUR', 'Eur', '€', 'MC.png'),
(140, 'Mongolia', 'MN', 'MNG', 496, 'MNT', 'Tug', '₮', 'MN.png'),
(141, 'Montserrat', 'MS', 'MSR', 500, 'XCD', 'Dol', '$', 'MS.png'),
(142, 'Morocco', 'MA', 'MAR', 504, 'MAD', 'Dir', NULL, 'MA.png'),
(143, 'Mozambique', 'MZ', 'MOZ', 508, 'MZN', 'Met', 'MT', 'MZ.png'),
(144, 'Myanmar', 'MM', 'MMR', 104, 'MMK', 'Kya', 'K', 'MM.png'),
(145, 'Namibia', 'NA', 'NAM', 516, 'NAD', 'Dol', '$', 'NA.png'),
(146, 'Nauru', 'NR', 'NRU', 520, 'AUD', 'Dol', '$', 'NR.png'),
(147, 'Nepal', 'NP', 'NPL', 524, 'NPR', 'Rup', 'Rs', 'NP.png'),
(148, 'Netherlands', 'NL', 'NLD', 528, 'EUR', 'Eur', '£', 'NL.png'),
(149, 'Netherlands Antilles', 'AN', 'ANT', 530, 'ANG', 'Gui', 'NAƒ', 'AN.png'),
(150, 'New Caledonia', 'NC', 'NCL', 540, 'XPF', 'Fra', NULL, 'NC.png'),
(151, 'New Zealand', 'NZ', 'NZL', 554, 'NZD', 'Dol', '$', 'NZ.png'),
(152, 'Nicaragua', 'NI', 'NIC', 558, 'NIO', 'Cor', 'C$', 'NI.png'),
(153, 'Niger', 'NE', 'NER', 562, 'XOF', 'Fra', NULL, 'NE.png'),
(154, 'Nigeria', 'NG', 'NGA', 566, 'NGN', 'Nai', '₦', 'NG.png'),
(155, 'Niue', 'NU', 'NIU', 570, 'NZD', 'Dol', '$', 'NU.png'),
(156, 'Norfolk Island', 'NF', 'NFK', 574, 'AUD', 'Dol', '$', 'NF.png'),
(157, 'North Korea', 'KP', 'PRK', 408, 'KPW', 'Won', 'â‚©', 'KP.png'),
(158, 'Northern Mariana Islands', 'MP', 'MNP', 580, 'USD', 'Dol', '$', 'MP.png'),
(159, 'Norway', 'NO', 'NOR', 578, 'NOK', 'Kro', 'kr', 'NO.png'),
(160, 'Oman', 'OM', 'OMN', 512, 'OMR', 'Ria', 'ï·¼', 'OM.png'),
(161, 'Pakistan', 'PK', 'PAK', 586, 'PKR', 'Rup', 'Rs', 'PK.png'),
(162, 'Palau', 'PW', 'PLW', 585, 'USD', 'Dol', '$', 'PW.png'),
(163, 'Palestinian Territory', 'PS', 'PSE', 275, 'ILS', 'She', 'Ã¢â€šÂª', 'PS.png'),
(164, 'Panama', 'PA', 'PAN', 591, 'PAB', 'Bal', 'B/.', 'PA.png'),
(165, 'Papua New Guinea', 'PG', 'PNG', 598, 'PGK', 'Kin', NULL, 'PG.png'),
(166, 'Paraguay', 'PY', 'PRY', 600, 'PYG', 'Gua', 'Gs', 'PY.png'),
(167, 'Peru', 'PE', 'PER', 604, 'PEN', 'Sol', 'S/.', 'PE.png'),
(168, 'Philippines', 'PH', 'PHL', 608, 'PHP', 'Pes', 'Php', 'PH.png'),
(169, 'Pitcairn', 'PN', 'PCN', 612, 'NZD', 'Dol', '$', 'PN.png'),
(170, 'Poland', 'PL', 'POL', 616, 'PLN', 'Zlo', 'zÃ…â€š', 'PL.png'),
(171, 'Portugal', 'PT', 'PRT', 620, 'EUR', 'Eur', '€', 'PT.png'),
(172, 'Puerto Rico', 'PR', 'PRI', 630, 'USD', 'Dol', '$', 'PR.png'),
(173, 'Qatar', 'QA', 'QAT', 634, 'QAR', 'Ria', 'ر.ق', 'QA.png'),
(174, 'Republic of the Congo', 'CG', 'COG', 178, 'XAF', 'Fra', 'FCF', 'CG.png'),
(175, 'Reunion', 'RE', 'REU', 638, 'EUR', 'Eur', '€', 'RE.png'),
(176, 'Romania', 'RO', 'ROU', 642, 'RON', 'Leu', 'lei', 'RO.png'),
(177, 'Russia', 'RU', 'RUS', 643, 'RUB', 'Rub', '₽', 'RU.png'),
(178, 'Rwanda', 'RW', 'RWA', 646, 'RWF', 'Fra', NULL, 'RW.png'),
(179, 'Saint Helena', 'SH', 'SHN', 654, 'SHP', 'Pou', 'Â£', 'SH.png'),
(180, 'Saint Kitts and Nevis', 'KN', 'KNA', 659, 'XCD', 'Dol', '$', 'KN.png'),
(181, 'Saint Lucia', 'LC', 'LCA', 662, 'XCD', 'Dol', '$', 'LC.png'),
(182, 'Saint Pierre and Miquelon', 'PM', 'SPM', 666, 'EUR', 'Eur', '€', 'PM.png'),
(183, 'Saint Vincent and the Grenadines', 'VC', 'VCT', 670, 'XCD', 'Dol', '$', 'VC.png'),
(184, 'Samoa', 'WS', 'WSM', 882, 'WST', 'Tal', 'WS$', 'WS.png'),
(185, 'San Marino', 'SM', 'SMR', 674, 'EUR', 'Eur', '€', 'SM.png'),
(186, 'Sao Tome and Principe', 'ST', 'STP', 678, 'STD', 'Dob', 'Db', 'ST.png'),
(187, 'Saudi Arabia', 'SA', 'SAU', 682, 'SAR', 'Ria', 'ريال', 'SA.png'),
(188, 'Senegal', 'SN', 'SEN', 686, 'XOF', 'Fra', NULL, 'SN.png'),
(189, 'Serbia and Montenegro', 'CS', 'SCG', 891, 'RSD', 'Din', 'Ð”Ð¸Ð½.', 'CS.png'),
(190, 'Seychelles', 'SC', 'SYC', 690, 'SCR', 'Rup', 'â‚¨', 'SC.png'),
(191, 'Sierra Leone', 'SL', 'SLE', 694, 'SLL', 'Leo', 'Le', 'SL.png'),
(192, 'Singapore', 'SG', 'SGP', 702, 'SGD', 'Dol', '$', 'SG.png'),
(193, 'Slovakia', 'SK', 'SVK', 703, 'SKK', 'Kor', 'Sk', 'SK.png'),
(194, 'Slovenia', 'SI', 'SVN', 705, 'EUR', 'Eur', '€', 'SI.png'),
(195, 'Solomon Islands', 'SB', 'SLB', 90, 'SBD', 'Dol', '$', 'SB.png'),
(196, 'Somalia', 'SO', 'SOM', 706, 'SOS', 'Shi', 'S', 'SO.png'),
(197, 'South Africa', 'ZA', 'ZAF', 710, 'ZAR', 'Ran', 'R', 'ZA.png'),
(198, 'South Georgia and the South Sandwich Islands', 'GS', 'SGS', 239, 'GBP', 'Pou', 'Â£', 'GS.png'),
(199, 'South Korea', 'KR', 'KOR', 410, 'KRW', 'Won', 'â‚©', 'KR.png'),
(200, 'Spain', 'ES', 'ESP', 724, 'EUR', 'Eur', '€', 'ES.png'),
(201, 'Sri Lanka', 'LK', 'LKA', 144, 'LKR', 'Rup', 'â‚¨', 'LK.png'),
(202, 'Sudan', 'SD', 'SDN', 736, 'SDD', 'Din', NULL, 'SD.png'),
(203, 'Suriname', 'SR', 'SUR', 740, 'SRD', 'Dol', '$', 'SR.png'),
(204, 'Svalbard and Jan Mayen', 'SJ', 'SJM', 744, 'NOK', 'Kro', 'kr', 'SJ.png'),
(205, 'Swaziland', 'SZ', 'SWZ', 748, 'SZL', 'Lil', NULL, 'SZ.png'),
(206, 'Sweden', 'SE', 'SWE', 752, 'SEK', 'Kro', 'kr', 'SE.png'),
(207, 'Switzerland', 'CH', 'CHE', 756, 'CHF', 'Fra', 'CHF', 'CH.png'),
(208, 'Syria', 'SY', 'SYR', 760, 'SYP', 'Pou', 'Â£', 'SY.png'),
(209, 'Taiwan', 'TW', 'TWN', 158, 'TWD', 'Dol', 'NT$', 'TW.png'),
(210, 'Tajikistan', 'TJ', 'TJK', 762, 'TJS', 'Som', NULL, 'TJ.png'),
(211, 'Tanzania', 'TZ', 'TZA', 834, 'TZS', 'Shi', NULL, 'TZ.png'),
(212, 'Thailand', 'TH', 'THA', 764, 'THB', 'Bah', '$', 'TH.png'),
(213, 'Togo', 'TG', 'TGO', 768, 'XOF', 'Fra', NULL, 'TG.png'),
(214, 'Tokelau', 'TK', 'TKL', 772, 'NZD', 'Dol', '$', 'TK.png'),
(215, 'Tonga', 'TO', 'TON', 776, 'TOP', 'Pa\'', 'T$', 'TO.png'),
(216, 'Trinidad and Tobago', 'TT', 'TTO', 780, 'TTD', 'Dol', 'TT$', 'TT.png'),
(217, 'Tunisia', 'TN', 'TUN', 788, 'TND', 'Din', NULL, 'TN.png'),
(218, 'Turkey', 'TR', 'TUR', 792, 'TRY', 'Lir', 'YTL', 'TR.png'),
(219, 'Turkmenistan', 'TM', 'TKM', 795, 'TMM', 'Man', 'm', 'TM.png'),
(220, 'Turks and Caicos Islands', 'TC', 'TCA', 796, 'USD', 'Dol', '$', 'TC.png'),
(221, 'Tuvalu', 'TV', 'TUV', 798, 'AUD', 'Dol', '$', 'TV.png'),
(222, 'U.S. Virgin Islands', 'VI', 'VIR', 850, 'USD', 'Dol', '$', 'VI.png'),
(223, 'Uganda', 'UG', 'UGA', 800, 'UGX', 'Shi', NULL, 'UG.png'),
(224, 'Ukraine', 'UA', 'UKR', 804, 'UAH', 'Hry', 'â‚´', 'UA.png'),
(225, 'United Arab Emirates', 'AE', 'ARE', 784, 'AED', 'Dir', NULL, 'AE.png'),
(226, 'United Kingdom', 'GB', 'GBR', 826, 'GBP', 'Pou', 'Â£', 'GB.png'),
(227, 'United States', 'US', 'USA', 840, 'USD', 'Dol', '$', 'US.png'),
(228, 'United States Minor Outlying Islands', 'UM', 'UMI', 581, 'USD', 'Dol', '$', 'UM.png'),
(229, 'Uruguay', 'UY', 'URY', 858, 'UYU', 'Pes', '$U', 'UY.png'),
(230, 'Uzbekistan', 'UZ', 'UZB', 860, 'UZS', 'Som', 'Ð»Ð²', 'UZ.png'),
(231, 'Vanuatu', 'VU', 'VUT', 548, 'VUV', 'Vat', 'Vt', 'VU.png'),
(232, 'Vatican', 'VA', 'VAT', 336, 'EUR', 'Eur', '€', 'VA.png'),
(233, 'Venezuela', 'VE', 'VEN', 862, 'VEF', 'Bol', 'Bs', 'VE.png'),
(234, 'Vietnam', 'VN', 'VNM', 704, 'VND', 'Don', 'â‚«', 'VN.png'),
(235, 'Wallis and Futuna', 'WF', 'WLF', 876, 'XPF', 'Fra', NULL, 'WF.png'),
(236, 'Western Sahara', 'EH', 'ESH', 732, 'MAD', 'Dir', NULL, 'EH.png'),
(237, 'Yemen', 'YE', 'YEM', 887, 'YER', 'Ria', 'ï·¼', 'YE.png'),
(238, 'Zambia', 'ZM', 'ZMB', 894, 'ZMK', 'Kwa', 'ZK', 'ZM.png'),
(239, 'Zimbabwe', 'ZW', 'ZWE', 716, 'ZWD', 'Dol', 'Z$', 'ZW.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `extras`
--

CREATE TABLE `extras` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `extras`
--

INSERT INTO `extras` (`id`, `name`, `created_at`, `updated_at`, `price`) VALUES
(23, 'Chili', '2017-07-13 22:08:33', '2017-07-13 22:08:33', '2'),
(24, 'pepper', '2017-07-13 22:08:48', '2017-07-13 22:08:48', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `foods`
--

CREATE TABLE `foods` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` varchar(200) COLLATE utf8_unicode_ci DEFAULT 'call',
  `user_id` bigint(20) DEFAULT NULL,
  `image` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `categories_id` int(11) DEFAULT NULL,
  `report` tinyint(4) NOT NULL DEFAULT '0',
  `tag` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `featured` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `offer_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `discount_percent` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_offered` tinyint(4) DEFAULT '0',
  `activated` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `foods`
--

INSERT INTO `foods` (`id`, `name`, `description`, `price`, `user_id`, `image`, `created_at`, `updated_at`, `categories_id`, `report`, `tag`, `featured`, `offer_description`, `discount_percent`, `is_offered`, `activated`) VALUES
(78, 'Pizza', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '20', 1, 'uploads/foods/39_2017/38b379ac4b5075ccad8809136596bdac.jpg', '2017-07-13 22:11:54', '2017-07-13 22:11:54', 39, 0, '', NULL, NULL, NULL, 0, 1),
(79, 'Hamburger', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '10', 1, 'uploads/foods/39_2017/0e96250dbfd1882544479f3a6ac04f79.jpg', '2017-07-13 22:13:36', '2017-07-13 22:13:36', 39, 0, '', NULL, '											Discount 5%																				', '10', 1, 1),
(85, 'Lobbster', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '200', 1, 'uploads/foods/39_2017/d80f2a6f57e51ebffcd95abafdbeb1e2.jpg', '2017-07-21 19:58:14', '2017-07-21 19:58:14', 44, 0, '', NULL, '		Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has ', '10', 1, 1),
(87, 'Salad 1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '10', 1, 'uploads/foods/39_2017/616226a77f70b560aff4530cde41faba.jpg', '2017-07-21 20:00:11', '2017-07-21 20:00:11', 42, 0, '', NULL, NULL, NULL, 0, 1),
(88, 'Chicken Freid', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '8', 1, 'uploads/foods/39_2017/96d710e425be469275870c45b4012b63.jpg', '2017-07-21 20:01:48', '2017-07-21 20:01:48', 45, 0, '', NULL, NULL, NULL, 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `food_extras`
--

CREATE TABLE `food_extras` (
  `id` int(11) NOT NULL,
  `extra_id` int(255) DEFAULT NULL,
  `food_id` bigint(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `food_extras`
--

INSERT INTO `food_extras` (`id`, `extra_id`, `food_id`, `created_at`, `updated_at`) VALUES
(8, 24, 78, '2017-07-13 22:11:54', '2017-07-13 22:11:54'),
(12, 23, 79, '2017-07-13 22:16:02', '2017-07-13 22:16:02'),
(13, 23, 80, '2017-07-13 22:18:14', '2017-07-13 22:18:14'),
(14, 23, 81, '2017-07-13 22:22:06', '2017-07-13 22:22:06'),
(16, 23, 85, '2017-07-21 19:59:07', '2017-07-21 19:59:07'),
(17, 23, 86, '2017-07-21 19:59:43', '2017-07-21 19:59:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `food_orders`
--

CREATE TABLE `food_orders` (
  `id` int(11) NOT NULL,
  `order_id` bigint(255) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantity` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extras_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extras_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extras_price` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `food_id` bigint(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `food_orders`
--

INSERT INTO `food_orders` (`id`, `order_id`, `name`, `price`, `size`, `image`, `quantity`, `extras_name`, `extras_id`, `extras_price`, `updated_at`, `created_at`, `food_id`) VALUES
(33, 29, 'Chicken Freid', '16', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/4da9abb759202223dd7b7ea9a940b5ed.jpg', '2', NULL, NULL, NULL, '2017-07-25 14:04:44', '2017-07-25 14:04:44', 88),
(35, 31, 'Chicken Freid', '16', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/4da9abb759202223dd7b7ea9a940b5ed.jpg', '2', NULL, NULL, NULL, '2017-07-25 14:04:46', '2017-07-25 14:04:46', 88),
(36, 32, 'Chicken Freid', '16', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/4da9abb759202223dd7b7ea9a940b5ed.jpg', '2', NULL, NULL, NULL, '2017-07-25 14:04:47', '2017-07-25 14:04:47', 88),
(37, 33, 'Hamburger', '9', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/28_2017/d56a28e1d682564ec18a21dea2828777.jpg', '1', NULL, NULL, NULL, '2017-07-25 14:40:32', '2017-07-25 14:40:32', 79),
(38, 33, 'King Crab', '502', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/d08acd21f68b6323af1dce5cb047f63c.jpg', '1', 'Chili,', '23,', '2,', '2017-07-25 14:40:32', '2017-07-25 14:40:32', 86),
(39, 34, 'Chicken Freid', '8', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/4da9abb759202223dd7b7ea9a940b5ed.jpg', '1', NULL, NULL, NULL, '2017-07-25 15:46:56', '2017-07-25 15:46:56', 88),
(40, 35, 'Chicken Freid', '8', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/4da9abb759202223dd7b7ea9a940b5ed.jpg', '1', NULL, NULL, NULL, '2017-07-26 04:43:14', '2017-07-26 04:43:14', 88),
(41, 36, 'Salad 1', '10', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/dfd0157ec9554c315572258aef3d1f94.jpg', '1', NULL, NULL, NULL, '2017-07-26 10:15:07', '2017-07-26 10:15:07', 87),
(42, 37, 'Chicken Freid', '8', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/4da9abb759202223dd7b7ea9a940b5ed.jpg', '1', NULL, NULL, NULL, '2017-07-26 15:46:19', '2017-07-26 15:46:19', 88),
(43, 38, 'Chicken Freid', '24', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/4da9abb759202223dd7b7ea9a940b5ed.jpg', '3', NULL, NULL, NULL, '2017-07-26 20:23:13', '2017-07-26 20:23:13', 88),
(44, 39, 'Chicken Freid', '8', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/4da9abb759202223dd7b7ea9a940b5ed.jpg', '1', NULL, NULL, NULL, '2017-07-27 10:58:36', '2017-07-27 10:58:36', 88),
(45, 40, 'Salad 1', '10', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/dfd0157ec9554c315572258aef3d1f94.jpg', '1', NULL, NULL, NULL, '2017-07-28 09:12:30', '2017-07-28 09:12:30', 87),
(47, 42, 'King Crab', '500', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/d08acd21f68b6323af1dce5cb047f63c.jpg', '1', NULL, NULL, NULL, '2017-07-29 01:28:21', '2017-07-29 01:28:21', 86),
(48, 43, 'Salad 1', '10', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/dfd0157ec9554c315572258aef3d1f94.jpg', '1', NULL, NULL, NULL, '2017-07-29 06:29:15', '2017-07-29 06:29:15', 87),
(49, 43, 'Lobbster', '360', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/a1546b53a2a005eaa636e0064087d110.jpg', '2', '', '', '', '2017-07-29 06:29:15', '2017-07-29 06:29:15', 85),
(50, 44, 'Chicken Freid', '8', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/4da9abb759202223dd7b7ea9a940b5ed.jpg', '1', NULL, NULL, NULL, '2017-07-29 23:11:45', '2017-07-29 23:11:45', 88),
(52, 46, 'Hamburger', '22', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/28_2017/d56a28e1d682564ec18a21dea2828777.jpg', '2', 'Chili,', '23,', '2,', '2017-07-30 13:45:18', '2017-07-30 13:45:18', 79),
(53, 46, 'Chicken Freid', '8', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/4da9abb759202223dd7b7ea9a940b5ed.jpg', '1', NULL, NULL, NULL, '2017-07-30 13:45:18', '2017-07-30 13:45:18', 88),
(54, 47, 'Lobbster', '182', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/a1546b53a2a005eaa636e0064087d110.jpg', '1', 'Chili,', '23,', '2,', '2017-07-30 17:28:47', '2017-07-30 17:28:47', 85),
(56, 49, 'Hamburger', '11', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/28_2017/d56a28e1d682564ec18a21dea2828777.jpg', '1', 'Chili,', '23,', '2,', '2017-07-31 03:43:12', '2017-07-31 03:43:12', 79),
(57, 49, 'Chicken Freid', '8', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/4da9abb759202223dd7b7ea9a940b5ed.jpg', '1', NULL, NULL, NULL, '2017-07-31 03:43:12', '2017-07-31 03:43:12', 88),
(58, 49, 'King Crab', '502', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/d08acd21f68b6323af1dce5cb047f63c.jpg', '1', 'Chili,', '23,', '2,', '2017-07-31 03:43:12', '2017-07-31 03:43:12', 86),
(59, 50, 'Hamburger', '11', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/28_2017/d56a28e1d682564ec18a21dea2828777.jpg', '1', 'Chili,', '23,', '2,', '2017-07-31 03:43:13', '2017-07-31 03:43:13', 79),
(60, 50, 'Chicken Freid', '8', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/4da9abb759202223dd7b7ea9a940b5ed.jpg', '1', NULL, NULL, NULL, '2017-07-31 03:43:13', '2017-07-31 03:43:13', 88),
(61, 50, 'King Crab', '502', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/d08acd21f68b6323af1dce5cb047f63c.jpg', '1', 'Chili,', '23,', '2,', '2017-07-31 03:43:13', '2017-07-31 03:43:13', 86),
(62, 51, 'Salad 1', '50', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/dfd0157ec9554c315572258aef3d1f94.jpg', '5', NULL, NULL, NULL, '2017-07-31 13:40:25', '2017-07-31 13:40:25', 87),
(63, 52, 'Salad 1', '40', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/dfd0157ec9554c315572258aef3d1f94.jpg', '4', NULL, NULL, NULL, '2017-07-31 19:04:24', '2017-07-31 19:04:24', 87),
(64, 53, 'Salad 1', '40', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/dfd0157ec9554c315572258aef3d1f94.jpg', '4', NULL, NULL, NULL, '2017-08-01 13:50:29', '2017-08-01 13:50:29', 87),
(65, 54, 'Salad 1', '30', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/dfd0157ec9554c315572258aef3d1f94.jpg', '3', NULL, NULL, NULL, '2017-08-02 14:32:27', '2017-08-02 14:32:27', 87),
(66, 54, 'King Crab', '1004', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/d08acd21f68b6323af1dce5cb047f63c.jpg', '2', 'Chili,', '23,', '2,', '2017-08-02 14:32:27', '2017-08-02 14:32:27', 86),
(67, 54, 'Pizza', '41', 'Large', 'http://lrandomdev.com/demo/restaurant//uploads/foods/28_2017/54a7bf58ae5e287ef8cd307b7444f87b.jpg', '1', 'pepper,', '24,', '1,', '2017-08-02 14:32:27', '2017-08-02 14:32:27', 78),
(68, 55, 'King Crab', '502', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/d08acd21f68b6323af1dce5cb047f63c.jpg', '1', 'Chili,', '23,', '2,', '2017-08-03 15:20:47', '2017-08-03 15:20:47', 86),
(69, 56, 'Lobbster', '180', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/a1546b53a2a005eaa636e0064087d110.jpg', '1', NULL, NULL, NULL, '2017-08-03 15:56:42', '2017-08-03 15:56:42', 85),
(70, 56, 'Lobbster', '364', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/a1546b53a2a005eaa636e0064087d110.jpg', '2', 'Chili,', '23,', '2,', '2017-08-03 15:56:42', '2017-08-03 15:56:42', 85),
(71, 57, 'Chicken Freid', '8', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/4da9abb759202223dd7b7ea9a940b5ed.jpg', '1', NULL, NULL, NULL, '2017-08-03 15:57:08', '2017-08-03 15:57:08', 88),
(74, 59, 'Chicken Freid', '8', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/4da9abb759202223dd7b7ea9a940b5ed.jpg', '1', NULL, NULL, NULL, '2017-08-04 03:09:40', '2017-08-04 03:09:40', 88),
(75, 60, 'Salad 1', '10', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/dfd0157ec9554c315572258aef3d1f94.jpg', '1', NULL, NULL, NULL, '2017-08-04 23:07:26', '2017-08-04 23:07:26', 87),
(76, 60, 'Lobbster', '182', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/a1546b53a2a005eaa636e0064087d110.jpg', '1', 'Chili,', '23,', '2,', '2017-08-04 23:07:26', '2017-08-04 23:07:26', 85),
(77, 60, 'Hamburger', '11', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/28_2017/d56a28e1d682564ec18a21dea2828777.jpg', '1', 'Chili,', '23,', '2,', '2017-08-04 23:07:26', '2017-08-04 23:07:26', 79),
(78, 61, 'Salad 1', '10', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/dfd0157ec9554c315572258aef3d1f94.jpg', '1', NULL, NULL, NULL, '2017-08-05 10:40:54', '2017-08-05 10:40:54', 87),
(79, 61, 'King Crab', '502', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/d08acd21f68b6323af1dce5cb047f63c.jpg', '1', 'Chili,', '23,', '2,', '2017-08-05 10:40:54', '2017-08-05 10:40:54', 86),
(80, 62, 'King Crab', '1004', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/d08acd21f68b6323af1dce5cb047f63c.jpg', '2', 'Chili,', '23,', '2,', '2017-08-08 03:27:46', '2017-08-08 03:27:46', 86),
(81, 62, 'Lobbster', '546', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/a1546b53a2a005eaa636e0064087d110.jpg', '3', 'Chili,', '23,', '2,', '2017-08-08 03:27:46', '2017-08-08 03:27:46', 85),
(82, 63, 'King Crab', '1004', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/d08acd21f68b6323af1dce5cb047f63c.jpg', '2', 'Chili,', '23,', '2,', '2017-08-08 03:27:47', '2017-08-08 03:27:47', 86),
(83, 63, 'Lobbster', '546', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/a1546b53a2a005eaa636e0064087d110.jpg', '3', 'Chili,', '23,', '2,', '2017-08-08 03:27:47', '2017-08-08 03:27:47', 85),
(84, 64, 'Lobbster', '360', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/a1546b53a2a005eaa636e0064087d110.jpg', '2', NULL, NULL, NULL, '2017-08-09 00:50:31', '2017-08-09 00:50:31', 85),
(86, 66, 'Pizza', '41', 'Large', 'http://lrandomdev.com/demo/restaurant//uploads/foods/28_2017/54a7bf58ae5e287ef8cd307b7444f87b.jpg', '1', 'pepper,', '24,', '1,', '2017-08-09 10:21:42', '2017-08-09 10:21:42', 78),
(87, 67, 'Pizza', '20', 'Small', 'http://lrandomdev.com/demo/restaurant//uploads/foods/28_2017/54a7bf58ae5e287ef8cd307b7444f87b.jpg', '1', NULL, NULL, NULL, '2017-08-09 20:28:37', '2017-08-09 20:28:37', 78),
(88, 68, 'Chicken Freid', '16', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/4da9abb759202223dd7b7ea9a940b5ed.jpg', '2', NULL, NULL, NULL, '2017-08-11 07:49:37', '2017-08-11 07:49:37', 88),
(89, 68, 'Pizza', '41', 'Large', 'http://lrandomdev.com/demo/restaurant//uploads/foods/28_2017/54a7bf58ae5e287ef8cd307b7444f87b.jpg', '1', 'pepper,', '24,', '1,', '2017-08-11 07:49:37', '2017-08-11 07:49:37', 78),
(90, 69, 'Chicken Freid', '8', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/4da9abb759202223dd7b7ea9a940b5ed.jpg', '1', NULL, NULL, NULL, '2017-08-11 14:03:05', '2017-08-11 14:03:05', 88),
(91, 69, 'Salad 1', '10', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/dfd0157ec9554c315572258aef3d1f94.jpg', '1', NULL, NULL, NULL, '2017-08-11 14:03:05', '2017-08-11 14:03:05', 87),
(92, 70, 'Salad 1', '10', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/dfd0157ec9554c315572258aef3d1f94.jpg', '1', NULL, NULL, NULL, '2017-08-12 11:26:13', '2017-08-12 11:26:13', 87),
(93, 71, 'Chicken Freid', '8', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/4da9abb759202223dd7b7ea9a940b5ed.jpg', '1', NULL, NULL, NULL, '2017-08-12 15:37:03', '2017-08-12 15:37:03', 88),
(94, 71, 'Pizza', '21', 'Small', 'http://lrandomdev.com/demo/restaurant//uploads/foods/28_2017/54a7bf58ae5e287ef8cd307b7444f87b.jpg', '1', 'pepper,', '24,', '1,', '2017-08-12 15:37:03', '2017-08-12 15:37:03', 78),
(95, 72, 'Chicken Freid', '8', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/4da9abb759202223dd7b7ea9a940b5ed.jpg', '1', NULL, NULL, NULL, '2017-08-12 20:22:57', '2017-08-12 20:22:57', 88),
(96, 72, 'Lobbster', '182', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/a1546b53a2a005eaa636e0064087d110.jpg', '1', 'Chili,', '23,', '2,', '2017-08-12 20:22:57', '2017-08-12 20:22:57', 85),
(97, 73, 'Chicken Freid', '32', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/4da9abb759202223dd7b7ea9a940b5ed.jpg', '4', NULL, NULL, NULL, '2017-08-15 00:43:32', '2017-08-15 00:43:32', 88),
(98, 73, 'Lobbster', '182', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/a1546b53a2a005eaa636e0064087d110.jpg', '1', 'Chili,', '23,', '2,', '2017-08-15 00:43:32', '2017-08-15 00:43:32', 85),
(99, 74, 'Lobbster', '182', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/a1546b53a2a005eaa636e0064087d110.jpg', '1', 'Chili,', '23,', '2,', '2017-08-15 06:19:59', '2017-08-15 06:19:59', 85),
(100, 75, 'Chicken Freid', '8', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/4da9abb759202223dd7b7ea9a940b5ed.jpg', '1', NULL, NULL, NULL, '2017-08-15 15:44:36', '2017-08-15 15:44:36', 88),
(101, 76, 'Salad 1', '10', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/dfd0157ec9554c315572258aef3d1f94.jpg', '1', NULL, NULL, NULL, '2017-08-15 22:24:05', '2017-08-15 22:24:05', 87),
(103, 78, 'Pizza', '31', 'Medium', 'http://lrandomdev.com/demo/restaurant//uploads/foods/28_2017/54a7bf58ae5e287ef8cd307b7444f87b.jpg', '1', 'pepper,', '24,', '1,', '2017-08-16 23:10:30', '2017-08-16 23:10:30', 78),
(104, 78, 'Pizza', '30', 'Medium', 'http://lrandomdev.com/demo/restaurant//uploads/foods/28_2017/54a7bf58ae5e287ef8cd307b7444f87b.jpg', '1', NULL, NULL, NULL, '2017-08-16 23:10:30', '2017-08-16 23:10:30', 78),
(105, 79, 'Chicken Freid', '8', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/4da9abb759202223dd7b7ea9a940b5ed.jpg', '1', NULL, NULL, NULL, '2017-08-17 19:04:13', '2017-08-17 19:04:13', 88),
(106, 80, 'Chicken Freid', '8', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/4da9abb759202223dd7b7ea9a940b5ed.jpg', '1', NULL, NULL, NULL, '2017-08-18 15:08:28', '2017-08-18 15:08:28', 88),
(107, 81, 'Salad 1', '10', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/dfd0157ec9554c315572258aef3d1f94.jpg', '1', NULL, NULL, NULL, '2017-08-18 15:16:45', '2017-08-18 15:16:45', 87),
(108, 82, 'Pizza', '31', 'Medium', 'http://lrandomdev.com/demo/restaurant//uploads/foods/28_2017/54a7bf58ae5e287ef8cd307b7444f87b.jpg', '1', 'pepper,', '24,', '1,', '2017-08-18 15:43:43', '2017-08-18 15:43:43', 78),
(109, 83, 'Chicken Freid', '24', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/4da9abb759202223dd7b7ea9a940b5ed.jpg', '3', NULL, NULL, NULL, '2017-08-23 03:28:40', '2017-08-23 03:28:40', 88),
(110, 84, 'Chicken Freid', '16', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/4da9abb759202223dd7b7ea9a940b5ed.jpg', '2', NULL, NULL, NULL, '2017-08-24 23:38:21', '2017-08-24 23:38:21', 88),
(111, 85, 'Chicken Freid', '8', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/4da9abb759202223dd7b7ea9a940b5ed.jpg', '1', NULL, NULL, NULL, '2017-08-25 19:28:41', '2017-08-25 19:28:41', 88),
(112, 85, 'Salad 1', '10', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/dfd0157ec9554c315572258aef3d1f94.jpg', '1', NULL, NULL, NULL, '2017-08-25 19:28:41', '2017-08-25 19:28:41', 87),
(113, 86, 'Salad 1', '40', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/dfd0157ec9554c315572258aef3d1f94.jpg', '4', NULL, NULL, NULL, '2017-08-26 11:56:23', '2017-08-26 11:56:23', 87),
(114, 86, 'Lobbster', '364', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/a1546b53a2a005eaa636e0064087d110.jpg', '2', 'Chili,', '23,', '2,', '2017-08-26 11:56:23', '2017-08-26 11:56:23', 85),
(115, 86, 'Hamburger', '66', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/28_2017/d56a28e1d682564ec18a21dea2828777.jpg', '6', 'Chili,', '23,', '2,', '2017-08-26 11:56:23', '2017-08-26 11:56:23', 79),
(116, 86, 'Chicken Freid', '56', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/4da9abb759202223dd7b7ea9a940b5ed.jpg', '7', NULL, NULL, NULL, '2017-08-26 11:56:23', '2017-08-26 11:56:23', 88),
(117, 87, 'Chicken Freid', '16', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/4da9abb759202223dd7b7ea9a940b5ed.jpg', '2', NULL, NULL, NULL, '2017-08-26 12:03:55', '2017-08-26 12:03:55', 88),
(118, 87, 'Salad 1', '10', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/dfd0157ec9554c315572258aef3d1f94.jpg', '1', NULL, NULL, NULL, '2017-08-26 12:03:55', '2017-08-26 12:03:55', 87),
(119, 88, 'Pizza', '41', 'Large', 'http://lrandomdev.com/demo/restaurant//uploads/foods/28_2017/54a7bf58ae5e287ef8cd307b7444f87b.jpg', '1', 'pepper,', '24,', '1,', '2017-08-27 02:20:23', '2017-08-27 02:20:23', 78),
(120, 89, 'Hamburger', '11', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/28_2017/d56a28e1d682564ec18a21dea2828777.jpg', '1', 'Chili,', '23,', '2,', '2017-08-28 03:06:44', '2017-08-28 03:06:44', 79),
(121, 90, 'King Crab', '1506', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/d08acd21f68b6323af1dce5cb047f63c.jpg', '3', 'Chili,', '23,', '2,', '2017-08-29 02:42:38', '2017-08-29 02:42:38', 86),
(122, 91, 'King Crab', '500', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/d08acd21f68b6323af1dce5cb047f63c.jpg', '1', NULL, NULL, NULL, '2017-08-30 08:55:33', '2017-08-30 08:55:33', 86),
(123, 92, 'Chicken Freid', '8', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/4da9abb759202223dd7b7ea9a940b5ed.jpg', '1', NULL, NULL, NULL, '2017-08-30 14:31:54', '2017-08-30 14:31:54', 88),
(124, 92, 'King Crab', '1004', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/d08acd21f68b6323af1dce5cb047f63c.jpg', '2', 'Chili,', '23,', '2,', '2017-08-30 14:31:54', '2017-08-30 14:31:54', 86),
(125, 93, 'King Crab', '502', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/d08acd21f68b6323af1dce5cb047f63c.jpg', '1', 'Chili,', '23,', '2,', '2017-09-01 03:26:30', '2017-09-01 03:26:30', 86),
(129, 95, 'King Crab', '502', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/d08acd21f68b6323af1dce5cb047f63c.jpg', '1', 'Chili,', '23,', '2,', '2017-09-02 08:45:53', '2017-09-02 08:45:53', 86),
(131, 97, 'Chicken Freid', '40', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/4da9abb759202223dd7b7ea9a940b5ed.jpg', '5', NULL, NULL, NULL, '2017-09-04 12:03:57', '2017-09-04 12:03:57', 88),
(132, 98, 'King Crab', '502', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/d08acd21f68b6323af1dce5cb047f63c.jpg', '1', 'Chili,', '23,', '2,', '2017-09-05 02:10:50', '2017-09-05 02:10:50', 86),
(133, 99, 'King Crab', '500', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/d08acd21f68b6323af1dce5cb047f63c.jpg', '1', NULL, NULL, NULL, '2017-09-05 16:08:28', '2017-09-05 16:08:28', 86),
(134, 99, 'King Crab', '502', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/d08acd21f68b6323af1dce5cb047f63c.jpg', '1', 'Chili,', '23,', '2,', '2017-09-05 16:08:28', '2017-09-05 16:08:28', 86),
(135, 100, 'King Crab', '502', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/d08acd21f68b6323af1dce5cb047f63c.jpg', '1', 'Chili,', '23,', '2,', '2017-09-05 16:14:21', '2017-09-05 16:14:21', 86),
(136, 101, 'Pizza', '20', 'Small', 'http://lrandomdev.com/demo/restaurant//uploads/foods/28_2017/54a7bf58ae5e287ef8cd307b7444f87b.jpg', '1', NULL, NULL, NULL, '2017-09-05 21:46:21', '2017-09-05 21:46:21', 78),
(137, 102, 'Chicken Freid', '24', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/4da9abb759202223dd7b7ea9a940b5ed.jpg', '3', NULL, NULL, NULL, '2017-09-07 21:21:45', '2017-09-07 21:21:45', 88),
(138, 102, 'Lobbster', '182', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/a1546b53a2a005eaa636e0064087d110.jpg', '1', 'Chili,', '23,', '2,', '2017-09-07 21:21:45', '2017-09-07 21:21:45', 85),
(139, 102, 'Hamburger', '11', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/28_2017/d56a28e1d682564ec18a21dea2828777.jpg', '1', 'Chili,', '23,', '2,', '2017-09-07 21:21:45', '2017-09-07 21:21:45', 79),
(141, 104, 'King Crab', '1004', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/d08acd21f68b6323af1dce5cb047f63c.jpg', '2', 'Chili,', '23,', '2,', '2017-09-08 17:38:35', '2017-09-08 17:38:35', 86),
(142, 104, 'Hamburger', '9', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/28_2017/d56a28e1d682564ec18a21dea2828777.jpg', '1', NULL, NULL, NULL, '2017-09-08 17:38:35', '2017-09-08 17:38:35', 79),
(143, 105, 'Chicken Freid', '16', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/4da9abb759202223dd7b7ea9a940b5ed.jpg', '2', NULL, NULL, NULL, '2017-09-09 00:27:13', '2017-09-09 00:27:13', 88),
(144, 105, 'Salad 1', '20', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/dfd0157ec9554c315572258aef3d1f94.jpg', '2', NULL, NULL, NULL, '2017-09-09 00:27:13', '2017-09-09 00:27:13', 87),
(145, 105, 'Hamburger', '11', 'default', 'http://lrandomdev.com/demo/restaurant//uploads/foods/28_2017/d56a28e1d682564ec18a21dea2828777.jpg', '1', 'Chili,', '23,', '2,', '2017-09-09 00:27:13', '2017-09-09 00:27:13', 79),
(146, 106, 'Chicken Freid', '8', 'default - 8', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/4da9abb759202223dd7b7ea9a940b5ed.jpg', '1', NULL, NULL, NULL, '2017-09-12 18:51:44', '2017-09-12 18:51:44', 88),
(147, 107, 'Chicken Freid', '8', 'default - 8', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/4da9abb759202223dd7b7ea9a940b5ed.jpg', '1', NULL, NULL, NULL, '2017-09-13 13:34:46', '2017-09-13 13:34:46', 88),
(148, 108, 'Salad 1', '10', 'default - 10', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/dfd0157ec9554c315572258aef3d1f94.jpg', '1', NULL, NULL, NULL, '2017-09-17 18:59:38', '2017-09-17 18:59:38', 87),
(149, 109, 'Chicken Freid', '8', 'default - 8', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/4da9abb759202223dd7b7ea9a940b5ed.jpg', '1', NULL, NULL, NULL, '2017-09-20 04:43:42', '2017-09-20 04:43:42', 88),
(150, 109, 'King Crab', '1004', 'default - 500', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/d08acd21f68b6323af1dce5cb047f63c.jpg', '2', 'Chili,', '23,', '2,', '2017-09-20 04:43:42', '2017-09-20 04:43:42', 86),
(151, 110, 'King Crab', '502', 'default - 500', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/d08acd21f68b6323af1dce5cb047f63c.jpg', '1', 'Chili,', '23,', '2,', '2017-09-20 10:24:42', '2017-09-20 10:24:42', 86),
(152, 110, 'Salad 1', '10', 'default - 10', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/dfd0157ec9554c315572258aef3d1f94.jpg', '1', NULL, NULL, NULL, '2017-09-20 10:24:42', '2017-09-20 10:24:42', 87),
(153, 110, 'Lobbster', '182', 'default - 180', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/a1546b53a2a005eaa636e0064087d110.jpg', '1', 'Chili,', '23,', '2,', '2017-09-20 10:24:42', '2017-09-20 10:24:42', 85),
(154, 111, 'Lobbster', '364', 'default - 180', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/a1546b53a2a005eaa636e0064087d110.jpg', '2', 'Chili,', '23,', '2,', '2017-09-22 09:59:13', '2017-09-22 09:59:13', 85),
(155, 111, 'Chicken Freid', '8', 'default - 8', 'http://lrandomdev.com/demo/restaurant//uploads/foods/29_2017/4da9abb759202223dd7b7ea9a940b5ed.jpg', '1', NULL, NULL, NULL, '2017-09-22 09:59:13', '2017-09-22 09:59:13', 88),
(156, 112, 'Pizza', '31', 'Medium - 30', 'http://lrandomdev.com/demo/restaurant//uploads/foods/28_2017/54a7bf58ae5e287ef8cd307b7444f87b.jpg', '1', 'pepper,', '24,', '1,', '2017-09-24 21:00:44', '2017-09-24 21:00:44', 78),
(157, 112, 'Hamburger', '11', 'default - 9', 'http://lrandomdev.com/demo/restaurant//uploads/foods/28_2017/d56a28e1d682564ec18a21dea2828777.jpg', '1', 'Chili,', '23,', '2,', '2017-09-24 21:00:44', '2017-09-24 21:00:44', 79),
(158, 113, 'Chicken Freid', '8', 'default - 8', 'http://lrandomdev.com/demo/restaurant//uploads/foods/39_2017/96d710e425be469275870c45b4012b63.jpg', '1', NULL, NULL, NULL, '2017-09-26 00:33:06', '2017-09-26 00:33:06', 88),
(159, 114, 'Chicken Freid', '8', 'default - 8', 'http://lrandomdev.com/demo/restaurant//uploads/foods/39_2017/96d710e425be469275870c45b4012b63.jpg', '1', NULL, NULL, NULL, '2017-09-26 09:06:28', '2017-09-26 09:06:28', 88),
(160, 115, 'Chicken Freid', '8', 'default - 8', 'http://lrandomdev.com/demo/restaurant//uploads/foods/39_2017/96d710e425be469275870c45b4012b63.jpg', '1', NULL, NULL, NULL, '2017-09-26 09:19:07', '2017-09-26 09:19:07', 88),
(161, 116, 'Chicken Freid', '8', 'default - 8', 'http://lrandomdev.com/demo/restaurant//uploads/foods/39_2017/96d710e425be469275870c45b4012b63.jpg', '1', NULL, NULL, NULL, '2017-09-26 14:47:33', '2017-09-26 14:47:33', 88),
(162, 116, 'Hamburger', '9', 'default - 9', 'http://lrandomdev.com/demo/restaurant//uploads/foods/39_2017/0e96250dbfd1882544479f3a6ac04f79.jpg', '1', NULL, NULL, NULL, '2017-09-26 14:47:33', '2017-09-26 14:47:33', 79),
(163, 116, 'Lobbster', '180', 'default - 180', 'http://lrandomdev.com/demo/restaurant//uploads/foods/39_2017/d80f2a6f57e51ebffcd95abafdbeb1e2.jpg', '1', NULL, NULL, NULL, '2017-09-26 14:47:33', '2017-09-26 14:47:33', 85),
(164, 116, 'Salad 1', '10', 'default - 10', 'http://lrandomdev.com/demo/restaurant//uploads/foods/39_2017/616226a77f70b560aff4530cde41faba.jpg', '1', NULL, NULL, NULL, '2017-09-26 14:47:33', '2017-09-26 14:47:33', 87),
(165, 117, 'Chicken Freid', '8', 'default - 8', 'http://lrandomdev.com/demo/restaurant//uploads/foods/39_2017/96d710e425be469275870c45b4012b63.jpg', '1', NULL, NULL, NULL, '2017-10-03 16:26:55', '2017-10-03 16:26:55', 88),
(166, 118, 'Chicken Freid', '24', 'default - 8', 'http://lrandomdev.com/demo/restaurant//uploads/foods/39_2017/96d710e425be469275870c45b4012b63.jpg', '3', NULL, NULL, NULL, '2017-10-03 22:48:18', '2017-10-03 22:48:18', 88),
(167, 119, 'Lobbster', '182', 'default - 180', 'http://lrandomdev.com/demo/restaurant//uploads/foods/39_2017/d80f2a6f57e51ebffcd95abafdbeb1e2.jpg', '1', 'Chili,', '23,', '2,', '2017-10-04 13:31:38', '2017-10-04 13:31:38', 85),
(168, 120, 'Lobbster', '364', 'default - 180', 'http://lrandomdev.com/demo/restaurant//uploads/foods/39_2017/d80f2a6f57e51ebffcd95abafdbeb1e2.jpg', '2', 'Chili,', '23,', '2,', '2017-10-05 02:30:15', '2017-10-05 02:30:15', 85),
(169, 121, 'Chicken Freid', '8', 'default - 8', 'http://lrandomdev.com/demo/restaurant//uploads/foods/39_2017/96d710e425be469275870c45b4012b63.jpg', '1', NULL, NULL, NULL, '2017-10-05 20:30:17', '2017-10-05 20:30:17', 88),
(170, 122, 'Chicken Freid', '8', 'default - 8', 'http://lrandomdev.com/demo/restaurant//uploads/foods/39_2017/96d710e425be469275870c45b4012b63.jpg', '1', NULL, NULL, NULL, '2017-10-07 06:23:29', '2017-10-07 06:23:29', 88),
(171, 123, 'Pizza', '20', 'Small - 20', 'http://lrandomdev.com/demo/restaurant//uploads/foods/39_2017/38b379ac4b5075ccad8809136596bdac.jpg', '1', NULL, NULL, NULL, '2017-10-07 06:52:56', '2017-10-07 06:52:56', 78),
(172, 124, 'Pizza', '20', 'Small - 20', 'http://lrandomdev.com/demo/restaurant//uploads/foods/39_2017/38b379ac4b5075ccad8809136596bdac.jpg', '1', NULL, NULL, NULL, '2017-10-07 07:01:08', '2017-10-07 07:01:08', 78),
(173, 125, 'Pizza', '20', 'Small - 20', 'http://lrandomdev.com/demo/restaurant//uploads/foods/39_2017/38b379ac4b5075ccad8809136596bdac.jpg', '1', NULL, NULL, NULL, '2017-10-07 07:10:56', '2017-10-07 07:10:56', 78),
(174, 125, 'Chicken Freid', '8', 'default - 8', 'http://lrandomdev.com/demo/restaurant//uploads/foods/39_2017/96d710e425be469275870c45b4012b63.jpg', '1', NULL, NULL, NULL, '2017-10-07 07:10:56', '2017-10-07 07:10:56', 88),
(175, 126, 'Pizza', '20', 'Small - 20', 'http://lrandomdev.com/demo/restaurant//uploads/foods/39_2017/38b379ac4b5075ccad8809136596bdac.jpg', '1', NULL, NULL, NULL, '2017-10-07 07:26:07', '2017-10-07 07:26:07', 78),
(176, 126, 'Chicken Freid', '8', 'default - 8', 'http://lrandomdev.com/demo/restaurant//uploads/foods/39_2017/96d710e425be469275870c45b4012b63.jpg', '1', NULL, NULL, NULL, '2017-10-07 07:26:07', '2017-10-07 07:26:07', 88),
(177, 126, 'Lobbster', '182', 'default - 180', 'http://lrandomdev.com/demo/restaurant//uploads/foods/39_2017/d80f2a6f57e51ebffcd95abafdbeb1e2.jpg', '1', 'Chili,', '23,', '2,', '2017-10-07 07:26:07', '2017-10-07 07:26:07', 85),
(178, 127, 'Lobbster', '182', 'default - 180', 'http://lrandomdev.com/demo/restaurant//uploads/foods/39_2017/d80f2a6f57e51ebffcd95abafdbeb1e2.jpg', '1', 'Chili,', '23,', '2,', '2017-10-07 09:31:41', '2017-10-07 09:31:41', 85),
(179, 127, 'Hamburger', '11', 'default - 9', 'http://lrandomdev.com/demo/restaurant//uploads/foods/39_2017/0e96250dbfd1882544479f3a6ac04f79.jpg', '1', 'Chili,', '23,', '2,', '2017-10-07 09:31:41', '2017-10-07 09:31:41', 79),
(180, 127, 'Salad 1', '10', 'default - 10', 'http://lrandomdev.com/demo/restaurant//uploads/foods/39_2017/616226a77f70b560aff4530cde41faba.jpg', '1', NULL, NULL, NULL, '2017-10-07 09:31:41', '2017-10-07 09:31:41', 87),
(181, 128, 'Lobbster', '182', 'default - 180', 'http://lrandomdev.com/demo/restaurant//uploads/foods/39_2017/d80f2a6f57e51ebffcd95abafdbeb1e2.jpg', '1', 'Chili,', '23,', '2,', '2017-10-07 09:38:37', '2017-10-07 09:38:37', 85),
(182, 128, 'Hamburger', '11', 'default - 9', 'http://lrandomdev.com/demo/restaurant//uploads/foods/39_2017/0e96250dbfd1882544479f3a6ac04f79.jpg', '1', 'Chili,', '23,', '2,', '2017-10-07 09:38:37', '2017-10-07 09:38:37', 79),
(183, 128, 'Salad 1', '10', 'default - 10', 'http://lrandomdev.com/demo/restaurant//uploads/foods/39_2017/616226a77f70b560aff4530cde41faba.jpg', '1', NULL, NULL, NULL, '2017-10-07 09:38:37', '2017-10-07 09:38:37', 87),
(184, 129, 'Lobbster', '182', 'default - 180', 'http://lrandomdev.com/demo/restaurant//uploads/foods/39_2017/d80f2a6f57e51ebffcd95abafdbeb1e2.jpg', '1', 'Chili,', '23,', '2,', '2017-10-07 09:40:11', '2017-10-07 09:40:11', 85),
(185, 129, 'Hamburger', '11', 'default - 9', 'http://lrandomdev.com/demo/restaurant//uploads/foods/39_2017/0e96250dbfd1882544479f3a6ac04f79.jpg', '1', 'Chili,', '23,', '2,', '2017-10-07 09:40:11', '2017-10-07 09:40:11', 79),
(186, 129, 'Salad 1', '10', 'default - 10', 'http://lrandomdev.com/demo/restaurant//uploads/foods/39_2017/616226a77f70b560aff4530cde41faba.jpg', '1', NULL, NULL, NULL, '2017-10-07 09:40:11', '2017-10-07 09:40:11', 87),
(187, 130, 'King Crab', '320', 'Medium - 20,00', 'http://128.199.214.3/pizza//uploads/foods/38_2017/c428e8a437c999994d735e310136eb9c.jpg', '8', 'pepper,', '21,', '20.00,', '2017-10-07 09:41:52', '2017-10-07 09:41:52', 80),
(188, 131, 'King Crab', '320', 'Medium - 20,00', 'http://128.199.214.3/pizza//uploads/foods/38_2017/c428e8a437c999994d735e310136eb9c.jpg', '8', 'pepper,', '21,', '20.00,', '2017-10-07 09:46:31', '2017-10-07 09:46:31', 80),
(189, 132, 'King Crab', '320', 'Medium - 20,00', 'http://128.199.214.3/pizza//uploads/foods/38_2017/c428e8a437c999994d735e310136eb9c.jpg', '8', 'pepper,', '21,', '20.00,', '2017-10-07 09:47:15', '2017-10-07 09:47:15', 80),
(190, 133, 'King Crab', '320', 'Medium - 20,00', 'http://128.199.214.3/pizza//uploads/foods/38_2017/c428e8a437c999994d735e310136eb9c.jpg', '8', 'pepper,', '21,', '20.00,', '2017-10-07 09:51:35', '2017-10-07 09:51:35', 80),
(191, 134, 'King Crab', '320', 'Medium - 20,00', 'http://128.199.214.3/pizza//uploads/foods/38_2017/c428e8a437c999994d735e310136eb9c.jpg', '8', 'pepper,', '21,', '20.00,', '2017-10-07 11:07:40', '2017-10-07 11:07:40', 80),
(192, 135, 'King Crab', '320', 'Medium - 20,00', 'http://128.199.214.3/pizza//uploads/foods/38_2017/c428e8a437c999994d735e310136eb9c.jpg', '8', 'pepper,', '21,', '20.00,', '2017-10-07 11:08:22', '2017-10-07 11:08:22', 80),
(193, 136, 'King Crab', '320', 'Medium - 20,00', 'http://128.199.214.3/pizza//uploads/foods/38_2017/c428e8a437c999994d735e310136eb9c.jpg', '8', 'pepper,', '21,', '20.00,', '2017-10-07 11:15:30', '2017-10-07 11:15:30', 80),
(194, 137, 'King Crab', '320', 'Medium - 20,00', 'http://128.199.214.3/pizza//uploads/foods/38_2017/c428e8a437c999994d735e310136eb9c.jpg', '8', 'pepper,', '21,', '20.00,', '2017-10-07 11:21:58', '2017-10-07 11:21:58', 80);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `food_sizes`
--

CREATE TABLE `food_sizes` (
  `id` int(11) NOT NULL,
  `size_id` int(11) DEFAULT NULL,
  `food_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `food_sizes`
--

INSERT INTO `food_sizes` (`id`, `size_id`, `food_id`, `created_at`, `updated_at`, `price`) VALUES
(34, 24, 78, '2017-07-13 22:11:54', '2017-07-13 22:11:54', '20'),
(35, 25, 78, '2017-07-13 22:11:54', '2017-07-13 22:11:54', '30'),
(36, 26, 78, '2017-07-13 22:11:54', '2017-07-13 22:11:54', '40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `full_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `received` tinyint(4) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `payed` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 is not pay, 1 is payed',
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `full_name`, `address`, `phone`, `content`, `message`, `received`, `created_at`, `updated_at`, `payed`, `user_id`) VALUES
(29, 'Hjjjj', 'Bhdhhd', '25252528255', NULL, '', 1, '2017-07-25 14:04:44', '2017-07-25 14:04:44', 1, NULL),
(31, 'Hjjjj', 'Bhdhhd', '25252528255', NULL, '', 1, '2017-07-25 14:04:46', '2017-07-25 14:04:46', 1, NULL),
(32, 'Hjjjj', 'Bhdhhd', '25252528255', NULL, '', 1, '2017-07-25 14:04:47', '2017-07-25 14:04:47', 1, NULL),
(33, 'Pippo', 'Via torino 46', '3288934937', NULL, '', 1, '2017-07-25 14:40:32', '2017-07-25 14:40:32', 0, NULL),
(34, 'Qqqjdjdbdidjdjs', 'Qqqjddjdidndnddj', '1234656789', NULL, 'Qqq', 1, '2017-07-25 15:46:56', '2017-07-25 15:46:56', 0, NULL),
(35, 'robert', 'sandweg 22', '06605809348', NULL, '/^^^^55', 1, '2017-07-26 04:43:14', '2017-07-26 04:43:14', 0, NULL),
(36, 'mariano', 'skdkskwks', '1123232323', NULL, 'djdjdjd', 1, '2017-07-26 10:15:07', '2017-07-26 10:15:07', 0, NULL),
(37, 'Yavuz cosar', 'Deneme', '5344285169', NULL, 'Deneme', 1, '2017-07-26 15:46:19', '2017-07-26 15:46:19', 0, NULL),
(38, 'Silas', 'Lirii do vale', '8888888889', NULL, 'Mensagem teste', 1, '2017-07-26 20:23:13', '2017-07-26 20:23:13', 0, NULL),
(39, 'Anderson', 'Helloween', '15228768896', NULL, 'hell哦我', 1, '2017-07-27 10:58:36', '2017-07-27 10:58:36', 0, NULL),
(40, 'Doris hermawan', 'Bandar lampung', '082178229993', NULL, 'Disini uni coba', 1, '2017-07-28 09:12:30', '2017-07-28 09:12:30', 0, NULL),
(42, 'Juan vengas ', 'Ave sol 12', '3414194019', NULL, 'Gracias ', 1, '2017-07-29 01:28:21', '2017-07-29 01:28:21', 1, NULL),
(43, 'Wtgvvhvv', 'Ruds yygjuvb. Vgggh', '9654367865', NULL, 'Vghhhhh', 1, '2017-07-29 06:29:15', '2017-07-29 06:29:15', 0, NULL),
(44, 'arizal herendra', 'jl dinoyo', '082331054817', NULL, 'test message order', 1, '2017-07-29 23:11:45', '2017-07-29 23:11:45', 0, NULL),
(46, 'Roee bendor', 'Em namfk 55', '12121212212', NULL, 'Thankz', 1, '2017-07-30 13:45:18', '2017-07-30 13:45:18', 0, NULL),
(47, 'May Lin', 'China', '0999123456', NULL, '', 1, '2017-07-30 17:28:47', '2017-07-30 17:28:47', 1, NULL),
(49, 'rmxtyhji', 'acbvgjjjjhh uuuu', '544444445555', NULL, '', 1, '2017-07-31 03:43:12', '2017-07-31 03:43:12', 1, NULL),
(50, 'rmxtyhji', 'acbvgjjjjhh uuuu', '544444445555', NULL, '', 1, '2017-07-31 03:43:13', '2017-07-31 03:43:13', 1, NULL),
(51, 'Foeeee', 'Jfhfjdjjs', '?0606068500', NULL, '', 1, '2017-07-31 13:40:25', '2017-07-31 13:40:25', 0, NULL),
(52, 'Fffff', 'Sccfc', '78965412300', NULL, 'Test', 1, '2017-07-31 19:04:24', '2017-07-31 19:04:24', 0, NULL),
(53, 'Namr one', 'Gvffugfg', '5556789776', NULL, 'Ghgfy', 1, '2017-08-01 13:50:29', '2017-08-01 13:50:29', 0, NULL),
(54, 'sanaei', '931 n euclid', '5205998131', NULL, '', 1, '2017-08-02 14:32:27', '2017-08-02 14:32:27', 1, NULL),
(55, 'Bxb xbbdnd', 'Dbndnd@nxnxndxcc.cc', '8575757$78', NULL, 'Hdhdhd', 1, '2017-08-03 15:20:47', '2017-08-03 15:20:47', 0, NULL),
(56, 'Bhsjs', 'Mnznankj', '9292881919', NULL, '', 1, '2017-08-03 15:56:42', '2017-08-03 15:56:42', 0, NULL),
(57, 'Hhshshs', 'Laxmi', '8993747584', NULL, 'Rest', 1, '2017-08-03 15:57:08', '2017-08-03 15:57:08', 0, NULL),
(59, 'Ididid ', 'Jddjdjdjdj', 'Dj3jrjd djd dj', NULL, '', 1, '2017-08-04 03:09:40', '2017-08-04 03:09:40', 0, NULL),
(60, 'luiutthj', 'jguyhj vghh hhgh', '8753235786', NULL, 'Jhufgvfjhb hghug hgbnj', 1, '2017-08-04 23:07:26', '2017-08-04 23:07:26', 0, NULL),
(61, 'Doris hermawan', 'Bandar lampung', '083178229993', NULL, 'Disini ada semua harga', 1, '2017-08-05 10:40:54', '2017-08-05 10:40:54', 0, NULL),
(62, 'Esinniobiwa', 'No 102,ode alausa', '08162609437', NULL, 'I love me', 1, '2017-08-08 03:27:46', '2017-08-08 03:27:46', 1, NULL),
(63, 'Esinniobiwa', 'No 102,ode alausa', '08162609437', NULL, 'I love me', 1, '2017-08-08 03:27:47', '2017-08-08 03:27:47', 1, NULL),
(64, 'Moises Valera', 'Carrera 24 # 25 - 13', '573148337692', NULL, '', 1, '2017-08-09 00:50:31', '2017-08-09 00:50:31', 1, NULL),
(66, 'Rigos', '02 fisrt st', '7072025312', NULL, '', 1, '2017-08-09 10:21:42', '2017-08-09 10:21:42', 0, NULL),
(67, 'thhgbbfrt hhj', '=', '4444444444', NULL, '', 1, '2017-08-09 20:28:37', '2017-08-09 20:28:37', 0, NULL),
(68, 'Elfraga', '234 chesker estre', '4847568756', NULL, '', 1, '2017-08-11 07:49:37', '2017-08-11 07:49:37', 0, NULL),
(69, 'Paddy Picon', 'moravia', '506 8956 4856', NULL, 'gracias', 1, '2017-08-11 14:03:05', '2017-08-11 14:03:05', 0, NULL),
(70, ' Mikiol', 'Bhzbhf 32', '5673367566', NULL, '', 1, '2017-08-12 11:26:13', '2017-08-12 11:26:13', 0, NULL),
(71, 'Tonyno', 'Via roma 33', '3337766555', NULL, '', 1, '2017-08-12 15:37:03', '2017-08-12 15:37:03', 0, NULL),
(72, 'Χφωωψψ', '3333377777', '67777777733333', NULL, 'Ρρρδ', 1, '2017-08-12 20:22:57', '2017-08-12 20:22:57', 0, NULL),
(73, 'Andre jaccon', 'jaccon@gmail.com', '11955696541', NULL, 'Teste', 1, '2017-08-15 00:43:32', '2017-08-15 00:43:32', 0, NULL),
(74, 'Jose ', 'Xarrea 123 y 67', '3015279452', NULL, 'Pizza ', 1, '2017-08-15 06:19:59', '2017-08-15 06:19:59', 0, NULL),
(75, 'Syed Aashir', 'House No 3', ' 923123500256', NULL, 'i Am Waiting.', 1, '2017-08-15 15:44:36', '2017-08-15 15:44:36', 0, NULL),
(76, 'Nguyen Thanh Luan', 'Ha Long - Quang Ninh', '0868120192', NULL, 'Hi hi, this is test order ', 1, '2017-08-15 22:24:05', '2017-08-15 22:24:05', 0, NULL),
(78, 'Pisser', 'Luscher Str.12', '018008156675', NULL, 'Fickt Euch alle!', 1, '2017-08-16 23:10:30', '2017-08-16 23:10:30', 0, NULL),
(79, 'Salman', 'Homeless...........', '03422708646', NULL, 'Done', 1, '2017-08-17 19:04:13', '2017-08-17 19:04:13', 0, NULL),
(80, 'Salman', 'Hello mere ghar ao', '03422708646', NULL, 'ghar ajaaaaa', 1, '2017-08-18 15:08:28', '2017-08-18 15:08:28', 0, NULL),
(81, 'Uriel', '111 north street', ' 264814333233', NULL, 'Hot please', 1, '2017-08-18 15:16:45', '2017-08-18 15:16:45', 1, NULL),
(82, 'uriel', '555 north street', ' 264885645676', NULL, 'Yes hot', 1, '2017-08-18 15:43:43', '2017-08-18 15:43:43', 0, NULL),
(83, 'bdvehebshs', 'jdvdjdbdbdebdbe bed  DVD eel d', '09357309247', NULL, 'Vdhdbdvdedb', 1, '2017-08-23 03:28:40', '2017-08-23 03:28:40', 0, NULL),
(84, 'Gonzo', 'Las rosas 345', '9872536273', NULL, 'Enviar porfsvoor', 1, '2017-08-24 23:38:21', '2017-08-24 23:38:21', 0, NULL),
(85, 'Bashi', 'Hip hip pop opo po', '558032484717', NULL, 'Hi .am just testing ', 1, '2017-08-25 19:28:41', '2017-08-25 19:28:41', 0, NULL),
(86, 'Juan pablo', '22av - 2st', '3137526420', NULL, 'Kzkzkz', 1, '2017-08-26 11:56:23', '2017-08-26 11:56:23', 0, NULL),
(87, 'Paisa', '12 a - 12av', '3137526420', NULL, 'Aaaaaaa', 1, '2017-08-26 12:03:55', '2017-08-26 12:03:55', 0, NULL),
(88, 'Alain', 'Alameda@gmail.com', '2101234567', NULL, '', 1, '2017-08-27 02:20:23', '2017-08-27 02:20:23', 0, NULL),
(89, 'ali hggt', 'utty@ryu.in', '77777777788888', NULL, 'hi', 1, '2017-08-28 03:06:44', '2017-08-28 03:06:44', 0, NULL),
(90, 'Nadie', 'Nores martinez 2649', '5427374747$838', NULL, 'Test app', 1, '2017-08-29 02:42:38', '2017-08-29 02:42:38', 0, NULL),
(91, 'Armin', 'Shshshhshsh', '844848448488', NULL, '', 1, '2017-08-30 08:55:33', '2017-08-30 08:55:33', 0, NULL),
(92, 'Fhgdhffg', 'BUBFHTHTHTH RHRVFVF', '566446545 no', NULL, 'Fhrhiivfhydfh', 1, '2017-08-30 14:31:54', '2017-08-30 14:31:54', 0, NULL),
(93, 'Ghalib', 'Al Amerat , Behind Sultan Center', '96892280422', NULL, 'Please call before arrival', 1, '2017-09-01 03:26:30', '2017-09-01 03:26:30', 0, NULL),
(95, 'Rsmitu', 'Rehj uuy hun66', '45777777558', NULL, '', 1, '2017-09-02 08:45:53', '2017-09-02 08:45:53', 0, NULL),
(97, 'Jake cjj k pll', 'Tacna hdh 378', '7777777212', NULL, 'Test apphcjxh', 1, '2017-09-04 12:03:57', '2017-09-04 12:03:57', 0, NULL),
(98, 'Jssjsjj', 'Jedjjddjjd', '6992939383383', NULL, 'Jdjdjdjd', 1, '2017-09-05 02:10:50', '2017-09-05 02:10:50', 0, NULL),
(99, 'Jamsheer ', 'Looppe villa', '0971502029780', NULL, 'Hai ', 1, '2017-09-05 16:08:28', '2017-09-05 16:08:28', 0, NULL),
(100, 'Jamsheer ', 'Loopp villa', '0971502029780', NULL, 'Hai gee', 1, '2017-09-05 16:14:21', '2017-09-05 16:14:21', 0, NULL),
(101, 'Ffgfcfcvc', 'Peo ventura 16', '6708500039', NULL, 'Demo', 1, '2017-09-05 21:46:21', '2017-09-05 21:46:21', 0, NULL),
(102, 'hhgsvgg', 'hbvgd dhh hv d', '6555566556', NULL, '', 1, '2017-09-07 21:21:45', '2017-09-07 21:21:45', 0, NULL),
(104, 'Yasdine', '56 h fhbv jb', '0661214203', NULL, '', 0, '2017-09-08 17:38:35', '2017-09-08 17:38:35', 0, NULL),
(105, 'Sam davido', '23 rue de france', '0877664489', NULL, '', 0, '2017-09-09 00:27:13', '2017-09-09 00:27:13', 0, NULL),
(106, 'Sam06', '23 rue de france', '0788899000', NULL, 'Merxi', 0, '2017-09-12 18:51:44', '2017-09-12 18:51:44', 0, 0),
(107, 'Denis', 'Mendel 215', '89174440045', NULL, 'хай', 1, '2017-09-13 13:34:46', '2017-09-13 13:34:46', 0, 0),
(108, 'Blagoi Blagov', 'Jfjf hdhdjc', '', NULL, 'Bchcj', 0, '2017-09-17 18:59:38', '2017-09-17 18:59:38', 0, 6),
(109, 'Samy ', '234 rye charles', '0766655543', NULL, 'Avant 23h', 0, '2017-09-20 04:43:42', '2017-09-20 04:43:42', 0, 0),
(110, 'Hgggghhh', 'Ytgffggggggy', '13776678966', NULL, 'Hyyyhhhhhy', 0, '2017-09-20 10:24:42', '2017-09-20 10:24:42', 0, 0),
(111, 'rqphaek', 'Joaquim lourenco', '3190888888', NULL, 'Teste ', 0, '2017-09-22 09:59:13', '2017-09-22 09:59:13', 0, 0),
(112, 'iillll', 'jkkkkkkkkkhgv', '679888999000', NULL, '', 1, '2017-09-24 21:00:44', '2017-09-24 21:00:44', 0, 0),
(113, 'Pero nadai', 'Jejejeje nrjejeje jejeje', '1847848483', NULL, 'Jdjeje bdbsjeje nsjejeje ', 0, '2017-09-26 00:33:06', '2017-09-26 00:33:06', 0, 0),
(114, 'Lauro Casa', 'Casa 12 Ajsjdjksks', '993487662442', NULL, 'Em dnheiro ', 0, '2017-09-26 09:06:28', '2017-09-26 09:06:28', 0, 0),
(115, 'Lauro fefnandes', 'Das colinas 34', '435555667574', NULL, 'Recebe em dinehri ', 0, '2017-09-26 09:19:07', '2017-09-26 09:19:07', 0, 0),
(116, 'Younes', 'Rue 36 n44 Oulfa casablanca', '0694853780', NULL, '', 1, '2017-09-26 14:47:33', '2017-09-26 14:47:33', 0, 0),
(117, 'Fgh jgcvjkgdcjkv', 'Adf, vhjjjgf', '134546754776', NULL, 'Grsdghj', 0, '2017-10-03 16:26:55', '2017-10-03 16:26:55', 0, 0),
(118, 'Pushkar Narayan', 'hdjxhdbdbxbd hdhdhd', '', NULL, 'sbxhxnxbxbd djdhd', 0, '2017-10-03 22:48:18', '2017-10-03 22:48:18', 0, 0),
(119, 'Denis', 'Менделеева 215', ' 79178687452', NULL, 'Привет', 0, '2017-10-04 13:31:38', '2017-10-04 13:31:38', 0, 0),
(120, 'Dffvdgyh Gfghbb', 'Менлелеева 215', '89175544500', NULL, 'Раз два три', 0, '2017-10-05 02:30:15', '2017-10-05 02:30:15', 0, 0),
(121, 'Qqqqqqqqq  qqqq', 'Deneme qqqq', ' 90 549 999 9 999', NULL, 'Deneme qqq', 1, '2017-10-05 20:30:17', '2017-10-05 20:30:17', 0, 0),
(122, 'Shsjajaj', 'Euahajsjajajja', '3818238382828', NULL, 'Eus', 0, '2017-10-07 06:23:29', '2017-10-07 06:23:29', 0, 0),
(123, 'Fsdfr vdfff', 'Nobdr ds 45', '2132456742', NULL, 'Feftefgt fdethreghebbbv.  Ffvbtefhtredx dsadcbf', 0, '2017-10-07 06:52:56', '2017-10-07 06:52:56', 0, 0),
(124, 'De ggfdd vgfvhg', 'Cdfgfd dddd', '2134465433', NULL, 'Derfffr ', 0, '2017-10-07 07:01:08', '2017-10-07 07:01:08', 0, 0),
(125, 'Huln bibi', 'Degtef ftdd', '2135446355', NULL, 'DF grdfgffsccgr', 0, '2017-10-07 07:10:56', '2017-10-07 07:10:56', 0, 0),
(126, 'Kaua Souza', 'Xesfe vdddf', '', NULL, 'Dsdfgrf ffghhg', 0, '2017-10-07 07:26:06', '2017-10-07 07:26:06', 0, 0),
(127, 'Jckdjkxkdkdkfj', 'Bcjsjje ', '0868120192', NULL, 'Cjjxkxxjxjxjxjdj', 0, '2017-10-07 09:31:41', '2017-10-07 09:31:41', 0, 0),
(128, 'Nguyễn Thành Luân', 'Hạ Long', '0867120192', NULL, 'Cdkfkcfndk', 0, '2017-10-07 09:38:37', '2017-10-07 09:38:37', 0, 0),
(129, 'Nguyễn Thành Luân', 'Vcmcmxmff', '0868120192', NULL, 'Cnxmmcmcmcmf', 0, '2017-10-07 09:40:11', '2017-10-07 09:40:11', 0, 0),
(130, 'Nguyễn Thành Luân', 'Hạ Long', '0868120192', NULL, 'Viet Nam', 0, '2017-10-07 09:41:52', '2017-10-07 09:41:52', 0, 0),
(131, 'Nguyen Thanh Luan', 'Ha Long', '0868120192', NULL, 'Ha Long', 0, '2017-10-07 09:46:31', '2017-10-07 09:46:31', 0, 0),
(132, 'Nguyen Thanh Luan', 'Ha Long', '0868120192', NULL, 'Ha Long Ha Long', 0, '2017-10-07 09:47:15', '2017-10-07 09:47:15', 0, 0),
(133, 'Nguyen Thanh Luan', 'HA LONG', '0868120192', NULL, 'HẠ LONG ', 0, '2017-10-07 09:51:35', '2017-10-07 09:51:35', 0, 0),
(134, 'Nguyen Thanh Luan', 'Hạ Long', '0868120192', NULL, 'kalsjda lkdajs dkladj akslda dlakd', 0, '2017-10-07 11:07:40', '2017-10-07 11:07:40', 0, 0),
(135, 'nguyen Thanh Luan', 'Hạ Long ', '0868120192', NULL, 'oiuiouio', 0, '2017-10-07 11:08:22', '2017-10-07 11:08:22', 0, 0),
(136, 'Nguyen Thanh Luan', 'ha Long', '0868120192', NULL, 'sdfkljsdfkl sdjfklsd fsjdf lsfjlk ', 0, '2017-10-07 11:15:30', '2017-10-07 11:15:30', 0, 0),
(137, 'Nguyen Thanh Luan', 'Ha Long', '0868120192', NULL, 'asjkfhsdkj fshdfjk sdhfk ', 0, '2017-10-07 11:21:58', '2017-10-07 11:21:58', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sizes`
--

CREATE TABLE `sizes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sizes`
--

INSERT INTO `sizes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(24, 'Small', '2017-07-13 22:09:04', '2017-07-13 22:09:04'),
(25, 'Medium', '2017-07-13 22:09:16', '2017-07-13 22:09:16'),
(26, 'Large', '2017-07-13 22:09:22', '2017-07-13 22:09:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `fb_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `pwd` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `full_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  `phone` varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  `address` varchar(100) COLLATE utf8_unicode_ci DEFAULT '',
  `website` varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `perm` tinyint(4) DEFAULT NULL,
  `avt` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `activated` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `fb_id`, `user_name`, `pwd`, `full_name`, `email`, `phone`, `address`, `website`, `updated_at`, `created_at`, `perm`, `avt`, `activated`) VALUES
(1, '0', 'admin', '77e2edcc9b40441200e31dc57dbb8829', 'Kim Joong Un', 'mrkim@gmail.com', '', 'North Korean', '', '2017-10-07 11:59:31', '2014-02-12 08:45:16', 0, 'uploads/avts/fff45d52ecb37c5051f4ce76fd701262.jpeg', 1),
(2, '', 'lrandom', '9d14052654447ba7dd0af370a2843a94', 'Hiren', 'hiren12pandya@gmail.com', '', 'Bopan Australia', '', '2017-10-06 18:40:37', '2017-07-19 08:16:31', 1, '', 1),
(3, '', 'koodinh', 'c56d0e9a7ccec67b4ea131655038d604', 'Nguyen Thanh Luan', 'beginlive@gmail.com', '', 'Ha Long', '', '2017-08-11 17:23:52', '2017-08-11 17:23:52', 1, '', 1),
(4, '1614490468622931', 'mmoc_1614490468622931', NULL, 'Nguyen Thanh Luan', 'mmochicken92@gmail.com', '', '', '', '2017-09-10 15:56:05', '2017-09-10 15:56:05', 2, 'http://graph.facebook.com/1614490468622931/picture?width=200&height=200', 1),
(5, '1155737207874826', 'brij_1155737207874826', NULL, 'Biju Patel', 'brijesh_526@yahoo.in', '', '', '', '2017-09-14 00:13:02', '2017-09-14 00:13:02', 2, 'http://graph.facebook.com/1155737207874826/picture?width=200&height=200', 1),
(6, '10208957244402573', 'blag_10208957244402573', NULL, 'Blagoi Blagov', 'blagoicho@email.bg', '', '', '', '2017-09-17 18:58:25', '2017-09-17 18:58:25', 2, 'http://graph.facebook.com/10208957244402573/picture?width=200&height=200', 1),
(7, '10210616595984106', 'napo_10210616595984106', NULL, 'Stefano Notty Perini', 'napoleonebonaparte2@alice.it', '', '', '', '2017-09-21 16:15:20', '2017-09-21 16:15:20', 2, 'http://graph.facebook.com/10210616595984106/picture?width=200&height=200', 1),
(8, '484321425250852', 'upps_484321425250852', NULL, 'Stefano Sviluppo', 'uppsweb@gmail.com', '', '', '', '2017-09-21 16:28:32', '2017-09-21 16:28:32', 2, 'http://graph.facebook.com/484321425250852/picture?width=200&height=200', 1),
(9, '2125098537717447', 'jose_2125098537717447', NULL, 'Jose Mauro', 'josemauromani@gmail.com', '', '', '', '2017-09-22 15:47:09', '2017-09-22 15:47:09', 2, 'http://graph.facebook.com/2125098537717447/picture?width=200&height=200', 1),
(10, '703368946539450', 'jair_703368946539450', NULL, 'Fernando Juarez Rodriguez', 'jairo_2896@outlook.com', '934956967', 'No tengo', '', '2017-09-24 16:20:41', '2017-09-24 16:20:07', 2, 'http://graph.facebook.com/703368946539450/picture?width=200&height=200', 1),
(11, '1698620263481361', 'dext_1698620263481361', NULL, 'Dexter D. Cain', 'dextercain@hotmail.com', '', '', '', '2017-09-26 09:57:26', '2017-09-26 09:57:26', 2, 'http://graph.facebook.com/1698620263481361/picture?width=200&height=200', 1),
(12, '1765179523775694', 'desi_1765179523775694', NULL, 'Kalypso Kichu', 'designskalypso@gmail.com', '', '', '', '2017-09-26 17:51:33', '2017-09-26 17:51:33', 2, 'http://graph.facebook.com/1765179523775694/picture?width=200&height=200', 1),
(13, '1691070420965316', 'push_1691070420965316', NULL, 'Pushkar Narayan', 'pushkar.narayan0@gmail.com', '', '', '', '2017-10-03 22:47:12', '2017-10-03 22:47:12', 2, 'http://graph.facebook.com/1691070420965316/picture?width=200&height=200', 1),
(14, '1479547765460595', 'anjo_1479547765460595', NULL, 'Kaua Souza', 'anjosdogo@gmail.com', '', '', '', '2017-10-07 07:24:03', '2017-10-07 07:24:03', 2, 'http://graph.facebook.com/1479547765460595/picture?width=200&height=200', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`,`name`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `name_2` (`name`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `extras`
--
ALTER TABLE `extras`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `foods`
--
ALTER TABLE `foods`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `food_extras`
--
ALTER TABLE `food_extras`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `food_orders`
--
ALTER TABLE `food_orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `food_sizes`
--
ALTER TABLE `food_sizes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_name` (`user_name`),
  ADD UNIQUE KEY `email` (`email`,`phone`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT cho bảng `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;
--
-- AUTO_INCREMENT cho bảng `extras`
--
ALTER TABLE `extras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT cho bảng `foods`
--
ALTER TABLE `foods`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;
--
-- AUTO_INCREMENT cho bảng `food_extras`
--
ALTER TABLE `food_extras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT cho bảng `food_orders`
--
ALTER TABLE `food_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;
--
-- AUTO_INCREMENT cho bảng `food_sizes`
--
ALTER TABLE `food_sizes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;
--
-- AUTO_INCREMENT cho bảng `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
