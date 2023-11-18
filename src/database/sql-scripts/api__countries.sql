-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2023 at 11:52 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `znzkvi-v2`
--

-- --------------------------------------------------------

--
-- Table structure for table `api__countries`
--

CREATE TABLE `api__countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_ba` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `flag` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `api__countries`
--

INSERT INTO `api__countries` (`id`, `name`, `name_ba`, `code`, `flag`, `phone_code`, `created_at`, `updated_at`) VALUES
(1, 'Albania', 'Albanija', 'AL', 'https://media-2.api-sports.io/flags/al.svg', '+355', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(2, 'Algeria', 'Alžir', 'DZ', 'https://media-1.api-sports.io/flags/dz.svg', '+213', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(3, 'Andorra', 'Andora', 'AD', 'https://media-3.api-sports.io/flags/ad.svg', '+376', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(4, 'Angola', 'Angola', 'AO', 'https://media-1.api-sports.io/flags/ao.svg', '+244', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(5, 'Argentina', 'Argentina', 'AR', 'https://media-2.api-sports.io/flags/ar.svg', '+54', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(6, 'Armenia', 'Armenia', 'AM', 'https://media-3.api-sports.io/flags/am.svg', '+374', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(7, 'Aruba', 'Aruba', 'AW', 'https://media-3.api-sports.io/flags/aw.svg', '+297', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(8, 'Australia', 'Australija', 'AU', 'https://media-3.api-sports.io/flags/au.svg', '+61', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(9, 'Austria', 'Austrija', 'AT', 'https://media-2.api-sports.io/flags/at.svg', '+43', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(10, 'Azerbaidjan', 'Azerbejdžan', 'AZ', 'https://media-2.api-sports.io/flags/az.svg', '+994', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(11, 'Bahrain', 'Bahrein', 'BH', 'https://media-3.api-sports.io/flags/bh.svg', '+973', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(12, 'Bangladesh', 'Bangladeš', 'BD', 'https://media-3.api-sports.io/flags/bd.svg', '+880', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(13, 'Barbados', 'Barbados', 'BB', 'https://media-3.api-sports.io/flags/bb.svg', '+1-246', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(14, 'Belarus', 'Bjelorusija', 'BY', 'https://media-3.api-sports.io/flags/by.svg', '+375', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(15, 'Belgium', 'Belgija', 'BE', 'https://media-2.api-sports.io/flags/be.svg', '+32', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(16, 'Belize', 'Belize', 'BZ', 'https://media-2.api-sports.io/flags/bz.svg', '+501', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(17, 'Benin', 'Benin', 'BJ', 'https://media-2.api-sports.io/flags/bj.svg', '+229', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(18, 'Bermuda', 'Bermuda', 'BM', 'https://media-1.api-sports.io/flags/bm.svg', '+1-441', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(19, 'Bhutan', 'Butan', 'BT', 'https://media-2.api-sports.io/flags/bt.svg', '+975', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(20, 'Bolivia', 'Bolivija', 'BO', 'https://media-3.api-sports.io/flags/bo.svg', '+591', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(21, 'Bosnia', 'Bosna i Hercegovina', 'BA', 'https://media-1.api-sports.io/flags/ba.svg', '+387', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(22, 'Botswana', 'Bocvana', 'BW', 'https://media-2.api-sports.io/flags/bw.svg', '+267', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(23, 'Brazil', 'Brazil', 'BR', 'https://media-2.api-sports.io/flags/br.svg', '+55', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(24, 'Bulgaria', 'Bugarska', 'BG', 'https://media-2.api-sports.io/flags/bg.svg', '+359', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(25, 'Burkina-Faso', 'Burkina Faso', 'BF', 'https://media-3.api-sports.io/flags/bf.svg', '+226', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(26, 'Burundi', 'Burundi', 'BI', 'https://media-3.api-sports.io/flags/bi.svg', '+257', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(27, 'Cambodia', 'Kambodža', 'KH', 'https://media-2.api-sports.io/flags/kh.svg', '+855', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(28, 'Cameroon', 'Kamerun', 'CM', 'https://media-3.api-sports.io/flags/cm.svg', '+237', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(29, 'Canada', 'Kanada', 'CA', 'https://media-2.api-sports.io/flags/ca.svg', '+1', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(30, 'Chile', 'Čile', 'CL', 'https://media-3.api-sports.io/flags/cl.svg', '+56', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(31, 'China', 'Kina', 'CN', 'https://media-2.api-sports.io/flags/cn.svg', '+86', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(32, 'Chinese-Taipei', 'Tajvan', 'TW', 'https://media-1.api-sports.io/flags/tw.svg', '+886', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(33, 'Colombia', 'Kolumbija', 'CO', 'https://media-1.api-sports.io/flags/co.svg', '+57', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(34, 'Congo', 'Demokratska Republika Kongo', 'CD', 'https://media-3.api-sports.io/flags/cd.svg', '+243', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(35, 'Congo-DR', 'Demokratska Republika Kongo', 'CG', 'https://media-1.api-sports.io/flags/cg.svg', '+243', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(36, 'Costa-Rica', 'Kostarika', 'CR', 'https://media-2.api-sports.io/flags/cr.svg', '+506', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(37, 'Crimea', 'Krim', 'UA', 'https://media-3.api-sports.io/flags/ua.svg', '+380', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(38, 'Croatia', 'Hrvatska', 'HR', 'https://media-2.api-sports.io/flags/hr.svg', '+385', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(39, 'Cuba', 'Kuba', 'CU', 'https://media-2.api-sports.io/flags/cu.svg', '+53', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(40, 'Curacao', 'Kurasao', 'CW', 'https://media-3.api-sports.io/flags/cw.svg', '+599', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(41, 'Cyprus', 'Kipar', 'CY', 'https://media-3.api-sports.io/flags/cy.svg', '+357', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(42, 'Czech-Republic', 'Češka', 'CZ', 'https://media-3.api-sports.io/flags/cz.svg', '+420', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(43, 'Denmark', 'Danska', 'DK', 'https://media-1.api-sports.io/flags/dk.svg', '+45', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(44, 'Dominican-Republic', 'Dominikanska Republika', 'DO', 'https://media-1.api-sports.io/flags/do.svg', '+1-809', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(45, 'Ecuador', 'Ekvador', 'EC', 'https://media-3.api-sports.io/flags/ec.svg', '+593', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(46, 'Egypt', 'Egipat', 'EG', 'https://media-3.api-sports.io/flags/eg.svg', '+20', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(47, 'El-Salvador', 'Salvador', 'SV', 'https://media-1.api-sports.io/flags/sv.svg', '+503', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(48, 'England', 'Velika Britanija', 'GB', 'https://media-3.api-sports.io/flags/gb.svg', '+44', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(49, 'Estonia', 'Estonija', 'EE', 'https://media-1.api-sports.io/flags/ee.svg', '+372', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(50, 'Eswatini', 'Svazilend', 'SZ', 'https://media-1.api-sports.io/flags/sz.svg', '+268', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(51, 'Ethiopia', 'Etiopija', 'ET', 'https://media-3.api-sports.io/flags/et.svg', '+251', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(52, 'Faroe-Islands', 'Frska Ostrva', 'FO', 'https://media-3.api-sports.io/flags/fo.svg', '+298', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(53, 'Fiji', 'Fidži', 'FJ', 'https://media-2.api-sports.io/flags/fj.svg', '+679', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(54, 'Finland', 'Finska', 'FI', 'https://media-1.api-sports.io/flags/fi.svg', '+358', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(55, 'France', 'Francuska', 'FR', 'https://media-3.api-sports.io/flags/fr.svg', '+33', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(56, 'Gabon', 'Gabon', 'GA', 'https://media-3.api-sports.io/flags/ga.svg', '+241', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(57, 'Gambia', 'Gambija', 'GM', 'https://media-1.api-sports.io/flags/gm.svg', '+220', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(58, 'Georgia', 'Gruzija', 'GE', 'https://media-2.api-sports.io/flags/ge.svg', '+995', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(59, 'Germany', 'Njemačka', 'DE', 'https://media-3.api-sports.io/flags/de.svg', '+49', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(60, 'Ghana', 'Gana', 'GH', 'https://media-1.api-sports.io/flags/gh.svg', '+233', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(61, 'Gibraltar', 'Gibraltar', 'GI', 'https://media-1.api-sports.io/flags/gi.svg', '+350', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(62, 'Greece', 'Grčka', 'GR', 'https://media-1.api-sports.io/flags/gr.svg', '+30', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(63, 'Guadeloupe', 'Gvadalupe', 'GP', 'https://media-3.api-sports.io/flags/gp.svg', '+590', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(64, 'Guatemala', 'Gvatemala', 'GT', 'https://media-1.api-sports.io/flags/gt.svg', '+502', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(65, 'Guinea', 'Gvineja', 'GN', 'https://media-3.api-sports.io/flags/gn.svg', '+224', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(66, 'Haiti', 'Haiti', 'HT', 'https://media-1.api-sports.io/flags/ht.svg', '+509\n', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(67, 'Honduras', 'Honduras', 'HN', 'https://media-2.api-sports.io/flags/hn.svg', '+504', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(68, 'Hong-Kong', 'Hong Kong', 'HK', 'https://media-2.api-sports.io/flags/hk.svg', '+852', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(69, 'Hungary', 'Mađarska', 'HU', 'https://media-3.api-sports.io/flags/hu.svg', '+36', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(70, 'Iceland', 'Island', 'IS', 'https://media-1.api-sports.io/flags/is.svg', '+354', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(71, 'India', 'Indija', 'IN', 'https://media-3.api-sports.io/flags/in.svg', '+91', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(72, 'Indonesia', 'Indonezija', 'ID', 'https://media-1.api-sports.io/flags/id.svg', '+62', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(73, 'Iran', 'Iran', 'IR', 'https://media-2.api-sports.io/flags/ir.svg', '+98', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(74, 'Iraq', 'Irak', 'IQ', 'https://media-2.api-sports.io/flags/iq.svg', '+964', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(75, 'Ireland', 'Irska', 'IE', 'https://media-3.api-sports.io/flags/ie.svg', '+353', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(76, 'Israel', 'Izrael', 'IL', 'https://media-2.api-sports.io/flags/il.svg', '+972', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(77, 'Italy', 'Italija', 'IT', 'https://media-1.api-sports.io/flags/it.svg', '+39', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(78, 'Ivory-Coast', 'Obala Slonovače', 'CI', 'https://media-2.api-sports.io/flags/ci.svg', '+225', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(79, 'Jamaica', 'Jamajka', 'JM', 'https://media-2.api-sports.io/flags/jm.svg', '+1-876', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(80, 'Japan', 'Japan', 'JP', 'https://media-1.api-sports.io/flags/jp.svg', '+81', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(81, 'Jordan', 'Jordan', 'JO', 'https://media-2.api-sports.io/flags/jo.svg', '+962', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(82, 'Kazakhstan', 'Kazahstan', 'KZ', 'https://media-3.api-sports.io/flags/kz.svg', '+7', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(83, 'Kenya', 'Kenija', 'KE', 'https://media-1.api-sports.io/flags/ke.svg', '+254', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(84, 'Kosovo', 'Kosovo', 'XK', 'https://media-3.api-sports.io/flags/xk.svg', '+383', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(85, 'Kuwait', 'Kuvajt', 'KW', 'https://media-1.api-sports.io/flags/kw.svg', '+965', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(86, 'Kyrgyzstan', 'Kirgistan', 'KG', 'https://media-3.api-sports.io/flags/kg.svg', '+996', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(87, 'Laos', 'Laos', 'LA', 'https://media-2.api-sports.io/flags/la.svg', '+856', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(88, 'Latvia', 'Latvija', 'LV', 'https://media-2.api-sports.io/flags/lv.svg', '+371', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(89, 'Lebanon', 'Liban', 'LB', 'https://media-1.api-sports.io/flags/lb.svg', '+961', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(90, 'Lesotho', 'Lesoto', 'LS', 'https://media-3.api-sports.io/flags/ls.svg', '+266', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(91, 'Liberia', 'Liberija', 'LR', 'https://media-3.api-sports.io/flags/lr.svg', '+231', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(92, 'Libya', 'Libija', 'LY', 'https://media-2.api-sports.io/flags/ly.svg', '+218', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(93, 'Liechtenstein', 'Lihtenštajn', 'LI', 'https://media-1.api-sports.io/flags/li.svg', '+423', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(94, 'Lithuania', 'Litvanija', 'LT', 'https://media-3.api-sports.io/flags/lt.svg', '+370', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(95, 'Luxembourg', 'Luksemburg', 'LU', 'https://media-3.api-sports.io/flags/lu.svg', '+352', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(96, 'Macao', 'Makao', 'MO', 'https://media-3.api-sports.io/flags/mo.svg', '+853', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(97, 'Macedonia', 'Makedonija', 'MK', 'https://media-3.api-sports.io/flags/mk.svg', '+389', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(98, 'Malawi', 'Malavi', 'MW', 'https://media-1.api-sports.io/flags/mw.svg', '+265', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(99, 'Malaysia', 'Malezija', 'MY', 'https://media-1.api-sports.io/flags/my.svg', '+60', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(100, 'Maldives', 'Maldivi', 'MV', 'https://media-3.api-sports.io/flags/mv.svg', '+960', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(101, 'Mali', 'Mali', 'ML', 'https://media-2.api-sports.io/flags/ml.svg', '+223', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(102, 'Malta', 'Malta', 'MT', 'https://media-2.api-sports.io/flags/mt.svg', '+356', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(103, 'Mauritania', 'Mauritanija', 'MR', 'https://media-1.api-sports.io/flags/mr.svg', '+222', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(104, 'Mauritius', 'Mauricijus', 'MU', 'https://media-3.api-sports.io/flags/mu.svg', '+230', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(105, 'Mexico', 'Meksiko', 'MX', 'https://media-2.api-sports.io/flags/mx.svg', '+52', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(106, 'Moldova', 'Moldavija', 'MD', 'https://media-3.api-sports.io/flags/md.svg', '+373', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(107, 'Mongolia', 'Mongolija', 'MN', 'https://media-1.api-sports.io/flags/mn.svg', '+976', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(108, 'Montenegro', 'Crna Gora', 'ME', 'https://media-3.api-sports.io/flags/me.svg', '+382', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(109, 'Morocco', 'Maroko', 'MA', 'https://media-2.api-sports.io/flags/ma.svg', '+212', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(110, 'Myanmar', 'Mijanmar', 'MM', 'https://media-2.api-sports.io/flags/mm.svg', '+95', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(111, 'Namibia', 'Namibija', 'NA', 'https://media-2.api-sports.io/flags/na.svg', '+264', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(112, 'Nepal', 'Nepal', 'NP', 'https://media-2.api-sports.io/flags/np.svg', '+977', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(113, 'Netherlands', 'Holandija', 'NL', 'https://media-1.api-sports.io/flags/nl.svg', '+31', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(114, 'New-Zealand', 'Novi Zeland', 'NZ', 'https://media-3.api-sports.io/flags/nz.svg', '+64', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(115, 'Nicaragua', 'Nikaragva', 'NI', 'https://media-2.api-sports.io/flags/ni.svg', '+505', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(116, 'Nigeria', 'Nigerija', 'NG', 'https://media-1.api-sports.io/flags/ng.svg', '+234', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(117, 'Norway', 'Norveška', 'NO', 'https://media-1.api-sports.io/flags/no.svg', '+47', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(118, 'Oman', 'Oman', 'OM', 'https://media-1.api-sports.io/flags/om.svg', '+968', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(119, 'Pakistan', 'Pakistan', 'PK', 'https://media-1.api-sports.io/flags/pk.svg', '+92', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(120, 'Palestine', 'Palestina', 'PS', 'https://media-1.api-sports.io/flags/ps.svg', '+970', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(121, 'Panama', 'Panama', 'PA', 'https://media-2.api-sports.io/flags/pa.svg', '+507', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(122, 'Paraguay', 'Paragvaj', 'PY', 'https://media-2.api-sports.io/flags/py.svg', '+595', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(123, 'Peru', 'Peru', 'PE', 'https://media-3.api-sports.io/flags/pe.svg', '+51', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(124, 'Philippines', 'Filipini', 'PH', 'https://media-2.api-sports.io/flags/ph.svg', '+63', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(125, 'Poland', 'Poljska', 'PL', 'https://media-2.api-sports.io/flags/pl.svg', '+48', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(126, 'Portugal', 'Portugal', 'PT', 'https://media-3.api-sports.io/flags/pt.svg', '+351', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(127, 'Qatar', 'Katar', 'QA', 'https://media-3.api-sports.io/flags/qa.svg', '+974', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(128, 'Romania', 'Rumunija', 'RO', 'https://media-3.api-sports.io/flags/ro.svg', '+40', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(129, 'Russia', 'Rusija', 'RU', 'https://media-3.api-sports.io/flags/ru.svg', '+7', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(130, 'Rwanda', 'Ruanda', 'RW', 'https://media-2.api-sports.io/flags/rw.svg', '+250', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(131, 'San-Marino', 'San Marino', 'SM', 'https://media-1.api-sports.io/flags/sm.svg', '+378', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(132, 'Saudi-Arabia', 'Saudijska Arabija', 'SA', 'https://media-2.api-sports.io/flags/sa.svg', '+966', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(133, 'Senegal', 'Senegal', 'SN', 'https://media-2.api-sports.io/flags/sn.svg', '+221', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(134, 'Serbia', 'Srbija', 'RS', 'https://media-2.api-sports.io/flags/rs.svg', '+381', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(135, 'Singapore', 'Singapur', 'SG', 'https://media-2.api-sports.io/flags/sg.svg', '+65', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(136, 'Slovakia', 'Slovačka', 'SK', 'https://media-3.api-sports.io/flags/sk.svg', '+421', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(137, 'Slovenia', 'Slovenija', 'SI', 'https://media-2.api-sports.io/flags/si.svg', '+386', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(138, 'Somalia', 'Somalija', 'SO', 'https://media-1.api-sports.io/flags/so.svg', '+252', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(139, 'South-Africa', 'Južnoafrička Republika', 'ZA', 'https://media-3.api-sports.io/flags/za.svg', '+27', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(140, 'South-Korea', 'Južna Koreja', 'KR', 'https://media-1.api-sports.io/flags/kr.svg', '+82', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(141, 'Spain', 'Španija', 'ES', 'https://media-3.api-sports.io/flags/es.svg', '+34', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(142, 'Sudan', 'Sudan', 'SD', 'https://media-2.api-sports.io/flags/sd.svg', '+249', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(143, 'Surinam', 'Surinam', 'SR', 'https://media-1.api-sports.io/flags/sr.svg', '+597', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(144, 'Sweden', 'Švedska', 'SE', 'https://media-3.api-sports.io/flags/se.svg', '+46', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(145, 'Switzerland', 'Švicarska', 'CH', 'https://media-1.api-sports.io/flags/ch.svg', '+41', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(146, 'Syria', 'Sirija', 'SY', 'https://media-3.api-sports.io/flags/sy.svg', '+963', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(147, 'Tajikistan', 'Tadžikistan', 'TJ', 'https://media-2.api-sports.io/flags/tj.svg', '+992', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(148, 'Tanzania', 'Tanzanija', 'TZ', 'https://media-1.api-sports.io/flags/tz.svg', '+255', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(149, 'Thailand', 'Tajland', 'TH', 'https://media-2.api-sports.io/flags/th.svg', '+66', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(150, 'Trinidad-And-Tobago', 'Trinidad i Tobago', 'TT', 'https://media-2.api-sports.io/flags/tt.svg', '+1-868', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(151, 'Tunisia', 'Tunis', 'TN', 'https://media-1.api-sports.io/flags/tn.svg', '+216', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(152, 'Turkey', 'Turska', 'TR', 'https://media-3.api-sports.io/flags/tr.svg', '+90', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(153, 'Turkmenistan', 'Turkmenistan', 'TM', 'https://media-2.api-sports.io/flags/tm.svg', '+993', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(154, 'Uganda', 'Uganda', 'UG', 'https://media-2.api-sports.io/flags/ug.svg', '+256', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(155, 'United-Arab-Emirates', 'Ujedinjeni Arapski Emirati', 'AE', 'https://media-3.api-sports.io/flags/ae.svg', '+971', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(156, 'Uruguay', 'Urugvaj', 'UY', 'https://media-3.api-sports.io/flags/uy.svg', '+598', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(157, 'USA', 'Sjedinjene Američke Države', 'US', 'https://media-3.api-sports.io/flags/us.svg', '+1', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(158, 'Uzbekistan', 'Uzbekistan', 'UZ', 'https://media-2.api-sports.io/flags/uz.svg', '+998', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(159, 'Venezuela', 'Venecuela', 'VE', 'https://media-2.api-sports.io/flags/ve.svg', '+58', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(160, 'Vietnam', 'Vijetnam', 'VN', 'https://media-1.api-sports.io/flags/vn.svg', '+84', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(161, 'Zambia', 'Zambija', 'ZM', 'https://media-3.api-sports.io/flags/zm.svg', '+260', '2023-06-11 12:05:30', '2023-06-11 12:05:30'),
(162, 'Zimbabwe', 'Zimbabve', 'ZW', 'https://media-2.api-sports.io/flags/zw.svg', '+263', '2023-06-11 12:05:30', '2023-06-11 12:05:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `api__countries`
--
ALTER TABLE `api__countries`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `api__countries`
--
ALTER TABLE `api__countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
