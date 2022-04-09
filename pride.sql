-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2022 at 10:01 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pride`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `photo`, `remember_token`, `created_at`, `updated_at`) VALUES
(8, 'Zamshed', 'zamshed@gmail.com', NULL, '$2y$10$XveTzj9Bwen8QiZM7pHehOqrXIz9FiLYi1.oI6SVsFJ4B0PzXCL3y', NULL, NULL, NULL, '2020-12-07 22:10:33'),
(9, 'Admin', 'admin@gmail.com', NULL, '$2y$10$JIHOJY.ymzuUKIPV83FBCuY5vtCLvzPEPEHaWfn1EHWPM.Dvt7Eki', NULL, NULL, NULL, '2020-12-07 22:10:33');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('jarjis@gmail.com', '$2y$10$daJLtw8/2EXgdTeyyzj0M.V6N/Au/4M.TBr/MF0BDJU6An7Ede7u2', '2020-09-05 10:33:51'),
('choncholalamin@gmail.com', '$2y$10$.0F40hMD7qNt8ZSMTEbQEea857C9aXhwD7O2lI9yjIPdz7DwhOh7m', '2020-09-13 01:06:50'),
('bhoari82@gmail.com', '$2y$10$lE3ysVLN.jlh75DaI9dxTOJss8u/v9WbkdYcCTqJ5Hb12lYdpxRuG', '2020-09-16 00:52:26'),
('alamgir01071983@gmail.com', '$2y$10$1e4PBFLkCUbgmALTf7B06O1rBIs5iwWbTc3AgDZgpDr67P0DcV/06', '2020-09-16 01:24:34'),
('abedulhuqasstt2013@gmail.com', '$2y$10$sre54K8uQBfYni4i5l3.qOk1NgaGhPDS5WigDSJ.juPNc.clslcTG', '2020-09-16 06:51:06'),
('rafique524@gmail.com', '$2y$10$0Iz0yOQtfNthZT/b9/wkM.IWr0intswXvPHLMraSY6M8WcPPHMy/q', '2020-09-16 06:57:21'),
('haqmdabdul5@gmail.com', '$2y$10$wliDyTFKRTrf1Tn4OSoW6O0TXAaNYvJ.0dfNi.AqlVYWZQ52E5m0K', '2020-09-16 14:13:11'),
('saifulislambtt16@gmail.com', '$2y$10$3tJOzyuD3kHXytQxcg.ZT.Yl2eq8Fb2OTM0BjQabHIxfsV6l2EQYq', '2020-09-16 15:09:14'),
('kripadas1992@gmail.com', '$2y$10$AC4r4aoLtEN2Ek4eHLJqS.8W1DwxfCp7XXzuk4MXh6cSRNMqKC9Ku', '2020-09-16 15:22:07'),
('mdshafiqulislam010@gmail.com', '$2y$10$UOkRL6rexCS1yTa1wlhsfeCVRznbfHn4hUs6gKH0zEV9iVgmkCmz.', '2020-09-16 15:39:01'),
('sushanta.cpb@gmail.com', '$2y$10$U7fKu1neTzT7xE5RnVYa.OSxgwGy84N9.6iBKZsT6ruvJlIWe5EJW', '2020-09-17 01:01:12'),
('pbarua055@gmail.com', '$2y$10$8X1cEn0a2I3gQ6KpEy8obuH/Sx.xhYD.FbpCshlspAs2Ay2atp9tm', '2020-09-17 02:59:59'),
('rezawanshuvo@gmail.com', '$2y$10$S50BHJGSeq3NER8v4gbwROfA8eoKKHJf0dhtNPO3g/s2jUNFcTdcK', '2020-09-17 05:35:57'),
('hosainmdmohsin70@gmail.com', '$2y$10$dkuq3iZ/D8sT4/fDmtWs4uo5S3c4NLHDsGROEN0ee8u0QCRsb3HT6', '2020-09-17 10:16:37'),
('muradhossain453@gmail.com', '$2y$10$EDf7hCXSbwv4zQDRsU/28uYcbEYTp/T94ozNR7PvV721j33pSeGJ6', '2020-09-17 12:14:06'),
('shahadatict5@gmail.com', '$2y$10$2HHg.tFpuIs0N/U.UiBt8O/6Wg70QN6s7MjyME1IiMvUzYKMcaC0K', '2020-09-17 12:27:24'),
('lelin75chua@gmail.com', '$2y$10$Hjjc0FvTN7DeUoYF2D3Xiuc1P3ONBtvRQzaYEmJiT6Hk53Gd0X.GK', '2020-09-17 14:29:39'),
('shamimaht76@gmail.com', '$2y$10$3ZxC4X6o20lM5wfuh7yZiO8fcIBCBLyX5nI2eEyEQfp.ZMUk9Jb96', '2020-09-17 16:17:35'),
('bulbul8603@gmail.com', '$2y$10$2b/wWCT3oDhvDLc..XOmduFcUwyCmHpBtM26u0o/oBTqeYUA6cXVy', '2020-09-17 17:03:17'),
('tanha.sajjad2021@gmail.com', '$2y$10$uGiAsVE234nHMJ1eg5NQL./7YSTR98HGds.j7JZcRUEjzcsSM3hVu', '2020-09-17 17:12:34'),
('mijanurrahaman45@gmail.com', '$2y$10$Cslkq5fa10OFLSvApPRk..wG6vsr8V4Lu8lWXPRh47M82M2Nw/sdC', '2020-09-17 17:57:42'),
('fahimcsc.mahmud@gmail.com', '$2y$10$sPjbBlXNje4hnddxC0YkXeCtg3TIvyISIUJNyQ.qLXhBWKH5jkP6y', '2020-09-17 18:46:12'),
('mozibarlohagara@gmail.com', '$2y$10$N6WYArZinSfrtRa3i27xU.CHzFBuLVbNn37lcaDfTFLpJF3ms8voq', '2020-09-17 18:49:55'),
('uthwaimarma93@gmail.com', '$2y$10$3I0NIsvZwPHtd4owfmQQ0.6KX/AwRYaMVl9SHu13InsVYpADJ3RjC', '2020-09-17 21:19:47'),
('engrabubakar6818@gmail.com', '$2y$10$a0abMTjGU2kqnPHPIeQOaObE17S93e1LsplJ19/gTd7Rfzxz3iXTe', '2020-09-17 22:34:21'),
('srasel.dpe@gmail.com', '$2y$10$fP0jL6GDhZIFdckRuMOm2.AV8OwJSCCjr.Cg7A3I3E51Y4Eh4/TG.', '2020-09-17 22:49:52'),
('mizanrahman8297@gmail.com', '$2y$10$9CIZOqa/4x7J8bOGvc1dwufNUkA/PTO0UmPZQ2lcnivzqqHZinlS6', '2020-09-17 23:00:28'),
('shohel.shohel76@gmail.com', '$2y$10$oSHgcwuw38STXUrTQqRaBeGaMLdOSQ837b2ux5R3/X71DR2z4tlKe', '2020-09-18 00:43:38'),
('mahbuburhm1984@gmail.com', '$2y$10$mhV6BdY6ZhHQJeiA4a.XJOhQRAO1qObNGQMkmm4SxCzJ5.sq8JrMq', '2020-09-18 01:03:20'),
('khairulict2019@gmail.com', '$2y$10$7/kSGKyCVi.OW3Bb6k5.De0GcyIZwZFe0RJ9tqRLfziSgUQw61KiS', '2020-09-18 01:15:19'),
('monir1972@gmail.com', '$2y$10$Xqk75ZRYhYMfIZiOSS4hSezQgOer/wW34aSsfktzuZErG2qlGWEC.', '2020-09-18 02:22:29'),
('msaiful120@yahoo.com', '$2y$10$RQaEaIPGPOyQ0Jjt8QeQcuFjDqnA4aa3/v5ZgHnAgf4nKVziBPe22', '2020-09-18 02:30:00'),
('shanealam8686@gmail.com', '$2y$10$y8TRnbHOgpnZjq7EiwaZKefpjYvtl1p4dSNW7iR25Q/Q3iK81IvjW', '2020-09-18 02:58:56'),
('swehlaprue@gmail.com', '$2y$10$innHqJDzcR.HdxJIOE7K2ei2xpr0g8bFivMB27/gqm9uIcNaA.zK.', '2020-09-18 03:50:28'),
('shantoshahin87@gmail.com', '$2y$10$Ye5HA1tzXhrqzgClZNcl8.3yTDxyqlJNzEGNrtsuKSopF0jFcnxa.', '2020-09-18 16:11:59'),
('jyotsnamajumder0@gmail.comi', '$2y$10$cdtKXQZFOxo4LqzcJ07NkujGTEtYsYeOkyNlL4O4njJANVHqTMpzO', '2020-09-18 21:20:45'),
('monirkhamar78@gmail.com', '$2y$10$b0sEMMRNjRycESQOYkcpCecnQRcbgK7LW.ItNG1/mu4siE//b4I4e', '2020-09-18 22:42:49'),
('ziaatgps50@gmail.com', '$2y$10$AQN19oHsRflMtu8rTcQpjegpTNuCWIUu0IEjyC.dknUw2rp1rdk3m', '2020-09-19 00:38:22'),
('syedreal685@gmail.com', '$2y$10$WeBLgea6T9Dmqh5x3gOIyeNpbJC9DttxRDN2bFL6EaPBtdSrEI6dS', '2020-09-19 01:03:58'),
('aktara.beauty@gmail.com', '$2y$10$tdBcyD6Yn2HKLR2.UIxAnOQ2/11KtnWT9rtYZY29b0eUaLGkUZL.W', '2020-09-19 01:15:52'),
('786shafiqul@gmail.com', '$2y$10$SLNJh10gs8yE9kvuYG.yVeUTaplzhDy71X57WCos9o23.PolIa4j.', '2020-09-19 01:51:52'),
('kaykobadhasan01711@gmail.com', '$2y$10$KeBYGtAp/swFhZo0oN9PeuZlcLt80YxTz7KCBPMfkz8mZBtGvEl96', '2020-09-19 01:57:56'),
('omarfaruque797@gmail.com', '$2y$10$1UmaUF4vmOcyEsguTsMX1.oWyX8S0NK1UCdIDXk3sPeIZiTQ.E5Km', '2020-09-19 02:42:03'),
('talebhossen14@gmail.com', '$2y$10$d6PFlS9WY5cYM8gCuP0G4ughQgExtuyvidOGLRxbzmTQ6ReHVdjw.', '2020-09-19 05:04:24'),
('sayanb712@gmail.com', '$2y$10$PmGT8R7IRpm0t6M/Re6JQetCpAuhE4sVnqhNygqNzzHIqhwkQvY1q', '2020-09-19 11:23:49'),
('rony.shaikh50@gmail.com', '$2y$10$aUoC8zO72egoTU3jczGhR.H7bNMGCw3zFUAjh7xeR/GdF/ylMBVl2', '2020-09-19 15:15:33'),
('kudrot.uisc@gmail.com', '$2y$10$1lPuWt0VmBTem5aRhKTQNe00mJVPevewIJUrwC4PINuJaz2JqFbv2', '2020-09-19 15:37:12'),
('mabasar1990@gmail.com', '$2y$10$TIEel6b7JVRyh4QNwdII9.a3A6vc88Sxfda.XjdKHk/bthqBQMfIK', '2020-09-19 15:58:43'),
('mdehaque1971@gmail.com', '$2y$10$vQ8rQ/03UUebsg82M280T./c/c2WJR2CSUaMN2Fp8BS86zAZ/WuxS', '2020-09-19 16:12:43'),
('ershad2shah@gmail.com', '$2y$10$iVQ7xoA5EEVF9WaxYkGbfuNqoSDMJ/FmyjFDOOZXMrhdR7oM282ni', '2020-09-19 16:24:59'),
('mdulalatgps80@gmail.com', '$2y$10$VyCO8Qs1tbY8sl7cpORihuNkVZY8yL5O/lh71I3F2rsXGwZgY9c9G', '2020-09-19 16:29:27'),
('jalal.nu29@gmail.com', '$2y$10$xAqQGq2YQp.3IYEdW5E01.JiiGV0p2KLrbOR7x1AeMYaiPSN5hSzq', '2020-09-19 16:57:46'),
('ruhulat82@email.com', '$2y$10$eVd1XvYuvq4JYciY1cfH3.hoJznR2.aonBWeQqOjG51g7mwlSUE8a', '2020-09-19 18:11:01'),
('mr.jahangiralamsir@gmail.com', '$2y$10$fvQS3BhNDDWs1xf9TArSa.yqa/0ozptc//l4.by7XO.jDhQGMaa3O', '2020-09-19 21:31:33'),
('sharifbowla@gmail.com', '$2y$10$c48lKwTdJQ/FEYwfybzqsuwRuiWALP65UiwCls6zQtVZvJs8Up3Sy', '2020-09-19 23:26:59'),
('mdabukhokon888@gmail.com', '$2y$10$/39cR/1/P.d6yHim7YggJORnn70izh3TkFtkeY0hytlyh7vkaadVm', '2020-09-20 00:15:33'),
('zahirht1973@gmail.com', '$2y$10$IR6/zJjj7VYmksl3XhrZJOP5BnrwARKgN7k0ugXBZ2zR3kIdyjlsu', '2020-09-20 01:45:56'),
('suronjonpoddert@gmail.com', '$2y$10$RT2PzNSxsy76cH76sxGkIujKt4QEXUjqKitB6kIH0ZASeOcT845vy', '2020-09-20 02:55:57'),
('ratansarker01914@gmail.com', '$2y$10$1Cw/Gxm21LXLCwNh8MMFvOm4/ozV3bPGxlp1WYAeJFrwUSx2mnYKq', '2020-09-20 03:22:53'),
('niakter108@gmail.com', '$2y$10$xgo/h4Y3m915msj9pF4uzeBS/zSi5j/fmy00Z98v.zoFXO7532ZYe', '2020-09-20 13:07:25'),
('shorifulniloy0@gmail.com', '$2y$10$HnADo0.3yVQM5gUvzG1RW.5gBqRED32SIW5OurNEG2bLeFTMiGh/q', '2020-09-20 14:50:06'),
('monirulhaque301@gmail.com', '$2y$10$sP.bZKdG69l.f9T1s250fOFmYeUl7Hr02pLYA6elESKYSeW78xKs2', '2020-09-20 15:26:29'),
('emrulkawser@gmail.com', '$2y$10$GKf72dz1WdN8COWoYN/iqOu6IYWfvj0QAwrXiApYgtIZ9ImFFbHeK', '2020-09-20 15:47:51'),
('elahee.chemistry@gmail.com', '$2y$10$.YRSiqqdVLcg6k4Y/9iEmef.6pHxXSMH0PVZhSRD4cBWFCukirqxy', '2020-09-20 16:22:51'),
('sumon.kjp1@gmail.com', '$2y$10$6WaIG759EvQ9NufTcAJGu.dTzf5GDiugvWVZ.t.Q5KpVplMb/LV1C', '2020-09-20 18:05:51'),
('monoarh.atict19@gmail.com', '$2y$10$w93sBH9BvumhItoJON/gku07Ag1YicP9dFFFMwDbD6H78lc9mmMfK', '2020-09-20 18:10:05'),
('mdnhshuva726218@gmail.com', '$2y$10$W9Xg/4hHPZOXOrUTnBwpmuc7BAG9Wg2wAz0S676AIkG6gP0Y7ZPd2', '2020-09-20 21:04:02'),
('mrdelower01@gmail.com', '$2y$10$ddmwiVXvfONeD8JxQu43JuBiRIHBlfCMtukjOhsrPsvIGiptreuSC', '2020-09-21 00:22:12'),
('cadetosman@gmail.com', '$2y$10$2D3VtMggvMWqk0vYcQx6Eu8QFKnKnmnA1eDGi2mNpYG77psFT/cEO', '2020-09-21 00:49:30'),
('dipokt@yahoo.com', '$2y$10$UO4I7Dnd1C4wSoA.8DOzyO03maB7L5fQjU604uHpvPzHwMAAgS7w6', '2020-09-21 02:58:58'),
('shahanaafrozan@gmail.com', '$2y$10$GOAO063mBAMGYkGFhuXlYOPRDx0ZV12pxm1FjOOcCnTcvlDGKPiCm', '2020-09-21 04:01:32'),
('sahedkhan893@gmail.com', '$2y$10$rI8wF7NHyWxYWVR5hSUwSuF1rI4DIcrlrYJIpISjdIjqRHEexT53S', '2020-09-21 04:58:45'),
('tanaydey68@gmail.com', '$2y$10$UKT/Gqj8BhF4TLDP1AcR1Oq.Uu62XVuET.WXLfM0zpdnLVrKn7C3O', '2020-09-21 19:25:24'),
('atshahida10@gmail.com', '$2y$10$lmGSjuh1ribNG0gjzaAB7Os0jmF4jJgK7YzeniPLvMyWRqIN6OTdy', '2020-09-21 21:06:41'),
('nazruluttargram95@gmail.com', '$2y$10$L22ZEawfH4IOUrdag2Fyy.BR.kC.tPvyqL4FyOHt6OxwI0My8/3WC', '2020-09-21 22:08:57'),
('sanjoyfeni2006@yahoo.com', '$2y$10$yFnCnW.8cQbj0L1eHdpJ6.mrzJaJpB3FNnQUWeZoP9LtDc712Fk1G', '2020-09-21 22:11:08'),
('kumaruttamdas578@gmail.com', '$2y$10$EqVj0XSAAKNeMvzTNU9sleQOOk6tnSrBwa7NqYNS8smH68C6VfRQi', '2020-09-21 23:31:20'),
('mosharaf_jnu2010@yahoo.com', '$2y$10$13vrJ1uZv630WG/NdJ0l9O36ff/FbOXBgO0X.9OLfpdy2iZJ9YQkS', '2020-09-22 00:35:14'),
('mdmohsinali078@gmail.com', '$2y$10$HzYZGblzY6awih/it2wlieusSPsL9o3mB2cubRQ8d/MQpCbzYSKvK', '2020-09-22 02:10:41'),
('sobujfenigps@gmail.com', '$2y$10$QTodIgz1ZiRN1agPMqKISuQD3QzhllJT.8T3k22cL1b9Gew4Atac.', '2020-09-22 02:35:49'),
('smfarukchyfoysal@gmail.com', '$2y$10$Bmyu9plQQvW3lDlqpASQNego6Qr/lwhBDyAE6093s4C.Qdf7/opla', '2020-09-22 02:46:07'),
('www.zikuht@gmail.com', '$2y$10$wkb1nV5tM2rLz4Lsky3oP.rWzCG/QiUyV6H/clWXUyj3HDkBSsb62', '2020-09-22 02:52:36'),
('mmostafij75@gmail.com', '$2y$10$593EifcSNh1NeiC3otOsnOZq8vJhIXScK6n5jqinIfSzB.5zxJq1y', '2020-09-22 11:56:54'),
('r.a.shakul95@gmail.com', '$2y$10$6VXn/H84uxMri50UXcda5Oc5TE1Bl35iBGcrVfhlFMioByHYphjDq', '2020-09-22 12:06:10'),
('farahafarzana87@gmail.com', '$2y$10$qbOPK6zwCgGrm7RYwRs.N.9vqq5a43azXTpOr71qnxrXMYYpJKCtm', '2020-09-22 17:33:59'),
('ijahid2025@gmail.com', '$2y$10$4JUjyn591kZtCuzaRt70cuenbbl6a22E72vgHmc3.iwRgxc.9cCPW', '2020-09-22 20:17:26'),
('muradhasan25320@gmail.com', '$2y$10$XldPfft0AKI/0m06BoZYxOFNkq1fbaJnLSf0SdTlAkUXe.ijoTH5G', '2020-09-22 21:12:01'),
('ummetamimpwc@gmail.com', '$2y$10$DwSXb08gdahe.glRD7QDNOXn/cyBxMRLfekkWKAxc3B559eiA2xJu', '2020-09-22 22:47:03'),
('mashudtalukder97@gmail.com', '$2y$10$SQQ8f1nTNdf85SxK.JrAXOTjChBla9YK46Pcpk2Mt6uR9C69WKGOG', '2020-09-23 00:39:17'),
('jontu_deb@yahoo.com', '$2y$10$ysG/cVdhGfYF8B2uDtOjyeAHMObMkxwGknZ8MWFzz2mtL.hGU14mK', '2020-09-23 01:02:45'),
('islamazizl51@gmail.com', '$2y$10$kaOiBGlayOVzroJEKJR4wuPGWaHKt7jtfwlCsGQFKGXk1tqqc2Kqa', '2020-09-23 01:50:20'),
('mousumsharkar@gmail.com', '$2y$10$myEFB1DNKK6qKU46PCVBh.lfBBbkYsxWesn9dvF7CFncSSZwTq/G2', '2020-09-23 03:07:07'),
('khurshedat1973@gmail.com', '$2y$10$5ooekRNBRvPxqogAqKOlGO4ljALh0N1P438HTqeynu2Np6w6ygsfu', '2020-09-23 03:19:30'),
('mail.rockyraj@gmail.com', '$2y$10$BCcrVJ.1tvxU.j8tvJrk0etGxNooI.BxgTKgOeOcGghaAvlS0hCX.', '2020-09-23 15:52:27'),
('towhid.cox15@gmail.com', '$2y$10$JloHpzHyIhUyc2jeOgOgIed2HEKwIRoQ2H.fZwZEBA/ucRqojvbe6', '2020-09-23 22:18:34'),
('fakir1847@gmail.com', '$2y$10$G.fH31iyDGMn6Jq5Fcz/pO2iegNBW2sbRSXtyLD7AcVb4K1LrULca', '2020-09-24 02:00:25'),
('Kamalnews35@gmail', '$2y$10$T2kJ4mfMgJP.U1MtRKbKyOku82rZMjCqnf0e52Gl3K/WPl5nyBJJ2', '2020-09-24 03:34:22'),
('chowdhuryswapon6@gmail.com', '$2y$10$LdA29HEzZF6IeWvjuZgZoOC.feN5a3m.w5eKkYVSDV3sCq1gU3TQW', '2020-09-24 06:35:47'),
('ahmadhelalhsm@gmail.com', '$2y$10$ifqlbsW8r8G6YfyJIHE.5u9VHgh/bJ3Hom1bAOH9F5Z3Hc0Uv0Xya', '2020-09-24 14:50:03'),
('smhumayunkabir01@gmail.com', '$2y$10$ORGHya2SBZeInX0GXZCTBunPltKaIMb6dAwDNYM76xIPOhiBUV0/O', '2020-09-24 16:39:39'),
('ponkojnath321@gmail.com', '$2y$10$WWtpvDdJMmafdTS3LiM7pe6IXSxDMOEjeb/va4zhS7J53tA2LRG6.', '2020-09-24 17:37:34'),
('bbonlineshop2017@gmail.com', '$2y$10$XbjJir8ag4jtzFcHpMsWm.CiAYFr8zlEiqXoOt9dPxttRuhlKGlVa', '2020-09-24 21:52:23'),
('khondoker.mamun@gmail.com', '$2y$10$Np//yJxIHhyM.AqpYZYCeuBYI7A.ApqdP3LaDoWdBCiROlC2pWGAO', '2020-09-24 22:11:45'),
('rnirmol31@gmail.com', '$2y$10$EqT3CtqCJK2Iz2f7JIqNe.gEyiAZLaln7qjZxKCRpw1eXAGA83xPS', '2020-09-25 00:30:18'),
('ahmedrouf1982@gmail.com', '$2y$10$rbi5lDGeBxHBkXX/NkPDAergl28TGcTxgqclJzO0R.lHzpbVq2kmy', '2020-09-25 00:55:48'),
('raiyanshajjed@gmail.com', '$2y$10$wNvKHsvzknQ/4hdqAeOvYe5Pdc/CZXi.0Ds.nTuZvpKBvX0ejOiCK', '2020-09-25 03:45:46'),
('s.islam86sj@gmail.com', '$2y$10$etfrw6oI7ystNbtW/Z.ytOgAlWTOWwG2wyuH5v9pCsJ2RMKP.zrPG', '2020-09-25 20:41:14'),
('shamim2sagor@gmail.com', '$2y$10$dDHjoHoHv6tqbMUzB7KJI.O4Tn74VnaFuKv3un/ivO2G3oJBZuS8y', '2020-09-25 22:53:25'),
('cmdsumon13@gmail.com', '$2y$10$umZnpQxDsPEU4CIoIS53uOisrEY6CUmLLOviWXoUfJUDYPxx10VFa', '2020-09-26 17:07:38'),
('jakirpc@yahoo.com', '$2y$10$wEqiU/pftwY6tf0Bcp0j4Od40JJRJAQR4LP2T/LLS96gzhUzypFeG', '2020-09-26 20:25:42'),
('mdkobirh699@gmail.com', '$2y$10$YTaoWZqb15DxZXYlJaeLkOuSHHoERYvUckM4iUabSA4A5TQodoHg.', '2020-09-26 21:09:13'),
('chowdhuryrupankar1973@gmail.com', '$2y$10$3JBvHQXjc3IhKWky0gs.YOXvKTu/dRWh5TbAEMCdLbn3V/RMkDWXq', '2020-09-27 03:14:13'),
('jhumur.5579@gmail.com', '$2y$10$DJaENY.LcydT2KZ7CFIGre91Q5atzyp3RH4OsvwaL7d72q.hyp1rq', '2020-09-27 07:22:38'),
('htsumanpatiya@gmail.com', '$2y$10$5266ourqz9BzIp.drpTYte1Ihvip5YqXJD.LblnCnr0m84iH4.LXu', '2020-09-27 16:21:26'),
('hashemgoatfarm@gmail.com', '$2y$10$62EJc4OY8EgTa8Sr6BGV5u/iSvWBY9nRJYaoexw3KLlbV1FhqBKQW', '2020-09-27 19:18:56'),
('mmi34078@gmail.com', '$2y$10$b47JS0c1N29yYDKhneScEOAiqjPiqB/EGgUxfLixSasbITaMH8WYq', '2020-09-27 23:45:08'),
('ismailp25@gmail.com', '$2y$10$9n0N3IONzz3mj81Og6I5E.amLjL6JEHvv7rZvc7vF.0a3tr6OBIve', '2020-09-29 01:15:05'),
('sabbir1917014@gmail.com', '$2y$10$q2P0Y8/iDm8fym8MFWbjC.OeCG9.3Bz.Otu4nDpn9aWxhuwKld8N6', '2020-09-29 14:04:53'),
('alfarabi13@outlook.com', '$2y$10$0klTHRDFd7MVXD04C41QvO6UEvBwGF3O1nbauDxJO/B7WgAE3YhDS', '2020-10-01 18:26:52'),
('ifokrul250@gmail.com', '$2y$10$zm5GNq39ce1RqgwoST8RU.cptIiSOQaFP/tayuzKiodd.v4EIVGnG', '2020-10-02 12:31:56'),
('skshahin4929@gmail.com', '$2y$10$XVBCVk6YpWvZq6QTwGu4h./gN0hJFW8yHkDpRfwpJAktrsGZfTfau', '2020-10-02 18:45:16'),
('anwarulteacher1979@gmail.com', '$2y$10$aFyQfiqxb6WWf0MDYP5nb..47euZ1HLM56tjJ5M4QzWOg5rESLbUq', '2020-10-07 16:50:07'),
('shabnammahuya@gmail.com', '$2y$10$vWhrh1RDAEQee5NEDc5Yo.4cHalTq5w2NCb.ljI4gfzxu.Dt56YNq', '2020-10-08 05:02:50'),
('hr.durjoy1415@gmail.com', '$2y$10$Bnc6cmDiB0TyHFx3CbBTfOnsn3bW3zpVvzTnOmT8HjeAwn6Vcm86a', '2020-10-09 05:42:06'),
('shamimchitalmary@gmail.com', '$2y$10$m/UtS.MUJ8hjpKXKB0WvR.Qjyn9.49nqI.8c9mIQlmMbVRPvMAe96', '2020-10-13 15:12:23'),
('aktershahida0887@gmail.com', '$2y$10$QoDD9Qhmt0AnXQZbnYwoaOWrsy/0Bp3KGk7wuLYcNuAN4VaxuV4bi', '2020-10-14 19:05:52'),
('arshadulhoque700@gmail.com', '$2y$10$rM/0lMEtTd0DAUQAskYWmObtMpnTYAfRxYbhBdGrO0kdeMmadnqXi', '2020-10-21 02:16:01'),
('bipulsarkar1977@gmail.com', '$2y$10$LMxcn9Ngcsu70upWFlgLjOyufvjnAhRKXufGx/wmSgGgtInqic6ne', '2020-10-24 01:36:24'),
('shamimosmani.bd95@yahoo.com', '$2y$10$ppxjylzH73vZYBx9OY0qbOy7BLMEqXgbnAKM5NEfnk5QJ6nQrLxzy', '2020-10-30 15:51:21'),
('kamrun508@gmail.com', '$2y$10$QGPc8Q7N83ueOhI2SO/UaOtOrp1uqxhUztrxQ6a90/Wkt21XJBLjK', '2020-10-31 00:14:01'),
('faruqsarker66@gmail.com', '$2y$10$KYCUN2VyfF5OPCXumWX.g.SCV/BXtIrdJvpWJXrblY.gpnDkj7JTm', '2020-11-01 23:27:41'),
('alimdrasel6@gmail.com', '$2y$10$QKlFDOg22iNaV89xcLNccudcQvhI0B8tSMz2E1YeboAbpn2CU11J.', '2020-11-12 03:10:54'),
('rktirtho@gmail.com', '$2y$10$Zmq.gem8NpAiHWkP2Oazl.Ec2HbTYz6GbwOpNShO0Zd2SkJ3GLEUe', '2020-11-15 18:39:50'),
('dilowarasultana@gmail.com', '$2y$10$ewfqtRbDOxVjJ9lsvNhc7e.ZH20x8URifRNxaL/0W3J0lSgYbw5JG', '2020-11-23 17:04:39'),
('joyasreeranidas@gmail.com', '$2y$10$Y.w1dmFH5Pc5neDk9HQKd.bpDxkXTEbLWRXnu8fKEtOCmd7sUAcdW', '2020-11-23 23:25:19'),
('farukomur77@gmail.com', '$2y$10$ksScGREuJ4g0.mxVFitgruyvVpi59iOCw9q71hvegZiwDrRy2I5Uu', '2020-11-24 02:14:58'),
('surajitdeb108@gmail.com', '$2y$10$W1FodRloPmQI4Nk8QoLg7./XP2O3g57L1Vrmh22ik.43HGsIMrs5.', '2020-11-25 20:49:09'),
('mandalkanak89@gmail.com', '$2y$10$/Ws5Ss967mBd9Rkg4uEMpObSeiR/yKCxiavnkhFN33q5r8vxsdJ5i', '2020-11-27 16:53:57'),
('mdmohimenulhasib@gmail.com', '$2y$10$TQ6Y8unEZ4qjDzu4YCgjreU0Skw2cvwRkt/nWxPERjfJMHMBYv81a', '2020-11-28 14:48:07'),
('badalroy221@gmail.com', '$2y$10$43a0h1KyG/jjOPskT14t7uOJ.ry47H9hS/IMBiJbRvAk04/5kUj7m', '2020-11-29 15:50:58'),
('bulbuli.khatun35@gmail.com', '$2y$10$A0walgNSu27S0AWHS9dV.eDCPkdqrOrw1VLf32oD1m.1tvpVujbNW', '2020-12-03 13:00:33'),
('smshoishob99@gmail.com', '$2y$10$c8goH5VPpXeY.6nsjwuhIe8IK7PVmgspIHgcUNCYtm1s8JhyR6Iva', '2020-12-05 00:32:02'),
('shamim12387@gmail.com', '$2y$10$khVYI19ix9.aQFV0qVgqTewFrJBgj78ckw3x/PB/f21HtmkHXf2Dy', '2020-12-07 20:07:40'),
('atmgolammowla@gmail.com', '$2y$10$X2i/wcMz2anMcuUNgmjdkeGkfK8GB3uFe8NYDeftivlEuOS6Pj4Ni', '2020-12-07 21:17:20'),
('monzurulislamict28@gmail.com', '$2y$10$Mdnl7V9KoFpZOagFD4qybOApUrux7dIChh1lnn9K.z1K.Cww9Bkzu', '2020-12-07 22:41:39'),
('azizulhoqueaus@gmail.com', '$2y$10$jjVuNspkZurW9G3FbLUXEeUlxlrUVDXsqHKm8kns4CXxPSMAdAsFS', '2020-12-08 01:26:37'),
('dulalatgps80@gmail.com', '$2y$10$gu5j9XIhFKSYvAi6uzxHLeP05OyP1prBPLWNcgTafpFiPkQMA9./O', '2020-12-08 14:56:47'),
('mominulak32@gmail.com', '$2y$10$DbVw.ZcPQZxslsbSEsEKU.869EH.BiUKom0oXRKT7lb3Pi54Lj8ye', '2020-12-08 19:49:23'),
('khayerbari120448@gmail.com', '$2y$10$p5ixTyIGpU17X.gdaEwWOeY7mwpdDhTha/6n9Y3xKw3RMorOqE/SW', '2020-12-09 01:50:15'),
('jahidhasan109@gmail.com', '$2y$10$owPYM4dBJAXC7XSN5sZNeuW.RzKiBOd8guTC3J30c2rXy2awHAD4C', '2020-12-09 02:10:15'),
('saiful4118@yahoo.com', '$2y$10$QOj90y85ELIQzayOEFRZj.Vb.2hc4uy/alpxxRYaiMNQz2qAE3jaW', '2020-12-09 02:10:16'),
('zafahim93@gmail.com', '$2y$10$ZtazhrOLv1nGoDMMV6oAdex4WcaJxk/AHR0EXLDcwntYY7WTD4tcO', '2020-12-09 03:20:53'),
('biswaskibria99@gmail.com', '$2y$10$B2LXLtCXvvIzh2qxesVgKeO9WBPPuFXYwm/P.cHYIjN3Xp7qymUs.', '2020-12-09 22:59:58'),
('Ajgor.ome1996@gmail.com', '$2y$10$i5D/DFxtWe47IJYUGkTiLuXeOvKk0Z86iLQknlw2wezGqffrorU2W', '2020-12-09 23:29:54'),
('sabikunemu@mail.com', '$2y$10$DZsdVPLOCo0/KwlOCFvZPOabgJ0IeHioZ8oZX/f/pJ0PmfaGv1TnW', '2020-12-09 23:37:22'),
('tanmoy533483@yahoo.com', '$2y$10$Ihx6.y/be8ps.Z7LBaQRa.iWUmetaymZEyHMQ0OGuGvEXguULhBSq', '2020-12-09 23:38:08'),
('hasnainovi36@gmail.com', '$2y$10$i1Y8cNzTMXuLBpi7AVAV6.G74AHiQH9o/0byAsSd39RT0rKoDP5eC', '2020-12-09 23:39:36'),
('ab.siddik1438@gmail.com', '$2y$10$Zb4Vw/qtWtHYk0EOW0xZzuAgmf3FXRt.6gap2VXRRVc0ZrDeWEZAu', '2020-12-10 02:03:47'),
('rony8236@gmail.com', '$2y$10$/mxFgPQpMrA9vpAck3Xn8ei3Nh2dqzqvjqEuEf1QuJukYTGsRkUqq', '2020-12-10 02:09:23'),
('deyhemu6@gmail.com', '$2y$10$pD/Icgk.0VPtMMgNUoSljuTe7PG7PjAVJNMJN1a9AvAzWlc5rRJQe', '2020-12-10 03:19:29'),
('shamsulrsp@gmail.com', '$2y$10$8k3Pfyrtez0ZftcAZLEyge0xBCU3F1lRFow/.BozRC5pFYRSPpB1e', '2020-12-10 03:27:11'),
('shahanazinnat@gmail.com', '$2y$10$s4EQfHfhCguVSgPZisA5u.526z8flhZm0IXqQ5VtOx9abHBWzoXfK', '2020-12-10 03:29:59'),
('johorajoty456@gmail.com', '$2y$10$oGbPd/MITSiE/QKbtiKwzeCs.wmjXqSymAniMp/nbsk0EDgR09ekm', '2020-12-10 03:34:15'),
('sheulyraza@gmail.com', '$2y$10$6OWBo8oK8UdRsIsnsc4bLuOdqWCn90OagV.TY1vSPrPF0q8ApcGym', '2020-12-10 03:37:57'),
('anash7k@gmail.com', '$2y$10$9093rJ2H5BaxQU8NgCoRUeNWaTJj18xPsCpwxtRitbC1N.1Tjzs2C', '2020-12-10 03:56:52'),
('md.jakiulhassan@yahoo.com', '$2y$10$skBDKuegnHlZlktIi92Ld.gVxZUPYAIhFtungtKM4VEIZcC3z329u', '2020-12-10 03:57:40'),
('sarafatjamil17@gmail.com', '$2y$10$AyUCi21mwmh14vCN/VWJ6.bNobSS8VyzlcpWLXDQQGa4XSRfaTrdq', '2020-12-10 12:26:06'),
('sultanm760@gmail.com', '$2y$10$gRC1m9wYld7Y5aerqxysRO01Rip9.Xm5TNmF7WUu/5mCClDFJ5BxG', '2020-12-10 14:56:12'),
('shiponbhowmik09@gmail.com', '$2y$10$P6xzN4Dkdtm73jgQht/1UOL1DzZBVra12OqiydWWDcNyZh9YdFpmO', '2020-12-10 17:20:28'),
('iqbalnur731@gmail.com', '$2y$10$cwfCGUtRkLEGVsEVxdwNSOrZAPL9UH/uOMZCYPa7M4OeL.P.JxNvu', '2020-12-10 23:07:03'),
('nahids6129@gmail.com', '$2y$10$iRZdux2r5p6J4dwB8XpdCu.ik88Z7gTM7TlWI5NDm4mrWXT5mL1BG', '2020-12-11 01:57:52'),
('khandakarmehadihasan@gmail.com', '$2y$10$fYM52OXu4tHiRxepK1m2sOeNk00ka19TyITiA4BlOs9VP7Iz/oSMa', '2020-12-11 07:20:13'),
('01716101570r@gmail.com', '$2y$10$iUcss8Bc8C03TIi0/TkcbuZ6Z2UkWlxAKiWedVuO6awZGZnDC3vGu', '2020-12-12 00:19:12'),
('akterbak@gmail.com', '$2y$10$dH3QL53pklBV0vAq86FQvO.d2u/Gj5igOpCIqoX1XibVZrzoQfJq.', '2020-12-12 02:10:58'),
('shishirdigital2009@gmail.com', '$2y$10$lA3sPkWb8Mak/Elm3RndFeO/IXBe7lpkKHM1e/UDjXKqamytlsk2S', '2020-12-13 03:52:07'),
('nazrul19762015@gmail.com', '$2y$10$RTpe5AB67kOTqNQOT4PQlOE9C9tGWQZgdeaPIr7RV5qU9SvDqDZ/q', '2020-12-13 03:54:27'),
('rashid.net51@gmail.com', '$2y$10$TUk7J0LT6ieocLBOFhv2vesOJ7setdsot2yLbC2j4dPiukiZeLOrq', '2020-12-13 07:25:52'),
('manikmohammed2017@gmail.com', '$2y$10$b.VBB5xyvxmDF0cc6xOAsefPfOcUWzR.5.ePOwXAQyTrrBAaMNuWu', '2020-12-13 14:05:50'),
('farhana.tasnim3072@gmail.com', '$2y$10$JVnI0YMXAApWW.3q6tOANOkrzvhRpWzOqDJnNmIYXIC5eMKDejvV2', '2020-12-13 17:15:13'),
('biswajitsgc1994@gmail.com', '$2y$10$V8EQZvrsTEH8ExUmQGfVmeRLIeF7ctR4y0jFXMWSLHktOkdmMS77a', '2020-12-15 15:38:59'),
('mdhossengazi19@gmail.com', '$2y$10$KLlSRJXbX2QwKxr9Q.4/fegn1nKx9h6nrhRpuWA5aSrHuh4E1QkjS', '2020-12-16 03:14:30'),
('www.akbar197391ali@gmail.com', '$2y$10$dDYX9l.wo0Y0ohFZrynFV.ufU/QNJYMnFjMvbGvt3Rn2cwVZQw63m', '2020-12-17 01:19:13'),
('razzakgps82@gmail.com', '$2y$10$bpdt9xB0E5i/5Jg9Gm5u3u/pPGOpfQcq99gqHZXDuE9PtNOnEjjUK', '2020-12-21 16:06:33'),
('lova45845@gmail.com', '$2y$10$Wwiy9oXHYgFvV8vAvLSPguVixlo1fPJ9uKVkS3kN1BQlr8O8UD4d.', '2020-12-25 04:54:37'),
('harichandmondal13@gmail.com', '$2y$10$tIxOFKOGWDSsqaOrgX0L6ucw7vknMho5u82XQppbfPwfBNA.G7cSq', '2020-12-26 13:35:22'),
('zamshedarifin@gmail.com', '$2y$10$HMWYDnGfneT61Ww1uUB6cOs1F183gKg18TLYfruTG.pF2TMjmy06G', '2022-01-01 05:36:36');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` text DEFAULT NULL,
  `price` int(40) DEFAULT NULL,
  `album_id` varchar(40) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `status` tinyint(5) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_id`, `title`, `slug`, `price`, `album_id`, `details`, `thumbnail`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'qWCUdIGVYCQi', 'Taller Handle Casual Shirt for Men by Express', 'taller-handle-casual-shirt-for-men-by-express', 899, '1', 'Cotton-made fabric shirts are a mandatory part of casual lifestyle. Express shirts are designed and manufactured to offer authentic and original slim-fit shirts. This unique-fit comfortable shirts let the wearer become a part of any casual as well as semi-formal programs.', 'b6n6.jpg', 1, '2022-04-09 02:01:26', '2022-04-09 02:01:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_albums`
--

CREATE TABLE `product_albums` (
  `id` int(11) NOT NULL,
  `color_name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_albums`
--

INSERT INTO `product_albums` (`id`, `color_name`, `created_at`, `updated_at`) VALUES
(1, 'Blue', '2022-04-09 05:52:28', '2022-04-09 05:52:28'),
(2, 'Red', '2022-04-09 05:52:28', '2022-04-09 05:52:28'),
(3, 'Green', '2022-04-09 05:52:28', '2022-04-09 05:52:28');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(11) NOT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(1, '1', 'uploads/product/uwKYdesigner-shirt-500x500.jpg', '2022-04-09 02:01:26', '2022-04-09 02:01:26'),
(2, '1', 'uploads/product/DtWb249680703_1003827470182099_6004945675547364011_n.jpg', '2022-04-09 02:01:26', '2022-04-09 02:01:26');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT 1,
  `is_ban` tinyint(2) DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `mobile`, `address`, `email_verified_at`, `password`, `avatar`, `provider`, `provider_id`, `access_token`, `remember_token`, `is_active`, `is_ban`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'zamshed', 'user@gmail.com', NULL, NULL, NULL, '$2y$10$XveTzj9Bwen8QiZM7pHehOqrXIz9FiLYi1.oI6SVsFJ4B0PzXCL3y', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, '2021-12-30 00:55:07', '2021-12-30 00:55:07'),
(2, 'zamshed', 'zamshedarifin@gmail.com', NULL, NULL, NULL, '$2y$10$OrXvnqG805qTYpep.8S4pevOzOZFvMpwf/TBWZHJyVr3HP38Jsgl2', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, '2022-01-01 05:03:29', '2022-01-01 05:03:29'),
(3, 'sayma', 'sayma@gmail.com', NULL, NULL, NULL, '$2y$10$hVMT0HkixEYyBJF7fJ3o8.cWWSsoy8fA5lyggC2BJ5uT2z/RvD/aa', NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, '2022-01-01 05:40:28', '2022-01-01 05:40:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_albums`
--
ALTER TABLE `product_albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_albums`
--
ALTER TABLE `product_albums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
