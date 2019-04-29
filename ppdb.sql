-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 22 Jun 2016 pada 05.27
-- Versi Server: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ppdb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_admin`
--

CREATE TABLE IF NOT EXISTS `tb_admin` (
`id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_admin`
--

INSERT INTO `tb_admin` (`id`, `username`, `password`, `level`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_biodata`
--

CREATE TABLE IF NOT EXISTS `tb_biodata` (
`id` int(11) NOT NULL,
  `id_user` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `nisn` int(15) NOT NULL,
  `tmp_lahir` varchar(50) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jk` enum('Laki-Laki','Perempuan') NOT NULL,
  `agama` varchar(20) NOT NULL,
  `no_hp` int(20) NOT NULL,
  `alamat` text NOT NULL,
  `asal_smp` varchar(50) NOT NULL,
  `no_peserta` varchar(20) DEFAULT NULL,
  `verifikasi` tinyint(1) NOT NULL,
  `konfirmasi` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_biodata`
--

INSERT INTO `tb_biodata` (`id`, `id_user`, `name`, `nisn`, `tmp_lahir`, `tgl_lahir`, `jk`, `agama`, `no_hp`, `alamat`, `asal_smp`, `no_peserta`, `verifikasi`, `konfirmasi`) VALUES
(13, 26, 'Ahmad Hanafi', 84038823, 'Cirebon', '2016-06-08', 'Laki-Laki', 'Islam', 483908594, 'cirebon', 'SMPN 1 Beber', 'AA00026', 1, 1),
(15, 28, 'Agung Gumelar', 2147483647, 'Cirebon', '0000-00-00', 'Laki-Laki', 'Islam', 2147483647, 'Cirebon', 'SMPN 1 Kedawung', 'EA00028', 1, 1),
(16, 29, 'Fanjui Waqhi', 894737897, 'Cirebon', '0000-00-00', 'Laki-Laki', 'Islam', 2147483647, 'Cirebon', 'SMPN 1 Beber', 'DE00029', 1, 0),
(18, 34, 'a', 23, 'c', '2016-06-08', 'Perempuan', 'Islam', 8, 'jggh', 'SMPN 1 Gempolfge', NULL, 0, 1),
(19, 30, ' Bayu Pratama', 904893908, 'Cirebon', '0000-00-00', 'Laki-Laki', 'Islam', 2147483647, 'Cirebon', 'SMPN 1 Dukupuntang', 'BC00030', 1, 0),
(20, 35, 'Arfi Subarkah', 2147483647, 'Cirebon', '2016-06-24', 'Laki-Laki', 'Islam', 2147483647, 'Jl. Indramayu Raya', 'MTSN Bondan Indramayu', 'BC00035', 1, 1),
(21, 39, 'Asih Fitriani', 901849021, 'Cirebon', '0000-00-00', 'Perempuan', 'Islam', 2147483647, 'Cirebon', 'SMPN 16 Kota Cirebon', NULL, 0, 0),
(22, 41, 'Dini Rosmawati', 2147483647, 'Cirebon', '2016-06-10', 'Perempuan', 'Islam', 2147483647, 'Jl. Sunan Gunung Jati', 'SMPN 1 Suranenggala', 'AD00041', 1, 0),
(23, 38, 'Devi Nurani', 908429008, 'Cirebon', '0000-00-00', 'Perempuan', 'Islam', 2147483647, 'Cirebon', 'SMPN 1 Karang Wareng', 'AE00038', 1, 1),
(24, 43, 'Aldiansyah Agustianto', 2147483647, 'Cirebon', '0000-00-00', 'Laki-Laki', 'Islam', 48093848, 'Cirebon', 'SMPN 1 Sumber', NULL, 0, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_bobot`
--

CREATE TABLE IF NOT EXISTS `tb_bobot` (
  `nama_kejuruan` varchar(50) NOT NULL,
  `b_indonesia` varchar(50) NOT NULL,
  `b_inggris` varchar(50) NOT NULL,
  `matematika` varchar(50) NOT NULL,
  `ipa` varchar(50) NOT NULL,
  `kode_jurusan` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_bobot`
--

INSERT INTO `tb_bobot` (`nama_kejuruan`, `b_indonesia`, `b_inggris`, `matematika`, `ipa`, `kode_jurusan`) VALUES
('Akuntansi', '40', '40', '30', '20', 'A'),
('Administrasi Perkantoran', '30', '40', '30', '20', 'B'),
('Pemasaran', '40', '40', '30', '20', 'C'),
('Usaha Perjalanan Wisata', '30', '50', '30', '20', 'D'),
('Multimedia', '40', '40', '30', '40', 'E'),
('Perbankan', '40', '40', '30', '20', 'F');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_nilai`
--

CREATE TABLE IF NOT EXISTS `tb_nilai` (
`id` int(11) NOT NULL,
  `id_user` int(10) NOT NULL,
  `bindo` int(10) NOT NULL,
  `ipa` int(10) NOT NULL,
  `mtk` int(10) NOT NULL,
  `binggris` int(10) NOT NULL,
  `nem` int(5) NOT NULL,
  `no_ijazah` varchar(20) NOT NULL,
  `tgl_ijazah` date NOT NULL,
  `no_skhun` varchar(20) NOT NULL,
  `tgl_skhun` date NOT NULL,
  `akademik` int(20) NOT NULL,
  `kejuruan` int(10) NOT NULL,
  `psikotes` int(10) NOT NULL,
  `pilihan_1` varchar(50) NOT NULL,
  `pilihan_2` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_nilai`
--

INSERT INTO `tb_nilai` (`id`, `id_user`, `bindo`, `ipa`, `mtk`, `binggris`, `nem`, `no_ijazah`, `tgl_ijazah`, `no_skhun`, `tgl_skhun`, `akademik`, `kejuruan`, `psikotes`, `pilihan_1`, `pilihan_2`) VALUES
(10, 26, 90, 80, 70, 60, 30, 'DN-hdihs', '2016-06-20', 'djhasdh', '2016-06-20', 0, 0, 0, 'Multimedia', 'Akuntansi'),
(12, 28, 88, 78, 66, 76, 31, 'DN-987483', '2016-06-20', 'DN-904872', '2016-06-20', 0, 0, 0, 'Multimedia', 'Akuntansi'),
(13, 29, 87, 95, 87, 66, 34, 'DN-4812908', '2016-06-20', 'DN-489277', '2016-06-20', 0, 0, 0, 'Usaha Perjalanan Wisata', 'Multimedia'),
(15, 34, 3, 3, 3, 3, 1, '3', '2016-06-21', '3', '2016-06-01', 0, 0, 0, 'Akuntansi', 'Pemasaran'),
(16, 30, 76, 88, 97, 67, 33, 'DN-894739', '2016-06-20', 'DN-9748787', '2016-06-20', 0, 0, 0, 'Administrasi Perkantoran', 'Pemasaran'),
(17, 35, 80, 80, 90, 70, 32, 'DN-789Y986868', '2016-06-25', 'dn-986862', '2016-06-07', 0, 0, 0, 'Administrasi Perkantoran', 'Pemasaran'),
(18, 39, 89, 78, 87, 99, 35, 'DN-9849028', '2016-06-20', 'dn-892742789', '2016-06-20', 0, 0, 0, 'Pemasaran', 'Perbankan'),
(19, 41, 90, 90, 90, 79, 35, 'DN-87657', '2016-06-01', 'DN-98612387', '2016-06-02', 0, 0, 0, 'Akuntansi', 'Usaha Perjalanan Wisata'),
(20, 38, 78, 89, 76, 56, 30, 'DN-940139897', '2016-06-20', 'DN-38273897', '2016-06-20', 0, 0, 0, 'Akuntansi', 'Multimedia'),
(21, 43, 86, 76, 66, 71, 30, 'DN-14897217', '2016-06-20', 'DN-84789778', '2016-06-20', 0, 0, 0, 'Perbankan', 'Usaha Perjalanan Wisata');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_orangtua`
--

CREATE TABLE IF NOT EXISTS `tb_orangtua` (
`id` int(11) NOT NULL,
  `id_user` int(20) NOT NULL,
  `nama_ayah` varchar(100) NOT NULL,
  `pkrjn_ayah` varchar(100) NOT NULL,
  `nama_ibu` varchar(100) NOT NULL,
  `pkrjn_ibu` varchar(100) NOT NULL,
  `no_hp_ortu` int(20) NOT NULL,
  `alamat_ortu` text NOT NULL,
  `nama_wali` varchar(100) NOT NULL,
  `pkrjn_wali` varchar(100) NOT NULL,
  `no_hp_wali` int(20) NOT NULL,
  `alamat_wali` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_orangtua`
--

INSERT INTO `tb_orangtua` (`id`, `id_user`, `nama_ayah`, `pkrjn_ayah`, `nama_ibu`, `pkrjn_ibu`, `no_hp_ortu`, `alamat_ortu`, `nama_wali`, `pkrjn_wali`, `no_hp_wali`, `alamat_wali`) VALUES
(6, 26, 'ayah', 'pekerjaan', 'ibu', 'irt', 49839808, 'cirebon', '', '', 0, ''),
(7, 27, 'Karman', 'Wiraswasta', 'Julaeha', 'Ibu Rumah Tangga', 2147483647, 'Cirebon', '', '', 0, ''),
(8, 28, 'Ahmad Habibie', 'Pengusaha', 'Siti Hamidah', 'Ibu Rumah Tangga', 2147483647, 'Cirebon', '', '', 0, ''),
(9, 29, 'Subur', 'Wartawan', 'Makmur', 'Ibu Rumah Tangga', 2147483647, 'Cirebon', '', '', 0, ''),
(10, 36, 'Jojo', 'Pekerjaan', 'Jeje', 'Pekerjaan', 2147483647, 'Jl. Talun ', '', '', 0, ''),
(11, 34, 'a', 'b', 'c', 'd', 4, 'aa', '', '', 0, ''),
(12, 30, 'Ahmad Hariri', 'Jurnalis', 'Jaenab', 'Ibu Rumah Tangga', 482308943, 'Cirebon', '', '', 0, ''),
(13, 35, 'Ayah Arfi', 'Pekerjaan', 'Ibu Arfi', 'Pekerjaan', 88997889, 'Jl. Sunan Gunung Jati ', '', '', 0, ''),
(14, 39, 'Muhammad Irul', 'Desainer', 'Suci Maharani', 'Ibu Rumah Tangga', 2147483647, 'Cirebon', '', '', 0, ''),
(15, 41, 'Ayah Dini', 'Pekerjaan', 'Ibu Dini', 'Pekerjaan', 2147483647, 'Jl. Sunan Gunung Jati', '', '', 0, ''),
(16, 38, 'Abdul Qodir', 'Ustadz', 'Siti Maryam', 'Ustadzah', 2147483647, 'Cirebon', '', '', 0, ''),
(17, 43, 'Ferdi Hermansyah', 'Pengusaha', 'Linda Saraswati', 'Ibu Rumah Tangga', 2147483647, 'Cirebon', '', '', 0, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pengumuman`
--

CREATE TABLE IF NOT EXISTS `tb_pengumuman` (
`id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_pengumuman`
--

INSERT INTO `tb_pengumuman` (`id`, `judul`, `isi`) VALUES
(3, 'Info Proses Pendaftaran', '<ol>\r\n<li>Klik Daftar pada menu di atas</li>\r\n<li>Isi Form pendaftaran, gunakan username dan password yang mudah diingat</li>\r\n<li>Login ke akun Anda, bisa klik <strong><a href="beranda#daftar">DISINI</a></strong> untuk login.</li>\r\n<li>Masukkan username dan password Anda, lalu klik <strong>LOGIN</strong></li>\r\n<li>Lengkapi data-data Anda dengan data yang valid</li>\r\n<li>Lengkapi nila-nilai Anda</li>\r\n<li>Konfirmasi data Anda</li>\r\n<li>Cetak bukti Pendaftaran Anda dan tunggu verifikasi data Anda</li>\r\n<li>Selesai</li>\r\n</ol>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pesan`
--

CREATE TABLE IF NOT EXISTS `tb_pesan` (
`id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `no_hp` int(20) NOT NULL,
  `pesan` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_pesan`
--

INSERT INTO `tb_pesan` (`id`, `nama`, `email`, `no_hp`, `pesan`) VALUES
(2, 'Ahmad Hanafi', 'Contaminated007@gmail.com', 2147483647, 'Saya ingin mendaftar di SMK Negeri 1 Kedawung!'),
(3, 'Reza Chaniago', 'Chaniago@mail.com', 2147483647, 'Berapa biaya daftar ke SMK Negeri 1 Kedawung ? Thx'),
(4, 'Surya Muharram', 'Suryamuharram@yahoo.co.id', 2147483647, 'Kapan pendaftaran secara langsung di buka ?'),
(5, 'Sarah Sri Maharani', 'Sarah28@gmail.com', 2147483647, 'Apakah Ada kejuruan tata boga di SMKN 1 Kedawung ?');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_questions`
--

CREATE TABLE IF NOT EXISTS `tb_questions` (
`id` int(10) unsigned NOT NULL,
  `subject_id` int(11) NOT NULL,
  `question` longtext COLLATE utf8_unicode_ci NOT NULL,
  `a_choice` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `b_choice` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `c_choice` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `d_choice` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `correct_answer` enum('A','B','C','D') COLLATE utf8_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `audio` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `tb_questions`
--

INSERT INTO `tb_questions` (`id`, `subject_id`, `question`, `a_choice`, `b_choice`, `c_choice`, `d_choice`, `correct_answer`, `picture`, `audio`, `created_at`, `updated_at`) VALUES
(16, 14, '<p>Berapakah hasil perkalian dari 10 x 5 ?</p>', '10', '5', '50', '0', 'C', '', '', '2016-06-21 19:06:10', '2016-06-21 19:06:10'),
(17, 20, '<p>Apakah kepanjangan dari PC ?</p>', 'Personal Computer', 'Portable Computer', 'Permission Control', 'Protocol Control', 'A', '', '', '2016-06-21 19:14:12', '2016-06-21 19:14:12'),
(18, 14, '<p>Berapajkah hasil penjumlahan berikut 10 +( 20 - 30) +( 10 + 20) = &nbsp;?</p>', '10', '20', '30', '60', 'C', '', '', '2016-06-21 19:15:54', '2016-06-21 19:15:54'),
(19, 21, '<p>Apa yang dimaksud dengan perdagangan ?</p>', 'Proses transaksi penjualn dengan pembeli', 'Transaksi jual beli', 'Penjualan di pasar', 'Jual beli antar orang', 'C', '', '', '2016-06-21 19:18:43', '2016-06-21 19:18:43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_smp`
--

CREATE TABLE IF NOT EXISTS `tb_smp` (
`idSMP` int(11) NOT NULL,
  `nama_smp` varchar(100) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=106 DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tb_smp`
--

INSERT INTO `tb_smp` (`idSMP`, `nama_smp`) VALUES
(2, 'SMPN 1 Sumber'),
(3, 'SMPN 1 Arjawinangun'),
(4, 'SMPN 1 Babakan'),
(5, 'SMPN 1 Bangodua'),
(6, 'SMPN 1 Beber'),
(7, 'SMPN 1 Cikalahang'),
(8, 'SMPN 1 Ciledug'),
(9, 'SMPN 1 Ciwaringin'),
(10, 'SMPN 1 Depok'),
(11, 'SMPN 1 Dukupuntang'),
(12, 'SMPN 1 Gegesik'),
(13, 'SMPN 1 Gempol'),
(14, 'SMPN 1 Gunung Jati'),
(15, 'SMPN 1 Kaliwedi'),
(16, 'SMPN 1 Kapetakan'),
(17, 'SMPN 1 Karang Wareng'),
(18, 'SMPN 1 Kedawung'),
(19, 'SMPN 1 Klangenan'),
(20, 'SMPN 1 Palimanan'),
(21, 'SMPN 1 Panguragan'),
(22, 'SMPN 1 Plered'),
(23, 'SMPN 1 Plumbon'),
(24, 'SMPN 1 Sumberjaya'),
(25, 'SMPN 1 Suranenggala'),
(26, 'SMPN 1 Susukan'),
(27, 'SMPN 1 Talun'),
(28, 'SMPN 1 Tengah Tani'),
(29, 'SMPN 1 Trusmi'),
(30, 'SMPN 1 Weru'),
(31, 'SMPN 2 Arjawinangun'),
(32, 'SMPN 2 Dukupuntang'),
(33, 'SMPN 2 Gegesik'),
(34, 'SMPN 2 Gunungjati'),
(35, 'SMPN 2 Jamblang'),
(36, 'SMPN 2 Palimanan'),
(37, 'SMPN 2 Plered'),
(38, 'SMPN 2 Plumbon'),
(39, 'SMPN 2 Sumber'),
(40, 'SMPN 2 Suranenggala'),
(41, 'SMPN 2 Weru'),
(42, 'SMPN 3 Gunungjati'),
(43, 'SMPN 3 Klangenan'),
(44, 'SMPN 3 Palimanan'),
(45, 'SMPN 3 Plered'),
(46, 'SMPN 3 Sumber'),
(47, 'SMPN 4 Palimanan'),
(48, 'SMPN 1 Kota Cirebon'),
(49, 'SMPN 10 Kota Cirebon'),
(50, 'SMPN 11 Kota Cirebon'),
(51, 'SMPN 12 Kota Cirebon'),
(52, 'SMPN 13 Kota Cirebon'),
(53, 'SMPN 14 Kota Cirebon'),
(54, 'SMPN 15 Kota Cirebon'),
(55, 'SMPN 16 Kota Cirebon'),
(56, 'SMPN 17 Kota Cirebon'),
(57, 'SMPN 2 Kota Cirebon'),
(58, 'SMPN 3 Kota Cirebon'),
(59, 'SMPN 4 Kota Cirebon'),
(60, 'SMPN 5 Kota Cirebon'),
(61, 'SMPN 6 Kota Cirebon'),
(62, 'SMPN 7 Kota Cirebon'),
(63, 'SMPN 8 Kota Cirebon'),
(64, 'SMPN 9 Kota Cirebon'),
(65, 'MTS Al Hilal Tegal Gubug'),
(66, 'MTS An Nur'),
(67, 'MTSN 1 Cikedung, Indramayu'),
(68, 'MTSN 2 Cirebon'),
(69, 'MTSN 2 Plered'),
(70, 'MTSN Arjawinangun'),
(71, 'MTSN Ciwaringin'),
(72, 'MTSN Palimanan'),
(73, 'SMP Al Huda Kebumen'),
(74, 'SMP Al Washliyah Sumber'),
(75, 'SMP BN I Plumbon'),
(76, 'SMP Darul Musyawirin'),
(77, 'SMP Islamiyah Weru'),
(78, 'SMP ITUS Jalaksana'),
(79, 'SMP Muhammadiyah 2 Cirebon'),
(80, 'SMP Pasawahan I Kuningan'),
(81, 'SMP Perintis Arjawinangun'),
(82, 'SMP PGRI Arjawinangun'),
(83, 'SMP PGRI Kedawung'),
(84, 'SMP PUI Gegesik'),
(85, 'SMP Wahidin'),
(86, 'SMPN 1 Cidahu'),
(87, 'SMPN 1 Cilimus'),
(88, 'SMPN 1 Kandanghaur'),
(89, 'SMPN 1 Karangampel'),
(90, 'SMPN 1 Kertasmaya'),
(91, 'SMPN 1 Leuwimunding'),
(92, 'SMPN 1 Mandirancan'),
(93, 'SMPN 1 Ngawi'),
(94, 'SMPN 1 Pasawahan'),
(95, 'SMPN 1 Rajagaluh'),
(96, 'SMPN 1 Satuatap Cikedung'),
(97, 'SMPN 1 Tanjung'),
(98, 'SMPN 2 Pusaka Negara Subang'),
(99, 'SMPN 2 Sukaraja Tasik Malaya'),
(100, 'SMPN 3 Jatibarang'),
(101, 'SMPN 49 Bandung'),
(102, 'SMPN 5 Purwakarta'),
(103, 'SMPN 81 Jakarta'),
(104, 'SMPN Unggulan Sindang Indramayu'),
(105, 'MTSN 1 CIREBON');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_subjects`
--

CREATE TABLE IF NOT EXISTS `tb_subjects` (
`id` int(10) unsigned NOT NULL,
  `kejuruan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time` float NOT NULL,
  `start_time` datetime NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `tb_subjects`
--

INSERT INTO `tb_subjects` (`id`, `kejuruan`, `name`, `time`, `start_time`, `active`, `created_at`, `updated_at`) VALUES
(14, 'Semua', 'Matematika', 90, '2016-06-21 07:00:00', 1, '2016-06-21 18:59:46', '2016-06-21 18:59:46'),
(15, 'Semua', 'Bahasa Indonesia', 90, '2016-06-21 07:00:00', 1, '2016-06-21 19:00:17', '2016-06-21 19:00:17'),
(16, 'Semua', 'Ilmu Pengetahuan Alam', 90, '2016-06-21 07:00:00', 1, '2016-06-21 19:00:50', '2016-06-21 19:00:50'),
(17, 'Semua', 'Bahasa Inggris', 90, '2016-06-21 07:00:00', 1, '2016-06-21 19:01:20', '2016-06-21 19:01:20'),
(18, 'Akuntansi', 'Akuntansi', 90, '2016-06-21 07:00:00', 1, '2016-06-21 19:02:21', '2016-06-21 19:02:21'),
(19, 'Administrasi Perkantoran', 'Administrasi Perkantoran', 90, '2016-06-21 07:00:00', 1, '2016-06-21 19:02:58', '2016-06-21 19:02:58'),
(20, 'Multimedia', 'Multimedia', 90, '2016-06-21 07:00:00', 1, '2016-06-21 19:03:24', '2016-06-21 19:03:24'),
(21, 'Pemasaran', 'Pemasaran', 90, '2016-06-21 07:00:00', 1, '2016-06-21 19:04:05', '2016-06-21 19:04:05'),
(22, 'Perbankan', 'Perbankan', 90, '2016-06-21 07:00:00', 1, '2016-06-21 19:04:35', '2016-06-21 19:04:35'),
(23, 'Usaha Perjalanan Wisata', 'Usaha Perjalanan Wisata', 90, '2016-06-21 07:00:00', 1, '2016-06-21 19:05:04', '2016-06-21 19:05:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_users`
--

CREATE TABLE IF NOT EXISTS `tb_users` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `verified` enum('Yes','No') NOT NULL,
  `role` tinyint(1) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_users`
--

INSERT INTO `tb_users` (`id`, `name`, `email`, `username`, `password`, `verified`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(25, 'Administrator', 'admin@mail.com', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Yes', 1, 'n737xwgaQRdiQRv8TwyESA9GtkpRiOScYDjPsx4xM9tBJqR93nuhNjCpIXs8', '2016-06-20 03:48:04', '2016-06-20 19:31:59'),
(26, 'Ahmad Hanafi', 'hanafi@mail.com', 'hanafi', '827ccb0eea8a706c4c34a16891f84e7b', 'Yes', 0, 'Nmph31Wq8mYC0hUzYm6VbP5tWwYZMqucjQjtFU0jdyytAIbrkr6EHMWFR9Sa', '2016-06-20 03:49:44', '2016-06-19 21:26:42'),
(28, 'Agung Gumelar', 'agungg@mail.com', 'agung', 'e59cd3ce33a68f536c19fedb82a7936f', 'Yes', 0, NULL, '2016-06-22 01:41:38', '0000-00-00 00:00:00'),
(29, 'Fanji', 'fanji@gmail.com', 'fanji', '9f2c4cd31d5503ad8cdf4124c01982ae', 'Yes', 0, NULL, '2016-06-22 01:42:02', '0000-00-00 00:00:00'),
(30, 'Bayu Pratama', 'bayu@mail.com', 'bayu', 'a430e06de5ce438d499c2e4063d60fd6', 'Yes', 0, NULL, '2016-06-22 01:42:28', '0000-00-00 00:00:00'),
(31, 'Muhammad Arifin', 'marifi@gmail.com', 'arifin', '6b2413a60f9bb24b0268688b6088a00a', 'Yes', 0, NULL, '2016-06-22 01:43:30', '0000-00-00 00:00:00'),
(32, 'Harda R', 'harda@mail.com', 'hardasmith', 'e10adc3949ba59abbe56e057f20f883e', 'Yes', 0, NULL, '2016-06-22 01:43:45', '0000-00-00 00:00:00'),
(33, 'Rian S', 'rian@mail.com', 'rians', 'e10adc3949ba59abbe56e057f20f883e', 'Yes', 0, NULL, '2016-06-22 01:44:29', '0000-00-00 00:00:00'),
(34, 'Test ', 'test@mail.com', 'test', 'e10adc3949ba59abbe56e057f20f883e', 'Yes', 0, NULL, '2016-06-22 01:44:50', '0000-00-00 00:00:00'),
(35, 'Arfi Subarkah', 'arfisubarkah@mail.com', 'arfi', 'c4ac13c6863e2d0a29efa850d5bb65e1', 'Yes', 0, NULL, '2016-06-22 01:46:21', '0000-00-00 00:00:00'),
(37, 'Cika Fadilah Sari', 'cika@mail.com', 'cika', '9e4ff7e88c62b1591ec2c536ad818c1f', 'Yes', 0, NULL, '2016-06-22 01:47:41', '0000-00-00 00:00:00'),
(38, 'Devi Nurani', 'devi@mail.com', 'devi', 'f5c2db1f19bdde37e740e86b70d0534f', 'Yes', 0, NULL, '2016-06-22 01:48:05', '0000-00-00 00:00:00'),
(39, 'Asih Fitriani', 'asih@mail.com', 'asih', '9a27adf1714b77f749db78b0e5f2f75c', 'Yes', 0, NULL, '2016-06-22 01:48:26', '0000-00-00 00:00:00'),
(40, 'Baskara Putra', 'baskara@mail.com', 'baskara', '4729d324bfdc580fd929db152d911dc5', 'Yes', 0, NULL, '2016-06-22 01:48:45', '0000-00-00 00:00:00'),
(41, 'Dini Rosmawati', 'dini@mail.com', 'dini', '83476316a972856163fb987b861a0a2c', 'Yes', 0, NULL, '2016-06-22 01:49:16', '0000-00-00 00:00:00'),
(42, 'Eli Nuridasari', 'eli@mail.com', 'eli', '0a57258559de00695ffb0f1d46bba388', 'Yes', 0, NULL, '2016-06-22 01:49:38', '0000-00-00 00:00:00'),
(43, 'Aldiansyah Agustianto', 'Aldi@gmail.com', 'aldi', '5cf15fc7e77e85f5d525727358c0ffc9', 'Yes', 0, NULL, '2016-06-22 02:04:59', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user_answers`
--

CREATE TABLE IF NOT EXISTS `tb_user_answers` (
`id` int(10) unsigned NOT NULL,
  `user_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `answer` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `result` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `tb_user_answers`
--

INSERT INTO `tb_user_answers` (`id`, `user_id`, `subject_id`, `question_id`, `answer`, `result`, `created_at`, `updated_at`) VALUES
(145, 26, 13, 15, 'Tidak Terjawab', 0, '2016-06-20 04:25:28', '2016-06-20 04:25:28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user_results`
--

CREATE TABLE IF NOT EXISTS `tb_user_results` (
`id` int(10) unsigned NOT NULL,
  `user_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `start_time` datetime NOT NULL,
  `finish_time` datetime NOT NULL,
  `correct_count` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `tb_user_results`
--

INSERT INTO `tb_user_results` (`id`, `user_id`, `subject_id`, `start_time`, `finish_time`, `correct_count`, `created_at`, `updated_at`) VALUES
(41, 26, 13, '2016-06-20 11:22:44', '2016-06-20 11:25:28', 0, '2016-06-20 04:22:44', '2016-06-20 04:25:28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user_subjects`
--

CREATE TABLE IF NOT EXISTS `tb_user_subjects` (
`id` int(10) unsigned NOT NULL,
  `user_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `finished` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `tb_user_subjects`
--

INSERT INTO `tb_user_subjects` (`id`, `user_id`, `subject_id`, `finished`, `created_at`, `updated_at`) VALUES
(26, 26, 13, 1, '2016-06-20 04:25:28', '2016-06-20 04:25:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_biodata`
--
ALTER TABLE `tb_biodata`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_nilai`
--
ALTER TABLE `tb_nilai`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_orangtua`
--
ALTER TABLE `tb_orangtua`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_pengumuman`
--
ALTER TABLE `tb_pengumuman`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_pesan`
--
ALTER TABLE `tb_pesan`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_questions`
--
ALTER TABLE `tb_questions`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_smp`
--
ALTER TABLE `tb_smp`
 ADD PRIMARY KEY (`idSMP`);

--
-- Indexes for table `tb_subjects`
--
ALTER TABLE `tb_subjects`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_users`
--
ALTER TABLE `tb_users`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_user_answers`
--
ALTER TABLE `tb_user_answers`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_user_results`
--
ALTER TABLE `tb_user_results`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_user_subjects`
--
ALTER TABLE `tb_user_subjects`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_biodata`
--
ALTER TABLE `tb_biodata`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `tb_nilai`
--
ALTER TABLE `tb_nilai`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `tb_orangtua`
--
ALTER TABLE `tb_orangtua`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `tb_pengumuman`
--
ALTER TABLE `tb_pengumuman`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tb_pesan`
--
ALTER TABLE `tb_pesan`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tb_questions`
--
ALTER TABLE `tb_questions`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `tb_smp`
--
ALTER TABLE `tb_smp`
MODIFY `idSMP` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=106;
--
-- AUTO_INCREMENT for table `tb_subjects`
--
ALTER TABLE `tb_subjects`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `tb_users`
--
ALTER TABLE `tb_users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `tb_user_answers`
--
ALTER TABLE `tb_user_answers`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=146;
--
-- AUTO_INCREMENT for table `tb_user_results`
--
ALTER TABLE `tb_user_results`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `tb_user_subjects`
--
ALTER TABLE `tb_user_subjects`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
