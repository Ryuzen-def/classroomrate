-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Apr 2024 pada 03.21
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `classroom`
--
CREATE DATABASE IF NOT EXISTS `classroom` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `classroom`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `assignments`
--

CREATE TABLE `assignments` (
  `id` int(11) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `assignments`
--

INSERT INTO `assignments` (`id`, `class_id`, `title`, `description`, `created_at`) VALUES
(1, 1, 'Linux', 'Buatlah Bootloader Linux', '2024-03-20 03:00:46'),
(2, 1, 'HTML', 'Lorem', '2024-03-20 03:06:38'),
(3, 3, 'Download Cisco', 'Lorem', '2024-03-20 04:59:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `classes`
--

CREATE TABLE `classes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `teacher` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `classes`
--

INSERT INTO `classes` (`id`, `name`, `teacher`, `created_at`) VALUES
(1, 'PKK', 'Novi Ari Wibowo', '2024-03-20 01:47:23'),
(3, 'Informatik', 'Harry', '2024-03-20 04:55:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `enrollments`
--

CREATE TABLE `enrollments` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `enrollments`
--

INSERT INTO `enrollments` (`id`, `class_id`, `student_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ratings`
--

CREATE TABLE `ratings` (
  `id` int(11) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `ratings`
--

INSERT INTO `ratings` (`id`, `class_id`, `rating`, `created_at`) VALUES
(1, 3, 5, '2024-03-20 04:59:23'),
(2, 3, 4, '2024-03-20 04:59:44'),
(3, 1, 5, '2024-03-20 05:22:06'),
(4, 1, 4, '2024-03-20 05:22:11'),
(5, 1, 3, '2024-03-20 05:22:27'),
(6, 1, 1, '2024-03-20 05:22:28'),
(7, 1, 5, '2024-03-25 01:01:29'),
(8, 1, 2, '2024-03-25 01:01:32'),
(9, 1, 5, '2024-03-25 01:01:36'),
(10, 1, 5, '2024-03-25 01:04:14'),
(11, 1, 5, '2024-03-25 01:04:18'),
(12, 1, 5, '2024-03-25 01:04:20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `students`
--

INSERT INTO `students` (`id`, `name`, `email`, `password`) VALUES
(1, 'Raihan', 'rehan@example.com', '123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`) VALUES
(1, 'admin', '$2y$10$OtxJNbP9q1IlJy5uhxzy1eTrafPET1w2k7T18pbn4/wO5yw17aFNK', 'admin@example.com'),
(2, 'raihan', '$2y$10$6hk6Ypumo9IGIpkKo7/KV.7nKRWnSYFtLON3AxelM1Tl6CGmnuPSy', 'raihan@example.com');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `assignments`
--
ALTER TABLE `assignments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_id` (`class_id`);

--
-- Indeks untuk tabel `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `enrollments`
--
ALTER TABLE `enrollments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indeks untuk tabel `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_id` (`class_id`);

--
-- Indeks untuk tabel `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `assignments`
--
ALTER TABLE `assignments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `enrollments`
--
ALTER TABLE `enrollments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `assignments`
--
ALTER TABLE `assignments`
  ADD CONSTRAINT `assignments_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`);

--
-- Ketidakleluasaan untuk tabel `enrollments`
--
ALTER TABLE `enrollments`
  ADD CONSTRAINT `enrollments_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`),
  ADD CONSTRAINT `enrollments_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);

--
-- Ketidakleluasaan untuk tabel `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`);
--
-- Database: `dbsiswa_rpl2`
--
CREATE DATABASE IF NOT EXISTS `dbsiswa_rpl2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dbsiswa_rpl2`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbsiswarpl2`
--

CREATE TABLE `tbsiswarpl2` (
  `Nis` int(11) NOT NULL,
  `Nama` varchar(50) DEFAULT NULL,
  `Kelas` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Tgl_Lahir` date DEFAULT NULL,
  `Alamat` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbsiswarpl2`
--

INSERT INTO `tbsiswarpl2` (`Nis`, `Nama`, `Kelas`, `Tgl_Lahir`, `Alamat`) VALUES
(202221485, 'Amru Abduh Yazid', 'XI RPL 2', '2005-07-28', 'Jl. Kenari No. 456, Bandung'),
(202221486, 'Ananda Saeputra Manalu', 'XI RPL 2', '2006-03-15', 'Jl. Teratai No. 789, Surabaya'),
(202221487, 'Andhika Ramaditya', 'XI RPL 2', '2006-02-05', 'Jl. Mawar No. 101, Medan'),
(202221494, 'Didi Hermawanto', 'XI RPL 2', '2005-09-20', 'Jl. Melati No. 202, Semarang'),
(202221496, 'Elvira Ishaq Putri', 'XI RPL 2', '2006-11-08', 'Jl. Anggrek No. 303, Makassar'),
(202221501, 'Fauzan Badar Brahim', 'XI RPL 2', '2005-04-17', 'Jl. Dahlia No. 404, Palembang'),
(202221503, 'Felicia Rivera', 'XI RPL 2', '2005-08-25', 'Jl. Kenanga No. 505, Samarinda'),
(202221505, 'Firla Airina', 'XI RPL 2', '2006-07-01', 'Jl. Melia No. 606, Banjarmasin'),
(202221507, 'Haris Nur Cahyanto', 'XI RPL 2', '2007-03-14', 'Jl. Seroja No. 707, Manado'),
(202221508, 'Jessica Aulia Ahmad', 'XI RPL 2', '2005-12-30', 'Jl. Mawar No. 808, Ambon'),
(202221509, 'Jonathan Reinhard Agustaf RMS', 'XI RPL 2', '2005-09-10', 'Jl. Anggrek No. 909, Palu'),
(202221510, 'Justin Aurelius Dani', 'XI RPL 2', '2006-11-22', 'Jl. Kenanga No. 1010, Kendari'),
(202221512, 'Khaira Meizahra', 'XI RPL 2', '2005-07-19', 'Jl. Melia No. 1111, Gorontalo'),
(202221513, 'M. Rayyan Noveri', 'XI RPL 2', '2007-01-11', 'Jl. Seroja No. 1212, Makassar'),
(202221516, 'Mufid Nur Tamam', 'XI RPL 2', '2006-02-28', 'Jl. Mawar No. 1313, Ambon'),
(202221517, 'Muhamad Akbar', 'XI RPL 2', '2005-11-03', 'Jl. Anggrek No. 1414, Palu'),
(202221522, 'Muhammad Farel Ibrahim', 'XI RPL 2', '2006-04-27', 'Jl. Kenanga No. 1515, Gorontalo'),
(202221523, 'Muhammad Rajwa Favian', 'XI RPL 2', '2005-09-08', 'Jl. Melia No. 1616, Kendari'),
(202221525, 'Mukgot Ega Sahputra', 'XI RPL 2', '2007-08-09', 'Jl. Seroja No. 1717, Samarinda'),
(202221528, 'Naysilla Ramadhani', 'XI RPL 2', '2006-07-18', 'Jl. Mawar No. 1818, Banjarmasin'),
(202221530, 'Paundra Arviano Suryadhilaga', 'XI RPL 2', '2005-12-06', 'Jl. Anggrek No. 1919, Manado'),
(202221531, 'Putra Praditya Hariyantoro', 'XI RPL 2', '2006-11-25', 'Jl. Kenanga No. 2020, Ambon'),
(202221533, 'Raffi Audra Raihansyah', 'XI RPL 2', '2005-06-29', 'Jl. Melia No. 2121, Palu'),
(202221534, 'Raihan Putra Syukur', 'XI RPL 2', '2007-01-17', 'Jl. Bendungan Melayu No.32, Jakarta'),
(202221536, 'Razad Ijlal Falih', 'XI RPL 2', '2005-10-02', 'Jl. Mawar No. 2323, Kendari'),
(202221538, 'Sabrina Khaerun Nisa', 'XI RPL 2', '2006-04-11', 'Jl. Anggrek No. 2424, Samarinda'),
(202221540, 'Shafy Muhamad Nadhif', 'XI RPL 2', '2005-08-22', 'Jl. Kenanga No. 2525, Banjarmasin'),
(202221542, 'Syaddad Raihan Putra', 'XI RPL 2', '2006-12-10', 'Jl. Melia No. 2626, Manado'),
(202221543, 'Syahla Dwi Agustiyani', 'XI RPL 2', '2005-05-27', 'Jl. Seroja No. 2727, Ambon'),
(202221545, 'Wignya Kaestokena Pekih', 'XI RPL 2', '2007-03-09', 'Jl. Mawar No. 2828, Palu'),
(202221546, 'Yudha Pratama', 'XI RPL 2', '2005-12-01', 'Jl. Anggrek No. 2929, Gorontalo'),
(202221547, 'Yunika Adika Putri', 'XI RPL 2', '2006-08-11', 'Jl. Kenanga No. 3030, Kendari'),
(202221629, 'Muhammad Asrofi Syaikho', 'XI RPL 2', '2007-03-23', 'Jl. Melia No. 3131, Samarinda'),
(202221634, 'Saskia Bayudjati', 'XI RPL 2', '2005-01-06', 'Jl. Cendana No. 808, Pontianak');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbsiswarpl2`
--
ALTER TABLE `tbsiswarpl2`
  ADD PRIMARY KEY (`Nis`);
--
-- Database: `db_film`
--
CREATE DATABASE IF NOT EXISTS `db_film` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_film`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `film`
--

CREATE TABLE `film` (
  `idfilm` varchar(25) NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `jenis` varchar(255) DEFAULT NULL,
  `jml_keping` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `film`
--

INSERT INTO `film` (`idfilm`, `judul`, `jenis`, `jml_keping`) VALUES
('bbk', 'Benyamin Biangkerok', 'komedi', 6),
('dki', 'Warkop DKI', 'komedi', 6),
('dl90', 'Dilan 1990', 'romantis', 3),
('ento', 'Entong', 'komedi', 4),
('glx', 'Galaxy', 'romantis', 3),
('skma', 'Setannya Kok Masih Ada', 'horor', 8),
('spd', 'Super Dede', 'komedi', 3),
('sukr', 'Suster Keramas', 'horor', 15),
('tpi', '3 Pocong Idiot', 'horor', 8),
('ttm', 'Teman Tapi Menikah', 'romantis', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `film1`
--

CREATE TABLE `film1` (
  `idfilm` varchar(255) NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `jenis` varchar(255) DEFAULT NULL,
  `jml_keping` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `film1`
--

INSERT INTO `film1` (`idfilm`, `judul`, `jenis`, `jml_keping`) VALUES
('ANB', 'Asabela', 'Horor', 12),
('CNT', 'Ada Apa dengan Dia', 'Romantis', 7),
('CYK', 'Caki', 'Horor', 5),
('DDP', 'datang dan pergi', 'Komedi', 3),
('DKI', 'Warung Kopi', 'Komedi', 3),
('TLB', 'Terlambat', 'Romantis', 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`idfilm`);

--
-- Indeks untuk tabel `film1`
--
ALTER TABLE `film1`
  ADD PRIMARY KEY (`idfilm`);
--
-- Database: `db_jajanan`
--
CREATE DATABASE IF NOT EXISTS `db_jajanan` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_jajanan`;
--
-- Database: `db_laravel`
--
CREATE DATABASE IF NOT EXISTS `db_laravel` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_laravel`;

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_03_06_091044_create_posts_table', 1);

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
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `image`, `title`, `content`, `created_at`, `updated_at`) VALUES
(1, 'zq2NOM3WknbzILh8NYyUJ34D59rzeHUCWqvaEfGI.jpg', 'Cherry', '<p>A Cherry winee</p>', '2024-03-06 02:35:42', '2024-03-06 02:35:42');

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
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `db_maskapai`
--
CREATE DATABASE IF NOT EXISTS `db_maskapai` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_maskapai`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `bank`
--

CREATE TABLE `bank` (
  `no_rek` char(25) NOT NULL,
  `nama_rek` char(255) NOT NULL,
  `nama_bank` char(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cek_jadwal`
--

CREATE TABLE `cek_jadwal` (
  `id_jadwal` bigint(20) UNSIGNED NOT NULL,
  `email_pel` char(255) NOT NULL,
  `no_penerbangan` char(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_penerbangan`
--

CREATE TABLE `data_penerbangan` (
  `no_penerbangan` bigint(20) NOT NULL,
  `nama_maskapai` char(255) NOT NULL,
  `jenis_penerbangan` bigint(20) NOT NULL,
  `kota_asal` char(255) NOT NULL,
  `kota_tujuan` char(255) NOT NULL,
  `tgl_berangkat` date NOT NULL,
  `jam_berangkat` time NOT NULL,
  `jam_tiba` time NOT NULL,
  `terminal` char(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `no_hp_pel`
--

CREATE TABLE `no_hp_pel` (
  `email_pel` char(255) NOT NULL,
  `no_hp` char(20) NOT NULL,
  `no_telp` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `email_pel` char(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama_depan` char(255) NOT NULL,
  `nama_belakang` char(255) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` enum('') NOT NULL,
  `alamat_jalan` text NOT NULL,
  `alamat_kota` char(255) NOT NULL,
  `alamat_provinsi` char(255) NOT NULL,
  `alamat_negara` char(255) NOT NULL,
  `kodepos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `no_pembayaran` char(255) NOT NULL,
  `email_pel` char(255) NOT NULL,
  `no_rek` char(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemesanan`
--

CREATE TABLE `pemesanan` (
  `no_pesanan` char(36) NOT NULL,
  `email_pel` char(255) NOT NULL,
  `kode_booking` bigint(20) NOT NULL,
  `no_tiket` char(36) NOT NULL,
  `metode_pembayaran` char(255) NOT NULL,
  `detail_transaksi` char(255) NOT NULL,
  `harga_total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tiket`
--

CREATE TABLE `tiket` (
  `no_tiket` char(36) NOT NULL,
  `nama_penumpang` char(255) NOT NULL,
  `jenis_tiket` bigint(20) NOT NULL,
  `kelas` char(20) NOT NULL,
  `bagasi_terdaftar` char(255) NOT NULL,
  `harga_tiket` int(11) NOT NULL,
  `no_penerbang` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`no_rek`);

--
-- Indeks untuk tabel `cek_jadwal`
--
ALTER TABLE `cek_jadwal`
  ADD PRIMARY KEY (`id_jadwal`),
  ADD UNIQUE KEY `cek_jadwal_email_pel_unique` (`email_pel`),
  ADD UNIQUE KEY `cek_jadwal_no_penerbangan_unique` (`no_penerbangan`);

--
-- Indeks untuk tabel `data_penerbangan`
--
ALTER TABLE `data_penerbangan`
  ADD PRIMARY KEY (`no_penerbangan`);

--
-- Indeks untuk tabel `no_hp_pel`
--
ALTER TABLE `no_hp_pel`
  ADD UNIQUE KEY `no_hp_pel_email_pel_unique` (`email_pel`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`email_pel`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`no_pembayaran`),
  ADD UNIQUE KEY `pembayaran_email_pel_unique` (`email_pel`),
  ADD UNIQUE KEY `pembayaran_no_rek_unique` (`no_rek`);

--
-- Indeks untuk tabel `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`no_pesanan`),
  ADD UNIQUE KEY `pemesanan_email_pel_unique` (`email_pel`),
  ADD UNIQUE KEY `pemesanan_no_tiket_unique` (`no_tiket`);

--
-- Indeks untuk tabel `tiket`
--
ALTER TABLE `tiket`
  ADD PRIMARY KEY (`no_tiket`),
  ADD UNIQUE KEY `tiket_no_penerbang_unique` (`no_penerbang`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `cek_jadwal`
--
ALTER TABLE `cek_jadwal`
  MODIFY `id_jadwal` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `pembayaran_no_pembayaran_foreign` FOREIGN KEY (`no_pembayaran`) REFERENCES `pelanggan` (`email_pel`);
--
-- Database: `db_musik`
--
CREATE DATABASE IF NOT EXISTS `db_musik` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_musik`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_lagu`
--

CREATE TABLE `tb_lagu` (
  `id` int(10) UNSIGNED NOT NULL,
  `cover` blob NOT NULL,
  `judul` char(255) NOT NULL,
  `genre` char(255) NOT NULL,
  `artist` char(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_lagu`
--

INSERT INTO `tb_lagu` (`id`, `cover`, `judul`, `genre`, `artist`) VALUES
(3, 0x6261636b696e626c61636b2e706e67, 'Backinblack', 'Pop', 'Fran Vasilic'),
(4, 0x6672616e2e6a7067, 'Hyphotecnical', 'Pop', 'Fran Vasilic'),
(5, 0x61726162656c6c612e6a7067, 'Wanna Be yours', 'Pop', 'Artic Monkey');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_lagu`
--
ALTER TABLE `tb_lagu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_lagu`
--
ALTER TABLE `tb_lagu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Database: `db_print`
--
CREATE DATABASE IF NOT EXISTS `db_print` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_print`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `printer`
--

CREATE TABLE `printer` (
  `IdPrinter` int(10) NOT NULL,
  `NamaPrinter` varchar(50) NOT NULL,
  `SpesifikasiPrinter` text NOT NULL,
  `HargaPrinter` int(50) NOT NULL,
  `UseridUser` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `printer`
--

INSERT INTO `printer` (`IdPrinter`, `NamaPrinter`, `SpesifikasiPrinter`, `HargaPrinter`, `UseridUser`) VALUES
(1, 'Printer1', 'Specs for Printer1', 100, 1),
(2, 'Printer2', 'Specs for Printer2', 200, 1),
(3, 'Printer3', 'Specs for Printer3', 300, 2),
(4, 'Printer4', 'Specs for Printer4', 400, 2),
(5, 'Printer5', 'Specs for Printer5', 500, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `IdTransaksi` int(10) NOT NULL,
  `Jumlah` int(10) NOT NULL,
  `UseridUser` int(10) NOT NULL,
  `IdPrinter` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`IdTransaksi`, `Jumlah`, `UseridUser`, `IdPrinter`) VALUES
(1, 10, 1, 1),
(2, 20, 1, 2),
(3, 30, 2, 3),
(4, 40, 2, 4),
(5, 50, 3, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `IdUser` int(10) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`IdUser`, `Username`, `Password`) VALUES
(1, 'user1', 'password1'),
(2, 'user2', 'password2'),
(3, 'user3', 'password3'),
(4, 'user4', 'password4'),
(5, 'user5', 'password5');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `printer`
--
ALTER TABLE `printer`
  ADD PRIMARY KEY (`IdPrinter`),
  ADD KEY `UseridUser` (`UseridUser`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`IdTransaksi`),
  ADD KEY `UseridUser` (`UseridUser`),
  ADD KEY `IdPrinter` (`IdPrinter`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`IdUser`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `printer`
--
ALTER TABLE `printer`
  ADD CONSTRAINT `printer_ibfk_1` FOREIGN KEY (`UseridUser`) REFERENCES `user` (`IdUser`);

--
-- Ketidakleluasaan untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`UseridUser`) REFERENCES `user` (`IdUser`),
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`IdPrinter`) REFERENCES `printer` (`IdPrinter`);
--
-- Database: `db_shop`
--
CREATE DATABASE IF NOT EXISTS `db_shop` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_shop`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_shop`
--

CREATE TABLE `tb_shop` (
  `id_barang` int(3) NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `jumlah_barang` int(3) NOT NULL,
  `harga_barang` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_shop`
--

INSERT INTO `tb_shop` (`id_barang`, `nama_barang`, `jumlah_barang`, `harga_barang`) VALUES
(8, 'Sendal', 30, '22000'),
(10, 'Gula', 30, '9000'),
(11, 'Odol', 1, '20000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'Suki', '$2y$10$8NVlzxrRMkgy7PjFWChhQOSq3F0YYyW0/yf5QVdx43hqpJ2oKSja.');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_shop`
--
ALTER TABLE `tb_shop`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_shop`
--
ALTER TABLE `tb_shop`
  MODIFY `id_barang` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `db_siswarpl`
--
CREATE DATABASE IF NOT EXISTS `db_siswarpl` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_siswarpl`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_siswarpl2`
--

CREATE TABLE `tb_siswarpl2` (
  `NIS` int(11) NOT NULL,
  `Nama` varchar(30) DEFAULT NULL,
  `Kelas` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `TGL_Lahir` date DEFAULT NULL,
  `Alamat` text DEFAULT NULL,
  `Agama` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_siswarpl2`
--
ALTER TABLE `tb_siswarpl2`
  ADD PRIMARY KEY (`NIS`);
--
-- Database: `db_tamu`
--
CREATE DATABASE IF NOT EXISTS `db_tamu` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_tamu`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_tamu`
--

CREATE TABLE `tb_tamu` (
  `nomor` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `jenis_kelamin` varchar(10) DEFAULT NULL,
  `nomor_telepon` varchar(12) DEFAULT NULL,
  `jam_berkunjung` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_tamu`
--

INSERT INTO `tb_tamu` (`nomor`, `nama`, `jenis_kelamin`, `nomor_telepon`, `jam_berkunjung`) VALUES
(1, 'David', 'laki-laki', '62818889991', 2),
(2, 'Eva', 'perempuan', '62817778889', 3),
(3, 'Faisal', 'laki-laki', '62816667778', 4);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_tamu`
--
ALTER TABLE `tb_tamu`
  ADD PRIMARY KEY (`nomor`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_tamu`
--
ALTER TABLE `tb_tamu`
  MODIFY `nomor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `db_user`
--
CREATE DATABASE IF NOT EXISTS `db_user` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_user`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id_barang` int(10) NOT NULL,
  `nama_barang` varchar(255) DEFAULT NULL,
  `stok_barang` int(11) DEFAULT NULL,
  `id_penyimpanan` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_barang`
--

INSERT INTO `tb_barang` (`id_barang`, `nama_barang`, `stok_barang`, `id_penyimpanan`) VALUES
(1, 'Laptop Asus ROG', 10, 'GUD01'),
(2, 'Mouse Logitech', 50, 'GUD02'),
(3, 'Keyboard Mechanical Razer', 30, 'GUD03'),
(4, 'Monitor LED 24 Inch', 20, 'GUD04'),
(5, 'Headset Gaming HyperX', 40, 'GUD05'),
(6, 'Router TP-Link', 15, 'GUD06'),
(7, 'Ethernet Cable 10m', 100, 'GUD07'),
(8, 'External Hard Drive 1TB', 25, 'GUD08'),
(9, 'Wireless Mouse', 35, 'GUD09'),
(10, 'Printer HP LaserJet', 12, 'GUD10'),
(11, 'Webcam Logitech', 18, 'GUD11'),
(12, 'Microphone Condenser', 22, 'GUD12'),
(13, 'SSD 500GB', 30, 'GUD13'),
(14, 'RAM DDR4 16GB', 40, 'GUD14'),
(15, 'Graphics Card NVIDIA GTX 1660', 10, 'GUD15'),
(16, 'Power Supply Corsair 650W', 20, 'GUD16'),
(17, 'CPU Cooler Cooler Master', 25, 'GUD17'),
(18, 'Motherboard ASUS Prime', 15, 'GUD18'),
(19, 'LAN Card Intel Gigabit', 30, 'GUD19'),
(20, 'Wireless Adapter TP-Link', 25, 'GUD20'),
(21, 'UPS APC 1000VA', 8, 'GUD21'),
(22, 'Network Switch Cisco', 12, 'GUD22'),
(23, 'Bluetooth Dongle', 30, 'GUD23'),
(24, 'USB Hub 4 Ports', 40, 'GUD24'),
(25, 'Cable Management Kit', 50, 'GUD25'),
(26, 'Antivirus Software', 100, 'GUD26'),
(27, 'Gaming Chair', 15, 'GUD27'),
(28, 'Desk Organizer', 20, 'GUD28'),
(29, 'Wireless Keyboard', 25, 'GUD29'),
(30, 'Ethernet Switch 8 Ports', 18, 'GUD30'),
(31, 'WiFi Range Extender', 12, 'GUD31'),
(32, 'External DVD Writer', 22, 'GUD32'),
(33, 'Docking Station', 17, 'GUD33'),
(34, 'Graphics Tablet', 10, 'GUD34'),
(35, 'VR Headset', 8, 'GUD35'),
(36, 'USB Flash Drive 64GB', 45, 'GUD36'),
(37, 'Bluetooth Speaker', 30, 'GUD37'),
(38, 'Micro SD Card 128GB', 50, 'GUD38'),
(39, 'USB-C Dock', 20, 'GUD39'),
(40, 'Thunderbolt Cable 2m', 15, 'GUD40'),
(41, 'Network Attached Storage 4TB', 10, 'GUD41'),
(42, 'Laptop Cooling Pad', 25, 'GUD42'),
(43, 'KVM Switch 4 Ports', 15, 'GUD43'),
(44, 'USB Webcam Cover', 30, 'GUD44'),
(45, 'Gaming Mousepad', 40, 'GUD45'),
(46, 'Biometric Fingerprint Reader', 12, 'GUD46'),
(47, 'USB Extension Cable 3m', 35, 'GUD47'),
(48, 'Wireless Presenter', 20, 'GUD48'),
(49, 'Projector Ceiling Mount', 10, 'GUD49'),
(50, 'CPU Thermal Paste', 50, 'GUD50'),
(51, 'Mini DisplayPort to HDMI Adapter', 25, 'GUD51'),
(52, 'External Sound Card', 15, 'GUD52'),
(53, 'Gaming Desk', 8, 'GUD53'),
(54, 'Portable Laptop Stand', 30, 'GUD54'),
(55, 'VGA Cable 5m', 40, 'GUD55'),
(56, 'LAN Cable Tester', 20, 'GUD56'),
(57, 'Bluetooth Mouse', 25, 'GUD57'),
(58, 'WiFi USB Adapter', 30, 'GUD58'),
(59, 'USB-C to Ethernet Adapter', 18, 'GUD59'),
(60, 'Network Cable Clips', 45, 'GUD60'),
(61, 'USB Fan', 20, 'GUD61'),
(62, 'Cable Raceway Kit', 15, 'GUD62'),
(63, 'Graphics Card Support Bracket', 10, 'GUD63'),
(64, 'Laptop Security Lock', 22, 'GUD64'),
(65, 'Network Punch Down Tool', 30, 'GUD65'),
(66, 'USB Microphone', 25, 'GUD66'),
(67, 'Privacy Screen Filter', 20, 'GUD67'),
(68, 'Computer Dust Cover', 15, 'GUD68'),
(69, 'Network Cable Labels', 50, 'GUD69'),
(70, 'Gaming Laptop Stand', 12, 'GUD70');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id_barang`);
--
-- Database: `dcl`
--
CREATE DATABASE IF NOT EXISTS `dcl` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dcl`;
--
-- Database: `komentarpub`
--
CREATE DATABASE IF NOT EXISTS `komentarpub` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `komentarpub`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentar`
--

CREATE TABLE `komentar` (
  `id` int(3) NOT NULL,
  `nama` varchar(255) CHARACTER SET armscii8 COLLATE armscii8_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET armscii8 COLLATE armscii8_general_ci NOT NULL,
  `komentar` text CHARACTER SET armscii8 COLLATE armscii8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `komentar`
--

INSERT INTO `komentar` (`id`, `nama`, `email`, `komentar`) VALUES
(1, 'Raihan', 'nega@gmail.com', 'Keren banget bintang 5'),
(7, 'A', 'A', 'a');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Database: `mahasiswa`
--
CREATE DATABASE IF NOT EXISTS `mahasiswa` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `mahasiswa`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nisn` int(11) NOT NULL,
  `nama_mahasiswa` varchar(255) DEFAULT NULL,
  `jurusan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`nisn`, `nama_mahasiswa`, `jurusan`) VALUES
(202221079, 'Fahirana Safa Aisqha', NULL),
(202221083, 'Galang Permana', NULL),
(202221085, 'Hoirul Ahmad Baehaqi', NULL),
(202221087, 'Intan Ade Tania', NULL),
(202221088, 'Ismail Kurniawan', NULL),
(202221089, 'Isti Rifani', NULL),
(202221091, 'Kayla Rivera Dewanti', NULL),
(202221092, 'Kayla Vanneza', NULL),
(202221095, 'Luvi Amalia', NULL),
(202221096, 'M. Galang Zaky Aditiya Pratama', NULL),
(202221097, 'Mahesa Abinaya Aptanalindra', NULL),
(202221098, 'Marchel Velyan', NULL),
(202221104, 'Muhammad Ridwan', NULL),
(202221105, 'Muhammad Sopyana Zaen Al Ayubbi', NULL),
(202221106, 'Muhammad Sutan Avisena', NULL),
(202221111, 'Nesya Riskiandini', NULL),
(202221118, 'Revasya Permata Ocktavia', NULL),
(202221119, 'Reza Pasha Alfadin', NULL),
(202221121, 'Riswandi Dwi Ramadhan', NULL),
(202221124, 'Susi Astriani', NULL),
(202221125, 'Syah Virra Sushimita Suki', NULL),
(202221127, 'Teguh Tri Utomo', NULL),
(202221128, 'Ulfa Fauzia', NULL),
(202221129, 'Zahra Amelia Putri', NULL),
(202221635, 'Tiyo Widianto ', NULL),
(202221636, 'Patar Wansa', NULL),
(202221637, 'Amru Fatah', NULL),
(202221639, 'Muhammad Fathan', NULL),
(202221640, 'Zulfah Raihansyah', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nisn`);
--
-- Database: `ms_player`
--
CREATE DATABASE IF NOT EXISTS `ms_player` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ms_player`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `musics`
--

CREATE TABLE `musics` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `artist` varchar(255) NOT NULL,
  `album` varchar(255) DEFAULT NULL,
  `cover` blob DEFAULT NULL,
  `music` blob DEFAULT NULL,
  `play_count` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `musics`
--

INSERT INTO `musics` (`id`, `title`, `artist`, `album`, `cover`, `music`, `play_count`) VALUES
(7, 'Cherry Wine', 'Syaddad', '-', 0x2e2e2f75706c6f6164732f636f766572732f6368657272792e6a7067, 0x2e2e2f75706c6f6164732f6d757369632f79326d6174652e636f6d202d206772656e74706572657a204368657272792057696e65204f6666696369616c204c7972696320566964656f2e6d7033, 16),
(8, 'Maybe', 'Fran Vasilic', 'Around The World', 0x2e2e2f75706c6f6164732f636f766572732f6672616e2e6a7067, 0x2e2e2f75706c6f6164732f6d757369632f79326d6174652e636f6d202d204672616e20566173696c69c487204d61796265204f6666696369616c204d7573696320566964656f2e6d7033, 7);

-- --------------------------------------------------------

--
-- Struktur dari tabel `play_counts`
--

CREATE TABLE `play_counts` (
  `id` int(11) NOT NULL,
  `music_id` int(11) NOT NULL,
  `play_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'admin', 'admin@admin.com', '$2y$10$2rAsL6tn1rcUXBmOEbRhYOjeLKMaO43maBHGe1oxMdSBzmg2G1kpO');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `musics`
--
ALTER TABLE `musics`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`,`artist`);

--
-- Indeks untuk tabel `play_counts`
--
ALTER TABLE `play_counts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `music_id` (`music_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `musics`
--
ALTER TABLE `musics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `play_counts`
--
ALTER TABLE `play_counts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `play_counts`
--
ALTER TABLE `play_counts`
  ADD CONSTRAINT `play_counts_ibfk_1` FOREIGN KEY (`music_id`) REFERENCES `musics` (`id`);
--
-- Database: `perawatan_ruang`
--
CREATE DATABASE IF NOT EXISTS `perawatan_ruang` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `perawatan_ruang`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `up_maintance`
--

CREATE TABLE `up_maintance` (
  `ruang` int(11) NOT NULL,
  `jumlah_pc` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `perbaikan` varchar(255) NOT NULL,
  `sparepart` varchar(255) NOT NULL,
  `paraf` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `up_maintance`
--

INSERT INTO `up_maintance` (`ruang`, `jumlah_pc`, `tanggal`, `perbaikan`, `sparepart`, `paraf`) VALUES
(301, 12, '2024-01-11', 'VGa', 'VGA', 'oooo');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `up_maintance`
--
ALTER TABLE `up_maintance`
  ADD PRIMARY KEY (`ruang`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `up_maintance`
--
ALTER TABLE `up_maintance`
  MODIFY `ruang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=302;
--
-- Database: `perpustakaan`
--
CREATE DATABASE IF NOT EXISTS `perpustakaan` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `perpustakaan`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota`
--

CREATE TABLE `anggota` (
  `id_anggota` int(11) NOT NULL,
  `kode_anggota` varchar(9) DEFAULT NULL,
  `nama_anggota` varchar(100) DEFAULT NULL,
  `jk_anggota` char(1) DEFAULT NULL,
  `jurusan_anggota` varchar(2) DEFAULT NULL,
  `no_telp_anggota` varchar(13) DEFAULT NULL,
  `alamat_anggota` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `anggota`
--

INSERT INTO `anggota` (`id_anggota`, `kode_anggota`, `nama_anggota`, `jk_anggota`, `jurusan_anggota`, `no_telp_anggota`, `alamat_anggota`) VALUES
(1, 'AGT001', 'Raihan', 'L', 'TI', '081234567891', 'Jl. Plumpang'),
(2, 'AGT002', 'Amru', 'L', 'TK', '081234567892', 'Jl. Kemayoran'),
(3, 'AGT003', 'Mufid', 'L', 'TI', '081234567893', 'Jl. Kemayoran'),
(4, 'AGT004', 'Ropoi', 'L', 'TI', '081234567894', 'Jl. Kemayoran'),
(5, 'AGT005', 'Mukgot', 'L', 'TI', '081234567895', 'Jl. Duri');

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `id_buku` int(11) NOT NULL,
  `kode_buku` char(5) DEFAULT NULL,
  `judul_buku` varchar(50) DEFAULT NULL,
  `penulis_buku` varchar(50) DEFAULT NULL,
  `penerbit_buku` varchar(50) DEFAULT NULL,
  `tahun_penerbit` char(4) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id_buku`, `kode_buku`, `judul_buku`, `penulis_buku`, `penerbit_buku`, `tahun_penerbit`, `stok`) VALUES
(1, 'BK001', 'Buku A', 'Penulis 1', 'Penerbit A', '2001', 10),
(2, 'BK002', 'Buku B', 'Penulis 2', 'Penerbit B', '2003', 8),
(3, 'BK003', 'Buku C', 'Penulis 3', 'Penerbit C', '2005', 12),
(4, 'BK004', 'Buku D', 'Penulis 4', 'Penerbit D', '2007', 15),
(5, 'BK005', 'Buku E', 'Penulis 5', 'Penerbit E', '2009', 7);

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id_peminjaman` int(11) NOT NULL,
  `tanggal_pinjam` date DEFAULT NULL,
  `tanggal_kembali` date DEFAULT NULL,
  `id_buku` int(11) DEFAULT NULL,
  `id_anggota` int(11) DEFAULT NULL,
  `id_petugas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `peminjaman`
--

INSERT INTO `peminjaman` (`id_peminjaman`, `tanggal_pinjam`, `tanggal_kembali`, `id_buku`, `id_anggota`, `id_petugas`) VALUES
(1, '2023-08-10', '2023-09-20', 1, 1, 1),
(2, '2023-08-11', '2023-09-21', 2, 2, 2),
(3, '2023-08-12', '2023-09-22', 3, 3, 3),
(4, '2023-08-13', '2023-09-23', 4, 4, 4),
(5, '2023-08-14', '2023-09-24', 5, 5, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengembalian`
--

CREATE TABLE `pengembalian` (
  `id_pengembalian` int(11) NOT NULL,
  `tanggal_pengembalian` date DEFAULT NULL,
  `denda` int(11) DEFAULT NULL,
  `id_buku` int(11) DEFAULT NULL,
  `id_anggota` int(11) DEFAULT NULL,
  `id_petugas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pengembalian`
--

INSERT INTO `pengembalian` (`id_pengembalian`, `tanggal_pengembalian`, `denda`, `id_buku`, `id_anggota`, `id_petugas`) VALUES
(1, '2023-09-20', 8000, 1, 1, 1),
(2, '2023-09-21', 9500, 2, 2, 2),
(3, '2023-09-22', 9000, 3, 3, 3),
(4, '2023-09-23', 5500, 4, 4, 4),
(5, '2023-09-24', 6000, 5, 5, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(11) NOT NULL,
  `nama_petugas` varchar(50) DEFAULT NULL,
  `jabatan_petugas` varchar(50) DEFAULT NULL,
  `no_telp_petugas` char(13) DEFAULT NULL,
  `alamat_petugas` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `nama_petugas`, `jabatan_petugas`, `no_telp_petugas`, `alamat_petugas`) VALUES
(1, 'Pak Putin', 'Admin', '081234567801', 'Jl. Mangga'),
(2, 'Pak Fakhri', 'Kepala Perpustakaan', '081234567802', 'Jl. Pendopo'),
(3, 'Pak Hitler', 'Pustakawan', '081234567803', 'Jl. Hutan'),
(4, 'Pak Memet', 'Admin', '081234567804', 'Jl. Taman'),
(5, 'Pak Bambang', 'Pustakawan', '081234567805', 'Jl. Kenangan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rak`
--

CREATE TABLE `rak` (
  `id_rak` int(11) NOT NULL,
  `nama_rak` varchar(50) DEFAULT NULL,
  `lokasi_rak` varchar(50) DEFAULT NULL,
  `id_buku` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `rak`
--

INSERT INTO `rak` (`id_rak`, `nama_rak`, `lokasi_rak`, `id_buku`) VALUES
(1, 'Rak A', 'Lantai 1', 1),
(2, 'Rak B', 'Lantai 2', 2),
(3, 'Rak C', 'Lantai 1', 3),
(4, 'Rak D', 'Lantai 2', 4),
(5, 'Rak E', 'Lantai 3', 5);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indeks untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id_peminjaman`),
  ADD KEY `id_buku` (`id_buku`),
  ADD KEY `id_anggota` (`id_anggota`),
  ADD KEY `id_petugas` (`id_petugas`);

--
-- Indeks untuk tabel `pengembalian`
--
ALTER TABLE `pengembalian`
  ADD PRIMARY KEY (`id_pengembalian`),
  ADD KEY `id_buku` (`id_buku`),
  ADD KEY `id_anggota` (`id_anggota`),
  ADD KEY `id_petugas` (`id_petugas`);

--
-- Indeks untuk tabel `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indeks untuk tabel `rak`
--
ALTER TABLE `rak`
  ADD PRIMARY KEY (`id_rak`),
  ADD KEY `id_buku` (`id_buku`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id_anggota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `peminjaman_ibfk_1` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`),
  ADD CONSTRAINT `peminjaman_ibfk_2` FOREIGN KEY (`id_anggota`) REFERENCES `anggota` (`id_anggota`),
  ADD CONSTRAINT `peminjaman_ibfk_3` FOREIGN KEY (`id_petugas`) REFERENCES `petugas` (`id_petugas`);

--
-- Ketidakleluasaan untuk tabel `pengembalian`
--
ALTER TABLE `pengembalian`
  ADD CONSTRAINT `pengembalian_ibfk_1` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`),
  ADD CONSTRAINT `pengembalian_ibfk_2` FOREIGN KEY (`id_anggota`) REFERENCES `anggota` (`id_anggota`),
  ADD CONSTRAINT `pengembalian_ibfk_3` FOREIGN KEY (`id_petugas`) REFERENCES `petugas` (`id_petugas`);

--
-- Ketidakleluasaan untuk tabel `rak`
--
ALTER TABLE `rak`
  ADD CONSTRAINT `rak_ibfk_1` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`);
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

--
-- Dumping data untuk tabel `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"angular_direct\":\"direct\",\"snap_to_grid\":\"off\",\"relation_lines\":\"true\"}');

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

--
-- Dumping data untuk tabel `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'server', 'classroom', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"classroom\",\"dbsiswa_rpl2\",\"db_film\",\"db_jajanan\",\"db_laravel\",\"db_maskapai\",\"db_musik\",\"db_print\",\"db_shop\",\"db_siswarpl\",\"db_tamu\",\"db_user\",\"dcl\",\"komentarpub\",\"mahasiswa\",\"ms_player\",\"perawatan_ruang\",\"perpustakaan\",\"phpmyadmin\",\"test\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_columns\":\"something\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Struktur tabel @TABLE@\",\"latex_structure_continued_caption\":\"Struktur tabel @TABLE@ (dilanjutkan)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Isi tabel @TABLE@\",\"latex_data_continued_caption\":\"Isi tabel @TABLE@ (dilanjutkan)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

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
('root', '[{\"db\":\"classroom\",\"table\":\"users\"},{\"db\":\"classroom\",\"table\":\"ratings\"},{\"db\":\"classroom\",\"table\":\"classes\"},{\"db\":\"classroom\",\"table\":\"assignments\"},{\"db\":\"classroom\",\"table\":\"enrollments\"},{\"db\":\"classroom\",\"table\":\"students\"},{\"db\":\"db_print\",\"table\":\"printer\"},{\"db\":\"db_printer\",\"table\":\"printer\"},{\"db\":\"printerdb\",\"table\":\"transaksi\"},{\"db\":\"printerdb\",\"table\":\"user\"}]');

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
('root', '2024-04-18 01:21:00', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"id\"}');

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
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
