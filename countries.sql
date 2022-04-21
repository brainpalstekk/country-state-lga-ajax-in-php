-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2022 at 10:36 AM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `focus`
--

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `sortname` varchar(3) NOT NULL,
  `name` varchar(150) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `sortname`, `name`, `status`) VALUES
(1, 'AF', 'Afghanistan', 0),
(2, 'AL', 'Albania', 0),
(3, 'DZ', 'Algeria', 0),
(4, 'AS', 'American Samoa', 0),
(5, 'AD', 'Andorra', 0),
(6, 'AO', 'Angola', 0),
(7, 'AI', 'Anguilla', 0),
(8, 'AQ', 'Antarctica', 0),
(9, 'AG', 'Antigua And Barbuda', 0),
(10, 'AR', 'Argentina', 0),
(11, 'AM', 'Armenia', 0),
(12, 'AW', 'Aruba', 0),
(13, 'AU', 'Australia', 0),
(14, 'AT', 'Austria', 0),
(15, 'AZ', 'Azerbaijan', 0),
(16, 'BS', 'Bahamas The', 0),
(17, 'BH', 'Bahrain', 0),
(18, 'BD', 'Bangladesh', 0),
(19, 'BB', 'Barbados', 0),
(20, 'BY', 'Belarus', 0),
(21, 'BE', 'Belgium', 0),
(22, 'BZ', 'Belize', 0),
(23, 'BJ', 'Benin', 0),
(24, 'BM', 'Bermuda', 0),
(25, 'BT', 'Bhutan', 0),
(26, 'BO', 'Bolivia', 0),
(27, 'BA', 'Bosnia and Herzegovina', 0),
(28, 'BW', 'Botswana', 0),
(29, 'BV', 'Bouvet Island', 0),
(30, 'BR', 'Brazil', 0),
(31, 'IO', 'British Indian Ocean Territory', 0),
(32, 'BN', 'Brunei', 0),
(33, 'BG', 'Bulgaria', 0),
(34, 'BF', 'Burkina Faso', 0),
(35, 'BI', 'Burundi', 0),
(36, 'KH', 'Cambodia', 0),
(37, 'CM', 'Cameroon', 0),
(38, 'CA', 'Canada', 0),
(39, 'CV', 'Cape Verde', 0),
(40, 'KY', 'Cayman Islands', 0),
(41, 'CF', 'Central African Republic', 0),
(42, 'TD', 'Chad', 0),
(43, 'CL', 'Chile', 0),
(44, 'CN', 'China', 0),
(45, 'CX', 'Christmas Island', 0),
(46, 'CC', 'Cocos (Keeling) Islands', 0),
(47, 'CO', 'Colombia', 0),
(48, 'KM', 'Comoros', 0),
(49, 'CG', 'Congo', 0),
(50, 'CD', 'Congo The Democratic Republic Of The', 0),
(51, 'CK', 'Cook Islands', 0),
(52, 'CR', 'Costa Rica', 0),
(53, 'CI', 'Cote D\'Ivoire (Ivory Coast)', 0),
(54, 'HR', 'Croatia (Hrvatska)', 0),
(55, 'CU', 'Cuba', 0),
(56, 'CY', 'Cyprus', 0),
(57, 'CZ', 'Czech Republic', 0),
(58, 'DK', 'Denmark', 0),
(59, 'DJ', 'Djibouti', 0),
(60, 'DM', 'Dominica', 0),
(61, 'DO', 'Dominican Republic', 0),
(62, 'TP', 'East Timor', 0),
(63, 'EC', 'Ecuador', 0),
(64, 'EG', 'Egypt', 0),
(65, 'SV', 'El Salvador', 0),
(66, 'GQ', 'Equatorial Guinea', 0),
(67, 'ER', 'Eritrea', 0),
(68, 'EE', 'Estonia', 0),
(69, 'ET', 'Ethiopia', 0),
(70, 'XA', 'External Territories of Australia', 0),
(71, 'FK', 'Falkland Islands', 0),
(72, 'FO', 'Faroe Islands', 0),
(73, 'FJ', 'Fiji Islands', 0),
(74, 'FI', 'Finland', 0),
(75, 'FR', 'France', 0),
(76, 'GF', 'French Guiana', 0),
(77, 'PF', 'French Polynesia', 0),
(78, 'TF', 'French Southern Territories', 0),
(79, 'GA', 'Gabon', 0),
(80, 'GM', 'Gambia The', 0),
(81, 'GE', 'Georgia', 0),
(82, 'DE', 'Germany', 0),
(83, 'GH', 'Ghana', 0),
(84, 'GI', 'Gibraltar', 0),
(85, 'GR', 'Greece', 0),
(86, 'GL', 'Greenland', 0),
(87, 'GD', 'Grenada', 0),
(88, 'GP', 'Guadeloupe', 0),
(89, 'GU', 'Guam', 0),
(90, 'GT', 'Guatemala', 0),
(91, 'XU', 'Guernsey and Alderney', 0),
(92, 'GN', 'Guinea', 0),
(93, 'GW', 'Guinea-Bissau', 0),
(94, 'GY', 'Guyana', 0),
(95, 'HT', 'Haiti', 0),
(96, 'HM', 'Heard and McDonald Islands', 0),
(97, 'HN', 'Honduras', 0),
(98, 'HK', 'Hong Kong S.A.R.', 0),
(99, 'HU', 'Hungary', 0),
(100, 'IS', 'Iceland', 0),
(101, 'IN', 'India', 0),
(102, 'ID', 'Indonesia', 0),
(103, 'IR', 'Iran', 0),
(104, 'IQ', 'Iraq', 0),
(105, 'IE', 'Ireland', 0),
(106, 'IL', 'Israel', 0),
(107, 'IT', 'Italy', 0),
(108, 'JM', 'Jamaica', 0),
(109, 'JP', 'Japan', 0),
(110, 'XJ', 'Jersey', 0),
(111, 'JO', 'Jordan', 0),
(112, 'KZ', 'Kazakhstan', 0),
(113, 'KE', 'Kenya', 0),
(114, 'KI', 'Kiribati', 0),
(115, 'KP', 'Korea North', 0),
(116, 'KR', 'Korea South', 0),
(117, 'KW', 'Kuwait', 0),
(118, 'KG', 'Kyrgyzstan', 0),
(119, 'LA', 'Laos', 0),
(120, 'LV', 'Latvia', 0),
(121, 'LB', 'Lebanon', 0),
(122, 'LS', 'Lesotho', 0),
(123, 'LR', 'Liberia', 0),
(124, 'LY', 'Libya', 0),
(125, 'LI', 'Liechtenstein', 0),
(126, 'LT', 'Lithuania', 0),
(127, 'LU', 'Luxembourg', 0),
(128, 'MO', 'Macau S.A.R.', 0),
(129, 'MK', 'Macedonia', 0),
(130, 'MG', 'Madagascar', 0),
(131, 'MW', 'Malawi', 0),
(132, 'MY', 'Malaysia', 0),
(133, 'MV', 'Maldives', 0),
(134, 'ML', 'Mali', 0),
(135, 'MT', 'Malta', 0),
(136, 'XM', 'Man (Isle of)', 0),
(137, 'MH', 'Marshall Islands', 0),
(138, 'MQ', 'Martinique', 0),
(139, 'MR', 'Mauritania', 0),
(140, 'MU', 'Mauritius', 0),
(141, 'YT', 'Mayotte', 0),
(142, 'MX', 'Mexico', 0),
(143, 'FM', 'Micronesia', 0),
(144, 'MD', 'Moldova', 0),
(145, 'MC', 'Monaco', 0),
(146, 'MN', 'Mongolia', 0),
(147, 'MS', 'Montserrat', 0),
(148, 'MA', 'Morocco', 0),
(149, 'MZ', 'Mozambique', 0),
(150, 'MM', 'Myanmar', 0),
(151, 'NA', 'Namibia', 0),
(152, 'NR', 'Nauru', 0),
(153, 'NP', 'Nepal', 0),
(154, 'AN', 'Netherlands Antilles', 0),
(155, 'NL', 'Netherlands The', 0),
(156, 'NC', 'New Caledonia', 0),
(157, 'NZ', 'New Zealand', 0),
(158, 'NI', 'Nicaragua', 0),
(159, 'NE', 'Niger', 0),
(160, 'NG', 'Nigeria', 1),
(161, 'NU', 'Niue', 0),
(162, 'NF', 'Norfolk Island', 0),
(163, 'MP', 'Northern Mariana Islands', 0),
(164, 'NO', 'Norway', 0),
(165, 'OM', 'Oman', 0),
(166, 'PK', 'Pakistan', 0),
(167, 'PW', 'Palau', 0),
(168, 'PS', 'Palestinian Territory Occupied', 0),
(169, 'PA', 'Panama', 0),
(170, 'PG', 'Papua new Guinea', 0),
(171, 'PY', 'Paraguay', 0),
(172, 'PE', 'Peru', 0),
(173, 'PH', 'Philippines', 0),
(174, 'PN', 'Pitcairn Island', 0),
(175, 'PL', 'Poland', 0),
(176, 'PT', 'Portugal', 0),
(177, 'PR', 'Puerto Rico', 0),
(178, 'QA', 'Qatar', 0),
(179, 'RE', 'Reunion', 0),
(180, 'RO', 'Romania', 0),
(181, 'RU', 'Russia', 0),
(182, 'RW', 'Rwanda', 0),
(183, 'SH', 'Saint Helena', 0),
(184, 'KN', 'Saint Kitts And Nevis', 0),
(185, 'LC', 'Saint Lucia', 0),
(186, 'PM', 'Saint Pierre and Miquelon', 0),
(187, 'VC', 'Saint Vincent And The Grenadines', 0),
(188, 'WS', 'Samoa', 0),
(189, 'SM', 'San Marino', 0),
(190, 'ST', 'Sao Tome and Principe', 0),
(191, 'SA', 'Saudi Arabia', 0),
(192, 'SN', 'Senegal', 0),
(193, 'RS', 'Serbia', 0),
(194, 'SC', 'Seychelles', 0),
(195, 'SL', 'Sierra Leone', 0),
(196, 'SG', 'Singapore', 0),
(197, 'SK', 'Slovakia', 0),
(198, 'SI', 'Slovenia', 0),
(199, 'XG', 'Smaller Territories of the UK', 0),
(200, 'SB', 'Solomon Islands', 0),
(201, 'SO', 'Somalia', 0),
(202, 'ZA', 'South Africa', 0),
(203, 'GS', 'South Georgia', 0),
(204, 'SS', 'South Sudan', 0),
(205, 'ES', 'Spain', 0),
(206, 'LK', 'Sri Lanka', 0),
(207, 'SD', 'Sudan', 0),
(208, 'SR', 'Suriname', 0),
(209, 'SJ', 'Svalbard And Jan Mayen Islands', 0),
(210, 'SZ', 'Swaziland', 0),
(211, 'SE', 'Sweden', 0),
(212, 'CH', 'Switzerland', 0),
(213, 'SY', 'Syria', 0),
(214, 'TW', 'Taiwan', 0),
(215, 'TJ', 'Tajikistan', 0),
(216, 'TZ', 'Tanzania', 0),
(217, 'TH', 'Thailand', 0),
(218, 'TG', 'Togo', 0),
(219, 'TK', 'Tokelau', 0),
(220, 'TO', 'Tonga', 0),
(221, 'TT', 'Trinidad And Tobago', 0),
(222, 'TN', 'Tunisia', 0),
(223, 'TR', 'Turkey', 0),
(224, 'TM', 'Turkmenistan', 0),
(225, 'TC', 'Turks And Caicos Islands', 0),
(226, 'TV', 'Tuvalu', 0),
(227, 'UG', 'Uganda', 0),
(228, 'UA', 'Ukraine', 0),
(229, 'AE', 'United Arab Emirates', 0),
(230, 'GB', 'United Kingdom', 0),
(231, 'US', 'United States', 0),
(232, 'UM', 'United States Minor Outlying Islands', 0),
(233, 'UY', 'Uruguay', 0),
(234, 'UZ', 'Uzbekistan', 0),
(235, 'VU', 'Vanuatu', 0),
(236, 'VA', 'Vatican City State (Holy See)', 0),
(237, 'VE', 'Venezuela', 0),
(238, 'VN', 'Vietnam', 0),
(239, 'VG', 'Virgin Islands (British)', 0),
(240, 'VI', 'Virgin Islands (US)', 0),
(241, 'WF', 'Wallis And Futuna Islands', 0),
(242, 'EH', 'Western Sahara', 0),
(243, 'YE', 'Yemen', 0),
(244, 'YU', 'Yugoslavia', 0),
(245, 'ZM', 'Zambia', 0),
(246, 'ZW', 'Zimbabwe', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
