-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 30, 2019 at 12:01 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `knn`
--
CREATE DATABASE IF NOT EXISTS `knn` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `knn`;

-- --------------------------------------------------------

--
-- Table structure for table `data_kondisi_fisik`
--

CREATE TABLE `data_kondisi_fisik` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tinggiBadan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `beratBadan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lemak` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sistolik` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `diastolik` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detakJantung` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lenganAtas` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lenganBawah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lingkarPerut` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lingkarPinggul` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `statusGizi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `distance` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_kondisi_fisik`
--

INSERT INTO `data_kondisi_fisik` (`id`, `tinggiBadan`, `beratBadan`, `lemak`, `sistolik`, `diastolik`, `detakJantung`, `lenganAtas`, `lenganBawah`, `lingkarPerut`, `lingkarPinggul`, `statusGizi`, `distance`, `created_at`, `updated_at`) VALUES
(1, '163', '59', '24.5', '102', '68', '69', '23', '14', '74', '94', 'Normal', '246.49576061263204', '0000-00-00 00:00:00', '2019-09-21 05:37:07'),
(2, '170', '125', '42.9', '113', '73', '79', '40', '19', '112', '135', 'Obesitas', '311.75857646582875', '0000-00-00 00:00:00', '2019-09-20 18:01:22'),
(3, '172', '75', '31', '114', '78', '86', '26', '16', '79', '100', 'Normal', '269.11521696106297', '0000-00-00 00:00:00', '2019-09-20 18:01:22'),
(4, '166', '58', '19', '128', '69', '69', '26', '16', '72', '92', 'Normal', '258.85517186256874', '0000-00-00 00:00:00', '2019-09-20 18:01:22'),
(5, '167', '50', '16.5', '111', '80', '89', '21', '13', '71', '88', 'Kurus', '250.5538864196682', '0000-00-00 00:00:00', '2019-09-20 18:01:22'),
(6, '168', '50', '10.4', '100', '72', '97', '23', '14', '62', '87', 'Kurus', '241.15173646482415', '0000-00-00 00:00:00', '2019-09-20 18:01:22'),
(7, '173', '56', '18.4', '114', '73', '62', '24', '15', '66', '93', 'Normal', '255.9971874845503', '0000-00-00 00:00:00', '2019-09-20 18:01:22'),
(8, '168', '73', '22.7', '107', '73', '81', '30', '18', '77', '96', 'Normal', '259.2591174867337', '0000-00-00 00:00:00', '2019-09-20 18:01:22'),
(9, '177', '60', '17.4', '107', '71', '104', '24', '15', '71', '90', 'Normal', '256.2494097554178', '0000-00-00 00:00:00', '2019-09-20 18:01:22'),
(10, '168', '52', '13.9', '122', '82', '101', '22', '15', '68', '84', 'Kurus', '255.18269925682657', '0000-00-00 00:00:00', '2019-09-20 18:01:22'),
(11, '159', '58', '23.4', '118', '75', '64', '26', '15', '70', '85', 'Normal', '248.53080291987953', '0000-00-00 00:00:00', '2019-09-20 18:01:22'),
(12, '167', '75', '30.7', '126', '81', '65', '30', '16', '91', '103', 'Obesitas', '277.37968562964375', '0000-00-00 00:00:00', '2019-09-20 18:01:22'),
(13, '170', '72', '26.1', '113', '72', '83', '28', '16', '85', '98', 'Normal', '265.68253612159003', '0000-00-00 00:00:00', '2019-09-20 18:01:22'),
(14, '172', '68', '22.8', '110', '65', '68', '27', '15', '79', '94', 'Normal', '259.0054825674545', '0000-00-00 00:00:00', '2019-09-20 18:01:22'),
(15, '165', '73', '29.1', '105', '67', '75', '28', '18', '83', '100', 'Obesitas', '258.67317216905195', '0000-00-00 00:00:00', '2019-09-20 18:01:22'),
(16, '169.5', '55', '15.2', '112', '77', '70', '22', '14', '75', '92', 'Kurus', '255.39829678367082', '0000-00-00 00:00:00', '2019-09-20 18:01:22'),
(17, '160', '54', '15.7', '138', '104', '78', '27', '15', '73', '86', 'Normal', '268.88936386551256', '0000-00-00 00:00:00', '2019-09-20 18:01:22'),
(18, '173', '56', '17.9', '120', '76', '97', '25', '14', '72', '88', 'Normal', '259.4424984461875', '0000-00-00 00:00:00', '2019-09-20 18:01:22'),
(19, '162', '54', '18', '108', '70', '76', '24', '15', '71', '88', 'Normal', '244.20073709962466', '0000-00-00 00:00:00', '2019-09-20 18:01:22'),
(42, '', '', '', '', '', '123', NULL, NULL, NULL, NULL, NULL, NULL, '2019-09-27 00:37:55', '2019-09-27 00:37:55'),
(43, '', '', '', '', '', '', '123', NULL, NULL, NULL, NULL, NULL, '2019-09-27 00:40:15', '2019-09-27 00:40:15'),
(44, '', '', '', '', '', '', '4', '3', '2', '1', NULL, NULL, '2019-09-27 00:44:43', '2019-09-27 00:44:43'),
(45, '2', '1', '', '', '', '', '4', '3', '2', '1', NULL, NULL, '2019-09-27 00:45:05', '2019-09-27 00:45:05');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_09_17_012620_data_training', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_kondisi_fisik`
--
ALTER TABLE `data_kondisi_fisik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_kondisi_fisik`
--
ALTER TABLE `data_kondisi_fisik`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `laravel`
--
CREATE DATABASE IF NOT EXISTS `laravel` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `laravel`;

-- --------------------------------------------------------

--
-- Table structure for table `databobot`
--

CREATE TABLE `databobot` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pencapaian` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `absensi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `etosKerja` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `programKerja` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_09_08_171230_data_training', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `databobot`
--
ALTER TABLE `databobot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `databobot`
--
ALTER TABLE `databobot`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `login`
--
CREATE DATABASE IF NOT EXISTS `login` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `login`;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', NULL, '$2y$10$qtrR6R9GvAb8j2HJw.5XQe3iiWVYnyYk80L80YkehWU8l4PcAE86O', NULL, '2019-05-09 01:19:52', '2019-05-09 01:19:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `loper`
--
CREATE DATABASE IF NOT EXISTS `loper` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `loper`;

-- --------------------------------------------------------

--
-- Table structure for table `lamaran`
--

CREATE TABLE `lamaran` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_lowongan` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_pekerja` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_perusahaan` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lamaran`
--

INSERT INTO `lamaran` (`id`, `id_lowongan`, `id_pekerja`, `id_perusahaan`, `status`, `created_at`, `updated_at`) VALUES
(8, '4', '39', '42', 'Cv Di Proses', '2019-07-15 23:40:24', '2019-07-16 01:46:00'),
(9, '4', '43', '42', 'Cv Di Proses', '2019-07-15 23:53:06', '2019-08-05 07:17:40'),
(10, '5', '43', '50', 'Cv Di Proses', '2019-08-05 06:42:56', '2019-08-05 07:17:40'),
(11, '5', '51', '50', 'Cv Terkirim', '2019-08-10 02:13:44', '2019-08-10 02:13:44');

-- --------------------------------------------------------

--
-- Table structure for table `lowongan`
--

CREATE TABLE `lowongan` (
  `id` int(11) NOT NULL,
  `id_perusahaan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deskripsi` longtext COLLATE utf8mb4_unicode_ci,
  `perusahaan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tempat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deadline` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `web` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lowongan`
--

INSERT INTO `lowongan` (`id`, `id_perusahaan`, `judul`, `deskripsi`, `perusahaan`, `tempat`, `deadline`, `email`, `phone`, `web`, `created_at`, `updated_at`) VALUES
(2, '42', 'Account Executive', 'Responsibilities :\r\n\r\nMengembangkan penjualan serta menjalin hubungan baik dengan seluruh distributor dan agen guna mencapai target penjualan yang telah ditentukan.\r\n\r\nQualification :\r\n\r\n- pendidikan min. D3 dengan ipk minimal 3.00 dalam bidang apapun\r\n\r\n- memiliki pengalaman serupa di Industri FMCG min. 1 tahun\r\n\r\n- memiliki pemahaman mengenai pricing strategy, selling skill, negotiation skill\r\n\r\n- berpenampilan menarik\r\n\r\n- usia maksimal 35 tahun\r\n\r\nJenis Pekerjaan: Penuh Waktu\r\n\r\nGaji: Rp2.000.000 hingga Rp5.000.000 /bulan\r\n\r\nPengalaman:\r\n\r\nsales: 1 tahun (Diutamakan)\r\nLokasi:\r\n\r\nBandung (Diutamakan)\r\nBahasa:\r\n\r\nEnglish (Diutamakan)', 'Laraindo', 'Surabaya', '2019-07-27', 'laraindo@gmail.com', '0212343823', 'https://haha.co.id', '2019-07-13 02:27:18', '2019-07-14 06:15:16'),
(4, '42', 'IT Support', 'Kualifikasi :\r\n\r\nLulusan min. D3 Teknik Informasi/Sistem Informasi/Manajemen Informasi/Kompterisasi Akuntansi\r\nMemahami konsep ERP lebih disukai\r\nMemahami konsep dasar akuntansi\r\nMenguasai networking, mikrotik & CISCO\r\nMemahami reporting services\r\n\r\nMenguasai diagram UML, DFD, Use Case\r\nMenguasai troubleshoot komputer\r\n\r\nTanggung Jawab dan Uraian Pekerjaan :\r\n\r\nMelakukan kegiatan maintenance yang preventif dari asset hardware IT\r\n\r\nMelakukan penanganan asset hardware IT\r\n\r\nMelakukan perbaikan permasalah IT yang berhubungan dengan utilisasi asset hardware IT\r\n\r\nMelaksanakan project IT hardware\r\n\r\nMelakukan setting hardware\r\n\r\nMelakukan pembuatan user komputer, portal internal, domain, dan email\r\n\r\nJenis Pekerjaan: Penuh Waktu\r\n\r\nGaji: Rp 3.300.000 /bulan\r\n\r\nPengalaman:\r\n\r\nIT Support: 1 tahun (Diutamakan)', 'Laraindo', 'Yogyakarta', '2019-07-30', 'laraindo@gmail.com', '0212343823', 'https://haha.co.id', '2019-07-13 21:30:08', '2019-07-14 06:15:56'),
(5, '50', 'Cleaning Service', 'di butuhkan Cleaning Service Profesional (JABODETABEK) dg kriteria sebagai berikut :\r\n1. pria / wanita maks usia 45th\r\n2. wajib berpengalaman min 2th di bidang Cleaning Service (jika ada sertifikat di utamakan)\r\n3. mampu menggunakan Smartphone\r\n4. memiliki kemampuan tambahan (membersihkan kulkas, cuci piring , setrika)\r\n5. jujur dan bertanggung jawab\r\n6. bekerja menggunakan aplikasi online untuk jasa kebersihan\r\n7. skck aktif\r\n8. ektp\r\n9. bersedia membayar dp peralatan kerja rp.500rb\r\n10. ijaza/bpkb', 'Kreasindo', 'Jakarta', '2019-08-30', 'kreasindo@gmail.com', NULL, NULL, '2019-08-05 05:51:31', '2019-08-05 12:51:31');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(28, '2014_10_12_000000_create_users_table', 1),
(29, '2019_05_25_053857_CreatePelamar', 1),
(30, '2019_05_29_152313_create_perusahaan', 1),
(31, '2019_06_03_190757_create_lowongan', 2),
(32, '2019_06_06_213828_create_lamaran', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pekerja`
--

CREATE TABLE `pekerja` (
  `id` int(20) UNSIGNED NOT NULL,
  `id_pelamar` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tempat_lahir` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal_lahir` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kota` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `negara` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jenis_kelamin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_perkawinan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `berat_badan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tinggi_badan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `web` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keahlian1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keahlian2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keahlian3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keahlian4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `github` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tahun_lulus_sd` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tahun_lulus_smp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tahun_lulus_sma` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tahun_lulus_s1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tahun_lulus_s2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tahun_lulus_s3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_sd` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_smp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_sma` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_s1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_s2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_s3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jurusan_sma` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jurusan_s1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jurusan_s2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jurusan_s3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pengalaman_perusahaan1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pengalaman_perusahaan2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pengalaman_perusahaan3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pengalaman_jabatan1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pengalaman_jabatan2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pengalaman_jabatan3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pengalaman_lama_kerja1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pengalaman_lama_kerja2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pengalaman_lama_kerja3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pekerja`
--

INSERT INTO `pekerja` (`id`, `id_pelamar`, `nama`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `kota`, `negara`, `jenis_kelamin`, `status_perkawinan`, `agama`, `berat_badan`, `tinggi_badan`, `phone`, `email`, `blog`, `web`, `keahlian1`, `keahlian2`, `keahlian3`, `keahlian4`, `facebook`, `twitter`, `instagram`, `linkedin`, `github`, `tahun_lulus_sd`, `tahun_lulus_smp`, `tahun_lulus_sma`, `tahun_lulus_s1`, `tahun_lulus_s2`, `tahun_lulus_s3`, `nama_sd`, `nama_smp`, `nama_sma`, `nama_s1`, `nama_s2`, `nama_s3`, `jurusan_sma`, `jurusan_s1`, `jurusan_s2`, `jurusan_s3`, `pengalaman_perusahaan1`, `pengalaman_perusahaan2`, `pengalaman_perusahaan3`, `pengalaman_jabatan1`, `pengalaman_jabatan2`, `pengalaman_jabatan3`, `pengalaman_lama_kerja1`, `pengalaman_lama_kerja2`, `pengalaman_lama_kerja3`, `foto`, `created_at`, `updated_at`) VALUES
(9, '39', 'teguh wahyu', 'Konoha', '2019-07-10', 'Babakan Sumendnang Bandung', 'Pekanbaru', 'Malaysia', 'Pria', 'Lajang', 'Islam', '60', '171', '097877261625', 'teguh.nugraha76@gmail.com', 'https://bsbsbs.blogspot.com', 'https://haha.co.id', 'Full Stack Developer', 'Photo Editor', 'Front End Developer', 'Programmer', 'teguh_nugraha', '@namasayateguh', '@wahyunugrohoteguh', 'teguh_nugraha76', 'teguhID', '2006', '2009', '2013', '2019', '-', '-', 'SD Babakan Sari 1', 'SMPN 45 Bandung', 'SMKN 6 Bandung', 'Universitas BSI Bandung', '-', '-', 'Teknik Audio Video', 'Teknik Informatika', '-', '-', 'Nokia', 'Elsa', 'LPKIA', 'Teknisi', 'Teknisi', 'Teknisi', '1 Tahun', '6 Bulan', '3.5 Tahun', '1565400860_bukalapak.png', '2019-07-11 20:13:46', '2019-08-10 08:34:20'),
(10, '43', 'dean', NULL, NULL, NULL, NULL, NULL, 'Pria', NULL, NULL, NULL, NULL, NULL, 'dean@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1564988185_1.jpg', '2019-07-15 12:47:46', '2019-08-05 13:56:25'),
(11, '44', 'Rahmat', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'rahmat@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'defaultImage.png', '2019-08-05 00:00:43', '2019-08-05 00:00:43'),
(12, '45', 'Ika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ika@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'defaultImage.png', '2019-08-05 00:01:34', '2019-08-05 00:01:34'),
(13, '46', 'Haruka', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'haruka@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'defaultImage.png', '2019-08-05 00:02:15', '2019-08-05 00:02:15'),
(14, '47', 'Emilia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'emilia@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'defaultImage.png', '2019-08-05 00:02:43', '2019-08-05 00:02:43'),
(15, '48', 'Subaru', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'subaru@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'defaultImage.png', '2019-08-05 00:03:08', '2019-08-05 00:03:08'),
(16, '49', 'zain', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'zain@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'defaultImage.png', '2019-08-05 12:21:44', '2019-08-05 12:21:44'),
(17, '51', 'andi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'andisasmita@gmail.com', NULL, NULL, 'Badut Sulap', 'Event Organizer', 'Penulis Buku', 'Mekanik Mobil', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'defaultImage.png', '2019-08-10 08:37:01', '2019-08-10 09:43:13');

-- --------------------------------------------------------

--
-- Table structure for table `pelamar`
--

CREATE TABLE `pelamar` (
  `id` int(20) UNSIGNED NOT NULL,
  `id_pelamar` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tempat_lahir` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal_lahir` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat_asal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat_sekarang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jenis_kelamin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `berat_badan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tinggi_badan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tahun_lulus_sd` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tahun_lulus_smp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tahun_lulus_sma` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tahun_lulus_s1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tahun_lulus_s2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tahun_lulus_s3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_sd` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_smp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_sma` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_s1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_s2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_s3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jurusan_sma` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jurusan_s1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jurusan_s2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jurusan_s3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keahlian` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pengalaman_kerja` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ktp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pelamar`
--

INSERT INTO `pelamar` (`id`, `id_pelamar`, `nama`, `tempat_lahir`, `tanggal_lahir`, `alamat_asal`, `alamat_sekarang`, `jenis_kelamin`, `status`, `agama`, `berat_badan`, `tinggi_badan`, `phone`, `email`, `tahun_lulus_sd`, `tahun_lulus_smp`, `tahun_lulus_sma`, `tahun_lulus_s1`, `tahun_lulus_s2`, `tahun_lulus_s3`, `nama_sd`, `nama_smp`, `nama_sma`, `nama_s1`, `nama_s2`, `nama_s3`, `jurusan_sma`, `jurusan_s1`, `jurusan_s2`, `jurusan_s3`, `keahlian`, `pengalaman_kerja`, `foto`, `ktp`, `created_at`, `updated_at`) VALUES
(1, '39', 'teguhsd', 'null', NULL, 'null', 'null', 'Pria', 'Lajang', 'Islam', NULL, NULL, NULL, 'teguh.nugraha76@gmail.com', NULL, NULL, NULL, NULL, NULL, '1233', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'null', '1560618611_photo-1510936111840-65e151ad71bb.jpg', '1560620103_ktp 001.jpg', '2019-06-01 09:11:56', '2019-06-16 07:35:03');

-- --------------------------------------------------------

--
-- Table structure for table `perusahaan`
--

CREATE TABLE `perusahaan` (
  `id` int(20) UNSIGNED NOT NULL,
  `id_perusahaan` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'null',
  `nama_perusahaan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'null',
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'null',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `web` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deskripsi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'null',
  `jenis_usaha` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jam_kerja` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `karyawan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `karir` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `perusahaan`
--

INSERT INTO `perusahaan` (`id`, `id_perusahaan`, `nama_perusahaan`, `alamat`, `email`, `web`, `phone`, `deskripsi`, `jenis_usaha`, `jam_kerja`, `karyawan`, `karir`, `logo`, `created_at`, `updated_at`) VALUES
(5, '42', 'Laraindo', 'Jl. Medan Merdeka Barat No.6, RT.2/RW.3, Gambir, Kecamatan Gambir, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10110', 'laraindo@gmail.com', 'https://haha.co.id', '0212343823', 'PT. Laraindo adalah sebuah perusahaan yang bergerak dibidang Industri Makanan yang menyediakan berbagai olahan jenis kue dan olahan jenis catering untuk keperluan acara. Dominocake mempunyai beberapa cabang outlet yang tersebar di Jabodetabek.', 'Kuliner', 'shift', '25 - 100', 'jenjang karir terbuka', '1565416700_bukalapak.png', '2019-07-12 09:26:03', '2019-08-10 12:58:20'),
(6, '50', 'Kreasindo', 'null', 'kreasindo@gmail.com', NULL, NULL, 'Kreasindo Cipta Teknologi (KCT) is indonesian company steeped in technology information KCT has a wide-range business experience consultant and developer in technology information with various project and product', 'IT', 'shift', '1 - 50', 'tidak disebutkan', 'defaultLogo.png', '2019-08-05 12:33:01', '2019-08-05 13:42:06');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'null',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'null',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'null',
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'null',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `status`, `admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(39, 'teguh wahyu', 'teguh.nugraha76@gmail.com', '$2y$10$lIXFM3feIgJVbG1Kk.V/feb0IDuWVX0IsT3u.EWRuc.gS.JgOuEzS', 'pekerja', 'null', NULL, '2019-07-11 20:13:45', '2019-08-10 08:34:20'),
(42, 'Laraindo', 'laraindo@gmail.com', '$2y$10$lRpDO1gJiRfcu2sKpnUKKedqp1LBSNGsB6Be1ILhEQO4O3fpQreGq', 'perusahaan', 'null', NULL, '2019-07-12 09:26:03', '2019-08-10 12:58:20'),
(43, 'dean', 'dean@gmail.com', '$2y$10$QRWlLqQlQrcob0cM75YlwelQq0LtiOXNoxb1tMZuo/DtrCWWNXQzW', 'pekerja', 'null', NULL, '2019-07-15 12:47:46', '2019-08-05 13:56:25'),
(44, 'Rahmat', 'rahmat@gmail.com', '$2y$10$7n3L.qWiwZxBlhczj07z7.PoRn4wRdJfX1XiraST8jYLIyto8GEnu', 'pekerja', 'null', NULL, '2019-08-05 00:00:43', '2019-08-05 00:00:43'),
(45, 'Ika', 'ika@gmail.com', '$2y$10$Ii4R64J3lohvHQA29qRsj./T61uSaGrhArB9InRPbzli/n5asKrie', 'pekerja', 'null', NULL, '2019-08-05 00:01:34', '2019-08-05 00:01:34'),
(46, 'Haruka', 'haruka@gmail.com', '$2y$10$G0zNrA0/Bfd.GOeHMEHEWOOx1.7FlrAfHl/g5Zw4frW4vrgRccYLO', 'pekerja', 'null', NULL, '2019-08-05 00:02:15', '2019-08-05 00:02:15'),
(47, 'Emilia', 'emilia@gmail.com', '$2y$10$w3DFZ2VYS0tR9.Hsc/XjFOZYJzFfrvqEktLuMTZjdcllmVHvIOMuq', 'pekerja', 'null', NULL, '2019-08-05 00:02:43', '2019-08-05 00:02:43'),
(48, 'Subaru', 'subaru@gmail.com', '$2y$10$Ex56Pn7hY0HLO/PoGyeBYepes5.FaPdW6B4cTWeoFws1XbYlSAs1e', 'pekerja', 'null', NULL, '2019-08-05 00:03:08', '2019-08-05 00:03:08'),
(49, 'zain', 'zain@yahoo.com', '$2y$10$PPsz.0aSILnd2ipCL0N/5e/ZMAeRfpzysWVsE8jBXa5SeL/iM4b36', 'pekerja', 'null', NULL, '2019-08-05 12:21:44', '2019-08-05 12:21:44'),
(50, 'Kreasindo', 'kreasindo@gmail.com', '$2y$10$hnBpSFlNfHUIS5W8Pxt1Le2Pc5QPc7z27dc2UJIjlUU5E/61uAvv6', 'perusahaan', 'null', NULL, '2019-08-05 12:33:01', '2019-08-05 13:42:06'),
(51, 'andi', 'andisasmita@gmail.com', '$2y$10$FtBptWmdUEXH2NQmSOB9w.rmqC2arjwQ4SSByVogGhVQGVxn2dkXm', 'pekerja', 'null', NULL, '2019-08-10 08:37:01', '2019-08-10 09:43:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lamaran`
--
ALTER TABLE `lamaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lowongan`
--
ALTER TABLE `lowongan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pekerja`
--
ALTER TABLE `pekerja`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pelamar`
--
ALTER TABLE `pelamar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `perusahaan`
--
ALTER TABLE `perusahaan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lamaran`
--
ALTER TABLE `lamaran`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `lowongan`
--
ALTER TABLE `lowongan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `pekerja`
--
ALTER TABLE `pekerja`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `pelamar`
--
ALTER TABLE `pelamar`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `perusahaan`
--
ALTER TABLE `perusahaan`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- Database: `mjib_db`
--
CREATE DATABASE IF NOT EXISTS `mjib_db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `mjib_db`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `hak_akses` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `hak_akses`) VALUES
(1, 'master', 'Y3IuW9D0lz3qupkU', 'master'),
(2, 'master', 'a30fc3c39c1083e0216f4e964c81beeb10143f05', 'master');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `naive_bayes`
--
CREATE DATABASE IF NOT EXISTS `naive_bayes` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `naive_bayes`;

-- --------------------------------------------------------

--
-- Table structure for table `datatraining`
--

CREATE TABLE `datatraining` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hari` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pm10` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `so2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `co` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `o3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `no2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `kualitasUdara` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `datatraining`
--

INSERT INTO `datatraining` (`id`, `hari`, `lokasi`, `pm10`, `so2`, `co`, `o3`, `no2`, `kualitasUdara`, `created_at`, `updated_at`) VALUES
(1, '1', 'Konoha', 'Kecil', 'Tinggi', 'Sedang', 'Sedang', 'Sedang', 'Sedang', NULL, NULL),
(2, '2', 'Konoha', 'Kecil', 'Kecil', 'Kecil', 'Sedang', 'Sedang', 'Sehat', NULL, NULL),
(3, '3', 'Konoha', 'Sedang', 'Kecil', 'Kecil', 'Kecil', 'Kecil', 'Sehat', NULL, NULL),
(4, '4', 'Konoha', 'Sedang', 'Sedang', 'Kecil', 'Tinggi', 'Kecil', 'Sehat', NULL, NULL),
(5, '5', 'Konoha', 'Sedang', 'Sedang', 'Sedang', 'Sedang', 'Kecil', 'Sehat', NULL, NULL),
(6, '6', 'Konoha', 'Kecil', 'Sedang', 'Tinggi', 'Tinggi', 'Kecil', 'Sedang', NULL, NULL),
(7, '7', 'Konoha', 'Kecil', 'Sedang', 'Sedang', 'Sedang', 'Sedang', 'Sedang', NULL, NULL),
(8, '8', 'Konoha', 'Tinggi', 'Kecil', 'Kecil', 'Sedang', 'Sedang', 'Tidak Sehat', NULL, NULL),
(9, '9', 'Konoha', 'Tinggi', 'Tinggi', 'Kecil', 'Kecil', 'Kecil', 'Sedang', NULL, NULL),
(10, '10', 'Konoha', 'Sedang', 'Sedang', 'Sedang', 'Kecil', 'Tinggi', 'Tidak Sehat', NULL, NULL),
(11, '11', 'Konoha', 'Kecil', 'Sedang', 'Sedang', 'Sedang', 'Sedang', 'Tidak Sehat', NULL, NULL),
(12, '12', 'Konoha', 'Sedang', 'Sedang', 'Kecil', 'Kecil', 'Tinggi', 'Sedang', NULL, NULL),
(13, '13', 'Konoha', 'Tinggi', 'Kecil', 'Tinggi', 'Sedang', 'Tinggi', 'Tidak Sehat', NULL, NULL),
(14, '14', 'Konoha', 'Sedang', 'Kecil', 'Sedang', 'Sedang', 'Sedang', 'Sedang', NULL, NULL),
(15, '15', 'Konoha', 'Kecil', 'Sedang', 'Tinggi', 'Kecil', 'Tinggi', 'Sedang', NULL, NULL),
(16, '16', 'Konoha', 'Tinggi', 'Tinggi', 'Tinggi', 'Tinggi', 'Tinggi', 'Tidak Sehat', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_09_08_171230_data_training', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `datatraining`
--
ALTER TABLE `datatraining`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `datatraining`
--
ALTER TABLE `datatraining`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Dumping data for table `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"angular_direct\":\"direct\",\"snap_to_grid\":\"off\",\"relation_lines\":\"true\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Dumping data for table `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'database', 'spkpenilaiankaryawan', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"structure_or_data_forced\":\"0\",\"table_select[]\":[\"bobot\",\"datakaryawan\",\"migrations\",\"nilaihasil\",\"nilaikaryawan\",\"nilainormalisasi\",\"users\"],\"table_structure[]\":[\"bobot\",\"datakaryawan\",\"migrations\",\"nilaihasil\",\"nilaikaryawan\",\"nilainormalisasi\",\"users\"],\"table_data[]\":[\"bobot\",\"datakaryawan\",\"migrations\",\"nilaihasil\",\"nilaikaryawan\",\"nilainormalisasi\",\"users\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@DATABASE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"structure_and_data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"structure_and_data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_procedure_function\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_create_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

--
-- Dumping data for table `pma__pdf_pages`
--

INSERT INTO `pma__pdf_pages` (`db_name`, `page_nr`, `page_descr`) VALUES
('loper', 1, 'asd');

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"mjib_db\",\"table\":\"users\"},{\"db\":\"perpus-online\",\"table\":\"user\"},{\"db\":\"knn\",\"table\":\"data_kondisi_fisik\"},{\"db\":\"naive_bayes\",\"table\":\"datatraining\"},{\"db\":\"spk_saw\",\"table\":\"databobot\"},{\"db\":\"spk_saw\",\"table\":\"dataattribut\"},{\"db\":\"spk_saw\",\"table\":\"datanormalisasi\"},{\"db\":\"spk_saw\",\"table\":\"datakaryawan\"},{\"db\":\"spk_saw\",\"table\":\"migrations\"},{\"db\":\"spk_saw\",\"table\":\"users\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

--
-- Dumping data for table `pma__table_coords`
--

INSERT INTO `pma__table_coords` (`db_name`, `table_name`, `pdf_page_number`, `x`, `y`) VALUES
('loper', 'lamaran', 1, 593, 139),
('loper', 'lowongan', 1, 108, 280),
('loper', 'migrations', 1, 403, 479),
('loper', 'password_resets', 1, 63, 368),
('loper', 'pekerja', 1, 387, 175),
('loper', 'pelamar', 1, 44, 445),
('loper', 'perusahaan', 1, 677, 218),
('loper', 'users', 1, 678, 139);

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'spkpenilaiankaryawan', 'datakaryawan', '{\"CREATE_TIME\":\"2019-08-08 11:37:24\",\"sorted_col\":\"`jabatan` ASC\"}', '2019-08-10 07:28:48'),
('root', 'spkpenilaiankaryawan', 'nilaihasil', '{\"sorted_col\":\"`nilaihasil`.`idKaryawan`  DESC\",\"CREATE_TIME\":\"2019-08-10 00:51:07\",\"col_order\":[0,1,2,3,4,5,6,7,8],\"col_visib\":[1,1,1,1,1,1,1,1,1]}', '2019-08-20 23:30:37'),
('root', 'waralabaku', 'nilaiutility', '{\"sorted_col\":\"`nilaiutility`.`hasil` ASC\"}', '2019-08-23 16:02:53');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2019-09-29 22:01:41', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `spkpenilaiankaryawan`
--
CREATE DATABASE IF NOT EXISTS `spkpenilaiankaryawan` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `spkpenilaiankaryawan`;

-- --------------------------------------------------------

--
-- Table structure for table `bobot`
--

CREATE TABLE `bobot` (
  `id` int(2) NOT NULL,
  `jabatan` varchar(255) DEFAULT NULL,
  `generalKnowledge` float DEFAULT NULL,
  `basic` float DEFAULT NULL,
  `intermediate` float DEFAULT NULL,
  `advance` float DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bobot`
--

INSERT INTO `bobot` (`id`, `jabatan`, `generalKnowledge`, `basic`, `intermediate`, `advance`, `created_at`, `updated_at`) VALUES
(1, 'Staff', 0.3, 0.2, 0.4, 0.1, NULL, '2019-08-31 22:06:00'),
(2, 'SPV', 0.5, 0.2, 0.2, 0.1, NULL, '2019-08-12 03:55:29'),
(3, 'Manager', 0.4, 0.2, 0.1, 0.3, NULL, '2019-08-11 15:44:33');

-- --------------------------------------------------------

--
-- Table structure for table `datakaryawan`
--

CREATE TABLE `datakaryawan` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `nik` varchar(255) DEFAULT NULL,
  `jenisKelamin` varchar(255) DEFAULT NULL,
  `tempatLahir` varchar(255) DEFAULT NULL,
  `tanggalLahir` varchar(255) DEFAULT NULL,
  `divisi` varchar(255) DEFAULT NULL,
  `jabatan` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `alamat` longtext,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `datakaryawan`
--

INSERT INTO `datakaryawan` (`id`, `nama`, `nik`, `jenisKelamin`, `tempatLahir`, `tanggalLahir`, `divisi`, `jabatan`, `email`, `phone`, `alamat`, `created_at`, `updated_at`) VALUES
(20, 'tatang', '6255144', 'Pria', 'Jombang', '12/2/1998', 'Kiper', 'Manager', 'tatang@gmail.com', '098723126218', 'Babakan Pedes', '2019-08-09 01:02:04', '2019-08-09 05:44:49'),
(21, 'nanang', '114629', 'Custom', 'Bandung', '22/8/2000', 'Gelandang Bertahan', 'Manager', 'nanang@gmail.com', '098627182718', 'KiaraAsri', '2019-08-09 05:44:00', '2019-08-09 05:44:00'),
(22, 'Abdurrohman Sholihin', '119001', 'Pria', 'Bandung', '22/1/1982', 'Manager', 'SPV', 'Sholihin@gmail.com', '08927371662', 'Jl trembesi Blok D.4, Bandar baru, Kemayoran, Jakarta Pusat', '2019-08-09 18:18:51', '2019-08-09 18:18:51'),
(23, 'Agus Sudrajat', '22511102', 'Wanita', 'Bogor', '2019-01-07', 'Sekertaris', 'Staff', 'Sudrajat@gmail.com', '09862362127', 'Vila Bogor Indah Blok F3 No.36-37 Bogor 16157', '2019-08-09 18:21:27', '2019-08-21 00:44:11'),
(24, 'Yopi Trirushendrawan', '12331241', 'Pria', 'Solo', '14/5/1990', 'Direktur', 'Staff', 'YopiTrirushendrawan@gmail.com', '0976351271263', 'Jl. Hasanudin 53, Badran, Purwosari, Laweyan, Solo 57142', '2019-08-09 18:22:53', '2019-08-09 18:22:53'),
(25, 'gilang', '1112332', NULL, NULL, NULL, NULL, 'SPV', NULL, NULL, NULL, '2019-08-10 06:18:34', '2019-08-10 06:18:34'),
(26, 'Nunung', '1233312', 'Wanita', 'bali', '2019-08-10', 'asd', 'SPV', 'asd@hha.com', '123', 'asd', '2019-08-21 21:45:06', '2019-08-21 21:45:06');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nilaihasil`
--

CREATE TABLE `nilaihasil` (
  `id` int(5) NOT NULL,
  `idKaryawan` varchar(5) DEFAULT NULL,
  `nik` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `divisi` varchar(255) DEFAULT NULL,
  `jabatan` varchar(255) DEFAULT NULL,
  `hasil` float DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nilaihasil`
--

INSERT INTO `nilaihasil` (`id`, `idKaryawan`, `nik`, `nama`, `divisi`, `jabatan`, `hasil`, `created_at`, `updated_at`) VALUES
(3, '20', '6255144', 'tatang', 'Kiper', 'Manager', 0.915, '2019-08-09 01:02:04', '2019-08-12 03:53:14'),
(4, '21', '114629', 'nanang', 'Gelandang Bertahan', 'Manager', 0.87, '2019-08-09 05:44:00', '2019-08-12 03:53:14'),
(5, '22', '119001', 'Abdurrohman Sholihin', 'Manager', 'SPV', 0.633333, '2019-08-09 18:18:51', '2019-08-21 21:45:44'),
(6, '23', '22511102', 'Agus Sudrajat', 'Sekertaris', 'Staff', 0.8, '2019-08-09 18:21:27', '2019-08-31 22:06:00'),
(7, '24', '12331241', 'Yopi Trirushendrawan', 'Direktur', 'Staff', 1, '2019-08-09 18:22:53', '2019-08-31 22:06:00'),
(8, '25', '1112332', 'gilang', NULL, 'SPV', 0.796667, '2019-08-10 06:18:34', '2019-08-21 21:45:44'),
(9, '26', '1233312', 'Nunung', 'asd', 'SPV', 0.815, '2019-08-21 21:45:06', '2019-08-21 21:45:44');

-- --------------------------------------------------------

--
-- Table structure for table `nilaikaryawan`
--

CREATE TABLE `nilaikaryawan` (
  `id` int(5) NOT NULL,
  `idKaryawan` varchar(5) DEFAULT NULL,
  `nik` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `jabatan` varchar(255) DEFAULT NULL,
  `generalKnowledge` int(5) DEFAULT NULL,
  `basic` int(5) DEFAULT NULL,
  `intermediate` int(5) DEFAULT NULL,
  `advance` int(5) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nilaikaryawan`
--

INSERT INTO `nilaikaryawan` (`id`, `idKaryawan`, `nik`, `nama`, `jabatan`, `generalKnowledge`, `basic`, `intermediate`, `advance`, `created_at`, `updated_at`) VALUES
(3, '20', '6255144', 'tatang', 'Manager', 5, 4, 3, 4, '2019-08-09 01:02:04', '2019-08-12 03:53:07'),
(4, '21', '114629', 'nanang', 'Manager', 4, 3, 4, 5, '2019-08-09 05:44:00', '2019-08-12 03:53:14'),
(5, '22', '119001', 'Abdurrohman Sholihin', 'SPV', 2, 2, 3, 5, '2019-08-09 18:18:51', '2019-08-12 03:54:41'),
(6, '23', '22511102', 'Agus Sudrajat', 'Staff', 3, 4, 2, 5, '2019-08-09 18:21:27', '2019-08-21 00:44:11'),
(7, '24', '12331241', 'Yopi Trirushendrawan', 'Staff', 3, 4, 4, 5, '2019-08-09 18:22:53', '2019-08-12 03:30:15'),
(8, '25', '1112332', 'gilang', 'SPV', 4, 1, 3, 4, '2019-08-10 06:18:34', '2019-08-12 03:54:49'),
(9, '26', '1233312', 'Nunung', 'SPV', 3, 3, 4, 2, '2019-08-21 21:45:06', '2019-08-21 21:45:44');

-- --------------------------------------------------------

--
-- Table structure for table `nilainormalisasi`
--

CREATE TABLE `nilainormalisasi` (
  `id` int(5) NOT NULL,
  `idKaryawan` varchar(5) DEFAULT NULL,
  `nik` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `jabatan` varchar(255) DEFAULT NULL,
  `generalKnowledge` float DEFAULT NULL,
  `basic` float DEFAULT NULL,
  `intermediate` float DEFAULT NULL,
  `advance` float DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nilainormalisasi`
--

INSERT INTO `nilainormalisasi` (`id`, `idKaryawan`, `nik`, `nama`, `jabatan`, `generalKnowledge`, `basic`, `intermediate`, `advance`, `created_at`, `updated_at`) VALUES
(3, '20', '6255144', 'tatang', 'Manager', 1, 1, 0.75, 0.8, '2019-08-09 01:02:04', '2019-08-12 03:53:14'),
(4, '21', '114629', 'nanang', 'Manager', 0.8, 0.75, 1, 1, '2019-08-09 05:44:00', '2019-08-12 03:53:14'),
(5, '22', '119001', 'Abdurrohman Sholihin', 'SPV', 0.5, 0.666667, 0.75, 1, '2019-08-09 18:18:51', '2019-08-21 21:45:44'),
(6, '23', '22511102', 'Agus Sudrajat', 'Staff', 1, 1, 0.5, 1, '2019-08-09 18:21:27', '2019-08-31 22:06:00'),
(7, '24', '12331241', 'Yopi Trirushendrawan', 'Staff', 1, 1, 1, 1, '2019-08-09 18:22:53', '2019-08-31 22:06:00'),
(8, '25', '1112332', 'gilang', 'SPV', 1, 0.333333, 0.75, 0.8, '2019-08-10 06:18:34', '2019-08-21 21:45:44'),
(9, '26', '1233312', 'Nunung', 'SPV', 0.75, 1, 1, 0.4, '2019-08-21 21:45:06', '2019-08-21 21:45:44');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jabatan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `jabatan`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'HRD', 'HRD', 'HRD001', '$2y$10$0.2q39V7f4FwIkIwdWs12O2eaFsyqh4SdJROk11kqAcj.cE4zrcW.', '2019-08-07 09:59:20', '2019-08-07 09:59:20'),
(2, 'SPV', 'SPV', 'SPV001', '$2y$10$hvO.n.tkZIj9cwWRpuFQguRAJqL62bSDZi2eOxUCc97UpyTh0zfbW', '2019-08-10 13:54:58', '2019-08-10 13:54:58'),
(3, 'Manager', 'Manager', 'Manager001', '$2y$10$cI9ncaQ9iGxVTN3UJoNxve9def6Xd2Np5AkfxsW9rJdtstblgkkxS', '2019-08-10 13:55:30', '2019-08-10 13:55:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bobot`
--
ALTER TABLE `bobot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `datakaryawan`
--
ALTER TABLE `datakaryawan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nilaihasil`
--
ALTER TABLE `nilaihasil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nilaikaryawan`
--
ALTER TABLE `nilaikaryawan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nilainormalisasi`
--
ALTER TABLE `nilainormalisasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bobot`
--
ALTER TABLE `bobot`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `datakaryawan`
--
ALTER TABLE `datakaryawan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nilaihasil`
--
ALTER TABLE `nilaihasil`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `nilaikaryawan`
--
ALTER TABLE `nilaikaryawan`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `nilainormalisasi`
--
ALTER TABLE `nilainormalisasi`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `spk_saw`
--
CREATE DATABASE IF NOT EXISTS `spk_saw` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `spk_saw`;

-- --------------------------------------------------------

--
-- Table structure for table `dataattribut`
--

CREATE TABLE `dataattribut` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pencapaian` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'cost',
  `absensi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'cost',
  `etosKerja` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'cost',
  `programKerja` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'cost',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dataattribut`
--

INSERT INTO `dataattribut` (`id`, `pencapaian`, `absensi`, `etosKerja`, `programKerja`, `created_at`, `updated_at`) VALUES
(1, 'benefit', 'cost', 'cost', 'benefit', NULL, '2019-09-08 01:29:14');

-- --------------------------------------------------------

--
-- Table structure for table `databobot`
--

CREATE TABLE `databobot` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pencapaian` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `absensi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `etosKerja` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `programKerja` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `databobot`
--

INSERT INTO `databobot` (`id`, `pencapaian`, `absensi`, `etosKerja`, `programKerja`, `created_at`, `updated_at`) VALUES
(1, '0.2', '0.3', '0.1', '0.4', NULL, '2019-09-08 01:21:50');

-- --------------------------------------------------------

--
-- Table structure for table `datakaryawan`
--

CREATE TABLE `datakaryawan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nik` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jenisKelamin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kontak` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pencapaian` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `absensi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `etosKerja` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `programKerja` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `datakaryawan`
--

INSERT INTO `datakaryawan` (`id`, `nik`, `nama`, `jenisKelamin`, `alamat`, `kontak`, `pencapaian`, `absensi`, `etosKerja`, `programKerja`, `created_at`, `updated_at`) VALUES
(1, 'KEI190907061934', 'Haruka', 'Wanita', 'Baleendah, Kab Bandung', '08726354612', '8', '7', '8', '7', '2019-09-08 01:20:34', '2019-09-08 01:24:45'),
(2, 'KEI190907062210', 'Jajang', 'Pria', 'Warung Jambu, Bandung', '087823546678', '7', '7', '8', '9', '2019-09-08 01:22:38', '2019-09-08 01:24:56'),
(3, 'KEI190907062308', 'Rahmat', 'Pria', 'Dago, Bandung', '087823546678', '8', '8', '9', '6', '2019-09-08 01:23:31', '2019-09-08 01:25:04'),
(4, 'KEI190907062331', 'Key', 'Wanita', 'Rancaekek, Kab Bandung', '08882366215', '7', '8', '7', '6', '2019-09-08 01:23:54', '2019-09-08 01:25:11'),
(5, 'KEI190907062355', 'Suryaman', 'Pria', 'Cicadas, Bandung', '089823467582', '6', '9', '8', '8', '2019-09-08 01:24:19', '2019-09-08 01:25:19');

-- --------------------------------------------------------

--
-- Table structure for table `datanormalisasi`
--

CREATE TABLE `datanormalisasi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nik` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pencapaian` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `absensi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `etosKerja` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `programKerja` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `hasil` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `datanormalisasi`
--

INSERT INTO `datanormalisasi` (`id`, `nik`, `nama`, `pencapaian`, `absensi`, `etosKerja`, `programKerja`, `hasil`, `created_at`, `updated_at`) VALUES
(1, 'KEI190907061934', 'Haruka', '1', '1', '0.875', '0.7777777777777778', '0.8986111111111111', '2019-09-08 01:20:34', '2019-09-08 01:32:34'),
(2, 'KEI190907062210', 'Jajang', '0.875', '1', '0.875', '1', '0.9625', '2019-09-08 01:22:38', '2019-09-08 01:32:34'),
(3, 'KEI190907062308', 'Rahmat', '1', '0.875', '0.7777777777777778', '0.6666666666666666', '0.8069444444444445', '2019-09-08 01:23:31', '2019-09-08 01:32:34'),
(4, 'KEI190907062331', 'Key', '0.875', '0.875', '1', '0.6666666666666666', '0.8041666666666667', '2019-09-08 01:23:54', '2019-09-08 01:32:34'),
(5, 'KEI190907062355', 'Suryaman', '0.75', '0.7777777777777778', '0.875', '0.8888888888888888', '0.826388888888889', '2019-09-08 01:24:19', '2019-09-08 01:32:34');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_09_02_191133_data_karyawan', 1),
(2, '2019_09_03_230940_databobot', 1),
(3, '2019_09_03_234202_dataattribut', 1),
(4, '2019_09_04_012246_datanormalisasi', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dataattribut`
--
ALTER TABLE `dataattribut`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `databobot`
--
ALTER TABLE `databobot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `datakaryawan`
--
ALTER TABLE `datakaryawan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `datanormalisasi`
--
ALTER TABLE `datanormalisasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dataattribut`
--
ALTER TABLE `dataattribut`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `databobot`
--
ALTER TABLE `databobot`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `datakaryawan`
--
ALTER TABLE `datakaryawan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `datanormalisasi`
--
ALTER TABLE `datanormalisasi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` int(3) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `other` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`id`, `image`, `other`, `updated_at`, `created_at`) VALUES
(7, '1560398970_foto.jpg', 'asd', '2019-06-13 04:09:30', '2019-06-13 04:09:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Database: `testlumen`
--
CREATE DATABASE IF NOT EXISTS `testlumen` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `testlumen`;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_08_29_161844_test_lumen', 1);

-- --------------------------------------------------------

--
-- Table structure for table `testtabels`
--

CREATE TABLE `testtabels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `airline` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testtabels`
--

INSERT INTO `testtabels` (`id`, `name`, `airline`, `created_at`, `updated_at`) VALUES
(2, 'asd', 'asd', NULL, NULL),
(3, 'testname', NULL, '2019-08-29 18:14:35', '2019-08-29 18:14:35'),
(4, 'testname', 'testairline', '2019-08-29 18:15:03', '2019-08-29 18:15:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testtabels`
--
ALTER TABLE `testtabels`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `testtabels`
--
ALTER TABLE `testtabels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `waralabaku`
--
CREATE DATABASE IF NOT EXISTS `waralabaku` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `waralabaku`;

-- --------------------------------------------------------

--
-- Table structure for table `attribut`
--

CREATE TABLE `attribut` (
  `id` int(10) UNSIGNED NOT NULL,
  `modal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gerai` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bep` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fee` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keuntungan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attribut`
--

INSERT INTO `attribut` (`id`, `modal`, `gerai`, `bep`, `fee`, `keuntungan`, `created_at`, `updated_at`) VALUES
(1, 'benefit', 'cost', 'benefit', 'cost', 'cost', NULL, '2019-08-24 16:08:49');

-- --------------------------------------------------------

--
-- Table structure for table `bobot`
--

CREATE TABLE `bobot` (
  `id` int(10) UNSIGNED NOT NULL,
  `modal` double(5,2) DEFAULT NULL,
  `gerai` double(5,2) DEFAULT NULL,
  `bep` double(5,2) DEFAULT NULL,
  `fee` double(5,2) DEFAULT NULL,
  `keuntungan` double(5,2) DEFAULT NULL,
  `modalNorm` double(5,2) DEFAULT NULL,
  `geraiNorm` double(5,2) DEFAULT NULL,
  `bepNorm` double(5,2) DEFAULT NULL,
  `feeNorm` double(5,2) DEFAULT NULL,
  `keuntunganNorm` double(5,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bobot`
--

INSERT INTO `bobot` (`id`, `modal`, `gerai`, `bep`, `fee`, `keuntungan`, `modalNorm`, `geraiNorm`, `bepNorm`, `feeNorm`, `keuntunganNorm`, `created_at`, `updated_at`) VALUES
(1, 10.00, 25.00, 15.00, 20.00, 30.00, 0.10, 0.25, 0.15, 0.20, 0.30, NULL, '2019-08-24 16:09:33');

-- --------------------------------------------------------

--
-- Table structure for table `datawaralaba`
--

CREATE TABLE `datawaralaba` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jenis` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `web` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modal` bigint(20) DEFAULT NULL,
  `gerai` int(11) DEFAULT NULL,
  `bep` int(11) DEFAULT NULL,
  `fee` enum('ada','tidak ada') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keuntungan` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `datawaralaba`
--

INSERT INTO `datawaralaba` (`id`, `nama`, `alamat`, `jenis`, `phone`, `email`, `web`, `modal`, `gerai`, `bep`, `fee`, `keuntungan`, `created_at`, `updated_at`) VALUES
(121, 'Kako Thai Tea Indonesia', 'Jl trembesi Blok D.4, Bandar baru, Kemayoran, Jakarta Pusat', 'Minuman', '085735300400', 'kakothaitea@gmail.com', 'http://www.kakothaitea.com', 9900000, 261, 3, 'tidak ada', 240, '2019-07-27 00:57:45', '2019-08-23 02:45:32'),
(122, 'Cheese Tea Inc', 'Jl. Trembesi Blok D 4, Bandarbaru, Kemayoran  ', 'Minuman', '085735300400', 'cheeseteainc@gmail.com', 'http://www.cheeseteainc.com', 19900000, 32, 2, 'tidak ada', 183, '2019-07-27 00:59:24', '2019-07-27 00:59:24'),
(123, 'Rachacha Thai Tea', 'Jl. S. Indragiri 25/290 Sangkrah Pasar Kliwon Surakarta 57119', 'Minuman', '081575862500', 'rachachaid@gmail.com', 'http://www.rachacha.id', 6900000, 150, 2, 'tidak ada', 100, '2019-07-27 01:00:41', '2019-07-27 01:00:41'),
(124, 'NYOKLAT SUPER', 'Jl. Cocak I No. 4 Sambeng, Mangkubumen, Banjarsari, Surakarta 57139', 'Minuman', '082225445558', 'nyoklatsuper@gmail.com', 'http://www.nyoklatsuper.com', 9800000, 154, 2, 'tidak ada', 118, '2019-07-27 01:01:41', '2019-07-27 01:01:41'),
(125, 'Nyot Nyot Thai Tea', 'Jl. Garuda No. 23, Karangasem, Laweyan 57169', 'Minuman', '082133375341', 'thaiteanyotnyot@gmail.com', 'http://www.thaiteanyotnyot.com', 8500000, 188, 2, 'tidak ada', 100, '2019-07-27 01:02:39', '2019-07-27 01:02:39'),
(126, 'Oliv Geprek Ekspres', 'Jl. Kenanga 14 Badran, Purwosari, Laweyan, Solo 57142', 'Makanan', '082133246400', 'olivgeprekekspres@gmail.com', '-', 8000000, 17, 2, 'tidak ada', 42, '2019-07-27 01:04:09', '2019-07-27 01:04:09'),
(127, 'Pisang Nugget Kece', 'Jl. Hasanudin 53, Badran, Purwosari, Laweyan, Solo 57142', 'Makanan', '082220777161', 'pisangnuggetkece@gmail.com', '-', 5800000, 450, 1, 'tidak ada', 139, '2019-07-27 01:05:13', '2019-07-27 01:05:13'),
(128, 'WISCO', 'Jl.Bintan no 10 Grogolan, Ketelan, Banjarsari, Solo', 'Minuman', '085702222138', 'wisco.chocolate@gmail.com', 'http://www.wiscochocolate.com', 5000000, 387, 3, 'tidak ada', 76, '2019-07-27 01:08:02', '2019-07-27 01:08:02'),
(129, 'Moscoblend', 'Jl. Hasanudin 88 Punggawan Surakarta', 'Minuman', '081217978413', 'dwikusumasarendra@gmail.com', 'http://www.moscoblend.com', 3000000, 850, 1, 'tidak ada', 76, '2019-07-27 01:09:50', '2019-07-27 01:09:50'),
(130, 'Forty Eight Ice Blend', 'Jl. Hasanudin No. 53, Badran, Laweyan, Surakarta 57142', 'Minuman', '081328999639', 'forty.eight48@yahoo.co.id', 'http://www.48iceblend.com', 6200000, 152, 3, 'tidak ada', 105, '2019-07-27 01:10:56', '2019-07-27 01:10:56'),
(131, 'Candy Crepes', 'Jl. Kenanga no. 14 Badran, Purwosari, Laweyan,Solo 57142', 'Makanan', '081331546611', 'candycrepes.id@gmail.com', '-', 6700000, 5, 2, 'tidak ada', 149, '2019-07-27 01:12:36', '2019-08-23 00:56:13'),
(132, 'MOMOCHI (Premium Mochi Ice Cream)', 'Vila Bogor Indah Blok F3 No.36-37 Bogor 16157', 'Makanan', '085692221584', 'cv.aruziki@gmail.com', 'http://www.momochi.web.id', 6000000, 16, 2, 'tidak ada', 81, '2019-07-27 01:14:02', '2019-07-27 01:14:02'),
(133, 'Jomar Jamur Krezz', 'Jl. Kenanga 14 Badran, Purwosari, Laweyan, Solo 57142', 'Makanan', '081359336768', 'jomarjamurkrezz@gmail.com', '-', 5200000, 15, 3, 'tidak ada', 112, '2019-07-27 01:15:50', '2019-07-27 01:15:50'),
(136, 'Good Day', 'Jl. Taman Jatibaru Barat No 1-3, Tanah Abang, Jakarta Pusat', 'Minuman', '0213917904', 'usahakopi@kapalapi.co.id', '-', 10000000, 30, 4, 'tidak ada', 38, '2019-08-23 01:05:08', '2019-08-23 01:05:08'),
(137, 'Hello Choco Drink', 'Jl. Merak Rt 04 Rw 22 Waringinrejo, Cemani, Grogol, Sukoharjo', 'Minuman', '0812 2777 7246', 'hellochocodrink@gmail.com', '-', 3700000, 5, 1, 'tidak ada', 100, '2019-08-23 01:06:17', '2019-08-23 01:06:17'),
(138, 'Ice Cream Bowl', 'Jalan Raya Tajem No . 20, Maguwoharjo, Sleman, Yogyakarta', 'Makanan', '0274 - 4363086', 'waralabaicecream@gmail.com', '-', 4300000, 250, 2, 'tidak ada', 181, '2019-08-23 01:08:30', '2019-08-23 01:08:30'),
(140, 'Kentang Hawaii Indonesia', 'JLN. KEBANGKITAN NASIONAL NO 4 SRWEDARI SOLO, JAWA TENGAH', 'Makanan', '0813 2942 4848', 'info@galeripedas.net', 'http://www.kentanghawaii.com', 2000000, 21, 1, 'tidak ada', 111, '2019-08-23 01:09:51', '2019-08-23 01:09:51'),
(141, 'KUCH2HOTAHU', 'Jl KH Turaikhan Adjhuri / Sucen No. 11 Kudus 59314', 'Makanan', '085743114560', 'kuch2hotahu@gmail.com', 'http://www.kuch2hotahu.com', 8500000, 765, 3, 'tidak ada', 88, '2019-08-23 02:20:34', '2019-08-23 02:20:34'),
(142, 'Lucky Crepes', 'Jln Citra Tangerang, Serdang Asri 3, Blok R 15 No 30, Tangerang', 'Makanan', '021-70506226', 'lucky_crepes@yahoo.com', 'http://www.luckycrepes.com', 5500000, 88, 5, 'ada', 150, '2019-08-23 02:21:44', '2019-08-23 02:21:44'),
(143, '8 Ice Blend & Squash', 'Perumahan Mutiara Cempaka Blok E No. 14 RT/RW : 03/09 Desa Cempaka Kecamatan Plumbon Kabupaten Cirebon ', 'Minuman', '085722109953', 'Pramanareni03@gmail.com', '-', 3000000, 23, 3, 'tidak ada', 81, '2019-08-23 02:25:00', '2019-08-23 02:25:00'),
(144, 'ABCheese', 'Jl.Babakan Tarogong No.139 Bandung (40232) ', 'Minuman', '083820350252', 'abcheeseinfo@gmail.com', '-', 4900000, 5, 4, 'tidak ada', 105, '2019-08-23 02:53:30', '2019-08-23 02:53:30'),
(145, 'Arumanis Rainbow', 'Raffless Hills Blok N5 No.15-16 Cibubur Jakarta Timur ', 'Makanan', '08121004943', 'sales@arumanisrainbow.com', 'http://www.arumanisrainbow.com', 8200000, 1000, 1, 'tidak ada', 471, '2019-08-23 02:55:21', '2019-08-23 02:55:21'),
(146, 'Banana Nugget Juara', 'Jl. Kenanga 14, Badran, Purwosari, Laweyan, Solo 57142 ', 'Makanan', '082243331123', 'banananuggetjuara@gmail.com', '-', 5700000, 300, 3, 'tidak ada', 16, '2019-08-23 02:56:34', '2019-08-23 02:56:34'),
(147, 'Bosco Ice Blend', 'Jl. Merak Rt 04 Rw 22 Waringinrejo, Cemani, Grogol, Sukoharjo', 'Minuman', '081329500053', 'boscoiceblend@gmail.com', '-', 4500000, 6, 2, 'tidak ada', 86, '2019-08-23 03:00:19', '2019-08-23 03:00:19'),
(148, 'Chagocha Indonesia', 'Jl. S. Indragiri 25/290 Sangkrah Pasar Kliwon Surakarta 57119 ', 'Minuman', '082227373700', 'chagochaid@gmail.com', 'www.chagocha.id', 4500000, 5, 1, 'tidak ada', 100, '2019-08-23 03:04:41', '2019-08-23 03:04:41'),
(149, 'Chai Thai Tea', 'Perumahan Kampung Semawis Blok P No.26 Jln. Gambang semarang II. Kedungmundu, Tembalang, semarang 50273', 'Minuman', '082133588885', 'chaitaiteagroup@gmail.com', '-', 9500000, 75, 1, 'tidak ada', 100, '2019-08-23 03:05:52', '2019-08-23 03:05:52'),
(150, 'Chaphoria Thai Tea', 'Jl. Merak Rt 04 Rw 22 Waringinrejo, Cemani, Grogol, Sukoharjo ', 'Minuman', '081329756300', 'chaphoria@gmail.com', 'http://www.chaphoria.id', 3800000, 7, 1, 'tidak ada', 77, '2019-08-23 03:07:03', '2019-08-23 03:07:03'),
(152, 'MATCHO CHOCOLATE DRINK', 'Jl. Ir. H. Juanda No. 93 Cikampek ( Kota Baru ) - Karawang Jawa Barat ', 'Minuman', '089510136011', 'matcho.chocolate@gmail.com', ' masih dalam pemulihan', 7000000, 175, 2, 'tidak ada', 80, '2019-08-23 09:29:13', '2019-08-23 09:29:13'),
(160, 'MEET UP Ice Blend', 'Perum Fajar Indah ,Baturan Indah IV ,B199 ,Colomadu, Surakarta ', 'Minuman', '082323065757', 'mahesti.group@gmail.com', '-', 6299999, 15, 1, 'tidak ada', 100, '2019-08-23 09:35:30', '2019-08-23 09:35:30'),
(161, 'Mobo Thai Tea', 'Jl. S. Indragiri 25/290 Sangkrah Pasar Kliwon Surakarta 57119 ', 'Minuman', '085799996700', 'mobothaitea@gmail.com', '-', 12000000, 6, 2, 'tidak ada', 120, '2019-08-23 09:40:01', '2019-08-23 09:40:01'),
(162, 'mocha mocha thai tea', 'Jl. Tegalrejo VI No.06 Semarang ', 'Minuman', '081389757008', 'purwanto0901@gmail.com', '-', 7900000, 18, 1, 'tidak ada', 140, '2019-08-23 09:41:07', '2019-08-23 09:41:07'),
(163, 'Moo-Moo Korean Milk', 'komplek pergudangan griya bandara indah no.5D,tanjung siapi-api,palembang ', 'Minuman', '082177315135', 'moomookoreanmilk@gmail.com', '-', 3700000, 104, 2, 'tidak ada', 175, '2019-08-23 09:42:06', '2019-08-23 09:42:06'),
(164, 'Pisang Nana', 'Jl. Ir sutami no 63 jebres solo jawa tengah ', 'Makanan', '081329424848', 'bmarsiwa@yahoo.com', '-', 3000000, 18, 3, 'tidak ada', 54, '2019-08-23 09:42:59', '2019-08-23 09:42:59'),
(165, 'Piscok Lumeerr', 'Puri Cendana A12 no 20 Tambun Selatan ', 'Makanan', '081290089148', 'jhoekho@gmail.com', 'http://www.piscoklumeerr.com', 6500000, 50, 2, 'tidak ada', 100, '2019-08-23 09:44:16', '2019-08-23 09:44:16'),
(166, 'Piti Cha', 'Komplek pergudangan griya bandara indah no.5D tanjung siapi-api,palembang ', 'Minuman', '081379525347', 'pitichafranchise@gmail.com', '-', 5700000, 5, 3, 'tidak ada', 150, '2019-08-23 09:45:13', '2019-08-23 09:45:13'),
(167, 'Pota Potatoes', 'Jl Sariwangi No.81C, Parongpong Bandung, Indonesia ', 'Makanan', '087821288532', 'potapotatoes@gmail.com', ' http://www.potapotatoes.com', 5000000, 253, 3, 'tidak ada', 91, '2019-08-23 09:46:32', '2019-08-23 09:46:32'),
(168, 'Rujak Es KrimKu', 'Perumahan gading Mas no. 4, Junrejo, Kota Batu, Jawa Timur ', 'Makanan', '085706575973', 'fik_ram_si@yahoo.com', 'http://finahomeindustry.com', 7000000, 30, 4, 'tidak ada', 53, '2019-08-23 09:47:38', '2019-08-23 09:47:38'),
(169, 'SOKLAT BANGET', 'Jl. Matoa Raya No. 4 Karangasem, Surakarta 57145 ', 'Minuman', '081327597321', 'soklatbangeeet@gmail.com', '-', 7000000, 53, 2, 'tidak ada', 169, '2019-08-23 09:48:35', '2019-08-23 09:48:35'),
(170, 'TOPER CREPES', 'Jl. Ir. Juanda No. 93 Cikampek ( Kota Baru )- Karawang - Jawa Barat ', 'Makanan', '089510136011', 'topercrepes@gmail.com', 'Masih Dalam Pemulihan', 7000000, 700, 3, 'tidak ada', 102, '2019-08-23 09:50:03', '2019-08-23 09:50:03'),
(171, 'TSOKOLATE DOLOE', 'JL HASANUDIN 88 PUNGGAWAN SURAKARTA ', 'Minuman', '081325007805', 'dwikusumasarendra@gmail.com', '-', 3000000, 7, 1, 'tidak ada', 128, '2019-08-23 09:50:53', '2019-08-23 09:50:53'),
(172, 'Waralaba 10', 'bandungh', 'Makanan', '0222222222', 'topercrepes@gmail.com', 'http://www.piscoklumeerr.com', 6000000, 67, 2, 'tidak ada', 120, '2019-08-24 16:02:41', '2019-08-24 16:02:41');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `no` int(11) NOT NULL,
  `id` varchar(255) DEFAULT NULL,
  `jawaban2` varchar(255) DEFAULT NULL,
  `jawaban3` varchar(255) DEFAULT NULL,
  `jawaban4` varchar(255) DEFAULT NULL,
  `jawaban5` varchar(255) DEFAULT NULL,
  `jawaban6` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`no`, `id`, `jawaban2`, `jawaban3`, `jawaban4`, `jawaban5`, `jawaban6`, `created_at`, `updated_at`) VALUES
(47, 'e6f75795-9045-434b-bc87-a3e87bc8b95e', 'jawaban3', 'jawaban2', 'jawaban1', 'jawaban2', 'jawaban1', '2019-08-22 05:30:57', '2019-08-22 05:30:57'),
(48, 'e6f75795-9045-434b-bc87-a3e87bc8b95e', 'jawaban3', 'jawaban2', 'jawaban2', 'jawaban2', 'jawaban2', '2019-08-22 05:35:10', '2019-08-22 05:35:10'),
(49, 'e6f75795-9045-434b-bc87-a3e87bc8b95e', 'jawaban1', 'jawaban1', 'jawaban1', 'jawaban1', 'jawaban1', '2019-08-22 15:40:10', '2019-08-22 15:40:10'),
(50, 'e6f75795-9045-434b-bc87-a3e87bc8b95e', 'jawaban1', 'jawaban1', 'jawaban1', 'jawaban1', 'jawaban1', '2019-08-22 12:41:42', '2019-08-22 12:41:42'),
(51, 'cb234d98-9e30-4c71-9dd4-afb4ff590d0f', 'jawaban1', 'jawaban1', 'jawaban1', 'jawaban1', 'jawaban1', '2019-08-22 19:47:48', '2019-08-22 19:47:48'),
(52, 'e6f75795-9045-434b-bc87-a3e87bc8b95e', 'jawaban1', 'jawaban1', 'jawaban1', 'jawaban1', 'jawaban1', '2019-08-23 09:13:44', '2019-08-23 09:13:44'),
(53, 'e6f75795-9045-434b-bc87-a3e87bc8b95e', 'jawaban1', 'jawaban2', 'jawaban2', 'jawaban2', 'jawaban2', '2019-08-23 09:14:17', '2019-08-23 09:14:17'),
(54, 'e6f75795-9045-434b-bc87-a3e87bc8b95e', 'jawaban1', 'jawaban1', 'jawaban1', 'jawaban1', 'jawaban1', '2019-08-23 09:16:50', '2019-08-23 09:16:50'),
(55, 'cb234d98-9e30-4c71-9dd4-afb4ff590d0f', 'jawaban3', 'jawaban1', 'jawaban2', 'jawaban2', 'jawaban1', '2019-08-23 11:29:28', '2019-08-23 11:29:28'),
(56, 'cb234d98-9e30-4c71-9dd4-afb4ff590d0f', 'jawaban2', 'jawaban1', 'jawaban2', 'jawaban1', 'jawaban1', '2019-08-23 11:31:39', '2019-08-23 11:31:39');

-- --------------------------------------------------------

--
-- Table structure for table `kuisioner`
--

CREATE TABLE `kuisioner` (
  `id` int(5) NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bermanfaat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `komentar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tindakLanjut` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `kuisioner`
--

INSERT INTO `kuisioner` (`id`, `nama`, `bermanfaat`, `komentar`, `tindakLanjut`, `created_at`, `updated_at`) VALUES
(31, 'Gilang', 'Ya', 'Aplikasi yang cukup membantu', 'Tidak', '2019-08-20 07:36:34', '2019-08-20 07:36:34'),
(32, 'Teguh', 'Ya', 'Bagus, Tingkatkan terutama di bagian UI', 'Ya', '2019-08-20 07:37:35', '2019-08-20 07:37:35'),
(33, 'Hendi', 'Ya', 'Membantu untuk mencari info makanan dan minuman viral', 'Ya', '2019-08-20 07:43:46', '2019-08-20 07:43:46'),
(34, 'Rizky ramadhan', 'Ya', 'Sangat bagus', 'Ya', '2019-08-20 07:47:07', '2019-08-20 07:47:07'),
(35, 'Ars Setiawan', 'Tidak', 'Kurang memberi informasi yang jelas', 'Tidak', '2019-08-20 07:49:39', '2019-08-20 07:49:39'),
(36, 'Meindra', 'Ya', 'Sangat Bagus', 'Ya', '2019-08-20 07:53:20', '2019-08-20 07:53:20'),
(37, 'Berry Ikhsan P', 'Tidak', 'Aplikasi nya minim fitur', 'Tidak', '2019-08-20 08:01:42', '2019-08-20 08:01:42'),
(38, 'Andi', 'Ya', 'Bagus', 'Ya', '2019-08-20 08:08:14', '2019-08-20 08:08:14'),
(39, 'Esa', 'Ya', 'Aplikasi yang membantu', 'Tidak', '2019-08-20 08:12:42', '2019-08-20 08:12:42'),
(40, 'nursamsi', 'Ya', 'tampilan di android dengan resolusi berbeda jadi acak acakan', 'Tidak', '2019-08-20 08:38:21', '2019-08-20 08:38:21'),
(41, 'ujang syarif', 'Ya', 'aplikasi yang bagus', 'Ya', '2019-08-20 08:51:20', '2019-08-20 08:51:20'),
(42, 'yosep setia ripa', 'Ya', 'aplikasi nya berguna untuk mendapat informasi bisnis makanan minuman', 'Ya', '2019-08-20 10:03:58', '2019-08-20 10:03:58');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(5, '2019_01_22_100859_datawaralaba', 1),
(6, '2019_01_23_111328_bobot', 1),
(7, '2019_01_23_140504_jenisattribut', 1),
(8, '2019_01_24_093456_nilaiattribut', 1),
(9, '2019_01_31_115945_update_bobot', 2),
(10, '2019_01_31_120622_update_bobot', 3),
(11, '2019_01_31_121111_update_bobot', 4),
(12, '2019_01_31_122354_update_bobot', 5),
(13, '2019_01_31_122538_update_bobot1', 6),
(14, '2019_01_31_122844_update_bobot1', 7),
(15, '2019_01_23_140504_attribut', 8),
(16, '2019_02_02_034032_nilaikriteria', 8),
(17, '2019_02_02_034506_minmaxkriteria', 9),
(18, '2019_02_02_041551_edit_data_waralaba', 10),
(19, '2019_02_02_142454_nilaiutility', 11),
(20, '2019_05_07_214953_create_user_models_table', 12);

-- --------------------------------------------------------

--
-- Table structure for table `nilaiutility`
--

CREATE TABLE `nilaiutility` (
  `id` int(10) UNSIGNED NOT NULL,
  `idDW` int(5) NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modal` int(11) DEFAULT NULL,
  `gerai` int(11) DEFAULT NULL,
  `bep` int(11) DEFAULT NULL,
  `fee` int(11) DEFAULT NULL,
  `keuntungan` int(11) DEFAULT NULL,
  `modalUtility` double(4,2) DEFAULT NULL,
  `geraiUtility` double(4,2) DEFAULT NULL,
  `bepUtility` double(4,2) DEFAULT NULL,
  `feeUtility` double(4,2) DEFAULT NULL,
  `keuntunganUtility` double(4,2) DEFAULT NULL,
  `hasil` double(4,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nilaiutility`
--

INSERT INTO `nilaiutility` (`id`, `idDW`, `nama`, `modal`, `gerai`, `bep`, `fee`, `keuntungan`, `modalUtility`, `geraiUtility`, `bepUtility`, `feeUtility`, `keuntunganUtility`, `hasil`, `created_at`, `updated_at`) VALUES
(100, 121, 'Kako Thai Tea Indonesia', 9900000, 261, 3, 2, 240, 0.44, 0.74, 0.50, 0.00, 0.51, 0.46, '2019-07-27 00:57:45', '2019-08-24 16:09:33'),
(101, 122, 'Cheese Tea Inc', 19900000, 32, 2, 2, 183, 1.00, 0.97, 0.25, 0.00, 0.63, 0.57, '2019-07-27 00:59:24', '2019-08-24 16:09:33'),
(102, 123, 'Rachacha Thai Tea', 6900000, 150, 2, 2, 100, 0.27, 0.85, 0.25, 0.00, 0.82, 0.52, '2019-07-27 01:00:41', '2019-08-24 16:09:33'),
(103, 124, 'NYOKLAT SUPER', 9800000, 154, 2, 2, 118, 0.44, 0.85, 0.25, 0.00, 0.78, 0.53, '2019-07-27 01:01:41', '2019-08-24 16:09:33'),
(104, 125, 'Nyot Nyot Thai Tea', 8500000, 188, 2, 2, 100, 0.36, 0.82, 0.25, 0.00, 0.82, 0.52, '2019-07-27 01:02:39', '2019-08-24 16:09:33'),
(105, 126, 'Oliv Geprek Ekspres', 8000000, 17, 2, 2, 42, 0.34, 0.99, 0.25, 0.00, 0.94, 0.60, '2019-07-27 01:04:09', '2019-08-24 16:09:33'),
(106, 127, 'Pisang Nugget Kece', 5800000, 450, 1, 2, 139, 0.21, 0.55, 0.00, 0.00, 0.73, 0.38, '2019-07-27 01:05:13', '2019-08-24 16:09:33'),
(107, 128, 'WISCO', 5000000, 387, 3, 2, 76, 0.17, 0.62, 0.50, 0.00, 0.87, 0.51, '2019-07-27 01:08:02', '2019-08-24 16:09:33'),
(108, 129, 'Moscoblend', 3000000, 850, 1, 2, 76, 0.06, 0.15, 0.00, 0.00, 0.87, 0.30, '2019-07-27 01:09:50', '2019-08-24 16:09:33'),
(109, 130, 'Forty Eight Ice Blend', 6200000, 152, 3, 2, 105, 0.23, 0.85, 0.50, 0.00, 0.80, 0.55, '2019-07-27 01:10:56', '2019-08-24 16:09:33'),
(110, 131, 'Candy Crepes', 6700000, 5, 2, 2, 149, 0.26, 1.00, 0.25, 0.00, 0.71, 0.53, '2019-07-27 01:12:36', '2019-08-24 16:09:33'),
(111, 132, 'MOMOCHI (Premium Mochi Ice Cream)', 6000000, 16, 2, 2, 81, 0.22, 0.99, 0.25, 0.00, 0.86, 0.56, '2019-07-27 01:14:02', '2019-08-24 16:09:33'),
(112, 133, 'Jomar Jamur Krezz', 5200000, 15, 3, 2, 112, 0.18, 0.99, 0.50, 0.00, 0.79, 0.58, '2019-07-27 01:15:50', '2019-08-24 16:09:34'),
(115, 136, 'Good Day', 10000000, 30, 4, 2, 38, 0.45, 0.97, 0.75, 0.00, 0.95, 0.69, '2019-08-23 01:05:09', '2019-08-24 16:09:34'),
(116, 137, 'Hello Choco Drink', 3700000, 5, 1, 2, 100, 0.09, 1.00, 0.00, 0.00, 0.82, 0.50, '2019-08-23 01:06:17', '2019-08-24 16:09:34'),
(117, 138, 'Ice Cream Bowl', 4300000, 250, 2, 2, 181, 0.13, 0.75, 0.25, 0.00, 0.64, 0.43, '2019-08-23 01:08:30', '2019-08-24 16:09:34'),
(119, 140, 'Kentang Hawaii Indonesia', 2000000, 21, 1, 2, 111, 0.00, 0.98, 0.00, 0.00, 0.79, 0.48, '2019-08-23 01:09:51', '2019-08-24 16:09:34'),
(120, 141, 'KUCH2HOTAHU', 8500000, 765, 3, 2, 88, 0.36, 0.24, 0.50, 0.00, 0.84, 0.42, '2019-08-23 02:20:34', '2019-08-24 16:09:34'),
(121, 142, 'Lucky Crepes', 5500000, 88, 5, 1, 150, 0.20, 0.92, 1.00, 1.00, 0.71, 0.81, '2019-08-23 02:21:44', '2019-08-24 16:09:34'),
(122, 143, '8 Ice Blend & Squash', 3000000, 23, 3, 2, 81, 0.06, 0.98, 0.50, 0.00, 0.86, 0.58, '2019-08-23 02:25:00', '2019-08-24 16:09:34'),
(123, 144, 'ABCheese', 4900000, 5, 4, 2, 105, 0.16, 1.00, 0.75, 0.00, 0.80, 0.62, '2019-08-23 02:53:30', '2019-08-24 16:09:34'),
(124, 145, 'Arumanis Rainbow', 8200000, 1000, 1, 2, 471, 0.35, 0.00, 0.00, 0.00, 0.00, 0.03, '2019-08-23 02:55:21', '2019-08-24 16:09:34'),
(125, 146, 'Banana Nugget Juara', 5700000, 300, 3, 2, 16, 0.21, 0.70, 0.50, 0.00, 1.00, 0.57, '2019-08-23 02:56:34', '2019-08-24 16:09:34'),
(126, 147, 'Bosco Ice Blend', 4500000, 6, 2, 2, 86, 0.14, 1.00, 0.25, 0.00, 0.85, 0.56, '2019-08-23 03:00:19', '2019-08-24 16:09:34'),
(127, 148, 'Chagocha Indonesia', 4500000, 5, 1, 2, 100, 0.14, 1.00, 0.00, 0.00, 0.82, 0.51, '2019-08-23 03:04:41', '2019-08-24 16:09:34'),
(128, 149, 'Chai Thai Tea', 9500000, 75, 1, 2, 100, 0.42, 0.93, 0.00, 0.00, 0.82, 0.52, '2019-08-23 03:05:52', '2019-08-24 16:09:34'),
(129, 150, 'Chaphoria Thai Tea', 3800000, 7, 1, 2, 77, 0.10, 1.00, 0.00, 0.00, 0.87, 0.52, '2019-08-23 03:07:03', '2019-08-24 16:09:34'),
(131, 152, 'MATCHO CHOCOLATE DRINK', 7000000, 175, 2, 2, 80, 0.28, 0.83, 0.25, 0.00, 0.86, 0.53, '2019-08-23 09:29:13', '2019-08-24 16:09:34'),
(139, 160, 'MEET UP Ice Blend', 6299999, 15, 1, 2, 100, 0.24, 0.99, 0.00, 0.00, 0.82, 0.52, '2019-08-23 09:35:30', '2019-08-24 16:09:34'),
(140, 161, 'Mobo Thai Tea', 12000000, 6, 2, 2, 120, 0.56, 1.00, 0.25, 0.00, 0.77, 0.57, '2019-08-23 09:40:03', '2019-08-24 16:09:34'),
(141, 162, 'mocha mocha thai tea', 7900000, 18, 1, 2, 140, 0.33, 0.99, 0.00, 0.00, 0.73, 0.50, '2019-08-23 09:41:08', '2019-08-24 16:09:34'),
(142, 163, 'Moo-Moo Korean Milk', 3700000, 104, 2, 2, 175, 0.09, 0.90, 0.25, 0.00, 0.65, 0.47, '2019-08-23 09:42:06', '2019-08-24 16:09:34'),
(143, 164, 'Pisang Nana', 3000000, 18, 3, 2, 54, 0.06, 0.99, 0.50, 0.00, 0.92, 0.60, '2019-08-23 09:42:59', '2019-08-24 16:09:34'),
(144, 165, 'Piscok Lumeerr', 6500000, 50, 2, 2, 100, 0.25, 0.95, 0.25, 0.00, 0.82, 0.55, '2019-08-23 09:44:16', '2019-08-24 16:09:34'),
(145, 166, 'Piti Cha', 5700000, 5, 3, 2, 150, 0.21, 1.00, 0.50, 0.00, 0.71, 0.56, '2019-08-23 09:45:13', '2019-08-24 16:09:34'),
(146, 167, 'Pota Potatoes', 5000000, 253, 3, 2, 91, 0.17, 0.75, 0.50, 0.00, 0.84, 0.53, '2019-08-23 09:46:32', '2019-08-24 16:09:34'),
(147, 168, 'Rujak Es KrimKu', 7000000, 30, 4, 2, 53, 0.28, 0.97, 0.75, 0.00, 0.92, 0.66, '2019-08-23 09:47:38', '2019-08-24 16:09:34'),
(148, 169, 'SOKLAT BANGET', 7000000, 53, 2, 2, 169, 0.28, 0.95, 0.25, 0.00, 0.66, 0.50, '2019-08-23 09:48:35', '2019-08-24 16:09:34'),
(149, 170, 'TOPER CREPES', 7000000, 700, 3, 2, 102, 0.28, 0.30, 0.50, 0.00, 0.81, 0.42, '2019-08-23 09:50:03', '2019-08-24 16:09:35'),
(150, 171, 'TSOKOLATE DOLOE', 3000000, 7, 1, 2, 128, 0.06, 1.00, 0.00, 0.00, 0.75, 0.48, '2019-08-23 09:50:53', '2019-08-24 16:09:35'),
(151, 172, 'Waralaba 10', 6000000, 67, 2, 2, 120, 0.22, 0.94, 0.25, 0.00, 0.77, 0.53, '2019-08-24 16:02:41', '2019-08-24 16:09:35');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', '$2y$10$WEvHm9JmEiZwJUl80vxCuuupF67I/euDYZS0No68SqmJ6HFUheK7W', '3fx2oI8r8uo3JSu2NYAmcVUxEsPY55ETnPBRZN1cRM4edpxIZLMvkzCrkaK0', '2019-05-09 03:14:48', '2019-05-09 03:14:48'),
(6, '12312', 'asd@hha.com', '$2y$10$Y3ltAjx/4av5F0e595GWy.eA8tgQwS53D9Nssw2CsIeqTL8qZrzvC', NULL, '2019-05-09 04:35:29', '2019-05-09 04:35:29'),
(7, 'asd', 'asd@asd.asd', '$2y$10$/bjf6AlMh9nNmL/wEHg1H.UqSXLoADZd7vRGzN4VUgMHMqzaLGKLy', NULL, '2019-05-12 04:20:26', '2019-05-12 04:20:26'),
(8, 'jjjj', 'jjjj@jjjj.com', '$2y$10$tURbuNo7VPsv6KMw.GXVdeWDANzYhPBL0qGAfZGMNUPmkuVf9Rsb6', NULL, '2019-06-19 06:55:52', '2019-06-19 06:55:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attribut`
--
ALTER TABLE `attribut`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bobot`
--
ALTER TABLE `bobot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `datawaralaba`
--
ALTER TABLE `datawaralaba`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `kuisioner`
--
ALTER TABLE `kuisioner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nilaiutility`
--
ALTER TABLE `nilaiutility`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attribut`
--
ALTER TABLE `attribut`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bobot`
--
ALTER TABLE `bobot`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `datawaralaba`
--
ALTER TABLE `datawaralaba`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `kuisioner`
--
ALTER TABLE `kuisioner`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `nilaiutility`
--
ALTER TABLE `nilaiutility`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
