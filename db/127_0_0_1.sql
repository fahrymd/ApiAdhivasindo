-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Feb 2024 pada 04.30
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `adhivasindo`
--
CREATE DATABASE IF NOT EXISTS `adhivasindo` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `adhivasindo`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'admin', 'admin@gmail.com', NULL, '$2y$10$Lh9.CaUGoIOmHkQrus.YxuY7Jj.LZTh9zSDhgBFhW2U6G5HWFacIK', NULL, '2024-02-20 00:43:44', '2024-02-20 00:43:44'),
(7, 'member', 'member@gmail.com', NULL, '$2y$10$1kZnneOTEkyiRXT6F6t3H.cEHnbjziRh8kr3qj774uJ3zyd5ZENeS', NULL, '2024-02-20 19:07:13', '2024-02-20 19:32:36'),
(13, 'budi', 'budi@gmail.com', NULL, '$2y$10$8cPymcOuZca9rFF5gmf99.gPBBSfrZn3pn2f7uXSn2VJAxE9LLUm2', NULL, '2024-02-20 20:27:41', '2024-02-20 20:27:41');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- Database: `bosa`
--
CREATE DATABASE IF NOT EXISTS `bosa` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bosa`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `aksi`
--

CREATE TABLE `aksi` (
  `id_aksi` int(11) NOT NULL,
  `nipd` varchar(30) NOT NULL,
  `tgl_isi` datetime NOT NULL,
  `id_kuesioner` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `aksi`
--

INSERT INTO `aksi` (`id_aksi`, `nipd`, `tgl_isi`, `id_kuesioner`) VALUES
(65, '222', '2019-10-31 16:57:58', 26),
(66, '333', '2019-10-31 16:58:15', 26),
(67, '666', '2019-10-31 16:58:38', 26),
(68, '222', '2019-11-06 06:15:21', 27);

-- --------------------------------------------------------

--
-- Struktur dari tabel `aksi_guru`
--

CREATE TABLE `aksi_guru` (
  `id_aksi_guru` int(11) NOT NULL,
  `nipd` varchar(128) NOT NULL,
  `tgl_isi` datetime NOT NULL,
  `id_survei_guru` int(11) NOT NULL,
  `id_guru` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `aksi_guru`
--

INSERT INTO `aksi_guru` (`id_aksi_guru`, `nipd`, `tgl_isi`, `id_survei_guru`, `id_guru`) VALUES
(56, '222', '2019-10-31 16:53:35', 22, 51),
(57, '777', '2019-11-06 04:17:01', 22, 51),
(58, '777', '2019-11-06 04:17:52', 22, 54),
(59, '222', '2019-11-07 09:43:46', 22, 50),
(60, '333', '2019-11-07 09:45:04', 22, 50),
(62, '333', '2019-11-10 16:21:18', 22, 51),
(63, '222', '2019-11-10 16:48:36', 24, 51),
(64, '333', '2019-11-10 16:49:02', 24, 50),
(65, '555', '2019-11-10 16:49:52', 22, 51),
(66, '555', '2019-11-10 16:50:05', 24, 51),
(67, '444', '2019-11-10 18:07:20', 22, 50);

-- --------------------------------------------------------

--
-- Struktur dari tabel `aksi_guru_tmp`
--

CREATE TABLE `aksi_guru_tmp` (
  `id_aksi_guru_tmp` int(11) NOT NULL,
  `id_aksi_guru` int(11) NOT NULL,
  `soal_no` int(11) NOT NULL,
  `id_opsi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `aksi_guru_tmp`
--

INSERT INTO `aksi_guru_tmp` (`id_aksi_guru_tmp`, `id_aksi_guru`, `soal_no`, `id_opsi`) VALUES
(221, 56, 1, 4),
(222, 56, 2, 3),
(223, 56, 3, 2),
(224, 56, 4, 1),
(225, 57, 1, 4),
(226, 57, 2, 3),
(227, 57, 3, 2),
(228, 57, 4, 4),
(229, 58, 1, 4),
(230, 58, 2, 4),
(231, 58, 3, 4),
(232, 58, 4, 4),
(233, 59, 1, 4),
(234, 59, 2, 4),
(235, 59, 3, 3),
(236, 59, 4, 3),
(237, 60, 1, 4),
(238, 60, 2, 3),
(239, 60, 3, 2),
(240, 60, 4, 2),
(245, 62, 1, 4),
(246, 62, 2, 4),
(247, 62, 3, 4),
(248, 62, 4, 4),
(249, 63, 1, 4),
(250, 63, 2, 3),
(251, 63, 3, 2),
(252, 63, 4, 3),
(253, 64, 1, 4),
(254, 64, 2, 4),
(255, 64, 3, 3),
(256, 64, 4, 2),
(257, 65, 1, 4),
(258, 65, 2, 4),
(259, 65, 3, 3),
(260, 65, 4, 1),
(261, 66, 1, 4),
(262, 66, 2, 4),
(263, 66, 3, 3),
(264, 66, 4, 2),
(265, 67, 1, 4),
(266, 67, 2, 4),
(267, 67, 3, 4),
(268, 67, 4, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `aksi_tmp`
--

CREATE TABLE `aksi_tmp` (
  `id_aksi_tmp` int(11) NOT NULL,
  `id_aksi` int(11) NOT NULL,
  `soal_no` int(11) NOT NULL,
  `id_opsi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `aksi_tmp`
--

INSERT INTO `aksi_tmp` (`id_aksi_tmp`, `id_aksi`, `soal_no`, `id_opsi`) VALUES
(151, 65, 1, 4),
(152, 65, 2, 4),
(153, 65, 3, 3),
(154, 65, 4, 2),
(155, 65, 5, 1),
(156, 66, 1, 4),
(157, 66, 2, 4),
(158, 66, 3, 4),
(159, 66, 4, 3),
(160, 66, 5, 2),
(161, 67, 1, 4),
(162, 67, 2, 3),
(163, 67, 3, 4),
(164, 67, 4, 3),
(165, 67, 5, 2),
(166, 68, 1, 4),
(167, 68, 2, 3),
(168, 68, 3, 2),
(169, 68, 4, 2),
(170, 68, 5, 2),
(171, 68, 6, 3),
(172, 68, 7, 3),
(173, 68, 8, 4),
(174, 68, 9, 3),
(175, 68, 10, 3),
(176, 68, 11, 3),
(177, 68, 12, 4),
(178, 68, 13, 2),
(179, 68, 14, 1),
(180, 68, 15, 1),
(181, 68, 16, 1),
(182, 68, 17, 2),
(183, 68, 18, 2),
(184, 68, 19, 3),
(185, 68, 20, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ampuan`
--

CREATE TABLE `ampuan` (
  `id_ampuan` int(11) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `id_kelas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `ampuan`
--

INSERT INTO `ampuan` (`id_ampuan`, `id_guru`, `id_kelas`) VALUES
(91, 51, 37),
(92, 51, 38),
(93, 51, 43),
(94, 51, 45),
(95, 51, 46),
(107, 50, 37),
(108, 50, 43),
(109, 50, 46),
(120, 54, 37),
(121, 54, 38),
(122, 54, 43),
(123, 54, 45),
(124, 49, 37),
(125, 49, 38),
(126, 49, 43),
(127, 49, 45),
(133, 56, 37),
(134, 56, 38),
(135, 56, 45),
(136, 57, 37),
(137, 57, 43),
(138, 57, 45),
(139, 58, 37),
(140, 58, 43),
(141, 58, 45);

-- --------------------------------------------------------

--
-- Struktur dari tabel `aspek_kepuasan`
--

CREATE TABLE `aspek_kepuasan` (
  `id_aspek_kepuasan` int(11) NOT NULL,
  `aspek` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `aspek_kepuasan`
--

INSERT INTO `aspek_kepuasan` (`id_aspek_kepuasan`, `aspek`) VALUES
(1, 'Proses KBM'),
(2, 'Pelayanan Karyawan Sebagai Penunjang Pendidikan'),
(3, 'Kelas & Toilet');

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE `guru` (
  `id_guru` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `guru`
--

INSERT INTO `guru` (`id_guru`, `nama`) VALUES
(49, 'Pioneer'),
(50, 'joko anwar'),
(51, 'Rani'),
(54, 'Handoko '),
(56, 'joko'),
(57, 'hendi'),
(58, 'handuk');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `kategori` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `kategori`) VALUES
(29, 'Pengenalan Lingkungan Sekolah '),
(32, 'Test'),
(33, 'test 2'),
(36, 'jagongan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int(11) NOT NULL,
  `kelas` varchar(30) NOT NULL,
  `jurusan` varchar(30) NOT NULL,
  `sub` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `kelas`, `jurusan`, `sub`) VALUES
(37, 'X', 'IPA', 1),
(38, 'X', 'IPA', 2),
(43, 'X', 'IPS', 1),
(45, 'X', 'IPS', 2),
(46, 'X', 'Bahasa', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kuesioner`
--

CREATE TABLE `kuesioner` (
  `id_kuesioner` int(11) NOT NULL,
  `judul` text NOT NULL,
  `deskripsi` text NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_selesai` date NOT NULL,
  `id_kategori` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `kuesioner`
--

INSERT INTO `kuesioner` (`id_kuesioner`, `judul`, `deskripsi`, `tgl_mulai`, `tgl_selesai`, `id_kategori`) VALUES
(26, 'Test Sytem #1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '2019-10-31', '2019-11-02', 33),
(27, 'PLS', 'PLS', '2019-11-06', '2019-11-08', 29);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kuesioner_tmp`
--

CREATE TABLE `kuesioner_tmp` (
  `id_kuesioner_tmp` int(11) NOT NULL,
  `id_kuesioner` int(11) NOT NULL,
  `id_kelas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `kuesioner_tmp`
--

INSERT INTO `kuesioner_tmp` (`id_kuesioner_tmp`, `id_kuesioner`, `id_kelas`) VALUES
(90, 26, 37),
(91, 26, 38),
(92, 26, 43),
(93, 26, 45),
(94, 26, 46),
(95, 27, 37),
(96, 27, 38),
(97, 27, 43),
(98, 27, 45),
(99, 27, 46);

-- --------------------------------------------------------

--
-- Struktur dari tabel `masukan_guru`
--

CREATE TABLE `masukan_guru` (
  `id_masukan_guru` int(11) NOT NULL,
  `nipd` varchar(30) NOT NULL,
  `id_survei_guru` int(11) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `tgl_komen` date NOT NULL,
  `komentar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `masukan_guru`
--

INSERT INTO `masukan_guru` (`id_masukan_guru`, `nipd`, `id_survei_guru`, `id_guru`, `tgl_komen`, `komentar`) VALUES
(1, '333', 22, 50, '2019-11-07', 'tes'),
(3, '333', 22, 51, '2019-11-10', 'woho'),
(4, '222', 24, 51, '2019-11-10', 'bagus'),
(5, '333', 24, 50, '2019-11-10', 'keren'),
(6, '555', 22, 51, '2019-11-10', 'mantab'),
(7, '555', 24, 51, '2019-11-10', 'super'),
(8, '444', 22, 50, '2019-11-10', 'good');

-- --------------------------------------------------------

--
-- Struktur dari tabel `masukan_kegiatan`
--

CREATE TABLE `masukan_kegiatan` (
  `id_masukan_kegiatan` int(11) NOT NULL,
  `nipd` varchar(30) NOT NULL,
  `id_kuesioner` int(11) NOT NULL,
  `tgl_komen` date NOT NULL,
  `komentar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `opsi`
--

CREATE TABLE `opsi` (
  `id_opsi` int(11) NOT NULL,
  `opsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `opsi`
--

INSERT INTO `opsi` (`id_opsi`, `opsi`) VALUES
(1, 'Sangat Baik'),
(2, 'Baik'),
(3, 'Cukup'),
(4, 'Kurang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa_tmp`
--

CREATE TABLE `siswa_tmp` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nipd` int(11) NOT NULL,
  `nama_ibu` varchar(50) NOT NULL,
  `id_kelas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `soal`
--

CREATE TABLE `soal` (
  `id_soal` int(11) NOT NULL,
  `soal` text NOT NULL,
  `id_kategori` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `soal`
--

INSERT INTO `soal` (`id_soal`, `soal`, `id_kategori`) VALUES
(34, 'Pelayanan Bapak / Ibu guru pendamping gugus ', 29),
(35, 'Kegiatan upacara selama PLS', 29),
(36, 'Penyampaian Visi, Misi dan Kultur sekolah', 29),
(37, 'Penyampaian tata tertib siswa dan etika pergaulan di sekolah', 29),
(38, 'Materi Penyuluhan oleh Tim', 29),
(39, 'Pengenalan Lingkungan Sekolah oleh pendamping OSIS', 29),
(40, 'Presentasi Ekstrakurikuler', 29),
(41, 'Pendampingan oleh kakak OSIS selama PLS', 29),
(42, 'Susunan acara dan alokasi waktu kegiatan PLS', 29),
(43, 'Lokasi kegiatan outbond', 29),
(44, 'Penginapan dan sarana MCK di lokasi Outbond', 29),
(45, 'Makan dan minum yang disajikan dalam kegiatan outbond', 29),
(46, 'Dengan kegiatan outbond dapat membangun kebersamaan, keakraban dan berbaur dengan masyarakat', 29),
(47, 'Keakraban dan kekompakan yang dapat dibangun dalam kegiatan PLS', 29),
(48, 'Perlakuan Kakak OSIS kepada peserta PLS', 29),
(49, 'Kemampuan menghargai teman yang dapat dibangun melalui kegiatan outbond', 29),
(50, 'Pelayanan Bapak / Ibu guru pendamping gugus selama kegiatan outbond', 29),
(51, 'Keamanan Selama Kegiatan Outbond', 29),
(52, 'Alat transportasi selama kegiatan outbond', 29),
(53, 'Games / Permainan yang dilakukan selama kegiatan outbond', 29),
(60, 'aaaa', 33),
(62, 'aaa2', 33),
(63, 'aaa3', 33),
(64, 'aaaa4', 33),
(71, 'Test 1', 32),
(72, 'Test 2', 32),
(73, 'Test 3', 32),
(75, 'a', 36),
(76, 'b', 36),
(77, 'c', 36),
(78, 'd', 36);

-- --------------------------------------------------------

--
-- Struktur dari tabel `soal_guru`
--

CREATE TABLE `soal_guru` (
  `id_soal_aspek` int(11) NOT NULL,
  `pertanyaan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `soal_guru`
--

INSERT INTO `soal_guru` (`id_soal_aspek`, `pertanyaan`) VALUES
(15, 'Penguasaan Kelas'),
(16, 'Penyampaian Materi'),
(17, 'Komunikasi dengan siswa'),
(18, 'Keterbukaan dalam penilaian ( Pelayanan konseling bagi guru BK )');

-- --------------------------------------------------------

--
-- Struktur dari tabel `soal_kepuasan`
--

CREATE TABLE `soal_kepuasan` (
  `id_soal_kepuasan` int(11) NOT NULL,
  `id_aspek_kepuasan` int(11) NOT NULL,
  `pertanyaan` text NOT NULL,
  `opsi_1` varchar(50) NOT NULL,
  `opsi_2` varchar(50) NOT NULL,
  `opsi_3` varchar(50) NOT NULL,
  `opsi_4` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `soal_kepuasan`
--

INSERT INTO `soal_kepuasan` (`id_soal_kepuasan`, `id_aspek_kepuasan`, `pertanyaan`, `opsi_1`, `opsi_2`, `opsi_3`, `opsi_4`) VALUES
(2, 1, 'Saya bisa menyebutkan visi dan misi SMA Bopkri 1 dengan benar dan lancar', 'Tidak Setuju', 'Netral', 'Setuju', 'Sangat Setuju'),
(3, 1, 'Berapa banyak guru yang memberikan rancangan pembelajaran ( silabus ) dan penilaian di setiap awal semester ?', '1 - 3 guru', '4 - 7 guru', '8 - 10 guru', 'lebih dari 10 guru'),
(4, 2, 'Bapak dan Ibu Karyawan ramah dan kooperatif dalam membantu siswa berkaitan dengan administrasi kesiswaaan', 'Tidak Setuju', 'Netral', 'Setuju', 'Sangat Setuju'),
(5, 2, 'Pelayanan pembayaran SPP sangat cepat dan memuaskan', 'Tidak Setuju', 'Netral', 'Setuju', 'Sangat Setuju'),
(6, 2, 'Pelayanan surat-menyurat yang berkaitan dengan administrasi siswa cepat dan memuaskan', 'Tidak Setuju', 'Netral', 'Setuju', 'Sangat Setuju'),
(7, 3, 'Pencahayaan di Kelas memadai', 'Tidak Setuju', 'Netral', 'Setuju', 'Sangat Setuju'),
(8, 3, 'Sirkulasi udara ruang kelas sudah cukup baik', 'Tidak Setuju', 'Netral', 'Setuju', 'Sangat Setuju'),
(9, 3, 'Saklar, stop kontak, LCD Proyektor dan kabel LCD di Kelas dalam keadaan baik dan aman', 'Tidak Setuju', 'Netral', 'Setuju', 'Sangat Setuju');

-- --------------------------------------------------------

--
-- Struktur dari tabel `survei_guru`
--

CREATE TABLE `survei_guru` (
  `id_survei_guru` int(11) NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_selesai` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `survei_guru`
--

INSERT INTO `survei_guru` (`id_survei_guru`, `tgl_mulai`, `tgl_selesai`) VALUES
(22, '2019-10-31', '2019-11-02'),
(24, '2019-11-12', '2019-11-14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `survei_guru_tmp`
--

CREATE TABLE `survei_guru_tmp` (
  `id_survei_guru_tmp` int(11) NOT NULL,
  `id_survei_guru` int(11) NOT NULL,
  `id_guru` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `survei_guru_tmp`
--

INSERT INTO `survei_guru_tmp` (`id_survei_guru_tmp`, `id_survei_guru`, `id_guru`) VALUES
(62, 22, 49),
(63, 22, 50),
(64, 22, 51),
(65, 22, 54),
(66, 22, 56),
(68, 24, 49),
(69, 24, 50),
(70, 24, 51),
(71, 24, 54),
(72, 24, 56),
(73, 24, 57),
(74, 24, 58);

-- --------------------------------------------------------

--
-- Struktur dari tabel `survei_kepuasan`
--

CREATE TABLE `survei_kepuasan` (
  `id_survei_kepuasan` int(11) NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_selesai` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `survei_kepuasan`
--

INSERT INTO `survei_kepuasan` (`id_survei_kepuasan`, `tgl_mulai`, `tgl_selesai`) VALUES
(2, '2019-10-23', '2019-10-24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `survei_kepuasan_tmp`
--

CREATE TABLE `survei_kepuasan_tmp` (
  `id_survei_kepuasan_tmp` int(11) NOT NULL,
  `id_survei_kepuasan` int(11) NOT NULL,
  `id_kelas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `survei_kepuasan_tmp`
--

INSERT INTO `survei_kepuasan_tmp` (`id_survei_kepuasan_tmp`, `id_survei_kepuasan`, `id_kelas`) VALUES
(1, 2, 37),
(2, 2, 38),
(3, 2, 43);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_siswa`
--

CREATE TABLE `user_siswa` (
  `id` int(11) NOT NULL,
  `nama` text NOT NULL,
  `nipd` varchar(30) NOT NULL,
  `nama_ibu` varchar(50) NOT NULL,
  `id_kelas` int(10) NOT NULL,
  `password` varchar(200) NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `user_siswa`
--

INSERT INTO `user_siswa` (`id`, `nama`, `nipd`, `nama_ibu`, `id_kelas`, `password`, `role`) VALUES
(20, 'System Default', '1', 'default', 0, '1b1f3c1005c23645b582d2ff993f0d14', 1),
(30, 'Windy', '222', 'Anna', 46, '827ccb0eea8a706c4c34a16891f84e7b', 2),
(31, 'Daniel Setiawan', '666', 'mother', 38, 'c3ec0f7b054e729c5a716c8125839829', 2),
(32, 'Test System', '333', 'test', 46, 'c3ec0f7b054e729c5a716c8125839829', 2),
(33, 'Suryo Widodo', '444', 'coba', 43, 'c3ec0f7b054e729c5a716c8125839829', 2),
(35, 'Vian', '555', 'Wahyuni', 45, 'c3ec0f7b054e729c5a716c8125839829', 2),
(36, 'Hartono', '4321', 'Diana', 46, 'c3ec0f7b054e729c5a716c8125839829', 2),
(40, 'hartono', '9999', 'diana', 46, 'c3ec0f7b054e729c5a716c8125839829', 2);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `v_ampuan`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `v_ampuan` (
`id_guru` int(11)
,`nama` varchar(50)
,`ampuan` mediumtext
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `v_a_guru`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `v_a_guru` (
`id_survei_guru` int(11)
,`id_guru` int(11)
,`responden` bigint(21)
,`sangat_baik` decimal(22,0)
,`baik` decimal(22,0)
,`cukup` decimal(22,0)
,`buruk` decimal(22,0)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `v_a_kegiatan`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `v_a_kegiatan` (
`id_kuesioner` int(11)
,`judul` text
,`deskripsi` text
,`tgl_mulai` date
,`tgl_selesai` date
,`responden` bigint(21)
,`sangat_baik` decimal(22,0)
,`baik` decimal(22,0)
,`cukup` decimal(22,0)
,`buruk` decimal(22,0)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `v_siswa_tmp`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `v_siswa_tmp` (
`id` int(11)
,`nama` varchar(50)
,`nipd` int(11)
,`nama_ibu` varchar(50)
,`id_kelas` int(11)
,`kelas` varchar(73)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `v_soal_kegiatan`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `v_soal_kegiatan` (
`id_kuesioner` int(11)
,`id_soal` int(11)
,`soal` text
,`id_kelas` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `v_s_guru`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `v_s_guru` (
`id_survei_guru` int(11)
,`tgl_mulai` date
,`tgl_selesai` date
,`id_guru` int(11)
,`nama` varchar(50)
,`id_kelas` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `v_s_kegiatan`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `v_s_kegiatan` (
`id_kelas` int(11)
,`id_kuesioner` int(11)
,`judul` text
,`deskripsi` text
,`tgl_mulai` date
,`tgl_selesai` date
,`id_kategori` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `v_s_kepuasan`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `v_s_kepuasan` (
`id_soal_kepuasan` int(11)
,`pertanyaan` text
,`opsi_1` varchar(50)
,`opsi_2` varchar(50)
,`opsi_3` varchar(50)
,`opsi_4` varchar(50)
,`id_aspek_kepuasan` int(11)
,`aspek` text
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `v_user_siswa`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `v_user_siswa` (
`id` int(11)
,`nama` text
,`nipd` varchar(30)
,`nama_ibu` varchar(50)
,`id_kelas` int(10)
,`password` varchar(200)
,`role` int(11)
,`kelas` varchar(73)
);

-- --------------------------------------------------------

--
-- Struktur untuk view `v_ampuan`
--
DROP TABLE IF EXISTS `v_ampuan`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_ampuan`  AS SELECT `guru`.`id_guru` AS `id_guru`, `guru`.`nama` AS `nama`, group_concat(' ',`kelas`.`kelas`,' ',`kelas`.`jurusan`,' ',`kelas`.`sub` separator ',') AS `ampuan` FROM ((`guru` join `ampuan`) join `kelas`) WHERE `guru`.`id_guru` = `ampuan`.`id_guru` AND `ampuan`.`id_kelas` = `kelas`.`id_kelas` GROUP BY `ampuan`.`id_guru``id_guru`  ;

-- --------------------------------------------------------

--
-- Struktur untuk view `v_a_guru`
--
DROP TABLE IF EXISTS `v_a_guru`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_a_guru`  AS SELECT `aksi_guru`.`id_survei_guru` AS `id_survei_guru`, `aksi_guru`.`id_guru` AS `id_guru`, count(distinct `aksi_guru`.`nipd`) AS `responden`, sum(case when `aksi_guru_tmp`.`id_opsi` = '4' then 1 else 0 end) AS `sangat_baik`, sum(case when `aksi_guru_tmp`.`id_opsi` = '3' then 1 else 0 end) AS `baik`, sum(case when `aksi_guru_tmp`.`id_opsi` = '2' then 1 else 0 end) AS `cukup`, sum(case when `aksi_guru_tmp`.`id_opsi` = '1' then 1 else 0 end) AS `buruk` FROM (`aksi_guru` left join `aksi_guru_tmp` on(`aksi_guru`.`id_aksi_guru` = `aksi_guru_tmp`.`id_aksi_guru`)) GROUP BY `aksi_guru`.`id_survei_guru`, `aksi_guru`.`id_guru``id_guru`  ;

-- --------------------------------------------------------

--
-- Struktur untuk view `v_a_kegiatan`
--
DROP TABLE IF EXISTS `v_a_kegiatan`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_a_kegiatan`  AS SELECT `aksi`.`id_kuesioner` AS `id_kuesioner`, `kuesioner`.`judul` AS `judul`, `kuesioner`.`deskripsi` AS `deskripsi`, `kuesioner`.`tgl_mulai` AS `tgl_mulai`, `kuesioner`.`tgl_selesai` AS `tgl_selesai`, count(distinct `aksi`.`nipd`) AS `responden`, sum(case when `aksi_tmp`.`id_opsi` = '4' then 1 else 0 end) AS `sangat_baik`, sum(case when `aksi_tmp`.`id_opsi` = '3' then 1 else 0 end) AS `baik`, sum(case when `aksi_tmp`.`id_opsi` = '2' then 1 else 0 end) AS `cukup`, sum(case when `aksi_tmp`.`id_opsi` = '1' then 1 else 0 end) AS `buruk` FROM ((`aksi` left join `aksi_tmp` on(`aksi`.`id_aksi` = `aksi_tmp`.`id_aksi`)) left join `kuesioner` on(`aksi`.`id_kuesioner` = `kuesioner`.`id_kuesioner`)) GROUP BY `aksi`.`id_kuesioner``id_kuesioner`  ;

-- --------------------------------------------------------

--
-- Struktur untuk view `v_siswa_tmp`
--
DROP TABLE IF EXISTS `v_siswa_tmp`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_siswa_tmp`  AS SELECT `siswa_tmp`.`id` AS `id`, `siswa_tmp`.`nama` AS `nama`, `siswa_tmp`.`nipd` AS `nipd`, `siswa_tmp`.`nama_ibu` AS `nama_ibu`, `siswa_tmp`.`id_kelas` AS `id_kelas`, concat(`kelas`.`kelas`,' ',`kelas`.`jurusan`,' ',`kelas`.`sub`) AS `kelas` FROM (`siswa_tmp` join `kelas`) WHERE `siswa_tmp`.`id_kelas` = `kelas`.`id_kelas``id_kelas`  ;

-- --------------------------------------------------------

--
-- Struktur untuk view `v_soal_kegiatan`
--
DROP TABLE IF EXISTS `v_soal_kegiatan`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_soal_kegiatan`  AS SELECT `kuesioner`.`id_kuesioner` AS `id_kuesioner`, `soal`.`id_soal` AS `id_soal`, `soal`.`soal` AS `soal`, `kuesioner_tmp`.`id_kelas` AS `id_kelas` FROM ((`kuesioner` join `soal`) join `kuesioner_tmp`) WHERE `kuesioner`.`id_kategori` = `soal`.`id_kategori` AND `kuesioner_tmp`.`id_kuesioner` = `kuesioner`.`id_kuesioner``id_kuesioner`  ;

-- --------------------------------------------------------

--
-- Struktur untuk view `v_s_guru`
--
DROP TABLE IF EXISTS `v_s_guru`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_s_guru`  AS SELECT `survei_guru`.`id_survei_guru` AS `id_survei_guru`, `survei_guru`.`tgl_mulai` AS `tgl_mulai`, `survei_guru`.`tgl_selesai` AS `tgl_selesai`, `guru`.`id_guru` AS `id_guru`, `guru`.`nama` AS `nama`, `ampuan`.`id_kelas` AS `id_kelas` FROM (((`survei_guru` join `survei_guru_tmp`) join `ampuan`) join `guru`) WHERE `survei_guru`.`id_survei_guru` = `survei_guru_tmp`.`id_survei_guru` AND `survei_guru_tmp`.`id_guru` = `guru`.`id_guru` AND `ampuan`.`id_guru` = `guru`.`id_guru``id_guru`  ;

-- --------------------------------------------------------

--
-- Struktur untuk view `v_s_kegiatan`
--
DROP TABLE IF EXISTS `v_s_kegiatan`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_s_kegiatan`  AS SELECT `t`.`id_kelas` AS `id_kelas`, `k`.`id_kuesioner` AS `id_kuesioner`, `k`.`judul` AS `judul`, `k`.`deskripsi` AS `deskripsi`, `k`.`tgl_mulai` AS `tgl_mulai`, `k`.`tgl_selesai` AS `tgl_selesai`, `k`.`id_kategori` AS `id_kategori` FROM (`kuesioner` `k` join `kuesioner_tmp` `t`) WHERE `t`.`id_kuesioner` = `k`.`id_kuesioner``id_kuesioner`  ;

-- --------------------------------------------------------

--
-- Struktur untuk view `v_s_kepuasan`
--
DROP TABLE IF EXISTS `v_s_kepuasan`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_s_kepuasan`  AS SELECT `soal_kepuasan`.`id_soal_kepuasan` AS `id_soal_kepuasan`, `soal_kepuasan`.`pertanyaan` AS `pertanyaan`, `soal_kepuasan`.`opsi_1` AS `opsi_1`, `soal_kepuasan`.`opsi_2` AS `opsi_2`, `soal_kepuasan`.`opsi_3` AS `opsi_3`, `soal_kepuasan`.`opsi_4` AS `opsi_4`, `aspek_kepuasan`.`id_aspek_kepuasan` AS `id_aspek_kepuasan`, `aspek_kepuasan`.`aspek` AS `aspek` FROM (`soal_kepuasan` join `aspek_kepuasan`) WHERE `aspek_kepuasan`.`id_aspek_kepuasan` = `soal_kepuasan`.`id_aspek_kepuasan``id_aspek_kepuasan`  ;

-- --------------------------------------------------------

--
-- Struktur untuk view `v_user_siswa`
--
DROP TABLE IF EXISTS `v_user_siswa`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_user_siswa`  AS SELECT `user_siswa`.`id` AS `id`, `user_siswa`.`nama` AS `nama`, `user_siswa`.`nipd` AS `nipd`, `user_siswa`.`nama_ibu` AS `nama_ibu`, `user_siswa`.`id_kelas` AS `id_kelas`, `user_siswa`.`password` AS `password`, `user_siswa`.`role` AS `role`, concat(`kelas`.`kelas`,' ',`kelas`.`jurusan`,' ',`kelas`.`sub`) AS `kelas` FROM (`user_siswa` join `kelas`) WHERE `user_siswa`.`id_kelas` = `kelas`.`id_kelas``id_kelas`  ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `aksi`
--
ALTER TABLE `aksi`
  ADD PRIMARY KEY (`id_aksi`);

--
-- Indeks untuk tabel `aksi_guru`
--
ALTER TABLE `aksi_guru`
  ADD PRIMARY KEY (`id_aksi_guru`);

--
-- Indeks untuk tabel `aksi_guru_tmp`
--
ALTER TABLE `aksi_guru_tmp`
  ADD PRIMARY KEY (`id_aksi_guru_tmp`),
  ADD KEY `delete` (`id_aksi_guru`);

--
-- Indeks untuk tabel `aksi_tmp`
--
ALTER TABLE `aksi_tmp`
  ADD PRIMARY KEY (`id_aksi_tmp`),
  ADD KEY `del` (`id_aksi`);

--
-- Indeks untuk tabel `ampuan`
--
ALTER TABLE `ampuan`
  ADD PRIMARY KEY (`id_ampuan`);

--
-- Indeks untuk tabel `aspek_kepuasan`
--
ALTER TABLE `aspek_kepuasan`
  ADD PRIMARY KEY (`id_aspek_kepuasan`);

--
-- Indeks untuk tabel `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id_guru`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indeks untuk tabel `kuesioner`
--
ALTER TABLE `kuesioner`
  ADD PRIMARY KEY (`id_kuesioner`);

--
-- Indeks untuk tabel `kuesioner_tmp`
--
ALTER TABLE `kuesioner_tmp`
  ADD PRIMARY KEY (`id_kuesioner_tmp`);

--
-- Indeks untuk tabel `masukan_guru`
--
ALTER TABLE `masukan_guru`
  ADD PRIMARY KEY (`id_masukan_guru`);

--
-- Indeks untuk tabel `masukan_kegiatan`
--
ALTER TABLE `masukan_kegiatan`
  ADD PRIMARY KEY (`id_masukan_kegiatan`);

--
-- Indeks untuk tabel `opsi`
--
ALTER TABLE `opsi`
  ADD PRIMARY KEY (`id_opsi`);

--
-- Indeks untuk tabel `siswa_tmp`
--
ALTER TABLE `siswa_tmp`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `soal`
--
ALTER TABLE `soal`
  ADD PRIMARY KEY (`id_soal`);

--
-- Indeks untuk tabel `soal_guru`
--
ALTER TABLE `soal_guru`
  ADD PRIMARY KEY (`id_soal_aspek`);

--
-- Indeks untuk tabel `soal_kepuasan`
--
ALTER TABLE `soal_kepuasan`
  ADD PRIMARY KEY (`id_soal_kepuasan`);

--
-- Indeks untuk tabel `survei_guru`
--
ALTER TABLE `survei_guru`
  ADD PRIMARY KEY (`id_survei_guru`);

--
-- Indeks untuk tabel `survei_guru_tmp`
--
ALTER TABLE `survei_guru_tmp`
  ADD PRIMARY KEY (`id_survei_guru_tmp`);

--
-- Indeks untuk tabel `survei_kepuasan`
--
ALTER TABLE `survei_kepuasan`
  ADD PRIMARY KEY (`id_survei_kepuasan`);

--
-- Indeks untuk tabel `survei_kepuasan_tmp`
--
ALTER TABLE `survei_kepuasan_tmp`
  ADD PRIMARY KEY (`id_survei_kepuasan_tmp`);

--
-- Indeks untuk tabel `user_siswa`
--
ALTER TABLE `user_siswa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `aksi`
--
ALTER TABLE `aksi`
  MODIFY `id_aksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT untuk tabel `aksi_guru`
--
ALTER TABLE `aksi_guru`
  MODIFY `id_aksi_guru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT untuk tabel `aksi_guru_tmp`
--
ALTER TABLE `aksi_guru_tmp`
  MODIFY `id_aksi_guru_tmp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=269;

--
-- AUTO_INCREMENT untuk tabel `aksi_tmp`
--
ALTER TABLE `aksi_tmp`
  MODIFY `id_aksi_tmp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;

--
-- AUTO_INCREMENT untuk tabel `ampuan`
--
ALTER TABLE `ampuan`
  MODIFY `id_ampuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT untuk tabel `aspek_kepuasan`
--
ALTER TABLE `aspek_kepuasan`
  MODIFY `id_aspek_kepuasan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `guru`
--
ALTER TABLE `guru`
  MODIFY `id_guru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT untuk tabel `kuesioner`
--
ALTER TABLE `kuesioner`
  MODIFY `id_kuesioner` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `kuesioner_tmp`
--
ALTER TABLE `kuesioner_tmp`
  MODIFY `id_kuesioner_tmp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT untuk tabel `masukan_guru`
--
ALTER TABLE `masukan_guru`
  MODIFY `id_masukan_guru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `masukan_kegiatan`
--
ALTER TABLE `masukan_kegiatan`
  MODIFY `id_masukan_kegiatan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `siswa_tmp`
--
ALTER TABLE `siswa_tmp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT untuk tabel `soal`
--
ALTER TABLE `soal`
  MODIFY `id_soal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT untuk tabel `soal_guru`
--
ALTER TABLE `soal_guru`
  MODIFY `id_soal_aspek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `soal_kepuasan`
--
ALTER TABLE `soal_kepuasan`
  MODIFY `id_soal_kepuasan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `survei_guru`
--
ALTER TABLE `survei_guru`
  MODIFY `id_survei_guru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `survei_guru_tmp`
--
ALTER TABLE `survei_guru_tmp`
  MODIFY `id_survei_guru_tmp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT untuk tabel `survei_kepuasan`
--
ALTER TABLE `survei_kepuasan`
  MODIFY `id_survei_kepuasan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `survei_kepuasan_tmp`
--
ALTER TABLE `survei_kepuasan_tmp`
  MODIFY `id_survei_kepuasan_tmp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `user_siswa`
--
ALTER TABLE `user_siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `aksi_guru_tmp`
--
ALTER TABLE `aksi_guru_tmp`
  ADD CONSTRAINT `delete` FOREIGN KEY (`id_aksi_guru`) REFERENCES `aksi_guru` (`id_aksi_guru`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `aksi_tmp`
--
ALTER TABLE `aksi_tmp`
  ADD CONSTRAINT `del` FOREIGN KEY (`id_aksi`) REFERENCES `aksi` (`id_aksi`) ON DELETE CASCADE;
--
-- Database: `gammu`
--
CREATE DATABASE IF NOT EXISTS `gammu` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `gammu`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `level_id` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`email`, `password`, `created`, `level_id`) VALUES
('aci@gmail.com', '3be0ff98032936bc7f9df51c5685ee5f2dd6ccee', '2016-08-03 05:43:36', 3),
('ade@gmail.com', '3be0ff98032936bc7f9df51c5685ee5f2dd6ccee', '2016-08-04 03:33:27', 2),
('admin@gmail.com', '3be0ff98032936bc7f9df51c5685ee5f2dd6ccee', '2016-08-02 16:27:26', 1),
('agus@gmail.com', '3be0ff98032936bc7f9df51c5685ee5f2dd6ccee', '2016-08-04 03:33:27', 2),
('al@gmail.com', '3be0ff98032936bc7f9df51c5685ee5f2dd6ccee', '2016-08-05 01:49:14', 3),
('alex@gmail.com', '3be0ff98032936bc7f9df51c5685ee5f2dd6ccee', '2016-08-04 03:33:27', 2),
('ardi@gmail.com', '3be0ff98032936bc7f9df51c5685ee5f2dd6ccee', '2016-08-03 05:43:36', 3),
('arya@gmail.com', '3be0ff98032936bc7f9df51c5685ee5f2dd6ccee', '2016-08-03 05:43:35', 3),
('ayu@yahoo.com', '3be0ff98032936bc7f9df51c5685ee5f2dd6ccee', '2016-08-03 05:43:36', 3),
('detty@gmail.com', '3be0ff98032936bc7f9df51c5685ee5f2dd6ccee', '2016-08-04 03:37:01', 2),
('eka@gmail.com', '3be0ff98032936bc7f9df51c5685ee5f2dd6ccee', '2016-08-04 03:33:27', 2),
('erik@gmail.com', '3be0ff98032936bc7f9df51c5685ee5f2dd6ccee', '2016-08-04 03:33:27', 2),
('gina@yahoo.com', '3be0ff98032936bc7f9df51c5685ee5f2dd6ccee', '2016-08-03 05:43:35', 3),
('ira@gmail.com', '3be0ff98032936bc7f9df51c5685ee5f2dd6ccee', '2016-08-03 05:43:35', 3),
('joko@gmail.com', '3be0ff98032936bc7f9df51c5685ee5f2dd6ccee', '2016-08-04 03:33:27', 2),
('kelvin@gmail.com', '3be0ff98032936bc7f9df51c5685ee5f2dd6ccee', '2016-08-03 05:43:36', 3),
('lambok@gmail.com', '3be0ff98032936bc7f9df51c5685ee5f2dd6ccee', '2016-08-03 05:43:35', 3),
('lesmana@gmail.com', '3be0ff98032936bc7f9df51c5685ee5f2dd6ccee', '2016-08-04 03:33:27', 2),
('nining@gmail.com', '3be0ff98032936bc7f9df51c5685ee5f2dd6ccee', '2016-08-04 03:33:27', 2),
('pudja@gmail.com', '3be0ff98032936bc7f9df51c5685ee5f2dd6ccee', '2016-08-03 05:43:35', 3),
('rohmat@gmail.com', '3be0ff98032936bc7f9df51c5685ee5f2dd6ccee', '2016-08-03 05:43:36', 3),
('ruhiyat@gmail.com', '3be0ff98032936bc7f9df51c5685ee5f2dd6ccee', '2016-08-04 03:33:27', 2),
('swisma@gmail.com', '3be0ff98032936bc7f9df51c5685ee5f2dd6ccee', '2016-08-03 05:43:35', 3),
('try@gmail.com', '3be0ff98032936bc7f9df51c5685ee5f2dd6ccee', '2016-08-03 05:43:36', 3),
('wildan@gmail.com', '3be0ff98032936bc7f9df51c5685ee5f2dd6ccee', '2016-08-03 05:43:35', 3),
('wildanegi011@gmail.com', '3be0ff98032936bc7f9df51c5685ee5f2dd6ccee', '2016-08-05 01:18:15', 3),
('wildanegi@gmail.com', '3be0ff98032936bc7f9df51c5685ee5f2dd6ccee', '2016-08-03 05:43:35', 3),
('yuli@gmail.com', '3be0ff98032936bc7f9df51c5685ee5f2dd6ccee', '2016-08-03 05:43:35', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ahp`
--

CREATE TABLE `ahp` (
  `id` int(11) NOT NULL,
  `kriteria1` varchar(10) NOT NULL,
  `kriteria2` varchar(10) NOT NULL,
  `skala` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `ahp`
--

INSERT INTO `ahp` (`id`, `kriteria1`, `kriteria2`, `skala`) VALUES
(1, 'U01', 'U01', 1),
(2, 'U01', 'U02', 3),
(3, 'U01', 'U03', 5),
(4, 'U01', 'U04', 5),
(5, 'U01', 'U05', 5),
(6, 'U01', 'U06', 2),
(7, 'U01', 'U07', 0.2),
(8, 'U01', 'U08', 7),
(9, 'U01', 'U09', 0.2),
(10, 'U01', 'U10', 2),
(11, 'U01', 'U11', 0),
(12, 'U01', 'U12', 0),
(13, 'U01', 'U13', 0),
(14, 'U01', 'U14', 0),
(15, 'U02', 'U02', 1),
(16, 'U02', 'U03', 0),
(17, 'U02', 'U04', 0),
(18, 'U02', 'U05', 0),
(19, 'U02', 'U06', 0),
(20, 'U02', 'U07', 0),
(21, 'U02', 'U08', 0),
(22, 'U02', 'U09', 0),
(23, 'U02', 'U10', 0),
(24, 'U02', 'U11', 0),
(25, 'U02', 'U12', 0),
(26, 'U02', 'U13', 0),
(27, 'U02', 'U14', 0),
(28, 'U03', 'U03', 1),
(29, 'U03', 'U04', 0),
(30, 'U03', 'U05', 0),
(31, 'U03', 'U06', 0),
(32, 'U03', 'U07', 0),
(33, 'U03', 'U08', 0),
(34, 'U03', 'U09', 0),
(35, 'U03', 'U10', 0),
(36, 'U03', 'U11', 0),
(37, 'U03', 'U12', 0),
(38, 'U03', 'U13', 0),
(39, 'U03', 'U14', 0),
(40, 'U04', 'U04', 0),
(41, 'U04', 'U05', 0),
(42, 'U04', 'U06', 0),
(43, 'U04', 'U07', 0),
(44, 'U04', 'U08', 0),
(45, 'U04', 'U09', 0),
(46, 'U04', 'U10', 0),
(47, 'U04', 'U11', 0),
(48, 'U04', 'U12', 0),
(49, 'U04', 'U13', 0),
(50, 'U04', 'U14', 0),
(51, 'U05', 'U05', 1),
(52, 'U05', 'U06', 0),
(53, 'U05', 'U07', 0),
(54, 'U05', 'U08', 0),
(55, 'U05', 'U09', 0),
(56, 'U05', 'U10', 0),
(57, 'U05', 'U11', 0),
(58, 'U05', 'U12', 0),
(59, 'U05', 'U13', 0),
(60, 'U05', 'U14', 0),
(61, 'U06', 'U06', 1),
(62, 'U06', 'U07', 0),
(63, 'U06', 'U08', 0),
(64, 'U06', 'U09', 0),
(65, 'U06', 'U10', 0),
(66, 'U06', 'U11', 0),
(67, 'U06', 'U12', 0),
(68, 'U06', 'U13', 0),
(69, 'U06', 'U14', 0),
(70, 'U07', 'U07', 1),
(71, 'U07', 'U08', 0),
(72, 'U07', 'U09', 0),
(73, 'U07', 'U10', 0),
(74, 'U07', 'U11', 0),
(75, 'U07', 'U12', 0),
(76, 'U07', 'U13', 0),
(77, 'U07', 'U14', 0),
(78, 'U08', 'U08', 1),
(79, 'U08', 'U09', 0),
(80, 'U08', 'U10', 0),
(81, 'U08', 'U11', 0),
(82, 'U08', 'U12', 0),
(83, 'U08', 'U13', 0),
(84, 'U08', 'U14', 0),
(85, 'U09', 'U09', 1),
(86, 'U09', 'U10', 0),
(87, 'U09', 'U11', 0),
(88, 'U09', 'U12', 0),
(89, 'U09', 'U13', 0),
(90, 'U09', 'U14', 0),
(91, 'U10', 'U10', 1),
(92, 'U10', 'U11', 0),
(93, 'U10', 'U12', 0),
(94, 'U10', 'U13', 0),
(95, 'U10', 'U14', 0),
(96, 'U11', 'U11', 1),
(97, 'U11', 'U12', 0),
(98, 'U11', 'U13', 0),
(99, 'U11', 'U14', 0),
(100, 'U12', 'U12', 1),
(101, 'U12', 'U13', 0),
(102, 'U12', 'U14', 0),
(103, 'U13', 'U13', 1),
(104, 'U13', 'U14', 0),
(105, 'U14', 'U14', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `daemons`
--

CREATE TABLE `daemons` (
  `Start` text NOT NULL,
  `Info` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_survey`
--

CREATE TABLE `detail_survey` (
  `id` int(11) NOT NULL,
  `id_survey` int(11) NOT NULL,
  `nomor_soal` int(11) NOT NULL,
  `jawaban` varchar(100) NOT NULL,
  `type` varchar(1) NOT NULL,
  `skor` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `detail_survey`
--

INSERT INTO `detail_survey` (`id`, `id_survey`, `nomor_soal`, `jawaban`, `type`, `skor`) VALUES
(1, 27, 1, 'Tidak mudah', 'A', 1),
(2, 5, 2, 'Tidak sesuai', 'A', 1),
(3, 5, 3, 'Sangat Jelas', 'D', 4),
(4, 5, 4, 'Disiplin', 'C', 3),
(5, 8, 5, 'Sangat bertanggung jawab', 'D', 4),
(6, 5, 6, 'Kurang cepat', 'B', 2),
(7, 5, 7, 'Kurang adil', 'B', 2),
(8, 5, 8, 'Sangat sopan dan ramah', 'D', 4),
(9, 5, 9, 'Wajar', 'C', 3),
(10, 5, 10, 'Selalu Tidak sesuai', 'A', 1),
(11, 5, 11, 'Kadang-kadang Tidak tepat', 'B', 2),
(12, 5, 12, 'Nyaman', 'C', 3),
(13, 5, 13, 'Aman', 'C', 3),
(14, 5, 14, 'Mampu', 'C', 3),
(15, 27, 1, 'Tidak mudah', 'A', 1),
(16, 6, 2, 'Tidak sesuai', 'A', 1),
(17, 6, 3, 'Tidak jelas', 'A', 1),
(18, 6, 4, 'Kurang disiplin', 'B', 2),
(19, 8, 5, 'Sangat bertanggung jawab', 'D', 4),
(20, 6, 6, 'Kurang cepat', 'B', 2),
(21, 6, 7, 'Adil', 'C', 3),
(22, 6, 8, 'Sopan dan ramah', 'C', 3),
(23, 6, 9, 'Wajar', 'C', 3),
(24, 6, 10, 'Selalu sesuai', 'D', 4),
(25, 6, 11, 'Selalu tepat', 'D', 4),
(26, 6, 12, 'Sangat nyaman', 'D', 4),
(27, 6, 13, 'Kurang aman', 'B', 2),
(28, 6, 14, 'Mampu', 'C', 3),
(29, 27, 1, 'Tidak mudah', 'A', 1),
(30, 7, 2, 'Tidak sesuai', 'A', 1),
(31, 7, 3, 'Tidak jelas', 'A', 1),
(32, 7, 4, 'Tidak disiplin', 'A', 1),
(33, 8, 5, 'Sangat bertanggung jawab', 'D', 4),
(34, 7, 6, 'Sangat cepat', 'D', 4),
(35, 7, 7, 'Sangat adil', 'D', 4),
(36, 7, 8, 'Sangat sopan dan ramah', 'D', 4),
(37, 7, 9, 'Sangat wajar', 'D', 4),
(38, 7, 10, 'Selalu sesuai', 'D', 4),
(39, 7, 11, 'Selalu tepat', 'D', 4),
(40, 7, 12, 'Sangat nyaman', 'D', 4),
(41, 7, 13, 'Sangat aman', 'D', 4),
(42, 7, 14, 'Sangat Mampu', 'D', 4),
(43, 27, 1, 'Tidak mudah', 'A', 1),
(44, 8, 2, 'Sangat sesuai', 'D', 4),
(45, 8, 3, 'Sangat Jelas', 'D', 4),
(46, 8, 4, 'Sangat disiplin', 'D', 4),
(47, 8, 5, 'Sangat bertanggung jawab', 'D', 4),
(48, 8, 6, 'Sangat cepat', 'D', 4),
(49, 8, 7, 'Sangat adil', 'D', 4),
(50, 8, 8, 'Sangat sopan dan ramah', 'D', 4),
(51, 8, 9, 'Sangat wajar', 'D', 4),
(52, 8, 10, 'Selalu sesuai', 'D', 4),
(53, 8, 11, 'Selalu tepat', 'D', 4),
(54, 8, 12, 'Sangat nyaman', 'D', 4),
(55, 8, 13, 'Sangat aman', 'D', 4),
(56, 8, 14, 'Sangat Mampu', 'D', 4),
(57, 27, 1, 'Tidak mudah', 'A', 1),
(58, 9, 2, 'Kurang sesuai', 'B', 2),
(59, 9, 3, 'Kurang jelas', 'B', 2),
(60, 9, 4, 'Disiplin', 'C', 3),
(61, 9, 5, 'bertanggung jawab', 'C', 3),
(62, 9, 6, 'Tidak cepat', 'A', 1),
(63, 9, 7, 'Tidak adil', 'A', 1),
(64, 9, 8, 'Sopan dan ramah', 'C', 3),
(65, 9, 9, 'Sangat wajar', 'D', 4),
(66, 9, 10, 'Selalu sesuai', 'D', 4),
(67, 9, 11, 'Selalu tepat', 'D', 4),
(68, 9, 12, 'Sangat nyaman', 'D', 4),
(69, 9, 13, 'Sangat aman', 'D', 4),
(70, 9, 14, 'Sangat Mampu', 'D', 4),
(71, 27, 1, 'Tidak mudah', 'A', 1),
(72, 10, 2, 'Sangat sesuai', 'D', 4),
(73, 10, 3, 'Sangat Jelas', 'D', 4),
(74, 10, 4, 'Sangat disiplin', 'D', 4),
(75, 10, 5, 'Sangat bertanggung jawab', 'D', 4),
(76, 10, 6, 'Kurang cepat', 'B', 2),
(77, 10, 7, 'Tidak adil', 'A', 1),
(78, 10, 8, 'Sopan dan ramah', 'C', 3),
(79, 10, 9, 'Wajar', 'C', 3),
(80, 10, 10, 'Selalu sesuai', 'D', 4),
(81, 10, 11, 'Selalu tepat', 'D', 4),
(82, 10, 12, 'Sangat nyaman', 'D', 4),
(83, 10, 13, 'Sangat aman', 'D', 4),
(84, 10, 14, 'Sangat Mampu', 'D', 4),
(85, 27, 1, 'Tidak mudah', 'A', 1),
(86, 11, 2, 'Sangat sesuai', 'D', 4),
(87, 11, 3, 'Sangat Jelas', 'D', 4),
(88, 11, 4, 'Sangat disiplin', 'D', 4),
(89, 11, 5, 'Sangat bertanggung jawab', 'D', 4),
(90, 11, 6, 'Sangat cepat', 'D', 4),
(91, 11, 7, 'Sangat adil', 'D', 4),
(92, 11, 8, 'Sangat sopan dan ramah', 'D', 4),
(93, 11, 9, 'Sangat wajar', 'D', 4),
(94, 11, 10, 'Selalu sesuai', 'D', 4),
(95, 11, 11, 'Selalu tepat', 'D', 4),
(96, 11, 12, 'Sangat nyaman', 'D', 4),
(97, 11, 13, 'Sangat aman', 'D', 4),
(98, 11, 14, 'Sangat Mampu', 'D', 4),
(99, 27, 1, 'Tidak mudah', 'A', 1),
(100, 12, 2, 'Sesuai', 'C', 3),
(101, 12, 3, 'Jelas', 'C', 3),
(102, 12, 4, 'Disiplin', 'C', 3),
(103, 12, 5, 'bertanggung jawab', 'C', 3),
(104, 12, 6, 'Sangat cepat', 'D', 4),
(105, 12, 7, 'Sangat adil', 'D', 4),
(106, 12, 8, 'Sangat sopan dan ramah', 'D', 4),
(107, 12, 9, 'Sangat wajar', 'D', 4),
(108, 12, 10, 'Selalu sesuai', 'D', 4),
(109, 12, 11, 'Selalu tepat', 'D', 4),
(110, 12, 12, 'Tidak nyaman', 'A', 1),
(111, 12, 13, 'Sangat aman', 'D', 4),
(112, 12, 14, 'Sangat Mampu', 'D', 4),
(113, 27, 1, 'Tidak mudah', 'A', 1),
(114, 13, 2, 'Sesuai', 'C', 3),
(115, 13, 3, 'Jelas', 'C', 3),
(116, 13, 4, 'Disiplin', 'C', 3),
(117, 13, 5, 'bertanggung jawab', 'C', 3),
(118, 13, 6, 'Sangat cepat', 'D', 4),
(119, 13, 7, 'Adil', 'C', 3),
(120, 13, 8, 'Sangat sopan dan ramah', 'D', 4),
(121, 13, 9, 'Sangat wajar', 'D', 4),
(122, 13, 10, 'Selalu sesuai', 'D', 4),
(123, 13, 11, 'Selalu tepat', 'D', 4),
(124, 13, 12, 'Sangat nyaman', 'D', 4),
(125, 13, 13, 'Sangat aman', 'D', 4),
(126, 13, 14, 'Sangat Mampu', 'D', 4),
(127, 27, 1, 'Tidak mudah', 'A', 1),
(128, 14, 2, 'Sangat sesuai', 'D', 4),
(129, 14, 3, 'Sangat Jelas', 'D', 4),
(130, 14, 4, 'Tidak disiplin', 'A', 1),
(131, 14, 5, 'Tidak bertanggung jawab', 'A', 1),
(132, 14, 6, 'Tidak cepat', 'A', 1),
(133, 14, 7, 'Tidak adil', 'A', 1),
(134, 14, 8, 'Tidak sopan dan ramah', 'A', 1),
(135, 14, 9, 'Tidak wajar', 'A', 1),
(136, 14, 10, 'Selalu Tidak sesuai', 'A', 1),
(137, 14, 11, 'Banyak  tepatnya', 'C', 3),
(138, 14, 12, 'Nyaman', 'C', 3),
(139, 14, 13, 'Aman', 'C', 3),
(140, 14, 14, 'Mampu', 'C', 3),
(141, 27, 1, 'Tidak mudah', 'A', 1),
(142, 15, 2, 'Sesuai', 'C', 3),
(143, 15, 3, 'Jelas', 'C', 3),
(144, 15, 4, 'Disiplin', 'C', 3),
(145, 15, 5, 'bertanggung jawab', 'C', 3),
(146, 15, 6, 'Sangat cepat', 'D', 4),
(147, 15, 7, 'Sangat adil', 'D', 4),
(148, 15, 8, 'Sangat sopan dan ramah', 'D', 4),
(149, 15, 9, 'Sangat wajar', 'D', 4),
(150, 15, 10, 'Selalu sesuai', 'D', 4),
(151, 15, 11, 'Banyak  tepatnya', 'C', 3),
(152, 15, 12, 'Nyaman', 'C', 3),
(153, 15, 13, 'Aman', 'C', 3),
(154, 15, 14, 'Sangat Mampu', 'D', 4),
(155, 27, 1, 'Tidak mudah', 'A', 1),
(156, 16, 2, 'Sesuai', 'C', 3),
(157, 16, 3, 'Sangat Jelas', 'D', 4),
(158, 16, 4, 'Sangat disiplin', 'D', 4),
(159, 16, 5, 'bertanggung jawab', 'C', 3),
(160, 16, 6, 'Sangat cepat', 'D', 4),
(161, 16, 7, 'Sangat adil', 'D', 4),
(162, 16, 8, 'Sopan dan ramah', 'C', 3),
(163, 16, 9, 'Sangat wajar', 'D', 4),
(164, 16, 10, 'Kadang – kadang sesuai', 'B', 2),
(165, 16, 11, 'Selalu tepat', 'D', 4),
(166, 16, 12, 'Sangat nyaman', 'D', 4),
(167, 16, 13, 'Aman', 'C', 3),
(168, 16, 14, 'Mampu', 'C', 3),
(169, 27, 1, 'Tidak mudah', 'A', 1),
(170, 17, 2, 'Sangat sesuai', 'D', 4),
(171, 17, 3, 'Sangat Jelas', 'D', 4),
(172, 17, 4, 'Sangat disiplin', 'D', 4),
(173, 17, 5, 'Sangat bertanggung jawab', 'D', 4),
(174, 17, 6, 'Sangat cepat', 'D', 4),
(175, 17, 7, 'Sangat adil', 'D', 4),
(176, 17, 8, 'Sopan dan ramah', 'C', 3),
(177, 17, 9, 'Sangat wajar', 'D', 4),
(178, 17, 10, 'Selalu sesuai', 'D', 4),
(179, 17, 12, 'Sangat nyaman', 'D', 4),
(180, 17, 11, 'Selalu tepat', 'D', 4),
(181, 17, 13, 'Sangat aman', 'D', 4),
(182, 17, 14, 'Mampu', 'C', 3),
(183, 27, 1, 'Tidak mudah', 'A', 1),
(184, 18, 2, 'Kurang sesuai', 'B', 2),
(185, 18, 3, 'Jelas', 'C', 3),
(186, 18, 4, 'Kurang disiplin', 'B', 2),
(187, 18, 5, 'Kurang bertanggung jawab', 'B', 2),
(188, 18, 6, 'Cepat', 'C', 3),
(189, 18, 7, 'Adil', 'C', 3),
(190, 18, 8, 'Kurang sopan dan ramah', 'B', 2),
(191, 18, 9, 'Wajar', 'C', 3),
(192, 18, 10, 'Kadang – kadang sesuai', 'B', 2),
(193, 18, 11, 'Selalu Tidak tepat', 'A', 1),
(194, 18, 12, 'Tidak nyaman', 'A', 1),
(195, 18, 13, 'Tidak aman', 'A', 1),
(196, 18, 14, 'Tidak mampu', 'A', 1),
(197, 27, 1, 'Tidak mudah', 'A', 1),
(198, 19, 2, 'Sangat sesuai', 'D', 4),
(199, 19, 3, 'Sangat Jelas', 'D', 4),
(200, 19, 4, 'Sangat disiplin', 'D', 4),
(201, 19, 5, 'Sangat bertanggung jawab', 'D', 4),
(202, 19, 6, 'Sangat cepat', 'D', 4),
(203, 19, 7, 'Kurang adil', 'B', 2),
(204, 19, 8, 'Sopan dan ramah', 'C', 3),
(205, 19, 9, 'Sangat wajar', 'D', 4),
(206, 19, 10, 'Banyak sesuainya', 'C', 3),
(207, 19, 11, 'Selalu tepat', 'D', 4),
(208, 19, 12, 'Sangat nyaman', 'D', 4),
(209, 19, 13, 'Sangat aman', 'D', 4),
(210, 19, 14, 'Sangat Mampu', 'D', 4),
(211, 27, 1, 'Tidak mudah', 'A', 1),
(212, 20, 2, 'Kurang sesuai', 'B', 2),
(213, 20, 3, 'Kurang jelas', 'B', 2),
(214, 20, 4, 'Disiplin', 'C', 3),
(215, 20, 5, 'bertanggung jawab', 'C', 3),
(216, 20, 6, 'Kurang cepat', 'B', 2),
(217, 20, 7, 'Adil', 'C', 3),
(218, 20, 8, 'Kurang sopan dan ramah', 'B', 2),
(219, 20, 9, 'Wajar', 'C', 3),
(220, 20, 10, 'Kadang – kadang sesuai', 'B', 2),
(221, 20, 11, 'Selalu tepat', 'D', 4),
(222, 20, 12, 'Sangat nyaman', 'D', 4),
(223, 20, 13, 'Sangat aman', 'D', 4),
(224, 20, 14, 'Sangat Mampu', 'D', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `gammu`
--

CREATE TABLE `gammu` (
  `Version` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `gammu`
--

INSERT INTO `gammu` (`Version`) VALUES
(13);

-- --------------------------------------------------------

--
-- Struktur dari tabel `inbox`
--

CREATE TABLE `inbox` (
  `UpdatedInDB` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ReceivingDateTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Text` text NOT NULL,
  `SenderNumber` varchar(20) NOT NULL DEFAULT '',
  `Coding` enum('Default_No_Compression','Unicode_No_Compression','8bit','Default_Compression','Unicode_Compression') NOT NULL DEFAULT 'Default_No_Compression',
  `UDH` text NOT NULL,
  `SMSCNumber` varchar(20) NOT NULL DEFAULT '',
  `Class` int(11) NOT NULL DEFAULT -1,
  `TextDecoded` text NOT NULL,
  `ID` int(10) UNSIGNED NOT NULL,
  `RecipientID` text NOT NULL,
  `Processed` enum('false','true') NOT NULL DEFAULT 'false',
  `newComing` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `inbox`
--

INSERT INTO `inbox` (`UpdatedInDB`, `ReceivingDateTime`, `Text`, `SenderNumber`, `Coding`, `UDH`, `SMSCNumber`, `Class`, `TextDecoded`, `ID`, `RecipientID`, `Processed`, `newComing`) VALUES
('2016-04-17 13:13:05', '2016-04-17 12:13:11', '007400650073', '+628987069270', 'Default_No_Compression', '', '+628964011092', -1, 'tes', 1, '', 'false', 0),
('2016-04-17 13:14:06', '2016-04-17 12:13:53', '00740065007300740069006E006700200062006F0073', '+628987069270', 'Default_No_Compression', '', '+628964011092', -1, 'testing bos', 2, '', 'false', 0),
('2016-04-17 15:05:17', '2016-04-17 14:03:47', '006B0074006B006D0067006A006D0074006B0061', '+628987069270', 'Default_No_Compression', '', '+628964011092', -1, 'ktkmgjmtka', 3, '', 'false', 0),
('2016-04-17 15:05:17', '2016-04-17 14:04:54', '0074006500730074', '+628987069270', 'Default_No_Compression', '', '+628964011092', -1, 'test', 4, '', 'false', 0),
('2016-04-17 16:52:40', '2016-04-17 15:52:54', '0061006A0061006D', '+628987069270', 'Default_No_Compression', '', '+628964011092', -1, 'ajam', 5, '', 'false', 0),
('2016-04-18 13:16:04', '2016-04-18 12:16:11', '006C006D006A0067', '+628987069270', 'Default_No_Compression', '', '+628964011092', -1, 'lmjg', 7, '', 'false', 0),
('2016-04-18 13:16:50', '2016-04-18 12:17:02', '006900640066006700770065006900670077006F0065006700680077006F006500680067006F00770065006800670065007500720069006700680072007500650069006700720075006900680067007200650069007500680067007200650075006800670065007200680067006500750072006700680075006900650072006800650072006800720065006800650072007500680065007200670068006500670068006500720075006700680065007200670068007200650068007600650072006900760068006500720069006700760065007200670076006500790072006700620065007900720067006200650067006200650072006800620065007200680076006500760068007200650067007600650072007900670072006500790067006500720068007600720065006900760067000A000A0069006E0066006F003A', '+628987069270', 'Default_No_Compression', '', '+628964011092', -1, 'idfgweigwoeghwoehgowehgeurighrueigruihgreiuhgreuhgerhgeurghuierherhreheruherghegherugherghrehverivherigvergveyrgbeyrgbegberhberhvevhregverygreygerhvreivg\n\ninfo:', 8, '', 'false', 0);

--
-- Trigger `inbox`
--
DELIMITER $$
CREATE TRIGGER `inbox_timestamp` BEFORE INSERT ON `inbox` FOR EACH ROW BEGIN
    IF NEW.ReceivingDateTime = '0000-00-00 00:00:00' THEN
        SET NEW.ReceivingDateTime = CURRENT_TIMESTAMP();
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal`
--

CREATE TABLE `jadwal` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `start_time` time NOT NULL,
  `doe_time` time NOT NULL,
  `durasi` varchar(10) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `jadwal`
--

INSERT INTO `jadwal` (`id`, `tanggal`, `start_time`, `doe_time`, `durasi`, `status`) VALUES
(4, '2021-03-12', '10:00:30', '12:00:30', '2', 1),
(5, '2016-08-05', '21:43:00', '22:40:00', '1', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kuesioner`
--

CREATE TABLE `kuesioner` (
  `id` int(11) NOT NULL,
  `pertanyaan` varchar(225) NOT NULL,
  `A` varchar(225) NOT NULL,
  `B` varchar(225) NOT NULL,
  `C` varchar(225) NOT NULL,
  `D` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `kuesioner`
--

INSERT INTO `kuesioner` (`id`, `pertanyaan`, `A`, `B`, `C`, `D`) VALUES
(1, 'Bagaimana pemahaman Saudara tentang kemudahan prosedur pelayanan di unit ini ?', 'Tidak mudah', 'Kurang mudah', 'Mudah', 'Sangat mudah'),
(2, 'Bagaimana pendapat Saudara tentang kesamaan persyaratan pelayanan dengan jenis pelayanannya?', 'Tidak sesuai', 'Kurang sesuai', 'Sesuai', 'Sangat sesuai'),
(3, 'Bagaimana pendapat Saudara tentang kejelasan dan kepastian petugas yang melayani', 'Tidak jelas', 'Kurang jelas', 'Jelas', 'Sangat Jelas'),
(4, 'Bagaimana pendapat Saudara tentang kedisiplinan petugas dalam memberikan pelayanan', 'Tidak disiplin', 'Kurang disiplin', 'Disiplin', 'Sangat disiplin'),
(5, 'Bagaimana pendapat Saudara\ntentang tanggung jawab petugas\ndalam memberikan pelayanan', 'Tidak bertanggung jawab', 'Kurang bertanggung jawab', 'bertanggung jawab', 'Sangat bertanggung jawab'),
(6, 'Bagaimana pendapat Saudara\ntentang kecepatan pelayanan di unit\nini', 'Tidak cepat', 'Kurang cepat', 'Cepat', 'Sangat cepat'),
(7, 'Bagaimana pendapat Saudara tentang\nkeadilan untuk mendapatkan pelayanan\ndisini', 'Tidak adil', 'Kurang adil', 'Adil', 'Sangat adil'),
(8, 'Bagaimana pendapat Saudara tentang\nkesopanan dan keramahan petugas\ndalam memberikan pelayanan', 'Tidak sopan dan ramah', 'Kurang sopan dan ramah', 'Sopan dan ramah', 'Sangat sopan dan ramah'),
(9, 'Bagaimana pendapat Saudara tentang\nkewajaran biaya untuk mendapatkan\npelayanan', 'Tidak wajar', 'Kurang wajar', 'Wajar', 'Sangat wajar'),
(10, 'Bagaimana pendapat Saudara tentang\nkesesuaian antara biaya yang\ndibayarkan dengan biaya yang telah\nditetapkan', 'Selalu Tidak sesuai', 'Kadang – kadang sesuai', 'Banyak sesuainya', 'Selalu sesuai'),
(11, 'Bagaimana pendapat Saudara tentang\nketepatan pelaksanaan terhadap jadwal\nwaktu pelayanan', 'Selalu Tidak tepat', 'Kadang-kadang Tidak tepat', 'Banyak  tepatnya', 'Selalu tepat'),
(12, 'Bagaimana pendapat Saudara tentang\nkenyamanan di lingkungan unit\npelayanan', 'Tidak nyaman', 'Kurang nyaman', 'Nyaman', 'Sangat nyaman'),
(13, 'Bagaimana pendapat Saudara tentang\nkeamanan pelayanan di unit ini', 'Tidak aman', 'Kurang aman', 'Aman', 'Sangat aman'),
(14, 'Bagaimana pendapat Saudara\ntentang kemampuan petugas dalam\nmemberikan pelayanan', 'Tidak mampu', 'Kurang mampu', 'Mampu', 'Sangat Mampu'),
(19, 'iuy', 'ytu', 'yt', 'tuy', 'tut');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_persepsi`
--

CREATE TABLE `nilai_persepsi` (
  `id` int(11) NOT NULL,
  `type` varchar(1) NOT NULL,
  `nilai` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `nilai_persepsi`
--

INSERT INTO `nilai_persepsi` (`id`, `type`, `nilai`) VALUES
(1, 'A', 4),
(2, 'B', 3),
(3, 'C', 2),
(4, 'D', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `outbox`
--

CREATE TABLE `outbox` (
  `UpdatedInDB` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `InsertIntoDB` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `SendingDateTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `SendBefore` time NOT NULL DEFAULT '23:59:59',
  `SendAfter` time NOT NULL DEFAULT '00:00:00',
  `Text` text DEFAULT NULL,
  `DestinationNumber` varchar(20) NOT NULL DEFAULT '',
  `Coding` enum('Default_No_Compression','Unicode_No_Compression','8bit','Default_Compression','Unicode_Compression') NOT NULL DEFAULT 'Default_No_Compression',
  `UDH` text DEFAULT NULL,
  `Class` int(11) DEFAULT -1,
  `TextDecoded` text NOT NULL,
  `ID` int(10) UNSIGNED NOT NULL,
  `MultiPart` enum('false','true') DEFAULT 'false',
  `RelativeValidity` int(11) DEFAULT -1,
  `SenderID` varchar(255) DEFAULT NULL,
  `SendingTimeOut` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `DeliveryReport` enum('default','yes','no') DEFAULT 'default',
  `CreatorID` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `outbox`
--

INSERT INTO `outbox` (`UpdatedInDB`, `InsertIntoDB`, `SendingDateTime`, `SendBefore`, `SendAfter`, `Text`, `DestinationNumber`, `Coding`, `UDH`, `Class`, `TextDecoded`, `ID`, `MultiPart`, `RelativeValidity`, `SenderID`, `SendingTimeOut`, `DeliveryReport`, `CreatorID`) VALUES
('2016-08-04 12:24:18', '2016-08-04 12:24:18', '2016-08-04 12:24:18', '23:59:59', '00:00:00', NULL, '098797987987', 'Default_No_Compression', NULL, -1, 'reeyr', 377, 'false', -1, NULL, '2016-08-04 12:24:18', 'default', ''),
('2016-08-04 12:24:38', '2016-08-04 12:24:38', '2016-08-04 12:24:38', '23:59:59', '00:00:00', NULL, '08987069270', 'Default_No_Compression', NULL, -1, 'dfsgws', 378, 'false', -1, NULL, '2016-08-04 12:24:38', 'default', ''),
('2016-08-04 12:32:53', '2016-08-04 12:32:53', '2016-08-04 12:32:53', '23:59:59', '00:00:00', NULL, '087877260241', 'Default_No_Compression', NULL, -1, 'rgre', 379, 'false', -1, NULL, '2016-08-04 12:32:53', 'default', ''),
('2016-08-04 12:32:53', '2016-08-04 12:32:53', '2016-08-04 12:32:53', '23:59:59', '00:00:00', NULL, '089611024206', 'Default_No_Compression', NULL, -1, 'rgre', 380, 'false', -1, NULL, '2016-08-04 12:32:53', 'default', ''),
('2016-08-04 12:32:53', '2016-08-04 12:32:53', '2016-08-04 12:32:53', '23:59:59', '00:00:00', NULL, '085379494675', 'Default_No_Compression', NULL, -1, 'rgre', 381, 'false', -1, NULL, '2016-08-04 12:32:53', 'default', ''),
('2016-08-04 12:32:53', '2016-08-04 12:32:53', '2016-08-04 12:32:53', '23:59:59', '00:00:00', NULL, '087877260243', 'Default_No_Compression', NULL, -1, 'rgre', 382, 'false', -1, NULL, '2016-08-04 12:32:53', 'default', ''),
('2016-08-04 12:32:53', '2016-08-04 12:32:53', '2016-08-04 12:32:53', '23:59:59', '00:00:00', NULL, '098797987987', 'Default_No_Compression', NULL, -1, 'rgre', 383, 'false', -1, NULL, '2016-08-04 12:32:53', 'default', ''),
('2016-08-07 13:32:18', '2016-08-07 13:32:18', '2016-08-07 13:32:18', '23:59:59', '00:00:00', NULL, '0987654', 'Default_No_Compression', NULL, -1, 'uyuyhoi', 385, 'false', -1, NULL, '2016-08-07 13:32:18', 'default', '');

--
-- Trigger `outbox`
--
DELIMITER $$
CREATE TRIGGER `outbox_timestamp` BEFORE INSERT ON `outbox` FOR EACH ROW BEGIN
    IF NEW.InsertIntoDB = '0000-00-00 00:00:00' THEN
        SET NEW.InsertIntoDB = CURRENT_TIMESTAMP();
    END IF;
    IF NEW.SendingDateTime = '0000-00-00 00:00:00' THEN
        SET NEW.SendingDateTime = CURRENT_TIMESTAMP();
    END IF;
    IF NEW.SendingTimeOut = '0000-00-00 00:00:00' THEN
        SET NEW.SendingTimeOut = CURRENT_TIMESTAMP();
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `outbox_multipart`
--

CREATE TABLE `outbox_multipart` (
  `Text` text DEFAULT NULL,
  `Coding` enum('Default_No_Compression','Unicode_No_Compression','8bit','Default_Compression','Unicode_Compression') NOT NULL DEFAULT 'Default_No_Compression',
  `UDH` text DEFAULT NULL,
  `Class` int(11) DEFAULT -1,
  `TextDecoded` text DEFAULT NULL,
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `SequencePosition` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pairwise`
--

CREATE TABLE `pairwise` (
  `id` int(11) NOT NULL,
  `skala` varchar(10) NOT NULL,
  `definisi` varchar(225) NOT NULL,
  `keterangan` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `pairwise`
--

INSERT INTO `pairwise` (`id`, `skala`, `definisi`, `keterangan`) VALUES
(1, '1', 'Kedua unsur sama penting', 'kedua unsur memiliki pengaruh yang sama'),
(2, '3', 'unsur yang satu sedikit lebih penting daripada yang lainnya', 'Penilaian sangat memihak pada salah satu elemen dibanding pasangannya'),
(3, '5', 'Unsur yang satu lebih penting daripada yang lainnya', 'Penilaian sangat memihak pada salah satu elemenunsur dibanding pasangannya'),
(4, '7', 'Unsur yang satu jelas sangat penting daripada unsur yang lainnya', 'Salah satu unsur sangat berpengaruh dan dominasinya tampak secara nyata'),
(5, '9', 'Unsur yang satu mutlak sangat penting daripada unsur yang lainnya', 'Bukti bahwa salah satu unsur sangat penting daripada pasangannya adalah sangat jelas'),
(6, '2,4,6,8', 'Nilai tengah di antara dua perbandingan yang berdekatan', 'Nilai ini diberikan jika terdapat keraguan di antara kedua peniaian yang berdekatan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pbk`
--

CREATE TABLE `pbk` (
  `ID` int(11) NOT NULL,
  `GroupID` int(11) NOT NULL DEFAULT -1,
  `Name` text NOT NULL,
  `Number` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `pbk`
--

INSERT INTO `pbk` (`ID`, `GroupID`, `Name`, `Number`) VALUES
(13, 6, 'Nur Wasiah', '087877260243'),
(8, 6, 'Aldi', '087877260241'),
(11, 6, 'Kiki', '085379494675'),
(14, 7, 'wildan', '08987069270'),
(15, 7, 'erni', '089611024206'),
(17, 1, 'saya', '098797987987');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pbk_groups`
--

CREATE TABLE `pbk_groups` (
  `Name` text NOT NULL,
  `ID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `pbk_groups`
--

INSERT INTO `pbk_groups` (`Name`, `ID`) VALUES
('Teman', 7),
('Keluarga', 6),
('Kantor', 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `phones`
--

CREATE TABLE `phones` (
  `ID` text NOT NULL,
  `UpdatedInDB` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `InsertIntoDB` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `TimeOut` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Send` enum('yes','no') NOT NULL DEFAULT 'no',
  `Receive` enum('yes','no') NOT NULL DEFAULT 'no',
  `IMEI` varchar(35) NOT NULL,
  `Client` text NOT NULL,
  `Battery` int(11) NOT NULL DEFAULT -1,
  `Signal` int(11) NOT NULL DEFAULT 1,
  `Sent` int(11) NOT NULL DEFAULT 0,
  `Received` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `phones`
--

INSERT INTO `phones` (`ID`, `UpdatedInDB`, `InsertIntoDB`, `TimeOut`, `Send`, `Receive`, `IMEI`, `Client`, `Battery`, `Signal`, `Sent`, `Received`) VALUES
('Phone1', '2014-03-14 11:05:00', '2014-03-14 06:32:40', '2014-03-14 11:05:10', 'yes', 'yes', '355630020369943', 'Gammu 1.32.0, Windows Server 2007 SP1, GCC 4.7, MinGW 3.11', 100, 63, 33, 8),
('', '2016-04-18 17:40:58', '2016-04-18 15:28:27', '2016-04-18 17:41:08', 'yes', 'yes', '353143036800473', 'Gammu 1.33.0, Windows Server 2007 SP1, GCC 4.7, MinGW 3.11', 0, 30, 0, 1);

--
-- Trigger `phones`
--
DELIMITER $$
CREATE TRIGGER `phones_timestamp` BEFORE INSERT ON `phones` FOR EACH ROW BEGIN
    IF NEW.InsertIntoDB = '0000-00-00 00:00:00' THEN
        SET NEW.InsertIntoDB = CURRENT_TIMESTAMP();
    END IF;
    IF NEW.TimeOut = '0000-00-00 00:00:00' THEN
        SET NEW.TimeOut = CURRENT_TIMESTAMP();
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `responden`
--

CREATE TABLE `responden` (
  `id` int(11) NOT NULL,
  `nama_responden` varchar(50) NOT NULL,
  `tempat_lahir` varchar(20) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `usia` varchar(10) NOT NULL,
  `alamat` text NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `pendidikan_terakhir` varchar(20) NOT NULL,
  `pekerjaan` varchar(20) NOT NULL,
  `id_subunit` int(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telepon` varchar(12) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `responden`
--

INSERT INTO `responden` (`id`, `nama_responden`, `tempat_lahir`, `tanggal_lahir`, `usia`, `alamat`, `jenis_kelamin`, `pendidikan_terakhir`, `pekerjaan`, `id_subunit`, `email`, `telepon`) VALUES
(20, 'wildan egi ardiawan', 'Bandung', '1992-04-11', '24 Tahun', 'jalan moch toha bandung', 'Laki-Laki', 'D1-D3-D4', 'PNS', 1, 'wildanegi011@gmail.com', '08987069270'),
(2, 'gina zaida yusfira', 'Bandung', '1995-04-21', '20 Tahun', 'jalan raya ciwastra', 'Perempuan', 'S1', 'PNS', 1, 'gina@yahoo.com', '0987897898'),
(3, 'arya beni sanjaya', 'Solo', '1995-05-01', '20 Tahun', 'jalan soreang', 'Laki-Laki', 'S1', 'TNI', 1, 'arya@gmail.com', '09089089889'),
(4, 'pudja ismail', 'Bandung', '1995-09-05', '21 Tahun', 'Jalan Bojong soang', 'Laki-Laki', 'D3', 'POLRI', 1, 'pudja@gmail.com', '0989089089'),
(5, 'Ira Yulianti', 'Bandung', '1995-09-05', '21 Tahun', 'Jalan Cimahi', 'Perempuan', 'S1', 'Wiraswasta', 1, 'ira@gmail.com', '00989878879'),
(6, 'Yuli Pariani', 'Solo', '1996-10-25', '19 Tahun', 'jalan cibaduyut', 'Perempuan', 'S1', 'Wiraswasta', 1, 'yuli@gmail.com', '08767676767'),
(7, 'Swisma Kurniawan', 'Bandung', '1996-10-25', '20 Tahun', 'Jalan Bojong soang', 'Laki-Laki', 'D3', 'TNI', 1, 'swisma@gmail.com', '09897877777'),
(8, 'Wildan April', 'Bandung', '1994-01-02', '22 Tahun', 'Jalan Kiaracondong', 'Laki-Laki', 'D3', 'TNI', 1, 'wildan@gmail.com', '09897989089'),
(9, 'lambok situmorang', 'Bandung', '1994-01-02', '22 Tahun', 'Jalan Soreang', 'Laki-Laki', 'D3', 'PNS', 1, 'lambok@gmail.com', '0989079877'),
(10, 'Gusti Ayu eka', 'Bandung', '1995-04-21', '20 Tahun', 'Jalan babakan Siliwangi', 'Perempuan', 'D3', 'Wiraswasta', 1, 'ayu@yahoo.com', '0987789898'),
(11, 'Rohmat Suteja Somantri', 'Bandung', '1995-04-21', '20 Tahun', 'Jalan Leuwi Panjang', 'Laki-Laki', 'S1', 'PNS', 1, 'rohmat@gmail.com', '09808988898'),
(12, 'Kelvin Alfian', 'Purwakarta', '1996-04-21', '20 Tahun', 'Jalan Sukaati', 'Laki-Laki', 'S1', 'PNS', 1, 'kelvin@gmail.com', '0989899897'),
(13, 'Try Setyo Utomo', 'Bandung', '1996-04-21', '20 Tahun', 'Jalan Cibereum', 'Laki-Laki', 'S1', 'PNS', 1, 'try@gmail.com', '09879789787'),
(14, 'Asri Nur Azmi', 'Bandung', '1996-04-21', '20 Tahun', 'Jalan cimahi', 'Perempuan', 'D3', 'Wiraswasta', 1, 'aci@gmail.com', '09898908989'),
(15, 'Ardi Kurniawan', 'Bandung', '1996-04-21', '20 Tahn', 'jalan Gede Bage', 'Laki-Laki', 'D3', 'POLRI', 1, 'ardi@gmail.com', '0987789777'),
(21, 'alopurinol', 'Bandung', '1992-04-11', '0', '\r\nuiy', 'Laki-Laki', 'SLTA', 'PNS', 1, 'al@gmail.com', '08987069270');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sentitems`
--

CREATE TABLE `sentitems` (
  `UpdatedInDB` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `InsertIntoDB` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `SendingDateTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DeliveryDateTime` timestamp NULL DEFAULT NULL,
  `Text` text NOT NULL,
  `DestinationNumber` varchar(20) NOT NULL DEFAULT '',
  `Coding` enum('Default_No_Compression','Unicode_No_Compression','8bit','Default_Compression','Unicode_Compression') NOT NULL DEFAULT 'Default_No_Compression',
  `UDH` text NOT NULL,
  `SMSCNumber` varchar(20) NOT NULL DEFAULT '',
  `Class` int(11) NOT NULL DEFAULT -1,
  `TextDecoded` text NOT NULL,
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `SenderID` varchar(255) NOT NULL,
  `SequencePosition` int(11) NOT NULL DEFAULT 1,
  `Status` enum('SendingOK','SendingOKNoReport','SendingError','DeliveryOK','DeliveryFailed','DeliveryPending','DeliveryUnknown','Error') NOT NULL DEFAULT 'SendingOK',
  `StatusError` int(11) NOT NULL DEFAULT -1,
  `TPMR` int(11) NOT NULL DEFAULT -1,
  `RelativeValidity` int(11) NOT NULL DEFAULT -1,
  `CreatorID` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `sentitems`
--

INSERT INTO `sentitems` (`UpdatedInDB`, `InsertIntoDB`, `SendingDateTime`, `DeliveryDateTime`, `Text`, `DestinationNumber`, `Coding`, `UDH`, `SMSCNumber`, `Class`, `TextDecoded`, `ID`, `SenderID`, `SequencePosition`, `Status`, `StatusError`, `TPMR`, `RelativeValidity`, `CreatorID`) VALUES
('2016-04-17 12:09:17', '2016-04-17 12:08:51', '2016-04-17 12:09:17', NULL, '006900640066006700770065006900670077006F0065006700680077006F006500680067006F00770065006800670065007500720069006700680072007500650069006700720075006900680067007200650069007500680067007200650075006800670065007200680067006500750072006700680075006900650072006800650072006800720065006800650072007500680065007200670068006500670068006500720075006700680065007200670068007200650068007600650072006900760068006500720069006700760065007200670076006500790072006700620065007900720067006200650067006200650072006800620065007200680076006500760068007200650067007600650072007900670072006500790067006500720068007600720065006900760067000A000A0069006E0066006F003A0020004200610070006500720069006E', '08987069270', 'Default_No_Compression', '', '+6289644000001', -1, 'idfgweigwoeghwoehgowehgeurighrueigruihgreiuhgreuhgerhgeurghuierherhreheruherghegherugherghrehverivherigvergveyrgbeyrgbegberhberhvevhregverygreygerhvreivg\n\ninfo: Baperin', 375, '', 1, 'SendingOKNoReport', -1, 87, 255, ''),
('2016-04-17 12:12:49', '2016-04-17 12:11:51', '2016-04-17 12:12:49', NULL, '00680062006800670062007500790067006200660068006200660075006900670062006800670066006E0068006700660062006E00660067006400660068006700620064006600680066006B00670068006500720069007900680067006500720068006200720074006800620072006800620066006A00620064006600680062006B007500730064006800620075006400730066006800620064006200680064006B006A00660062006800640066006B00620068006400660068006200640066006B00620064006B00660062006800680064006B0066006200680064006B00660062006E006A006B00640062006E006B006C00640062006A006400660062006C00640066006200640062006A0064006C006A0066006200640066006A0062006B006C00640062006A006D006C006B00640066000A000A0069006E0066006F003A0020004200610070006500720069006E', '08987069270', 'Default_No_Compression', '', '+6289644000001', -1, 'hbhgbuygbfhbfuigbhgfnhgfbnfgdfhgbdfhfkgheriyhgerhbrthbrhbfjbdfhbkusdhbudsfhbdbhdkjfbhdfkbhdfhbdfkbdkfbhhdkfbhdkfbnjkdbnkldbjdfbldfbdbjdljfbdfjbkldbjmlkdf\n\ninfo: Baperin', 376, '', 1, 'SendingError', -1, -1, 255, '');

--
-- Trigger `sentitems`
--
DELIMITER $$
CREATE TRIGGER `sentitems_timestamp` BEFORE INSERT ON `sentitems` FOR EACH ROW BEGIN
    IF NEW.InsertIntoDB = '0000-00-00 00:00:00' THEN
        SET NEW.InsertIntoDB = CURRENT_TIMESTAMP();
    END IF;
    IF NEW.SendingDateTime = '0000-00-00 00:00:00' THEN
        SET NEW.SendingDateTime = CURRENT_TIMESTAMP();
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sub_unit`
--

CREATE TABLE `sub_unit` (
  `id` int(11) NOT NULL,
  `sub_unit` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `koordinator` varchar(50) NOT NULL,
  `mesin_peralatan` varchar(10) NOT NULL,
  `potensi_ikm` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `sub_unit`
--

INSERT INTO `sub_unit` (`id`, `sub_unit`, `alamat`, `telepon`, `koordinator`, `mesin_peralatan`, `potensi_ikm`, `email`) VALUES
(1, 'Logam Bandung', 'Jl.Soekarno Hatta km 12,5 Kota Bandung', '0227812787', 'Nining', '7 unit', '210 unit usaha', 'nining@gmail.com'),
(2, 'Logam Bogor', 'Jl. Industri No.55 Ds.Tarikolot, Kec.Citereup Kab. Bogor', '0218794070', 'Lesmana', '7 unit', '250 unit usaha', 'lesmana@gmail.com'),
(3, 'Logam Sukabumi', 'Jln. Siliwangi No. 133 Cisaat Kab. Sukabumi', '0266 222396', 'Joko Witarso', '32 unit', '639 unit usaha', 'joko@gmail.com'),
(4, 'Persepatuan Cibaduyut', 'Jln. Raya Cibaduyut No. 150 Kota Bandung', '022 5406096', 'alex ibrahim', '71 unit', '850 unit usaha', 'alex@gmail.com'),
(5, 'Rotan Cirebon', 'Jln. Tegal wamgi No.1 Kab. Cirebon', '0231 324230', 'agus', '13 unit', '352 unit usaha', 'agus@gmail.com'),
(6, 'Perkayuan Sumedang', 'J\0l\0n\0.\0 \0R\0a\0y\0a\0 \0L\0e\0g\0o\0k\0 \0  \0C\0o\0n\0g\0g\0e\0a\0n\0g\0 \0K\0m\0.\0 \01\0 \0K\0a\0b\0.\0 \0S\0u\0m\0e\0d\0a\0n\0g\0', '0261 201829', 'ruhiyat', '18 unit', '90 unit usaha', 'ruhiyat@gmail.com'),
(7, 'Texstil Majalaya', 'Jln. Babakan No. 41 Majalaya Kab. Bandung', '022 5953231', 'ade yaya', '16 unit', '210 unit usaha', 'ade@gmail.com'),
(8, 'Penyamakan Kullit Garit', 'Jln. Gagak Lumayung Km. 1,5 Sukaregang Kab.Garut', '02262 2245167', 'erik wahyu', '13 unit', '178 unit usaha', 'erik@gmail.com'),
(9, 'Kerajinan Tasikmalaya', 'Jln. Perintis Kemerdekaan Km. 5 Kota Tasikmalaya', '0265 331649', 'eka', '6 unit', '960 unit usaha', 'eka@gmail.com'),
(10, 'Rumah Kemasan', 'Jln. Parabon III No.1 Kota Bandung', '02234758656', 'Detty Tatiananda, SE', '18 unit', '256 unit usaha', 'detty@gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `survey`
--

CREATE TABLE `survey` (
  `id` int(11) NOT NULL,
  `id_jadwal` int(5) NOT NULL,
  `nama_responden` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `total_nilai` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `survey`
--

INSERT INTO `survey` (`id`, `id_jadwal`, `nama_responden`, `email`, `total_nilai`) VALUES
(1, 1, 'samsul la', 'samsul@gmail.com', 0),
(2, 1, 'samsul la', 'samsul@gmail.com', 0),
(3, 1, 'samsul la', 'samsul@gmail.com', 0),
(4, 1, 'samsul la', 'samsul@gmail.com', 0),
(5, 1, 'samsul la', 'samsul@gmail.com', 0),
(6, 1, 'vanessa axe', 'vanes@yahoo.com', 0),
(7, 5, 'Asri Nur Azmi', 'aci@gmail.com', 0),
(8, 5, 'Ardi Kurniawan', 'ardi@gmail.com', 0),
(9, 5, 'arya beni sanjaya', 'arya@gmail.com', 0),
(10, 5, 'Gusti Ayu eka', 'ayu@yahoo.com', 0),
(11, 5, 'gina zaida yusfira', 'gina@yahoo.com', 0),
(12, 5, 'Ira Yulianti', 'ira@gmail.com', 0),
(13, 5, 'Kelvin Alfian', 'kelvin@gmail.com', 0),
(14, 5, 'lambok situmorang', 'lambok@gmail.com', 0),
(15, 5, 'pudja ismail', 'pudja@gmail.com', 0),
(16, 5, 'Rohmat Suteja Somantri', 'rohmat@gmail.com', 0),
(17, 5, 'Swisma Kurniawan', 'swisma@gmail.com', 0),
(18, 5, 'Try Setyo Utomo', 'try@gmail.com', 0),
(19, 5, 'wildan egi ardiawan', 'wildanegi011@gmail.com', 0),
(20, 5, 'Yuli Pariani', 'yuli@gmail.com', 0),
(21, 5, 'Gusti Ayu eka', 'ayu@yahoo.com', 0),
(22, 5, 'Gusti Ayu eka', 'ayu@yahoo.com', 0),
(23, 5, 'Gusti Ayu eka', 'ayu@yahoo.com', 0),
(24, 5, 'Gusti Ayu eka', 'ayu@yahoo.com', 0),
(25, 5, 'Gusti Ayu eka', 'ayu@yahoo.com', 0),
(26, 5, 'Gusti Ayu eka', 'ayu@yahoo.com', 0),
(27, 5, 'Gusti Ayu eka', 'ayu@yahoo.com', 0),
(28, 4, 'alopurinol', 'al@gmail.com', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `unsur`
--

CREATE TABLE `unsur` (
  `id_pertanyaan` int(11) NOT NULL,
  `id_unsur` varchar(10) NOT NULL,
  `nama_unsur` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `unsur`
--

INSERT INTO `unsur` (`id_pertanyaan`, `id_unsur`, `nama_unsur`) VALUES
(1, 'U01', 'Prosedur Pelayanan'),
(2, 'U02', 'Kesesuaian Persyaratan Dengan Pelayanan'),
(3, 'U03', 'Kejelasan Dan Kepastian Petugas Pelayanan'),
(4, 'U04', 'Kedisiplinan Petugas Pelayanan'),
(5, 'U05', 'Tanggung Jawab Petugas Pelayanan'),
(6, 'U06', 'Kemampuan Petugas Pelayanan'),
(7, 'U07', 'Kecepatan Pelayanan'),
(8, 'U08', 'Keadilan Mendapatkan Pelayanan'),
(9, 'U09', 'Kesopanan Dan Keramahan'),
(10, 'U10', 'Kewajaran Biaya Pelayanan'),
(11, 'U11', 'Kesesuaian Biaya Pelayanan'),
(12, 'U12', 'Ketepatan Jadwal Pelayanan'),
(13, 'U13', 'Kenyamanan Lingkungan'),
(14, 'U14', 'Keamanan Pelayanan');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `email_2` (`email`),
  ADD KEY `username` (`email`);

--
-- Indeks untuk tabel `ahp`
--
ALTER TABLE `ahp`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `detail_survey`
--
ALTER TABLE `detail_survey`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `inbox`
--
ALTER TABLE `inbox`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kuesioner`
--
ALTER TABLE `kuesioner`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `nilai_persepsi`
--
ALTER TABLE `nilai_persepsi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `outbox`
--
ALTER TABLE `outbox`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `outbox_date` (`SendingDateTime`,`SendingTimeOut`),
  ADD KEY `outbox_sender` (`SenderID`);

--
-- Indeks untuk tabel `outbox_multipart`
--
ALTER TABLE `outbox_multipart`
  ADD PRIMARY KEY (`ID`,`SequencePosition`);

--
-- Indeks untuk tabel `pairwise`
--
ALTER TABLE `pairwise`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pbk`
--
ALTER TABLE `pbk`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `pbk_groups`
--
ALTER TABLE `pbk_groups`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `phones`
--
ALTER TABLE `phones`
  ADD PRIMARY KEY (`IMEI`);

--
-- Indeks untuk tabel `responden`
--
ALTER TABLE `responden`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `email_2` (`email`);

--
-- Indeks untuk tabel `sentitems`
--
ALTER TABLE `sentitems`
  ADD PRIMARY KEY (`ID`,`SequencePosition`),
  ADD KEY `sentitems_date` (`DeliveryDateTime`),
  ADD KEY `sentitems_tpmr` (`TPMR`),
  ADD KEY `sentitems_dest` (`DestinationNumber`),
  ADD KEY `sentitems_sender` (`SenderID`);

--
-- Indeks untuk tabel `sub_unit`
--
ALTER TABLE `sub_unit`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `survey`
--
ALTER TABLE `survey`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `unsur`
--
ALTER TABLE `unsur`
  ADD PRIMARY KEY (`id_pertanyaan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `ahp`
--
ALTER TABLE `ahp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT untuk tabel `detail_survey`
--
ALTER TABLE `detail_survey`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;

--
-- AUTO_INCREMENT untuk tabel `inbox`
--
ALTER TABLE `inbox`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `kuesioner`
--
ALTER TABLE `kuesioner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `nilai_persepsi`
--
ALTER TABLE `nilai_persepsi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `outbox`
--
ALTER TABLE `outbox`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=386;

--
-- AUTO_INCREMENT untuk tabel `pairwise`
--
ALTER TABLE `pairwise`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `pbk`
--
ALTER TABLE `pbk`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `pbk_groups`
--
ALTER TABLE `pbk_groups`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `responden`
--
ALTER TABLE `responden`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `sub_unit`
--
ALTER TABLE `sub_unit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `survey`
--
ALTER TABLE `survey`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `unsur`
--
ALTER TABLE `unsur`
  MODIFY `id_pertanyaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- Database: `kuisoner`
--
CREATE DATABASE IF NOT EXISTS `kuisoner` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `kuisoner`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `lime_kuisoneranswers`
--

CREATE TABLE `lime_kuisoneranswers` (
  `aid` int(11) NOT NULL,
  `qid` int(11) NOT NULL,
  `code` varchar(5) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `assessment_value` int(11) NOT NULL DEFAULT 0,
  `scale_id` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `lime_kuisoneranswers`
--

INSERT INTO `lime_kuisoneranswers` (`aid`, `qid`, `code`, `sortorder`, `assessment_value`, `scale_id`) VALUES
(32, 43, 'SQ002', 2, 0, 0),
(31, 43, 'SQ003', 1, 0, 0),
(30, 43, 'SQ001', 0, 0, 0),
(29, 42, 'SQ002', 2, 0, 0),
(28, 42, 'SQ003', 1, 0, 0),
(27, 42, 'SQ001', 0, 0, 0),
(26, 41, 'SQ002', 2, 0, 0),
(25, 41, 'SQ003', 1, 0, 0),
(24, 41, 'SQ001', 0, 0, 0),
(20, 28, 'AO01', 0, 0, 0),
(33, 44, 'SQ001', 0, 0, 0),
(34, 44, 'SQ003', 1, 0, 0),
(35, 44, 'SQ002', 2, 0, 0),
(36, 45, 'SQ001', 0, 0, 0),
(37, 45, 'SQ003', 1, 0, 0),
(38, 45, 'SQ002', 2, 0, 0),
(39, 91, 'SQ001', 0, 0, 0),
(40, 91, 'SQ003', 1, 0, 0),
(41, 91, 'SQ002', 2, 0, 0),
(42, 92, 'SQ001', 0, 0, 0),
(43, 92, 'SQ003', 1, 0, 0),
(44, 92, 'SQ002', 2, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `lime_kuisoneranswer_l10ns`
--

CREATE TABLE `lime_kuisoneranswer_l10ns` (
  `id` int(11) NOT NULL,
  `aid` int(11) NOT NULL,
  `answer` mediumtext NOT NULL,
  `language` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `lime_kuisoneranswer_l10ns`
--

INSERT INTO `lime_kuisoneranswer_l10ns` (`id`, `aid`, `answer`, `language`) VALUES
(1, 1, 'cek', 'id'),
(2, 2, 'joey', 'id'),
(3, 3, 'hamster', 'id'),
(4, 4, 'ular', 'id'),
(5, 5, '', 'id'),
(6, 6, 'joey', 'id'),
(7, 7, 'hamster', 'id'),
(8, 8, 'ular', 'id'),
(20, 20, '', 'id'),
(18, 18, 'ular', 'id'),
(17, 17, 'hamster', 'id'),
(16, 16, 'joey', 'id'),
(26, 26, 'sepakbola', 'id'),
(25, 25, 'lari', 'id'),
(24, 24, 'renang', 'id'),
(27, 27, 'renang', 'id'),
(28, 28, 'lari', 'id'),
(29, 29, 'sepakbola', 'id'),
(30, 30, 'renang', 'id'),
(31, 31, 'lari', 'id'),
(32, 32, 'sepakbola', 'id'),
(33, 33, 'renang', 'id'),
(34, 34, 'lari', 'id'),
(35, 35, 'sepakbola', 'id'),
(36, 36, 'renang', 'id'),
(37, 37, 'lari', 'id'),
(38, 38, 'sepakbola', 'id'),
(39, 39, 'renang', 'id'),
(40, 40, 'lari', 'id'),
(41, 41, 'sepakbola', 'id'),
(42, 42, 'renang', 'id'),
(43, 43, 'lari', 'id'),
(44, 44, 'sepakbola', 'id');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lime_kuisonerarchived_table_settings`
--

CREATE TABLE `lime_kuisonerarchived_table_settings` (
  `id` int(11) NOT NULL,
  `survey_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `tbl_name` varchar(255) NOT NULL,
  `tbl_type` varchar(10) NOT NULL,
  `created` datetime NOT NULL,
  `properties` text NOT NULL,
  `attributes` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `lime_kuisonerassessments`
--

CREATE TABLE `lime_kuisonerassessments` (
  `id` int(11) NOT NULL,
  `sid` int(11) NOT NULL DEFAULT 0,
  `scope` varchar(5) NOT NULL,
  `gid` int(11) NOT NULL DEFAULT 0,
  `name` text NOT NULL,
  `minimum` varchar(50) NOT NULL,
  `maximum` varchar(50) NOT NULL,
  `message` mediumtext NOT NULL,
  `language` varchar(20) NOT NULL DEFAULT 'en'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `lime_kuisonerasset_version`
--

CREATE TABLE `lime_kuisonerasset_version` (
  `id` int(11) NOT NULL,
  `path` text NOT NULL,
  `version` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `lime_kuisonerboxes`
--

CREATE TABLE `lime_kuisonerboxes` (
  `id` int(11) NOT NULL,
  `position` int(11) DEFAULT NULL,
  `url` text NOT NULL,
  `title` text NOT NULL,
  `buttontext` varchar(255) DEFAULT NULL,
  `ico` varchar(255) DEFAULT NULL,
  `desc` text NOT NULL,
  `page` text NOT NULL,
  `usergroup` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `lime_kuisonerboxes`
--

INSERT INTO `lime_kuisonerboxes` (`id`, `position`, `url`, `title`, `buttontext`, `ico`, `desc`, `page`, `usergroup`) VALUES
(1, 1, 'surveyAdministration/newSurvey', 'Create survey', 'Create survey', 'ri-add-line', 'Create a new survey from scratch. Or simply copy or import an existing survey.', 'welcome', -2),
(2, 2, 'surveyAdministration/listsurveys', 'List surveys', NULL, 'ri-list-unordered', 'List available surveys', 'welcome', -1),
(3, 3, 'admin/globalsettings', 'Global settings', 'View global settings', 'ri-settings-5-line', 'Edit global settings', 'welcome', -2),
(4, 4, 'userManagement/index', 'Manage survey administrators', 'Manage administrators', 'ri-user-line', 'The user management allows you to add additional users to your survey administration.', 'welcome', -2),
(5, 5, 'admin/labels/sa/view', 'Label sets', 'Edit label sets', 'ri-price-tag-3-line', 'Label sets can be used as answer options or subquestions to speed up creation of similar questions.', 'welcome', -2),
(6, 6, 'themeOptions', 'Themes', 'Edit themes', 'ri-brush-line', 'The themes functionality allows you to edit survey-, admin- or question themes.', 'welcome', -2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `lime_kuisonerconditions`
--

CREATE TABLE `lime_kuisonerconditions` (
  `cid` int(11) NOT NULL,
  `qid` int(11) NOT NULL DEFAULT 0,
  `cqid` int(11) NOT NULL DEFAULT 0,
  `cfieldname` varchar(50) NOT NULL DEFAULT '',
  `method` varchar(5) NOT NULL DEFAULT '',
  `value` varchar(255) NOT NULL DEFAULT '',
  `scenario` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `lime_kuisonerdefaultvalues`
--

CREATE TABLE `lime_kuisonerdefaultvalues` (
  `dvid` int(11) NOT NULL,
  `qid` int(11) NOT NULL DEFAULT 0,
  `scale_id` int(11) NOT NULL DEFAULT 0,
  `sqid` int(11) NOT NULL DEFAULT 0,
  `specialtype` varchar(20) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `lime_kuisonerdefaultvalue_l10ns`
--

CREATE TABLE `lime_kuisonerdefaultvalue_l10ns` (
  `id` int(11) NOT NULL,
  `dvid` int(11) NOT NULL DEFAULT 0,
  `language` varchar(20) NOT NULL,
  `defaultvalue` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `lime_kuisonerexpression_errors`
--

CREATE TABLE `lime_kuisonerexpression_errors` (
  `id` int(11) NOT NULL,
  `errortime` varchar(50) DEFAULT NULL,
  `sid` int(11) DEFAULT NULL,
  `gid` int(11) DEFAULT NULL,
  `qid` int(11) DEFAULT NULL,
  `gseq` int(11) DEFAULT NULL,
  `qseq` int(11) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `eqn` text DEFAULT NULL,
  `prettyprint` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `lime_kuisonerfailed_emails`
--

CREATE TABLE `lime_kuisonerfailed_emails` (
  `id` int(11) NOT NULL,
  `surveyid` int(11) NOT NULL,
  `responseid` int(11) NOT NULL,
  `email_type` varchar(200) NOT NULL,
  `recipient` varchar(320) NOT NULL,
  `language` varchar(20) NOT NULL DEFAULT 'en',
  `error_message` text DEFAULT NULL,
  `created` datetime NOT NULL,
  `status` varchar(20) DEFAULT 'SEND FAILED',
  `updated` datetime DEFAULT NULL,
  `resend_vars` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `lime_kuisonerfailed_login_attempts`
--

CREATE TABLE `lime_kuisonerfailed_login_attempts` (
  `id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `last_attempt` varchar(20) NOT NULL,
  `number_attempts` int(11) NOT NULL,
  `is_frontend` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `lime_kuisonergroups`
--

CREATE TABLE `lime_kuisonergroups` (
  `gid` int(11) NOT NULL,
  `sid` int(11) NOT NULL DEFAULT 0,
  `group_order` int(11) NOT NULL DEFAULT 0,
  `randomization_group` varchar(20) NOT NULL DEFAULT '',
  `grelevance` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `lime_kuisonergroups`
--

INSERT INTO `lime_kuisonergroups` (`gid`, `sid`, `group_order`, `randomization_group`, `grelevance`) VALUES
(5, 397312, 1, '', ''),
(4, 397312, 2, '', ''),
(6, 397312, 3, '', ''),
(7, 397312, 4, '', ''),
(8, 397312, 5, '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lime_kuisonergroup_l10ns`
--

CREATE TABLE `lime_kuisonergroup_l10ns` (
  `id` int(11) NOT NULL,
  `gid` int(11) NOT NULL,
  `group_name` text NOT NULL,
  `description` mediumtext DEFAULT NULL,
  `language` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `lime_kuisonergroup_l10ns`
--

INSERT INTO `lime_kuisonergroup_l10ns` (`id`, `gid`, `group_name`, `description`, `language`) VALUES
(5, 5, 'contoh single choise', '', 'id'),
(6, 6, 'contoh Multiple choice', 'ini tester multiple choise', 'id'),
(4, 4, 'ini contoh array', 'test untuk opsi array', 'id'),
(7, 7, 'ini contoh Numerical input', '', 'id'),
(8, 8, 'ini conto mask ', '', 'id');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lime_kuisonerlabels`
--

CREATE TABLE `lime_kuisonerlabels` (
  `id` int(11) NOT NULL,
  `lid` int(11) NOT NULL DEFAULT 0,
  `code` varchar(20) NOT NULL DEFAULT '',
  `sortorder` int(11) NOT NULL,
  `assessment_value` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `lime_kuisonerlabels`
--

INSERT INTO `lime_kuisonerlabels` (`id`, `lid`, `code`, `sortorder`, `assessment_value`) VALUES
(1, 1, 'SQ001', 0, 0),
(2, 1, 'SQ003', 1, 0),
(3, 1, 'SQ002', 2, 0),
(4, 2, 'SQ001', 0, 0),
(5, 2, 'SQ003', 1, 0),
(6, 2, 'SQ002', 2, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `lime_kuisonerlabelsets`
--

CREATE TABLE `lime_kuisonerlabelsets` (
  `lid` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `label_name` varchar(100) NOT NULL DEFAULT '',
  `languages` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `lime_kuisonerlabelsets`
--

INSERT INTO `lime_kuisonerlabelsets` (`lid`, `owner_id`, `label_name`, `languages`) VALUES
(1, 1, 'cek', 'id'),
(2, 1, 'olahraga', 'id'),
(3, 1, 'provinsi', 'id');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lime_kuisonerlabel_l10ns`
--

CREATE TABLE `lime_kuisonerlabel_l10ns` (
  `id` int(11) NOT NULL,
  `label_id` int(11) NOT NULL,
  `title` text DEFAULT NULL,
  `language` varchar(20) NOT NULL DEFAULT 'en'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `lime_kuisonerlabel_l10ns`
--

INSERT INTO `lime_kuisonerlabel_l10ns` (`id`, `label_id`, `title`, `language`) VALUES
(1, 1, 'joey', 'id'),
(2, 2, 'hamster', 'id'),
(3, 3, 'ular', 'id'),
(4, 4, 'renang', 'id'),
(5, 5, 'lari', 'id'),
(6, 6, 'sepakbola', 'id');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lime_kuisonermap_tutorial_users`
--

CREATE TABLE `lime_kuisonermap_tutorial_users` (
  `tid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `taken` int(11) DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `lime_kuisonermessage`
--

CREATE TABLE `lime_kuisonermessage` (
  `id` int(11) NOT NULL,
  `language` varchar(50) NOT NULL DEFAULT '',
  `translation` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `lime_kuisonernotifications`
--

CREATE TABLE `lime_kuisonernotifications` (
  `id` int(11) NOT NULL,
  `entity` varchar(15) NOT NULL,
  `entity_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `message` mediumtext NOT NULL,
  `status` varchar(15) NOT NULL DEFAULT 'new',
  `importance` int(11) NOT NULL DEFAULT 1,
  `display_class` varchar(31) DEFAULT 'default',
  `hash` varchar(64) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `first_read` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `lime_kuisonernotifications`
--

INSERT INTO `lime_kuisonernotifications` (`id`, `entity`, `entity_id`, `title`, `message`, `status`, `importance`, `display_class`, `hash`, `created`, `first_read`) VALUES
(1, 'user', 1, 'Password warning', '<span class=\"ri-error-warning-fill\"></span>&nbsp;Warning: You are still using the default password (&#039;password&#039;). Please change your password and re-login again.', 'new', 1, 'default', '9e338c35dcb45760bc8bd6d4a9a134f991580edaf0203f158510d2e817e48331', '2023-08-31 10:21:34', '2023-08-31 05:24:03'),
(2, 'user', 1, 'SSL not enforced', '<span class=\"ri-error-warning-fill\"></span>&nbsp;Warning: Please enforce SSL encryption in Global settings/Security after SSL is properly configured for your webserver.', 'new', 1, 'default', 'e874527c8f54934f3f3f6078ca5b9399c7cca002dc8398e92fcd20628c3e51bb', '2023-08-31 10:21:35', NULL),
(3, 'user', 1, 'SSL tidak diharuskan', '<span class=\"ri-error-warning-fill\"></span>&nbsp;Warning: Please enforce SSL encryption in Global settings/Security after SSL is properly configured for your webserver.', 'read', 1, 'default', 'c0bc89601ae5b408d52ebe930bfe7159e9cba6c1f2022936efbd9edd7ba3fb5c', '2023-08-31 11:16:03', '2023-08-31 09:28:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lime_kuisonerold_survey_397312_20230831070118`
--

CREATE TABLE `lime_kuisonerold_survey_397312_20230831070118` (
  `id` int(11) NOT NULL,
  `token` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `submitdate` datetime DEFAULT NULL,
  `lastpage` int(11) DEFAULT NULL,
  `startlanguage` varchar(20) NOT NULL,
  `seed` varchar(31) DEFAULT NULL,
  `397312X2X3` text DEFAULT NULL,
  `397312X2X4SQ001` varchar(5) DEFAULT NULL,
  `397312X2X4SQ003` varchar(5) DEFAULT NULL,
  `397312X2X4SQ002` varchar(5) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `lime_kuisonerold_survey_397312_20230831070118`
--

INSERT INTO `lime_kuisonerold_survey_397312_20230831070118` (`id`, `token`, `submitdate`, `lastpage`, `startlanguage`, `seed`, `397312X2X3`, `397312X2X4SQ001`, `397312X2X4SQ003`, `397312X2X4SQ002`) VALUES
(1, NULL, '1980-01-01 00:00:00', 1, 'id', '677130888', 'cek', '5', '4', '4');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lime_kuisonerold_survey_397312_20230902070708`
--

CREATE TABLE `lime_kuisonerold_survey_397312_20230902070708` (
  `id` int(11) NOT NULL,
  `token` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `submitdate` datetime DEFAULT NULL,
  `lastpage` int(11) DEFAULT NULL,
  `startlanguage` varchar(20) NOT NULL,
  `seed` varchar(31) DEFAULT NULL,
  `397312X5X40` varchar(1) DEFAULT NULL,
  `397312X5X41` varchar(5) DEFAULT NULL,
  `397312X5X42` varchar(5) DEFAULT NULL,
  `397312X5X43` varchar(5) DEFAULT NULL,
  `397312X5X44` varchar(5) DEFAULT NULL,
  `397312X5X45` varchar(5) DEFAULT NULL,
  `397312X5X45comment` text DEFAULT NULL,
  `397312X4X28SQ001` varchar(5) DEFAULT NULL,
  `397312X4X28SQ003` varchar(5) DEFAULT NULL,
  `397312X4X28SQ002` varchar(5) DEFAULT NULL,
  `397312X4X32SQ001` varchar(5) DEFAULT NULL,
  `397312X4X32SQ003` varchar(5) DEFAULT NULL,
  `397312X4X32SQ002` varchar(5) DEFAULT NULL,
  `397312X4X24SQ001` varchar(5) DEFAULT NULL,
  `397312X4X24SQ003` varchar(5) DEFAULT NULL,
  `397312X4X24SQ002` varchar(5) DEFAULT NULL,
  `397312X4X36SQ001` varchar(5) DEFAULT NULL,
  `397312X4X36SQ003` varchar(5) DEFAULT NULL,
  `397312X4X36SQ002` varchar(5) DEFAULT NULL,
  `397312X6X46SQ001` varchar(5) DEFAULT NULL,
  `397312X6X46SQ003` varchar(5) DEFAULT NULL,
  `397312X6X46SQ002` varchar(5) DEFAULT NULL,
  `397312X6X54SQ001` varchar(5) DEFAULT NULL,
  `397312X6X54SQ003` varchar(5) DEFAULT NULL,
  `397312X6X54SQ002` varchar(5) DEFAULT NULL,
  `397312X6X58SQ001` varchar(5) DEFAULT NULL,
  `397312X6X58SQ001comment` text DEFAULT NULL,
  `397312X6X58SQ003` varchar(5) DEFAULT NULL,
  `397312X6X58SQ003comment` text DEFAULT NULL,
  `397312X6X58SQ002` varchar(5) DEFAULT NULL,
  `397312X6X58SQ002comment` text DEFAULT NULL,
  `397312X7X62` text DEFAULT NULL,
  `397312X7X63` text DEFAULT NULL,
  `397312X7X68SQ001` text DEFAULT NULL,
  `397312X7X68SQ003` text DEFAULT NULL,
  `397312X7X68SQ002` text DEFAULT NULL,
  `397312X7X75` text DEFAULT NULL,
  `397312X7X76SQ001` text DEFAULT NULL,
  `397312X7X76SQ003` text DEFAULT NULL,
  `397312X7X76SQ002` text DEFAULT NULL,
  `397312X7X80` text DEFAULT NULL,
  `397312X8X81` datetime DEFAULT NULL,
  `397312X8X82` text DEFAULT NULL,
  `397312X8X83` text DEFAULT NULL,
  `397312X8X83_filecount` int(11) DEFAULT NULL,
  `397312X8X84` varchar(1) DEFAULT NULL,
  `397312X8X85` varchar(20) DEFAULT NULL,
  `397312X8X86SQ001` decimal(30,10) DEFAULT NULL,
  `397312X8X86SQ003` decimal(30,10) DEFAULT NULL,
  `397312X8X86SQ002` decimal(30,10) DEFAULT NULL,
  `397312X8X90` decimal(30,10) DEFAULT NULL,
  `397312X8X911` varchar(5) DEFAULT NULL,
  `397312X8X912` varchar(5) DEFAULT NULL,
  `397312X8X913` varchar(5) DEFAULT NULL,
  `397312X8X921` varchar(5) DEFAULT NULL,
  `397312X8X922` varchar(5) DEFAULT NULL,
  `397312X8X923` varchar(5) DEFAULT NULL,
  `397312X8X93` varchar(1) DEFAULT NULL,
  `397312X8X94` varchar(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `lime_kuisonerold_survey_397312_20230902070708`
--

INSERT INTO `lime_kuisonerold_survey_397312_20230902070708` (`id`, `token`, `submitdate`, `lastpage`, `startlanguage`, `seed`, `397312X5X40`, `397312X5X41`, `397312X5X42`, `397312X5X43`, `397312X5X44`, `397312X5X45`, `397312X5X45comment`, `397312X4X28SQ001`, `397312X4X28SQ003`, `397312X4X28SQ002`, `397312X4X32SQ001`, `397312X4X32SQ003`, `397312X4X32SQ002`, `397312X4X24SQ001`, `397312X4X24SQ003`, `397312X4X24SQ002`, `397312X4X36SQ001`, `397312X4X36SQ003`, `397312X4X36SQ002`, `397312X6X46SQ001`, `397312X6X46SQ003`, `397312X6X46SQ002`, `397312X6X54SQ001`, `397312X6X54SQ003`, `397312X6X54SQ002`, `397312X6X58SQ001`, `397312X6X58SQ001comment`, `397312X6X58SQ003`, `397312X6X58SQ003comment`, `397312X6X58SQ002`, `397312X6X58SQ002comment`, `397312X7X62`, `397312X7X63`, `397312X7X68SQ001`, `397312X7X68SQ003`, `397312X7X68SQ002`, `397312X7X75`, `397312X7X76SQ001`, `397312X7X76SQ003`, `397312X7X76SQ002`, `397312X7X80`, `397312X8X81`, `397312X8X82`, `397312X8X83`, `397312X8X83_filecount`, `397312X8X84`, `397312X8X85`, `397312X8X86SQ001`, `397312X8X86SQ003`, `397312X8X86SQ002`, `397312X8X90`, `397312X8X911`, `397312X8X912`, `397312X8X913`, `397312X8X921`, `397312X8X922`, `397312X8X923`, `397312X8X93`, `397312X8X94`) VALUES
(2, NULL, '1980-01-01 00:00:00', 5, 'id', '880751568', '4', 'SQ003', 'SQ003', 'SQ001', 'SQ003', '', 'tenis', 'AO01', 'AO01', '', '2', '5', '1', '1', '2', '1', 'I', 'S', 'D', '', 'Y', '', 'Y', 'Y', '', '', '', 'Y', 'lari paling bagus', '', '', 'Chrome (115.0)', 'cek form ', 'bagus', 'buruk', '', 'ini form untuk test', 'baik', 'buruk', 'buruk', 'ini adalah cek form', '2023-08-31 00:00:00', 'Equation', '', 0, 'F', 'id', '80.0000000000', '100.0000000000', '20.0000000000', '12.0000000000', 'SQ003', '', '', 'SQ001', '', '', '', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lime_kuisonerparticipants`
--

CREATE TABLE `lime_kuisonerparticipants` (
  `participant_id` varchar(50) NOT NULL,
  `firstname` text DEFAULT NULL,
  `lastname` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `language` varchar(40) DEFAULT NULL,
  `blacklisted` varchar(1) NOT NULL,
  `owner_uid` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `lime_kuisonerparticipant_attribute`
--

CREATE TABLE `lime_kuisonerparticipant_attribute` (
  `participant_id` varchar(50) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `lime_kuisonerparticipant_attribute_names`
--

CREATE TABLE `lime_kuisonerparticipant_attribute_names` (
  `attribute_id` int(11) NOT NULL,
  `attribute_type` varchar(4) NOT NULL,
  `defaultname` varchar(255) NOT NULL,
  `visible` varchar(5) NOT NULL,
  `encrypted` varchar(5) NOT NULL,
  `core_attribute` varchar(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `lime_kuisonerparticipant_attribute_names`
--

INSERT INTO `lime_kuisonerparticipant_attribute_names` (`attribute_id`, `attribute_type`, `defaultname`, `visible`, `encrypted`, `core_attribute`) VALUES
(1, 'TB', 'firstname', 'TRUE', 'Y', 'Y'),
(2, 'TB', 'lastname', 'TRUE', 'Y', 'Y'),
(3, 'TB', 'email', 'TRUE', 'Y', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lime_kuisonerparticipant_attribute_names_lang`
--

CREATE TABLE `lime_kuisonerparticipant_attribute_names_lang` (
  `attribute_id` int(11) NOT NULL,
  `attribute_name` varchar(255) NOT NULL,
  `lang` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `lime_kuisonerparticipant_attribute_values`
--

CREATE TABLE `lime_kuisonerparticipant_attribute_values` (
  `value_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `value` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `lime_kuisonerparticipant_shares`
--

CREATE TABLE `lime_kuisonerparticipant_shares` (
  `participant_id` varchar(50) NOT NULL,
  `share_uid` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `can_edit` varchar(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `lime_kuisonerpermissions`
--

CREATE TABLE `lime_kuisonerpermissions` (
  `id` int(11) NOT NULL,
  `entity` varchar(50) NOT NULL,
  `entity_id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `permission` varchar(100) NOT NULL,
  `create_p` int(11) NOT NULL DEFAULT 0,
  `read_p` int(11) NOT NULL DEFAULT 0,
  `update_p` int(11) NOT NULL DEFAULT 0,
  `delete_p` int(11) NOT NULL DEFAULT 0,
  `import_p` int(11) NOT NULL DEFAULT 0,
  `export_p` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `lime_kuisonerpermissions`
--

INSERT INTO `lime_kuisonerpermissions` (`id`, `entity`, `entity_id`, `uid`, `permission`, `create_p`, `read_p`, `update_p`, `delete_p`, `import_p`, `export_p`) VALUES
(1, 'global', 0, 1, 'superadmin', 0, 1, 0, 0, 0, 0),
(14, 'survey', 397312, 1, 'assessments', 1, 1, 1, 1, 0, 0),
(15, 'survey', 397312, 1, 'quotas', 1, 1, 1, 1, 0, 0),
(16, 'survey', 397312, 1, 'responses', 1, 1, 1, 1, 1, 1),
(17, 'survey', 397312, 1, 'statistics', 0, 1, 0, 0, 0, 0),
(18, 'survey', 397312, 1, 'survey', 0, 1, 0, 1, 0, 0),
(19, 'survey', 397312, 1, 'surveyactivation', 0, 0, 1, 0, 0, 0),
(20, 'survey', 397312, 1, 'surveycontent', 1, 1, 1, 1, 1, 1),
(21, 'survey', 397312, 1, 'surveylocale', 0, 1, 1, 0, 0, 0),
(22, 'survey', 397312, 1, 'surveysecurity', 1, 1, 1, 1, 0, 0),
(23, 'survey', 397312, 1, 'surveysettings', 0, 1, 1, 0, 0, 0),
(24, 'survey', 397312, 1, 'tokens', 1, 1, 1, 1, 1, 1),
(25, 'survey', 397312, 1, 'translations', 0, 1, 1, 0, 0, 0),
(51, 'global', 0, 4, 'auth_db', 0, 1, 0, 0, 0, 0),
(52, 'template', 0, 4, 'fruity_twentythree', 0, 1, 0, 0, 0, 0),
(53, 'global', 0, 4, 'usergroups', 0, 0, 0, 0, 0, 0),
(54, 'global', 0, 4, 'surveysgroups', 0, 0, 0, 0, 0, 0),
(55, 'global', 0, 4, 'users', 0, 0, 0, 0, 0, 0),
(56, 'global', 0, 4, 'participantpanel', 0, 0, 0, 0, 0, 0),
(57, 'global', 0, 4, 'labelsets', 0, 0, 0, 0, 0, 0),
(58, 'global', 0, 4, 'settings', 0, 0, 0, 0, 0, 0),
(59, 'global', 0, 4, 'surveys', 1, 1, 1, 1, 0, 1),
(60, 'global', 0, 4, 'templates', 0, 0, 0, 0, 0, 0),
(61, 'global', 0, 4, 'superadmin', 0, 0, 0, 0, 0, 0),
(62, 'global', 0, 6, 'auth_db', 0, 1, 0, 0, 0, 0),
(63, 'template', 0, 6, 'fruity_twentythree', 0, 1, 0, 0, 0, 0),
(64, 'global', 0, 6, 'usergroups', 0, 0, 0, 0, 0, 0),
(65, 'global', 0, 6, 'surveysgroups', 1, 1, 1, 1, 0, 0),
(66, 'global', 0, 6, 'users', 0, 0, 0, 0, 0, 0),
(67, 'global', 0, 6, 'participantpanel', 0, 0, 0, 0, 0, 0),
(68, 'global', 0, 6, 'labelsets', 1, 1, 1, 1, 1, 1),
(69, 'global', 0, 6, 'settings', 0, 0, 0, 0, 0, 0),
(70, 'global', 0, 6, 'surveys', 1, 1, 1, 1, 0, 1),
(71, 'global', 0, 6, 'templates', 0, 0, 0, 0, 0, 0),
(72, 'global', 0, 6, 'superadmin', 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `lime_kuisonerpermissiontemplates`
--

CREATE TABLE `lime_kuisonerpermissiontemplates` (
  `ptid` int(11) NOT NULL,
  `name` varchar(127) NOT NULL,
  `description` text DEFAULT NULL,
  `renewed_last` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `lime_kuisonerplugins`
--

CREATE TABLE `lime_kuisonerplugins` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `plugin_type` varchar(6) DEFAULT 'user',
  `active` int(11) NOT NULL DEFAULT 0,
  `priority` int(11) NOT NULL DEFAULT 0,
  `version` varchar(32) DEFAULT NULL,
  `load_error` int(11) DEFAULT 0,
  `load_error_message` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `lime_kuisonerplugins`
--

INSERT INTO `lime_kuisonerplugins` (`id`, `name`, `plugin_type`, `active`, `priority`, `version`, `load_error`, `load_error_message`) VALUES
(1, 'UpdateCheck', 'core', 1, 0, '1.0.0', 0, NULL),
(2, 'PasswordRequirement', 'core', 1, 0, '1.1.0', 0, NULL),
(3, 'ComfortUpdateChecker', 'core', 1, 0, '1.0.0', 0, NULL),
(4, 'Authdb', 'core', 1, 0, '1.0.0', 0, NULL),
(5, 'AuthLDAP', 'core', 0, 0, '1.0.0', 0, NULL),
(6, 'AuditLog', 'core', 0, 0, '1.0.0', 0, NULL),
(7, 'Authwebserver', 'core', 0, 0, '1.0.0', 0, NULL),
(8, 'ExportR', 'core', 1, 0, '1.0.0', 0, NULL),
(9, 'ExportSTATAxml', 'core', 1, 0, '1.0.0', 0, NULL),
(10, 'ExportSPSSsav', 'core', 1, 0, '1.0.4', 0, NULL),
(11, 'oldUrlCompat', 'core', 0, 0, '1.0.1', 0, NULL),
(12, 'expressionQuestionHelp', 'core', 0, 0, '1.0.1', 0, NULL),
(13, 'expressionQuestionForAll', 'core', 0, 0, '1.0.1', 0, NULL),
(14, 'expressionFixedDbVar', 'core', 0, 0, '1.0.2', 0, NULL),
(15, 'customToken', 'core', 0, 0, '1.0.1', 0, NULL),
(16, 'mailSenderToFrom', 'core', 0, 0, '1.0.0', 0, NULL),
(17, 'TwoFactorAdminLogin', 'core', 0, 0, '1.2.5', 0, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `lime_kuisonerplugin_settings`
--

CREATE TABLE `lime_kuisonerplugin_settings` (
  `id` int(11) NOT NULL,
  `plugin_id` int(11) NOT NULL,
  `model` varchar(50) DEFAULT NULL,
  `model_id` int(11) DEFAULT NULL,
  `key` varchar(50) NOT NULL,
  `value` mediumtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `lime_kuisonerplugin_settings`
--

INSERT INTO `lime_kuisonerplugin_settings` (`id`, `plugin_id`, `model`, `model_id`, `key`, `value`) VALUES
(1, 1, NULL, NULL, 'next_extension_update_check', '\"2023-09-01 05:21:35\"');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lime_kuisonerquestions`
--

CREATE TABLE `lime_kuisonerquestions` (
  `qid` int(11) NOT NULL,
  `parent_qid` int(11) NOT NULL DEFAULT 0,
  `sid` int(11) NOT NULL DEFAULT 0,
  `gid` int(11) NOT NULL DEFAULT 0,
  `type` varchar(30) NOT NULL DEFAULT 'T',
  `title` varchar(20) NOT NULL DEFAULT '',
  `preg` text DEFAULT NULL,
  `other` varchar(1) NOT NULL DEFAULT 'N',
  `mandatory` varchar(1) DEFAULT NULL,
  `encrypted` varchar(1) DEFAULT 'N',
  `question_order` int(11) NOT NULL,
  `scale_id` int(11) NOT NULL DEFAULT 0,
  `same_default` int(11) NOT NULL DEFAULT 0,
  `relevance` text DEFAULT NULL,
  `question_theme_name` varchar(150) DEFAULT NULL,
  `modulename` varchar(255) DEFAULT NULL,
  `same_script` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `lime_kuisonerquestions`
--

INSERT INTO `lime_kuisonerquestions` (`qid`, `parent_qid`, `sid`, `gid`, `type`, `title`, `preg`, `other`, `mandatory`, `encrypted`, `question_order`, `scale_id`, `same_default`, `relevance`, `question_theme_name`, `modulename`, `same_script`) VALUES
(84, 0, 397312, 8, 'G', 'G01Q23', NULL, 'N', 'N', 'N', 4, 0, 0, '1', 'gender', '', 0),
(80, 0, 397312, 7, 'S', 'G04Q19', '', 'N', 'N', 'N', 10, 0, 0, '1', 'shortfreetext', '', 0),
(81, 0, 397312, 8, 'D', 'G05Q20', NULL, 'N', 'N', 'N', 1, 0, 0, '1', 'date', '', 0),
(82, 0, 397312, 8, '*', 'G01Q21', NULL, 'N', 'N', 'N', 2, 0, 0, '1', 'equation', '', 0),
(83, 0, 397312, 8, '|', 'G01Q22', NULL, 'N', 'N', 'N', 3, 0, 0, '1', 'file_upload', '', 0),
(48, 46, 397312, 6, 'M', 'SQ003', NULL, 'N', NULL, 'N', 1, 0, 0, '1', 'longfreetext', NULL, 0),
(49, 46, 397312, 6, 'M', 'SQ002', NULL, 'N', NULL, 'N', 2, 0, 0, '1', 'longfreetext', NULL, 0),
(24, 0, 397312, 4, 'A', 'G00Q10', NULL, 'N', 'N', 'N', 3, 0, 0, '1', 'arrays/5point', '', 0),
(45, 0, 397312, 5, 'O', 'G01Q10', NULL, 'N', 'N', 'N', 6, 0, 0, '1', 'list_with_comment', '', 0),
(46, 0, 397312, 6, 'M', 'G03Q11', NULL, 'N', 'N', 'N', 1, 0, 0, '1', 'bootstrap_buttons_multi', '', 0),
(47, 46, 397312, 6, 'M', 'SQ001', NULL, 'N', NULL, 'N', 0, 0, 0, '1', 'longfreetext', NULL, 0),
(54, 0, 397312, 6, 'M', 'G03Q13', NULL, 'N', 'N', 'N', 2, 0, 0, '1', 'multiplechoice', '', 0),
(44, 0, 397312, 5, 'L', 'G01Q09', NULL, 'N', 'N', 'N', 5, 0, 0, '1', 'listradio', '', 0),
(43, 0, 397312, 5, '!', 'G01Q08', NULL, 'N', 'N', 'N', 4, 0, 0, '1', 'list_dropdown', '', 0),
(42, 0, 397312, 5, '!', 'G01Q07', NULL, 'N', 'N', 'N', 3, 0, 0, '1', 'bootstrap_dropdown', '', 0),
(41, 0, 397312, 5, 'L', 'G01Q06', NULL, 'N', 'N', 'N', 2, 0, 0, '1', 'bootstrap_buttons', '', 0),
(40, 0, 397312, 5, '5', 'G01Q05', NULL, 'N', 'N', 'N', 1, 0, 0, '1', '5pointchoice', '', 0),
(25, 24, 397312, 4, 'A', 'SQ001', NULL, 'N', NULL, 'N', 0, 0, 0, '1', 'longfreetext', NULL, 0),
(26, 24, 397312, 4, 'A', 'SQ003', NULL, 'N', NULL, 'N', 1, 0, 0, '1', 'longfreetext', NULL, 0),
(27, 24, 397312, 4, 'A', 'SQ002', NULL, 'N', NULL, 'N', 2, 0, 0, '1', 'longfreetext', NULL, 0),
(28, 0, 397312, 4, 'F', 'G01Q11', NULL, 'N', 'N', 'N', 1, 0, 0, '1', 'arrays/array', '', 0),
(29, 28, 397312, 4, 'F', 'SQ001', NULL, 'N', NULL, 'N', 0, 0, 0, '1', 'longfreetext', NULL, 0),
(30, 28, 397312, 4, 'F', 'SQ003', NULL, 'N', NULL, 'N', 1, 0, 0, '1', 'longfreetext', NULL, 0),
(31, 28, 397312, 4, 'F', 'SQ002', NULL, 'N', NULL, 'N', 2, 0, 0, '1', 'longfreetext', NULL, 0),
(32, 0, 397312, 4, 'A', 'G00Q12', NULL, 'N', 'N', 'N', 2, 0, 0, '1', 'arrays/5point', '', 0),
(33, 32, 397312, 4, 'A', 'SQ001', NULL, 'N', NULL, 'N', 0, 0, 0, '1', 'longfreetext', NULL, 0),
(34, 32, 397312, 4, 'A', 'SQ003', NULL, 'N', NULL, 'N', 1, 0, 0, '1', 'longfreetext', NULL, 0),
(35, 32, 397312, 4, 'A', 'SQ002', NULL, 'N', NULL, 'N', 2, 0, 0, '1', 'longfreetext', NULL, 0),
(36, 0, 397312, 4, 'E', 'G02Q13', NULL, 'N', 'N', 'N', 4, 0, 0, '1', 'arrays/increasesamedecrease', '', 0),
(37, 36, 397312, 4, 'E', 'SQ001', NULL, 'N', NULL, 'N', 0, 0, 0, '1', 'longfreetext', NULL, 0),
(38, 36, 397312, 4, 'E', 'SQ003', NULL, 'N', NULL, 'N', 1, 0, 0, '1', 'longfreetext', NULL, 0),
(39, 36, 397312, 4, 'E', 'SQ002', NULL, 'N', NULL, 'N', 2, 0, 0, '1', 'longfreetext', NULL, 0),
(55, 54, 397312, 6, 'M', 'SQ001', NULL, 'N', NULL, 'N', 0, 0, 0, '1', 'longfreetext', NULL, 0),
(56, 54, 397312, 6, 'M', 'SQ003', NULL, 'N', NULL, 'N', 1, 0, 0, '1', 'longfreetext', NULL, 0),
(57, 54, 397312, 6, 'M', 'SQ002', NULL, 'N', NULL, 'N', 2, 0, 0, '1', 'longfreetext', NULL, 0),
(58, 0, 397312, 6, 'P', 'G01Q14', '', 'N', 'N', 'N', 8, 0, 0, '1', 'multiplechoice_with_comments', '', 0),
(59, 58, 397312, 6, 'P', 'SQ001', NULL, 'N', NULL, 'N', 0, 0, 0, '1', 'longfreetext', NULL, 0),
(60, 58, 397312, 6, 'P', 'SQ003', NULL, 'N', NULL, 'N', 1, 0, 0, '1', 'longfreetext', NULL, 0),
(61, 58, 397312, 6, 'P', 'SQ002', NULL, 'N', NULL, 'N', 2, 0, 0, '1', 'longfreetext', NULL, 0),
(62, 0, 397312, 7, 'S', 'G04Q15', '', 'N', 'N', 'N', 1, 0, 0, '1', 'browserdetect', '', 0),
(63, 0, 397312, 7, 'U', 'G01Q16', '', 'N', 'N', 'N', 2, 0, 0, '1', 'hugefreetext', '', 0),
(75, 0, 397312, 7, 'T', 'G04Q18', '', 'N', 'N', 'N', 4, 0, 0, '1', 'longfreetext', '', 0),
(74, 68, 397312, 7, 'Q', 'SQ002', NULL, 'N', NULL, 'N', 2, 0, 0, '1', 'longfreetext', NULL, 0),
(68, 0, 397312, 7, 'Q', 'G01Q18', '', 'N', 'N', 'N', 3, 0, 0, '1', 'inputondemand', '', 0),
(73, 68, 397312, 7, 'Q', 'SQ003', NULL, 'N', NULL, 'N', 1, 0, 0, '1', 'longfreetext', NULL, 0),
(72, 68, 397312, 7, 'Q', 'SQ001', NULL, 'N', NULL, 'N', 0, 0, 0, '1', 'longfreetext', NULL, 0),
(76, 0, 397312, 7, 'Q', 'G01Q19', '', 'N', 'N', 'N', 9, 0, 0, '1', 'multipleshorttext', '', 0),
(77, 76, 397312, 7, 'Q', 'SQ001', NULL, 'N', NULL, 'N', 0, 0, 0, '1', 'longfreetext', NULL, 0),
(78, 76, 397312, 7, 'Q', 'SQ003', NULL, 'N', NULL, 'N', 1, 0, 0, '1', 'longfreetext', NULL, 0),
(79, 76, 397312, 7, 'Q', 'SQ002', NULL, 'N', NULL, 'N', 2, 0, 0, '1', 'longfreetext', NULL, 0),
(85, 0, 397312, 8, 'I', 'G01Q24', NULL, 'N', 'N', 'N', 7, 0, 0, '1', 'language', '', 0),
(86, 0, 397312, 8, 'K', 'G01Q25', '', 'N', 'N', 'N', 8, 0, 0, '1', 'multiplenumeric', '', 0),
(87, 86, 397312, 8, 'K', 'SQ001', NULL, 'N', NULL, 'N', 0, 0, 0, '1', 'longfreetext', NULL, 0),
(88, 86, 397312, 8, 'K', 'SQ003', NULL, 'N', NULL, 'N', 1, 0, 0, '1', 'longfreetext', NULL, 0),
(89, 86, 397312, 8, 'K', 'SQ002', NULL, 'N', NULL, 'N', 2, 0, 0, '1', 'longfreetext', NULL, 0),
(90, 0, 397312, 8, 'N', 'G01Q26', '', 'N', 'N', 'N', 9, 0, 0, '1', 'numerical', '', 0),
(91, 0, 397312, 8, 'R', 'G05Q27', NULL, 'N', 'N', 'N', 10, 0, 0, '1', 'ranking', '', 0),
(92, 0, 397312, 8, 'R', 'G01Q28', NULL, 'N', 'N', 'N', 11, 0, 0, '1', 'ranking_advanced', '', 0),
(93, 0, 397312, 8, 'X', 'G05Q29', NULL, 'N', 'N', 'N', 12, 0, 0, '1', 'boilerplate', '', 0),
(94, 0, 397312, 8, 'Y', 'G01Q30', NULL, 'N', 'N', 'N', 13, 0, 0, '1', 'yesno', '', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `lime_kuisonerquestion_attributes`
--

CREATE TABLE `lime_kuisonerquestion_attributes` (
  `qaid` int(11) NOT NULL,
  `qid` int(11) NOT NULL DEFAULT 0,
  `attribute` varchar(50) DEFAULT NULL,
  `value` mediumtext DEFAULT NULL,
  `language` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `lime_kuisonerquestion_attributes`
--

INSERT INTO `lime_kuisonerquestion_attributes` (`qaid`, `qid`, `attribute`, `value`, `language`) VALUES
(652, 46, 'other_position_code', '', ''),
(651, 46, 'other_position', 'end', ''),
(650, 46, 'cssclass', '', ''),
(649, 46, 'hidden', '0', ''),
(648, 46, 'random_order', '0', ''),
(647, 46, 'hide_tip', '0', ''),
(646, 46, 'other_replace_text', '', 'id'),
(644, 46, 'em_validation_q', '', ''),
(645, 46, 'em_validation_q_tip', '', 'id'),
(643, 46, 'random_group', '', ''),
(642, 46, 'exclude_all_others_auto', '0', ''),
(641, 46, 'exclude_all_others', '', ''),
(640, 46, 'array_filter_style', '0', ''),
(639, 46, 'array_filter', '', ''),
(638, 46, 'assessment_value', '1', ''),
(637, 46, 'array_filter_exclude', '', ''),
(636, 46, 'other_numbers_only', '0', ''),
(635, 46, 'max_answers', '', ''),
(634, 46, 'min_answers', '', ''),
(633, 45, 'save_as_default', 'N', ''),
(632, 45, 'statistics_graphtype', '0', ''),
(631, 45, 'statistics_showgraph', '1', ''),
(630, 45, 'public_statistics', '0', ''),
(629, 45, 'scale_export', '0', ''),
(628, 45, 'page_break', '0', ''),
(627, 45, 'printable_help', '', 'id'),
(626, 45, 'use_dropdown', '0', ''),
(625, 45, 'cssclass', '', ''),
(624, 45, 'hidden', '0', ''),
(623, 45, 'hide_tip', '0', ''),
(622, 45, 'answer_order', 'normal', ''),
(621, 45, 'em_validation_q_tip', '', 'id'),
(620, 45, 'em_validation_q', '', ''),
(619, 45, 'random_group', '', ''),
(618, 44, 'save_as_default', 'N', ''),
(617, 44, 'statistics_graphtype', '0', ''),
(616, 44, 'statistics_showgraph', '1', ''),
(615, 44, 'public_statistics', '0', ''),
(614, 44, 'time_limit_warning_2_style', '', ''),
(613, 44, 'time_limit_warning_2_message', '', 'id'),
(612, 44, 'time_limit_warning_2_display_time', '', ''),
(611, 44, 'time_limit_warning_2', '', ''),
(610, 44, 'time_limit_warning_style', '', ''),
(609, 44, 'time_limit_warning_message', '', 'id'),
(608, 44, 'time_limit_warning_display_time', '', ''),
(607, 44, 'time_limit_warning', '', ''),
(606, 44, 'time_limit_message_style', '', ''),
(605, 44, 'time_limit_message', '', 'id'),
(604, 44, 'time_limit_message_delay', '', ''),
(603, 44, 'time_limit_timer_style', '', ''),
(602, 44, 'time_limit_countdown_message', '', 'id'),
(601, 44, 'time_limit_disable_prev', '0', ''),
(600, 44, 'time_limit_disable_next', '0', ''),
(599, 44, 'time_limit_action', '1', ''),
(598, 44, 'time_limit', '', ''),
(597, 44, 'scale_export', '0', ''),
(596, 44, 'page_break', '0', ''),
(595, 44, 'printable_help', '', 'id'),
(594, 44, 'other_position_code', '', ''),
(593, 44, 'other_position', 'default', ''),
(404, 28, 'statistics_graphtype', '0', ''),
(403, 28, 'statistics_showgraph', '1', ''),
(402, 28, 'public_statistics', '0', ''),
(401, 28, 'scale_export', '0', ''),
(400, 28, 'page_break', '0', ''),
(399, 28, 'printable_help', '', 'id'),
(398, 28, 'use_dropdown', '0', ''),
(397, 28, 'cssclass', '', ''),
(396, 28, 'hidden', '0', ''),
(395, 28, 'random_order', '0', ''),
(394, 28, 'hide_tip', '0', ''),
(393, 28, 'repeat_headings', '', ''),
(392, 28, 'answer_width', '', ''),
(391, 28, 'em_validation_q_tip', '', 'id'),
(390, 28, 'em_validation_q', '', ''),
(389, 28, 'random_group', '', ''),
(388, 28, 'exclude_all_others', '', ''),
(387, 28, 'array_filter_exclude', '', ''),
(386, 28, 'array_filter', '', ''),
(385, 28, 'array_filter_style', '0', ''),
(384, 28, 'max_answers', '', ''),
(383, 28, 'min_answers', '', ''),
(382, 24, 'save_as_default', 'N', ''),
(381, 24, 'statistics_graphtype', '0', ''),
(380, 24, 'statistics_showgraph', '1', ''),
(379, 24, 'public_statistics', '0', ''),
(378, 24, 'scale_export', '0', ''),
(377, 24, 'page_break', '0', ''),
(376, 24, 'printable_help', '', 'id'),
(375, 24, 'use_dropdown', '0', ''),
(374, 24, 'cssclass', '', ''),
(373, 24, 'hidden', '0', ''),
(372, 24, 'random_order', '0', ''),
(371, 24, 'hide_tip', '0', ''),
(370, 24, 'repeat_headings', '', ''),
(369, 24, 'answer_width', '', ''),
(368, 24, 'em_validation_q_tip', '', 'id'),
(367, 24, 'em_validation_q', '', ''),
(366, 24, 'random_group', '', ''),
(365, 24, 'exclude_all_others', '', ''),
(364, 24, 'array_filter_exclude', '', ''),
(363, 24, 'array_filter', '', ''),
(362, 24, 'array_filter_style', '0', ''),
(361, 24, 'max_answers', '', ''),
(360, 24, 'min_answers', '', ''),
(592, 44, 'cssclass', '', ''),
(591, 44, 'hidden', '0', ''),
(590, 44, 'hide_tip', '0', ''),
(589, 44, 'display_columns', '', ''),
(588, 44, 'answer_order', 'normal', ''),
(587, 44, 'other_replace_text', '', 'id'),
(586, 44, 'em_validation_q_tip', '', 'id'),
(585, 44, 'em_validation_q', '', ''),
(584, 44, 'random_group', '', ''),
(583, 44, 'array_filter_style', '0', ''),
(582, 44, 'other_numbers_only', '0', ''),
(581, 44, 'other_comment_mandatory', '0', ''),
(580, 44, 'array_filter', '', ''),
(579, 44, 'array_filter_exclude', '', ''),
(578, 43, 'save_as_default', 'N', ''),
(577, 43, 'statistics_graphtype', '0', ''),
(576, 43, 'statistics_showgraph', '1', ''),
(575, 43, 'public_statistics', '0', ''),
(574, 43, 'time_limit_warning_2_style', '', ''),
(573, 43, 'time_limit_warning_2_message', '', 'id'),
(572, 43, 'time_limit_warning_2_display_time', '', ''),
(571, 43, 'time_limit_warning_2', '', ''),
(570, 43, 'time_limit_warning_style', '', ''),
(569, 43, 'time_limit_warning_message', '', 'id'),
(568, 43, 'time_limit_warning_display_time', '', ''),
(567, 43, 'time_limit_warning', '', ''),
(566, 43, 'time_limit_message_style', '', ''),
(565, 43, 'time_limit_message', '', 'id'),
(564, 43, 'time_limit_message_delay', '', ''),
(563, 43, 'time_limit_timer_style', '', ''),
(562, 43, 'time_limit_countdown_message', '', 'id'),
(561, 43, 'time_limit_disable_prev', '0', ''),
(560, 43, 'time_limit_disable_next', '0', ''),
(559, 43, 'time_limit_action', '1', ''),
(558, 43, 'time_limit', '', ''),
(557, 43, 'scale_export', '0', ''),
(556, 43, 'page_break', '0', ''),
(555, 43, 'dropdown_prefix', '0', ''),
(554, 43, 'printable_help', '', 'id'),
(553, 43, 'dropdown_size', '', ''),
(552, 43, 'other_position_code', '', ''),
(551, 43, 'other_position', 'default', ''),
(550, 43, 'cssclass', '', ''),
(549, 43, 'hidden', '0', ''),
(548, 43, 'hide_tip', '0', ''),
(547, 43, 'other_replace_text', '', 'id'),
(546, 43, 'answer_order', 'normal', ''),
(545, 43, 'category_separator', '', ''),
(544, 43, 'em_validation_q_tip', '', 'id'),
(543, 43, 'em_validation_q', '', ''),
(542, 43, 'random_group', '', ''),
(541, 43, 'other_comment_mandatory', '0', ''),
(540, 42, 'save_as_default', 'N', ''),
(539, 42, 'width_entry', 'false', ''),
(538, 42, 'show_tick', 'false', ''),
(537, 42, 'show_search', 'false', ''),
(536, 42, 'statistics_graphtype', '0', ''),
(535, 42, 'statistics_showgraph', '1', ''),
(534, 42, 'public_statistics', '0', ''),
(533, 42, 'time_limit_warning_2_style', '', ''),
(532, 42, 'time_limit_warning_2_message', '', 'id'),
(531, 42, 'time_limit_warning_2_display_time', '', ''),
(530, 42, 'time_limit_warning_2', '', ''),
(529, 42, 'time_limit_warning_style', '', ''),
(528, 42, 'time_limit_warning_message', '', 'id'),
(527, 42, 'time_limit_warning_display_time', '', ''),
(526, 42, 'time_limit_warning', '', ''),
(525, 42, 'time_limit_message_style', '', ''),
(524, 42, 'time_limit_message', '', 'id'),
(523, 42, 'time_limit_message_delay', '', ''),
(522, 42, 'time_limit_timer_style', '', ''),
(521, 42, 'time_limit_countdown_message', '', 'id'),
(520, 42, 'time_limit_disable_prev', '0', ''),
(519, 42, 'time_limit_disable_next', '0', ''),
(518, 42, 'time_limit_action', '1', ''),
(517, 42, 'time_limit', '', ''),
(516, 42, 'scale_export', '0', ''),
(515, 42, 'page_break', '0', ''),
(514, 42, 'dropdown_prefix', '0', ''),
(513, 42, 'printable_help', '', 'id'),
(512, 42, 'dropdown_size', '', ''),
(511, 42, 'other_position_code', '', ''),
(510, 42, 'other_position', 'default', ''),
(509, 42, 'cssclass', '', ''),
(508, 42, 'hidden', '0', ''),
(507, 42, 'other_replace_text', '', 'id'),
(506, 42, 'category_separator', '', ''),
(505, 42, 'answer_order', 'normal', ''),
(504, 42, 'hide_tip', '0', ''),
(503, 42, 'em_validation_q_tip', '', 'id'),
(502, 42, 'em_validation_q', '', ''),
(501, 42, 'random_group', '', ''),
(500, 42, 'other_comment_mandatory', '0', ''),
(499, 41, 'save_as_default', 'N', ''),
(498, 41, 'button_size', 'default', ''),
(497, 41, 'statistics_graphtype', '0', ''),
(496, 41, 'statistics_showgraph', '1', ''),
(495, 41, 'public_statistics', '0', ''),
(494, 41, 'time_limit_warning_2_style', '', ''),
(493, 41, 'time_limit_warning_2_message', '', 'id'),
(492, 41, 'time_limit_warning_2_display_time', '', ''),
(491, 41, 'time_limit_warning_2', '', ''),
(490, 41, 'time_limit_warning_style', '', ''),
(489, 41, 'time_limit_warning_message', '', 'id'),
(488, 41, 'time_limit_warning_display_time', '', ''),
(487, 41, 'time_limit_warning', '', ''),
(486, 41, 'time_limit_message_style', '', ''),
(485, 41, 'time_limit_message', '', 'id'),
(484, 41, 'time_limit_message_delay', '', ''),
(483, 41, 'time_limit_timer_style', '', ''),
(482, 41, 'time_limit_countdown_message', '', 'id'),
(481, 41, 'time_limit_disable_prev', '0', ''),
(480, 41, 'time_limit_disable_next', '0', ''),
(479, 41, 'time_limit_action', '1', ''),
(478, 41, 'time_limit', '', ''),
(477, 41, 'scale_export', '0', ''),
(476, 41, 'page_break', '0', ''),
(475, 41, 'printable_help', '', 'id'),
(474, 41, 'other_position_code', '', ''),
(473, 41, 'other_position', 'default', ''),
(472, 41, 'cssclass', '', ''),
(471, 41, 'hidden', '0', ''),
(470, 41, 'other_replace_text', '', 'id'),
(469, 41, 'hide_tip', '0', ''),
(468, 41, 'answer_order', 'normal', ''),
(467, 41, 'em_validation_q_tip', '', 'id'),
(466, 41, 'em_validation_q', '', ''),
(465, 41, 'random_group', '', ''),
(464, 41, 'array_filter_style', '0', ''),
(463, 41, 'other_numbers_only', '0', ''),
(462, 41, 'other_comment_mandatory', '0', ''),
(461, 41, 'array_filter', '', ''),
(460, 41, 'array_filter_exclude', '', ''),
(459, 40, 'save_as_default', 'N', ''),
(458, 40, 'statistics_graphtype', '0', ''),
(457, 40, 'statistics_showgraph', '1', ''),
(456, 40, 'public_statistics', '0', ''),
(455, 40, 'page_break', '0', ''),
(454, 40, 'printable_help', '', 'id'),
(453, 40, 'cssclass', '', ''),
(452, 40, 'hidden', '0', ''),
(451, 40, 'hide_tip', '0', ''),
(450, 40, 'slider_rating', '0', ''),
(449, 40, 'em_validation_q_tip', '', 'id'),
(448, 40, 'em_validation_q', '', ''),
(447, 40, 'random_group', '', ''),
(405, 28, 'save_as_default', 'N', ''),
(406, 32, 'min_answers', '', ''),
(407, 32, 'max_answers', '', ''),
(408, 32, 'array_filter_style', '0', ''),
(409, 32, 'array_filter_exclude', '', ''),
(410, 32, 'array_filter', '', ''),
(411, 32, 'exclude_all_others', '', ''),
(412, 32, 'random_group', '', ''),
(413, 32, 'em_validation_q', '', ''),
(414, 32, 'em_validation_q_tip', '', 'id'),
(415, 32, 'answer_width', '', ''),
(416, 32, 'random_order', '0', ''),
(417, 32, 'hide_tip', '0', ''),
(418, 32, 'hidden', '0', ''),
(419, 32, 'cssclass', '', ''),
(420, 32, 'printable_help', '', 'id'),
(421, 32, 'page_break', '0', ''),
(422, 32, 'public_statistics', '0', ''),
(423, 32, 'statistics_showgraph', '1', ''),
(424, 32, 'statistics_graphtype', '0', ''),
(425, 32, 'save_as_default', 'N', ''),
(426, 36, 'min_answers', '', ''),
(427, 36, 'max_answers', '', ''),
(428, 36, 'array_filter_exclude', '', ''),
(429, 36, 'array_filter_style', '0', ''),
(430, 36, 'array_filter', '', ''),
(431, 36, 'exclude_all_others', '', ''),
(432, 36, 'random_group', '', ''),
(433, 36, 'em_validation_q', '', ''),
(434, 36, 'em_validation_q_tip', '', 'id'),
(435, 36, 'answer_width', '', ''),
(436, 36, 'random_order', '0', ''),
(437, 36, 'hide_tip', '0', ''),
(438, 36, 'hidden', '0', ''),
(439, 36, 'cssclass', '', ''),
(440, 36, 'printable_help', '', 'id'),
(441, 36, 'page_break', '0', ''),
(442, 36, 'scale_export', '0', ''),
(443, 36, 'public_statistics', '0', ''),
(444, 36, 'statistics_showgraph', '1', ''),
(445, 36, 'statistics_graphtype', '0', ''),
(446, 36, 'save_as_default', 'N', ''),
(653, 46, 'printable_help', '', 'id'),
(654, 46, 'page_break', '0', ''),
(655, 46, 'scale_export', '0', ''),
(656, 46, 'public_statistics', '0', ''),
(657, 46, 'statistics_showgraph', '1', ''),
(658, 46, 'statistics_graphtype', '0', ''),
(659, 46, 'save_as_default', 'N', ''),
(994, 80, 'time_limit_message', '', 'id'),
(993, 80, 'time_limit_message_delay', '', ''),
(992, 80, 'time_limit_timer_style', '', ''),
(991, 80, 'time_limit_countdown_message', '', 'id'),
(990, 80, 'time_limit_disable_prev', '0', ''),
(989, 80, 'time_limit_disable_next', '0', ''),
(988, 80, 'time_limit_action', '1', ''),
(987, 80, 'time_limit', '', ''),
(986, 80, 'numbers_only', '0', ''),
(985, 80, 'page_break', '0', ''),
(984, 80, 'maximum_chars', '', ''),
(983, 80, 'cssclass', '', ''),
(982, 80, 'hidden', '0', ''),
(981, 80, 'display_rows', '', ''),
(980, 80, 'input_size', '', ''),
(979, 80, 'text_input_width', '', ''),
(978, 80, 'hide_tip', '0', ''),
(977, 80, 'suffix', '', 'id'),
(976, 80, 'prefix', '', 'id'),
(975, 80, 'em_validation_q_tip', '', 'id'),
(974, 80, 'em_validation_q', '', ''),
(973, 80, 'random_group', '', ''),
(687, 54, 'min_answers', '', ''),
(688, 54, 'max_answers', '', ''),
(689, 54, 'array_filter_exclude', '', ''),
(690, 54, 'array_filter_style', '0', ''),
(691, 54, 'assessment_value', '1', ''),
(692, 54, 'other_numbers_only', '0', ''),
(693, 54, 'array_filter', '', ''),
(694, 54, 'exclude_all_others', '', ''),
(695, 54, 'exclude_all_others_auto', '0', ''),
(696, 54, 'random_group', '', ''),
(697, 54, 'em_validation_q', '', ''),
(698, 54, 'em_validation_q_tip', '', 'id'),
(699, 54, 'other_replace_text', '', 'id'),
(700, 54, 'display_columns', '', ''),
(701, 54, 'hide_tip', '0', ''),
(702, 54, 'random_order', '0', ''),
(703, 54, 'hidden', '0', ''),
(704, 54, 'cssclass', '', ''),
(705, 54, 'other_position', 'end', ''),
(706, 54, 'other_position_code', '', ''),
(707, 54, 'printable_help', '', 'id'),
(708, 54, 'page_break', '0', ''),
(709, 54, 'scale_export', '0', ''),
(710, 54, 'public_statistics', '0', ''),
(711, 54, 'statistics_showgraph', '1', ''),
(712, 54, 'statistics_graphtype', '0', ''),
(713, 54, 'save_as_default', 'N', ''),
(714, 58, 'min_answers', '', ''),
(715, 58, 'max_answers', '', ''),
(716, 58, 'array_filter_exclude', '', ''),
(717, 58, 'other_numbers_only', '0', ''),
(718, 58, 'other_comment_mandatory', '0', ''),
(719, 58, 'assessment_value', '1', ''),
(720, 58, 'array_filter', '', ''),
(721, 58, 'array_filter_style', '0', ''),
(722, 58, 'commented_checkbox', 'checked', ''),
(723, 58, 'commented_checkbox_auto', '1', ''),
(724, 58, 'exclude_all_others', '', ''),
(725, 58, 'exclude_all_others_auto', '0', ''),
(726, 58, 'random_group', '', ''),
(727, 58, 'em_validation_q', '', ''),
(728, 58, 'em_validation_q_tip', '', 'id'),
(729, 58, 'choice_input_columns', '', ''),
(730, 58, 'text_input_columns', '', ''),
(731, 58, 'other_replace_text', '', 'id'),
(732, 58, 'hide_tip', '0', ''),
(733, 58, 'random_order', '0', ''),
(734, 58, 'hidden', '0', ''),
(735, 58, 'cssclass', '', ''),
(736, 58, 'other_position', 'end', ''),
(737, 58, 'other_position_code', '', ''),
(738, 58, 'printable_help', '', 'id'),
(739, 58, 'page_break', '0', ''),
(740, 58, 'scale_export', '0', ''),
(741, 58, 'public_statistics', '0', ''),
(742, 58, 'statistics_showgraph', '1', ''),
(743, 58, 'save_as_default', 'N', ''),
(744, 62, 'random_group', '', ''),
(745, 62, 'em_validation_q', '', ''),
(746, 62, 'em_validation_q_tip', '', 'id'),
(747, 62, 'prefix', '', 'id'),
(748, 62, 'suffix', '', 'id'),
(749, 62, 'add_platform_info', 'no', ''),
(750, 62, 'input_size', '', ''),
(751, 62, 'hide_tip', '0', ''),
(752, 62, 'display_rows', '', ''),
(753, 62, 'text_input_width', '', ''),
(754, 62, 'hidden', '0', ''),
(755, 62, 'cssclass', '', ''),
(756, 62, 'maximum_chars', '', ''),
(757, 62, 'page_break', '0', ''),
(758, 62, 'numbers_only', '0', ''),
(759, 62, 'time_limit', '', ''),
(760, 62, 'time_limit_action', '1', ''),
(761, 62, 'time_limit_disable_next', '0', ''),
(762, 62, 'time_limit_disable_prev', '0', ''),
(763, 62, 'time_limit_countdown_message', '', 'id'),
(764, 62, 'time_limit_timer_style', '', ''),
(765, 62, 'time_limit_message_delay', '', ''),
(766, 62, 'time_limit_message', '', 'id'),
(767, 62, 'time_limit_message_style', '', ''),
(768, 62, 'time_limit_warning', '', ''),
(769, 62, 'time_limit_warning_display_time', '', ''),
(770, 62, 'time_limit_warning_message', '', 'id'),
(771, 62, 'time_limit_warning_style', '', ''),
(772, 62, 'time_limit_warning_2', '', ''),
(773, 62, 'time_limit_warning_2_display_time', '', ''),
(774, 62, 'time_limit_warning_2_message', '', 'id'),
(775, 62, 'time_limit_warning_2_style', '', ''),
(776, 62, 'statistics_showmap', '1', ''),
(777, 62, 'statistics_showgraph', '1', ''),
(778, 62, 'statistics_graphtype', '0', ''),
(779, 62, 'location_mapservice', '0', ''),
(780, 62, 'location_nodefaultfromip', '0', ''),
(781, 62, 'location_city', '0', ''),
(782, 62, 'location_state', '0', ''),
(783, 62, 'location_country', '0', ''),
(784, 62, 'location_postal', '0', ''),
(785, 62, 'location_mapzoom', '11', ''),
(786, 62, 'location_defaultcoordinates', '', ''),
(787, 62, 'location_mapwidth', '500', ''),
(788, 62, 'location_mapheight', '300', ''),
(789, 62, 'save_as_default', 'N', ''),
(790, 63, 'random_group', '', ''),
(791, 63, 'em_validation_q', '', ''),
(792, 63, 'em_validation_q_tip', '', 'id'),
(793, 63, 'hide_tip', '0', ''),
(794, 63, 'text_input_width', '', ''),
(795, 63, 'input_size', '', ''),
(796, 63, 'display_rows', '', ''),
(797, 63, 'hidden', '0', ''),
(798, 63, 'cssclass', '', ''),
(799, 63, 'maximum_chars', '', ''),
(800, 63, 'page_break', '0', ''),
(801, 63, 'time_limit', '', ''),
(802, 63, 'time_limit_action', '1', ''),
(803, 63, 'time_limit_disable_next', '0', ''),
(804, 63, 'time_limit_disable_prev', '0', ''),
(805, 63, 'time_limit_countdown_message', '', 'id'),
(806, 63, 'time_limit_timer_style', '', ''),
(807, 63, 'time_limit_message_delay', '', ''),
(808, 63, 'time_limit_message', '', 'id'),
(809, 63, 'time_limit_message_style', '', ''),
(810, 63, 'time_limit_warning', '', ''),
(811, 63, 'time_limit_warning_display_time', '', ''),
(812, 63, 'time_limit_warning_message', '', 'id'),
(813, 63, 'time_limit_warning_style', '', ''),
(814, 63, 'time_limit_warning_2', '', ''),
(815, 63, 'time_limit_warning_2_display_time', '', ''),
(816, 63, 'time_limit_warning_2_message', '', 'id'),
(817, 63, 'time_limit_warning_2_style', '', ''),
(818, 63, 'statistics_showgraph', '1', ''),
(819, 63, 'statistics_graphtype', '0', ''),
(820, 63, 'save_as_default', 'N', ''),
(947, 76, 'max_answers', '', ''),
(946, 76, 'min_answers', '', ''),
(945, 75, 'save_as_default', 'N', ''),
(944, 75, 'statistics_graphtype', '0', ''),
(943, 75, 'statistics_showgraph', '1', ''),
(942, 75, 'time_limit_warning_2_style', '', ''),
(941, 75, 'time_limit_warning_2_message', '', 'id'),
(940, 75, 'time_limit_warning_2_display_time', '', ''),
(939, 75, 'time_limit_warning_2', '', ''),
(938, 75, 'time_limit_warning_style', '', ''),
(937, 75, 'time_limit_warning_message', '', 'id'),
(936, 75, 'time_limit_warning_display_time', '', ''),
(935, 75, 'time_limit_warning', '', ''),
(934, 75, 'time_limit_message_style', '', ''),
(933, 75, 'time_limit_message', '', 'id'),
(932, 75, 'time_limit_message_delay', '', ''),
(931, 75, 'time_limit_timer_style', '', ''),
(930, 75, 'time_limit_countdown_message', '', 'id'),
(929, 75, 'time_limit_disable_prev', '0', ''),
(928, 75, 'time_limit_disable_next', '0', ''),
(927, 75, 'time_limit_action', '1', ''),
(926, 75, 'time_limit', '', ''),
(925, 75, 'page_break', '0', ''),
(924, 75, 'maximum_chars', '', ''),
(923, 75, 'cssclass', '', ''),
(922, 75, 'hidden', '0', ''),
(921, 75, 'display_rows', '', ''),
(920, 75, 'input_size', '', ''),
(919, 75, 'text_input_width', '', ''),
(918, 75, 'hide_tip', '0', ''),
(917, 75, 'em_validation_q_tip', '', 'id'),
(916, 75, 'em_validation_q', '', ''),
(915, 75, 'random_group', '', ''),
(868, 68, 'random_group', '', ''),
(869, 68, 'em_validation_q', '', ''),
(870, 68, 'em_validation_q_tip', '', 'id'),
(871, 68, 'hide_tip', '0', ''),
(872, 68, 'text_input_width', '', ''),
(873, 68, 'input_size', '', ''),
(874, 68, 'display_rows', '', ''),
(875, 68, 'hidden', '0', ''),
(876, 68, 'cssclass', '', ''),
(877, 68, 'maximum_chars', '', ''),
(878, 68, 'page_break', '0', ''),
(879, 68, 'time_limit', '', ''),
(880, 68, 'time_limit_action', '1', ''),
(881, 68, 'time_limit_disable_next', '0', ''),
(882, 68, 'time_limit_disable_prev', '0', ''),
(883, 68, 'time_limit_countdown_message', '', 'id'),
(884, 68, 'time_limit_timer_style', '', ''),
(885, 68, 'time_limit_message_delay', '', ''),
(886, 68, 'time_limit_message', '', 'id'),
(887, 68, 'time_limit_message_style', '', ''),
(888, 68, 'time_limit_warning', '', ''),
(889, 68, 'time_limit_warning_display_time', '', ''),
(890, 68, 'time_limit_warning_message', '', 'id'),
(891, 68, 'time_limit_warning_style', '', ''),
(892, 68, 'time_limit_warning_2', '', ''),
(893, 68, 'time_limit_warning_2_display_time', '', ''),
(894, 68, 'time_limit_warning_2_message', '', 'id'),
(895, 68, 'time_limit_warning_2_style', '', ''),
(896, 68, 'statistics_showgraph', '1', ''),
(897, 68, 'statistics_graphtype', '0', ''),
(898, 68, 'save_as_default', 'N', ''),
(899, 68, 'min_answers', '', ''),
(900, 68, 'max_answers', '', ''),
(901, 68, 'array_filter_exclude', '', ''),
(902, 68, 'array_filter', '', ''),
(903, 68, 'array_filter_style', '0', ''),
(904, 68, 'exclude_all_others', '', ''),
(905, 68, 'em_validation_sq', '', ''),
(906, 68, 'em_validation_sq_tip', '', 'id'),
(907, 68, 'autoaddnewline', 'no', ''),
(908, 68, 'addlineicon', 'plus', ''),
(909, 68, 'prefix', '', 'id'),
(910, 68, 'suffix', '', 'id'),
(911, 68, 'text_input_columns', '', ''),
(912, 68, 'label_input_columns', '', ''),
(913, 68, 'random_order', '0', ''),
(914, 68, 'numbers_only', '0', ''),
(948, 76, 'array_filter_style', '0', ''),
(949, 76, 'array_filter_exclude', '', ''),
(950, 76, 'array_filter', '', ''),
(951, 76, 'exclude_all_others', '', ''),
(952, 76, 'random_group', '', ''),
(953, 76, 'em_validation_q', '', ''),
(954, 76, 'em_validation_q_tip', '', 'id'),
(955, 76, 'em_validation_sq', '', ''),
(956, 76, 'em_validation_sq_tip', '', 'id'),
(957, 76, 'prefix', '', 'id'),
(958, 76, 'suffix', '', 'id'),
(959, 76, 'text_input_columns', '', ''),
(960, 76, 'label_input_columns', '', ''),
(961, 76, 'hide_tip', '0', ''),
(962, 76, 'display_rows', '', ''),
(963, 76, 'input_size', '', ''),
(964, 76, 'random_order', '0', ''),
(965, 76, 'hidden', '0', ''),
(966, 76, 'cssclass', '', ''),
(967, 76, 'maximum_chars', '', ''),
(968, 76, 'page_break', '0', ''),
(969, 76, 'numbers_only', '0', ''),
(970, 76, 'statistics_showgraph', '1', ''),
(971, 76, 'statistics_graphtype', '0', ''),
(972, 76, 'save_as_default', 'N', ''),
(995, 80, 'time_limit_message_style', '', ''),
(996, 80, 'time_limit_warning', '', ''),
(997, 80, 'time_limit_warning_display_time', '', ''),
(998, 80, 'time_limit_warning_message', '', 'id'),
(999, 80, 'time_limit_warning_style', '', ''),
(1000, 80, 'time_limit_warning_2', '', ''),
(1001, 80, 'time_limit_warning_2_display_time', '', ''),
(1002, 80, 'time_limit_warning_2_message', '', 'id'),
(1003, 80, 'time_limit_warning_2_style', '', ''),
(1004, 80, 'statistics_showmap', '1', ''),
(1005, 80, 'statistics_showgraph', '1', ''),
(1006, 80, 'statistics_graphtype', '0', ''),
(1007, 80, 'location_mapservice', '0', ''),
(1008, 80, 'location_nodefaultfromip', '0', ''),
(1009, 80, 'location_postal', '0', ''),
(1010, 80, 'location_city', '0', ''),
(1011, 80, 'location_state', '0', ''),
(1012, 80, 'location_country', '0', ''),
(1013, 80, 'location_mapzoom', '11', ''),
(1014, 80, 'location_defaultcoordinates', '', ''),
(1015, 80, 'location_mapwidth', '500', ''),
(1016, 80, 'location_mapheight', '300', ''),
(1017, 80, 'save_as_default', 'N', ''),
(1018, 81, 'random_group', '', ''),
(1019, 81, 'em_validation_q', '', ''),
(1020, 81, 'em_validation_q_tip', '', 'id'),
(1021, 81, 'reverse', '0', ''),
(1022, 81, 'dropdown_dates', '0', ''),
(1023, 81, 'dropdown_dates_month_style', '0', ''),
(1024, 81, 'hide_tip', '0', ''),
(1025, 81, 'hidden', '0', ''),
(1026, 81, 'cssclass', '', ''),
(1027, 81, 'date_min', '', ''),
(1028, 81, 'date_max', '', ''),
(1029, 81, 'printable_help', '', 'id'),
(1030, 81, 'date_format', '', ''),
(1031, 81, 'dropdown_dates_minute_step', '1', ''),
(1032, 81, 'page_break', '0', ''),
(1033, 81, 'statistics_showgraph', '1', ''),
(1034, 81, 'statistics_graphtype', '0', ''),
(1035, 81, 'save_as_default', 'N', ''),
(1036, 82, 'equation', '', ''),
(1037, 82, 'hidden', '0', ''),
(1038, 82, 'cssclass', '', ''),
(1039, 82, 'printable_help', '', 'id'),
(1040, 82, 'page_break', '0', ''),
(1041, 82, 'scale_export', '0', ''),
(1042, 82, 'numbers_only', '0', ''),
(1043, 82, 'public_statistics', '0', ''),
(1044, 82, 'statistics_showgraph', '1', ''),
(1045, 82, 'statistics_graphtype', '0', ''),
(1046, 82, 'save_as_default', 'N', ''),
(1047, 83, 'random_group', '', ''),
(1048, 83, 'hide_tip', '0', ''),
(1049, 83, 'hidden', '0', ''),
(1050, 83, 'cssclass', '', ''),
(1051, 83, 'page_break', '0', ''),
(1052, 83, 'max_filesize', '10240', ''),
(1053, 83, 'max_num_of_files', '1', ''),
(1054, 83, 'min_num_of_files', '0', ''),
(1055, 83, 'allowed_filetypes', 'png, gif, doc, odt, jpg, jpeg, pdf, png, heic', ''),
(1056, 83, 'statistics_showgraph', '1', ''),
(1057, 83, 'statistics_graphtype', '0', ''),
(1058, 83, 'show_title', '1', ''),
(1059, 83, 'show_comment', '1', ''),
(1060, 83, 'save_as_default', 'N', ''),
(1061, 84, 'random_group', '', ''),
(1062, 84, 'display_type', '0', ''),
(1063, 84, 'hide_tip', '0', ''),
(1064, 84, 'hidden', '0', ''),
(1065, 84, 'cssclass', '', ''),
(1066, 84, 'printable_help', '', 'id'),
(1067, 84, 'page_break', '0', ''),
(1068, 84, 'scale_export', '0', ''),
(1069, 84, 'public_statistics', '0', ''),
(1070, 84, 'statistics_showgraph', '1', ''),
(1071, 84, 'statistics_graphtype', '0', ''),
(1072, 84, 'save_as_default', 'N', ''),
(1073, 85, 'random_group', '', ''),
(1074, 85, 'hide_tip', '0', ''),
(1075, 85, 'hidden', '0', ''),
(1076, 85, 'cssclass', '', ''),
(1077, 85, 'statistics_showgraph', '1', ''),
(1078, 85, 'statistics_graphtype', '0', ''),
(1079, 85, 'save_as_default', 'N', ''),
(1080, 86, 'min_answers', '', ''),
(1081, 86, 'max_answers', '', ''),
(1082, 86, 'array_filter', '', ''),
(1083, 86, 'array_filter_exclude', '', ''),
(1084, 86, 'array_filter_style', '0', ''),
(1085, 86, 'exclude_all_others', '', ''),
(1086, 86, 'random_group', '', ''),
(1087, 86, 'em_validation_q', '', ''),
(1088, 86, 'em_validation_q_tip', '', 'id'),
(1089, 86, 'em_validation_sq', '', ''),
(1090, 86, 'em_validation_sq_tip', '', 'id'),
(1091, 86, 'prefix', '', 'id'),
(1092, 86, 'suffix', '', 'id'),
(1093, 86, 'label_input_columns', '', ''),
(1094, 86, 'random_order', '0', ''),
(1095, 86, 'text_input_width', '', ''),
(1096, 86, 'hide_tip', '0', ''),
(1097, 86, 'input_size', '', ''),
(1098, 86, 'hidden', '0', ''),
(1099, 86, 'cssclass', '', ''),
(1100, 86, 'printable_help', '', 'id'),
(1101, 86, 'value_range_allows_missing', '1', ''),
(1102, 86, 'num_value_int_only', '0', ''),
(1103, 86, 'min_num_value_n', '', ''),
(1104, 86, 'min_num_value', '', ''),
(1105, 86, 'maximum_chars', '', ''),
(1106, 86, 'equals_num_value', '', ''),
(1107, 86, 'max_num_value', '', ''),
(1108, 86, 'max_num_value_n', '', ''),
(1109, 86, 'page_break', '0', ''),
(1110, 86, 'public_statistics', '0', ''),
(1111, 86, 'statistics_showgraph', '1', ''),
(1112, 86, 'statistics_graphtype', '0', ''),
(1113, 86, 'slider_layout', '0', ''),
(1114, 86, 'slider_orientation', '0', ''),
(1115, 86, 'slider_handle', '0', ''),
(1116, 86, 'slider_custom_handle', 'f1ae', ''),
(1117, 86, 'slider_min', '', ''),
(1118, 86, 'slider_max', '', ''),
(1119, 86, 'slider_accuracy', '', ''),
(1120, 86, 'slider_middlestart', '0', ''),
(1121, 86, 'slider_reversed', '0', ''),
(1122, 86, 'slider_reset', '0', ''),
(1123, 86, 'slider_default', '', ''),
(1124, 86, 'slider_default_set', '1', ''),
(1125, 86, 'slider_showminmax', '0', ''),
(1126, 86, 'slider_separator', '|', ''),
(1127, 86, 'save_as_default', 'N', ''),
(1128, 90, 'random_group', '', ''),
(1129, 90, 'em_validation_q', '', ''),
(1130, 90, 'em_validation_q_tip', '', 'id'),
(1131, 90, 'em_validation_sq', '', ''),
(1132, 90, 'em_validation_sq_tip', '', 'id'),
(1133, 90, 'prefix', '', 'id'),
(1134, 90, 'suffix', '', 'id'),
(1135, 90, 'placeholder', '', 'id'),
(1136, 90, 'text_input_width', '', ''),
(1137, 90, 'input_size', '', ''),
(1138, 90, 'hide_tip', '0', ''),
(1139, 90, 'hidden', '0', ''),
(1140, 90, 'cssclass', '', ''),
(1141, 90, 'printable_help', '', 'id'),
(1142, 90, 'maximum_chars', '', ''),
(1143, 90, 'min_num_value_n', '', ''),
(1144, 90, 'num_value_int_only', '0', ''),
(1145, 90, 'max_num_value_n', '', ''),
(1146, 90, 'page_break', '0', ''),
(1147, 90, 'public_statistics', '0', ''),
(1148, 90, 'statistics_showgraph', '1', ''),
(1149, 90, 'statistics_graphtype', '0', ''),
(1150, 90, 'save_as_default', 'N', ''),
(1151, 91, 'min_answers', '', ''),
(1152, 91, 'max_answers', '', ''),
(1153, 91, 'max_subquestions', '3', ''),
(1154, 91, 'array_filter_exclude', '', ''),
(1155, 91, 'array_filter', '', ''),
(1156, 91, 'array_filter_style', '0', ''),
(1157, 91, 'random_group', '', ''),
(1158, 91, 'em_validation_q', '', ''),
(1159, 91, 'em_validation_q_tip', '', 'id'),
(1160, 91, 'answer_order', 'normal', ''),
(1161, 91, 'hide_tip', '0', ''),
(1162, 91, 'hidden', '0', ''),
(1163, 91, 'cssclass', '', ''),
(1164, 91, 'showpopups', '1', ''),
(1165, 91, 'samechoiceheight', '1', ''),
(1166, 91, 'samelistheight', '1', ''),
(1167, 91, 'printable_help', '', 'id'),
(1168, 91, 'page_break', '0', ''),
(1169, 91, 'choice_title', '', 'id'),
(1170, 91, 'rank_title', '', 'id'),
(1171, 91, 'public_statistics', '0', ''),
(1172, 91, 'statistics_showgraph', '1', ''),
(1173, 91, 'statistics_graphtype', '0', ''),
(1174, 91, 'save_as_default', 'N', ''),
(1175, 92, 'min_answers', '', ''),
(1176, 92, 'max_answers', '', ''),
(1177, 92, 'max_subquestions', '3', ''),
(1178, 92, 'array_filter', '', ''),
(1179, 92, 'array_filter_style', '0', ''),
(1180, 92, 'array_filter_exclude', '', ''),
(1181, 92, 'random_group', '', ''),
(1182, 92, 'em_validation_q', '', ''),
(1183, 92, 'em_validation_q_tip', '', 'id'),
(1184, 92, 'only_pull', 'no', ''),
(1185, 92, 'show_number', 'no', ''),
(1186, 92, 'show_handle', 'no', ''),
(1187, 92, 'visualize', 'list', ''),
(1188, 92, 'hide_tip', '0', ''),
(1189, 92, 'answer_order', 'normal', ''),
(1190, 92, 'hidden', '0', ''),
(1191, 92, 'cssclass', '', ''),
(1192, 92, 'showpopups', '1', ''),
(1193, 92, 'samechoiceheight', '1', ''),
(1194, 92, 'samelistheight', '1', ''),
(1195, 92, 'printable_help', '', 'id'),
(1196, 92, 'page_break', '0', ''),
(1197, 92, 'choice_title', '', 'id'),
(1198, 92, 'rank_title', '', 'id'),
(1199, 92, 'public_statistics', '0', ''),
(1200, 92, 'statistics_showgraph', '1', ''),
(1201, 92, 'statistics_graphtype', '0', ''),
(1202, 92, 'save_as_default', 'N', ''),
(1203, 93, 'random_group', '', ''),
(1204, 93, 'hide_tip', '0', ''),
(1205, 93, 'hidden', '0', ''),
(1206, 93, 'cssclass', '', ''),
(1207, 93, 'page_break', '0', ''),
(1208, 93, 'time_limit', '', ''),
(1209, 93, 'time_limit_action', '1', ''),
(1210, 93, 'time_limit_disable_next', '0', ''),
(1211, 93, 'time_limit_disable_prev', '0', ''),
(1212, 93, 'time_limit_countdown_message', '', 'id'),
(1213, 93, 'time_limit_timer_style', '', ''),
(1214, 93, 'time_limit_message_delay', '', ''),
(1215, 93, 'time_limit_message', '', 'id'),
(1216, 93, 'time_limit_message_style', '', ''),
(1217, 93, 'time_limit_warning', '', ''),
(1218, 93, 'time_limit_warning_display_time', '', ''),
(1219, 93, 'time_limit_warning_message', '', 'id'),
(1220, 93, 'time_limit_warning_style', '', ''),
(1221, 93, 'time_limit_warning_2', '', ''),
(1222, 93, 'time_limit_warning_2_display_time', '', ''),
(1223, 93, 'time_limit_warning_2_message', '', 'id'),
(1224, 93, 'time_limit_warning_2_style', '', ''),
(1225, 93, 'statistics_showgraph', '1', ''),
(1226, 93, 'statistics_graphtype', '0', ''),
(1227, 93, 'save_as_default', 'N', ''),
(1228, 94, 'random_group', '', ''),
(1229, 94, 'display_type', '0', ''),
(1230, 94, 'hide_tip', '0', ''),
(1231, 94, 'hidden', '0', ''),
(1232, 94, 'cssclass', '', ''),
(1233, 94, 'printable_help', '', 'id'),
(1234, 94, 'page_break', '0', ''),
(1235, 94, 'scale_export', '0', ''),
(1236, 94, 'public_statistics', '0', ''),
(1237, 94, 'statistics_showgraph', '1', ''),
(1238, 94, 'statistics_graphtype', '0', ''),
(1239, 94, 'save_as_default', 'N', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lime_kuisonerquestion_l10ns`
--

CREATE TABLE `lime_kuisonerquestion_l10ns` (
  `id` int(11) NOT NULL,
  `qid` int(11) NOT NULL,
  `question` mediumtext NOT NULL,
  `help` mediumtext DEFAULT NULL,
  `script` text DEFAULT NULL,
  `language` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `lime_kuisonerquestion_l10ns`
--

INSERT INTO `lime_kuisonerquestion_l10ns` (`id`, `qid`, `question`, `help`, `script`, `language`) VALUES
(4, 4, '', 'Apakah hewan peliharaan pertama anda .?', '', 'id'),
(5, 5, 'joey', NULL, NULL, 'id'),
(3, 3, 'Pertanyaan contoh pertama. Harap jawab pertanyaan ini:', 'Ini adalah teks bantuan pertanyaan.', '', 'id'),
(6, 6, 'hamster', NULL, NULL, 'id'),
(7, 7, 'ular', NULL, NULL, 'id'),
(8, 8, 'apa hobby anda.?', '', '', 'id'),
(9, 9, 'berenang', NULL, NULL, 'id'),
(10, 10, 'lari', NULL, NULL, 'id'),
(11, 11, 'bermain musik', NULL, NULL, 'id'),
(12, 12, 'dimana anda tinggal.?', '', '', 'id'),
(13, 13, 'terst 4', '', '', 'id'),
(14, 14, 'cek1', NULL, NULL, 'id'),
(15, 15, 'cek3', NULL, NULL, 'id'),
(16, 16, 'cek4', NULL, NULL, 'id'),
(17, 17, 'cek5', NULL, NULL, 'id'),
(18, 18, 'cek6', NULL, NULL, 'id'),
(19, 19, '', '', '', 'id'),
(20, 20, 'cek 3', '', '', 'id'),
(21, 21, 'cek 4', 'ini cek untuk bantuan', '', 'id'),
(22, 22, 'cek 5', '', '', 'id'),
(23, 23, 'ini list with comment', '', '', 'id'),
(24, 24, '<h3>Array (10 point choice)</h3>\r\n', '', '', 'id'),
(25, 25, 'renang', NULL, NULL, 'id'),
(26, 26, 'lari', NULL, NULL, 'id'),
(27, 27, 'sepakbola', NULL, NULL, 'id'),
(28, 28, 'Array biasa', '', '', 'id'),
(29, 29, 'renang', NULL, NULL, 'id'),
(30, 30, 'lari', NULL, NULL, 'id'),
(31, 31, 'sepakbola', NULL, NULL, 'id'),
(32, 32, '<h3> </h3>\r\n\r\n<p id=\"selector__questionTypeSelector-currentSelected\">Array (5 point choice)</p>\r\n', '', '', 'id'),
(33, 33, 'renang', NULL, NULL, 'id'),
(34, 34, 'lari', NULL, NULL, 'id'),
(35, 35, 'sepakbola', NULL, NULL, 'id'),
(36, 36, '<h3> </h3>\r\n\r\n<p id=\"selector__questionTypeSelector-currentSelected\">Array (Increase/Same/Decrease)</p>\r\n', '', '', 'id'),
(37, 37, 'joey', NULL, NULL, 'id'),
(38, 38, 'hamster', NULL, NULL, 'id'),
(39, 39, 'ular', NULL, NULL, 'id'),
(40, 40, '<h3> </h3>\r\n\r\n<p id=\"selector__questionTypeSelector-currentSelected\">5 point choice</p>\r\n', '', '', 'id'),
(41, 41, '<h3> </h3>\r\n\r\n<p id=\"selector__questionTypeSelector-currentSelected\">Bootstrap buttons</p>\r\n', '', '', 'id'),
(42, 42, '<h3> </h3>\r\n\r\n<p id=\"selector__questionTypeSelector-currentSelected\">Bootstrap dropdown</p>\r\n', '', '', 'id'),
(43, 43, '<h3> </h3>\r\n\r\n<p id=\"selector__questionTypeSelector-currentSelected\">List (dropdown)</p>\r\n', '', '', 'id'),
(44, 44, '<h3> </h3>\r\n\r\n<p id=\"selector__questionTypeSelector-currentSelected\">List (radio)</p>\r\n', '', '', 'id'),
(45, 45, '<h3> </h3>\r\n\r\n<p id=\"selector__questionTypeSelector-currentSelected\">List with comment</p>\r\n', '', '', 'id'),
(46, 46, '<h3> </h3>\r\n\r\n<p id=\"selector__questionTypeSelector-currentSelected\">Bootstrap buttons</p>\r\n', '', '', 'id'),
(47, 47, 'renang', NULL, NULL, 'id'),
(48, 48, 'lari', NULL, NULL, 'id'),
(49, 49, 'sepakbola', NULL, NULL, 'id'),
(81, 81, '<h3> </h3>\r\n\r\n<p id=\"selector__questionTypeSelector-currentSelected\">Date/Time</p>\r\n', '', '', 'id'),
(80, 80, '<h3> </h3>\r\n\r\n<p id=\"selector__questionTypeSelector-currentSelected\">Short free text</p>\r\n', '', '', 'id'),
(54, 54, '<h3> </h3>\r\n\r\n<p id=\"selector__questionTypeSelector-currentSelected\">Multiple choice</p>\r\n', '', '', 'id'),
(55, 55, 'renang', NULL, NULL, 'id'),
(56, 56, 'lari', NULL, NULL, 'id'),
(57, 57, 'sepakbola', NULL, NULL, 'id'),
(58, 58, '<h3> </h3>\r\n\r\n<p id=\"selector__questionTypeSelector-currentSelected\">Multiple choice with comments</p>\r\n', '', '', 'id'),
(59, 59, 'renang', NULL, NULL, 'id'),
(60, 60, 'lari', NULL, NULL, 'id'),
(61, 61, 'sepakbola', NULL, NULL, 'id'),
(62, 62, '<h3> </h3>\r\n\r\n<p id=\"selector__questionTypeSelector-currentSelected\">Browser detection</p>\r\n', '', '', 'id'),
(63, 63, '<h3> </h3>\r\n\r\n<p id=\"selector__questionTypeSelector-currentSelected\">Huge free text</p>\r\n', '', '', 'id'),
(75, 75, '<h3> </h3>\r\n\r\n<p id=\"selector__questionTypeSelector-currentSelected\">Long free text</p>\r\n', '', '', 'id'),
(74, 74, 'sepakbola', NULL, NULL, 'id'),
(68, 68, '<h3> </h3>\r\n\r\n<p id=\"selector__questionTypeSelector-currentSelected\">Input on demand</p>\r\n', '', '', 'id'),
(73, 73, 'lari', NULL, NULL, 'id'),
(72, 72, 'renang', NULL, NULL, 'id'),
(76, 76, '<h3> </h3>\r\n\r\n<p id=\"selector__questionTypeSelector-currentSelected\">Multiple short text</p>\r\n', '', '', 'id'),
(77, 77, 'renang', NULL, NULL, 'id'),
(78, 78, 'lari', NULL, NULL, 'id'),
(79, 79, 'sepakbola', NULL, NULL, 'id'),
(82, 82, 'Equation', '', '', 'id'),
(83, 83, '<h3> </h3>\r\n\r\n<p id=\"selector__questionTypeSelector-currentSelected\">File upload</p>\r\n', '', '', 'id'),
(84, 84, 'Gender', '', '', 'id'),
(85, 85, '<h3> </h3>\r\n\r\n<p id=\"selector__questionTypeSelector-currentSelected\">Language switch</p>\r\n', '', '', 'id'),
(86, 86, '<h3> </h3>\r\n\r\n<p id=\"selector__questionTypeSelector-currentSelected\">Multiple numerical input</p>\r\n', '', '', 'id'),
(87, 87, 'renang', NULL, NULL, 'id'),
(88, 88, 'lari', NULL, NULL, 'id'),
(89, 89, 'sepakbola', NULL, NULL, 'id'),
(90, 90, '<h3> </h3>\r\n\r\n<p id=\"selector__questionTypeSelector-currentSelected\">Numerical input</p>\r\n', '', '', 'id'),
(91, 91, 'Ranking', '', '', 'id'),
(92, 92, '<h3> </h3>\r\n\r\n<p id=\"selector__questionTypeSelector-currentSelected\">Ranking advanced</p>\r\n', '', '', 'id'),
(93, 93, '<h3> </h3>\r\n\r\n<p id=\"selector__questionTypeSelector-currentSelected\">Text display</p>\r\n', '', '', 'id'),
(94, 94, '<h3> </h3>\r\n\r\n<p id=\"selector__questionTypeSelector-currentSelected\">Yes/No</p>\r\n', '', '', 'id');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lime_kuisonerquestion_themes`
--

CREATE TABLE `lime_kuisonerquestion_themes` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `visible` varchar(1) DEFAULT NULL,
  `xml_path` varchar(255) DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `title` varchar(100) NOT NULL,
  `creation_date` datetime DEFAULT NULL,
  `author` varchar(150) DEFAULT NULL,
  `author_email` varchar(255) DEFAULT NULL,
  `author_url` varchar(255) DEFAULT NULL,
  `copyright` text DEFAULT NULL,
  `license` text DEFAULT NULL,
  `version` varchar(45) DEFAULT NULL,
  `api_version` varchar(45) NOT NULL,
  `description` text DEFAULT NULL,
  `last_update` datetime DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `theme_type` varchar(150) DEFAULT NULL,
  `question_type` varchar(150) NOT NULL,
  `core_theme` tinyint(1) DEFAULT NULL,
  `extends` varchar(150) DEFAULT NULL,
  `group` varchar(150) DEFAULT NULL,
  `settings` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `lime_kuisonerquestion_themes`
--

INSERT INTO `lime_kuisonerquestion_themes` (`id`, `name`, `visible`, `xml_path`, `image_path`, `title`, `creation_date`, `author`, `author_email`, `author_url`, `copyright`, `license`, `version`, `api_version`, `description`, `last_update`, `owner_id`, `theme_type`, `question_type`, `core_theme`, `extends`, `group`, `settings`) VALUES
(1, '5pointchoice', 'Y', 'application/views/survey/questions/answer/5pointchoice', '/assets/images/screenshots/5.png', '5 point choice', '2018-09-08 00:00:00', 'LimeSurvey GmbH', 'info@limesurvey.org', 'http://www.limesurvey.org', 'Copyright (C) 2005 - 2018 LimeSurvey Gmbh, Inc. All rights reserved.', 'GNU General Public License version 2 or later', '1.0', '1', '5 point choice question type configuration', '2019-09-23 15:05:59', 1, 'question_theme', '5', 1, '', 'Single choice questions', '{\"subquestions\":\"0\",\"answerscales\":\"0\",\"hasdefaultvalues\":\"0\",\"assessable\":\"0\",\"class\":\"choice-5-pt-radio\"}'),
(2, 'arrays/10point', 'Y', 'application/views/survey/questions/answer/arrays/10point', '/assets/images/screenshots/B.png', 'Array (10 point choice)', '2018-09-08 00:00:00', 'LimeSurvey GmbH', 'info@limesurvey.org', 'http://www.limesurvey.org', 'Copyright (C) 2005 - 2018 LimeSurvey Gmbh, Inc. All rights reserved.', 'GNU General Public License version 2 or later', '1.0', '1', 'Array (10 point choice) question type configuration', '2019-09-23 15:05:59', 1, 'question_theme', 'B', 1, '', 'Arrays', '{\"subquestions\":\"1\",\"answerscales\":\"0\",\"hasdefaultvalues\":\"0\",\"assessable\":\"1\",\"class\":\"array-10-pt\"}'),
(3, 'arrays/5point', 'Y', 'application/views/survey/questions/answer/arrays/5point', '/assets/images/screenshots/A.png', 'Array (5 point choice)', '2018-09-08 00:00:00', 'LimeSurvey GmbH', 'info@limesurvey.org', 'http://www.limesurvey.org', 'Copyright (C) 2005 - 2018 LimeSurvey Gmbh, Inc. All rights reserved.', 'GNU General Public License version 2 or later', '1.0', '1', 'Array (5 point choice) question type configuration', '2019-09-23 15:05:59', 1, 'question_theme', 'A', 1, '', 'Arrays', '{\"subquestions\":\"1\",\"answerscales\":\"0\",\"hasdefaultvalues\":\"0\",\"assessable\":\"1\",\"class\":\"array-5-pt\"}'),
(4, 'arrays/array', 'Y', 'application/views/survey/questions/answer/arrays/array', '/assets/images/screenshots/F.png', 'Array', '2018-09-08 00:00:00', 'LimeSurvey GmbH', 'info@limesurvey.org', 'http://www.limesurvey.org', 'Copyright (C) 2005 - 2018 LimeSurvey Gmbh, Inc. All rights reserved.', 'GNU General Public License version 2 or later', '1.0', '1', 'Array question type configuration', '2019-09-23 15:05:59', 1, 'question_theme', 'F', 1, '', 'Arrays', '{\"subquestions\":\"1\",\"answerscales\":\"1\",\"hasdefaultvalues\":\"0\",\"assessable\":\"1\",\"class\":\"array-flexible-row\"}'),
(5, 'arrays/column', 'Y', 'application/views/survey/questions/answer/arrays/column', '/assets/images/screenshots/H.png', 'Array by column', '2018-09-08 00:00:00', 'LimeSurvey GmbH', 'info@limesurvey.org', 'http://www.limesurvey.org', 'Copyright (C) 2005 - 2018 LimeSurvey Gmbh, Inc. All rights reserved.', 'GNU General Public License version 2 or later', '1.0', '1', 'Array by column question type configuration', '2019-09-23 15:05:59', 1, 'question_theme', 'H', 1, '', 'Arrays', '{\"subquestions\":\"1\",\"answerscales\":\"1\",\"hasdefaultvalues\":\"0\",\"assessable\":\"1\",\"class\":\"array-flexible-column\"}'),
(6, 'arrays/dualscale', 'Y', 'application/views/survey/questions/answer/arrays/dualscale', '/assets/images/screenshots/1.png', 'Array dual scale', '2018-09-08 00:00:00', 'LimeSurvey GmbH', 'info@limesurvey.org', 'http://www.limesurvey.org', 'Copyright (C) 2005 - 2018 LimeSurvey Gmbh, Inc. All rights reserved.', 'GNU General Public License version 2 or later', '1.0', '1', 'Array dual scale question type configuration', '2019-09-23 15:05:59', 1, 'question_theme', '1', 1, '', 'Arrays', '{\"subquestions\":\"1\",\"answerscales\":\"2\",\"hasdefaultvalues\":\"0\",\"assessable\":\"1\",\"class\":\"array-flexible-dual-scale\"}'),
(7, 'arrays/increasesamedecrease', 'Y', 'application/views/survey/questions/answer/arrays/increasesamedecrease', '/assets/images/screenshots/E.png', 'Array (Increase/Same/Decrease)', '2018-09-08 00:00:00', 'LimeSurvey GmbH', 'info@limesurvey.org', 'http://www.limesurvey.org', 'Copyright (C) 2005 - 2018 LimeSurvey Gmbh, Inc. All rights reserved.', 'GNU General Public License version 2 or later', '1.0', '1', 'Array (Increase/Same/Decrease) question type configuration', '2019-09-23 15:05:59', 1, 'question_theme', 'E', 1, '', 'Arrays', '{\"subquestions\":\"1\",\"answerscales\":\"0\",\"hasdefaultvalues\":\"0\",\"assessable\":\"1\",\"class\":\"array-increase-same-decrease\"}'),
(8, 'arrays/multiflexi', 'Y', 'application/views/survey/questions/answer/arrays/multiflexi', '/assets/images/screenshots/COLON.png', 'Array (Numbers)', '2018-09-08 00:00:00', 'LimeSurvey GmbH', 'info@limesurvey.org', 'http://www.limesurvey.org', 'Copyright (C) 2005 - 2018 LimeSurvey Gmbh, Inc. All rights reserved.', 'GNU General Public License version 2 or later', '1.0', '1', 'Array (Numbers) question type configuration', '2019-09-23 15:05:59', 1, 'question_theme', ':', 1, '', 'Arrays', '{\"subquestions\":\"2\",\"answerscales\":\"0\",\"hasdefaultvalues\":\"0\",\"assessable\":\"1\",\"class\":\"array-multi-flexi\"}'),
(9, 'arrays/texts', 'Y', 'application/views/survey/questions/answer/arrays/texts', '/assets/images/screenshots/;.png', 'Array (Texts)', '2018-09-08 00:00:00', 'LimeSurvey GmbH', 'info@limesurvey.org', 'http://www.limesurvey.org', 'Copyright (C) 2005 - 2018 LimeSurvey Gmbh, Inc. All rights reserved.', 'GNU General Public License version 2 or later', '1.0', '1', 'Array (Texts) question type configuration', '2019-09-23 15:05:59', 1, 'question_theme', ';', 1, '', 'Arrays', '{\"subquestions\":\"2\",\"answerscales\":\"0\",\"hasdefaultvalues\":\"0\",\"assessable\":\"0\",\"class\":\"array-multi-flexi-text\"}'),
(10, 'arrays/yesnouncertain', 'Y', 'application/views/survey/questions/answer/arrays/yesnouncertain', '/assets/images/screenshots/C.png', 'Array (Yes/No/Uncertain)', '2018-09-08 00:00:00', 'LimeSurvey GmbH', 'info@limesurvey.org', 'http://www.limesurvey.org', 'Copyright (C) 2005 - 2018 LimeSurvey Gmbh, Inc. All rights reserved.', 'GNU General Public License version 2 or later', '1.0', '1', 'Array (Yes/No/Uncertain) question type configuration', '2019-09-23 15:05:59', 1, 'question_theme', 'C', 1, '', 'Arrays', '{\"subquestions\":\"1\",\"answerscales\":\"0\",\"hasdefaultvalues\":\"0\",\"assessable\":\"1\",\"class\":\"array-yes-uncertain-no\"}'),
(11, 'boilerplate', 'Y', 'application/views/survey/questions/answer/boilerplate', '/assets/images/screenshots/X.png', 'Text display', '2018-09-08 00:00:00', 'LimeSurvey GmbH', 'info@limesurvey.org', 'http://www.limesurvey.org', 'Copyright (C) 2005 - 2018 LimeSurvey Gmbh, Inc. All rights reserved.', 'GNU General Public License version 2 or later', '1.0', '1', 'Text display question type configuration', '2019-09-23 15:05:59', 1, 'question_theme', 'X', 1, '', 'Mask questions', '{\"subquestions\":\"0\",\"answerscales\":\"0\",\"hasdefaultvalues\":\"0\",\"assessable\":\"0\",\"class\":\"boilerplate\"}'),
(12, 'date', 'Y', 'application/views/survey/questions/answer/date', '/assets/images/screenshots/D.png', 'Date/Time', '2018-09-08 00:00:00', 'LimeSurvey GmbH', 'info@limesurvey.org', 'http://www.limesurvey.org', 'Copyright (C) 2005 - 2018 LimeSurvey Gmbh, Inc. All rights reserved.', 'GNU General Public License version 2 or later', '1.0', '1', 'Date/Time question type configuration', '2019-09-23 15:05:59', 1, 'question_theme', 'D', 1, '', 'Mask questions', '{\"subquestions\":\"0\",\"answerscales\":\"0\",\"hasdefaultvalues\":\"1\",\"assessable\":\"0\",\"class\":\"date\"}'),
(13, 'equation', 'Y', 'application/views/survey/questions/answer/equation', '/assets/images/screenshots/EQUATION.png', 'Equation', '2018-09-08 00:00:00', 'LimeSurvey GmbH', 'info@limesurvey.org', 'http://www.limesurvey.org', 'Copyright (C) 2005 - 2018 LimeSurvey Gmbh, Inc. All rights reserved.', 'GNU General Public License version 2 or later', '1.0', '1', 'Equation question type configuration', '2019-09-23 15:05:59', 1, 'question_theme', '*', 1, '', 'Mask questions', '{\"subquestions\":\"0\",\"answerscales\":\"0\",\"hasdefaultvalues\":\"0\",\"assessable\":\"0\",\"class\":\"equation\"}'),
(14, 'file_upload', 'Y', 'application/views/survey/questions/answer/file_upload', '/assets/images/screenshots/PIPE.png', 'File upload', '2018-09-08 00:00:00', 'LimeSurvey GmbH', 'info@limesurvey.org', 'http://www.limesurvey.org', 'Copyright (C) 2005 - 2018 LimeSurvey Gmbh, Inc. All rights reserved.', 'GNU General Public License version 2 or later', '1.0', '1', 'File upload question type configuration', '2019-09-23 15:05:59', 1, 'question_theme', '|', 1, '', 'Mask questions', '{\"subquestions\":\"0\",\"answerscales\":\"0\",\"hasdefaultvalues\":\"0\",\"assessable\":\"0\",\"class\":\"upload-files\"}'),
(15, 'gender', 'Y', 'application/views/survey/questions/answer/gender', '/assets/images/screenshots/G.png', 'Gender', '2018-09-08 00:00:00', 'LimeSurvey GmbH', 'info@limesurvey.org', 'http://www.limesurvey.org', 'Copyright (C) 2005 - 2018 LimeSurvey Gmbh, Inc. All rights reserved.', 'GNU General Public License version 2 or later', '1.0', '1', 'Gender question type configuration', '2019-09-23 15:05:59', 1, 'question_theme', 'G', 1, '', 'Mask questions', '{\"subquestions\":\"0\",\"answerscales\":\"0\",\"hasdefaultvalues\":\"0\",\"assessable\":\"0\",\"class\":\"gender\"}'),
(16, 'hugefreetext', 'Y', 'application/views/survey/questions/answer/hugefreetext', '/assets/images/screenshots/U.png', 'Huge free text', '1970-01-01 01:00:00', 'LimeSurvey GmbH', 'info@limesurvey.org', 'http://www.limesurvey.org', 'Copyright (C) 2005 - 2018 LimeSurvey Gmbh, Inc. All rights reserved.', 'GNU General Public License version 2 or later', '1.0', '1', 'Huge free text question type configuration', '2019-09-23 15:05:59', 1, 'question_theme', 'U', 1, '', 'Text questions', '{\"subquestions\":\"0\",\"answerscales\":\"0\",\"hasdefaultvalues\":\"1\",\"assessable\":\"0\",\"class\":\"text-huge\"}'),
(17, 'language', 'Y', 'application/views/survey/questions/answer/language', '/assets/images/screenshots/I.png', 'Language switch', '2018-09-08 00:00:00', 'LimeSurvey GmbH', 'info@limesurvey.org', 'http://www.limesurvey.org', 'Copyright (C) 2005 - 2018 LimeSurvey Gmbh, Inc. All rights reserved.', 'GNU General Public License version 2 or later', '1.0', '1', 'Language switch question type configuration', '2019-09-23 15:05:59', 1, 'question_theme', 'I', 1, '', 'Mask questions', '{\"subquestions\":\"0\",\"answerscales\":\"0\",\"hasdefaultvalues\":\"0\",\"assessable\":\"0\",\"class\":\"language\"}'),
(18, 'listradio', 'Y', 'application/views/survey/questions/answer/listradio', '/assets/images/screenshots/L.png', 'List (Radio)', '2018-09-08 00:00:00', 'LimeSurvey GmbH', 'info@limesurvey.org', 'http://www.limesurvey.org', 'Copyright (C) 2005 - 2018 LimeSurvey Gmbh, Inc. All rights reserved.', 'GNU General Public License version 2 or later', '1.0', '1', 'List (radio) question type configuration', '2019-09-23 15:05:59', 1, 'question_theme', 'L', 1, '', 'Single choice questions', '{\"subquestions\":\"0\",\"answerscales\":\"1\",\"hasdefaultvalues\":\"1\",\"assessable\":\"1\",\"class\":\"list-radio\"}'),
(19, 'list_dropdown', 'Y', 'application/views/survey/questions/answer/list_dropdown', '/assets/images/screenshots/!.png', 'List (Dropdown)', '2018-09-08 00:00:00', 'LimeSurvey GmbH', 'info@limesurvey.org', 'http://www.limesurvey.org', 'Copyright (C) 2005 - 2018 LimeSurvey Gmbh, Inc. All rights reserved.', 'GNU General Public License version 2 or later', '1.0', '1', 'List (dropdown) question type configuration', '2019-09-23 15:05:59', 1, 'question_theme', '!', 1, '', 'Single choice questions', '{\"subquestions\":\"0\",\"answerscales\":\"1\",\"hasdefaultvalues\":\"1\",\"assessable\":\"1\",\"class\":\"list-dropdown\"}'),
(20, 'list_with_comment', 'Y', 'application/views/survey/questions/answer/list_with_comment', '/assets/images/screenshots/O.png', 'List with comment', '2018-09-08 00:00:00', 'LimeSurvey GmbH', 'info@limesurvey.org', 'http://www.limesurvey.org', 'Copyright (C) 2005 - 2018 LimeSurvey Gmbh, Inc. All rights reserved.', 'GNU General Public License version 2 or later', '1.0', '1', 'List with comment question type configuration', '2019-09-23 15:05:59', 1, 'question_theme', 'O', 1, '', 'Single choice questions', '{\"subquestions\":\"0\",\"answerscales\":\"1\",\"hasdefaultvalues\":\"1\",\"assessable\":\"1\",\"class\":\"list-with-comment\"}'),
(21, 'longfreetext', 'Y', 'application/views/survey/questions/answer/longfreetext', '/assets/images/screenshots/T.png', 'Long free text', '2018-09-08 00:00:00', 'LimeSurvey GmbH', 'info@limesurvey.org', 'http://www.limesurvey.org', 'Copyright (C) 2005 - 2018 LimeSurvey Gmbh, Inc. All rights reserved.', 'GNU General Public License version 2 or later', '1.0', '1', 'Long free text question type configuration', '2019-09-23 15:05:59', 1, 'question_theme', 'T', 1, '', 'Text questions', '{\"subquestions\":\"0\",\"answerscales\":\"0\",\"hasdefaultvalues\":\"1\",\"assessable\":\"0\",\"class\":\"text-long\"}'),
(22, 'multiplechoice', 'Y', 'application/views/survey/questions/answer/multiplechoice', '/assets/images/screenshots/M.png', 'Multiple choice', '2018-09-08 00:00:00', 'LimeSurvey GmbH', 'info@limesurvey.org', 'http://www.limesurvey.org', 'Copyright (C) 2005 - 2018 LimeSurvey Gmbh, Inc. All rights reserved.', 'GNU General Public License version 2 or later', '1.0', '1', 'Multiple choice question type configuration', '2019-09-23 15:05:59', 1, 'question_theme', 'M', 1, '', 'Multiple choice questions', '{\"subquestions\":\"1\",\"answerscales\":\"0\",\"hasdefaultvalues\":\"1\",\"assessable\":\"1\",\"class\":\"multiple-opt\"}'),
(23, 'multiplechoice_with_comments', 'Y', 'application/views/survey/questions/answer/multiplechoice_with_comments', '/assets/images/screenshots/P.png', 'Multiple choice with comments', '2018-09-08 00:00:00', 'LimeSurvey GmbH', 'info@limesurvey.org', 'http://www.limesurvey.org', 'Copyright (C) 2005 - 2018 LimeSurvey Gmbh, Inc. All rights reserved.', 'GNU General Public License version 2 or later', '1.0', '1', 'Multiple choice with comments question type configuration', '2019-09-23 15:05:59', 1, 'question_theme', 'P', 1, '', 'Multiple choice questions', '{\"subquestions\":\"1\",\"answerscales\":\"0\",\"hasdefaultvalues\":\"1\",\"assessable\":\"1\",\"class\":\"multiple-opt-comments\"}'),
(24, 'multiplenumeric', 'Y', 'application/views/survey/questions/answer/multiplenumeric', '/assets/images/screenshots/K.png', 'Multiple numerical input', '2018-09-08 00:00:00', 'LimeSurvey GmbH', 'info@limesurvey.org', 'http://www.limesurvey.org', 'Copyright (C) 2005 - 2018 LimeSurvey Gmbh, Inc. All rights reserved.', 'GNU General Public License version 2 or later', '1.0', '1', 'Multiple numerical input question type configuration', '2019-09-23 15:05:59', 1, 'question_theme', 'K', 1, '', 'Mask questions', '{\"subquestions\":\"1\",\"answerscales\":\"0\",\"hasdefaultvalues\":\"1\",\"assessable\":\"1\",\"class\":\"numeric-multi\"}'),
(25, 'multipleshorttext', 'Y', 'application/views/survey/questions/answer/multipleshorttext', '/assets/images/screenshots/Q.png', 'Multiple short text', '2018-09-08 00:00:00', 'LimeSurvey GmbH', 'info@limesurvey.org', 'http://www.limesurvey.org', 'Copyright (C) 2005 - 2018 LimeSurvey Gmbh, Inc. All rights reserved.', 'GNU General Public License version 2 or later', '1.0', '1', 'Multiple short text question type configuration', '2019-09-23 15:05:59', 1, 'question_theme', 'Q', 1, '', 'Text questions', '{\"subquestions\":\"1\",\"answerscales\":\"0\",\"hasdefaultvalues\":\"1\",\"assessable\":\"0\",\"class\":\"multiple-short-txt\"}'),
(26, 'numerical', 'Y', 'application/views/survey/questions/answer/numerical', '/assets/images/screenshots/N.png', 'Numerical input', '2018-09-08 00:00:00', 'LimeSurvey GmbH', 'info@limesurvey.org', 'http://www.limesurvey.org', 'Copyright (C) 2005 - 2018 LimeSurvey Gmbh, Inc. All rights reserved.', 'GNU General Public License version 2 or later', '1.0', '1', 'Numerical input question type configuration', '2019-09-23 15:05:59', 1, 'question_theme', 'N', 1, '', 'Mask questions', '{\"subquestions\":\"0\",\"answerscales\":\"0\",\"hasdefaultvalues\":\"1\",\"assessable\":\"0\",\"class\":\"numeric\"}'),
(27, 'ranking', 'Y', 'application/views/survey/questions/answer/ranking', '/assets/images/screenshots/R.png', 'Ranking', '2018-09-08 00:00:00', 'LimeSurvey GmbH', 'info@limesurvey.org', 'http://www.limesurvey.org', 'Copyright (C) 2005 - 2018 LimeSurvey Gmbh, Inc. All rights reserved.', 'GNU General Public License version 2 or later', '1.0', '1', 'Ranking question type configuration', '2019-09-23 15:05:59', 1, 'question_theme', 'R', 1, '', 'Mask questions', '{\"subquestions\":\"0\",\"answerscales\":\"1\",\"hasdefaultvalues\":\"0\",\"assessable\":\"1\",\"class\":\"ranking\"}'),
(28, 'shortfreetext', 'Y', 'application/views/survey/questions/answer/shortfreetext', '/assets/images/screenshots/S.png', 'Short free text', '2018-09-08 00:00:00', 'LimeSurvey GmbH', 'info@limesurvey.org', 'http://www.limesurvey.org', 'Copyright (C) 2005 - 2018 LimeSurvey Gmbh, Inc. All rights reserved.', 'GNU General Public License version 2 or later', '1.0', '1', 'Short free text question type configuration', '2019-09-23 15:05:59', 1, 'question_theme', 'S', 1, '', 'Text questions', '{\"subquestions\":\"0\",\"answerscales\":\"0\",\"hasdefaultvalues\":\"1\",\"assessable\":\"0\",\"class\":\"text-short\"}'),
(29, 'yesno', 'Y', 'application/views/survey/questions/answer/yesno', '/assets/images/screenshots/Y.png', 'Yes/No', '2018-09-08 00:00:00', 'LimeSurvey GmbH', 'info@limesurvey.org', 'http://www.limesurvey.org', 'Copyright (C) 2005 - 2018 LimeSurvey Gmbh, Inc. All rights reserved.', 'GNU General Public License version 2 or later', '1.0', '1', 'Yes/No question type configuration', '2019-09-23 15:05:59', 1, 'question_theme', 'Y', 1, '', 'Mask questions', '{\"subquestions\":\"0\",\"answerscales\":\"0\",\"hasdefaultvalues\":\"1\",\"assessable\":\"0\",\"class\":\"yes-no\"}'),
(30, 'bootstrap_dropdown', 'Y', 'themes/question/bootstrap_dropdown/survey/questions/answer/list_dropdown', '/themes/question/bootstrap_dropdown/survey/questions/answer/list_dropdown/assets/bootstrap_dropdown_list_dropdown.png', 'Bootstrap dropdown', '1970-01-01 01:00:00', 'Adam Zammit', 'adam.zammit@acspri.org.au', 'https://www.acspri.org.au', 'Copyright (C) 2021 The Australian Consortium for Social and Political Research Incorporated (ACSPRI)', 'GNU General Public License version 2 or later', '1.0', '1', 'Bootstrap dropdown theme', '2021-09-29 12:00:00', 1, 'question_theme', '!', 1, '!', 'Single choice questions', '{\"subquestions\":\"0\",\"answerscales\":\"1\",\"hasdefaultvalues\":\"1\",\"assessable\":\"1\",\"class\":\"list-dropdown\"}'),
(31, 'bootstrap_buttons', 'Y', 'themes/question/bootstrap_buttons/survey/questions/answer/listradio', '/themes/question/bootstrap_buttons/survey/questions/answer/listradio/assets/bootstrap_buttons_listradio.png', 'Bootstrap buttons', '1970-01-01 01:00:00', 'LimeSurvey GmbH', 'info@limesurvey.org', 'http://www.limesurvey.org', 'Copyright (C) 2005 - 2018 LimeSurvey Gmbh, Inc. All rights reserved.', 'GNU General Public License version 2 or later', '1.0', '1', 'New implementation of the Bootstrap buttons question theme', '2019-09-23 15:05:59', 1, 'question_theme', 'L', 1, 'L', 'Single choice questions', '{\"subquestions\":\"0\",\"answerscales\":\"1\",\"hasdefaultvalues\":\"1\",\"assessable\":\"1\",\"class\":\"list-radio\"}'),
(32, 'bootstrap_buttons_multi', 'Y', 'themes/question/bootstrap_buttons_multi/survey/questions/answer/multiplechoice', '/themes/question/bootstrap_buttons_multi/survey/questions/answer/multiplechoice/assets/bootstrap_buttons_multiplechoice.png', 'Bootstrap buttons', '1970-01-01 01:00:00', 'LimeSurvey GmbH', 'info@limesurvey.org', 'http://www.limesurvey.org', 'Copyright (C) 2005 - 2018 LimeSurvey Gmbh, Inc. All rights reserved.', 'GNU General Public License version 2 or later', '1.0', '1', 'New implementation of the Bootstrap buttons question theme', '2019-09-23 15:05:59', 1, 'question_theme', 'M', 1, 'M', 'Multiple choice questions', '{\"subquestions\":\"1\",\"answerscales\":\"0\",\"hasdefaultvalues\":\"1\",\"assessable\":\"1\",\"class\":\"multiple-opt\"}'),
(33, 'browserdetect', 'Y', 'themes/question/browserdetect/survey/questions/answer/shortfreetext', '/assets/images/screenshots/S.png', 'Browser detection', '2017-07-09 00:00:00', 'LimeSurvey GmbH', 'info@limesurvey.org', 'http://www.limesurvey.org', 'Copyright (C) 2005 - 2017 LimeSurvey Gmbh, Inc. All rights reserved.', 'GNU General Public License version 2 or later', '1.0', '1', 'Browser, Platform and Proxy detection', '2019-09-23 15:05:59', 1, 'question_theme', 'S', 1, 'S', 'Text questions', '{\"subquestions\":\"0\",\"answerscales\":\"0\",\"hasdefaultvalues\":\"1\",\"assessable\":\"0\",\"class\":\"text-short\"}'),
(34, 'image_select-listradio', 'Y', 'themes/question/image_select/survey/questions/answer/listradio', '/assets/images/screenshots/L.png', 'Image select list (Radio)', '1970-01-01 01:00:00', 'LimeSurvey GmbH', 'info@limesurvey.org', 'http://www.limesurvey.org', 'Copyright (C) 2005 - 2016 LimeSurvey Gmbh, Inc. All rights reserved.', 'GNU General Public License version 2 or later', '1.0', '1', 'List Radio with images.', '2019-09-23 15:05:59', 1, 'question_theme', 'L', 1, 'L', 'Single choice questions', '{\"subquestions\":\"0\",\"answerscales\":\"1\",\"hasdefaultvalues\":\"1\",\"assessable\":\"1\",\"class\":\"list-radio\"}'),
(35, 'image_select-multiplechoice', 'Y', 'themes/question/image_select/survey/questions/answer/multiplechoice', '/assets/images/screenshots/M.png', 'Image select multiple choice', '1970-01-01 01:00:00', 'LimeSurvey GmbH', 'info@limesurvey.org', 'http://www.limesurvey.org', 'Copyright (C) 2005 - 2016 LimeSurvey Gmbh, Inc. All rights reserved.', 'GNU General Public License version 2 or later', '1.0', '1', 'Multiplechoice with images.', '2019-09-23 15:05:59', 1, 'question_theme', 'M', 1, 'M', 'Multiple choice questions', '{\"subquestions\":\"1\",\"answerscales\":\"0\",\"hasdefaultvalues\":\"1\",\"assessable\":\"1\",\"class\":\"multiple-opt\"}'),
(36, 'inputondemand', 'Y', 'themes/question/inputondemand/survey/questions/answer/multipleshorttext', '/assets/images/screenshots/Q.png', 'Input on demand', '2019-10-04 00:00:00', 'LimeSurvey GmbH', 'info@limesurvey.org', 'http://www.limesurvey.org', 'Copyright (C) 2005 - 2019 LimeSurvey Gmbh, Inc. All rights reserved.', 'GNU General Public License version 2 or later', '1.0', '1', 'Hide not needed input fields in multiple shorttext', '2019-09-23 15:05:59', 1, 'question_theme', 'Q', 1, 'Q', 'Text questions', '{\"subquestions\":\"1\",\"answerscales\":\"0\",\"hasdefaultvalues\":\"1\",\"assessable\":\"0\",\"class\":\"multiple-short-txt\"}'),
(37, 'ranking_advanced', 'Y', 'themes/question/ranking_advanced/survey/questions/answer/ranking', '/assets/images/screenshots/R.png', 'Ranking advanced', '1970-01-01 01:00:00', 'LimeSurvey GmbH', 'info@limesurvey.org', 'http://www.limesurvey.org', 'Copyright (C) 2005 - 2017 LimeSurvey Gmbh, Inc. All rights reserved.', 'GNU General Public License version 2 or later', '1.0', '1', 'New implementation of the ranking question', '2019-09-23 15:05:59', 1, 'question_theme', 'R', 1, 'R', 'Mask questions', '{\"subquestions\":\"0\",\"answerscales\":\"1\",\"hasdefaultvalues\":\"0\",\"assessable\":\"1\",\"class\":\"ranking\"}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lime_kuisonerquota`
--

CREATE TABLE `lime_kuisonerquota` (
  `id` int(11) NOT NULL,
  `sid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `qlimit` int(11) DEFAULT NULL,
  `action` int(11) DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT 1,
  `autoload_url` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `lime_kuisonerquota_languagesettings`
--

CREATE TABLE `lime_kuisonerquota_languagesettings` (
  `quotals_id` int(11) NOT NULL,
  `quotals_quota_id` int(11) NOT NULL DEFAULT 0,
  `quotals_language` varchar(45) NOT NULL DEFAULT 'en',
  `quotals_name` varchar(255) DEFAULT NULL,
  `quotals_message` mediumtext NOT NULL,
  `quotals_url` varchar(255) DEFAULT NULL,
  `quotals_urldescrip` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `lime_kuisonerquota_members`
--

CREATE TABLE `lime_kuisonerquota_members` (
  `id` int(11) NOT NULL,
  `sid` int(11) DEFAULT NULL,
  `qid` int(11) DEFAULT NULL,
  `quota_id` int(11) DEFAULT NULL,
  `code` varchar(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `lime_kuisonersaved_control`
--

CREATE TABLE `lime_kuisonersaved_control` (
  `scid` int(11) NOT NULL,
  `sid` int(11) NOT NULL DEFAULT 0,
  `srid` int(11) NOT NULL DEFAULT 0,
  `identifier` text NOT NULL,
  `access_code` text NOT NULL,
  `email` varchar(192) DEFAULT NULL,
  `ip` text NOT NULL,
  `saved_thisstep` text NOT NULL,
  `status` varchar(1) NOT NULL DEFAULT '',
  `saved_date` datetime NOT NULL,
  `refurl` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `lime_kuisonersessions`
--

CREATE TABLE `lime_kuisonersessions` (
  `id` varchar(32) NOT NULL,
  `expire` int(11) DEFAULT NULL,
  `data` longblob DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `lime_kuisonersettings_global`
--

CREATE TABLE `lime_kuisonersettings_global` (
  `stg_name` varchar(50) NOT NULL DEFAULT '',
  `stg_value` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `lime_kuisonersettings_global`
--

INSERT INTO `lime_kuisonersettings_global` (`stg_name`, `stg_value`) VALUES
('sendadmincreationemail', '1'),
('admincreationemailsubject', 'User registration at \'{SITENAME}\''),
('admincreationemailtemplate', '<p>Hello {FULLNAME}, </p><p>This is an automated email notification that a user has been created for you on the website <strong>\'{SITENAME}\'</strong>.</p><p></p><p>You can use now the following credentials to log in:</p><p><strong>Username</strong>: {USERNAME}</p><p><a href=\"{LOGINURL}\">Click here to set your password</a></p><p>If you have any questions regarding this email, please do not hesitate to contact the site administrator at {SITEADMINEMAIL}.</p><p> </p><p>Thank you!</p>'),
('DBVersion', '613'),
('SessionName', 'ZOFPEETYPDDIOJAQICTFWPWIDYZHUMFIPDNPADEKGGAAJYLZYBVQTNUIQEEZGXMZ'),
('sitename', 'LimeSurvey'),
('siteadminname', 'Administrator'),
('siteadminemail', 'your-email@example.net'),
('siteadminbounce', 'your-email@example.net'),
('defaultlang', 'en'),
('AssetsVersion', '30351'),
('last_survey_1', '397312');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lime_kuisonersettings_user`
--

CREATE TABLE `lime_kuisonersettings_user` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `entity` varchar(15) DEFAULT NULL,
  `entity_id` varchar(31) DEFAULT NULL,
  `stg_name` varchar(63) NOT NULL,
  `stg_value` mediumtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `lime_kuisonersettings_user`
--

INSERT INTO `lime_kuisonersettings_user` (`id`, `uid`, `entity`, `entity_id`, `stg_name`, `stg_value`) VALUES
(1, 1, NULL, NULL, 'quickaction_state', '1'),
(2, 2, NULL, NULL, 'editorPreset', 'wysiwyg'),
(3, 2, NULL, NULL, 'showScriptEdit', '1'),
(4, 2, NULL, NULL, 'noViewMode', '0'),
(5, 2, NULL, NULL, 'answeroptionprefix', 'AO'),
(6, 2, NULL, NULL, 'subquestionprefix', 'SQ'),
(7, 2, NULL, NULL, 'lock_organizer', '0'),
(8, 1, NULL, NULL, 'preselectquestiontype', 'T'),
(9, 1, NULL, NULL, 'preselectquestiontheme', 'longfreetext'),
(10, 1, NULL, NULL, 'showScriptEdit', '0'),
(11, 1, NULL, NULL, 'noViewMode', '0'),
(12, 1, NULL, NULL, 'answeroptionprefix', 'AO'),
(13, 1, NULL, NULL, 'subquestionprefix', 'SQ'),
(14, 1, NULL, NULL, 'lock_organizer', '1'),
(15, 1, NULL, NULL, 'createsample', 'default'),
(16, 3, NULL, NULL, 'editorPreset', 'wysiwyg'),
(17, 3, NULL, NULL, 'showScriptEdit', '1'),
(18, 3, NULL, NULL, 'noViewMode', '0'),
(19, 3, NULL, NULL, 'answeroptionprefix', 'AO'),
(20, 3, NULL, NULL, 'subquestionprefix', 'SQ'),
(21, 3, NULL, NULL, 'lock_organizer', '0'),
(22, 4, NULL, NULL, 'editorPreset', 'wysiwyg'),
(23, 4, NULL, NULL, 'showScriptEdit', '1'),
(24, 4, NULL, NULL, 'noViewMode', '0'),
(25, 4, NULL, NULL, 'answeroptionprefix', 'AO'),
(26, 4, NULL, NULL, 'subquestionprefix', 'SQ'),
(27, 4, NULL, NULL, 'lock_organizer', '0'),
(28, 6, NULL, NULL, 'editorPreset', 'wysiwyg'),
(29, 6, NULL, NULL, 'showScriptEdit', '1'),
(30, 6, NULL, NULL, 'noViewMode', '0'),
(31, 6, NULL, NULL, 'answeroptionprefix', 'AO'),
(32, 6, NULL, NULL, 'subquestionprefix', 'SQ'),
(33, 6, NULL, NULL, 'lock_organizer', '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lime_kuisonersource_message`
--

CREATE TABLE `lime_kuisonersource_message` (
  `id` int(11) NOT NULL,
  `category` varchar(35) DEFAULT NULL,
  `message` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `lime_kuisonersurveymenu`
--

CREATE TABLE `lime_kuisonersurveymenu` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `survey_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `ordering` int(11) DEFAULT 0,
  `level` int(11) DEFAULT 0,
  `title` varchar(168) NOT NULL DEFAULT '',
  `position` varchar(192) NOT NULL DEFAULT 'side',
  `description` text DEFAULT NULL,
  `showincollapse` int(11) DEFAULT 0,
  `active` int(11) NOT NULL DEFAULT 0,
  `changed_at` datetime DEFAULT NULL,
  `changed_by` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `lime_kuisonersurveymenu`
--

INSERT INTO `lime_kuisonersurveymenu` (`id`, `parent_id`, `survey_id`, `user_id`, `name`, `ordering`, `level`, `title`, `position`, `description`, `showincollapse`, `active`, `changed_at`, `changed_by`, `created_at`, `created_by`) VALUES
(1, NULL, NULL, NULL, 'settings', 1, 0, 'Survey settings', 'side', 'Survey settings', 1, 1, '2023-08-31 05:20:42', 0, '2023-08-31 05:20:42', 0),
(2, NULL, NULL, NULL, 'mainmenu', 2, 0, 'Survey menu', 'side', 'Main survey menu', 1, 1, '2023-08-31 05:20:42', 0, '2023-08-31 05:20:42', 0),
(3, NULL, NULL, NULL, 'quickmenu', 3, 0, 'Quick menu', 'collapsed', 'Quick menu', 0, 1, '2023-08-31 05:20:42', 0, '2023-08-31 05:20:42', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `lime_kuisonersurveymenu_entries`
--

CREATE TABLE `lime_kuisonersurveymenu_entries` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ordering` int(11) DEFAULT 0,
  `name` varchar(168) DEFAULT '',
  `title` varchar(168) NOT NULL DEFAULT '',
  `menu_title` varchar(168) NOT NULL DEFAULT '',
  `menu_description` text DEFAULT NULL,
  `menu_icon` varchar(192) NOT NULL DEFAULT '',
  `menu_icon_type` varchar(192) NOT NULL DEFAULT '',
  `menu_class` varchar(192) NOT NULL DEFAULT '',
  `menu_link` varchar(192) NOT NULL DEFAULT '',
  `action` varchar(192) NOT NULL DEFAULT '',
  `template` varchar(192) NOT NULL DEFAULT '',
  `partial` varchar(192) NOT NULL DEFAULT '',
  `classes` varchar(192) NOT NULL DEFAULT '',
  `permission` varchar(192) NOT NULL DEFAULT '',
  `permission_grade` varchar(192) DEFAULT NULL,
  `data` mediumtext DEFAULT NULL,
  `getdatamethod` varchar(192) NOT NULL DEFAULT '',
  `language` varchar(32) NOT NULL DEFAULT 'en-GB',
  `showincollapse` int(11) DEFAULT 0,
  `active` int(11) NOT NULL DEFAULT 0,
  `changed_at` datetime DEFAULT NULL,
  `changed_by` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `lime_kuisonersurveymenu_entries`
--

INSERT INTO `lime_kuisonersurveymenu_entries` (`id`, `menu_id`, `user_id`, `ordering`, `name`, `title`, `menu_title`, `menu_description`, `menu_icon`, `menu_icon_type`, `menu_class`, `menu_link`, `action`, `template`, `partial`, `classes`, `permission`, `permission_grade`, `data`, `getdatamethod`, `language`, `showincollapse`, `active`, `changed_at`, `changed_by`, `created_at`, `created_by`) VALUES
(1, 1, NULL, 1, 'overview', 'Survey overview', 'Overview', 'Open the general survey overview', 'ri-bar-chart-horizontal-line', 'remix', '', 'surveyAdministration/view', '', '', '', '', '', '', '{\"render\": { \"link\": {\"data\": {\"surveyid\": [\"survey\",\"sid\"]}}}}', '', 'en-GB', 0, 1, '2023-08-31 05:20:42', 0, '2023-08-31 05:20:42', 0),
(2, 1, NULL, 2, 'generalsettings', 'General survey settings', 'General settings', 'Open general survey settings', 'ri-tools-line', 'remix', '', '', 'updatesurveylocalesettings_generalsettings', 'editLocalSettings_main_view', '/admin/survey/subview/accordion/_generaloptions_panel', '', 'surveysettings', 'read', NULL, 'generalTabEditSurvey', 'en-GB', 1, 1, '2023-08-31 05:20:42', 0, '2023-08-31 05:20:42', 0),
(3, 1, NULL, 3, 'surveytexts', 'Survey text elements', 'Text elements', 'Survey text elements', 'ri-text-spacing', 'remix', '', '', 'updatesurveylocalesettings', 'editLocalSettings_main_view', '/admin/survey/subview/tab_edit_view', '', 'surveylocale', 'read', NULL, 'getTextEditData', 'en-GB', 1, 1, '2023-08-31 05:20:42', 0, '2023-08-31 05:20:42', 0),
(4, 1, NULL, 4, 'datasecurity', 'Privacy policy settings', 'Privacy policy', 'Edit privacy policy settings', 'ri-shield-line', 'remix', '', '', 'updatesurveylocalesettings', 'editLocalSettings_main_view', '/admin/survey/subview/tab_edit_view_datasecurity', '', 'surveylocale', 'read', NULL, 'getDataSecurityEditData', 'en-GB', 1, 1, '2023-08-31 05:20:42', 0, '2023-08-31 05:20:42', 0),
(5, 1, NULL, 5, 'theme_options', 'Theme options', 'Theme options', 'Edit theme options for this survey', 'ri-contrast-drop-fill', 'remix', '', 'themeOptions/updateSurvey', '', '', '', '', 'surveysettings', 'update', '{\"render\": {\"link\": { \"pjaxed\": true, \"data\": {\"surveyid\": [\"survey\",\"sid\"], \"gsid\":[\"survey\",\"gsid\"]}}}}', '', 'en-GB', 0, 1, '2023-08-31 05:20:42', 0, '2023-08-31 05:20:42', 0),
(6, 1, NULL, 6, 'presentation', 'Presentation & navigation settings', 'Presentation', 'Edit presentation and navigation settings', 'ri-slideshow-line', 'remix', '', '', 'updatesurveylocalesettings', 'editLocalSettings_main_view', '/admin/survey/subview/accordion/_presentation_panel', '', 'surveylocale', 'read', NULL, 'tabPresentationNavigation', 'en-GB', 0, 1, '2023-08-31 05:20:42', 0, '2023-08-31 05:20:42', 0),
(7, 1, NULL, 7, 'tokens', 'Survey participant settings', 'Participant settings', 'Set additional options for survey participants', 'ri-body-scan-fill', 'remix', '', '', 'updatesurveylocalesettings', 'editLocalSettings_main_view', '/admin/survey/subview/accordion/_tokens_panel', '', 'surveylocale', 'read', NULL, 'tabTokens', 'en-GB', 0, 1, '2023-08-31 05:20:42', 0, '2023-08-31 05:20:42', 0),
(8, 1, NULL, 8, 'notification', 'Notification and data management settings', 'Notifications & data', 'Edit settings for notification and data management', 'ri-notification-line', 'remix', '', '', 'updatesurveylocalesettings', 'editLocalSettings_main_view', '/admin/survey/subview/accordion/_notification_panel', '', 'surveylocale', 'read', NULL, 'tabNotificationDataManagement', 'en-GB', 0, 1, '2023-08-31 05:20:42', 0, '2023-08-31 05:20:42', 0),
(9, 1, NULL, 9, 'publication', 'Publication & access control settings', 'Publication & access', 'Edit settings for publication and access control', 'ri-key-line', 'remix', '', '', 'updatesurveylocalesettings', 'editLocalSettings_main_view', '/admin/survey/subview/accordion/_publication_panel', '', 'surveylocale', 'read', NULL, 'tabPublicationAccess', 'en-GB', 0, 1, '2023-08-31 05:20:42', 0, '2023-08-31 05:20:42', 0),
(10, 1, NULL, 10, 'surveypermissions', 'Edit survey permissions', 'Survey permissions', 'Edit permissions for this survey', 'ri-lock-password-line', 'remix', '', 'surveyPermissions/index', '', '', '', '', 'surveysecurity', 'read', '{\"render\": { \"link\": {\"data\": {\"surveyid\": [\"survey\",\"sid\"]}}}}', '', 'en-GB', 0, 1, '2023-08-31 05:20:42', 0, '2023-08-31 05:20:42', 0),
(11, 2, NULL, 1, 'listQuestions', 'Overview questions & groups', 'Overview questions & groups', 'Overview of questions and groups where you can add, edit and reorder them', '', 'remix', '', 'questionAdministration/listQuestions', '', '', '', '', 'surveycontent', 'read', '{\"render\": { \"link\": {\"data\": {\"surveyid\": [\"survey\",\"sid\"]}}}}', '', 'en-GB', 1, 1, '2023-08-31 05:20:42', 0, '2023-08-31 05:20:42', 0),
(12, 2, NULL, 4, 'participants', 'Survey participants', 'Survey participants', 'Go to survey participant and token settings', '', 'remix', '', 'admin/tokens/sa/index/', '', '', '', '', 'tokens', 'read', '{\"render\": { \"link\": {\"data\": {\"surveyid\": [\"survey\",\"sid\"]}}}}', '', 'en-GB', 1, 1, '2023-08-31 05:20:42', 0, '2023-08-31 05:20:42', 0),
(13, 2, NULL, 5, 'emailtemplates', 'Email templates', 'Email templates', 'Edit the templates for invitation, reminder and registration emails', '', 'remix', '', 'admin/emailtemplates/sa/index/', '', '', '', '', 'surveylocale', 'read', '{\"render\": { \"link\": {\"data\": {\"surveyid\": [\"survey\",\"sid\"]}}}}', '', 'en-GB', 0, 1, '2023-08-31 05:20:42', 0, '2023-08-31 05:20:42', 0),
(14, 2, NULL, 6, 'failedemail', 'Failed email notifications', 'Failed email notifications', 'View and resend failed email notifications', '', 'remix', '', 'failedEmail/index/', '', '', '', '', 'surveylocale', 'read', '{\"render\": { \"link\": {\"data\": {\"surveyid\": [\"survey\",\"sid\"]}}}}', '', 'en-GB', 0, 1, '2023-08-31 05:20:42', 0, '2023-08-31 05:20:42', 0),
(15, 2, NULL, 7, 'quotas', 'Edit quotas', 'Quotas', 'Edit quotas for this survey.', '', 'remix', '', 'quotas/index/', '', '', '', '', 'quotas', 'read', '{\"render\": { \"link\": {\"data\": {\"surveyid\": [\"survey\",\"sid\"]}}}}', '', 'en-GB', 0, 1, '2023-08-31 05:20:42', 0, '2023-08-31 05:20:42', 0),
(16, 2, NULL, 8, 'assessments', 'Edit assessments', 'Assessments', 'Edit and look at the assessements for this survey.', '', 'remix', '', 'assessment/index', '', '', '', '', 'assessments', 'read', '{\"render\": { \"link\": {\"data\": {\"surveyid\": [\"survey\",\"sid\"]}}}}', '', 'en-GB', 0, 1, '2023-08-31 05:20:42', 0, '2023-08-31 05:20:42', 0),
(17, 2, NULL, 9, 'panelintegration', 'Edit survey panel integration', 'Panel integration', 'Define panel integrations for your survey', '', 'remix', '', '', 'updatesurveylocalesettings', 'editLocalSettings_main_view', '/admin/survey/subview/accordion/_integration_panel', '', 'surveylocale', 'read', '{\"render\": {\"link\": { \"pjaxed\": false}}}', 'tabPanelIntegration', 'en-GB', 0, 1, '2023-08-31 05:20:42', 0, '2023-08-31 05:20:42', 0),
(18, 2, NULL, 10, 'responses', 'Responses', 'Responses', 'Responses', '', 'remix', '', 'responses/browse/', '', '', '', '', 'responses', 'read', '{\"render\": {\"isActive\": true, \"link\": {\"data\": {\"surveyId\": [\"survey\", \"sid\"]}}}}', '', 'en-GB', 1, 1, '2023-08-31 05:20:42', 0, '2023-08-31 05:20:42', 0),
(19, 2, NULL, 11, 'statistics', 'Statistics', 'Statistics', 'Statistics', '', 'remix', '', 'admin/statistics/sa/index/', '', '', '', '', 'statistics', 'read', '{\"render\": {\"isActive\": true, \"link\": {\"data\": {\"surveyid\": [\"survey\", \"sid\"]}}}}', '', 'en-GB', 1, 1, '2023-08-31 05:20:42', 0, '2023-08-31 05:20:42', 0),
(20, 2, NULL, 12, 'resources', 'Add/edit resources (files/images) for this survey', 'Resources', 'Add/edit resources (files/images) for this survey', '', 'remix', '', '', 'updatesurveylocalesettings', 'editLocalSettings_main_view', '/admin/survey/subview/accordion/_resources_panel', '', 'surveylocale', 'read', '{\"render\": { \"link\": {\"data\": {\"surveyid\": [\"survey\",\"sid\"]}}}}', 'tabResourceManagement', 'en-GB', 0, 1, '2023-08-31 05:20:42', 0, '2023-08-31 05:20:42', 0),
(21, 2, NULL, 13, 'plugins', 'Simple plugin settings', 'Simple plugins', 'Edit simple plugin settings', '', 'remix', '', '', 'updatesurveylocalesettings', 'editLocalSettings_main_view', '/admin/survey/subview/accordion/_plugins_panel', '', 'surveysettings', 'read', '{\"render\": {\"link\": {\"data\": {\"surveyid\": [\"survey\",\"sid\"]}}}}', 'pluginTabSurvey', 'en-GB', 0, 1, '2023-08-31 05:20:42', 0, '2023-08-31 05:20:42', 0),
(22, 3, NULL, 1, 'activateSurvey', 'Activate survey', 'Activate survey', 'Activate survey', 'ri-play-fill', 'remix', '', 'surveyAdministration/activate', '', '', '', '', 'surveyactivation', 'update', '{\"render\": {\"isActive\": false, \"link\": {\"data\": {\"iSurveyID\": [\"survey\",\"sid\"]}}}}', '', 'en-GB', 1, 1, '2023-08-31 05:20:42', 0, '2023-08-31 05:20:42', 0),
(23, 3, NULL, 2, 'deactivateSurvey', 'Stop survey', 'Stop survey', 'Stop this survey', 'ri-stop-fill', 'remix', '', 'surveyAdministration/deactivate', '', '', '', '', 'surveyactivation', 'update', '{\"render\": {\"isActive\": true, \"link\": {\"data\": {\"surveyid\": [\"survey\",\"sid\"]}}}}', '', 'en-GB', 1, 1, '2023-08-31 05:20:42', 0, '2023-08-31 05:20:42', 0),
(24, 3, NULL, 3, 'testSurvey', 'Go to survey', 'Go to survey', 'Go to survey', 'ri-settings-5-fill', 'remix', '', 'survey/index/', '', '', '', '', '', '', '{\"render\": {\"link\": {\"external\": true, \"data\": {\"sid\": [\"survey\",\"sid\"], \"newtest\": \"Y\", \"lang\": [\"survey\",\"language\"]}}}}', '', 'en-GB', 1, 1, '2023-08-31 05:20:42', 0, '2023-08-31 05:20:42', 0),
(25, 3, NULL, 4, 'surveyLogicFile', 'Survey logic file', 'Survey logic file', 'Survey logic file', 'ri-git-branch-fill', 'remix', '', 'admin/expressions/sa/survey_logic_file/', '', '', '', '', 'surveycontent', 'read', '{\"render\": { \"link\": {\"data\": {\"sid\": [\"survey\",\"sid\"]}}}}', '', 'en-GB', 1, 1, '2023-08-31 05:20:42', 0, '2023-08-31 05:20:42', 0),
(26, 3, NULL, 5, 'cpdb', 'Central participant database', 'Central participant database', 'Central participant database', 'ri-group-fill', 'remix', '', 'admin/participants/sa/displayParticipants', '', '', '', '', 'tokens', 'read', '{\"render\": {\"link\": {}}}', '', 'en-GB', 1, 1, '2023-08-31 05:20:42', 0, '2023-08-31 05:20:42', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `lime_kuisonersurveys`
--

CREATE TABLE `lime_kuisonersurveys` (
  `sid` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `gsid` int(11) DEFAULT 1,
  `admin` varchar(50) DEFAULT NULL,
  `active` varchar(1) NOT NULL DEFAULT 'N',
  `expires` datetime DEFAULT NULL,
  `startdate` datetime DEFAULT NULL,
  `adminemail` varchar(254) DEFAULT NULL,
  `anonymized` varchar(1) NOT NULL DEFAULT 'N',
  `format` varchar(1) DEFAULT NULL,
  `savetimings` varchar(1) NOT NULL DEFAULT 'N',
  `template` varchar(100) DEFAULT 'default',
  `language` varchar(50) DEFAULT NULL,
  `additional_languages` text DEFAULT NULL,
  `datestamp` varchar(1) NOT NULL DEFAULT 'N',
  `usecookie` varchar(1) NOT NULL DEFAULT 'N',
  `allowregister` varchar(1) NOT NULL DEFAULT 'N',
  `allowsave` varchar(1) NOT NULL DEFAULT 'Y',
  `autonumber_start` int(11) NOT NULL DEFAULT 0,
  `autoredirect` varchar(1) NOT NULL DEFAULT 'N',
  `allowprev` varchar(1) NOT NULL DEFAULT 'N',
  `printanswers` varchar(1) NOT NULL DEFAULT 'N',
  `ipaddr` varchar(1) NOT NULL DEFAULT 'N',
  `ipanonymize` varchar(1) NOT NULL DEFAULT 'N',
  `refurl` varchar(1) NOT NULL DEFAULT 'N',
  `datecreated` datetime DEFAULT NULL,
  `showsurveypolicynotice` int(11) DEFAULT 0,
  `publicstatistics` varchar(1) NOT NULL DEFAULT 'N',
  `publicgraphs` varchar(1) NOT NULL DEFAULT 'N',
  `listpublic` varchar(1) NOT NULL DEFAULT 'N',
  `htmlemail` varchar(1) NOT NULL DEFAULT 'Y',
  `sendconfirmation` varchar(1) NOT NULL DEFAULT 'Y',
  `tokenanswerspersistence` varchar(1) NOT NULL DEFAULT 'N',
  `assessments` varchar(1) NOT NULL DEFAULT 'N',
  `usecaptcha` varchar(1) NOT NULL DEFAULT 'N',
  `usetokens` varchar(1) NOT NULL DEFAULT 'N',
  `bounce_email` varchar(254) DEFAULT NULL,
  `attributedescriptions` mediumtext DEFAULT NULL,
  `emailresponseto` text DEFAULT NULL,
  `emailnotificationto` text DEFAULT NULL,
  `tokenlength` int(11) NOT NULL DEFAULT 15,
  `showxquestions` varchar(1) DEFAULT 'Y',
  `showgroupinfo` varchar(1) DEFAULT 'B',
  `shownoanswer` varchar(1) DEFAULT 'Y',
  `showqnumcode` varchar(1) DEFAULT 'X',
  `bouncetime` int(11) DEFAULT NULL,
  `bounceprocessing` varchar(1) DEFAULT 'N',
  `bounceaccounttype` varchar(4) DEFAULT NULL,
  `bounceaccounthost` varchar(200) DEFAULT NULL,
  `bounceaccountpass` text DEFAULT NULL,
  `bounceaccountencryption` varchar(3) DEFAULT NULL,
  `bounceaccountuser` varchar(200) DEFAULT NULL,
  `showwelcome` varchar(1) DEFAULT 'Y',
  `showprogress` varchar(1) DEFAULT 'Y',
  `questionindex` int(11) NOT NULL DEFAULT 0,
  `navigationdelay` int(11) NOT NULL DEFAULT 0,
  `nokeyboard` varchar(1) DEFAULT 'N',
  `alloweditaftercompletion` varchar(1) DEFAULT 'N',
  `googleanalyticsstyle` varchar(1) DEFAULT NULL,
  `googleanalyticsapikey` varchar(25) DEFAULT NULL,
  `tokenencryptionoptions` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `lime_kuisonersurveys`
--

INSERT INTO `lime_kuisonersurveys` (`sid`, `owner_id`, `gsid`, `admin`, `active`, `expires`, `startdate`, `adminemail`, `anonymized`, `format`, `savetimings`, `template`, `language`, `additional_languages`, `datestamp`, `usecookie`, `allowregister`, `allowsave`, `autonumber_start`, `autoredirect`, `allowprev`, `printanswers`, `ipaddr`, `ipanonymize`, `refurl`, `datecreated`, `showsurveypolicynotice`, `publicstatistics`, `publicgraphs`, `listpublic`, `htmlemail`, `sendconfirmation`, `tokenanswerspersistence`, `assessments`, `usecaptcha`, `usetokens`, `bounce_email`, `attributedescriptions`, `emailresponseto`, `emailnotificationto`, `tokenlength`, `showxquestions`, `showgroupinfo`, `shownoanswer`, `showqnumcode`, `bouncetime`, `bounceprocessing`, `bounceaccounttype`, `bounceaccounthost`, `bounceaccountpass`, `bounceaccountencryption`, `bounceaccountuser`, `showwelcome`, `showprogress`, `questionindex`, `navigationdelay`, `nokeyboard`, `alloweditaftercompletion`, `googleanalyticsstyle`, `googleanalyticsapikey`, `tokenencryptionoptions`) VALUES
(397312, 1, 1, 'inherit', 'N', NULL, NULL, 'inherit', 'N', 'G', 'N', 'vanilla', 'id', '', 'N', 'I', 'I', 'I', 3, 'I', 'I', 'I', 'N', 'N', 'N', '2023-08-31 05:32:30', 0, 'I', 'I', 'I', 'I', 'I', 'I', 'I', 'E', 'N', 'inherit', NULL, 'inherit', 'inherit', -1, 'I', 'I', 'I', 'I', NULL, 'N', NULL, NULL, NULL, NULL, NULL, 'I', 'I', -1, -1, 'I', 'I', NULL, NULL, '{ \"enabled\":\"Y\",\"columns\":{ \"firstname\":\"N\",\"lastname\":\"N\",\"email\":\"N\" } }');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lime_kuisonersurveys_groups`
--

CREATE TABLE `lime_kuisonersurveys_groups` (
  `gsid` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `template` varchar(128) DEFAULT 'default',
  `description` text DEFAULT NULL,
  `sortorder` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `alwaysavailable` tinyint(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `lime_kuisonersurveys_groups`
--

INSERT INTO `lime_kuisonersurveys_groups` (`gsid`, `name`, `title`, `template`, `description`, `sortorder`, `owner_id`, `parent_id`, `alwaysavailable`, `created`, `modified`, `created_by`) VALUES
(1, 'default', 'Default', NULL, 'Default survey group', 0, 1, NULL, NULL, '2023-08-31 05:20:43', '2023-08-31 05:20:43', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `lime_kuisonersurveys_groupsettings`
--

CREATE TABLE `lime_kuisonersurveys_groupsettings` (
  `gsid` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `admin` varchar(50) DEFAULT NULL,
  `adminemail` varchar(254) DEFAULT NULL,
  `anonymized` varchar(1) NOT NULL DEFAULT 'N',
  `format` varchar(1) DEFAULT NULL,
  `savetimings` varchar(1) NOT NULL DEFAULT 'N',
  `template` varchar(100) DEFAULT 'default',
  `datestamp` varchar(1) NOT NULL DEFAULT 'N',
  `usecookie` varchar(1) NOT NULL DEFAULT 'N',
  `allowregister` varchar(1) NOT NULL DEFAULT 'N',
  `allowsave` varchar(1) NOT NULL DEFAULT 'Y',
  `autonumber_start` int(11) DEFAULT 0,
  `autoredirect` varchar(1) NOT NULL DEFAULT 'N',
  `allowprev` varchar(1) NOT NULL DEFAULT 'N',
  `printanswers` varchar(1) NOT NULL DEFAULT 'N',
  `ipaddr` varchar(1) NOT NULL DEFAULT 'N',
  `ipanonymize` varchar(1) NOT NULL DEFAULT 'N',
  `refurl` varchar(1) NOT NULL DEFAULT 'N',
  `showsurveypolicynotice` int(11) DEFAULT 0,
  `publicstatistics` varchar(1) NOT NULL DEFAULT 'N',
  `publicgraphs` varchar(1) NOT NULL DEFAULT 'N',
  `listpublic` varchar(1) NOT NULL DEFAULT 'N',
  `htmlemail` varchar(1) NOT NULL DEFAULT 'Y',
  `sendconfirmation` varchar(1) NOT NULL DEFAULT 'Y',
  `tokenanswerspersistence` varchar(1) NOT NULL DEFAULT 'N',
  `assessments` varchar(1) NOT NULL DEFAULT 'N',
  `usecaptcha` varchar(1) NOT NULL DEFAULT 'N',
  `bounce_email` varchar(254) DEFAULT NULL,
  `attributedescriptions` text DEFAULT NULL,
  `emailresponseto` text DEFAULT NULL,
  `emailnotificationto` text DEFAULT NULL,
  `tokenlength` int(11) DEFAULT 15,
  `showxquestions` varchar(1) DEFAULT 'Y',
  `showgroupinfo` varchar(1) DEFAULT 'B',
  `shownoanswer` varchar(1) DEFAULT 'Y',
  `showqnumcode` varchar(1) DEFAULT 'X',
  `showwelcome` varchar(1) DEFAULT 'Y',
  `showprogress` varchar(1) DEFAULT 'Y',
  `questionindex` int(11) DEFAULT 0,
  `navigationdelay` int(11) DEFAULT 0,
  `nokeyboard` varchar(1) DEFAULT 'N',
  `alloweditaftercompletion` varchar(1) DEFAULT 'N'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `lime_kuisonersurveys_groupsettings`
--

INSERT INTO `lime_kuisonersurveys_groupsettings` (`gsid`, `owner_id`, `admin`, `adminemail`, `anonymized`, `format`, `savetimings`, `template`, `datestamp`, `usecookie`, `allowregister`, `allowsave`, `autonumber_start`, `autoredirect`, `allowprev`, `printanswers`, `ipaddr`, `ipanonymize`, `refurl`, `showsurveypolicynotice`, `publicstatistics`, `publicgraphs`, `listpublic`, `htmlemail`, `sendconfirmation`, `tokenanswerspersistence`, `assessments`, `usecaptcha`, `bounce_email`, `attributedescriptions`, `emailresponseto`, `emailnotificationto`, `tokenlength`, `showxquestions`, `showgroupinfo`, `shownoanswer`, `showqnumcode`, `showwelcome`, `showprogress`, `questionindex`, `navigationdelay`, `nokeyboard`, `alloweditaftercompletion`) VALUES
(0, 1, 'Administrator', 'your-email@example.net', 'N', 'G', 'N', 'fruity_twentythree', 'N', 'N', 'N', 'Y', 0, 'N', 'N', 'N', 'N', 'N', 'N', 0, 'N', 'N', 'N', 'Y', 'Y', 'N', 'N', 'N', NULL, NULL, NULL, NULL, 15, 'Y', 'B', 'Y', 'X', 'Y', 'Y', 0, 0, 'N', 'N'),
(1, -1, 'inherit', 'inherit', 'I', 'I', 'I', 'inherit', 'I', 'I', 'I', 'I', 0, 'I', 'I', 'I', 'I', 'I', 'I', 0, 'I', 'I', 'I', 'I', 'I', 'I', 'I', 'E', 'inherit', NULL, 'inherit', 'inherit', -1, 'I', 'I', 'I', 'I', 'I', 'I', -1, -1, 'I', 'I');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lime_kuisonersurveys_languagesettings`
--

CREATE TABLE `lime_kuisonersurveys_languagesettings` (
  `surveyls_survey_id` int(11) NOT NULL,
  `surveyls_language` varchar(45) NOT NULL DEFAULT 'en',
  `surveyls_title` varchar(200) NOT NULL,
  `surveyls_description` mediumtext DEFAULT NULL,
  `surveyls_welcometext` mediumtext DEFAULT NULL,
  `surveyls_endtext` mediumtext DEFAULT NULL,
  `surveyls_policy_notice` mediumtext DEFAULT NULL,
  `surveyls_policy_error` text DEFAULT NULL,
  `surveyls_policy_notice_label` varchar(192) DEFAULT NULL,
  `surveyls_url` text DEFAULT NULL,
  `surveyls_urldescription` varchar(255) DEFAULT NULL,
  `surveyls_email_invite_subj` varchar(255) DEFAULT NULL,
  `surveyls_email_invite` mediumtext DEFAULT NULL,
  `surveyls_email_remind_subj` varchar(255) DEFAULT NULL,
  `surveyls_email_remind` mediumtext DEFAULT NULL,
  `surveyls_email_register_subj` varchar(255) DEFAULT NULL,
  `surveyls_email_register` mediumtext DEFAULT NULL,
  `surveyls_email_confirm_subj` varchar(255) DEFAULT NULL,
  `surveyls_email_confirm` mediumtext DEFAULT NULL,
  `surveyls_dateformat` int(11) NOT NULL DEFAULT 1,
  `surveyls_attributecaptions` text DEFAULT NULL,
  `surveyls_alias` varchar(100) DEFAULT NULL,
  `email_admin_notification_subj` varchar(255) DEFAULT NULL,
  `email_admin_notification` mediumtext DEFAULT NULL,
  `email_admin_responses_subj` varchar(255) DEFAULT NULL,
  `email_admin_responses` mediumtext DEFAULT NULL,
  `surveyls_numberformat` int(11) NOT NULL DEFAULT 0,
  `attachments` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `lime_kuisonersurveys_languagesettings`
--

INSERT INTO `lime_kuisonersurveys_languagesettings` (`surveyls_survey_id`, `surveyls_language`, `surveyls_title`, `surveyls_description`, `surveyls_welcometext`, `surveyls_endtext`, `surveyls_policy_notice`, `surveyls_policy_error`, `surveyls_policy_notice_label`, `surveyls_url`, `surveyls_urldescription`, `surveyls_email_invite_subj`, `surveyls_email_invite`, `surveyls_email_remind_subj`, `surveyls_email_remind`, `surveyls_email_register_subj`, `surveyls_email_register`, `surveyls_email_confirm_subj`, `surveyls_email_confirm`, `surveyls_dateformat`, `surveyls_attributecaptions`, `surveyls_alias`, `email_admin_notification_subj`, `email_admin_notification`, `email_admin_responses_subj`, `email_admin_responses`, `surveyls_numberformat`, `attachments`) VALUES
(397312, 'id', 'semua fitur form', 'ini adalah tahap uji untuk semua form pada sistem ini', 'mohon untuk di isi pada form yang diwajibkan ', 'demo semua form pada sistem ini', '', NULL, '', '', '', 'Undangan untuk berpartisipasi dalam survei', 'Yang terhormat {FIRSTNAME},<br />\n<br />\n Anda telah diundang untuk berpartisipasi dalam survei.<br />\n<br />\n Survei berjudul:\"{ SURVEYNAME<br />\n }\" \"{SURVEYDESCRIPTION<br />\n<br />\n }\"<br />\n<br />\n Untuk berpartisipasi, silakan klik tautan di bawah ini.<br />\n<br />\n Hormat kami<br />\n<br />\n ,{ADMINNAME} ({ADMINEMAIL})----------------------------------------------<br />\n<br />\n<br />\n Klik di sini untuk melakukan survei<br />\n :{SURVEYURL}<br />\n<br />\nJika Anda tidak ingin berpartisipasi dalam survei ini dan tidak ingin menerima undangan lagi, harap klik tautan ini:<br />\n{OPTOUTURL}<br />\n<br />\nJika Anda masuk dalam daftar hitam, namun ingin menerima undangan dan berpartisipasi pada survei ini silakan klik pada tautan berikut:<br />\n{OPTINURL}', 'Pengingat untuk berpartisipasi dalam survei', '{FIRSTNAME} yang terhormat,<br />\n<br />\nBeberapa waktu lalu, kami mengundang Anda untuk berpartisipasi dalam sebuah survei.<br />\n<br />\nKami lihat Anda belum mengisi survei tersebut dan kami ingin mengingatkan Anda bahwa survei tersebut masih tersedia jika Anda ingin ambil bagian.<br />\n<br />\nSurvei tersebut berjudul:<br />\n\"{SURVEYNAME}\"<br />\n<br />\n\"{SURVEYDESCRIPTION}\"<br />\n<br />\nUntuk berpartisipasi, silahkan klik pada alamat di bawah ini.<br />\n<br />\nHormat kami,<br />\n<br />\n{ADMINNAME} ({ADMINEMAIL})<br />\n<br />\n----------------------------------------------<br />\nKlik di sini untuk mengisi survei:<br />\n{SURVEYURL}<br />\n<br />\nJika Anda tidak ingin berpartisipasi dalam survei ini dan tidak ingin menerima undangan lagi, harap klik tautan ini:<br />\n{OPTOUTURL}', 'Konfirmasi pendaftaran survei', '{FIRSTNAME} yang terhormat,<br />\n<br />\nAnda, atau seseorang menggunakan alamat email Anda, telah mendaftar untuk berpartisipasi dalam survei online berjudul {SURVEYNAME}.<br />\n<br />\nUntuk melengkapi survei ini, silahkan klik pada alamat URL berikut:<br />\n<br />\n{SURVEYURL}<br />\n<br />\nSekiranya Anda ingin bertanya tentang survei ini, atau bila Anda belum terdaftar dan merasa ada kesalahan pada email ini, mohon hubungi {ADMINNAME} di alamat {ADMINEMAIL}.', 'Konfirmasi partisipasi Anda dalam survei kami', 'Yang terhormat {FIRSTNAME}, Email <br />\n<br />\n ini untuk mengonfirmasi bahwa Anda telah menyelesaikan survei berjudul {SURVEYNAME} dan tanggapan Anda telah disimpan. Terima kasih telah berpartisipasi.<br />\n<br />\n Jika Anda memiliki pertanyaan lebih lanjut tentang email ini, silakan hubungi {ADMINNAME} di {ADMINEMAIL}.<br />\n<br />\n Hormat kami,<br />\n<br />\n {ADMINNAME}', 5, NULL, '', 'Pengiriman tanggapan untuk survei {SURVEYNAME}', 'Halo,<br />\n<br />\nSuatu tanggapan telah dikirimkan untuk survei \'{SURVEYNAME}\' Anda.<br />\n<br />\nKlik tautan berikut untuk memuat ulang survei:<br />\n{RELOADURL}<br />\n<br />\nKlik tautan berikut untuk melihat tanggapan individu:<br />\n{VIEWRESPONSEURL}<br />\n<br />\nKlik tautan berikut untuk mengedit tanggapan individu:<br />\n{EDITRESPONSEURL}<br />\n<br />\nLihat statistik dengan klik tautan berikut:<br />\n{STATISTICSURL}', 'Kiriman tanggapan untuk survei {SURVEYNAME} dengan hasil', 'Halo,<br />\n<br />\nSebuah tanggapan telah dikirimkan untuk survei \'{SURVEYNAME}\' Anda.<br />\n<br />\nKlik tautan berikut untuk memuat ulang survei:<br />\n{RELOADURL}<br />\n<br />\nKlik tautan berikut untuk melihat tanggapan individu:<br />\n{VIEWRESPONSEURL}<br />\n<br />\nKlik tautan berikut untuk mengedit tanggapan individu:<br />\n{EDITRESPONSEURL}<br />\n<br />\nLihat statistik dengan klik tautan berikut:<br />\n{STATISTICSURL}<br />\n<br />\n<br />\nJawaban berikut diberikan oleh partisipan:<br />\n{ANSWERTABLE}', 1, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `lime_kuisonersurvey_links`
--

CREATE TABLE `lime_kuisonersurvey_links` (
  `participant_id` varchar(50) NOT NULL,
  `token_id` int(11) NOT NULL,
  `survey_id` int(11) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_invited` datetime DEFAULT NULL,
  `date_completed` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `lime_kuisonersurvey_url_parameters`
--

CREATE TABLE `lime_kuisonersurvey_url_parameters` (
  `id` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `parameter` varchar(50) NOT NULL,
  `targetqid` int(11) DEFAULT NULL,
  `targetsqid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `lime_kuisonertemplates`
--

CREATE TABLE `lime_kuisonertemplates` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `folder` varchar(45) DEFAULT NULL,
  `title` varchar(100) NOT NULL,
  `creation_date` datetime DEFAULT NULL,
  `author` varchar(150) DEFAULT NULL,
  `author_email` varchar(255) DEFAULT NULL,
  `author_url` varchar(255) DEFAULT NULL,
  `copyright` text DEFAULT NULL,
  `license` mediumtext DEFAULT NULL,
  `version` varchar(45) DEFAULT NULL,
  `api_version` varchar(45) NOT NULL,
  `view_folder` varchar(45) NOT NULL,
  `files_folder` varchar(45) NOT NULL,
  `description` mediumtext DEFAULT NULL,
  `last_update` datetime DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `extends` varchar(150) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `lime_kuisonertemplates`
--

INSERT INTO `lime_kuisonertemplates` (`id`, `name`, `folder`, `title`, `creation_date`, `author`, `author_email`, `author_url`, `copyright`, `license`, `version`, `api_version`, `view_folder`, `files_folder`, `description`, `last_update`, `owner_id`, `extends`) VALUES
(1, 'vanilla', 'vanilla', 'Bootstrap Vanilla', '2023-08-31 05:20:43', 'LimeSurvey GmbH', 'info@limesurvey.org', 'https://www.limesurvey.org/', 'Copyright (C) 2007-2019 The LimeSurvey Project Team\\r\\nAll rights reserved.', 'License: GNU/GPL License v2 or later, see LICENSE.php\\r\\n\\r\\nLimeSurvey is free software. This version may have been modified pursuant to the GNU General Public License, and as distributed it includes or is derivative of works licensed under the GNU General Public License or other free or open source software licenses. See COPYRIGHT.php for copyright notices and details.', '3.0', '3.0', 'views', 'files', 'A clean and simple base that can be used by developers to create their own Bootstrap based theme.', NULL, 1, ''),
(2, 'fruity', 'fruity', 'Fruity', '2023-08-31 05:20:43', 'LimeSurvey GmbH', 'info@limesurvey.org', 'https://www.limesurvey.org/', 'Copyright (C) 2007-2019 The LimeSurvey Project Team\\r\\nAll rights reserved.', 'License: GNU/GPL License v2 or later, see LICENSE.php\\r\\n\\r\\nLimeSurvey is free software. This version may have been modified pursuant to the GNU General Public License, and as distributed it includes or is derivative of works licensed under the GNU General Public License or other free or open source software licenses. See COPYRIGHT.php for copyright notices and details.', '3.0', '3.0', 'views', 'files', 'A fruity theme for a flexible use. This theme offers monochromes variations and many options for easy customizations.', NULL, 1, 'vanilla'),
(3, 'bootswatch', 'bootswatch', 'Bootswatch', '2023-08-31 05:20:43', 'LimeSurvey GmbH', 'info@limesurvey.org', 'https://www.limesurvey.org/', 'Copyright (C) 2007-2019 The LimeSurvey Project Team\\r\\nAll rights reserved.', 'License: GNU/GPL License v2 or later, see LICENSE.php\\r\\n\\r\\nLimeSurvey is free software. This version may have been modified pursuant to the GNU General Public License, and as distributed it includes or is derivative of works licensed under the GNU General Public License or other free or open source software licenses. See COPYRIGHT.php for copyright notices and details.', '3.0', '3.0', 'views', 'files', 'Based on BootsWatch Themes:<br><a href=\'https://bootswatch.com/3/\'>Visit Bootswatch page</a>', NULL, 1, 'vanilla'),
(4, 'fruity_twentythree', 'fruity_twentythree', 'Fruity TwentyThree', '2023-08-31 05:20:43', 'LimeSurvey GmbH', 'info@limesurvey.org', 'https://www.limesurvey.org/', 'Copyright (C) 2005 - 2023 LimeSurvey Gmbh, Inc. All rights reserved.', 'License: GNU/GPL License v2 or later, see LICENSE.php\\r\\n\\r\\nLimeSurvey is free software. This version may have been modified pursuant to the GNU General Public License, and as distributed it includes or is derivative of works licensed under the GNU General Public License or other free or open source software licenses. See COPYRIGHT.php for copyright notices and details.', '1.0.0', '3.0', 'views', 'files', 'Our default theme for a fruity and flexible use. This theme offers single color variations', NULL, 1, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lime_kuisonertemplate_configuration`
--

CREATE TABLE `lime_kuisonertemplate_configuration` (
  `id` int(11) NOT NULL,
  `template_name` varchar(150) NOT NULL,
  `sid` int(11) DEFAULT NULL,
  `gsid` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `files_css` text DEFAULT NULL,
  `files_js` text DEFAULT NULL,
  `files_print_css` text DEFAULT NULL,
  `options` text DEFAULT NULL,
  `cssframework_name` varchar(45) DEFAULT NULL,
  `cssframework_css` mediumtext DEFAULT NULL,
  `cssframework_js` mediumtext DEFAULT NULL,
  `packages_to_load` text DEFAULT NULL,
  `packages_ltr` text DEFAULT NULL,
  `packages_rtl` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `lime_kuisonertemplate_configuration`
--

INSERT INTO `lime_kuisonertemplate_configuration` (`id`, `template_name`, `sid`, `gsid`, `uid`, `files_css`, `files_js`, `files_print_css`, `options`, `cssframework_name`, `cssframework_css`, `cssframework_js`, `packages_to_load`, `packages_ltr`, `packages_rtl`) VALUES
(1, 'vanilla', NULL, NULL, NULL, '{\"add\":[\"css/base.css\",\"css/theme.css\",\"css/noTablesOnMobile.css\",\"css/custom.css\"]}', '{\"add\":[\"scripts/theme.js\",\"scripts/ajaxify.js\",\"scripts/custom.js\"]}', '{\"add\":[\"css/print_theme.css\"]}', '{\"ajaxmode\":\"off\",\"brandlogo\":\"on\",\"container\":\"on\", \"hideprivacyinfo\": \"off\", \"brandlogofile\":\"themes/survey/vanilla/files/logo.png\",\"font\":\"noto\", \"showpopups\":\"1\", \"showclearall\":\"off\", \"questionhelptextposition\":\"top\"}', 'bootstrap', '{}', '', '{\"add\":[\"pjax\",\"font-noto\",\"moment\"]}', NULL, NULL),
(2, 'fruity', NULL, NULL, NULL, '{\"add\":[\"css/ajaxify.css\",\"css/animate.css\",\"css/variations/sea_green.css\",\"css/theme.css\",\"css/custom.css\"]}', '{\"add\":[\"scripts/theme.js\",\"scripts/ajaxify.js\",\"scripts/custom.js\"]}', '{\"add\":[\"css/print_theme.css\"]}', '{\"ajaxmode\":\"off\",\"brandlogo\":\"on\",\"brandlogofile\":\"themes/survey/fruity/files/logo.png\",\"container\":\"on\",\"backgroundimage\":\"off\",\"backgroundimagefile\":null,\"animatebody\":\"off\",\"bodyanimation\":\"fadeInRight\",\"bodyanimationduration\":\"500\",\"animatequestion\":\"off\",\"questionanimation\":\"flipInX\",\"questionanimationduration\":\"500\",\"animatealert\":\"off\",\"alertanimation\":\"shake\",\"alertanimationduration\":\"500\",\"font\":\"noto\",\"bodybackgroundcolor\":\"#ffffff\",\"fontcolor\":\"#444444\",\"questionbackgroundcolor\":\"#ffffff\",\"questionborder\":\"on\",\"questioncontainershadow\":\"on\",\"checkicon\":\"f00c\",\"animatecheckbox\":\"on\",\"checkboxanimation\":\"rubberBand\",\"checkboxanimationduration\":\"500\",\"animateradio\":\"on\",\"radioanimation\":\"zoomIn\",\"radioanimationduration\":\"500\",\"zebrastriping\":\"off\",\"stickymatrixheaders\":\"off\",\"greyoutselected\":\"off\",\"hideprivacyinfo\":\"off\",\"crosshover\":\"off\",\"showpopups\":\"1\", \"showclearall\":\"off\", \"questionhelptextposition\":\"top\",\"notables\":\"1\"}', 'bootstrap', '{}', '', '{\"add\":[\"pjax\",\"font-noto\",\"moment\"]}', NULL, NULL),
(3, 'bootswatch', NULL, NULL, NULL, '{\"add\":[\"css/ajaxify.css\",\"css/theme.css\",\"css/custom.css\"]}', '{\"add\":[\"scripts/theme.js\",\"scripts/ajaxify.js\",\"scripts/custom.js\"]}', '{\"add\":[\"css/print_theme.css\"]}', '{\"ajaxmode\":\"off\",\"brandlogo\":\"on\",\"container\":\"on\",\"brandlogofile\":\"image::theme::files\\\\logo.png\",\"showpopups\":\"1\",\"showclearall\":\"off\",\"questionhelptextposition\":\"top\"}', 'bootstrap', '{\"replace\":[[\"css/bootstrap.css\",\"css/variations/flatly.min.css\"]]}', '', '{\"add\":[\"pjax\",\"font-noto\",\"moment\"]}', NULL, NULL),
(4, 'fruity_twentythree', NULL, NULL, NULL, '{\"add\":[\"css/variations/theme_apple.css\",\"css/base.css\",\"css/custom.css\"], \"remove\":[\"survey.css\", \"template-core.css\", \"awesome-bootstrap-checkbox/awesome-bootstrap-checkbox.css\", \"awesome-bootstrap-checkbox/awesome-bootstrap-checkbox-rtl.css\"]}', '{\"add\":[\"scripts/theme.js\",\"scripts/custom.js\"], \"remove\":[\"survey.js\", \"template-core.js\"]}', '{\"add\":[\"css/print_theme.css\"]}', '{\"hideprivacyinfo\":\"off\",\"showpopups\":\"1\",\"showclearall\":\"off\",\"questionhelptextposition\":\"top\",\"fixnumauto\":\"enable\",\"backgroundimage\":\"off\",\"backgroundimagefile\":\".\\/files\\/pattern.png\",\n                                     \"brandlogo\":\"off\",\"brandlogofile\":\"image::theme::files\\/logo.png\",\"font\":\"ibm-sans\",\n                                     \"cssframework\":\"Apple\"}', '', '', '', '{\"add\":[\"pjax\",\"moment\",\"font-ibm-sans\",\"font-ibm-serif\"]}', NULL, NULL),
(5, 'fruity_twentythree', 853967, NULL, NULL, 'inherit', 'inherit', 'inherit', 'inherit', 'inherit', 'inherit', 'inherit', 'inherit', NULL, NULL),
(6, 'fruity_twentythree', NULL, 1, NULL, 'inherit', 'inherit', 'inherit', 'inherit', 'inherit', 'inherit', 'inherit', 'inherit', NULL, NULL),
(7, 'fruity_twentythree', 397312, NULL, NULL, 'inherit', 'inherit', 'inherit', '{\"general_inherit\":null,\"font\":\"inherit\",\"cssframework\":\"inherit\",\"backgroundimagefile\":\"inherit\",\"brandlogofile\":\"inherit\",\"hideprivacyinfo\":\"inherit\",\"showpopups\":\"1\",\"showclearall\":\"inherit\",\"questionhelptextposition\":\"inherit\",\"fixnumauto\":\"partial\",\"backgroundimage\":\"inherit\",\"brandlogo\":\"inherit\",\"generalInherit\":null}', 'inherit', 'inherit', 'inherit', 'inherit', NULL, NULL),
(8, 'bootswatch', 397312, NULL, NULL, 'inherit', 'inherit', 'inherit', 'inherit', 'inherit', 'inherit', 'inherit', 'inherit', NULL, NULL),
(9, 'bootswatch', NULL, 1, NULL, 'inherit', 'inherit', 'inherit', 'inherit', 'inherit', 'inherit', 'inherit', 'inherit', NULL, NULL),
(10, 'vanilla', 397312, NULL, NULL, 'inherit', 'inherit', 'inherit', 'inherit', 'inherit', 'inherit', 'inherit', 'inherit', NULL, NULL),
(11, 'vanilla', NULL, 1, NULL, 'inherit', 'inherit', 'inherit', 'inherit', 'inherit', 'inherit', 'inherit', 'inherit', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `lime_kuisonertutorials`
--

CREATE TABLE `lime_kuisonertutorials` (
  `tid` int(11) NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  `title` varchar(192) DEFAULT NULL,
  `icon` varchar(64) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `active` int(11) DEFAULT 0,
  `settings` mediumtext DEFAULT NULL,
  `permission` varchar(128) NOT NULL,
  `permission_grade` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `lime_kuisonertutorial_entries`
--

CREATE TABLE `lime_kuisonertutorial_entries` (
  `teid` int(11) NOT NULL,
  `ordering` int(11) DEFAULT NULL,
  `title` text DEFAULT NULL,
  `content` mediumtext DEFAULT NULL,
  `settings` mediumtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `lime_kuisonertutorial_entry_relation`
--

CREATE TABLE `lime_kuisonertutorial_entry_relation` (
  `teid` int(11) NOT NULL,
  `tid` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `sid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `lime_kuisonerusers`
--

CREATE TABLE `lime_kuisonerusers` (
  `uid` int(11) NOT NULL,
  `users_name` varchar(64) NOT NULL DEFAULT '',
  `password` text NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `lang` varchar(20) DEFAULT NULL,
  `email` varchar(192) DEFAULT NULL,
  `htmleditormode` varchar(7) DEFAULT 'default',
  `templateeditormode` varchar(7) NOT NULL DEFAULT 'default',
  `questionselectormode` varchar(7) NOT NULL DEFAULT 'default',
  `one_time_pw` text DEFAULT NULL,
  `dateformat` int(11) NOT NULL DEFAULT 1,
  `last_login` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `validation_key` varchar(38) DEFAULT NULL,
  `validation_key_expiration` datetime DEFAULT NULL,
  `last_forgot_email_password` datetime DEFAULT NULL,
  `expires` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `lime_kuisonerusers`
--

INSERT INTO `lime_kuisonerusers` (`uid`, `users_name`, `password`, `full_name`, `parent_id`, `lang`, `email`, `htmleditormode`, `templateeditormode`, `questionselectormode`, `one_time_pw`, `dateformat`, `last_login`, `created`, `modified`, `validation_key`, `validation_key_expiration`, `last_forgot_email_password`, `expires`) VALUES
(1, 'admin', '$2y$10$otSl8waQIJ1wcGwhPFT51eoWJrnqjsvnhK9Mth1bLheAlNL8juCkW', 'Administrator', 0, 'en', 'your-email@example.net', 'default', 'default', 'default', NULL, 1, '2023-08-31 09:05:09', '2023-08-31 10:20:48', '2023-08-31 14:05:09', NULL, NULL, NULL, NULL),
(4, 'fachry', '$2y$10$OponqVgfX2BbN4k.aKv2HOmhTNblIeY.Usp6p5B4AAS2ByEVRcRgO', 'fachrymuahammad', 1, 'auto', 'fahri@gmail.com', 'default', 'default', 'default', NULL, 1, NULL, '2023-08-31 12:41:25', '2023-08-31 12:45:00', NULL, NULL, NULL, '2023-08-30 12:40:00'),
(5, 'dummyuser_f658', '$2y$10$FtdMM8TU7fewS8OVmYB2.OhNZuCV8h2PGeJqs0KHWqjRrDPyY0Bny', 'dummyuser_f658', 1, 'auto', 'your-email@example.net', 'default', 'default', 'default', NULL, 1, NULL, '2023-08-31 12:44:31', '2023-08-31 12:46:57', NULL, NULL, NULL, NULL),
(6, 'ari', '$2y$10$9s7PUB3C.Fbxg1p9gZ0RXeCYJ6dWLc7uGVbnXiHZUonGpUX2UglOS', '', 1, 'auto', 'ari@gmail.com', 'default', 'default', 'default', NULL, 1, '2023-08-31 07:53:23', '2023-08-31 12:50:18', '2023-08-31 12:53:23', NULL, NULL, NULL, '2023-08-31 12:50:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lime_kuisoneruser_groups`
--

CREATE TABLE `lime_kuisoneruser_groups` (
  `ugid` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` text NOT NULL,
  `owner_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `lime_kuisoneruser_in_groups`
--

CREATE TABLE `lime_kuisoneruser_in_groups` (
  `ugid` int(11) NOT NULL,
  `uid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `lime_kuisoneruser_in_permissionrole`
--

CREATE TABLE `lime_kuisoneruser_in_permissionrole` (
  `ptid` int(11) NOT NULL,
  `uid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `lime_kuisoneranswers`
--
ALTER TABLE `lime_kuisoneranswers`
  ADD PRIMARY KEY (`aid`),
  ADD UNIQUE KEY `lime_kuisoneranswers_idx` (`qid`,`code`,`scale_id`),
  ADD KEY `lime_kuisoneranswers_idx2` (`sortorder`);

--
-- Indeks untuk tabel `lime_kuisoneranswer_l10ns`
--
ALTER TABLE `lime_kuisoneranswer_l10ns`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lime_kuisoneranswer_l10ns_idx` (`aid`,`language`);

--
-- Indeks untuk tabel `lime_kuisonerarchived_table_settings`
--
ALTER TABLE `lime_kuisonerarchived_table_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `lime_kuisonerassessments`
--
ALTER TABLE `lime_kuisonerassessments`
  ADD PRIMARY KEY (`id`,`language`),
  ADD KEY `lime_kuisonerassessments_idx2` (`sid`),
  ADD KEY `lime_kuisonerassessments_idx3` (`gid`);

--
-- Indeks untuk tabel `lime_kuisonerasset_version`
--
ALTER TABLE `lime_kuisonerasset_version`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `lime_kuisonerboxes`
--
ALTER TABLE `lime_kuisonerboxes`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `lime_kuisonerconditions`
--
ALTER TABLE `lime_kuisonerconditions`
  ADD PRIMARY KEY (`cid`),
  ADD KEY `lime_kuisonerconditions_idx` (`qid`),
  ADD KEY `lime_kuisonerconditions_idx3` (`cqid`);

--
-- Indeks untuk tabel `lime_kuisonerdefaultvalues`
--
ALTER TABLE `lime_kuisonerdefaultvalues`
  ADD PRIMARY KEY (`dvid`),
  ADD KEY `lime_kuisoneridx1_defaultvalue` (`qid`,`scale_id`,`sqid`,`specialtype`);

--
-- Indeks untuk tabel `lime_kuisonerdefaultvalue_l10ns`
--
ALTER TABLE `lime_kuisonerdefaultvalue_l10ns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lime_kuisoneridx1_defaultvalue_ls` (`dvid`,`language`);

--
-- Indeks untuk tabel `lime_kuisonerexpression_errors`
--
ALTER TABLE `lime_kuisonerexpression_errors`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `lime_kuisonerfailed_emails`
--
ALTER TABLE `lime_kuisonerfailed_emails`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `lime_kuisonerfailed_login_attempts`
--
ALTER TABLE `lime_kuisonerfailed_login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `lime_kuisonergroups`
--
ALTER TABLE `lime_kuisonergroups`
  ADD PRIMARY KEY (`gid`),
  ADD KEY `lime_kuisoneridx1_groups` (`sid`);

--
-- Indeks untuk tabel `lime_kuisonergroup_l10ns`
--
ALTER TABLE `lime_kuisonergroup_l10ns`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lime_kuisoneridx1_group_ls` (`gid`,`language`);

--
-- Indeks untuk tabel `lime_kuisonerlabels`
--
ALTER TABLE `lime_kuisonerlabels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lime_kuisoneridx5_labels` (`lid`,`code`),
  ADD KEY `lime_kuisoneridx1_labels` (`code`),
  ADD KEY `lime_kuisoneridx2_labels` (`sortorder`),
  ADD KEY `lime_kuisoneridx4_labels` (`lid`,`sortorder`);

--
-- Indeks untuk tabel `lime_kuisonerlabelsets`
--
ALTER TABLE `lime_kuisonerlabelsets`
  ADD PRIMARY KEY (`lid`),
  ADD KEY `lime_kuisoneridx1_labelsets` (`owner_id`),
  ADD KEY `lime_kuisoneridx2_labelsets` (`lid`,`owner_id`);

--
-- Indeks untuk tabel `lime_kuisonerlabel_l10ns`
--
ALTER TABLE `lime_kuisonerlabel_l10ns`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `lime_kuisonermap_tutorial_users`
--
ALTER TABLE `lime_kuisonermap_tutorial_users`
  ADD PRIMARY KEY (`uid`,`tid`);

--
-- Indeks untuk tabel `lime_kuisonermessage`
--
ALTER TABLE `lime_kuisonermessage`
  ADD PRIMARY KEY (`id`,`language`);

--
-- Indeks untuk tabel `lime_kuisonernotifications`
--
ALTER TABLE `lime_kuisonernotifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lime_kuisonernotifications_pk` (`entity`,`entity_id`,`status`),
  ADD KEY `lime_kuisoneridx1_notifications` (`hash`);

--
-- Indeks untuk tabel `lime_kuisonerold_survey_397312_20230831070118`
--
ALTER TABLE `lime_kuisonerold_survey_397312_20230831070118`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_survey_token_397312_20347` (`token`);

--
-- Indeks untuk tabel `lime_kuisonerold_survey_397312_20230902070708`
--
ALTER TABLE `lime_kuisonerold_survey_397312_20230902070708`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_survey_token_397312_16195` (`token`);

--
-- Indeks untuk tabel `lime_kuisonerparticipants`
--
ALTER TABLE `lime_kuisonerparticipants`
  ADD PRIMARY KEY (`participant_id`),
  ADD KEY `lime_kuisoneridx3_participants` (`language`);

--
-- Indeks untuk tabel `lime_kuisonerparticipant_attribute`
--
ALTER TABLE `lime_kuisonerparticipant_attribute`
  ADD PRIMARY KEY (`participant_id`,`attribute_id`);

--
-- Indeks untuk tabel `lime_kuisonerparticipant_attribute_names`
--
ALTER TABLE `lime_kuisonerparticipant_attribute_names`
  ADD PRIMARY KEY (`attribute_id`,`attribute_type`),
  ADD KEY `lime_kuisoneridx_participant_attribute_names` (`attribute_id`,`attribute_type`);

--
-- Indeks untuk tabel `lime_kuisonerparticipant_attribute_names_lang`
--
ALTER TABLE `lime_kuisonerparticipant_attribute_names_lang`
  ADD PRIMARY KEY (`attribute_id`,`lang`);

--
-- Indeks untuk tabel `lime_kuisonerparticipant_attribute_values`
--
ALTER TABLE `lime_kuisonerparticipant_attribute_values`
  ADD PRIMARY KEY (`value_id`);

--
-- Indeks untuk tabel `lime_kuisonerparticipant_shares`
--
ALTER TABLE `lime_kuisonerparticipant_shares`
  ADD PRIMARY KEY (`participant_id`,`share_uid`);

--
-- Indeks untuk tabel `lime_kuisonerpermissions`
--
ALTER TABLE `lime_kuisonerpermissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lime_kuisoneridx1_permissions` (`entity_id`,`entity`,`permission`,`uid`);

--
-- Indeks untuk tabel `lime_kuisonerpermissiontemplates`
--
ALTER TABLE `lime_kuisonerpermissiontemplates`
  ADD PRIMARY KEY (`ptid`),
  ADD UNIQUE KEY `lime_kuisoneridx1_name` (`name`);

--
-- Indeks untuk tabel `lime_kuisonerplugins`
--
ALTER TABLE `lime_kuisonerplugins`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `lime_kuisonerplugin_settings`
--
ALTER TABLE `lime_kuisonerplugin_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `lime_kuisonerquestions`
--
ALTER TABLE `lime_kuisonerquestions`
  ADD PRIMARY KEY (`qid`),
  ADD KEY `lime_kuisoneridx1_questions` (`sid`),
  ADD KEY `lime_kuisoneridx2_questions` (`gid`),
  ADD KEY `lime_kuisoneridx3_questions` (`type`),
  ADD KEY `lime_kuisoneridx4_questions` (`title`),
  ADD KEY `lime_kuisoneridx5_questions` (`parent_qid`);

--
-- Indeks untuk tabel `lime_kuisonerquestion_attributes`
--
ALTER TABLE `lime_kuisonerquestion_attributes`
  ADD PRIMARY KEY (`qaid`),
  ADD KEY `lime_kuisoneridx1_question_attributes` (`qid`),
  ADD KEY `lime_kuisoneridx2_question_attributes` (`attribute`);

--
-- Indeks untuk tabel `lime_kuisonerquestion_l10ns`
--
ALTER TABLE `lime_kuisonerquestion_l10ns`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lime_kuisoneridx1_question_ls` (`qid`,`language`);

--
-- Indeks untuk tabel `lime_kuisonerquestion_themes`
--
ALTER TABLE `lime_kuisonerquestion_themes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lime_kuisoneridx1_question_themes` (`name`);

--
-- Indeks untuk tabel `lime_kuisonerquota`
--
ALTER TABLE `lime_kuisonerquota`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lime_kuisoneridx1_quota` (`sid`);

--
-- Indeks untuk tabel `lime_kuisonerquota_languagesettings`
--
ALTER TABLE `lime_kuisonerquota_languagesettings`
  ADD PRIMARY KEY (`quotals_id`),
  ADD KEY `lime_kuisoneridx1_quota_id` (`quotals_quota_id`);

--
-- Indeks untuk tabel `lime_kuisonerquota_members`
--
ALTER TABLE `lime_kuisonerquota_members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lime_kuisoneridx1_quota_members` (`sid`,`qid`,`quota_id`,`code`),
  ADD KEY `lime_kuisoneridx2_quota_id` (`quota_id`);

--
-- Indeks untuk tabel `lime_kuisonersaved_control`
--
ALTER TABLE `lime_kuisonersaved_control`
  ADD PRIMARY KEY (`scid`),
  ADD KEY `lime_kuisoneridx1_saved_control` (`sid`),
  ADD KEY `lime_kuisoneridx2_saved_control` (`srid`);

--
-- Indeks untuk tabel `lime_kuisonersessions`
--
ALTER TABLE `lime_kuisonersessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sess_expire` (`expire`);

--
-- Indeks untuk tabel `lime_kuisonersettings_global`
--
ALTER TABLE `lime_kuisonersettings_global`
  ADD PRIMARY KEY (`stg_name`);

--
-- Indeks untuk tabel `lime_kuisonersettings_user`
--
ALTER TABLE `lime_kuisonersettings_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lime_kuisoneridx1_settings_user` (`uid`),
  ADD KEY `lime_kuisoneridx2_settings_user` (`entity`),
  ADD KEY `lime_kuisoneridx3_settings_user` (`entity_id`),
  ADD KEY `lime_kuisoneridx4_settings_user` (`stg_name`);

--
-- Indeks untuk tabel `lime_kuisonersource_message`
--
ALTER TABLE `lime_kuisonersource_message`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `lime_kuisonersurveymenu`
--
ALTER TABLE `lime_kuisonersurveymenu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lime_kuisonersurveymenu_name` (`name`),
  ADD KEY `lime_kuisoneridx2_surveymenu` (`title`);

--
-- Indeks untuk tabel `lime_kuisonersurveymenu_entries`
--
ALTER TABLE `lime_kuisonersurveymenu_entries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lime_kuisonersurveymenu_entries_name` (`name`),
  ADD KEY `lime_kuisoneridx1_surveymenu_entries` (`menu_id`),
  ADD KEY `lime_kuisoneridx5_surveymenu_entries` (`menu_title`);

--
-- Indeks untuk tabel `lime_kuisonersurveys`
--
ALTER TABLE `lime_kuisonersurveys`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `lime_kuisoneridx1_surveys` (`owner_id`),
  ADD KEY `lime_kuisoneridx2_surveys` (`gsid`);

--
-- Indeks untuk tabel `lime_kuisonersurveys_groups`
--
ALTER TABLE `lime_kuisonersurveys_groups`
  ADD PRIMARY KEY (`gsid`),
  ADD KEY `lime_kuisoneridx1_surveys_groups` (`name`),
  ADD KEY `lime_kuisoneridx2_surveys_groups` (`title`);

--
-- Indeks untuk tabel `lime_kuisonersurveys_groupsettings`
--
ALTER TABLE `lime_kuisonersurveys_groupsettings`
  ADD PRIMARY KEY (`gsid`);

--
-- Indeks untuk tabel `lime_kuisonersurveys_languagesettings`
--
ALTER TABLE `lime_kuisonersurveys_languagesettings`
  ADD PRIMARY KEY (`surveyls_survey_id`,`surveyls_language`),
  ADD KEY `lime_kuisoneridx1_surveys_languagesettings` (`surveyls_title`);

--
-- Indeks untuk tabel `lime_kuisonersurvey_links`
--
ALTER TABLE `lime_kuisonersurvey_links`
  ADD PRIMARY KEY (`participant_id`,`token_id`,`survey_id`);

--
-- Indeks untuk tabel `lime_kuisonersurvey_url_parameters`
--
ALTER TABLE `lime_kuisonersurvey_url_parameters`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `lime_kuisonertemplates`
--
ALTER TABLE `lime_kuisonertemplates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lime_kuisoneridx1_templates` (`name`),
  ADD KEY `lime_kuisoneridx2_templates` (`title`),
  ADD KEY `lime_kuisoneridx3_templates` (`owner_id`),
  ADD KEY `lime_kuisoneridx4_templates` (`extends`);

--
-- Indeks untuk tabel `lime_kuisonertemplate_configuration`
--
ALTER TABLE `lime_kuisonertemplate_configuration`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lime_kuisoneridx1_template_configuration` (`template_name`),
  ADD KEY `lime_kuisoneridx2_template_configuration` (`sid`),
  ADD KEY `lime_kuisoneridx3_template_configuration` (`gsid`),
  ADD KEY `lime_kuisoneridx4_template_configuration` (`uid`);

--
-- Indeks untuk tabel `lime_kuisonertutorials`
--
ALTER TABLE `lime_kuisonertutorials`
  ADD PRIMARY KEY (`tid`),
  ADD UNIQUE KEY `lime_kuisoneridx1_tutorials` (`name`);

--
-- Indeks untuk tabel `lime_kuisonertutorial_entries`
--
ALTER TABLE `lime_kuisonertutorial_entries`
  ADD PRIMARY KEY (`teid`);

--
-- Indeks untuk tabel `lime_kuisonertutorial_entry_relation`
--
ALTER TABLE `lime_kuisonertutorial_entry_relation`
  ADD PRIMARY KEY (`teid`,`tid`),
  ADD KEY `lime_kuisoneridx1_tutorial_entry_relation` (`uid`),
  ADD KEY `lime_kuisoneridx2_tutorial_entry_relation` (`sid`);

--
-- Indeks untuk tabel `lime_kuisonerusers`
--
ALTER TABLE `lime_kuisonerusers`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `lime_kuisoneridx1_users` (`users_name`),
  ADD KEY `lime_kuisoneridx2_users` (`email`);

--
-- Indeks untuk tabel `lime_kuisoneruser_groups`
--
ALTER TABLE `lime_kuisoneruser_groups`
  ADD PRIMARY KEY (`ugid`),
  ADD UNIQUE KEY `lime_kuisoneridx1_user_groups` (`name`);

--
-- Indeks untuk tabel `lime_kuisoneruser_in_groups`
--
ALTER TABLE `lime_kuisoneruser_in_groups`
  ADD PRIMARY KEY (`ugid`,`uid`);

--
-- Indeks untuk tabel `lime_kuisoneruser_in_permissionrole`
--
ALTER TABLE `lime_kuisoneruser_in_permissionrole`
  ADD PRIMARY KEY (`ptid`,`uid`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `lime_kuisoneranswers`
--
ALTER TABLE `lime_kuisoneranswers`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT untuk tabel `lime_kuisoneranswer_l10ns`
--
ALTER TABLE `lime_kuisoneranswer_l10ns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT untuk tabel `lime_kuisonerarchived_table_settings`
--
ALTER TABLE `lime_kuisonerarchived_table_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `lime_kuisonerassessments`
--
ALTER TABLE `lime_kuisonerassessments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `lime_kuisonerasset_version`
--
ALTER TABLE `lime_kuisonerasset_version`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `lime_kuisonerboxes`
--
ALTER TABLE `lime_kuisonerboxes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `lime_kuisonerconditions`
--
ALTER TABLE `lime_kuisonerconditions`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `lime_kuisonerdefaultvalues`
--
ALTER TABLE `lime_kuisonerdefaultvalues`
  MODIFY `dvid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `lime_kuisonerdefaultvalue_l10ns`
--
ALTER TABLE `lime_kuisonerdefaultvalue_l10ns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `lime_kuisonerexpression_errors`
--
ALTER TABLE `lime_kuisonerexpression_errors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `lime_kuisonerfailed_emails`
--
ALTER TABLE `lime_kuisonerfailed_emails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `lime_kuisonerfailed_login_attempts`
--
ALTER TABLE `lime_kuisonerfailed_login_attempts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `lime_kuisonergroups`
--
ALTER TABLE `lime_kuisonergroups`
  MODIFY `gid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `lime_kuisonergroup_l10ns`
--
ALTER TABLE `lime_kuisonergroup_l10ns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `lime_kuisonerlabels`
--
ALTER TABLE `lime_kuisonerlabels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `lime_kuisonerlabelsets`
--
ALTER TABLE `lime_kuisonerlabelsets`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `lime_kuisonerlabel_l10ns`
--
ALTER TABLE `lime_kuisonerlabel_l10ns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `lime_kuisonernotifications`
--
ALTER TABLE `lime_kuisonernotifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `lime_kuisonerold_survey_397312_20230831070118`
--
ALTER TABLE `lime_kuisonerold_survey_397312_20230831070118`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `lime_kuisonerold_survey_397312_20230902070708`
--
ALTER TABLE `lime_kuisonerold_survey_397312_20230902070708`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `lime_kuisonerparticipant_attribute_names`
--
ALTER TABLE `lime_kuisonerparticipant_attribute_names`
  MODIFY `attribute_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `lime_kuisonerparticipant_attribute_values`
--
ALTER TABLE `lime_kuisonerparticipant_attribute_values`
  MODIFY `value_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `lime_kuisonerpermissions`
--
ALTER TABLE `lime_kuisonerpermissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT untuk tabel `lime_kuisonerpermissiontemplates`
--
ALTER TABLE `lime_kuisonerpermissiontemplates`
  MODIFY `ptid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `lime_kuisonerplugins`
--
ALTER TABLE `lime_kuisonerplugins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `lime_kuisonerplugin_settings`
--
ALTER TABLE `lime_kuisonerplugin_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `lime_kuisonerquestions`
--
ALTER TABLE `lime_kuisonerquestions`
  MODIFY `qid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT untuk tabel `lime_kuisonerquestion_attributes`
--
ALTER TABLE `lime_kuisonerquestion_attributes`
  MODIFY `qaid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1240;

--
-- AUTO_INCREMENT untuk tabel `lime_kuisonerquestion_l10ns`
--
ALTER TABLE `lime_kuisonerquestion_l10ns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT untuk tabel `lime_kuisonerquestion_themes`
--
ALTER TABLE `lime_kuisonerquestion_themes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT untuk tabel `lime_kuisonerquota`
--
ALTER TABLE `lime_kuisonerquota`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `lime_kuisonerquota_languagesettings`
--
ALTER TABLE `lime_kuisonerquota_languagesettings`
  MODIFY `quotals_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `lime_kuisonerquota_members`
--
ALTER TABLE `lime_kuisonerquota_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `lime_kuisonersaved_control`
--
ALTER TABLE `lime_kuisonersaved_control`
  MODIFY `scid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `lime_kuisonersettings_user`
--
ALTER TABLE `lime_kuisonersettings_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT untuk tabel `lime_kuisonersource_message`
--
ALTER TABLE `lime_kuisonersource_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `lime_kuisonersurveymenu`
--
ALTER TABLE `lime_kuisonersurveymenu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `lime_kuisonersurveymenu_entries`
--
ALTER TABLE `lime_kuisonersurveymenu_entries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `lime_kuisonersurveys_groups`
--
ALTER TABLE `lime_kuisonersurveys_groups`
  MODIFY `gsid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `lime_kuisonersurvey_url_parameters`
--
ALTER TABLE `lime_kuisonersurvey_url_parameters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `lime_kuisonertemplates`
--
ALTER TABLE `lime_kuisonertemplates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `lime_kuisonertemplate_configuration`
--
ALTER TABLE `lime_kuisonertemplate_configuration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `lime_kuisonertutorials`
--
ALTER TABLE `lime_kuisonertutorials`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `lime_kuisonertutorial_entries`
--
ALTER TABLE `lime_kuisonertutorial_entries`
  MODIFY `teid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `lime_kuisonerusers`
--
ALTER TABLE `lime_kuisonerusers`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `lime_kuisoneruser_groups`
--
ALTER TABLE `lime_kuisoneruser_groups`
  MODIFY `ugid` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data untuk tabel `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"saldoreseller\",\"table\":\"historisaldoreseller\"}]');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data untuk tabel `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'saldoreseller', 'historisaldoreseller', '{\"sorted_col\":\"`historisaldoreseller`.`TANGGAL` ASC\"}', '2023-02-08 03:38:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data untuk tabel `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2023-02-08 03:36:52', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"id\"}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indeks untuk tabel `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indeks untuk tabel `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indeks untuk tabel `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indeks untuk tabel `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indeks untuk tabel `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indeks untuk tabel `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indeks untuk tabel `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indeks untuk tabel `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indeks untuk tabel `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indeks untuk tabel `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `rehabonesia`
--
CREATE DATABASE IF NOT EXISTS `rehabonesia` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `rehabonesia`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2022_06_27_071157_create_sessions_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` text NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('TAGNhFekeGcSxw11acWsaR9dsqH0ab5JBFt4l0Mr', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicUltZVNsdWw5eFJ6dmFURkZTaFV0OUUyaDE4Zk5BNVY1VGNLdUNweSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1708411343),
('v1MQi53sq1mp3XYP9zocmT4Ws5Dk3mbTs40VHNMU', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVmRCVGdORzZrWEpRek9OaEpIcXNwT3c2bVBMMDhqakl3em1UaE4xdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1708141015);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `saldoreseller`
--
CREATE DATABASE IF NOT EXISTS `saldoreseller` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `saldoreseller`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `historisaldoreseller`
--

CREATE TABLE `historisaldoreseller` (
  `IDRESELLER` varchar(16) NOT NULL,
  `TANGGAL` date NOT NULL,
  `JAM` time NOT NULL,
  `KETERANGAN` varchar(255) NOT NULL,
  `SALDO` double NOT NULL,
  `TOTALSALDO` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `historisaldoreseller`
--

INSERT INTO `historisaldoreseller` (`IDRESELLER`, `TANGGAL`, `JAM`, `KETERANGAN`, `SALDO`, `TOTALSALDO`) VALUES
('VP145464', '2022-03-06', '08:30:22', 'Trx elektrik I10 ke 081523855243', -10910, 3530),
('VP145464', '2022-03-06', '08:34:45', 'Komisi per 06-03-22', 39400, 42930),
('VP145464', '2022-03-06', '08:35:18', 'Trx elektrik I5 ke 081523855243', -5910, 37020),
('VP145464', '2022-03-06', '08:35:18', 'Trx elektrik I5 ke 081523855243', -5910, 37020),
('VP145464', '2022-03-08', '13:16:47', 'Trx elektrik S10 ke 081342124252', -10435, 26585),
('VP145464', '2022-03-09', '13:49:05', 'Trx elektrik I25 ke 081523855243', -24985, 1600),
('VP145464', '2022-03-16', '11:04:41', 'Penarikan Komisi', 6000, 7600),
('VP145464', '2022-03-18', '13:16:24', 'Trx elektrik I5 ke 085824285996', -5910, 1690),
('VP145464', '2022-03-18', '13:16:49', 'Gagalkan trx [68481766] I5 untuk tujuan 085824285996', 5910, 7600),
('VP145464', '2022-03-27', '18:40:56', 'Penarikan Komisi', 8000, 15600),
('VP145464', '2022-04-04', '10:31:13', 'Penarikan Komisi', 7000, 22600),
('VP145464', '2022-04-05', '21:09:23', 'Trx elektrik PLN ke 317500010954', 0, 22600),
('VP145464', '2022-04-05', '21:10:38', 'Trx elektrik PLN ke 317500010954', 0, 22600),
('VP145464', '2022-04-05', '21:12:35', 'Trx elektrik PLN ke 317500010954', -20940, 1660),
('VP145464', '2022-04-11', '19:20:58', 'Penarikan Komisi', 6000, 7660),
('VP145464', '2022-04-11', '19:21:24', 'Trx elektrik S5 ke 085242129225', -5535, 2125),
('VP145464', '2022-04-12', '02:58:50', 'Trx elektrik PLN ke 317500339166', 0, 2125),
('VP145464', '2022-04-12', '02:58:52', 'Gagalkan trx [69765542] PLN untuk tujuan 317500339166', 0, 2125),
('VP145464', '2022-04-12', '02:59:15', 'Trx elektrik PLN ke 317500339166', 0, 2125),
('VP145464', '2022-04-12', '02:59:17', 'Gagalkan trx [69765545] PLN untuk tujuan 317500339166', 0, 2125),
('VP145464', '2022-04-12', '02:59:51', 'Trx elektrik PLN ke 3175015004108', 0, 2125),
('VP145464', '2022-04-12', '02:59:52', 'Gagalkan trx [69765549] PLN untuk tujuan 3175015004108', 0, 2125),
('VP145464', '2022-04-18', '17:28:28', 'Trx elektrik PLN ke 317500026801', 0, 2125),
('VP145464', '2022-04-19', '22:04:20', 'Penarikan Komisi', 7100, 9225),
('VP145464', '2022-04-27', '04:28:02', 'Penarikan Komisi', 6400, 15625),
('VP145464', '2022-05-02', '05:45:14', 'Trx elektrik IDYP3 ke 085757089572', -5360, 10265),
('VP145464', '2022-05-02', '13:26:46', 'Set valid tiket deposit sebesar 204682.00', 204682, 214947),
('VP145464', '2022-05-03', '11:21:25', 'Trx elektrik I15 ke 081543206027', -15210, 199737),
('VP145464', '2022-05-03', '11:30:46', 'Trx elektrik I5 ke 081543206027', -5860, 193877),
('VP145464', '2022-05-03', '21:22:02', 'Trx elektrik IDY3 ke 085756906113', -5510, 188367),
('VP145464', '2022-05-04', '10:40:46', 'Trx elektrik I25 ke 085756464382', -24985, 163382),
('VP145464', '2022-05-04', '18:03:28', 'Trx elektrik I25 ke 085756906113', -24985, 138397),
('VP145464', '2022-05-05', '06:38:30', 'Trx elektrik I5 ke 081543206027', -5835, 132562),
('VP145464', '2022-05-05', '11:15:33', 'Trx elektrik I5 ke 081523855243', -5835, 126727),
('VP145464', '2022-05-06', '13:23:18', 'Trx elektrik I20 ke 085756716012', -20060, 106667),
('VP145464', '2022-05-06', '15:15:57', 'Trx elektrik PP50 ke 32015129276', -50185, 56482),
('VP145464', '2022-05-07', '07:08:58', 'Trx elektrik PLN20 ke 45067550942', -20210, 36272),
('VP145464', '2022-05-07', '12:04:13', 'Trx elektrik PP20 ke 14388217235', -20185, 16087),
('VP145464', '2022-05-09', '18:00:22', 'Trx elektrik I10 ke 081543206027', -10785, 5302),
('VP145464', '2022-05-11', '15:32:41', 'Trx elektrik S100 ke 081244786505', -97660, 907642),
('VP145464', '2022-05-11', '15:55:23', 'Trx elektrik DANA100 ke 082393981480', -100410, 907232),
('VP145464', '2022-05-11', '20:05:28', 'Penarikan Komisi', 12400, -180368),
('VP145464', '2022-05-24', '17:26:05', 'Penarikan Komisi', 11550, -168818),
('VP145464', '2022-06-16', '10:08:34', 'Penarikan Komisi', 18900, -149918),
('VP145464', '2022-06-27', '16:11:13', 'Penarikan Komisi', 11200, -138718),
('VP145464', '2022-07-29', '20:09:54', 'Penarikan Komisi', 19500, -119218),
('VP145464', '2022-08-31', '13:27:06', 'Penarikan Komisi', 15000, -104218),
('VP145464', '2023-01-23', '10:57:30', 'Komisi per 23-01-23', 49200, -55018);
--
-- Database: `survey_db`
--
CREATE DATABASE IF NOT EXISTS `survey_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `survey_db`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `answers`
--

CREATE TABLE `answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `answer` text NOT NULL DEFAULT '-',
  `content_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `answers`
--

INSERT INTO `answers` (`id`, `answer`, `content_id`, `created_at`, `updated_at`) VALUES
(1, 'lari', 1, '2023-09-04 00:34:17', '2023-09-04 00:34:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `contents`
--

CREATE TABLE `contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `question` text NOT NULL,
  `right_answer` text DEFAULT '-',
  `choices` longtext DEFAULT '-',
  `isRequired` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `contents`
--

INSERT INTO `contents` (`id`, `type`, `question`, `right_answer`, `choices`, `isRequired`, `created_at`, `updated_at`) VALUES
(1, 2, 'apakah hoby anda', NULL, 'renang|lari|beramain bola', 0, '2023-09-04 00:29:07', '2023-09-04 00:29:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_02_26_064150_create_surveys_table', 1),
(5, '2020_02_26_064424_create_contents_table', 1),
(6, '2020_02_26_064425_create_responds_table', 1),
(7, '2020_02_26_064440_create_answers_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `responds`
--

CREATE TABLE `responds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL DEFAULT '255.255.255.255',
  `answer_ids` text NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `survey_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `responds`
--

INSERT INTO `responds` (`id`, `ip_address`, `answer_ids`, `user_id`, `survey_id`, `created_at`, `updated_at`) VALUES
(1, '127.0.0.1', '1', 2, 1, '2023-09-04 00:34:17', '2023-09-04 00:34:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `surveys`
--

CREATE TABLE `surveys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL DEFAULT 'Default Title',
  `description` text DEFAULT 'Ini deskripsi nya',
  `content_ids` text NOT NULL,
  `duration` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `surveys`
--

INSERT INTO `surveys` (`id`, `slug`, `title`, `description`, `content_ids`, `duration`, `created_at`, `updated_at`) VALUES
(1, '8Gw0hxLe7f', 'hobi', 'ini adalah hobby', '1', '2023-09-03T17:00:00.000Z|2023-09-29T17:00:00.000Z', '2023-09-04 00:29:07', '2023-09-04 00:33:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `api_token` varchar(80) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `type`, `email_verified_at`, `password`, `api_token`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'fachry Muhammad', 'fahrizzz555@gmail.com', 'admin', NULL, '$2y$10$JunaQEiQ9nqDLKKuVj4K0.b6lLGfSmi82TFZz9DIviJGfUNUdMQXS', 'ded8165337f9bb02896061a4bc28c029f94853ab958ae735dbc1ab9640065fe9', NULL, '2023-09-04 00:06:21', '2023-09-04 00:34:24'),
(2, 'fachry', 'fahrizzz333@gmail.com', 'respondant', NULL, '$2y$10$HhitDt0ZLDsedBtwVw3I7.1OFArOq9qBUxONgYYK0x0Us7LFA4Af2', 'ae087af2cdce06e56361c79ff92f7be7bccf7cd756279ee6f19e560a39db5d12', NULL, '2023-09-04 00:32:04', '2023-09-04 00:34:12');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `answers_content_id_foreign` (`content_id`);

--
-- Indeks untuk tabel `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `responds`
--
ALTER TABLE `responds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `responds_user_id_foreign` (`user_id`),
  ADD KEY `responds_survey_id_foreign` (`survey_id`);

--
-- Indeks untuk tabel `surveys`
--
ALTER TABLE `surveys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `surveys_slug_unique` (`slug`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_api_token_unique` (`api_token`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `answers`
--
ALTER TABLE `answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `contents`
--
ALTER TABLE `contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `responds`
--
ALTER TABLE `responds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `surveys`
--
ALTER TABLE `surveys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answers_content_id_foreign` FOREIGN KEY (`content_id`) REFERENCES `contents` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `responds`
--
ALTER TABLE `responds`
  ADD CONSTRAINT `responds_survey_id_foreign` FOREIGN KEY (`survey_id`) REFERENCES `surveys` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `responds_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
--
-- Database: `survey_guru`
--
CREATE DATABASE IF NOT EXISTS `survey_guru` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `survey_guru`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `answers`
--

CREATE TABLE `answers` (
  `id` int(30) NOT NULL,
  `survey_id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `answer` text NOT NULL,
  `question_id` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `answers`
--

INSERT INTO `answers` (`id`, `survey_id`, `user_id`, `answer`, `question_id`, `date_created`) VALUES
(1, 1, 2, 'Sample Only', 4, '2020-11-10 14:46:07'),
(2, 1, 2, '[JNmhW],[zZpTE]', 2, '2020-11-10 14:46:07'),
(3, 1, 2, 'dAWTD', 1, '2020-11-10 14:46:07'),
(4, 1, 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec in tempus turpis, sed fermentum risus. Praesent vitae velit rutrum, dictum massa nec, pharetra felis. Phasellus enim augue, laoreet in accumsan dictum, mollis nec lectus. Aliquam id viverra nisl. Proin quis posuere nulla. Nullam suscipit eget leo ut suscipit.', 4, '2020-11-10 15:59:43'),
(5, 1, 3, '[qCMGO],[JNmhW]', 2, '2020-11-10 15:59:43'),
(6, 1, 3, 'esNuP', 1, '2020-11-10 15:59:43'),
(7, 6, 5, 'cek', 5, '2023-09-05 16:31:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `questions`
--

CREATE TABLE `questions` (
  `id` int(30) NOT NULL,
  `question` text NOT NULL,
  `frm_option` text NOT NULL,
  `type` varchar(50) NOT NULL,
  `order_by` int(11) NOT NULL,
  `survey_id` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `questions`
--

INSERT INTO `questions` (`id`, `question`, `frm_option`, `type`, `order_by`, `survey_id`, `date_created`) VALUES
(1, 'Sample Survey Question using Radio Button', '{\"cKWLY\":\"Option 1\",\"esNuP\":\"Option 2\",\"dAWTD\":\"Option 3\",\"eZCpf\":\"Option 4\"}', 'radio_opt', 3, 1, '2020-11-10 12:04:46'),
(2, 'Question for Checkboxes', '{\"qCMGO\":\"Checkbox label 1\",\"JNmhW\":\"Checkbox label 2\",\"zZpTE\":\"Checkbox label 3\",\"dOeJi\":\"Checkbox label 4\"}', 'check_opt', 2, 1, '2020-11-10 12:25:13'),
(4, 'Sample question for the text field', '', 'textfield_s', 1, 1, '2020-11-10 13:34:21'),
(5, 'test', '', 'textfield_s', 0, 6, '2023-09-05 11:35:31'),
(6, 'test', '{\"XxzZD\":\"test\",\"QbASy\":\"test2\",\"qpSyh\":\"test3\"}', 'radio_opt', 0, 6, '2023-09-05 16:32:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `survey_set`
--

CREATE TABLE `survey_set` (
  `id` int(30) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `user_id` int(30) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `survey_set`
--

INSERT INTO `survey_set` (`id`, `title`, `description`, `user_id`, `start_date`, `end_date`, `date_created`) VALUES
(1, 'Sample Survey', 'Sample Only', 0, '2020-11-06', '2023-09-07', '2020-11-10 09:57:47'),
(2, 'Survey 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec in tempus turpis, sed fermentum risus. Praesent vitae velit rutrum, dictum massa nec, pharetra felis. Phasellus enim augue, laoreet in accumsan dictum, mollis nec lectus. ', 0, '2020-10-15', '2020-12-30', '2020-11-10 14:12:09'),
(3, 'Survey 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec in tempus turpis, sed fermentum risus. Praesent vitae velit rutrum, dictum massa nec, pharetra felis. ', 0, '2020-09-01', '2020-11-27', '2020-11-10 14:12:33'),
(4, 'Survey 23', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec in tempus turpis, sed fermentum risus. Praesent vitae velit rutrum, dictum massa nec, pharetra felis. ', 0, '2020-09-10', '2020-11-27', '2020-11-10 14:14:03'),
(5, 'Sample Survey 101', 'Sample only', 0, '2020-10-01', '2020-11-23', '2020-11-10 14:14:29'),
(6, 'cek', 'tester', 0, '2023-09-05', '2023-09-06', '2023-09-05 11:35:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `middlename` varchar(200) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 3 COMMENT '1=Admin,2 = Staff, 3= Subscriber',
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `middlename`, `contact`, `address`, `email`, `password`, `type`, `date_created`) VALUES
(1, 'Admin', 'Admin', '', '+123456789', 'Sample address', 'admin@admin.com', '0192023a7bbd73250516f069df18b500', 1, '2020-11-10 08:43:06'),
(2, 'John', 'Smith', 'D', '8747808787', 'Sample Address', 'jsmith@sample.com', '1254737c076cf867dc53d60a0364f38e', 3, '2020-11-10 09:16:53'),
(3, 'Claire', 'Blake', 'D', '+6948 8542 623', 'Sample Address', 'cblake@sample.com', '4744ddea876b11dcb1d169fadf494418', 3, '2020-11-10 15:59:11'),
(4, 'Mike', 'Williams', 'G', '8747808787', 'Sample', 'mwilliams@sample.com', '3cc93e9a6741d8b40460457139cf8ced', 3, '2020-11-10 16:21:02'),
(5, 'Test', 'test', 'test', '1212121', 'test', 'fahrizzz555@gmail.com', '202cb962ac59075b964b07152d234b70', 3, '2023-09-05 12:50:31');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `survey_set`
--
ALTER TABLE `survey_set`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `survey_set`
--
ALTER TABLE `survey_set`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
