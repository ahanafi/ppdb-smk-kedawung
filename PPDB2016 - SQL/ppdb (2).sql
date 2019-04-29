-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2016 at 08:24 AM
-- Server version: 5.6.21
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
-- Table structure for table `tb_admin`
--

CREATE TABLE IF NOT EXISTS `tb_admin` (
`id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`id`, `username`, `password`, `level`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 1),
(8, 'asep', 'e10adc3949ba59abbe56e057f20f883e', 0),
(9, 'deden', 'e10adc3949ba59abbe56e057f20f883e', 0),
(10, 'sobirin', 'e10adc3949ba59abbe56e057f20f883e', 0),
(11, 'harda', 'e10adc3949ba59abbe56e057f20f883e', 0),
(12, 'eva', 'e10adc3949ba59abbe56e057f20f883e', 0),
(13, 'maman', 'e10adc3949ba59abbe56e057f20f883e', 0),
(14, 'ikhwan', 'b57c7e69d2c81750ac00eca28df8a6f4', 1),
(15, 'dedeh', 'e10adc3949ba59abbe56e057f20f883e', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_biodata`
--

CREATE TABLE IF NOT EXISTS `tb_biodata` (
`id` int(11) NOT NULL,
  `id_user` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `nisn` varchar(15) NOT NULL,
  `tmp_lahir` varchar(50) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jk` enum('Laki-Laki','Perempuan') NOT NULL,
  `agama` varchar(20) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `asal_smp` varchar(50) NOT NULL,
  `no_peserta` varchar(20) DEFAULT NULL,
  `verifikasi` tinyint(1) NOT NULL,
  `konfirmasi` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=227 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_biodata`
--

INSERT INTO `tb_biodata` (`id`, `id_user`, `name`, `nisn`, `tmp_lahir`, `tgl_lahir`, `jk`, `agama`, `no_hp`, `alamat`, `asal_smp`, `no_peserta`, `verifikasi`, `konfirmasi`) VALUES
(1, 82, 'HANIFAH', '0011559415', 'Cirebon', '2001-01-10', 'Perempuan', 'Islam', '2147483647', 'JL.SULTAN AGUNG TIRTAYASA, BLOK.KEDUNG UTER, RT.04/01, NO.88, DS.KEDAWUNG, KEC.KEDAWUNG, ', 'SMPN 1 KedawungSMPN 1 KEDAWUNG', 'BC00082', 1, 1),
(2, 85, 'VIVI LUTHFIYYAH ', '5178705', 'Cirebon', '2000-11-02', 'Perempuan', 'Islam', '2147483647', 'jl. ki ageng tapa Ds. Dawuan kecamatan tengahtani. kabupaten cirebon RT 02 RW 02 Blok Rancang ', 'SMPN 1 Tengah TaniSDN 1 DAWUAN', 'BD00085', 1, 1),
(3, 84, 'Nina Riyani', '11570319', 'Cirebon', '2001-07-30', 'Perempuan', 'Islam', '2147483647', 'Desa battembat blok babadan barat ', 'SMPN 1 Tengah TaniSMPN 1 Tengahtani', 'BC00084', 1, 1),
(4, 87, 'Alfani', '11570841', 'Cirebon', '2001-12-23', 'Perempuan', 'Islam', '2147483647', 'Desa Kalibaru Blok Lakar Jero RT01 RW05', 'SMPN 1 Tengah Tani', 'EF00087', 1, 1),
(5, 88, 'Siti Rahayu', '11570505', 'Cirebon', '2001-02-28', 'Perempuan', 'Islam', '2147483647', 'jln.Juriman no.04 ds.battembat blok soka rt 01/ rw 02 kec. tengahtani kab. cirebon', 'SMPN 1 Tengah TaniSMPN 1 TengahTANI', 'BD00088', 1, 1),
(6, 89, '  INDRIYANI', '5179109', 'Cirebon', '2000-11-02', 'Perempuan', 'Islam', '2147483647', 'Desa Gesik Blok Undung-undung RT01 RW06 Jalan Kidemang Preman', 'SMPN 1 Tengah TaniSMPN 1 Tengah Tani', 'BC00089', 1, 1),
(7, 90, 'NELLA LUTFIYAH', '11570432', 'Cirebon', '2001-01-24', 'Perempuan', 'Islam', '2147483647', 'Desa Karang Sari Blok Jelawe RT06 RW03 ', 'SMPN 1 Tengah TaniSMPN 1 Tengah Tani', 'AB00090', 1, 1),
(8, 91, 'Nur Rahmah ', '0001528117', 'Cirebon', '2000-07-04', 'Perempuan', 'Islam', '2147483647', 'jln.sutawinangun  Gg.Suci Rt 5 Rw 6 pecilon,kabupaten Cirebon ', 'SMPN 4 kota Cirebon ', 'EF00091', 1, 1),
(9, 95, 'YOGA SUGIRO', '11244585', 'Cirebon', '2001-01-10', 'Laki-Laki', 'Islam', '2147483647', 'Bumi Arumsari, Jln. Palem 3A, no:98 RT 02 RW 13 Desa Cirebon Girang Kec. Talun', 'SMPN 1 SumberSMPN 1 SumberSMPN 1 Sumber', 'BC00095', 1, 1),
(10, 94, 'Nur Fauzan Pangestu', '5630706', 'Kebumen', '2000-12-25', 'Perempuan', 'Islam', '2147483647', 'Ds : Purwawinangun\r\nKec: Suranenggala\r\nKab: Cirebon', 'SMPN 1 Gunung JatiSMPN 1 Gunung Jati', 'AB00094', 1, 1),
(11, 100, 'hagi ramlan', '5178671', 'Cirebon', '2000-11-13', 'Laki-Laki', 'Islam', '2147483647', 'desa battembat kecamatan tengah tani kabupaten cirebon', 'SMPN 1 Tengah Tani', 'EC00100', 1, 1),
(12, 101, 'siti nurjanah', '20119229', 'Cirebon', '2002-01-24', 'Perempuan', 'Islam', '089515801047', 'desa dawuan rt.02 rw.05 gang mudin kecamatan tengah tani kabupaten cirebon', 'SMPN 1 Tengah Tani', 'BF00101', 1, 1),
(13, 104, 'metri lisa yolandari', '14081742', 'Cirebon', '2001-07-01', 'Perempuan', 'Islam', '2147483647', 'Jln.olahraga no.38', 'SMPN 4 Cirebon', 'AB00104', 1, 1),
(14, 103, 'sugiarti', '0005178865', 'Cirebon', '2000-12-11', 'Perempuan', 'Islam', '2147483647', 'desa.pilang sari blok.jembangan rt;005 rw;004', 'smpn 1 tengahtani', 'BC00103', 1, 1),
(15, 105, 'putri', '0005179045', 'Cirebon', '2001-04-28', 'Perempuan', 'Islam', '2147483647', 'desa kemlaka gede blok sampang selatan rt01/rw02 kecamatan tengah tani', 'SMPN 1 Tengah Tani', 'BC00105', 1, 1),
(16, 107, 'leli nurlita', '0011570842', 'Cirebon', '2001-01-29', 'Perempuan', 'Islam', '2147483647', 'desa kemlaka gede rt 1 rw 5 kecamatan tengah tani kabupaten cirebon', 'SMPN 1 Tengah Tani', 'BC00107', 1, 1),
(17, 102, 'Rifa Dila', '0011570489', 'Cirebon', '2001-04-26', 'Perempuan', 'Islam', '2147483647', 'Desa Kemlaka Gede blok Weringin Rt 05 Rw 05', 'SMPN 1 Tengah tani', 'AB00102', 1, 1),
(18, 109, 'lita putri kirani ', '0011551008', 'Cirebon', '2001-09-26', 'Perempuan', 'Islam', '087829756433', 'Jl. pilang No. 38 kota cirebon', 'MTSN 1 CIREBONMTSN 1 CIREBON', 'AE00109', 1, 1),
(19, 110, 'YULINDAH', '0001630449', 'Cirebon', '2000-07-21', 'Perempuan', 'Islam', '2147483647', 'Desa.megu cilik blok: Gembulu RT:03 RW:02', 'SMP Islamiyah WeruSMP Islamiyah Weru', 'CD00110', 1, 1),
(20, 106, 'JUJU JULEHA', '0006842609', 'Cirebon', '2000-05-19', 'Perempuan', 'Islam', '2147483647', 'Jl.kejaksan kel.babakan kec.sumber', 'SMPN 2 SumberSMPN 2 Sumber', 'BF00106', 1, 1),
(21, 114, 'REDA SUCININGSASIH', '0005179080', 'Cirebon', '2000-12-07', 'Perempuan', 'Islam', '2147483647', '', 'SMPN 1 Tengah Tani', 'BC00114', 1, 1),
(22, 112, 'YUNIKE WIJAYANTI', '0011578724', 'Cirebon', '2001-06-09', 'Perempuan', 'Islam', '2147483647', 'JL.RADEN GILAP NO.617 DESA BALERANTE RT04 RW02 KECAMATAN PALIMANAN KABUPATEN CIREBON', 'SMPN 2 Palimanan', 'CD00112', 1, 1),
(23, 113, 'ANITAH', '0004756160', 'Cirebon', '2000-11-25', 'Perempuan', 'Islam', '2147483647', 'JL PELDA SADAWI DESA KEDUNG DAWA BLOK PEKLIWONAN ', 'SMPN 1 Tengah TaniSMPN 1 TENGAH TANI', 'BC00113', 1, 1),
(24, 115, 'acmad saefudin', '0011570838', 'Cirebon', '2001-11-28', 'Perempuan', 'Islam', '2147483647', 'Desa kalibaru rt01/05 kec.tengahtani', 'SMPN 1 Tengah Tani', 'EF00115', 1, 1),
(25, 111, 'khamidah', '0011570581', 'Cirebon', '2001-10-08', 'Perempuan', 'Islam', '2147483647', 'Desa Kemlaka Gede Blok Bebekan Kecamatan Tengahtani Kabupaten cirebon JL.Gg.SETIA FAMILY', 'SMPN 1 Tengah Tani', 'BC00111', 1, 1),
(26, 121, 'SEKAR DWI YULIANTI', '0011592294', 'Cirebon', '2001-06-09', 'Perempuan', 'Islam', '0895322745051', 'Jln pecilon  indah blok sitameng 7 Rt06 Rw07 No.96 kec.kedawung', 'SMPN 1 Kedawung', 'BE00121', 1, 1),
(27, 119, 'KHOFIFAH NURADZANI', '34/P/BSNP/XII/2', 'Cirebon', '2000-08-09', 'Perempuan', 'Islam', '089679471354', 'DS.GESIK BLOK.KR.WETAN RT/RW;02/04', 'SMPN 1 Tengah TaniSMPN 1 TENGAH TANI', 'BC00119', 1, 1),
(28, 120, 'ISTIANA', '0004832536', 'Cirebon', '2000-04-13', 'Perempuan', 'Islam', '08971543323', 'JL.PAHLAWAN DAWUAN NO:64 KEC: TENGAHTANI KAB: CIREBON ', 'SMPN 1 Tengah Tani', 'AB00120', 1, 1),
(29, 118, 'badriyah', '0005179463', 'Cirebon', '2001-03-21', 'Perempuan', 'Islam', '089603113048', 'JL.KIAGENG TAPA Kec.tengah tani desa.astapada blok.kavling rt.06 rw.03', 'SMPN 1 Tengah Tani', 'EB00118', 1, 1),
(30, 117, 'Piska Dewi', '0011570307', 'Cirebon', '2001-01-30', 'Perempuan', 'Islam', '0895320616440', 'Jl. Ki Gede Juriman No. 12 RT/RW 01/03 blok Timur Ds. Battembat Kec. Tengahtani Kab. Cirebon', 'SMPN 1 Tengah Tani', 'AF00117', 1, 1),
(31, 122, 'pepi wijayanti', '0005178871', 'Cirebon', '2000-02-28', 'Perempuan', 'Islam', '085797514560', 'desa battembat blok karang anyar rt 05 rw 01', 'smpn 1 tengahtani', 'BC00122', 1, 1),
(32, 123, 'muhammad aditya eka saputra', '9996431374', 'Cirebon', '1999-12-11', 'Laki-Laki', 'Islam', '089610501068', 'desa dawuan  rt.02/rw.05', 'SMPN 1 Tengah Tani', 'AB00123', 1, 1),
(33, 127, 'FIRMAN ALMANSYAH', '0005177762', 'Cirebon', '2000-12-28', 'Laki-Laki', 'Islam', '085316098895', 'JALAN SUTAWINANGUN RT01/RW01KEC KEDAWUNG', 'SMPN 1 Kedawung', 'AE00127', 1, 1),
(34, 126, 'ananda syifa fauziah', '0011572664', 'Cirebon', '2001-04-16', 'Perempuan', 'Islam', '082240275685', 'ds. megu gede\r\nblok. lemah abang\r\nrt : 18 / rw : 04', 'SMPN 1 Sumber', 'AB00126', 1, 1),
(35, 128, 'Farhan Fahrezi', '0011572232', 'Cirebon', '2001-10-19', 'Laki-Laki', 'Islam', '08994126620', 'Jl.Kinataguna Blok.Kwaten Kidul RT/RW 04/02 Ds.Wotgali Kec.Plered Kab.Cirebon', 'SMPN 2 Plered', 'FD00128', 1, 1),
(36, 130, 'RITA MAUDINA', '0005177993', 'Cirebon', '2016-06-22', 'Perempuan', 'Islam', '08992255097', 'JL. SUTAWINANGUN  GG.SIPULO RT03 RW07  \r\nDS.SUTAWINANGUN  KEC.KEDAWUNG', 'SMPN 1 Kedawung', 'AB00130', 1, 1),
(37, 131, 'ANZELINA NIRPALA SARI', '0011570490', 'Cirebon', '2001-04-27', 'Perempuan', 'Islam', '089623914787', 'JL. PAHLAWAN DAUWAN NO. 64 KEC. TENGAH TANI KAB. CIREBON', 'SMPN 1 Tengah TaniSMPN 1 TENGAH TANI', 'BC00131', 1, 1),
(38, 125, 'siti indanafiah', '9996354472', 'Cirebon', '1999-12-21', 'Perempuan', 'Islam', '089632380845', 'desa keraton  rt.04 rw.02', 'SMPN 1 Gunung Jatismpn 1 gunung jati', 'DB00125', 1, 1),
(39, 134, 'WISNU WULDANI', '0011559518', 'Cirebon', '2001-08-04', 'Laki-Laki', 'Islam', '085320061312', 'JL SUTAWINANGUN RT01 RW01 KEC KEDAWUNG', 'SMPN 1 Kedawung', 'FE00134', 1, 1),
(40, 129, 'IIS ISNAWATI', '0005179073', 'Cirebon', '2000-11-04', 'Perempuan', 'Islam', '089698978603', 'jl.pahlawan dawuan no.64 kec.tengah tani kab.cirebon', 'SMPN 1 Tengah Tanismpn 1tengah tani', 'AB00129', 1, 1),
(41, 136, 'Nur hanifah setyawati', '0010878998', 'Cirebon', '2001-09-05', 'Perempuan', 'Islam', '08974820018', 'jl. ks tubun gg sudarma no 70 rt/rw 01/03 kec. kejaksan kel. kejaksan ', 'SMPN 13 Kota Cirebon', 'AB00136', 1, 1),
(42, 135, 'ANNISA ABABIL ', '0011570318', 'Cirebon', '2001-07-21', 'Perempuan', 'Islam', '08996601239', 'JL. PAHLAWAN DAWUAN NO. 64 KEC. TENGAH TANI ', 'SMPN 1 Tengah TaniSMPN 1 TENGAH TANI ', 'AB00135', 1, 1),
(43, 132, 'nur alimah', '0005177808', 'cirebon', '0000-00-00', 'Perempuan', 'Islam', '08971748111', 'jl.arya kemuning desa kedung dawa blok pekliwonan rt.03 rw.02', 'SMPN 1 Tengah Tani', 'BF00132', 1, 1),
(44, 137, 'putri tiara mustika sari', '0003785777', 'Cirebon', '1999-10-27', 'Perempuan', 'Islam', '089658369369', 'desa kaliwulu jl.dahlia Rt 23 RW 05', 'SMPN 1 Tengah Tani', 'BF00137', 1, 1),
(45, 139, 'riza aditya', '0011559260', 'Cirebon', '2001-01-14', 'Laki-Laki', 'Islam', '0895326812189', 'jln.sriwjaya 1 blok cantilan rt04 rw03 ds.kedawunag', 'SMPN 1 Kedawung', 'AF00139', 1, 1),
(46, 141, 'salsa bilarahmani', '0005178694', 'Cirebon', '2001-07-01', 'Perempuan', 'Islam', '089507580140', 'desa gesik blok karang wetan rt.02 rw.04', 'SMP Islamiyah Weru', 'CC00141', 1, 1),
(47, 142, 'EVA EVI YANA', '0005178000', 'Cirebon', '2000-09-27', 'Perempuan', 'Islam', '082240343771', 'JALAN SUTAWINANGUN RT01 RW01 KEC KEDAWUNG', 'SMPN 1 Kedawung', 'BE00142', 1, 1),
(48, 145, 'DIAN SAVITRI', '0011570313', 'Cirebon', '2001-04-09', 'Perempuan', 'Islam', '08998339268', 'JL.PAHLAWAN DAUWAN NO.64 KEC.TENGAH TANI', 'SMPN 1 Tengah Tani', 'AB00145', 1, 1),
(49, 143, 'VIRA AYU DYAH PITALOKA', '0011570445', 'Cirebon', '2001-04-21', 'Perempuan', 'Islam', '0895327059718', 'Jl.pahlawan dawuan No.64 Kec.Tengah Tani Kab.Cirebon ', 'SMPN 1 Tengah TaniSMPN 1 TENGAH TANI', 'AB00143', 1, 1),
(50, 144, 'dea safitri', '9996091927', 'Cirebon', '0000-00-00', 'Perempuan', 'Islam', '085322045666', 'blok kligung desa setu kulon', 'SMPN 3 Pleredsmpn 3 plered', 'FB00144', 1, 1),
(51, 146, 'ulan oktaviani', '0005190074', 'Cirebon', '2000-10-15', 'Perempuan', 'Islam', '089679174796', 'desa setu kulon blok kaliandul rt.04 rw.02', 'SMP Islamiyah WeruSMP Islamiyah Weru', 'AF00146', 1, 1),
(52, 147, 'SILVIA NIRMALA DEWI', '0012090579', 'Cirebon', '2001-01-24', 'Perempuan', 'Islam', '081911325005', 'BLOK II RT.01 RW.02 DESA.GIRINATA KEC.DUKUPUNTANG KAB.CIREBON', 'SMPN 1 Palimanan', 'AF00147', 1, 1),
(53, 148, 'NAZWA KHAIRANA PRAYUDATI', '0020117347', 'JAKARTA', '0000-00-00', 'Perempuan', 'Islam', '08995687759', 'JL. KH. AGUS SALIM GG. PENDAWA 1 NO.7 RT001/06 PALIMANAN TIMUR CIREBON', 'SMPN 1 Palimanan', 'BF00148', 1, 1),
(54, 140, 'Teguh Rokhman Saputra', '', 'Cirebon', '2000-09-08', 'Perempuan', 'Islam', '089697764952', 'Blok siduet rt03 rw02 desa kalikoa kecamatan kedawung', 'SMP Veteran cirebon', 'EF00140', 1, 1),
(55, 150, 'ELLA DAMAYANTI', '0005177759', 'Cirebon', '2000-12-17', 'Perempuan', 'Islam', '089639388528', 'SUTAWINANGUN ,WIDARASARI 3', 'SMPN 1 Kedawung', 'AB00150', 1, 1),
(56, 149, 'evien jubaidah', '0005177810', 'Cirebon', '2000-09-22', 'Perempuan', 'Islam', '08993361542', 'kecamatan kedawung desa kedung dawa blok plekkiwonan rt 03 rw 02', 'SMPN 1 Kedawung', 'AB00149', 1, 1),
(57, 151, 'MOHAMAD PRIANA', '0016215666', 'Cirebon', '2001-04-03', 'Laki-Laki', 'Islam', '089675975235', 'JL PECILON INDAH 4 RT06 RW07 KEC KEDAWUNG', 'MTSN 1 CIREBON', 'AB00151', 1, 1),
(58, 152, 'amanda nabila putri', '0011753659', 'Cirebon', '2001-09-22', 'Perempuan', 'Islam', '0895329418580', 'desa karang mulya blok kali anyar jln. sompoerna rt.02 rw.01', 'SMP Islamiyah WeruSMP Islamiyah Weru', 'BF00152', 1, 1),
(59, 153, 'yesyta damayanti', '0005178842', 'Cirebon', '2000-10-12', 'Perempuan', 'Islam', '089646453017', 'jl.pahlawan dauwan No.64 kec.tengah tani kab. cirebon', 'SMPN 1 Tengah Tanismpn 1 tengah tani', 'AB00153', 1, 1),
(60, 158, 'DINA WIDYA ANNISA', '0011551245', 'JAKARTA', '2001-06-22', 'Perempuan', 'Islam', '089656223023', 'VILLA INTAN 2 BLOK H8 NO.3 RT 18/05 KAB.CIREBON', 'SMPN 2 Kota CirebonSMPN 2 CIREBON', 'EA00158', 1, 1),
(61, 154, 'DESI RAHMAWATI', ' 9996431373', 'Cirebon', '1999-12-09', 'Perempuan', 'Islam', '08998649128', 'JL. PAHLAWAN NO.64 KEC. TENGAHTANI KAB. CIREBON', 'SMPN 1 Tengah Tani', 'AB00154', 1, 1),
(62, 156, 'NOVIAR TRI KHAERINA RAMDHANI', '0011558829', 'Cirebon', '2001-12-02', 'Perempuan', 'Islam', '083824927201', 'JALAN SILIWANGI RT/01 RW/02', 'SMPN 2 KALIWEDI', 'FC00156', 1, 1),
(63, 161, 'safira prakarsa', '0005153320', 'Cirebon', '2000-11-07', 'Perempuan', 'Islam', '089656510595', 'Jl. Sunan Gunung jati desa. Mertasinga', 'SMPN 1 Gunung Jatismpn 1 gunung jati', 'BE00161', 1, 0),
(64, 162, 'Tubagus azhar', '0011838950', 'Cirebon', '2001-07-11', 'Laki-Laki', 'Islam', '089636581435', 'jl. desa muara rt02 rw02', 'SMPN 1 Gunung Jati', 'EF00162', 1, 1),
(65, 160, 'Sriyani', '0005177518', 'Cirebon', '2000-05-29', 'Perempuan', 'Islam', '089601320920', 'Desa kedung dawa blok irigasi rt 01 rw 01', 'SMP Islamiyah Weru', 'AF00160', 1, 1),
(66, 155, 'YULIANA PUTRI ANGGRAENI ', '0018632863', 'Cirebon', '2001-07-16', 'Perempuan', 'Islam', '08994182449', 'GG. PLAMBANGAN, PECILON DUKU RT 02 RW 01 ', 'MTS ISLAMIC CENTRE', 'FA00155', 1, 1),
(67, 164, 'KHANIFAH', '0005455382', 'Cirebon', '2000-10-26', 'Perempuan', 'Islam', '089531086095', 'JL KISABALANANG RT/09 RW/03', 'SMPN 2 Plumbon', 'BC00164', 1, 1),
(68, 165, 'PUTRI', '0005179417', 'Cirebon', '2001-03-07', 'Perempuan', 'Islam', '089525765330', 'JL. PAHLAWAN DAWUAN NO.64 KEC.TENGAH TANI KAB.CIREBON', 'SMPN 1 Tengah Tani', 'AB00165', 1, 1),
(69, 170, 'nur ayu fitriyani ', '0005190079', 'Cirebon', '2000-12-05', 'Perempuan', 'Islam', '089658616709', 'desa setu kulon blok kaliandul rt 06 rw 03', 'SMP Islamiyah WeruSMP Islamiyah Weru', 'AB00170', 1, 1),
(70, 167, 'MELIYANA', '0005177765', 'Cirebon', '2000-05-02', 'Perempuan', 'Islam', '083824825078', 'DESA TUK RT01 RW 03 KEC.KEDAWUNG KAB.CIREBON', 'SMPN 1 KedawungSMPN 1 KEDAWUNG', 'BF00167', 1, 1),
(71, 171, 'NADILA', '0011570586', 'Cirebon', '2001-03-04', 'Perempuan', 'Islam', '089663705401', 'JL.PAHLAWAN DAWUAN NO.64 KEC.TENGAH TANI KAB.CIREBON', 'SMPN 1 Tengah Tani', 'BF00171', 1, 1),
(72, 168, 'Giti meilina', '0005177803', 'Cirebon', '2000-05-31', 'Perempuan', 'Islam', '081804660744', 'Jl. pahlawan dawuan  No. 64 kec. tengah tani kab. cirebon', 'SMPN 1 Tengah TaniSMPN 1 TENGAH TANI', 'BC00168', 1, 1),
(73, 172, 'david susanto', '0005154787', 'Cirebon', '2000-04-19', 'Laki-Laki', 'Islam', '08996522924', 'kec gunung jati desa grogol', 'SMPN 2 Gunungjatismpn 2 gunung jati', 'EC00172', 1, 1),
(74, 174, 'FARA ZAFIRA', '0015950329', 'Cirebon', '2001-05-19', 'Perempuan', 'Islam', '089618337139', 'JL.KS TUBUN GG MUKAYAS NO 177', 'MTSN 1 CIREBON', 'AB00174', 1, 1),
(75, 175, 'siti maemunah', '0012424972', 'Cirebon', '2001-07-01', 'Perempuan', 'Islam', '089660387612', 'desa kedung dawa blok irigasi rt 01 rw 01', 'SMP Islamiyah WeruSMP Islamiyah Weru', 'CE00175', 1, 1),
(76, 176, 'HALIMATUS SADIYAH', '0013010790', 'Cirebon', '2001-06-27', 'Perempuan', 'Islam', '085797566101', 'DS.WANAKAYA RT/01 RW/04 GN.JATI', 'SMPN 2 Gunungjati', 'EB00176', 1, 1),
(77, 177, 'FARADINA KHOLIDAH', '0013977419', 'INDRAMAYU', '2001-10-25', 'Perempuan', 'Islam', '089674405537', 'JL.MAYOR DASUKI NO.209 JATIBARANG INDRAMAYU', 'SMPN 3 JATIBARANG', 'AF00177', 1, 1),
(78, 159, 'Darlinda', '0004816367', 'Cirebon', '2000-05-12', 'Perempuan', 'Islam', '08990245599', 'Jalan sunan gunung jati desa grogol rt 02 rw 04', 'SMPN 2 Gunungjati', 'FC00159', 1, 1),
(79, 180, 'YULIA WIDIASTUTI', '0010711120', 'Cirebon', '2001-07-07', 'Perempuan', 'Islam', '085223262210', 'JL.KEBUMEN.NO.50 CIREBON', 'SMPN 14 Kota Cirebon', 'BC00180', 1, 1),
(80, 173, 'Arfan Tri Wijaya', '0011378473', 'Cirebon', '2001-05-01', 'Perempuan', 'Islam', '08111989050', 'Villaintan 3 M3 no.12 RT.22 RW.06 Desa Klayan Kec.Gunungjati', 'Mts Darul Hikam', 'EC00173', 1, 1),
(81, 179, 'SIFA FAUZIAH NUR UBAEDAH', '0018632857', 'Cirebon', '2001-02-09', 'Perempuan', 'Islam', '089503548053', 'DS.KERTAWINANGUN BLOK CIKEROPAK/CIDEPOK RT/RW 24/05', 'SMPN 1 Kedawung', 'FB00179', 1, 1),
(82, 178, 'DWIYANA MERLEY', '0011559573', 'Cirebon', '2001-05-12', 'Perempuan', 'Islam', '089627094729', 'PILANG SARI RT 05 RW 02 ', 'MTSN 1 CIREBONMTS N 1 CIREBON', 'FB00178', 1, 1),
(83, 183, 'DINDA', '0011559435', 'Cirebon', '2001-05-31', 'Perempuan', 'Islam', '089673950467', 'JL CIDENG JAYA', 'SMPN 1 Kedawung', 'AF00183', 1, 1),
(84, 181, 'siti fatimah azahra', '0010710302', 'Cirebon', '2001-06-11', 'Perempuan', 'Islam', '089663616481', 'jln simaja utara gg.sAWO NO 48 KEL DRAJAT CIREBON', 'SMPN 4 Kota Cirebonsmpn 4 cirebon', 'BE00181', 1, 1),
(85, 188, 'KHOIRUNNISYA', '0006163555', 'Cirebon', '2000-10-30', 'Perempuan', 'Islam', '089681227392', 'KEL. GEGUNUNG BLOK PESAREAN RT04/RW 01', 'SMPN 1 Sumber', 'AB00188', 1, 1),
(86, 182, 'Tri Wulan Oktaviyani', '0004575344', 'Cirebon', '2000-10-30', 'Perempuan', 'Islam', '082324170426', 'Blok Tutugan RT 03 RW 04 Desa Ciperna Kec. Talun Kab. Cirebon', 'SMPN 15 Kota CirebonSMPN 15 Kota Cirebon', 'AA00182', 1, 1),
(87, 186, 'safira prakarsa', '0005153320', 'Cirebon', '2000-11-07', 'Perempuan', 'Islam', '089656510595', 'Jl. Sunan gunung desa. Astana kec. Gunung jati kab. Cirebon', 'SMPN 1 Gunung Jatismpn 1 gunung jati', NULL, 0, 1),
(88, 187, 'NOERLAELA', '0005230117', 'Cirebon', '2000-11-30', 'Perempuan', 'Islam', '08963346127', 'DS.KERANDON BLOK NANGKA GEDE KEC.TALUN KAB.CIREBON RT O1 RW 01', 'SMPN 2 SumberJL.P.KEJAKSAN KEL.BABAKAN KEC.SUMBER ', 'BF00187', 1, 1),
(89, 190, 'INKA SILVI SAFITRI', '0006075856', 'Cirebon', '2001-09-30', 'Perempuan', 'Islam', '089664987729', 'JL.SUTAWINANGUN PECILON TIMUR GG TEGUH RT02 RW06 N0.20', 'MTSN 1 CIREBON', 'BE00190', 1, 1),
(90, 191, 'INDAH WIDIA NINGSIH ', '0011559808', 'Cirebon', '2001-05-18', 'Perempuan', 'Islam', '089602779721', 'DS. SUTAWINANGUN RT. 03 RW.01 KEC. KEDAWUNG KAB. CIREBON', 'SMPN 1 KedawungSMPN 1 KEDAWUNG', 'BF00191', 1, 1),
(91, 193, 'ANIS VISCIANTY', '0011559740', 'Cirebon', '2001-03-20', 'Perempuan', 'Islam', '089679106703', 'JL. PILANG RAYA DS. PILANG SARI BLOK PILANG DALEM RT 02/RW 04', 'SMPN 1 Kedawung', 'BF00193', 1, 1),
(92, 185, 'Puja Sukmawati', ' 9995978967', 'Cirebon', '1999-07-27', 'Perempuan', 'Islam', '08979026726', 'DS.Pilang Sari Blok.Pilang dalem', 'SMPN 1 KedawungSMPT 1 Kedawung', 'BC00185', 1, 1),
(93, 192, 'VENTI VADILAH', '0011593439', 'Cirebon', '2001-03-28', 'Perempuan', 'Islam', '089653209130', 'DS.PANEMBAHAN BLOK SENTOSA RT:09 RW:03 KEC.PLERED KAB.CIREBON', 'SMPN 2 Plered', 'CF00192', 1, 1),
(94, 194, 'PUTRI AMPELI', '0011578783', 'Cirebon', '2001-08-09', 'Perempuan', 'Islam', '089691807716', 'DESA LUNGBENDA BLOK ARSA RT 07 RW 02', 'SMPN 3 Palimanan', 'AB00194', 1, 1),
(95, 195, 'PUTRI ERFRIDA DIANNISA', '0011570837', 'Cirebon', '2001-10-04', 'Perempuan', 'Islam', '089513115462', 'Desa.kali Baru blok.lakarjero Rt.01 Rw.05', 'SMPN 1 Tengah TaniSMPN 1 Tengah Tani', 'EF00195', 1, 1),
(96, 197, 'YENI AGUSTIN', '0011571276', 'Cirebon', '2001-01-15', 'Perempuan', 'Islam', '081911389449', 'JL. FATAHILLAH DS. MEGU CILIK BLOK SERUT NO. 65 RT. 01 RW. 03 KEC. WERU KAB. CIREBON', 'SMP DARUL MUSYAWIRIN', 'CC00197', 1, 1),
(97, 199, 'Avie Dwi Alamanda', '0010879249', 'Cirebon', '2001-04-08', 'Perempuan', 'Islam', '089518899902', 'ds pilang sari blok pilang dalem rt 01 rw 04', 'MTSN 1 CIREBON', 'CF00199', 1, 1),
(98, 198, 'CICI SAFITRI', '0011559567', 'Cirebon', '2001-02-10', 'Perempuan', 'Islam', '083823220296', 'JL. PILANG RAYA BLOK DESA RTRW:03/03 NO.434', 'SMPN 1 Kedawung', 'BF00198', 1, 1),
(99, 201, 'ANI NURYANTI', '0011559755', 'Cirebon', '2001-09-23', 'Perempuan', 'Islam', '08970764028', 'DESA PILANG SARI BLOK KRAMAT RT04RW01', 'MTSN 1 CIREBON', 'DE00201', 1, 1),
(100, 203, 'Novita Putri', '0011559569', 'Cirebon', '2001-03-13', 'Perempuan', 'Islam', '089669236889', 'DS.PILANGSARI BLOK PILANG GENJA ', 'SMPN 1 Kedawung', 'FF00203', 1, 1),
(101, 204, 'RESA LIVIYANA', '0011593452', 'Cirebon', '2001-05-27', 'Perempuan', 'Islam', '081395991766', 'DS. PANEMBAHAN BLOK RATU BARAT RT.003 RW.001 KEC. PLERED KAB. CIREBON', 'SMPN 2 Plered', 'CF00204', 1, 1),
(102, 205, 'siti octaviyani', '0005154569', 'Cirebon', '2000-10-03', 'Perempuan', 'Islam', '089655818058', 'Jl. Raya sunan gunung jati desa. Grogol kec. Gunung jati ', 'SMPN 2 Gunungjatismpn 2 gunung jati', 'BC00205', 1, 1),
(103, 206, 'Subeki', '0005117382', 'Cirebon', '2000-03-20', 'Laki-Laki', 'Islam', '089515818202', 'Desa tuk kec.kedawung. GG.KH.ibrahim RT04 RW03', 'SMPN 1 Kedawung', 'CC00206', 1, 1),
(104, 207, 'Fitria uswatun hasanah gusasi', '0010878150', 'Cirebon', '2001-01-15', 'Perempuan', 'Islam', '08999856210', 'jalan ciremai raya gg kamal1 rt.01/rw.19 larangan timur kelurahan larangan kecamatan harjamukti kota cirebon', 'SMPN 2 Kota Cirebon', 'AE00207', 1, 1),
(105, 202, 'FIKRI AOLIANTI ', '0005177772', 'Cirebon', '2000-06-18', 'Perempuan', 'Islam', '089675399249', 'JL.NYIMAS PAKUNGWATI KEC.KEDAWUNG KAB.CIREBON', 'SMPN 1 KedawungJL.CIDENG JAYA NO.299 CIREBON', 'CC00202', 1, 1),
(106, 208, 'NOVIANTI DWI RIHANDJANI', '0005177730', 'Cirebon', '2000-11-14', 'Perempuan', 'Islam', '089672110572', 'DS.PILANGSARI BLOK GENJA RT.01 RW.03', 'SMPN 1 KedawungSMPN 1 KEDAWUNG', 'AF00208', 1, 1),
(107, 217, 'resa restianawati', '0011559575', 'Cirebon', '2001-07-04', 'Perempuan', 'Islam', '089652495879', 'desa pilangsari blok genja rt 02 rw 03', 'SMPN 1 Kedawung', 'AF00217', 1, 1),
(108, 215, 'ERIYATI', '0011593250', 'Cirebon', '2001-06-03', 'Perempuan', 'Islam', '085315254470', 'BLOK DANALAYA DS.TEGALSARI RT.10 RW.04 KEC.PLERED KAB.CIREBON', 'SMPN 2 Plered', 'BF00215', 1, 1),
(109, 214, 'RIYAN FEBRIYANTO', '0011550535', 'Cirebon', '2001-02-09', 'Laki-Laki', 'Islam', '08815125769', 'VILLA INTAN 2 BLOK K4 NO.12 RT.19 RW.05 DESA KLAYAN KECAMATAN GUNUNG JATI KABUPATEN CIREBON UTARA', 'SMPN 16 Kota Cirebon', 'AE00214', 1, 1),
(110, 216, 'RUDI HARYANTO', '0011838635', 'Cirebon', '2001-04-03', 'Perempuan', 'Islam', '089686849772', 'Desa Surakarta Blok IV RT 03 RW 06', 'SMPN 1 Gunung Jati', 'CB00216', 1, 1),
(111, 218, 'RENA APRILLIA SISKA MULYANA', '0002950504', 'Cirebon', '2000-04-28', 'Perempuan', 'Islam', '082317556645', 'jln.kalijaga desa suci blok sular rt02 rw03 kec.mundu kab.cirebon', 'SMPN 3 Kota Cirebon', 'BD00218', 1, 1),
(112, 221, 'DEWI KIRANA', '0011550637', 'Cirebon', '2001-08-24', 'Perempuan', 'Islam', '089613716094', 'DS.MERTASINGA BLOK LAWANG GEDE RT. 03 RW.02 KEC. GUNUNG JATI KAB. CIREBON', 'SMPN 1 Gunung Jati', 'BC00221', 1, 1),
(113, 211, 'Selviyani', '0011570-184', 'Cirebon', '2001-04-08', 'Perempuan', 'Islam', '089606067532', 'Desa.Pilang sari Blok jembangan RT 05 RW 04 Kecamatan Kedawung ', 'smpn 1 tengah tani', 'BF00211', 1, 1),
(114, 220, 'FITRI NUR AENI', '131407098\000509', 'Cirebon', '2000-12-28', 'Perempuan', 'Islam', '085318718745', 'DESA KERATON DUSUN 1 RT 004RW 002', 'SMP N 1 SURANENGGALA', 'BB00220', 1, 1),
(115, 226, 'PUTRI NA SOLEKHA', '0005392897', 'Cirebon', '2000-10-10', 'Perempuan', 'Islam', '082129610918', 'GEGESIK KIDUL KEC GEGESIK ', 'SMPN 1 Gegesik', 'BF00226', 1, 1),
(116, 225, 'ilham ramadhan', '0011559699', 'Cirebon', '2001-11-08', 'Laki-Laki', 'Islam', '08815112560', 'jl.brigjen dharsono\r\nblok cantilan .desa kedawung\r\nrt.1 rw.03', 'SMPN 1 Kedawungsmpn 1 kedawung', 'CF00225', 1, 1),
(117, 219, 'NURRAHMAH ISTIQOMAH', '0006122000', 'Cirebon', '0000-00-00', 'Perempuan', 'Islam', '085222260965', 'DESA KEDAWUNG RT 04 RW02 KECAMATAN KEDAWUNG', 'SMPN 1 Weru', 'FB00219', 1, 0),
(118, 228, 'RIZKI SUTRISNA', '0010878661', 'Cirebon', '2001-04-04', 'Laki-Laki', 'Islam', '089686824212', 'desa kepongpongan RT 03 RW 03 kEC TALUN', 'SMPN 11 Kota Cirebon', 'AC00228', 1, 1),
(119, 229, 'ALYFIAH RACHMAWATI', '0011559526', 'Cirebon', '2001-11-17', 'Perempuan', 'Islam', '082321343321', 'JL.CIDENG JAYA GG.SUTA JAYA RT.10 RW.03 DESA.KERTAWINANGUN', 'SMPN 1 KedawungSMPN 1 KEDAWUNG', 'BE00229', 1, 1),
(120, 230, 'MUHAMAD ILHAM', '0005219126', 'Cirebon', '2000-12-11', 'Laki-Laki', 'Islam', '089630399432', 'DESA CEMPAKA RT 02 RW 06 KEC TALUN', 'SMPN 1 Talun', 'BF00230', 1, 1),
(121, 231, 'HANIFATIN NISAH', '0011592109', 'Cirebon, 12 MEI 2001', '2001-05-12', 'Perempuan', 'Islam', '089672732126', 'BLOK TANAH BARU SELATAN DESA PANEMBAHAN KECAMATAN PLERED KABUPATEN CIREBON', 'SMPN 2 Plered', 'AB00231', 1, 1),
(122, 232, 'SERLY PRATIWI', '0005219190', 'Cirebon', '2000-08-27', 'Perempuan', 'Islam', '089610727871', 'CIREBON GIRANG KERAMAT TALUN', 'SMPN 1 Talun', 'AB00232', 1, 1),
(123, 227, 'ADELIA PUTERI LESTARI', '0005177831', 'Cirebon', '2000-06-13', 'Perempuan', 'Islam', '089505327696', 'JL.SULTAN AGENG TIRTAYASA GG.AR-RAHMAN RT.01 RW.01', 'SMPN 1 Kedawung', 'AB00227', 1, 1),
(124, 234, 'WILDANI ADITYA', '0011559641', 'Cirebon', '2001-03-28', 'Laki-Laki', 'Islam', '085797119030', 'JL. SULTAN AGENG TIRTAYASA BLOK.KEPUDANG RT 02 RW 03 DS. KEDUNG DAWA KEC. KEDAWUNG ', 'SMPN 1 Kedawung', 'AE00234', 1, 1),
(125, 235, 'SITI NURJANA ADEA', '0011751848', 'Cirebon', '0000-00-00', 'Perempuan', 'Islam', '089679168547', 'DESA CEMPAKA BLOK KR.TENGAH RT02 RW01 KECAMATAN PLUMBON', 'SMPN 1 Depok', 'BC00235', 1, 1),
(126, 239, 'AHMAD RIFAI', '0011571760', 'Cirebon', '2001-05-15', 'Laki-Laki', 'Islam', '0895339111504', 'JL.SYEKH DAHTUL KAHFI BLOK KARANG BARU RT09 RW03 DESA WERU LOR KECAMATAN WERU KABUPATEN CIREBON', 'SMPN 1 Tengah Tani', 'CE00239', 1, 1),
(127, 240, 'MUKHAMAD FARHAN RIYADI', '0005177576', 'Cirebon', '2000-01-18', 'Laki-Laki', 'Islam', '0895342432777', 'DESA KEDUNGDAWA BLOK SILEDU RT01 RW04 JL.SULTAN AGENG TIRTAYASA', 'SMPN 1 Kedawung', 'EF00240', 1, 1),
(128, 244, 'SHINDY APRILIA', '0011559506', 'Cirebon', '2001-04-08', 'Perempuan', 'Islam', '089631523428', 'JL.CIDENG JAYA GG.TUAN JANA RT.11 RW.03 NO.135 KERTAWINANGUN,KEDAWUNG,CIREBON', 'SMPN 1 Kedawung', 'FA00244', 1, 1),
(129, 238, 'RAHAYU RULIANA', '0013010784', 'Cirebon', '2001-01-01', 'Perempuan', 'Islam', '0895325809220', 'DS.WANAKAYA RT01 RW04 KEC.GUNUNG JATI KAB.CIREBON', 'SMPN 2 Gunungjati', 'AC00238', 1, 1),
(130, 242, 'PUTRI INDAH LESTARI', '0012090736', 'Cirebon', '2001-01-31', 'Perempuan', 'Islam', '0895325358182', 'DS.BALAD.JL.NY AGENG SERANG No.02.RT02.RW 03', 'SMPN 1 Dukupuntang', 'FA00242', 1, 1),
(131, 243, 'SRI HARTATI', '0005676456', 'Cirebon', '2001-01-16', 'Perempuan', 'Islam', '089605807139', 'jln pembangunan barat ujung RT 04  RW  05 mekar sari baru', 'SMP Wahidin', 'EA00243', 1, 1),
(132, 247, 'RAHMA FIKRI R N M', '0005177394', 'Cirebon', '0000-00-00', 'Perempuan', 'Islam', '081224493977', 'DESA CEMPAKA RT04/01 KECEMATAN TALUN', 'SMPN 1 Talun', 'FE00247', 1, 1),
(133, 246, 'asih nuraeni', '0011570949', 'Cirebon', '2001-03-02', 'Perempuan', 'Islam', '085797549506', 'desa megu gede blok. kecabean rt.21 rw.04', 'SMPN 2 Weru', 'FB00246', 1, 1),
(134, 248, 'ALIF NUR ALAMSYAH', '0010974539', 'Cirebon', '2001-10-02', 'Laki-Laki', 'Islam', '085224750139', 'DESA KERTAWINANGUN BLOK SIJOMBANG RT15 RW 04', 'SMPN 1 Kedawung', 'ED00248', 1, 1),
(135, 249, 'ADI GUNAWAN', '9995978960', 'Cirebon', '1999-07-11', 'Laki-Laki', 'Islam', '082319685270', 'JL.SULTANAGENG TIRTAYASA BLOK SILEDU', 'SMPN 1 Kedawung', 'EF00249', 1, 1),
(136, 251, 'RIAN SABARA', '0011559716', 'Cirebon', '2001-08-05', 'Laki-Laki', 'Islam', '089657771299', 'JLN.CIDENG JAYA GG.TUAN JANA RT.12 RW.03 DS.KERTAWINANGUN KEC.KEDAWUNG KAB.CIREBON', 'SMPN 1 Kedawung', 'DB00251', 1, 1),
(137, 250, 'SANTI FEBRIANTI', '0011559804', 'Cirebon', '2001-02-17', 'Perempuan', 'Islam', '089665120033', 'DS.SUTAWINANGUN JL.SITAMENG 4 RT.04 RW.07 KEC.KEDAWUNG KAB. CIREBON', 'SMPN 1 Kedawung', 'BF00250', 1, 1),
(138, 253, 'SYIFA NUR DELFIANI ', '0011550637', 'Cirebon', '2000-09-18', 'Perempuan', 'Islam', '089637883475', 'JL. SUNAN GUNUNG JATI DESA MERTASINGA BLOK LAWANG GEDE RT. 03 RW. 02', 'SMPN 1 GUNUNG JATI', 'AC00253', 1, 1),
(139, 252, 'AMINA TUZZAHRO', '0005175705', 'Cirebon', '2016-06-25', 'Perempuan', 'Islam', '089611677317', 'DESA KARANGKENDAL,KEC.KAPETAKAN,KAB.CIREBON,RT 03,RW 1', 'MTS N KARANGKENDAL', 'BE00252', 1, 1),
(140, 254, 'ANGGI SANTIKA', '0005177735', 'Cirebon', '0000-00-00', 'Perempuan', 'Islam', '08981563892', 'DESA PILANGSARI BLOK KRAMAT INDAH RT03 RW01', 'SMPN 1 Kedawung', 'FC00254', 1, 1),
(141, 258, 'DZUL QARNAIN SYAH', '0011559599', 'Cirebon', '2001-06-11', 'Laki-Laki', 'Islam', '089664795351', 'DS KERTAWINANGUN JL SIKRANJI 6 NO 66 RT27 RW 06', 'SMPN 1 Kedawung', 'ED00258', 1, 1),
(142, 255, 'SAEROSA INDAH', '0005154713', 'Cirebon', '2000-05-16', 'Perempuan', 'Islam', '08978279525', 'JL. SUNAN  GUNUNG JATI DS. JATIMERTA RT/RW 005/002 KEC. GUNUNG JATI KAB. CIREBON', 'SMPN 2 Gunungjati', 'BC00255', 1, 1),
(143, 257, 'Desy Septriani Putri', '0009587235', 'Cirebon', '2000-09-06', 'Perempuan', 'Islam', '089657462982', 'Jl sukapura no 05/32 Rt02 Rw01 kecamatan kejaksan kota cirebon', 'SMPN 5 Kota Cirebon', 'BE00257', 1, 1),
(144, 260, 'FAUZIYAH', '0005179079', 'Cirebon', '2000-11-24', 'Perempuan', 'Islam', '089623906814', 'DESA DAWUAN, BLOK UTARA, RT 04 RW 05, TENGAHTANI', 'SMPN 1 Tengah TaniSMPN1TENGAHTANI', 'AB00260', 1, 1),
(145, 262, 'wasiri', '0012114620', 'Cirebon', '2016-07-31', 'Perempuan', 'Islam', '089632699402', 'bayalangu lor kecamatan gegesik kab.cirebon', 'SMPN3gegesik', 'BD00262', 1, 0),
(146, 264, 'IKA MUSTIKA DEWI', '0005179996', 'Cirebon', '2000-07-19', 'Perempuan', 'Islam', '089658034055', 'BLOK RANDUALAS RT OO2 RW OO1 DESA MEGU CILIK KECAMATAN WERU KABUPATEN CIREBON', 'MTSN 2 Cirebon', 'AF00264', 1, 1),
(147, 261, 'NUR MAHMUDAH', '00056758', 'Cirebon', '2000-09-21', 'Perempuan', 'Islam', '089698951408', 'DESA WANAKAYA BLOK KALISAPU 02/03 KEC.GUNUNG JATI KAB/ CIREBON NO.41', 'MTSN 1 CIREBON', 'FE00261', 1, 1),
(148, 259, 'FITRI ANGGRAENI', '0005231714', 'Cirebon', '2000-12-26', 'Perempuan', 'Islam', '089659559487', 'BLOK DESA RT11/RW03 DESA KALIWULU KEC.PLERED KAB.CIREBON', 'SMPN 2 Plered', 'AF00259', 1, 1),
(149, 267, 'FATHAN IZZATUL MAULA', '0020119093', 'Cirebon', '2002-04-28', 'Laki-Laki', 'Islam', '085317753354', 'DESA BUNTET DUSUN 1 RT 01 Rw 01 KECAMATAN ASTANAJAPURA KABUPATEN CIREBON', 'SMPN 1 LEMAHABANG', 'BE00267', 1, 1),
(150, 269, 'RIZKY ADINDA', '0011550479', 'Cirebon', '2000-12-11', 'Perempuan', 'Islam', '087829415001', 'DS JATIMERTA RT 04 RW 02 KEC GUNUNG JATI', 'SMPN 2 Gunungjati', 'AE00269', 1, 1),
(151, 268, 'NURUL TIFANI', '0005178318', 'Cirebon', '2000-05-12', 'Perempuan', 'Islam', '08980424801', 'jl.kalijaga desa suci  rt 02 rw 01 blok tenggeran kec.mundu kab. cirebon', 'SMPN 3 Kota Cirebon', 'AF00268', 1, 1),
(152, 270, 'Muhammad wildan', '0005392897', 'Cirebon', '2001-02-02', 'Laki-Laki', 'Islam', '087829471919', 'JL.Sutawinangun Gg.Suci ', 'MTSN 1 CIREBON', 'EE00270', 1, 1),
(153, 271, 'AGHITS NIDALLAH', '0010819451', 'Cirebon', '2001-03-16', 'Laki-Laki', 'Islam', '089692110391', 'Jln. RAYA SN.GN.JATI DS.ASTANA BLOK PEKAUMAN CIREBON Rt.003 Rw.001', 'SMPN 2 Kota Cirebon', 'ED00271', 1, 1),
(154, 256, 'faradillah zahwa putri', '73648647', 'Cirebon', '2001-07-02', 'Perempuan', 'Islam', '089639366875', 'ds. megu gede blok. masjid kramat jl. fatahillah rt03/rw01', 'MTSN 2 Cirebon', 'CF00256', 1, 1),
(155, 272, 'DESI YULIA NINGSIH', '0012232367', 'Cirebon', '2001-01-26', 'Perempuan', 'Islam', '088211796826', 'DS.KEDUANAN \r\nBLOK RAMIN\r\nKEC.DEPOK\r\nKAB.CIREBON', 'SMPN 1 DEPOK', 'BF00272', 1, 1),
(156, 275, 'SEKAR', '0011550845', 'Cirebon', '2001-05-15', 'Perempuan', 'Islam', '085895640417', 'DESA TEGALSARI PERUMAHAN PONDOK MUTIARA JALAN MAJAPAHIT BLOK M6 U22', 'SMPN 2 PleredSMPN 2 PLERED', 'AB00275', 1, 1),
(157, 266, 'PUTRI RIZKI AULIA', '0011558271', 'Cirebon', '2001-07-13', 'Perempuan', 'Islam', '089622774968', 'DS PEGAGAN LOR KEC. KAPETAKAN KAB. CIREBON', 'SMPN 2 KAPETAKAN', 'BC00266', 1, 1),
(158, 276, 'ADI PRAYOGI', '0005190646', 'Cirebon', '2001-02-03', 'Perempuan', 'Islam', '085317775785', 'DESA MEGU GEDE RT. 05 RW. 01  KEC. WERU KAB. CIREBON', 'SMP ISLAMIYAH WERU', 'EF00276', 1, 1),
(159, 274, 'sudirman', '9995954534', 'Cirebon', '1999-07-14', 'Laki-Laki', 'Islam', '087829220360', 'desa galagamba', 'smp pgri ciwarigin', 'CC00274', 1, 1),
(160, 273, 'CASMARI', '13147198', 'Cirebon', '2001-06-19', 'Laki-Laki', 'Islam', '083823245211', 'JL.URIP SUMOHARJO CIWARINGIN ', 'SMPN2 CIWARINGIN', 'CC00273', 1, 1),
(161, 278, 'Rina Rismawati', '9996051323', 'Cirebon', '2000-08-21', 'Perempuan', 'Islam', '089636423954', 'jl. sunan gunung jati ds. wanakaya blok. sembung rt.03 rw.o4 kec. gunung jati kab. cirebon', 'SMPN 3 Gunungjati', 'AC00278', 1, 1),
(162, 279, 'Nadia Arum Putri', '0011254596', 'Cirebon', '2001-02-12', 'Perempuan', 'Islam', '082316180577', 'JL.raya banjar km3,5 pamalayan cijeungjing ciamis ', 'SMPT AR-RISALAH', 'BF00279', 1, 1),
(163, 280, 'TESSA FIRMANSAH', '0003952346', 'Cirebon', '2001-03-30', 'Laki-Laki', 'Islam', '08156451412', 'JL.SUMUR WASIAT RT02 RW04 DESA KEPONGPONGAN  ', 'SMPN 17 Kota Cirebon', 'AC00280', 1, 1),
(164, 281, 'SEILA NURHALIZA', '0015933169', 'Cirebon', '2001-06-15', 'Perempuan', 'Islam', '081320216311', 'JLN.SASANABUDAYA N0.17 RT.01 RW.09 DESA.SUTAWINANGUN', 'SMPN 4 Kota Cirebon', 'CF00281', 1, 1),
(165, 286, 'SUKMO WIJAYA', '0011538621', 'Cirebon', '2001-03-29', 'Laki-Laki', 'Islam', '087729830459', 'jl.urip sumoharjo ', 'SMP N 2 CIWARINGIN', 'CE00286', 1, 1),
(166, 285, 'Ayu Triviyani', '09112000', 'Cirebon', '2000-11-09', 'Perempuan', 'Islam', '085351448744', 'BLOK AMAN,RT 019 RW 005, DS. TEGALWANGI, KEC, WERU, KAB, CIREBON', 'MTSN 2 Cirebon MI NU ASH-SHOBIRIN', 'EA00285', 1, 1),
(167, 283, 'OKTA AYUWANDI FAUZIAH', '0005230517', 'Cirebon', '2000-10-25', 'Perempuan', 'Islam', '089669646707', 'desa jadi mulya villa intan 1 blok a2 no.6 kec. gunung jati kab. cirebon', 'SMPN 1 Gunung Jatismpn 1 gunung jati', 'AF00283', 1, 1),
(168, 288, 'taufik hendrawan', '0012231407', 'Cirebon', '2001-08-30', 'Laki-Laki', 'Islam', '081223808809', 'desa kebarepan blok pegambuan jalan nangka kecamatan plumbon kabupaten cirebon', 'SMPN 2 Plered', 'ED00288', 1, 1),
(169, 290, 'KHOIROTUL FAJRIYAH', '0005457081', 'Cirebon', '2000-09-21', 'Perempuan', 'Islam', '089657715814', 'JL.YUDISTIRA NO.36 RT.07 RW.02 DS. KARANG ASEM PLUMBON CIREBON', 'SMPN 2 Plumbon', 'CC00290', 1, 1),
(170, 292, 'ANDI PURNOMO', '0005179049', 'Cirebon', '2000-05-14', 'Laki-Laki', 'Islam', '089666117024', 'Jl. Pahlawan Ds.dawuan', 'SMPN 1 Tengah Tani', 'EA00292', 1, 1),
(171, 289, 'MAILIZA ZAINIZA', '0020138848', 'Cirebon', '2002-01-01', 'Perempuan', 'Islam', '089609751086', 'JL YUDISTIRA BLOK SETINGGAL RT 20 RW 004 DESA KARANG ASEM', 'SMP N 2 PLUMBON', 'AF00289', 1, 1),
(172, 291, 'DIANA ROSVERDIRIYANTI KARIM', '0011556836', 'Cirebon', '2001-01-26', 'Perempuan', 'Islam', '089653698699', 'DESA CIPANAS KECAMATAN DUKUPUNTANG KABUPATEN CIREBON', 'SMPN 1 DUKUPUNTANG', NULL, 0, 1),
(173, 284, 'Silfiyah', '0011570827', 'Cirebon', '2001-02-10', 'Perempuan', 'Islam', '08977401019', 'Desa kalibaru blok lakarjero', 'SMPN 1 Tengah Tani', 'BA00284', 1, 1),
(174, 293, 'serly rosyallina', '0011590866', 'indramayu', '2016-07-28', 'Perempuan', 'Islam', '08989016845', 'desa panguragan lor, kec. panguragan', 'SMPN 1 Arjawinangun', NULL, 0, 1),
(175, 294, 'MUAWIYAH', '0011559798', 'Cirebon', '2001-01-06', 'Laki-Laki', 'Islam', '089675157707', 'JL. SUTAWINANGUN GG.SUCI NO.22 RT04 RW06', 'MTSN 1 CIREBON', NULL, 0, 1),
(176, 295, 'Dino Sapta Prasetyo', '0011496639', 'Cirebon', '0000-00-00', 'Laki-Laki', 'Islam', '08980436439', 'Jl. Kedapang Indah No. 29 Rt 01 Rw 03 Blok 2 Desa Jungjang Kec. Arjawinangun Kab. Cirebon 45162', 'SMPN 1 ArjawinangunSMPN 1 Arjawinangun', NULL, 0, 1),
(177, 298, 'RUANI', '0011550336', 'Cirebon', '2001-01-24', 'Perempuan', 'Islam', '089509704107', 'JL.KIGEDE MAYUNG DS.BUYUT RT01 RW01', 'SMPN 3 Gunungjati', NULL, 0, 1),
(178, 296, 'Amirah deya firzanah', '0011592513', 'Cirebon', '2001-09-26', 'Perempuan', 'Islam', '089696499766', 'DESA WANSABA KIDUL BLOK WIDARA 01\04 KECAMATAN TALUN KABUPATEN CIREBON', 'SMPN 1 SumberSMPN 1 SUMBER', NULL, 0, 1),
(179, 299, 'FARHAH RIHHADATUL AISY', '0011559748', 'Cirebon', '2001-07-12', 'Perempuan', 'Islam', '089613191642', 'DESA PILANG SARI BLOK PILANG SARI RT 05 RW 02', 'MTSN 1 CIREBON', NULL, 0, 1),
(180, 297, 'indri alvianty', '0005219767', 'Cirebon', '2000-09-29', 'Perempuan', 'Islam', '085220631898', 'jl.nyigede cangkring ds.kaliwulu blok.siabang rt/rw.14/01 kec.plered kab.cirebon', 'smpn 2 plered', NULL, 0, 1),
(181, 300, 'PIPIT FITRIYANTI', '0005219726', 'Cirebon', '2000-12-27', 'Perempuan', 'Islam', '083823552839', 'DESA WANASABA LOR KEC.TALUN KAB.CIREBON RT 01 RW 01', 'SMPN 3 SumberSMPN 3 SUMBER', NULL, 0, 1),
(182, 302, 'NOVIA', '-', 'Cirebon', '2001-12-11', 'Perempuan', 'Islam', '089525352778', 'JL.PRAMUKA', 'SMPN 1 Kedawung', NULL, 0, 1),
(183, 303, 'DEWI RASEMI', '0003952358', 'Cirebon', '2000-07-17', 'Perempuan', 'Islam', '089686179115', 'JL.SUMUR WASIAT RT.03 RW.04 KEPONGPONGAN', 'SMPN 17 Kota Cirebon', NULL, 0, 1),
(184, 301, 'mustika ratna dewi', '0010973955', 'Cirebon', '2001-04-04', 'Perempuan', 'Islam', '089604907179', 'jln meranti III NO. 31 bumi arum sari', 'SMPN 11 Kota Cirebon', NULL, 0, 1),
(185, 304, 'Jidan Dwilaksana', '0018841447', 'Cirebon', '2001-07-30', 'Laki-Laki', 'Islam', '089665259285', 'Jln Sunan Drajat ,Link manis Cikuya RT03 RW 09 ,sumber Cirebon.', 'SMPN 1 Sumber', NULL, 0, 1),
(186, 306, 'Azril Raihan Miraj', '0019411763', 'Cirebon', '2001-01-10', 'Laki-Laki', 'Islam', '0812121111347', 'Jl Pamungkas Rt01 rw 003 desa Jungjang kecamatan Arjawinangun', 'SMPN 1 Arjawinangun', NULL, 0, 1),
(187, 307, 'Naely saadah', '0005190429', 'Cirebon', '2000-10-14', 'Perempuan', 'Islam', '089515452592', 'Blok kenduruan Rt 02 Rw 01 Desa Weru Lor Kecamatan Weru Kabupaten Cirebon', 'MTSN 2 Cirebon', NULL, 0, 1),
(188, 305, 'JIHAN ZAHUROH', '0011551104', 'Cirebon', '2001-04-06', 'Perempuan', 'Islam', '082240136834', 'DS KALISAPU BLOK KARANG JATI', 'SMPN 2 GUNUNG JATI', NULL, 0, 1),
(189, 308, 'ALFIAN TEGUH ARIFIANTO', '0011550973', 'Cirebon', '2001-07-29', 'Laki-Laki', 'Islam', '082121364004', 'DUSUN DUA SAMBENG \r\nRT: 09 RW: 03\r\n KEC.GUNUNG JATI', 'SMPN 3 GUNUNG JATI', NULL, 0, 1),
(190, 310, 'PUTRI MELATI', '0005175664', 'Cirebon', '2000-08-04', 'Perempuan', 'Islam', '087829242943', 'DESA BUNGKO KIDUL KEC.KAPETAKAN KAB.CIREBON', 'MTS N KARANGKENDAL', NULL, 0, 1),
(191, 312, 'SILFIANA', '0011572929', 'Cirebon', '2001-06-26', 'Perempuan', 'Islam', '089524540887', 'DS.TRUSMI WETAN', 'SMPN 1 Plered', NULL, 0, 1),
(192, 314, 'INTAN SUHERMAN', '20102,1713021', 'Cirebon', '2001-10-15', 'Perempuan', 'Islam', '0896873080', 'DS.MEGU GEDE', 'SMPN 1 Plered', NULL, 0, 1),
(193, 313, 'shinta elyanda', '0005631305', 'Cirebon', '2000-11-10', 'Perempuan', 'Islam', '089660054707', 'Ds keraton kec. suranenggala kab. cirebon ', 'SMPN 1 Suranenggala', NULL, 0, 1),
(194, 315, 'AKHMAD.RIFAI', '0008849205', 'Cirebon', '2000-10-16', 'Laki-Laki', 'Islam', '085324048429', 'jl.Ki Gede Bungko Desa Bungko Lor Kecamatan Kapetakan Kab Cirebon-45152', 'MTsN KARANG KENDAL', NULL, 0, 1),
(195, 317, 'ISNENI HENDRA PUTRI', '0011235903', 'Cirebon', '2002-06-10', 'Perempuan', 'Islam', '085274110816', 'DESA KALISAPU BLOK KHOLWAT RT 002 RW 002', 'SMP N 2 TANJUNG MUTIARA', NULL, 0, 1),
(196, 311, 'Rindi Rosdiani', '0005179620', 'Cirebon', '2000-10-20', 'Perempuan', 'Islam', '089525463633', 'Ds Palir Blok Sigondang Rt 08 Rw 02 Kec. Tengahtani', 'MTSN 2 Cirebon', NULL, 0, 1),
(197, 316, 'Anggun Mutiara', '0004583008', 'Cirebon', '0000-00-00', 'Perempuan', 'Islam', '083823335028', 'desa cangkoak, kec. dukupuntang, kab. cirebon', 'smpn 1 dukupuntang', NULL, 0, 1),
(198, 320, 'AJAT SAPUTRA', '0014596197', 'Cirebon', '2001-01-26', 'Laki-Laki', 'Islam', '083614124265', 'desa kedung jaya blok kebon kunir rt/rw 06/02', 'mts attahiriyah  jakarta', NULL, 0, 1),
(199, 319, 'OKIAWATI', '0011559757', 'Cirebon', '2001-11-24', 'Perempuan', 'Islam', '089505989823', 'DESA PILANG SARI BLOK PILANG SARI RT. 05 RW. 02', 'MTSN 1 CIREBON', NULL, 0, 1),
(200, 321, 'SITI ROSTINA', '0011559424', 'Cirebon', '2001-04-18', 'Perempuan', 'Islam', '08994380756', 'Desa kedung dawa blok siledu rt\rw 001\004', 'SMPN 1 Kedawung', NULL, 0, 1),
(201, 318, 'ISMATUL MAULANI', '9996091202', 'Cirebon', '1999-07-23', 'Perempuan', 'Islam', '081313189997', 'DESA CIREBON-girang Jl keramat talun RT 05/RW 01 kec talun kab cirebon', 'SMPN 1 Talun', NULL, 0, 1),
(202, 322, 'sihabudin', '0011557972', 'Cirebon', '2001-01-24', 'Laki-Laki', 'Islam', '0895325875435', 'DUSUN DUA RT.007/RW.002 DS.GROGOL KEC.KAPETAKAN KAB.CIREBON', 'MTsN KARANG KENDAL', NULL, 0, 1),
(203, 323, 'dunenci', '0005631148', 'Cirebon ', '2000-06-16', 'Perempuan', 'Islam', '082128570602', 'ds.suranenggala blok.sabtu rt.01/rw05', 'SMPN 2 Suranenggala', NULL, 0, 1),
(204, 326, 'YENI NOVIYANI', '0005230335', 'Cirebon', '0000-00-00', 'Perempuan', 'Islam', '081394748718', 'DS BUYUT BLOK SIDINGKLIK', 'SMPN 2 Plered', NULL, 0, 1),
(205, 325, 'HANNAH FAULIA', '0011861907', 'Cirebon', '2001-06-07', 'Perempuan', 'Islam', '089519176972', 'JL.SALEH NO.31/39 RT/RW 01/04 ', 'SMPN 2 Kota Cirebon', 'BD00325', 1, 1),
(206, 327, 'ASMIRA', '0011592668', 'Cirebon', '2001-05-20', 'Perempuan', 'Islam', '08970813752', 'JLN.KINATAGAMA DS.KALIWULU BLOK.KAUMAN RT/RW 13/03 KEC.PLERED KAB.CIREBON', 'SMPN 2 Plered', NULL, 0, 1),
(207, 329, 'HERDA FASAH', '0011497633', 'Cirebon', '2001-05-21', 'Laki-Laki', 'Islam', '085220430041', 'Jln.Manggis Ds.Jungjang Kec.Arjawinangun Kab.Cirebon', 'SMPN 1 Arjawinangun', NULL, 0, 1),
(208, 328, 'MUHAMMAD RIFQI NAJIB', '-', 'Cirebon', '2000-08-01', 'Laki-Laki', 'Islam', '087718655553', 'perum cahaya permai blok c.2 no.7 RT : 03 RW : 08 , kelurahan: cempaka , kecamatan:plumbon , kabupaten: cirebon', 'SMPN 2 Plered', NULL, 0, 1),
(209, 332, 'NOK SOLEHA', '0005179451', 'Cirebon', '2000-08-03', 'Perempuan', 'Islam', '089631016923', 'JL KI AGENG TAPA DS ASTAPADA KEC TENGAH TANI KAB CIREBON', 'SMPN 1 Kedawung', NULL, 0, 1),
(210, 333, 'luckyana', '0012137859', 'Cirebon', '2001-01-15', 'Perempuan', 'Islam', '089682761205', 'jl.niaga tengah 556. jamblang', 'SMPN 4 Palimanan', NULL, 0, 1),
(211, 334, 'Tabitha Audia Oktaviani Liando', '0012137872', 'Cirebon', '2001-10-22', 'Perempuan', 'Protestan', '081933313555', 'Jln. Raya Otista No.59 Jamblang', 'SMPK 1 Penabur Cirebon', NULL, 0, 1),
(212, 335, 'priyo', '0005175791', 'Cirebon', '2000-10-18', 'Laki-Laki', 'Islam', '08987303225', 'Ds.Grogol Kecamatan Kapetakan Cirebon', 'SMPN 1 Kapetakan', NULL, 0, 1),
(213, 336, 'VINA', '0004758203', 'Cirebon', '2000-12-26', 'Perempuan', 'Islam', '089615146651', 'DS KALITENAGAH BLOK KEBAGUSAN RT 11 RW 05', 'SMPN 2 Plered', NULL, 0, 1),
(214, 331, 'tanti oktaviani', '0004578076', 'Cirebon', '2000-10-09', 'Perempuan', 'Islam', '08979362736', 'gerbang permai pamengkang c6 no16 rt06 rw09 kab cirebon', 'smpn 18 cirebon', NULL, 0, 1),
(215, 338, 'AGI SATULUS', '9995934793', 'Cirebon', '2016-06-05', 'Laki-Laki', 'Islam', '089696810714', 'JL MUHAMMAD RAMDAN DS BAKUNG KIDUL KEC JAMBLANG', 'SMPN 3 Plered', NULL, 0, 1),
(216, 337, 'nur listiara', '001593582', 'Cirebon', '2001-07-05', 'Perempuan', 'Islam', '085316487927', 'ds sarabau blok kebon gede rt11 rw04 kecamatan plered kabupaten cirebon', 'SMPN 2 Plered', NULL, 0, 1),
(217, 330, 'Monika', '0005178002', 'Cirebon', '2000-10-11', 'Perempuan', 'Islam', '089639378570', 'jalan sutawinangun No.66', 'SMP Wahidin', NULL, 0, 1),
(218, 340, 'Dani Malik', '0012377775', 'Cirebon', '2001-02-04', 'Laki-Laki', 'Islam', '083824222985', 'Jln. Sukasari No.32 Kota Cirebon Rt.03 Rw.03', 'SMPN 5 Kota Cirebon', NULL, 0, 1),
(219, 339, 'elga putri elisabeth rompas', '0012137860', 'Cirebon', '2001-02-25', 'Perempuan', 'Protestan', '085224169196', 'jl. niaga tengah no.545 d', 'bpk penabur cirebon', NULL, 0, 1),
(220, 343, 'Anisah', '0011572745', 'Cirebon', '2001-07-06', 'Perempuan', 'Islam', '085224035100', 'DS. Tegalwangi ,Kec. weru, Kab.cirebon', 'SMP NEGERI TERBUKA 1 PLUMBON', NULL, 0, 1),
(221, 341, 'septia vania', '0006174496', 'Cirebon', '2000-11-03', 'Perempuan', 'Islam', '089613974659', 'jalan raya otista 79', 'smpn 4 palimanan', NULL, 0, 1),
(222, 344, 'MELLY ANA ROSA', '9996430476', 'Cirebon', '1999-11-09', 'Perempuan', 'Islam', '089691152519', 'JL SULTAN AGENGTIRTAYASA RT 08 RW 04 DESA TUK KECAMATAN KEDAWUNG KABUPATEN CIREBON', 'SMPN 1 Kedawung', NULL, 0, 1),
(223, 342, 'SRI RAHAYU', '9996431206', 'Cirebon', '1999-05-08', 'Perempuan', 'Islam', '089650951751', 'DESA ASTAPADA BLOK KEBUYUTAN KIDUL RT 01 RW 03', 'SMPN 1 Tengah Tani', NULL, 0, 1),
(224, 345, 'TAMIRI', '-', 'Cirebon', '2000-09-01', 'Perempuan', 'Islam', '089610721361', 'KALI GANDU KEMIRA.DESA SAMPIRAN ', 'SMPN 1 Talun', NULL, 0, 1),
(225, 346, 'Devie nopiyanti', '0009267812', 'Cirebon', '2000-11-01', 'Perempuan', 'Islam', '082130634982', 'Ds.kemlaka gede blok werigin rt03 rw05', 'SMPN 1 Tengah Tani', NULL, 0, 1),
(226, 349, 'shintiya agustiana', '0005631279', 'Cirebon', '2000-08-17', 'Perempuan', 'Islam', '085794899722', 'desa muara kec suranenggala kab. cirebon', 'MTSN 1 CIREBON', NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_bobot`
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
-- Dumping data for table `tb_bobot`
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
-- Table structure for table `tb_group`
--

CREATE TABLE IF NOT EXISTS `tb_group` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `kejuruan` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_group`
--

INSERT INTO `tb_group` (`id`, `name`, `time`, `kejuruan`) VALUES
(1, 'Pemasaran', 90, 'Pemasaran'),
(2, 'Akuntansi', 90, 'Akuntansi'),
(3, 'Pariwisata', 90, 'Usaha Perjalanan Wisata'),
(4, 'Perkantoran', 90, 'Administrasi Perkantoran'),
(5, 'Multimedia', 90, 'Multimedia'),
(6, 'Perbankan', 90, 'Perbankan');

-- --------------------------------------------------------

--
-- Table structure for table `tb_group_subject`
--

CREATE TABLE IF NOT EXISTS `tb_group_subject` (
`id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_group_subject`
--

INSERT INTO `tb_group_subject` (`id`, `group_id`, `subject_id`) VALUES
(13, 1, 25),
(14, 1, 26),
(15, 1, 27),
(16, 1, 28),
(17, 1, 29),
(18, 1, 34),
(19, 2, 25),
(20, 2, 26),
(21, 2, 27),
(22, 2, 28),
(23, 2, 29),
(24, 2, 30),
(25, 3, 25),
(26, 3, 26),
(27, 3, 27),
(28, 3, 28),
(29, 3, 29),
(30, 3, 32),
(31, 4, 25),
(32, 4, 26),
(33, 4, 27),
(34, 4, 28),
(35, 4, 29),
(36, 4, 31),
(37, 5, 25),
(38, 5, 26),
(39, 5, 27),
(40, 5, 28),
(41, 5, 29),
(42, 5, 33),
(43, 6, 25),
(44, 6, 26),
(45, 6, 27),
(46, 6, 28),
(47, 6, 29),
(48, 6, 35);

-- --------------------------------------------------------

--
-- Table structure for table `tb_nilai`
--

CREATE TABLE IF NOT EXISTS `tb_nilai` (
`id` int(11) NOT NULL,
  `id_user` int(10) NOT NULL,
  `bindo` varchar(10) NOT NULL,
  `ipa` varchar(10) NOT NULL,
  `mtk` varchar(10) NOT NULL,
  `binggris` varchar(10) NOT NULL,
  `nem` varchar(10) NOT NULL,
  `no_ijazah` varchar(20) NOT NULL,
  `tgl_ijazah` date NOT NULL,
  `no_skhun` varchar(20) NOT NULL,
  `tgl_skhun` date NOT NULL,
  `akademik` int(20) NOT NULL,
  `kejuruan` int(10) NOT NULL,
  `psikotes` int(10) NOT NULL,
  `benar_seluruh_soal` int(11) NOT NULL,
  `total_seluruh_soal` int(11) NOT NULL,
  `pilihan_1` varchar(50) NOT NULL,
  `pilihan_2` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=229 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_nilai`
--

INSERT INTO `tb_nilai` (`id`, `id_user`, `bindo`, `ipa`, `mtk`, `binggris`, `nem`, `no_ijazah`, `tgl_ijazah`, `no_skhun`, `tgl_skhun`, `akademik`, `kejuruan`, `psikotes`, `benar_seluruh_soal`, `total_seluruh_soal`, `pilihan_1`, `pilihan_2`) VALUES
(1, 82, '84', '50', '30', '70', '23.4', '', '0000-00-00', '422.1/172/SMP/2016', '2016-06-11', 0, 0, 0, 0, 0, 'Administrasi Perkantoran', 'Pemasaran'),
(2, 85, '78.6', '37', '42', '44', '20.16', '-', '0000-00-00', '-', '0000-00-00', 0, 0, 0, 0, 0, 'Akuntansi', 'Administrasi Perkantoran'),
(3, 84, '82', '56', '27', '30', '20', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Administrasi Perkantoran', 'Pemasaran'),
(4, 87, '66', '37.5', '37.5', '38', '17.9', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Multimedia', 'Perbankan'),
(5, 88, '82', '50', '35', '32', '20', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Administrasi Perkantoran', 'Usaha Perjalanan Wisata'),
(6, 89, '72', '35', '22.5', '30', '15.95', '', '0000-00-00', '421.2/ 227', '2016-06-11', 0, 0, 0, 0, 0, 'Administrasi Perkantoran', 'Pemasaran'),
(7, 90, '82', '55', '37', '52', '23', '', '0000-00-00', '421.2/ 227', '2016-06-11', 0, 0, 0, 0, 0, 'Akuntansi', 'Administrasi Perkantoran'),
(8, 91, '74', '52.5', '60', '66', '25.25', '', '0000-00-00', '0031', '2016-06-11', 0, 0, 0, 0, 0, 'Multimedia', 'Perbankan'),
(9, 94, '82', '50', '22.5', '52', '20.65', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Akuntansi', 'Administrasi Perkantoran'),
(10, 95, '60', '52.5', '45', '50', '20.75', '-', '0000-00-00', '420/441/SMP.029/2016', '2016-06-11', 0, 0, 0, 0, 0, 'Administrasi Perkantoran', 'Pemasaran'),
(11, 100, '74', '44', '17.5', '47.5', '18.3', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Multimedia', 'Pemasaran'),
(12, 101, '88', '52.5', '42.5', '54', '23.7', '', '0000-00-00', '0034/BSNP/XII/2015', '2016-06-11', 0, 0, 0, 0, 0, 'Administrasi Perkantoran', 'Perbankan'),
(13, 104, '86', '75', '67.5', '76', '30.45', '', '0000-00-00', '0034/P/BSNP/XII/2015', '2016-06-11', 0, 0, 0, 0, 0, 'Akuntansi', 'Administrasi Perkantoran'),
(14, 105, '70', '42.5', '22.5', '58', '19.3', '', '0000-00-00', '34/P/BSNP/XII/2015', '2016-06-11', 0, 0, 0, 0, 0, 'Administrasi Perkantoran', 'Pemasaran'),
(15, 103, '72', '35', '17', '44', '17', '', '0000-00-00', '34/P/BSNP/XII/2015', '2016-06-11', 0, 0, 0, 0, 0, 'Administrasi Perkantoran', 'Pemasaran'),
(16, 107, '68', '47.5', '30', '24', '16.95', '34/P/BSNP/xII/2015', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Administrasi Perkantoran', 'Pemasaran'),
(17, 102, '78', '55', '42.5', '46', '22.15', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Akuntansi', 'Administrasi Perkantoran'),
(18, 106, '78', '55', '25', '76', '23.4', '', '0000-00-00', '421:/444/SMPN 2 Sumb', '2016-06-11', 0, 0, 0, 0, 0, 'Administrasi Perkantoran', 'Perbankan'),
(19, 110, '78,0', '45,0', '27,5', '52,0', '20.2', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Pemasaran', 'Usaha Perjalanan Wisata'),
(20, 109, '84.0', '52.5', '57.5', '58.0', '25.2', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Akuntansi', 'Multimedia'),
(21, 113, '72', '37', '25', '48', '18.2', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Administrasi Perkantoran', 'Pemasaran'),
(22, 112, '84', '45', '32.5', '70', '23.15', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Pemasaran', 'Usaha Perjalanan Wisata'),
(23, 114, '84', '25', '27.5', '68', '20.45', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Administrasi Perkantoran', 'Pemasaran'),
(24, 115, '62,0', '42,0', '35,0', '35,0', '17.4', '', '0000-00-00', '34/bnsp/xii/2015', '2016-06-11', 0, 0, 0, 0, 0, 'Multimedia', 'Perbankan'),
(25, 119, '70', '47,5', '25', '34', '17.6', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Administrasi Perkantoran', 'Pemasaran'),
(26, 111, '84.0', '35.0', '32.5', '54.0', '20.55', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Administrasi Perkantoran', 'Pemasaran'),
(27, 121, '74', '42.5', '37.5', '62', '21.6', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Administrasi Perkantoran', 'Multimedia'),
(28, 120, '84.0', '47.5', '42.5', '48.0', '22.2', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Akuntansi', 'Administrasi Perkantoran'),
(29, 118, '78', '42.5', '17.5', '28', '16.6', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Multimedia', 'Administrasi Perkantoran'),
(30, 117, '84', '47.5', '30,0', '68', '22.95', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Akuntansi', 'Perbankan'),
(31, 124, '84', '52,5', '45', '50', '23.1', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Akuntansi', 'Administrasi Perkantoran'),
(32, 122, '64,0', '32.0', '20,0', '17,5', '13.3', '  ', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Administrasi Perkantoran', 'Pemasaran'),
(33, 126, '84', '50', '37.5', '76', '24.75', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Akuntansi', 'Administrasi Perkantoran'),
(34, 128, '86,0', '72,0', '62,0', '52,0', '27.2', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Perbankan', 'Usaha Perjalanan Wisata'),
(35, 127, '82', '75', '55', '50', '26.2', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Akuntansi', 'Multimedia'),
(36, 123, '86,0', '52,5', '27,5', '50,0', '21.5', '', '0000-00-00', '34/p/bsnp/xii/2015', '0000-00-00', 0, 0, 0, 0, 0, 'Akuntansi', 'Administrasi Perkantoran'),
(37, 131, '66', '40', '20', '46', '17.2', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Administrasi Perkantoran', 'Pemasaran'),
(38, 130, '76,0', '75,0', '37,5', '80,0', '26.8', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Akuntansi', 'Administrasi Perkantoran'),
(39, 125, '30', '32.5', '22.5', '32', '11.7', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Usaha Perjalanan Wisata', 'Administrasi Perkantoran'),
(40, 134, '70.0 ', '32.5', '27.5', '52.0', '18.2', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Perbankan', 'Multimedia'),
(41, 129, '84', '52.5', '57.5', '58', '25.2', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Akuntansi', 'Administrasi Perkantoran'),
(42, 136, '72,0', '57,5', '70,0', '62,0', '26.1', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Akuntansi', 'Administrasi Perkantoran'),
(43, 135, '76,0', '42,5', '35,0', '56,0', '20.9', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Akuntansi', 'Administrasi Perkantoran'),
(44, 137, '70', '40', '32.5', '48', '19.05', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Administrasi Perkantoran', 'Perbankan'),
(45, 132, '76', '27.5', '27.5', '44', '17.5', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Administrasi Perkantoran', 'Perbankan'),
(46, 141, '74', '30', '25', '42', '17.1', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Pemasaran', 'Pemasaran'),
(47, 139, '84.0', '42.5', '52.5', '44,0', '22.3', '', '0000-00-00', '422.1/172/SMP/2016', '2016-06-11', 0, 0, 0, 0, 0, 'Akuntansi', 'Perbankan'),
(48, 145, '82.0', '50.0', '30.0', '62.0', '22.4', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Akuntansi', 'Administrasi Perkantoran'),
(49, 143, '76,0', '55,0', '45,0', '64,0', '24', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Akuntansi', 'Administrasi Perkantoran'),
(50, 142, '86,0', '42,5', '40,0', '58,0', '22.6', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Administrasi Perkantoran', 'Multimedia'),
(51, 146, '56', '35', '30', '40', '16.1', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Akuntansi', 'Perbankan'),
(52, 147, '72', '55', '42,5', '56', '22.5', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Akuntansi', 'Perbankan'),
(53, 150, '86,0', '50,0', '45,0', '56,0', '23.7', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Akuntansi', 'Administrasi Perkantoran'),
(54, 144, '82.0', '47.5', '27.5', '42.0', '19.9', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Perbankan', 'Administrasi Perkantoran'),
(55, 148, '70.0', '67.5', '40.0', '64.0', '24.15', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Administrasi Perkantoran', 'Perbankan'),
(56, 149, '84', '67.5', '57.5', '62', '27.1', '', '0000-00-00', '422.1/172/SMP/2016', '2016-06-11', 0, 0, 0, 0, 0, 'Akuntansi', 'Administrasi Perkantoran'),
(57, 151, '80.0', '55.0', '42.5', '54.0', '23.15', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Akuntansi', 'Administrasi Perkantoran'),
(58, 152, '58', '45', '45', '46', '19.4', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Administrasi Perkantoran', 'Perbankan'),
(59, 153, '84,0', '52,5', '45,0', '50,0', '23.1', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Akuntansi', 'Administrasi Perkantoran'),
(60, 140, '72.0', '52.5', '62.5', '56.0', '24.3', '', '0000-00-00', '082/102.19/smp vet/l', '2016-06-10', 0, 0, 0, 0, 0, 'Multimedia', 'Perbankan'),
(61, 156, '74', '60', '30', '52', '21.6', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Perbankan', 'Pemasaran'),
(62, 154, '48,0', '35,0', '22,5', '38,0', '14.3', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Akuntansi', 'Administrasi Perkantoran'),
(63, 158, '86.0', '65.0', '75.0', '74.0', '30', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Multimedia', 'Akuntansi'),
(64, 162, '54', '35', '30', '32', '15.1', '', '0000-00-00', '', '2016-06-19', 0, 0, 0, 0, 0, 'Multimedia', 'Perbankan'),
(65, 160, '72.0', '37.5', '30.0', '36', '17.55', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Akuntansi', 'Perbankan'),
(66, 164, '72', '50', '35', '38', '19.5', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Administrasi Perkantoran', 'Pemasaran'),
(67, 165, '76.0', '35.0', '35.0', '50.0', '19.6', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Akuntansi', 'Administrasi Perkantoran'),
(68, 155, '74,0', '57,5', '37,5', '46,0', '21.4', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Perbankan', 'Akuntansi'),
(69, 170, '80', '30', '27.5', '42', '17.95', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Akuntansi', 'Administrasi Perkantoran'),
(70, 171, '70,0', '47.5', '15,0', '48.0', '18.05', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Administrasi Perkantoran', 'Perbankan'),
(71, 167, '80.0', '65.0', '22.5', '50.0', '21.75', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Administrasi Perkantoran', 'Perbankan'),
(72, 161, '76', '52.5', '37.5', '52', '21.8', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Administrasi Perkantoran', 'Multimedia'),
(73, 172, '66', '30', '30', '40', '16.6', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Multimedia', 'Pemasaran'),
(74, 174, '84.0', '52.5', '47.5', '62.0', '24.6', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Akuntansi', 'Administrasi Perkantoran'),
(75, 177, '88', '70', '60', '66', '28.4', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Akuntansi', 'Perbankan'),
(76, 168, '84.0', '30.0', '22.5', '52.0', '18.85', '', '0000-00-00', '421.2/ 227 /SMP.1.TN', '0000-00-00', 0, 0, 0, 0, 0, 'Administrasi Perkantoran', 'Pemasaran'),
(77, 175, '78', '35', '35', '34', '18.2', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Pemasaran', 'Multimedia'),
(78, 176, '82.0', '67.5', '45.0', '62.0', '25.65', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Multimedia', 'Administrasi Perkantoran'),
(79, 180, '84.0', '62.5', '65.0', '60.0', '27.15', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Administrasi Perkantoran', 'Pemasaran'),
(80, 159, '74', '62', '27.5', '45', '20.85', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Perbankan', 'Pemasaran'),
(81, 179, '88', '52.5', '47.5', '70', '25.8', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Perbankan', 'Administrasi Perkantoran'),
(82, 173, '68.00', '52.50', '55.00', '62.00', '23.75', '', '0000-00-00', '06-505-038-3', '2016-06-11', 0, 0, 0, 0, 0, 'Multimedia', 'Pemasaran'),
(83, 178, '76.0', '60.0', '60.0', '48.0', '24.4', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Perbankan', 'Administrasi Perkantoran'),
(84, 181, '76', '55', '52.5', '56', '23.95', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Administrasi Perkantoran', 'Multimedia'),
(85, 183, '78.0', '47.5', '55.0', '48.0', '22.85', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Akuntansi', 'Perbankan'),
(86, 188, '88', '82.5', '55', '90', '31.55', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Akuntansi', 'Administrasi Perkantoran'),
(87, 182, '82.0', '75.5', '65.0', '66.0', '28.85', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Akuntansi', 'Akuntansi'),
(88, 186, '76', '52.5', '37.5', '52', '21.8', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Administrasi Perkantoran', 'Multimedia'),
(89, 191, '82.0', '40.0', '32.5', '50.0', '20.45', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Administrasi Perkantoran', 'Perbankan'),
(90, 187, '72.00', '37.50', '25.00', '46.00', '18.05', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Administrasi Perkantoran', 'Perbankan'),
(91, 190, '92.0', '50.0', '55.0', '66.0', '26.3', '', '0000-00-00', '2-16-02-501-293-4', '0000-00-00', 0, 0, 0, 0, 0, 'Administrasi Perkantoran', 'Multimedia'),
(92, 193, '82.0', '45.0', '35.0', '54.0', '21.6', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Administrasi Perkantoran', 'Perbankan'),
(93, 192, '86', '42.5', '35', '48', '21.15', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Pemasaran', 'Perbankan'),
(94, 185, '74.0', '40.0', '22.5', '30.0', '16.65', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Administrasi Perkantoran', 'Pemasaran'),
(95, 194, '86', '52.5', '42.5', '66', '24.7', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Akuntansi', 'Administrasi Perkantoran'),
(96, 195, '72.0', '45.0', '37.5', '48.0', '20.25', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Multimedia', 'Perbankan'),
(97, 197, '68.0', '50.0', '45.0', '44.0', '20.7', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Pemasaran', 'Pemasaran'),
(98, 198, '86.00', '65.00', '60.00', '62.00', '27.3', '', '0000-00-00', '2-16-02-16-038-129-8', '0000-00-00', 0, 0, 0, 0, 0, 'Administrasi Perkantoran', 'Perbankan'),
(99, 201, '74.O', '62.5', '55.0', '62.0', '25.35', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Usaha Perjalanan Wisata', 'Multimedia'),
(100, 203, '94', '65', '55', '62', '27.6', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Perbankan', 'Perbankan'),
(101, 199, '80.0', '62.5', '50.0', '50.0', '24.25', '', '0000-00-00', '2-16-02-06-501-045-4', '2016-06-16', 0, 0, 0, 0, 0, 'Pemasaran', 'Perbankan'),
(102, 204, '80.0', '47.5', '40.0', '50.0', '21.75', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Pemasaran', 'Perbankan'),
(103, 206, '78.0', '62.5', '35.0', '64.0', '23.95', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Pemasaran', 'Pemasaran'),
(104, 207, '88.0', '60.0', '55.0', '60.0', '26.3', '', '0000-00-00', '421/190/SMP.02/2016', '0000-00-00', 0, 0, 0, 0, 0, 'Akuntansi', 'Multimedia'),
(105, 205, '88', '57.5', '35', '46', '22.65', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Administrasi Perkantoran', 'Pemasaran'),
(106, 202, '64', '37.5', '32.5', '48', '18.2', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Pemasaran', 'Pemasaran'),
(107, 217, '90.0', '75.0', '52.5', '62.0', '27.95', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Akuntansi', 'Perbankan'),
(108, 208, '80.0', '50.0', '42.5', '56.0', '22.85', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Akuntansi', 'Perbankan'),
(109, 215, '90', '37.5', '40', '32', '19.95', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Administrasi Perkantoran', 'Perbankan'),
(110, 219, '86', '45', '35', '52', '21.8', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Perbankan', 'Administrasi Perkantoran'),
(111, 216, '76', '50', '35', '60', '22.1', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Pemasaran', 'Administrasi Perkantoran'),
(112, 214, '82.00', '60.00', '67.50', '56.00', '26.55', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Akuntansi', 'Multimedia'),
(113, 218, '92.0', '60.0', '67.5', '62.0', '28.15', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Administrasi Perkantoran', 'Usaha Perjalanan Wisata'),
(114, 221, '78.0', '32.5', '45.0', '42.0', '19.75', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Administrasi Perkantoran', 'Pemasaran'),
(115, 226, '90.00', '72.50', '57.50', '92.00', '31.2', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Administrasi Perkantoran', 'Perbankan'),
(116, 228, '80.0', '55.0', '60.0', '70.0', '26.5', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Akuntansi', 'Pemasaran'),
(117, 220, '72', '40', '30', '42', '18.4', '', '0000-00-00', '422.8220SMP', '0000-00-00', 0, 0, 0, 0, 0, 'Administrasi Perkantoran', 'Administrasi Perkantoran'),
(118, 225, '74,0', '70', '35', '82', '26.1', '', '0000-00-00', '422.1/172/SMP/2016', '2016-06-11', 0, 0, 0, 0, 0, 'Pemasaran', 'Perbankan'),
(119, 227, '82.0', '42.5', '40.0', '66.0', '23.05', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Akuntansi', 'Administrasi Perkantoran'),
(120, 230, '78.0', '50.0', '37.5', '56.0', '22.15', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Administrasi Perkantoran', 'Perbankan'),
(121, 211, '76.0', '42.5', '27.5', '36.0', '18.2', '', '0000-00-00', '16-040-208', '2016-06-11', 0, 0, 0, 0, 0, 'Administrasi Perkantoran', 'Perbankan'),
(122, 229, '72.0', '42.5', '27.5', '60.', '20.2', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Administrasi Perkantoran', 'Multimedia'),
(123, 231, '84', '67.5', '70', '82', '30.35', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Akuntansi', 'Administrasi Perkantoran'),
(124, 224, '74.0', '38.0', '25.0', '25.0', '16.2', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Administrasi Perkantoran', 'Pemasaran'),
(125, 234, '78.0', '55.0', '57.5', '50.0', '24.05', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Akuntansi', 'Multimedia'),
(126, 232, '88.0', '60.0', '57.5', '58.0', '26.35', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Akuntansi', 'Administrasi Perkantoran'),
(127, 235, '64,0', '20,0', '25,0', '48,0', '15.7', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Administrasi Perkantoran', 'Pemasaran'),
(128, 240, '86.0', '70.0', '32.5', '66.0', '25.45', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Multimedia', 'Perbankan'),
(129, 239, '62', '37.5', '37.5', '52', '18.9', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Pemasaran', 'Multimedia'),
(130, 244, '82.0', '45.0', '32.5', '70.0', '22.95', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Perbankan', 'Akuntansi'),
(131, 238, '92', '62.5', '47.5', '62', '26.4', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Akuntansi', 'Pemasaran'),
(132, 243, '62.0', '57.5', '67.5', '62.0', '24.9', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Multimedia', 'Akuntansi'),
(133, 242, '78', '50', '50', '66', '24.4', '', '0000-00-00', '16-026-141-4', '2016-06-20', 0, 0, 0, 0, 0, 'Perbankan', 'Akuntansi'),
(134, 245, '62', '40', '20', '32', '15.4', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Akuntansi', 'Administrasi Perkantoran'),
(135, 249, '70', '50', '22.5', '38', '18.05', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Multimedia', 'Perbankan'),
(136, 246, '80.0', '52.5', '50.0', '50.0', '23.25', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Perbankan', 'Administrasi Perkantoran'),
(137, 247, '64,0', '77,5', '55,0', '78,0', '27.4', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Perbankan', 'Multimedia'),
(138, 248, '82.0', '35.0', '32.5', '50.0', '19.95', '', '0000-00-00', '422.1/172/SMP/2016', '2016-06-11', 0, 0, 0, 0, 0, 'Multimedia', 'Usaha Perjalanan Wisata'),
(139, 251, '78.0', '52.5', '35.0', '52.0', '21.75', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Usaha Perjalanan Wisata', 'Administrasi Perkantoran'),
(140, 250, '68', '40', '27.5', '58', '19.35', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Administrasi Perkantoran', 'Perbankan'),
(141, 253, '76.0', '45.0', '25.0', '52.0', '19.8', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Akuntansi', 'Pemasaran'),
(142, 252, '84,00', '57,50', '55,00', '62,00', '25.8', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Administrasi Perkantoran', 'Multimedia'),
(143, 254, '74', '45', '37.5', '52', '20.85', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Perbankan', 'Pemasaran'),
(144, 258, '66.0', '55.0', '40.0', '52.0', '21.3', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Multimedia', 'Usaha Perjalanan Wisata'),
(145, 255, '84', '42.5', '25', '50', '20.15', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Administrasi Perkantoran', 'Pemasaran'),
(146, 257, '72,0', '60,0', '55,0', '68,0', '25.5', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Administrasi Perkantoran', 'Multimedia'),
(147, 260, '76.0', '50.0', '27.5', '46.0', '19.95', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Akuntansi', 'Administrasi Perkantoran'),
(148, 264, '86.0', '57.5', '57.5', '56.0', '25.7', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Akuntansi', 'Perbankan'),
(149, 259, '88', '50', '47.5', '60', '24.55', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Akuntansi', 'Perbankan'),
(150, 267, '76', '87.5', '80', '80', '32.35', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Administrasi Perkantoran', 'Multimedia'),
(151, 261, '82.0', '55.0', '57.5', '58.0', '25.25', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Perbankan', 'Multimedia'),
(152, 268, '96.0', '97.5', '95.0', '94.0', '38.25', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Akuntansi', 'Perbankan'),
(153, 269, '80', '57.5', '40', '56', '23.35', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Akuntansi', 'Multimedia'),
(154, 270, '64', '45', '60', '48', '21.7', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Multimedia', 'Multimedia'),
(155, 271, '92.0', '75.0', '67.5', '84.0', '31.85', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Multimedia', 'Usaha Perjalanan Wisata'),
(156, 256, '70', '47.5', '50', '62', '22.95', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Pemasaran', 'Perbankan'),
(157, 272, '76.0', '47.5', '37.5', '44.0', '20.5', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Administrasi Perkantoran', 'Perbankan'),
(158, 275, '76.0', '55.0', '37.5', '68.0', '23.65', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Akuntansi', 'Administrasi Perkantoran'),
(159, 276, '82.0', '57.5', '22.5', '38.0', '20', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Multimedia', 'Perbankan'),
(160, 266, '76.0', '35.0', '17.5', '54.0', '18.25', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Administrasi Perkantoran', 'Pemasaran'),
(161, 274, '50.0', '52.5', '57.5', '48.0', '20.8', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Pemasaran', 'Pemasaran'),
(162, 273, '62', '52.5', '30', '38', '18.25', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Pemasaran', 'Pemasaran'),
(163, 278, '78.0', '42.5', '20.0', '44.0', '18.45', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Akuntansi', 'Pemasaran'),
(164, 280, '86.0', '72.5', '57.5', '64.0', '28', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Akuntansi', 'Pemasaran'),
(165, 281, '68.0', '52.5', '57.5', '56.0', '23.4', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Pemasaran', 'Perbankan'),
(166, 286, '58,0', '32,5', '35,0', '32,0', '15.7', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Pemasaran', 'Multimedia'),
(167, 285, '74.0', '52.5', '50.0', '50.0', '22.65', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Multimedia', 'Akuntansi'),
(168, 283, '94', '62.5', '62.5', '80', '29.9', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Akuntansi', 'Perbankan'),
(169, 279, '80', '70', '62.5', '64', '27.65', '', '0000-00-00', '0011254596', '0000-00-00', 0, 0, 0, 0, 0, 'Administrasi Perkantoran', 'Perbankan'),
(170, 292, '72,0', '42,5', '45,0', '50,0', '20.9', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Multimedia', 'Akuntansi'),
(171, 290, '86.0', '32.5', '42.5', '34.0', '19.5', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Pemasaran', 'Pemasaran'),
(172, 289, '78.0', '47.5', '35.0', '44.0', '20.45', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Akuntansi', 'Perbankan'),
(173, 291, '64,0', '42,0', '27,0', '68,0', '20.1', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Usaha Perjalanan Wisata', 'Perbankan'),
(174, 288, '84.0', '57.5', '52.5', '60.0', '25.4', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Multimedia', 'Usaha Perjalanan Wisata'),
(175, 284, '82.0', '42.5', '12.5', '44,0', '18.1', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Administrasi Perkantoran', 'Akuntansi'),
(176, 298, '60,0', '22,5', '30,0', '38,0', '15', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Pemasaran', 'Akuntansi'),
(177, 293, '88.0', '60.0', '37.5', '62.0', '24.75', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Usaha Perjalanan Wisata', 'Administrasi Perkantoran'),
(178, 294, '88.0', '55.0', '52.5', '66.0', '26.15', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Administrasi Perkantoran', 'Multimedia'),
(179, 297, '68.0', '42.5', '32.5', '46.0', '18.9', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Perbankan', 'Pemasaran'),
(180, 295, '84.0', '37.0', '30.0', '56.0', '20.7', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Multimedia', 'Administrasi Perkantoran'),
(181, 299, '86.0', '65.0', '75.0', '74.0', '30', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Akuntansi', 'Administrasi Perkantoran'),
(182, 296, '72,0', '65,0', '32,5', '46,0', '21.5', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Multimedia', 'Administrasi Perkantoran'),
(183, 262, '82', '65', '47.5', '60', '25.45', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Administrasi Perkantoran', 'Usaha Perjalanan Wisata'),
(184, 302, '74.0', '50.00', '32.5', '44.00', '20.05', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Administrasi Perkantoran', 'Multimedia'),
(185, 300, '86.0', '65.0', '22.5', '62.0', '23.55', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Akuntansi', 'Administrasi Perkantoran'),
(186, 303, '78.0', '60.0', '70.0', '64.0', '27.2', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Administrasi Perkantoran', 'Pemasaran'),
(187, 304, '82.0', '47.5', '50.0', '46.0', '22.55', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Perbankan', 'Akuntansi'),
(188, 301, '82.0', '65', '62,5', '56', '26.5', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Akuntansi', 'Administrasi Perkantoran'),
(189, 307, '80.0', '50.0', '50.0', '56.0', '23.6', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Administrasi Perkantoran', 'Perbankan'),
(190, 306, '68.0', '50.0', '37.5', '50.0', '20.55', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Administrasi Perkantoran', 'Multimedia'),
(191, 305, '76', '47.5', '35', '48', '20.65', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Administrasi Perkantoran', 'Perbankan'),
(192, 310, '62,00', '40,00', '52,50', '50,00', '20.4', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Akuntansi', 'Pemasaran'),
(193, 308, '48,0', '42,5', '35,0', '38,0', '16.3', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Multimedia', 'Administrasi Perkantoran'),
(194, 316, '82.0', '65', '62,5', '56', '26.5', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Akuntansi', 'Administrasi Perkantoran'),
(195, 314, '78.0', '46,0', '32.5', '52.5', '20.9', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Akuntansi', 'Administrasi Perkantoran'),
(196, 312, '72.0', '47.5', '45.0', '50.0', '21.45', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Administrasi Perkantoran', 'Pemasaran'),
(197, 313, '78.0', '35.0', '32.5', '60.0', '20.55', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Administrasi Perkantoran', 'Akuntansi'),
(198, 315, '76.00', '47.50', '45.00', '48.00', '21.65', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Multimedia', 'Pemasaran'),
(199, 317, '86.0', '70.0', '40.0', '82.0', '27.8', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Akuntansi', 'Perbankan'),
(200, 311, '70,0', '52,5', '45,0', '44,0', '21.1', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Administrasi Perkantoran', 'Perbankan'),
(201, 320, '80.0', '40.0', '30.0', '60.0', '21', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Administrasi Perkantoran', 'Administrasi Perkantoran'),
(202, 321, '86.0', '32.5', '27.5', '44.0', '19', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Administrasi Perkantoran', 'Pemasaran'),
(203, 319, '80.0', '50.0', '47.5', '62.0', '23.95', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Akuntansi', 'Administrasi Perkantoran'),
(204, 322, '64.00', '55.00', '45.00', '54.00', '21.8', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Akuntansi', 'Multimedia'),
(205, 318, '56,0', '40,0', '27,5', '50,0', '17.3', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Administrasi Perkantoran', 'Perbankan'),
(206, 323, '78.0', '35.0', '25,0', '66.0', '20.4', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Perbankan', 'Administrasi Perkantoran'),
(207, 326, '72.0', '42.5', '27.5', '52.0', '19.4', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Administrasi Perkantoran', 'Multimedia'),
(208, 325, '78.0', '62.5', '72.5', '78.0', '29.1', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Administrasi Perkantoran', 'Usaha Perjalanan Wisata'),
(209, 327, '8.00', '45.0', '32.5', '54.0', '13.95', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Perbankan', 'Pemasaran'),
(210, 329, '78.0', '67.5', '27.5', '52,0', '22.5', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Multimedia', 'Pemasaran'),
(211, 328, '80.0', '46.0', '32.5', '37.5', '19.6', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Multimedia', 'Usaha Perjalanan Wisata'),
(212, 332, '82.0', '40.0', '37.5', '50.0', '20.95', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Akuntansi', 'Perbankan'),
(213, 334, '86', '72.5', '77.5', '82', '31.8', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Administrasi Perkantoran', 'Perbankan'),
(214, 333, '88,00', '66,00', '42,50', '40,00', '23.6', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Administrasi Perkantoran', 'Pemasaran'),
(215, 335, '62', '40', '20', '32', '15.4', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Akuntansi', 'Multimedia'),
(216, 331, '68,0', '62,5', '65,0', '58,0', '25.3', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Administrasi Perkantoran', 'Pemasaran'),
(217, 336, '66.0 ', '25.0', '32.5', '42.0', '16.55', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Administrasi Perkantoran', 'Pemasaran'),
(218, 338, '78.0', '42.0', '35.0', '37.5', '19.25', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Pemasaran', 'Usaha Perjalanan Wisata'),
(219, 340, '92.0', '67.5', '62.5', '88.0', '31', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Multimedia', 'Perbankan'),
(220, 339, '68', '38', '44', '44', '19.4', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Administrasi Perkantoran', 'Pemasaran'),
(221, 330, '88.0', '70.0', '62.5', '68.0', '28.85', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Akuntansi', 'Administrasi Perkantoran'),
(222, 337, '90.0', '35.0', '40.0', '54.0', '21.9', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Akuntansi', 'Administrasi Perkantoran'),
(223, 344, '86.0', '80.0', '57.5', '86.0', '30.95', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Multimedia', 'Akuntansi'),
(224, 346, '70.0', '27.5', '25.0', '58.0', '18.05', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Administrasi Perkantoran', 'Pemasaran'),
(225, 345, '74.0', '50.0', '25.0', '54.0', '20.3', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Administrasi Perkantoran', 'Akuntansi'),
(226, 341, '66.00', '42.50', '42.50', '46.00', '19.7', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Administrasi Perkantoran', 'Pemasaran'),
(227, 343, '86,0', '55,0', '47,5', '58,0', '24.6', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Perbankan', 'Perbankan'),
(228, 342, '60.0', '35.0', '27.5', '44.0', '16.65', '', '0000-00-00', '', '0000-00-00', 0, 0, 0, 0, 0, 'Administrasi Perkantoran', 'Akuntansi');

-- --------------------------------------------------------

--
-- Table structure for table `tb_orangtua`
--

CREATE TABLE IF NOT EXISTS `tb_orangtua` (
`id` int(11) NOT NULL,
  `id_user` int(20) NOT NULL,
  `nama_ayah` varchar(100) NOT NULL,
  `pkrjn_ayah` varchar(100) NOT NULL,
  `nama_ibu` varchar(100) NOT NULL,
  `pkrjn_ibu` varchar(100) NOT NULL,
  `no_hp_ortu` varchar(20) NOT NULL,
  `alamat_ortu` text NOT NULL,
  `nama_wali` varchar(100) NOT NULL,
  `pkrjn_wali` varchar(100) NOT NULL,
  `no_hp_wali` int(20) NOT NULL,
  `alamat_wali` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_orangtua`
--

INSERT INTO `tb_orangtua` (`id`, `id_user`, `nama_ayah`, `pkrjn_ayah`, `nama_ibu`, `pkrjn_ibu`, `no_hp_ortu`, `alamat_ortu`, `nama_wali`, `pkrjn_wali`, `no_hp_wali`, `alamat_wali`) VALUES
(1, 85, 'INDRATNO', 'PNS GURU ', 'SITI NURLAELAH', 'PEDAGANG', '2147483647', 'Jl. ki ageng tapa desa dawuan kecamatan tengahtani kabupaten cirebon RT 02 RW 02 Blok Rancang ', '-', '-', 0, '-'),
(2, 84, 'Dayat', 'Buruh', 'Juwariyah', 'Buruh', '0', 'Desa battembat blok babadan barat', '', '', 0, ''),
(3, 87, 'Sarodin', 'Buruh', 'Awiyah', 'Buruh', '0', 'Desa kalibaru Blok Lakar Jero RT01 RW05', '', '', 0, ''),
(4, 90, 'ANIRWAN', 'BURUH', 'BUNI', 'Ibu Rumah Tangga', '2147483647', 'Desa Karang Sari Blok Jelawe RT06 RW03', '', '', 0, ''),
(5, 89, 'GUNAWAN', 'BURUH', 'NURLAELA', 'Ibu Rumah Tangga', '2147483647', 'Desa Gesik Blok Undung-undung RT01 RW06 Jalan Kidemang Preman', '', '', 0, ''),
(6, 88, 'Makhroji', 'Buruh', 'Sri Manispa', 'Ibu Rumah Tangga', '0', 'Jln. juriman no.04 rt 01/ rw 02 ds. battembat blok soka kec. tengah tani kab. cirebon', '', '', 0, ''),
(7, 91, 'Aman ', 'Buruh ', 'Sopiyah ', 'Ibu Rumah Tangga ', '089660688544', 'jln.sutawinangun Gg.Suci pecilon,Rt 5 Rw 6 kabupaten cirebon ', '', '', 0, ''),
(8, 95, 'JONO SUGIONO (almarhum)', '-', 'NENGSIH.SPd', 'Guru', '2147483647', 'Bumi Arumsari, Jln palem 3A RT 02 RW 13 NO 98 Desa Cirebon Girang KEC. Talun', '-', '', 0, ''),
(9, 94, 'Sukardo', 'Wiraswasta', 'Tri Uji Pangestu', 'Ibu Rumah Tangga', '2147483647', 'Ds: Andir\r\nKec: Baleendah\r\nKab: Bandung', 'Sukarjo', 'Petani', 0, 'Ds: Purwawinangun \r\nRtRw: 04/03\r\nKec: Suranenggala\r\nKab: Cirebon'),
(10, 100, 'ismail', 'pedagang', 'sunaenah', 'pedagang', '0', 'desa battembat kecamatan tengah tani kabupaten cirebon', '', '', 0, ''),
(11, 101, 'heru imanysah', 'buruh ', 'meyli prihatin', 'ibu rumah tangga', '089515801047', 'desa dawuan rt.02 rw.05 kecamatan tengah tani kabupaten cirebon', '', '', 0, ''),
(12, 104, 'Tri Widodo', '', 'Meri Meriani', '', '2147483647', 'jln.olahraga no.38', '', '', 0, ''),
(13, 103, 'bin yamin', 'buruh', 'sunia', 'pedagang', '2147483647', 'desa.pilang sari blok.jembangan rt;005 rw;004', '', '', 0, ''),
(14, 107, 'tambasa suhendi', 'buruh', 'era wati', 'buruh', '2147483647', 'desa kemlaka gede', '', '', 0, ''),
(15, 109, 'kiki junara', 'Buruh ', 'hainur fitriyani', 'Ibu Rumah Tangga ', '087829756433', 'jl. sunan gunung jati gg. kesinangan rt. 04 rw. 05 ', '', '', 0, ''),
(16, 112, 'ASIKIN', 'BURUH', 'ENI SUKAENI', 'IBU RUMAH TANGGA', '2147483647', 'DESA BALERANTE RT04 RW02', '', '', 0, ''),
(17, 115, 'rosuiudin', 'buruh', 'raina', 'irt', '0', 'desa kalibaru rt01/05', '', '', 0, ''),
(18, 111, 'MULYADI', 'WIRASWASTA', 'IDA ROYANI', 'IBU RUMAH TANGGA', '2147483647', 'Desa Kemlaka Gede Blok Bebekan Kecamatan Tengahtani Kabupaten Cirebon JL.Gg.SETIA FAMILY', '', '', 0, ''),
(19, 121, 'SEGER TRIYONO', 'BURUH HARIAN LEPAS', 'SARIAH', 'IBU RUMAH TANGGA', '2147483647', 'Jln pecilon indah blok sitameng 7 Rt06  Rw07 No.96 Kec.kedawung', '', '', 0, ''),
(20, 82, 'HERMAN', '', '', '', '0', '', '', '', 0, ''),
(21, 126, '', '', 'mulyana', 'ibu rumah tangga', '081321866344', 'ds. megu gede\r\nblok lemah abang\r\nrt : 18 / rw : 04', '', '', 0, ''),
(22, 127, 'TASAM', 'BURUH', 'ANA YULIASTANTI', 'IBU RUMAH TANGGA', '085316098895', 'JALAN SUTAWINANGUN RT01/RW01 KEC KEDAWUNG', '', '', 0, ''),
(23, 130, '', '', 'KASMINA', 'PEMBANTU RUMAH TANGGA', '08988660712', 'JL.PECILON DUKU  GG.SIPULO  RT03 RW07\r\nDS.SUTAWINANGUN  KEC.KEDAWUNG', '', '', 0, ''),
(24, 134, 'DARSANI', 'BURUH', 'NANI MARYANI', 'IBU RUMAH TANGGA', '085320061312', 'JL SUTAWINANGUN RT01 RW01 KC KEDAWUNG', '', '', 0, ''),
(25, 139, 'ade jamaludin', 'buruh', 'jenah', 'IBU RUMAH TANGGA', '081946900137', 'jln.sriwijaya 1 blok cantilan rt04 rw03 ds.kedawung', '', '', 0, ''),
(26, 142, 'TORI', 'BURUH', 'ROHAYANI', 'IBU RUMAH TANGGA', '0822403433771', 'JALAN SUTAWINANGUN RT01 RW01 KEC KEDAWUNG', '', '', 0, ''),
(27, 110, 'Subandi', '', 'Sarinah', '', '', '', '', '', 0, ''),
(28, 148, 'FIRLY NOVIANA', 'KARYAWAN SWASTA', 'WIWIN WIDIANINGSIH', 'GURU', '081214031109', 'JL. KH. AGUS SALIM GG PENDAWA 1 NO.7 RT001/06 PALIMANAN TIMUR CIREBON', '', '', 0, ''),
(29, 151, 'MOHAMAD SOLEHARSA ', 'BURUH', '', '', '', '', '', '', 0, ''),
(30, 158, 'MOH SIDIK', 'BURUH HARIAN LEPAS', 'MAESAROH', 'IBU RUMAH TANGGA', '08176928683', 'VILLA INTAN 2 BLOK H8 NO.3 RT 18/05 KAB.CIREBON', '', '', 0, ''),
(31, 119, 'Subyanto', 'Buruh', 'Dasiah', 'Ibu Rumah Tangga', '089679471354', 'Ds. Gesik Blok Kr. Wetan', '', '', 0, ''),
(32, 118, 'Iksan', 'Sopir', 'Tarina', '', '', 'Astapada, Tengah Tani', '', '', 0, ''),
(33, 123, 'Sunana', 'Kuli Bangunan', 'Sahati', 'Ibu Rumah Tangga', '089610501068', '', '', '', 0, ''),
(34, 122, 'Delap', 'Buruh', 'Tewi', '', '', '', '', '', 0, 'Desa batembat Tengah tani'),
(35, 161, 'sali', 'buruh', 'maemunah', 'pedagang', '085318611258', 'Jl. Sunan gunung jati Ds. Astana\r\n kab. Cirebon', '', '', 0, ''),
(36, 172, 'suganda', 'buruh', 'rumina', 'pedagang', '', '', '', '', 0, ''),
(37, 136, 'M. Iwan Gunawan', 'Buruh', 'Winarti', '', '', 'Jl KS tubun GG sudarman Kota Cirebon', '', '', 0, ''),
(38, 178, 'CIPTO SUHARNO', 'SUPIR', 'RISTINA', 'IBU RUMAH TANGGA', '089660673701', 'DESA PILANG SARI RT 05 RW 02', '', '', 0, ''),
(39, 183, 'SUKRON', 'BURUH', 'IIP SARIPAH', 'IBU RUMAH TANGGA', '085322991201', 'JL SULTAN AGENG TIRTAYASA BLOK SILEDU DESA KEDUNG DAWA KECAMATAN KEDAWUNG', '', '', 0, ''),
(40, 188, 'MOH. SUBRATA', 'PEDAGANG', 'SARIPAH', 'PEDAGANG', '089685471064', 'KEL. GEGUNUNG BLOK PESAREAN RT 04/RW 01', '', '', 0, ''),
(41, 186, 'sali', 'buruh', 'maemunah', 'pedagang', '085318611258', 'Jl. Sunan gunung jati desa. Astana kec. Gunung jati kab. Cirebon', '', '', 0, ''),
(42, 191, 'KUSNADI', 'BURUH', 'SUSYANI', 'BURUH', '082312408295', 'DS. SUTAWINANGUN RT. 03 RW. 01 KEC. KEDAWUNG KAB. CIREBON', '', '', 0, ''),
(43, 199, '', '', '', '', '', '', '', '', 0, ''),
(44, 197, 'MASTURO', 'BURUH', 'MISNI', 'IBU RUMAH TANGGA', '081911389449', 'JL. FATAHILLAH DS. MEGU CILIK BLOK SERUT NO. 65 KEC. WERU KAB. CIREBON', '', '', 0, ''),
(45, 205, 'miskad ', 'wiraswasta', 'sunaeni haryani', 'ibu rumah tangga', '08983864091', 'Desa. Wanakaya blok. Sembung rt. 02/ rw. 04', '', '', 0, ''),
(46, 221, 'ISNADI', 'NELAYAN', 'DARINI', 'IBU RUMAH TANGGA', '', 'DS. MERTASINGA BLOK LAWANG GEDE RT.03 RW. 02 KEC. GUNUNG JATI KAB. CIREBON', '', '', 0, ''),
(47, 225, 'paijan', 'pegawai swasta', 'faridah', 'IBU RUMAH TANGGA', '085351448553', 'jl brigjen dharsono\r\nblok cantilan \r\ndesa kedawung', '', '', 0, ''),
(48, 227, 'RUDY YURIANTONO', 'BURUH', 'KARTIAH PURBASARI', 'ibu rumah tangga', '082127944375', 'JL. SULTAN AGENG TIRTAYASA GG.AR-RAHMAN RT.01 RW.01', '', '', 0, ''),
(49, 219, 'AUNG JAJULI', 'BURUH', 'IJAH HADIJAH', 'IRT', '085222260965', 'DESA KEDAWUNG RT 04 RW 02 KECAMATAN KEDAWUNG', '', '', 0, ''),
(50, 229, 'HERI WAHYUDIN', 'KARYAWAN SWASTA', 'SUHERNI', 'IBU RUMAH TANGGA', '082127435577', 'JL.CIDENGJAYA GG.SUTA JAYA RT.10 RW.03 DESA. KERTAWINANGUN', '', '', 0, ''),
(51, 235, 'IYON SARJANA', 'WIRASWASTA', 'NURHAYATI', 'IRT', '081802321141', 'DESA CEMPAKA KECAMATAN PLUMBON', '', '', 0, ''),
(52, 242, 'ALI', 'WIRASWASTA', 'SAIMAH', 'WIRASWASTA', '081218758088', 'DS.BALAD', '', '', 0, ''),
(53, 255, 'SALEH', 'BURUH', 'ANIMAH', 'PEDAGANG', '08978279525', 'DS. JATIMERTA RT/RW. 005/002 KEC. GUNUNG JATI KAB. CIREBON', '', '', 0, ''),
(54, 257, 'Purkon Iskandar', 'PNS (pensiun)', 'yayah mulyasih', 'ibu rumah tangga', '085295728366', 'jl sukapura 1 no 05/32', '', '', 0, ''),
(55, 260, 'SUTAMIJAYA', 'WIRASWASTA', 'AMENA', 'IBU RUMAH TANGGA', '082320676401', 'DESA DAWUAN, BLOK UTARA, RT 04, RW 05, TENGAHTANI', '', '', 0, ''),
(56, 264, 'OMO SUJATMOKO ', 'BURUH ', 'ERNA WATI ', 'IBU RUMAH TANGGA', '082166895850', 'BLOK RANDUALAS RT 002 RW 001 DESA MEGU CILIK KECAMATAN WERU KABUPATEN CIREBON ', '', '', 0, ''),
(57, 261, 'SAHLANI', '-', 'ASTIMI', 'PEMBANTU RUMAH TANGGA', '082315318816', 'DESA WANAKAYA BLOK KALISAPU 02/03 KEC.GUNUNG JATI KAB. CIREBON', '', '', 0, ''),
(58, 267, 'GATOT BUDIARTO SPD', 'PNS', 'R TATIN MDA SPD', 'PNS', '085295585284', 'DESA BUNTET DUSUN 1 RT 01 RW 01 KECAMATAN ASTANAJAPURA KABUPATEN CIREBON', '', '', 0, ''),
(59, 271, 'ABDUL GHOFAR', 'WIRASWASTA', 'NUR AISYAH', 'IBU RUMAH TANGGA', '085724340299', 'Jln.RAYA SN.GN.JATI DS.ASTANA BLOK PEKAUMAN CIREBON Rt.003 Rw.001', '', '', 0, ''),
(60, 266, 'SUKADI', 'SUPIR ANGKOT', 'AMI', 'IBU RUMAH TANGGA', '089622774968', 'DS.PEGAGAN LOR KEC.KAPETAKAN.KAB CIREBON', '', '', 0, ''),
(61, 279, 'ARUMAN', 'SWASTA', 'ALM.TETI ROKHYATI', '', '082318332678', 'PERUM Bumi Arum Sari JL.Albasia no.109 rt 02 rw 09 desa cirebon girang kec.talun kab.cirebon ', '', '', 0, ''),
(62, 288, 'sunaja', 'buruh lepas', 'satu', 'ibu rumah tangga', '081223808809', 'desa kebarepan blok pegambuan jalan nangka kecamatan plumbon kabupaten cirebon', '', '', 0, ''),
(63, 208, 'DEDI KARYADI', 'SWASTA', 'NAHARYANI', 'SWASTA', '085110454552', 'DS. WANASABA KIDUL BLOK WIDARA 01\04,KECAMATAN TALUN KABUPATEN CIREBON', '', '', 0, ''),
(64, 295, 'Nasron S.Pd.I', 'PNS (Guru)', 'Misriah', 'Ibu rumah tangga', '082319118275', 'Jl. Kedapang Indah No. 29 Rt 01 Rw 03 Blok 2 Desa Jungjang Kec. Arjawinangun Kab. Cirebon 45162', '', '', 0, ''),
(65, 300, 'RAMLI', 'BURUH  ', 'SARI', 'IBU RUMAH TANGGA', '089676782713', 'DESA WANASABA LOR KEC.TALUN KAB. CIREBON RT 01 RW 01', '', '', 0, ''),
(66, 301, 'hadiyanto', '', 'indah lestari ningsih', 'pedagang', '081223551476', 'jln merantI III NO. 31 bumi arum sari', '', '', 0, ''),
(67, 306, 'Fatkhudin', 'PNS', 'Nurhayati', 'Ibu rumah tangga', '082121111347', 'Jl Pamungkas Rt01 Rw003 desa Jungjang kecamatan Arjawinangun', '', '', 0, ''),
(68, 308, 'KARDIMAN ,S.Pd.SD', 'PNS (GURU)', 'CAECI', 'IBU RUMAH TANGGA', '082121364004', 'DUSUN DUA SAMBENG\r\nRT:09  RW:03\r\nKEC. GUNUNG JATI ', '', '', 0, ''),
(69, 319, 'DAIMAN', 'DAGANG', 'RUMINI', 'IRT', '081802392650', 'DESA PILANG SARI BLOK PILANG SARI RT.05 RW. 02', '', '', 0, ''),
(70, 325, 'RIKI MUHARAM', 'TNI AL', 'YAYAH SOPIAH', 'GURU', '081564709479', 'JL.SALEH NO 31/39 RT/RW 01/04', '', '', 0, ''),
(71, 336, 'DINA', 'BURUH  ', 'MAE MUNAH', 'IBU RUMAH TANGGA', '087829020745', 'DS KALITENGAH BLOK KEBAGUSAN RT 11 RW 05', '', '', 0, ''),
(72, 337, 'rakudi', 'perangkat desa', 'katiah', 'mengurus rumah tangga', '085316487927', 'ds sarabau blok kebon gede rt11 rw04 kecamatan plered kabupaten cirebon', '', '', 0, ''),
(73, 342, 'WANGINA', 'BURUH', 'MAISAH', 'DAGANG', '', 'DESA ASTAPADA BLOK KEBUYUTAN KIDUL RT 01 RW 03', '', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengumuman`
--

CREATE TABLE IF NOT EXISTS `tb_pengumuman` (
`id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pengumuman`
--

INSERT INTO `tb_pengumuman` (`id`, `judul`, `isi`) VALUES
(3, 'Info Proses Pendaftaran', '<ol>\r\n<li>Klik Daftar pada menu di atas</li>\r\n<li>Isi Form pendaftaran, gunakan username dan password yang mudah diingat</li>\r\n<li>Login ke akun Anda, bisa klik <strong><a href="beranda#daftar">DISINI</a></strong> untuk login.</li>\r\n<li>Masukkan username dan password Anda, lalu klik <strong>LOGIN</strong></li>\r\n<li>Lengkapi data-data Anda dengan data yang valid</li>\r\n<li>Lengkapi nila-nilai Anda</li>\r\n<li>Konfirmasi data Anda</li>\r\n<li>Cetak bukti Pendaftaran Anda dan tunggu verifikasi data Anda</li>\r\n<li>Selesai</li>\r\n</ol>');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pesan`
--

CREATE TABLE IF NOT EXISTS `tb_pesan` (
`id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `no_hp` int(20) NOT NULL,
  `pesan` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pesan`
--

INSERT INTO `tb_pesan` (`id`, `nama`, `email`, `no_hp`, `pesan`) VALUES
(2, 'Ahmad Hanafi', 'Contaminated007@gmail.com', 2147483647, 'Saya ingin mendaftar di SMK Negeri 1 Kedawung!'),
(3, 'Reza Chaniago', 'Chaniago@mail.com', 2147483647, 'Berapa biaya daftar ke SMK Negeri 1 Kedawung ? Thx'),
(4, 'Surya Muharram', 'Suryamuharram@yahoo.co.id', 2147483647, 'Kapan pendaftaran secara langsung di buka ?'),
(5, 'Sarah Sri Maharani', 'Sarah28@gmail.com', 2147483647, 'Apakah Ada kejuruan tata boga di SMKN 1 Kedawung ?');

-- --------------------------------------------------------

--
-- Table structure for table `tb_questions`
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
) ENGINE=InnoDB AUTO_INCREMENT=295 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_questions`
--

INSERT INTO `tb_questions` (`id`, `subject_id`, `question`, `a_choice`, `b_choice`, `c_choice`, `d_choice`, `correct_answer`, `picture`, `audio`, `created_at`, `updated_at`) VALUES
(93, 31, '<p>Kebutuhan akan makan, minum digolongkan kedalam kebutuhan ....</p>', 'Kebutuhan Pangan', 'Kebutuhan Sandang', 'Kebutuhan Papan', 'Kebutuhan Kendaraan', 'A', '', '', '2016-06-24 23:21:54', '2016-06-24 23:21:54'),
(94, 33, '<p>Jaringan yang menghubungkan semua jaringan komputer, baik komputer pribadi jaringan komputer lokal, pemerintahan maupun perusahaan di seluruh dunia dalam satu jaringan besar dinamakan :</p>', 'LAN', 'WAN', 'Internet', 'Ekstranet', 'C', '', '', '2016-06-24 23:23:36', '2016-06-24 23:23:36'),
(96, 31, '<p>Orang atau instansi/lembaga yang membeli barang-barang/jasa kita secara rutin atau&nbsp;berulang-ulang, karena barang atau jasa yang dibeli mempunyai manfaat, dinamakan..</p>', 'Produsen', 'Pelanggan', 'Pengusaha', 'Pemakai', 'D', '', '', '2016-06-24 23:24:57', '2016-06-24 23:24:57'),
(97, 33, '<p>Microsoft WindowsXP adalah salah satu dari :</p>', 'Sistem operasi	', 'Program pengolah data', 'Program bahasa pemrograman', 'Program grafik', 'A', '', '', '2016-06-24 23:27:00', '2016-06-24 23:27:00'),
(98, 31, '<p>Lembaga keuangan yang usaha pokoknya memberikan kredit dan jasa-jasa dalam lalu lintas pembayaran dan peredaran uang disebut....</p>', 'Asuransi', 'Bank', 'Perhotelan', 'Layanan Multi Proteksi', 'B', '', '', '2016-06-24 23:27:59', '2016-06-24 23:27:59'),
(99, 33, '<p>Langkah-langkah untuk mematikan komputer yang benar :</p>', 'Klik  Start    ->      Shut Down  ->      OK', 'Klik  Start	->    Log Of     ->    OK	', 'Klik  Start    ->      Restart    ->     Enter', 'Klik  Start   ->       Alt    ->     F4', 'A', '', '', '2016-06-24 23:30:58', '2016-06-24 23:30:58'),
(100, 31, '<p>Bila mendapati tanda bahaya baik ditempat kerja atau di tempat umum sikap kita....</p>', 'Berlari	', 'Menonton', 'Mengintip', 'Cepat dan Tanggap', 'D', '', '', '2016-06-24 23:30:59', '2016-06-24 23:30:59'),
(101, 31, '<p>Segala sesuatu yang umum diterima dalam pembayaran barang disebut ......</p>', 'Cek', 'Kartu Kredit', 'Uang', 'Giral', 'C', '', '', '2016-06-24 23:32:58', '2016-06-24 23:32:58'),
(102, 32, '<p>The building that include in the wonder of the world in Egypt is..............</p>', 'Sphinx and Menara Big Ben', 'Piramida and Taj Mahal', 'Sphinx and Tembok Raksasa', 'Piramida and Sphinx', 'D', '', '', '2016-06-24 23:34:37', '2016-06-25 00:32:06'),
(103, 33, '<p>Perintah untuk menghapus seluruh <em>file </em>yang berextensi<em> <strong>doc</strong> </em>adalah<em> &hellip;&hellip;&hellip;&hellip;</em></p>', 'A:  \\  >DEL.*DOC	', 'A: \\  >DEL DOC*', 'A:  \\  >DEL*.DOC', ' A:  \\  >DEL.DOC*.', 'C', '', '', '2016-06-24 23:35:35', '2016-06-24 23:35:35'),
(104, 31, '<p>Sebagai seorang sekretaris sikap menghargai pelanggan antara lain dengan melakukan hal-hal ....</p>', 'Bersikap hormat dan ramah', 'Berikanlah senyuman agar tercipta suasana nyaman', 'Berbicaralah jujur dan jagalah perasaan pelanggan', 'Semuanya benar', 'D', '', '', '2016-06-24 23:35:37', '2016-06-24 23:35:37'),
(105, 32, '<p>Motif Batik that famous in Cirebon is......</p>', 'Flower', 'Horse ', 'Cloud', 'Butterfly', 'C', '', '', '2016-06-24 23:36:39', '2016-06-25 00:33:47'),
(106, 33, '<p>Media yang digunakan untuk menunjuk, memilih, dan memindahkan objek pada layar adalah &hellip;&hellip;</p>', 'Pointer	', 'Keyboard', 'CPU', 'Mouse', 'D', '', '', '2016-06-24 23:37:36', '2016-06-24 23:37:36'),
(107, 31, '<p>Apabila kita mendengar alarm berbunyi, maka untuk mengatasi masalah secara umum&nbsp;adalah dengan ....</p>', 'Selamatkan diri', 'Tenangkan diri', 'Selamatkan dokumen-dokumen atau barang-barang yang memiliki nilai tinggi', 'Ambil alat pemadam kebakaran', 'C', '', '', '2016-06-24 23:38:41', '2016-06-24 23:38:41'),
(108, 26, '<p>Attention,&nbsp;please.&nbsp;Speaking&nbsp;and&nbsp;writing&nbsp;skills&nbsp;are&nbsp;desperately&nbsp;needed.&nbsp;We&rsquo;ll&nbsp;have&nbsp;a&nbsp;better&nbsp;future&nbsp;if&nbsp;we&nbsp;master&nbsp;these&nbsp;skills.So,&nbsp;in&nbsp;order&nbsp;to&nbsp;improve&nbsp;in&nbsp;these&nbsp;skills,&nbsp;there&nbsp;will&nbsp;be&nbsp;speaking&nbsp;and&nbsp;writing&nbsp;skills&nbsp;training&nbsp;for&nbsp;two&nbsp;days,&nbsp;starting&nbsp;on&nbsp;Saturday&nbsp;at&nbsp;two&nbsp;p.m.&nbsp;If&nbsp;you&rsquo;re&nbsp;interested,&nbsp;please&nbsp;enroll&nbsp;with&nbsp;Nurul&nbsp;Class&nbsp;X.&nbsp;This&nbsp;is&nbsp;a&nbsp;rare&nbsp;opportunity,&nbsp;so&nbsp;don&rsquo;t&nbsp;miss&nbsp;it.&nbsp;Thank&nbsp;you.</p>\r\n<p>Where&nbsp;do&nbsp;you&nbsp;think&nbsp;the&nbsp;announcement&nbsp;is&nbsp;made&nbsp;?</p>', 'At school.', 'At home.', 'On the street.', 'At market.', 'A', '', '', '2016-06-24 23:38:54', '2016-06-24 23:38:54'),
(109, 32, '<p>&ldquo;Kolintang&rdquo; is traditional music instrument from......</p>', 'West Sumatera ', 'North Sumatera ', 'North Sulawesi ', 'Maluku', 'B', '', '', '2016-06-24 23:39:14', '2016-06-24 23:39:14'),
(110, 33, '<p>Untuk mematikan komputer atau menjalankan ulang sistem operasi <strong>Windows</strong>, dapat dilakukan dengan cara &hellip;&hellip;&hellip;&hellip;&hellip;&hellip;</p>', 'Esc	', 'Alt + F4', 'Ctrl + Alt + Delete', 'Enter', 'C', '', '', '2016-06-24 23:39:14', '2016-06-24 23:39:14'),
(111, 33, '<p>Pernyataan berikut yang bukan fungsi dari tombol-tombol pada <em>keyboard</em> adalah &hellip;&hellip;&hellip;&hellip;</p>', 'Menekan tombol Esc  untuk membatalkan  perintah', 'Menekan tombol Shift  untuk menampilkan huruf besar atau kecil', 'Menekan tombol Page Up untuk menggulung tampilan layar ke atas', 'Menekan tombol Enter untuk menghapus hasil ketikan', 'D', '', '', '2016-06-24 23:41:30', '2016-06-24 23:41:30'),
(112, 31, '<p>Di bawah ini yang termasuk contoh dokumen-dokumen pribadi adalah .....</p>', 'Cek dan Obligasi', 'KTP, SIM, dan Ijazah', 'Keppres dan UU', 'Surat niaga', 'B', '', '', '2016-06-24 23:41:49', '2016-06-24 23:41:49'),
(113, 26, '<p>&ldquo;This&nbsp;is&nbsp;rare&nbsp;opportunity,&nbsp;so&nbsp;don&rsquo;t&nbsp;miss&nbsp;it,&rdquo;</p>\r\n<p>What&nbsp;is&nbsp;similar&nbsp;to&nbsp;the&nbsp;underlined&nbsp;word&nbsp;?</p>', 'Change', 'Charge', 'Chance', 'Challenge', 'C', '', '', '2016-06-24 23:41:52', '2016-06-24 23:41:52'),
(114, 32, '<p>&ldquo;Lenong&rdquo; is one of tourist attraction from.....</p>', 'West Java ', 'North Sumatera ', 'South Kalimantan', 'Jakarta', 'D', '', '', '2016-06-24 23:42:00', '2016-06-24 23:42:00'),
(115, 26, '<p>You&nbsp;and&nbsp;I&nbsp;...English&nbsp;now.</p>', 'is studying', 'is studied', 'am studying', 'are studying', 'D', '', '', '2016-06-24 23:43:40', '2016-06-24 23:43:40'),
(116, 32, '<p>The name of domestic airlines.....</p>', 'Chatay Pacific', 'Lufthansa Airlines', 'Qantas Airlines', 'Asia Air Service', 'D', '', '', '2016-06-24 23:43:55', '2016-06-24 23:43:55'),
(117, 33, '<p>Pada Tahun1972, Roy Tomlinson membuat program yang dapat digunakan untuk mengirim surat dalam internet yang disebut :</p>', 'Letter-net', 'E-mail	', 'Face Book', 'ARPANET', 'B', '', '', '2016-06-24 23:43:57', '2016-06-24 23:43:57'),
(118, 31, '<p>Kertas yang biasa digunakan untuk mengetik pekerjaan surat adalah kertas...</p>', 'Union Skin', 'HVS Skin', 'HVS', 'Stensil', 'C', '', '', '2016-06-24 23:44:43', '2016-06-24 23:44:43'),
(119, 26, '<p>Hello&nbsp;,&nbsp;my&nbsp;friend&nbsp;&hellip;.</p>\r\n<p>My&nbsp;name&nbsp;is&nbsp;Jihan.&nbsp;I&nbsp;live&nbsp;in&nbsp;Cirebon.</p>', 'What is your name?', 'May I know your name?', 'Where do you live?', 'May I introduce myself?', 'D', '', '', '2016-06-24 23:44:56', '2016-06-24 23:44:56'),
(120, 33, '<p>Perkembangan Internet menjadi semakin pesat dengan mulai diciptakan WWW. Kepanjangan dari WWW adalah &hellip;&hellip;&hellip;.</p>', 'World Wide Web', 'Word Web Wide	', 'Web Wide World', 'Word Wide Web', 'A', '', '', '2016-06-24 23:45:43', '2016-06-24 23:45:43'),
(121, 32, '<p>The name of travel documents for someone to go to the other countries....</p>', 'Train Ticket ', 'Passport ', 'SIM ', 'KTP', 'B', '', '', '2016-06-24 23:46:28', '2016-06-24 23:46:28'),
(122, 26, '<p>Alex :&nbsp;Good&nbsp;morning&nbsp;Mr.Himawan&nbsp;?</p>\r\n<p>&nbsp;&nbsp;&hellip;&hellip;</p>\r\n<p>Mr.&nbsp;Himawan&nbsp;:&nbsp;I&rsquo;m&nbsp;very&nbsp;well,&nbsp;thanks</p>', 'How do you do?', 'How are you?', 'What are you doing?', 'How about your sister?', 'B', '', '', '2016-06-24 23:46:50', '2016-06-24 23:46:50'),
(123, 31, '<p>Surat pemberitahuan yang sifatnya mengharapkan kehadiran seseorang atau&nbsp;sekelompok orang untuk berpartisipasi dalam suatu acara tertentu di tempat dan pada&nbsp;waktu tertentu disebut ....</p>', 'Surat pemberitahuan', 'Surat perintah', 'Surat tugas', 'Surat undangan', 'D', '', '', '2016-06-24 23:47:25', '2016-06-24 23:47:25'),
(124, 33, '<p>Alat untuk mencetak data dan informasi yang telah kita olah menggunakan komputer adalah &hellip;&hellip;</p>', 'Monitor', 'Mesin Photo Copy', 'Memori', 'Printer', 'D', '', '', '2016-06-24 23:47:39', '2016-06-24 23:47:39'),
(125, 32, '<p>Kereta Singabarong is a carriage of Cirebon Kingdom which was used for the kings in traditional ceremony, Now it is placed in ...</p>', 'Kasepuhan palace', 'Kanoman  palace', 'Gunungjati grave', 'Sunyaragi cave', 'A', '', '', '2016-06-24 23:48:59', '2016-06-24 23:48:59'),
(126, 31, '<p>Surat untuk orang tua dan sahabat merupakan contoh surat pribadi yang bersifat....</p>', 'Biasa', 'Kekeluargaan', 'Kedinasan', 'Rahasia', 'B', '', '', '2016-06-24 23:50:17', '2016-06-24 23:50:17'),
(127, 32, '<p>Serampang Dua Belas , Tor-tor, Sigale-gale are traditional dances from...</p>', 'North Sumatera ', 'West Sumatera ', 'South Sumatera', 'North Sulawesi', 'A', '', '', '2016-06-24 23:51:01', '2016-06-24 23:51:01'),
(128, 33, '<ol>\r\n<li>Control Menu atau control box berfungsi untuk mengatur tampilan jendela program , diantaranya gambar &nbsp; . Gambar disamping ini berfungsi &hellip;&hellip;&hellip;&hellip;&hellip;&hellip;</li>\r\n</ol>', 'Minilalis, berfungsi untuk menyembunyikan jendela aplikasi', 'Restore , berfungsi menampilkan jendela program ke bentuk awal', 'Maximize, berfungsi memperbesar ukuran jendela ke ukuran layar penuh', 'Close, berfungsi untuk menutup jendela aplikasi atau keluar dari aplikasi', 'D', 'close-tombol.png', '', '2016-06-24 23:52:15', '2016-06-24 23:52:15'),
(129, 31, '<p>Tanda penerimaan pembayaran atau tanda bukti pembayaran yang dikeluarkan atau&nbsp;diberikan oleh pihak penerima uang disebut....</p>', 'Kuitansi', 'Promes', 'Faktur', 'Packing List', 'A', '', '', '2016-06-24 23:52:47', '2016-06-24 23:52:47'),
(130, 26, '<p>Mother&nbsp; :&nbsp;Fauzan,&nbsp;this&nbsp;is&nbsp;a&nbsp;pen&nbsp;for&nbsp;you.</p>\r\n<p>Fauzan :&nbsp;&hellip;........ mom.</p>', 'How is the pen.', 'What price is the pen.', 'I’m very happy.', 'thank you', 'D', '', '', '2016-06-24 23:53:16', '2016-06-24 23:53:16'),
(131, 32, '<p>The following is tourism object of west Java....</p>', 'Ngarai Sihanouk,Tangkuban Perahu , Ciater', 'Pangalengan, Danau Toba, Museum Geologi', 'Museum Geologi, Ciater,Waduk Dharma', 'Owabong,Keraton Kasepuhan,Gunung jati', 'C', '', '', '2016-06-24 23:53:19', '2016-06-24 23:53:19'),
(132, 33, '<p><strong>Ctrl + U</strong> adalah perintah untuk membuat tulisan pada layar agar &hellip;&hellip;&hellip;&hellip;&hellip;</p>', 'Huruf miring dan tebal', 'Huruf bergaris bawah', 'Huruf berbentuk tebal', 'Huruf  berbentuk  tebal dan bergaris bawah', 'B', '', '', '2016-06-24 23:54:00', '2016-06-24 23:54:00'),
(133, 31, '<p>Suatu daftar perincian barang-barang yang diperjualbelikan disertai dengan harga dan&nbsp;jumlah barang disebut ......</p>', 'Promes', 'Faktur', 'Packing List', 'Konosemen', 'B', '', '', '2016-06-24 23:55:14', '2016-06-24 23:55:14'),
(134, 26, '<p>Mona : .......&hellip;&nbsp;I&nbsp;could&nbsp;not&nbsp;come&nbsp;on&nbsp;time.</p>\r\n<p>Nana :&nbsp;Please&nbsp;take&nbsp;a&nbsp;seat.&nbsp;The&nbsp;meeting&nbsp;hasn&rsquo;t&nbsp;begun&nbsp;yet.</p>', 'That’s O.K.', 'Sure you’ll.', 'Please come in.', 'I’m sorry.', 'D', '', '', '2016-06-24 23:55:26', '2016-06-24 23:55:26'),
(135, 33, '<p>Perintah untuk membuat tulisan yang mengadung seni dan menarik, kita menggunakan fasilitas pada <strong>Microsoft Word</strong> yang disebut&hellip;&hellip;&hellip;&hellip;&hellip;</p>', 'Word Art', 'Picture', 'Clipart', 'Symbol', 'A', '', '', '2016-06-24 23:55:38', '2016-06-24 23:55:38'),
(136, 26, '<p>Tantia&nbsp;is&nbsp;my&nbsp;classmate.&nbsp;&hellip;&nbsp;is&nbsp;the&nbsp;cleverest&nbsp;student&nbsp;in&nbsp;my&nbsp;class.</p>', 'They.', 'She.', 'Her.', 'Hers.', 'B', '', '', '2016-06-24 23:56:46', '2016-06-24 23:56:46'),
(137, 33, '<p>Tampilan Jenis huruf, ukuran huruf, spasi, text pada aplikasi pengolahan kata, terdapat pada menu...... :</p>', 'Page Layout', 'Insert', 'References', 'Home', 'D', '', '', '2016-06-24 23:57:17', '2016-06-24 23:57:17'),
(138, 26, '<p>The&nbsp;printer .......&hellip;&nbsp;beside&nbsp;the&nbsp;monitor.</p>', 'am', 'are', 'is', 'were', 'C', '', '', '2016-06-24 23:57:46', '2016-06-24 23:57:46'),
(139, 31, '<p>Anda sebagai sekretaris dalam mengerjakan suatu pekerjaan pengetikan sebaiknya&nbsp;menggunakan jari dengan sistem...</p>', 'dua jari', 'lima jari', 'sepuluh jari', 'sebelas jari ', 'C', '', '', '2016-06-24 23:57:54', '2016-06-24 23:57:54'),
(140, 33, '<p>Mengelompokkan beberapa file yang sejenis ke dalam suatu tempat tersendiri merupakan fungsi dari &hellip;&hellip;&hellip;</p>', 'Drive	', 'Screen Saver	', 'Range', 'Folder', 'D', '', '', '2016-06-24 23:58:51', '2016-06-24 23:58:51'),
(141, 31, '<p>Bagian surat yang berfungsi untuk memudahkan pencarian surat kembali adalah ....</p>', 'Perihal surat', 'Lampiran', 'Kepala surat', 'Alamat dalam', 'A', '', '', '2016-06-24 23:59:56', '2016-06-24 23:59:56'),
(142, 26, '<p>Malik :&nbsp;&hellip;</p>\r\n<p>Mr.&nbsp;Irawan :&nbsp;Good&nbsp;afternoon,&nbsp;Malik.&nbsp;See&nbsp;you&nbsp;tomorrow.</p>', 'Good morning.', 'Good afternoon.', 'Good night.', 'Good evening.', 'B', '', '', '2016-06-25 00:01:58', '2016-06-25 00:01:58'),
(143, 30, '<p>Media komunikasi eksternal yang sering digunakan adalah &hellip;.</p>', 'Buku pedoman', 'Laporan', 'House journal', 'Media cetak', 'D', '', '', '2016-06-25 00:02:19', '2016-06-25 00:02:19'),
(144, 26, '<p>Sartika&nbsp;...&nbsp;her&nbsp;sister&nbsp;to&nbsp;the&nbsp;dentist&nbsp;at&nbsp;10&nbsp;a.m&nbsp;&nbsp;next&nbsp;Monday&nbsp;&nbsp;.</p>', 'will accompany', 'will have accompanied', 'accompanies ', 'will be accompanying', 'D', '', '', '2016-06-25 00:03:20', '2016-06-25 00:03:20'),
(145, 30, '<p>Fadillah menginvestasikan uang tunai dan peralatan sebagai modal awal perusahaan. Pengaruhnya terhadap akun-akun adalah &hellip;.</p>', 'Aktiva Kas dan peralatan berkurang, modal bertambah', 'Aktiva Kas dan peralatan bertambah, modal berkurang', 'Aktiva berupa kas dan peralatan bertambah, modal bertambah', 'Kas berkurang, modal bertambah', 'C', '', '', '2016-06-25 00:03:30', '2016-06-25 00:03:30'),
(146, 34, '<p>Kebutuhan manusia yang ditujukan untuk kesenangan hidup manusia adalah kebutuhan ....</p>', 'primer', 'sekunder', 'tertier', 'komplementer', 'C', '', '', '2016-06-25 00:04:34', '2016-06-25 00:04:34'),
(147, 30, '<p>Pa Ali seorang pedagang, barang dagangannya dia jual dengan harga Rp. 760.000,00 sedangkan harga beli dari barang tersebut adalah Rp.593.750,00 berapa .. % kah keuntungan yang di peroleh pak Ali dari penjualan barang tersebut</p>', '28 %', '30%', '35%', '20%', 'A', '', '', '2016-06-25 00:04:54', '2016-06-25 00:04:54'),
(148, 30, '<p>Pengelompokan kewajiban menjadi hutang jangka pendek dan hutang jangka panjang berdasarkan &hellip;.</p>', 'Besar kecilnya', 'Jumlahnya', 'Tanggal pembayaran', 'Jangka waktu pembayaran', 'D', '', '', '2016-06-25 00:06:14', '2016-06-25 00:06:14'),
(149, 34, '<p>Persahabatan dan kekerabatan termasuk kebutuhan ....</p>', 'aktualisasi diri', 'sosial', 'fisiologis', 'penghargaan', 'B', '', '', '2016-06-25 00:07:04', '2016-06-25 00:07:04'),
(150, 26, '', '2-1-5-3-7-4-6', '4-1-5-3-7-2-6', '4-1-3-7-5-2-6', '7-2-4-1-5-3-6', 'B', 'inggris37.png', '', '2016-06-25 00:07:05', '2016-06-25 00:07:05'),
(151, 30, '<p>Di bawah ini beberapa program pengolahan angka, kecuali &hellip;.</p>', 'Program Excel', 'Program Lotus', 'Program Ms. Word', 'Program open office calculator', 'C', '', '', '2016-06-25 00:07:50', '2016-06-25 00:07:50'),
(152, 26, '<p>The&nbsp;students&nbsp;...&nbsp;the&nbsp;teacher&rsquo;s&nbsp;explanation&nbsp;in&nbsp;the&nbsp;class&nbsp;at&nbsp;7&nbsp;a.m.&nbsp;tomorrow</p>', 'Will listen', 'Are listening', 'Will be listening', 'Will have listened', 'C', '', '', '2016-06-25 00:08:23', '2016-06-25 00:08:23'),
(153, 30, '<p>Tuntutan atau klaim perusahaan kepada pihak ketiga baik terhadap perseorangan maupun terhadap suatu badan usaha yang terjadi karena adanya suatu transaksi disebut .................</p>', 'Utang', 'Piutang', 'Wesel', 'Proses', 'B', '', '', '2016-06-25 00:09:28', '2016-06-25 00:09:28'),
(154, 34, '<p>Benda yang dapat langsung digunakan untuk memenuhi kebutuhan adalah benda ....</p>', 'konsumsi', 'produksi', 'industri', 'substitusi', 'A', '', '', '2016-06-25 00:09:33', '2016-06-25 00:09:33'),
(155, 26, '<p>Can&nbsp;you&nbsp;see&nbsp;that&nbsp;table&nbsp;over&nbsp;there&nbsp;?&nbsp;...&nbsp;a&nbsp;cup&nbsp;of&nbsp;coffee&nbsp;on&nbsp;it.</p>', 'You are', 'Here are', 'There is', 'There are', 'C', '', '', '2016-06-25 00:10:02', '2016-06-25 00:10:02'),
(156, 26, '<p>There&nbsp;are&nbsp;some&nbsp;oranges&nbsp;on&nbsp;the&nbsp;table&nbsp;.</p>\r\n<p>The&nbsp;negative&nbsp;form&nbsp;of&nbsp;this&nbsp;sentence&nbsp;is&nbsp;...</p>', 'There isn’t oranges on the table.', 'There aren’t oranges on the table', 'There aren’t any oranges on the table', 'There aren’t some oranges  on the table', 'C', '', '', '2016-06-25 00:11:43', '2016-06-25 00:11:43'),
(157, 30, '<p>Nona Biantie membuka rekening di bank maka setiap bulan akan mendapatkan :</p>', 'Tagihan	', 'Jasa Giro', 'Jasa Giro dan Beban adm Bank', 'Biaya', 'C', '', '', '2016-06-25 00:11:46', '2016-06-25 00:11:46'),
(158, 34, '<p>Benda yang dalam pengunaannya saling menggantikan adalah ....</p>', 'konsumsi', 'industri', 'komplementer', 'deliveri', 'C', '', '', '2016-06-25 00:12:35', '2016-06-25 00:12:35'),
(159, 34, '<p>Kegunaan benda karena benda itu merupakan bahan untuk membuat benda lain ....</p>', 'guna dasar', 'guna bentuk', 'guna tempat', 'guna milik', 'A', '', '', '2016-06-25 00:15:07', '2016-06-25 00:15:07'),
(160, 30, '<p>&nbsp;Transaksi pembelian barang dagangan yang pembayarannya dilakukan nanti. Maka dari transaksi tersebut akan terjadi</p>', 'Utang', 'Kas', 'Piutang', 'Tunai', 'A', '', '', '2016-06-25 00:15:23', '2016-06-25 00:15:23'),
(161, 25, '<p><strong>Bacalah&nbsp;paragraf&nbsp;&nbsp;berikut&nbsp;dengan&nbsp;saksama!</strong></p>\r\n<p>Dari&nbsp;dulu&nbsp;hingga&nbsp;kini,&nbsp;sepeda&nbsp;termasuk&nbsp;salah&nbsp;satu&nbsp;alat&nbsp;transpor&nbsp;yang&nbsp;murah&nbsp;(1).&nbsp;&nbsp;</p>\r\n<p>Sepeda&nbsp;digunakan&nbsp;&nbsp;oleh&nbsp;banyak&nbsp;orang&nbsp;(2).&nbsp;Selain&nbsp;murah,&nbsp;&nbsp;sepeda&nbsp;juga&nbsp;bisa&nbsp;menyehatkan&nbsp;raga&nbsp;si&nbsp;penggunanya&nbsp;</p>\r\n<p>(3)&nbsp;Bahkan&nbsp;bukan&nbsp;hanya&nbsp;itu,&nbsp;karena&nbsp;tak&nbsp;bermesin,&nbsp;sepeda&nbsp;adalah&nbsp;alat&nbsp;angkut&nbsp;yang&nbsp;sangat&nbsp;ramah&nbsp;lingkungan&nbsp;(4).</p>\r\n<p><strong>Kalimat&nbsp;utama&nbsp;dalam&nbsp;paragraf&nbsp;&nbsp;di&nbsp;atas&nbsp;terdapat&nbsp;pada&nbsp;nomor&nbsp;&hellip;</strong></p>', '(1)', '(2)', '(3)', '(4)', 'A', '', '', '2016-06-25 00:15:44', '2016-06-25 01:13:59'),
(162, 30, '<p>Transaksi penjualan barang dagangan yang pembayarannya dilakukan nanti. Maka dari transaksi tersebut akan terjadi</p>', 'Utang	', 'Kas', 'Piutang', 'Barter', 'C', '', '', '2016-06-25 00:16:55', '2016-06-25 00:16:55'),
(163, 30, '<p>Dibeli barang dagangan Rp. 25.500.000,00 , Biaya angkut Rp. 400.000,00 , Asuransi barang tersebut Rp. 500.000,00</p>\r\n<p>Jika laba yang diinginkan adalah 40%&nbsp; dari harga beli . berapakah harga jual barang tersebut</p>', 'Rp.35.500.000,00', 'Rp. 36.600.000,00', '37.700.000,00', '34.400.000,00', 'B', '', '', '2016-06-25 00:18:38', '2016-06-25 00:18:38'),
(164, 34, '<p>Suatu bentuk persaingan pasar yang didominasi oleh beberapa produsen dalam satu wilayah area ...</p>', 'Oligopoli', 'persaingan sempurna', 'persaingan tidak sempurna', 'monopolistik', 'D', '', '', '2016-06-25 00:18:58', '2016-06-25 00:18:58'),
(165, 32, '<p>Sample of Domestic Tourist is..</p>', 'Tourist from Japan', 'Tourist from Serawak', 'Tourist from Brunei Darussalam', 'Tourist from Padang', 'D', '', '', '2016-06-25 00:20:32', '2016-06-25 00:20:32'),
(166, 30, '<p>Aktiva lancar berupa uang tunai atau benda lain sebagai alat pembayaran yang sah adalah&hellip;</p>', 'Uang', 'Kas', 'Simpanan di bank', 'Rekening', 'B', '', '', '2016-06-25 00:20:46', '2016-06-25 00:20:46'),
(167, 30, '<p>Apabila pembelian barang dagangan dilakukan secara kredit , maka bukti transaksi yang di peroleh adalah &hellip;</p>', 'Cek', 'Utang	', 'Faktur', 'Nota', 'C', '', '', '2016-06-25 00:22:06', '2016-06-25 00:23:10'),
(168, 34, '<p>Seorang peternak memelihara 60 ekor kambing dan menyediakan pakan ternak untuk 12 hari. Jika kambing tersebut dijual 20 ekor, maka persediaan pakan cukup untuk .... hari</p>', '27', '23', '21', '18', 'D', '', '', '2016-06-25 00:22:20', '2016-06-25 00:22:20'),
(169, 32, '<p>..........................is central of the goverment of West Java that was built in 1920</p>', 'Sate Buiding ', 'Kasepuhan Palace ', 'Asia Africa Buiding', 'Yogyakarta Palace', 'A', '', '', '2016-06-25 00:22:24', '2016-06-25 00:22:24'),
(170, 32, '<p>The other name of Cirebon is ...........</p>', 'Rain City ', 'Shrimp City', 'Flower City', 'Metropolitan City', 'B', '', '', '2016-06-25 00:24:28', '2016-06-25 00:24:28'),
(171, 34, '<p>Sebuah lemari dibeli dengan harga Rp. 1.750.000,00. Kemudian dijual dengan harga Rp. 2.100.000,00. Persentase keuntungan yang diperoleh dari penjualan lemari tersebut adalah ....</p>', '6%', '14%', '17%', '20%', 'D', '', '', '2016-06-25 00:25:51', '2016-06-25 00:25:51'),
(172, 32, '<p>Someone who gives an information in the tourism object is called ....</p>', 'Tourist ', 'Local Guide ', 'Tour Guiding', 'Tourist attraction ', 'B', '', '', '2016-06-25 00:26:13', '2016-06-25 00:26:13'),
(173, 30, '<p>Tuan Ean membeli barang dagangannya ke pasar Induk 5 karung beras dengan harga Rp. 275,000,00 / karung. Setiap karungnya berisi 25 kg beras Jika tuan Ean ingin mendapatkan keuntungan 30% berapakah harga yang ditawarkan pada pembeli setiap kg beras tersebut &hellip;.</p>', 'Rp. 10.000,00', 'Rp. 13.000,00	', 'Rp. 14.300,00', 'Rp. 16.000,00', 'C', '', '', '2016-06-25 00:26:45', '2016-06-25 00:26:45'),
(174, 30, '<p>Tuan Ean membeli barang dagangannya ke pasar Induk 5 karung beras dengan harga Rp. 275,000,00 / karung. Setiap karungnya berisi 25 kg beras Jika tuan Ean ingin mendapatkan keuntungan 30% berapakah harga yang ditawarkan pada pembeli setiap kg beras tersebut &hellip;.</p>', 'Rp. 10.000,00', 'Rp. 13.000,00	', 'Rp. 14.300,00', 'Rp. 16.000,00', 'C', '', '', '2016-06-25 00:27:14', '2016-06-25 00:27:14'),
(175, 32, '<p>&ldquo;Moci&rdquo; is a name of traditional food ...</p>', 'Sukabumi', 'Bogor ', 'Ciamis ', 'Garut', 'A', '', '', '2016-06-25 00:27:42', '2016-06-25 00:27:42'),
(176, 34, '<p>Harga 5 kg gula dan 30 kg beras Rp. 410.000,00, sedangkan harga 2 kg gula dan 60 kg beras Rp. 740.000,00. Harga 2 kg gula dan 5 kg beras adalah ....</p>', 'Rp   80.000,00', 'Rp.  74.000,00', 'Rp.  32.000,00', 'Rp.  22.000,00', 'A', '', '', '2016-06-25 00:28:54', '2016-06-25 00:28:54'),
(177, 30, '<p>Seorang Pedagang menjual barang dagangannya yaitu baju muslim dengan merk trend punya seharga Rp. 650.000,00 dari harga tersebut pedagang mendapatkan keuntungan sebanyak 25% berapakan harga beli baju muslim tersebut &hellip;</p>', 'Rp. 587.500,00', 'Rp. 485.500,00', 'Rp. 520,000,00', 'Rp. 130.000,00', 'C', '', '', '2016-06-25 00:29:06', '2016-06-25 00:29:06'),
(178, 32, '<p>One of tourism objects which is categorized in the seven wonders of the world is....</p>', 'Prambanan Temple ', 'Tanah Lot ', 'Borobudur temple', 'Besakih temple', 'C', '', '', '2016-06-25 00:29:59', '2016-06-25 00:29:59'),
(180, 34, '<p>Tempat bertemunya penjual dan pembeli ....</p>', 'Bursa', 'Pemasaran', 'Pasar', 'Efek', 'C', '', '', '2016-06-25 00:31:13', '2016-06-25 00:31:13'),
(181, 34, '<p>Kegiatan menyampaikan barang dari produsen ke konsumen ....</p>', 'Bursa Effek', 'Distribusi', 'Pemasaran', 'Pasar', 'B', '', '', '2016-06-25 00:34:00', '2016-06-25 00:34:00'),
(182, 34, '<p>Peralihan risiko kerugian ditanggung pihak perusahaan disebut ....</p>', 'Pajak', 'Retribusi', 'Asuransi', 'Cukai', 'C', '', '', '2016-06-25 00:36:38', '2016-06-25 00:36:38'),
(183, 34, '<p>Pajak penjualan ....</p>', 'PPn', 'PPh', 'NPWP', 'NJOP', 'A', '', '', '2016-06-25 00:40:08', '2016-06-25 00:40:08'),
(184, 34, '<p>Periklanan ....</p>', 'Distribusi', 'Advertising', 'Marketing', 'Promotion', 'B', '', '', '2016-06-25 00:42:36', '2016-06-25 00:42:36'),
(185, 34, '<p>Kewirausahaan ....</p>', 'Enterpreneurship', 'Infotainment', 'Ownership', 'Relationship', 'A', '', '', '2016-06-25 00:44:21', '2016-06-25 00:44:21'),
(186, 35, '<p>Seorang Ibu Rumah Tangga IRT selalu menyimpan uang di rumah untuk anggaran kesehatannya. Berdasarkan motifnya, berarti IRT tersebut melakukan motif ....</p>', 'berjaga-jaga', 'insidental', 'spekulasi', 'transaksi', 'A', '', '', '2016-06-25 00:56:14', '2016-06-25 00:56:14'),
(187, 35, '<p>Berikut ini yang termasuk jenis uang yaitu ....</p>', 'nilai uang', 'piutang', 'cek', 'uang giral', 'D', '', '', '2016-06-25 00:57:35', '2016-06-25 00:57:35'),
(188, 35, '<p>Yang termasuk ke dalam badan usaha adalah . . .</p>', 'Toko', 'Instansi', 'Firma', 'Pabrik', 'C', '', '', '2016-06-25 00:58:49', '2016-06-25 00:58:49'),
(189, 35, '<p>&nbsp;Seni merencanakan, mengorganisasikan, mengarahkan, mengkoordinasikan serta mengawasi tenaga manusia dengan bantuan alat-alat untuk mencapai tujuan yang telah ditatapkan. Pengertian dari . . .</p>', 'Manajemen', 'Manajer', 'Personalia', 'Organisasi', 'A', '', '', '2016-06-25 01:00:21', '2016-06-25 01:00:21'),
(190, 25, '<p><strong>Bacalah&nbsp;teks berikut&nbsp; dengan&nbsp;cermat&nbsp;!</strong></p>\r\n<p>Saat&nbsp;ini,&nbsp;ribuan&nbsp;hektare&nbsp;lahan&nbsp;tambak&nbsp;di&nbsp;Kabupaten&nbsp;Serang&nbsp;sudah&nbsp;tidak&nbsp;layak&nbsp;dijadikan&nbsp;tambak&nbsp;udang.&nbsp;Saat&nbsp;ini,&nbsp;tambak&nbsp;tersebut&nbsp;sudah&nbsp;banyak&nbsp;yang&nbsp;tercemar&nbsp;oleh&nbsp;limbah&nbsp;industri. Selain&nbsp;itu,&nbsp;penggarapannya&nbsp;pun&nbsp;masih&nbsp;tradisional.&nbsp;</p>\r\n<p><strong>Kritik&nbsp;yang&nbsp;logis&nbsp;sesuai&nbsp;dengan&nbsp;isi&nbsp;paragraf&nbsp;tersebut&nbsp;adalah&nbsp;&hellip;.</strong></p>', 'Pemilik tambak hendaknya bekerja sama dengan pemilik industri agar tidak terkena limbah yang merugikan.', 'Pemilik industri  harus mengganti semua kerugian materi petani tambak.', 'Pemilik industri  hendaknya membuat perencanaan yang matang saat akan mendirikan pabrik. Dengan demikian, masalah limbah dapat teratasi.', 'Pemilik tambak sudah sewajarnya  meminta ganti rugi . jika perlu, pemilik tambak berdemo untuk meminta ganti rugi yang sesuai.', 'C', '', '', '2016-06-25 01:00:23', '2016-06-25 01:00:23'),
(191, 35, '<p>Di bawah ini yang termasuk fungsi manajemen, kecuali . . .</p>', 'Planning', 'Money', 'Directing', 'Controlling', 'B', '', '', '2016-06-25 01:01:48', '2016-06-25 01:01:48'),
(192, 35, '<p>Kemampuan perusahaan dalam memperoleh pendapatan dari sejumlah modal yang dipergunakan disebut . . .</p>', 'Rentabilitas', 'Rehabilitas', 'Efisiensi', 'Efisien', 'A', '', '', '2016-06-25 01:02:58', '2016-06-25 01:02:58'),
(193, 25, '<p><strong>Cermatilah&nbsp;dialog&nbsp;drama&nbsp;berikut&nbsp;ini&nbsp;!</strong></p>\r\n<p>(Langkah-langkah&nbsp;laki-laki&nbsp;dan&nbsp;perempuan)</p>\r\n<p>Kasmidi&nbsp; :&nbsp;&nbsp;Gara-gara&nbsp;engkau&nbsp;semuanya&nbsp;gagal&nbsp;total&nbsp;!</p>\r\n<p>Ratna&nbsp; :&nbsp;&nbsp;&hellip;.</p>\r\n<p>Iwan &nbsp; :&nbsp;&nbsp;Engkau&nbsp;merusak&nbsp;perasaanku&nbsp;hingga&nbsp;pembicaraan&nbsp;daganganku&nbsp;&nbsp;&nbsp;&nbsp;terganggu</p>\r\n<p>Ratna&nbsp; :&nbsp;&nbsp;Ah,&nbsp;Mas&nbsp;hanya&nbsp;cari&nbsp;kambing&nbsp;hitam&nbsp;saja!</p>\r\n<p><strong>Kalimat&nbsp;yang&nbsp;tepat&nbsp;untuk&nbsp;melengkapi&nbsp;bagian&nbsp;teks&nbsp;drama&nbsp;yang&nbsp;rumpang&nbsp;di&nbsp;atas&nbsp;adalah&nbsp;&hellip;.</strong></p>', 'Bagaimana kabarnya, Mas?', 'Gara-gara aku? Kok, aneh?', 'Kenapa? Bukankah ini masalahku? Dan, aku yang menanggungnya?', 'Kemarin,  Ayah datang kemari dan menanyakan engkau.', 'B', '', '', '2016-06-25 01:03:51', '2016-06-25 01:03:51'),
(194, 35, '<p>Istilah wiraswastawan berasal dari 3 kata yakni &ldquo;wira&rdquo;, &ldquo;swasta&rdquo;, &ldquo;wan&rdquo;. Apa maksud</p>\r\n<p>dari kata &ldquo;wira&rdquo; . . .</p>', 'Berani', 'Tuan', 'Berdiri', 'Sendiri', 'A', '', '', '2016-06-25 01:05:08', '2016-06-25 01:05:08'),
(195, 35, '<p>Suatu proses pengidentifikasian, pengukuran, pencatatan, dan pelaporan transaksi ekonomi&nbsp;dari suatu organisasi yang dijadikan sebagai informasi dalam mengambil keputusan ekonomi&nbsp;oleh pihak &ndash; pihak yang memerlukan adalah pengertian dari&hellip;.<br /> </p>', 'Akuntansi', ' Laporan Keuangan', 'Buku Besar', 'Laporan Perusahaan', 'A', '', '', '2016-06-25 01:06:44', '2016-06-25 01:06:44'),
(196, 35, '<p>Sebagai informasi keuangan suatu organisasi yang berfungsi sebagai&hellip;.</p>', 'Pengertian Akuntansi', 'Fungsi Akuntansi', 'Orientasi Akuntansi', 'Prinsip Akuntansi', 'B', '', '', '2016-06-25 01:08:05', '2016-06-25 01:08:05'),
(197, 35, '<p><strong>&nbsp;</strong>Laporan keuangan&nbsp;suatu perusahaan yang dihasilkan pada suatu&nbsp;periode akuntansi&nbsp;yang</p>\r\n<p>&nbsp;menjabarkan unsur-unsur pendapatan dan beban perusahaan adalah pengertian dari&hellip;.<br /> </p>', 'Laporan keuangan', 'Laporan arus kas', 'Laporan laba/rugi', ' Laporan neraca', 'C', '', '', '2016-06-25 01:09:55', '2016-06-25 01:09:55'),
(198, 25, '<p><strong>Cermati&nbsp;garafik di samping&nbsp;ini!</strong></p>\r\n<p><strong>Peryataan&nbsp;yang&nbsp;sesuai&nbsp;dengan&nbsp;grafik&nbsp;di&nbsp;atas&nbsp;adalah&nbsp;....</strong></p>', 'Jumlah siswa kelas I, II, dan III tahun 2007 dan 2009 sama.', 'Jumlah siswa  kelas III tahun 2007 sama dengan kelas III 2009', 'Jumlah siswa kelas I, II, dan III setiap tahun menurun', 'jumlah siswa kelas I, II, dan III tahun 2008 adalah sama', 'D', 'GAMBAR1.jpg', '', '2016-06-25 01:10:06', '2016-06-25 01:10:06'),
(199, 35, '<p>&nbsp;Lembaga yang melaksanakan fungsi utama menyalurkan dana dari yang surplus/ berlebih&nbsp;</p>\r\n<p>&nbsp; kepada mereka yang kekurangan dana adalah defenisi dari&hellip;<br /> </p>', 'Perusahaan dagang', 'Perusahaan keuangan', 'Keuangan perusahaan', 'Perusahaan jasa', 'B', '', '', '2016-06-25 01:11:18', '2016-06-25 01:11:18'),
(200, 35, '<p>.&nbsp; Yang termasuk sumber penerimaan kas adalah&hellip;.</p>', 'Pembelian saham', 'Pembelian tunai', 'Penjualan tunai', 'Bayar pajak', 'B', '', '', '2016-06-25 01:12:43', '2016-06-25 01:12:43'),
(201, 25, '<p>&nbsp;</p>\r\n<p><strong>Tema&nbsp;:&nbsp;Merokok&nbsp;Penyebab&nbsp;Kanker&nbsp;Paru</strong></p>\r\n<p><strong>&nbsp;</strong></p>\r\n<p><strong>Rumusan&nbsp;masalah&nbsp;yang&nbsp;tepat&nbsp;dalam&nbsp;karya&nbsp;tulis&nbsp;yang&nbsp;sesuai&nbsp;dengan&nbsp;tema&nbsp;tersebut&nbsp;adalah&nbsp;&hellip;.</strong></p>', 'Bagaimanakah cara mencegah kanker paru?', 'Dapatkah mencegah kanker dengan tidak merokok?', 'Mengapa merokok dapat menyebabkan kanker paru?', 'Bagaimanakah cara merokok yang tidak menyebabkan kanker paru?', 'C', '', '', '2016-06-25 01:13:27', '2016-06-25 01:13:27'),
(202, 35, '<p>Pasar atau tempat yang memfasilitasi perdaganga dan penerbitan dana jangka panjang&nbsp;adalah pasar . . .</p>', 'Pasar modal', 'Pasar uang', 'Pasar berjangka', 'Pasar valuta asing', 'A', '', '', '2016-06-25 01:14:14', '2016-06-25 01:14:14'),
(203, 35, '<p>Bursa Efek Jakarta ( BEJ ) adalah salah satu bursa yang memperdagangkan . . .</p>', 'Saham', 'Modal', 'Investasi', 'Efek', 'D', '', '', '2016-06-25 01:15:32', '2016-06-25 01:15:32'),
(204, 25, '<p><strong>Bacalah&nbsp;penggalan&nbsp;novel&nbsp;brikut&nbsp;ini&nbsp;dengan&nbsp;saksama!</strong></p>\r\n<p>Anak&nbsp;laki-laki&nbsp;itu&nbsp;sangat&nbsp;kasihan&nbsp;melihat&nbsp;orang&nbsp;tua&nbsp;yang&nbsp;sial&nbsp;itu&nbsp;pulang&nbsp;dengan&nbsp;tangan&nbsp;hampa.&nbsp;Oleh&nbsp;karena&nbsp;itu,&nbsp;ia&nbsp;selalu&nbsp;menolong&nbsp;membawakan&nbsp;julungan&nbsp;tali,&nbsp;kait-kait,&nbsp;kain&nbsp;layar&nbsp;tua&nbsp;yang&nbsp;bertambal&nbsp;sarung&nbsp;gandum,&nbsp;bila&nbsp;ia&nbsp;pulang&nbsp;darilaut&nbsp;dalam&nbsp;keadaan&nbsp;tangan&nbsp;hampa&nbsp;dengan&nbsp;tengkuk&nbsp;penuh&nbsp;kerut&nbsp;dan&nbsp;bercak&nbsp;warna&nbsp;cokelat&nbsp;pada&nbsp;pipinya&nbsp;serta kulit&nbsp;yang&nbsp;terbakar&nbsp;kena&nbsp;sinar&nbsp;matahari.&nbsp;</p>\r\n<p><em>(&ldquo;Lelaki&nbsp;tua&nbsp;dan&nbsp;Laut&rdquo;&nbsp;Karya&nbsp;Ernest&nbsp;Miller&nbsp;Hemingway)</em></p>', 'bijaksana	', 'suka bekerja keras', 'suka menolong  ', 'perhatian', 'C', '', '', '2016-06-25 01:16:38', '2016-06-25 01:16:38'),
(205, 35, '<p>Kurs yang diperlakukan apabila pedagang valas melakukan penjual valas. Merupakan&nbsp;&nbsp;pengertian dari . . .</p>', 'Kurs jual', 'Kurs beli', 'Kurs saham', 'Kurs bursa', 'A', '', '', '2016-06-25 01:17:22', '2016-06-25 01:17:22'),
(206, 25, '<p><strong>Cermatilah&nbsp;</strong><strong>deskripsi&nbsp;buku&nbsp;berikut&nbsp;ini</strong><strong>!</strong></p>\r\n<p>Judul&nbsp; :&nbsp;&nbsp;Nayla</p>\r\n<p>Pengarang&nbsp; :&nbsp;&nbsp;Djenar&nbsp;Maesa&nbsp;Ayu</p>\r\n<p>Tahun&nbsp; :&nbsp;&nbsp;2005</p>\r\n<p>Kota&nbsp; :&nbsp;&nbsp;Jakarta</p>\r\n<p>Penerbit&nbsp; :&nbsp;&nbsp;PT&nbsp;Gramedia</p>\r\n<p><strong>Penulisan&nbsp;daftar&nbsp;pustaka&nbsp;yang&nbsp;tepat&nbsp;sesuai&nbsp;deskripsi&nbsp;di&nbsp;atas&nbsp;adalah&nbsp;&hellip;.</strong></p>', 'Ayu, Djenar Maesa. 2005. Nayla. Jakarta : PT Gramedia.', 'Maesa Ayu, Djenar. 2005. Nayla. Jakarta : PT Gramedia.', 'Djenar, Maesa Ayu. 2005. Nayla. Jakarta : PT Gramedia.', 'Ayu, Djenar Maesa.Nayla. Jakarta : PT Gramedia. 2005.', 'A', '', '', '2016-06-25 01:20:15', '2016-06-25 01:20:15'),
(207, 25, '<p><strong>Cermati&nbsp;paragraf&nbsp;&nbsp;ini&nbsp;dengan&nbsp;saksama&nbsp;!</strong></p>\r\n<p><em>Berabad-abad</em>&nbsp;(1)&nbsp;yang&nbsp;lalu,&nbsp;<em>kehidupan&nbsp;</em>(2)&nbsp;binatang&nbsp;&nbsp;sangatlah&nbsp;bebas.&nbsp;<em>Binatang&nbsp;</em>(3)&nbsp;hidup&nbsp;dengan&nbsp;hokum&nbsp;rimba.&nbsp;Mereka&nbsp;dapat&nbsp;<em>berkeliaran</em>&nbsp;(4)&nbsp;ke&nbsp;mana&nbsp;saja.</p>\r\n<p><strong>Kata-kata&nbsp;yang&nbsp;tercetak&nbsp;miring&nbsp;&nbsp;dalam&nbsp;kalimat&nbsp;di&nbsp;atas&nbsp;&nbsp;jika&nbsp;diurutkan&nbsp;secara&nbsp;alfabetis&nbsp;dalam&nbsp;kamus&nbsp;kecil,&nbsp;adalah&nbsp;&hellip;.</strong></p>', '(1), (2), (3), (4)', '(1), (3), (2), (4)', '(1), (4), (3), (2)', '(1), (3), (4), (2)', 'B', '', '', '2016-06-25 01:25:22', '2016-06-25 01:25:22'),
(208, 25, '<p><strong>Cermati&nbsp;langkah-langkah&nbsp;karya&nbsp;tulis&nbsp;dengan&nbsp;saksama!</strong></p>\r\n<p>Langkah&nbsp;&ndash;&nbsp;langkah&nbsp;karya&nbsp;tulis&nbsp;:</p>\r\n<ol>\r\n<li>Menulis&nbsp;daftar&nbsp;pustaka</li>\r\n<li>Menyusun&nbsp;kerangka&nbsp;karya&nbsp;tulis</li>\r\n<li>Mengembangkan&nbsp;kerangka&nbsp;menjadi&nbsp;karya&nbsp;tulis</li>\r\n<li>Menentukan&nbsp;tema</li>\r\n<li>Mencari&nbsp;data&nbsp;dan&nbsp;pendapat&nbsp;pendukung</li>\r\n</ol>\r\n<p>Urutan&nbsp;langkah&nbsp;yang&nbsp;tepat&nbsp;dalam&nbsp;menulis&nbsp;karya&nbsp;ilmiah&nbsp;adalah&nbsp;&hellip;</p>', '(4), (5), (2), (3), (1)	', '(4), (5), (3), (2), (1)	', '(4), (2), (5), (3), (1)', '(4), (2), (3), (5), (1)', 'C', '', '', '2016-06-25 01:28:32', '2016-06-25 01:28:32'),
(209, 25, '<p><strong>Cermati&nbsp;judul&nbsp;karya&nbsp;tulis&nbsp;dengan&nbsp;saksama!</strong></p>\r\n<p>Judul&nbsp;karya&nbsp;tulis&nbsp;:&nbsp;Pentingnya&nbsp;disiplin&nbsp;berolahraga&nbsp;dalam&nbsp;kehidupan&nbsp;sehari-hari</p>\r\n<p><strong>Penulisan&nbsp;yang&nbsp;tepat&nbsp;untuk&nbsp;judul&nbsp;karya&nbsp;tulis&nbsp;tersebut&nbsp;adalah&nbsp;&hellip;</strong></p>', 'Pentingnya Disiplin Berolahraga Dalam Kehidupan Sehari-Hari', 'Pentingnya Disiplin Berolah raga dalam Kehidupan Sehari-hari', 'Pentingnya Disiplin Berolahraga dalam Kehidupan Sehari-hari ', 'Pentingnya Disiplin Berolah raga Dalam Kehidupan Sehari-hari', 'C', '', '', '2016-06-25 01:31:34', '2016-06-25 01:31:34'),
(210, 25, '<p><strong>Cermati&nbsp;paragraf&nbsp;&nbsp;ini&nbsp;dengan&nbsp;saksama!</strong></p>\r\n<p>&hellip;&nbsp;hari&nbsp;Minggu,&nbsp;keluarga&nbsp;Muh.&nbsp;Fariz&nbsp;Rizaldi&nbsp;berekreasi&nbsp;&nbsp;&hellip;&nbsp;&nbsp;Pantai&nbsp;Karang&nbsp;Bolong,&nbsp;Kebumen&nbsp;yang&nbsp;terletak&nbsp;10&nbsp;km&nbsp;&hellip;&nbsp;Kota&nbsp;Gombong.&nbsp;Pantai&nbsp;Karang&nbsp;Bolong&nbsp;dapat&nbsp;ditempuh&nbsp;&nbsp;&hellip;&nbsp;dua&nbsp;jalur.&nbsp;Jalur&nbsp;Jalan&nbsp;Puring&nbsp;Lurus&nbsp;&hellip;&nbsp;selatan,&nbsp;sedangkan&nbsp;jalur&nbsp;Jalan&nbsp;Buayaan&nbsp;harus&nbsp;berkelok-kelok.</p>\r\n<p><strong>Kata&nbsp;depan&nbsp;yang&nbsp;tepat&nbsp;untuk&nbsp;melengkapi&nbsp;paragraf&nbsp;&nbsp;tersebut&nbsp;adalah&nbsp;&hellip;.</strong></p>', 'di, di, ke, dari, ke', 'pada, di, ke, dari, ke', 'pada, ke, dari, dari, ke  ', 'di, ke, dari, dari, di', 'C', '', '', '2016-06-25 08:34:01', '2016-06-25 08:34:01'),
(211, 25, '<p><strong>Bacalah&nbsp;paragraf&nbsp;&nbsp;berikut&nbsp;&nbsp;dengan&nbsp;cermat!</strong></p>\r\n<p>Sungai&nbsp;di&nbsp;depan&nbsp;pabrik&nbsp;itu&nbsp;sangat&nbsp;tercemar.&nbsp;Jika&nbsp;kita&nbsp;memancing&nbsp;ikan&nbsp;di&nbsp;sungai&nbsp;itu,&nbsp;sama&nbsp;saja&nbsp;melakukan&nbsp;perbuatan&nbsp;menegakkan&nbsp;benang&nbsp;basah.</p>\r\n<p><strong>Peribahasa&nbsp;/&nbsp;ungkapan&nbsp;yang&nbsp;semakna&nbsp;dengan&nbsp;pernyataan&nbsp;di&nbsp;atas&nbsp;adalah&nbsp;&hellip;.</strong></p>', 'Bagai menggantang asap ', 'Menang jadi abu kalah jadi arang', 'Bagai rumah di tepi pantai', 'Bermain api panas, bermain air basah', 'A', '', '', '2016-06-25 08:38:50', '2016-06-25 08:38:50'),
(212, 25, '<p><strong>Kalimat&nbsp;penutup&nbsp;surat&nbsp;resmi&nbsp;yang&nbsp;paling&nbsp;tepas&nbsp;adalah&nbsp;&hellip;</strong></p>\r\n<p>&nbsp;</p>', 'Atas perhatiannya, kami ucapkan terima kasih sebesar-besarnya', 'Atas perhatiannya, kami menghaturkan rasa terima kasih yang besar.', 'Atas perhatian Bapak/Ibu, kami menyampaikan terima kasih.', 'Atas perhatian Bapak/Ibu, kami mengucapkan banyak-banyak terima kasih.', 'C', '', '', '2016-06-25 08:40:33', '2016-06-25 08:40:33'),
(213, 25, '<p><strong>Bacalah&nbsp;penggalan&nbsp;cerita&nbsp;&nbsp;dengan&nbsp;saksama!</strong></p>\r\n<p>Tidak&nbsp;lama.&nbsp;Dengan&nbsp;rasa&nbsp;penasaran,&nbsp;kucoba&nbsp;melirik&nbsp;orang-orang&nbsp;di&nbsp;sekelilingku.&nbsp;&nbsp;Di&nbsp;sebelah&nbsp;kiriku,&nbsp;seorang&nbsp;gadis&nbsp;berambut&nbsp;panjang.&nbsp;Sambil&nbsp;melirik,&nbsp;kuperhatikan&nbsp;dia.&nbsp;Rambutnya&nbsp;pirang,&nbsp;kulitnya&nbsp;kuning&nbsp;indah,&nbsp;matanya&nbsp;memandang&nbsp;sayu.</p>\r\n<p>Rasanya,&nbsp;aku&nbsp;mengenalnya.&nbsp;Tapi,&nbsp;di&nbsp;mana?&nbsp;Tiba&nbsp;&hellip;&nbsp;tiba&nbsp;&ldquo;Kampung&nbsp;Rambutan!&nbsp;Kampung&nbsp;Rambutan!&rdquo;</p>\r\n<p>&ldquo;Kiri!&rdquo;&nbsp;kataku.&nbsp;Aku&nbsp;turun.&nbsp;Debu&nbsp;bercampur&nbsp;asap&nbsp;beterbangan.</p>\r\n<p><strong>Sudut&nbsp;pandang&nbsp;yang&nbsp;digunakan&nbsp;pengarang&nbsp;dalam&nbsp;cerita&nbsp;tersebut&nbsp;adalah&nbsp;&hellip;.</strong></p>', 'orang pertama', 'orang kedua', 'orang ketiga', 'orang pertama dan ketiga', 'A', '', '', '2016-06-25 08:42:34', '2016-06-25 08:42:34'),
(214, 25, '<p><strong>Cermatilah&nbsp;puisi&nbsp;di&nbsp;bawah&nbsp;ini&nbsp;dengan&nbsp;saksama!</strong></p>\r\n<p>Satu&nbsp;kasihku</p>\r\n<p>Aku&nbsp;manusia</p>\r\n<p>Rindu&nbsp;rasa</p>\r\n<p>Rindu&nbsp;rupa</p>\r\n<p>Di&nbsp;mana&nbsp;engkau</p>\r\n<p>Rupa&nbsp;tiada</p>\r\n<p>Suara&nbsp;sayup</p>\r\n<p>Hanya&nbsp;kata&nbsp;merangkai&nbsp;hati</p>\r\n<p>(Amir&nbsp;Hamzah)</p>\r\n<p><strong>Tema&nbsp;puisi&nbsp;tersebut&nbsp;adalah&nbsp;&hellip;</strong></p>', 'kemanusiaan', 'kerinduan	', 'cinta remaja', 'kasih sayang', 'B', '', '', '2016-06-25 08:44:32', '2016-06-25 08:44:32'),
(215, 25, '<p><strong>Bacalah&nbsp;dengan&nbsp;cermat&nbsp;tabel&nbsp;&nbsp;berikut ini!</strong></p>\r\n<p><strong>Berdasarkan&nbsp;tabel&nbsp;tersebut,&nbsp;pernyataan&nbsp;di&nbsp;bawah&nbsp;ini&nbsp;yang&nbsp;kurang&nbsp;tepat&nbsp;adalah&nbsp;&hellip;.</strong></p>', 'Pasien yang berobat ke Puskesmas Sehat dari setiap kelurahan  selalu meningkat.', 'Pasien dari kelurahan Pekalipan  paling banyak berobat ke Puskesmas Sehat.', 'Peningkatan jumlah pasien yang paling tinggi pada bulan Oktober 2010 adalah dari Kelurahan Kesambi.', 'Jumlah pasien setiap kelurahan tidak sama.', 'A', 'gambar2-tabel.jpg', '', '2016-06-25 08:50:20', '2016-06-25 08:50:20'),
(216, 25, '<p><strong>Bacalah&nbsp;paragraf&nbsp;&nbsp;berikut&nbsp;dengan&nbsp;saksama!</strong></p>\r\n<p>Petani&nbsp;melihat&nbsp;sawah&nbsp;terhampar&nbsp;luas&nbsp;dengan&nbsp;padi&nbsp;kuning&nbsp;keemasan.&nbsp;Ia&nbsp;merasa&nbsp;bahagia&nbsp;karena&nbsp;keluarga&nbsp;di&nbsp;rumah&nbsp;tidak&nbsp;akan&nbsp;kekurangan&nbsp;bahan&nbsp;makanan&nbsp;dalam&nbsp;waktu&nbsp;satu&nbsp;tahun.&nbsp;Lain&nbsp;halnya&nbsp;dengan&nbsp;insinyur&nbsp;pertanian.&nbsp;Ia&nbsp;akan&nbsp;berpikir&nbsp;bahwa&nbsp;sawah&nbsp;subur&nbsp;karena&nbsp;intensifikasi&nbsp;lahan&nbsp;pertanian&nbsp;sudah&nbsp;berjalan&nbsp;baik.&nbsp;Objek&nbsp;sawah&nbsp;terhampar&nbsp;luas,&nbsp;oleh&nbsp;pelukis&nbsp;akan&nbsp;menjadi&nbsp;lukisan&nbsp;indah&nbsp;di&nbsp;atas&nbsp;kanvasnya.</p>\r\n<p>&hellip;.</p>\r\n<p><strong>Kesimpulan&nbsp;yang&nbsp;paling&nbsp;tepat&nbsp;sesuai&nbsp;paragraf&nbsp;&nbsp;tersebut&nbsp;adalah&nbsp;&hellip;.</strong></p>', 'Sawah sangat menentramkan  petani.', 'Insinyur pertanian akan bangga karena  petani sudah mau berintensifikasi.', 'Petani, insinyur, ahli pertanian, sangat menguasai apa yang dihadapinya.', 'Setiap orang memiliki pandangan berbeda ketika melihat satu objek, bergantung pada latar belakang kehidupan/profesinya.  ', 'D', '', '', '2016-06-25 08:52:46', '2016-06-25 08:52:46'),
(217, 25, '<p><strong>Bagian&nbsp;&nbsp;pembuka&nbsp;surat&nbsp;undangan&nbsp;&nbsp;yang&nbsp;benar&nbsp;adalah&nbsp;&hellip;</strong></p>\r\n<p>&nbsp;</p>', 'Bersama surat ini kami mengundang Saudara untuk menghadiri pertemuan besok pada ….', 'Mengharap kehadiran Saudara untuk pertemuan besok pada ….', 'Dengan ini kami mengundang Saudara untuk menghadiri pertemuan pada …', 'Sehubungan dengan hal ini kami mengundang Saudara untuk menghadiri pertemuan besok pada ….', 'C', '', '', '2016-06-25 08:54:46', '2016-06-25 08:54:46'),
(218, 25, '<p><strong>Kata&nbsp;bercetak&nbsp;miring&nbsp;yang&nbsp;bermakna&nbsp;peyorasi&nbsp;terdapat&nbsp;pada&nbsp;kalimat&nbsp;&hellip;</strong></p>', 'Apakah bapak sudah terdaftar sebagai pemilih dalam pemilu mendatang?', 'Adik sudah bekerja atau masih sekolah?', 'Saran Saudara akan dengan senang hati kami laksanakan.', 'Peran babu di rumah tangga bagi keluarga sibuk menjadi sangat penting.', 'D', '', '', '2016-06-25 08:56:36', '2016-06-25 08:56:36'),
(219, 25, '<p>&nbsp;Masalah&nbsp;pengangguran&nbsp;dewasa&nbsp;ini&nbsp;jangan&nbsp;dipandang&nbsp;dengan&nbsp;<strong><em>sebelah&nbsp;mata.</em></strong></p>\r\n<p><strong>Makna&nbsp;ungkapan&nbsp;dengan&nbsp;sebelah&nbsp;mata&nbsp;ialah&nbsp;&hellip;.</strong></p>', 'sedikit	', 'sepele', 'ringan ', 'curang  ', 'B', '', '', '2016-06-25 08:59:52', '2016-06-25 08:59:52'),
(220, 27, '<p>Hasil&nbsp;dari&nbsp;&nbsp;18&nbsp;&ndash;&nbsp;(&ndash;&nbsp;2&nbsp;+&nbsp;5&nbsp;)&nbsp;adalah&nbsp;...</p>', '– 25', '– 21	', '– 15', '15', 'D', '', '', '2016-06-26 03:08:59', '2016-06-26 03:08:59'),
(221, 27, '<p>Hasil&nbsp;dari&nbsp;&nbsp;&ndash;&nbsp;20&nbsp;+&nbsp;(&ndash;&nbsp;4&nbsp;+&nbsp;10&nbsp;)&nbsp;adalah&nbsp;..</p>', '-34', '-26', '-14', '14', 'C', '', '', '2016-06-26 03:10:00', '2016-06-26 03:10:00'),
(222, 27, '<p>Hasil&nbsp;dari&nbsp;&nbsp;&ndash;&nbsp;20&nbsp;&ndash;&nbsp;(&ndash;&nbsp;4&nbsp;&ndash;&nbsp;10&nbsp;)&nbsp;adalah&nbsp;..</p>', '-34', '-14', '-6', '6', 'A', '', '', '2016-06-26 03:11:46', '2016-06-26 03:11:46'),
(223, 27, '<p>Hasil&nbsp;dari&nbsp;&nbsp;&nbsp;20&nbsp;+&nbsp;(&ndash;&nbsp;4&nbsp;&ndash;&nbsp;10&nbsp;)&nbsp;adalah&nbsp;...</p>', '-34', '-14', '-6', '6', 'D', '', '', '2016-06-26 03:12:30', '2016-06-26 03:12:30'),
(224, 27, '<p>Hasil&nbsp;dari&nbsp;579&nbsp;x&nbsp;748 adalah&nbsp;...</p>', '463.062', '453.072', '443.082', '433.092', 'D', '', '', '2016-06-26 03:18:24', '2016-06-26 03:18:24'),
(225, 27, '<p>Hasil&nbsp;dari&nbsp;78&nbsp;x&nbsp;7348 adalah&nbsp;....</p>', '573.144', '563.154', '553.164', '543.174', 'A', '', '', '2016-06-26 03:19:23', '2016-06-26 03:19:23'),
(226, 27, '<p>Hasil&nbsp;dari&nbsp;&nbsp;41.125&nbsp;:&nbsp;47&nbsp;adalah&nbsp;....</p>', '845', '855', '865', '875', 'D', '', '', '2016-06-26 03:20:37', '2016-06-26 03:20:37'),
(227, 27, '<p>Hasil&nbsp;dari&nbsp;135.296&nbsp;:&nbsp;28&nbsp;adalah&nbsp;....</p>', '4.432', ' 4.532', '4.842', '4.832', 'D', '', '', '2016-06-26 03:21:38', '2016-06-26 03:24:11'),
(228, 27, '<p>Hasildari&nbsp;<img title="\\frac{10}{-0.5}" src="http://latex.codecogs.com/gif.latex?\\frac{10}{-0.5}" width="30" height="29" />&nbsp;&nbsp;adalah&nbsp;.....</p>', '-50', '-5', '-20', '-2', 'C', '', '', '2016-06-26 03:29:58', '2016-06-26 03:29:58'),
(229, 27, '<p>Hasildari&nbsp;<img title="\\frac{0.5}{-0.10}" src="http://latex.codecogs.com/gif.latex?\\frac{0.5}{-0.10}" width="40" height="33" />&nbsp;&nbsp;adalah&nbsp;.....</p>', '-50', '-5', '-0.4', '-4', 'B', '', '', '2016-06-26 03:31:22', '2016-06-26 03:31:22'),
(230, 27, '<p>Hasildari&nbsp;<img title="\\frac{10}{-0.25}" src="http://latex.codecogs.com/gif.latex?\\frac{10}{-0.25}" />&nbsp;&nbsp;adalah&nbsp;.....</p>', '-250', '-25', '-40', '-4', 'C', '', '', '2016-06-26 03:36:06', '2016-06-26 03:36:06'),
(231, 27, '<p>Hasildari&nbsp;&nbsp;<img title="\\frac{-0.25}{0.100}" src="http://latex.codecogs.com/gif.latex?\\frac{-0.25}{0.100}" />&nbsp;adalah&nbsp;.....</p>', '-2.5', '-25', '1.25', '-0.125', 'A', '', '', '2016-06-26 03:37:29', '2016-06-26 03:37:29'),
(232, 27, '<p>Hasil&nbsp;dari&nbsp;70,8&nbsp;x&nbsp;0,3&nbsp;adalah&nbsp;...</p>', '21,24', '22,24', '23,240', '24,24', 'A', '', '', '2016-06-26 03:38:53', '2016-06-26 03:38:53'),
(233, 27, '<p>Hasil&nbsp;dari&nbsp;&nbsp;5,68&nbsp;x&nbsp;0,45&nbsp;adalah&nbsp;....</p>', '25,556', '2,5660', '25,56', '2,556', 'D', '', '', '2016-06-26 03:48:54', '2016-06-26 03:48:54'),
(234, 27, '<p>Hasil&nbsp;dari&nbsp;16,415&nbsp;:&nbsp;0,7&nbsp;adalah&nbsp;...</p>', '24,45', '23,45', '2,445', '2,235', 'B', '', '', '2016-06-26 03:50:26', '2016-06-26 03:50:26'),
(235, 28, '<p>Di&nbsp;antara&nbsp;satuan-satuan&nbsp;berikut,&nbsp;yang&nbsp;termasuk&nbsp;ke&nbsp;dalam&nbsp;kelompok&nbsp;satuan&nbsp;MKS&nbsp;adalah&nbsp;....</p>', 'sekon, meter, dan jengkal', 'celcius, sekon, dan kilometer', 'meter, sekon, dan kilogram', 'kelvin, meter, dan gram', 'C', '', '', '2016-06-26 03:52:46', '2016-06-26 03:52:46'),
(236, 28, '<p>Larutan&nbsp;yang&nbsp;bersifat&nbsp;netral&nbsp;adalah&nbsp;...</p>', 'HCl', 'cuka dapur', 'air kopi', 'air sabun', 'C', '', '', '2016-06-26 03:53:43', '2016-06-26 03:53:43'),
(237, 28, '<p>Lambang&nbsp;untuk&nbsp;unsur&nbsp;Kalsium&nbsp;adalah&nbsp;...</p>', 'Ca', 'Ka', 'C', 'K', 'A', '', '', '2016-06-26 03:54:30', '2016-06-26 03:54:30'),
(238, 28, '<p>Di&nbsp;bawah&nbsp;ini&nbsp;termasuk&nbsp;ke&nbsp;dalam&nbsp;perubahan&nbsp;fisika,&nbsp;kecuali&nbsp;...</p>', 'kertas yang dibakar', 'air menjadi uap air', 'air menjadi es', 'es mencair', 'A', '', '', '2016-06-26 03:55:27', '2016-06-26 03:55:27'),
(239, 28, '<p>Pemasangan&nbsp;kawat&nbsp;listrik&nbsp;yang&nbsp;agak&nbsp;longgar&nbsp;dimaksudkan&nbsp;agar&nbsp;...</p>', 'dapat memuai', 'tidak putus ketika panas', 'tidak putus ketika dingin', 'aliran listrik lancar', 'C', '', '', '2016-06-26 03:56:22', '2016-06-26 03:56:22'),
(240, 28, '<p>Membeku&nbsp;dan&nbsp;mengembun&nbsp;adalah&nbsp;peristiwa&nbsp;perubahan&nbsp;zat&nbsp;yang&nbsp;disertai&nbsp;dengan&nbsp;...</p>', 'penerimaan kalor', 'perpindahan kalor', 'pergantian kalor', 'pelepasan kalor', 'D', '', '', '2016-06-26 03:57:16', '2016-06-26 03:57:16'),
(241, 28, '<p>Sebuah&nbsp;campuran&nbsp;disusun&nbsp;oleh&nbsp;dua&nbsp;zat&nbsp;yang&nbsp;memiliki&nbsp;perbedaan&nbsp;kelarutan&nbsp;dalam&nbsp;air.&nbsp;Cara&nbsp;yang&nbsp;paling&nbsp;tepat&nbsp;untuk&nbsp;memisahkan&nbsp;campuran&nbsp;tersebut&nbsp;&nbsp;adalah&nbsp;...</p>', 'filtrasi', 'distilasi', 'Ekstraksi', 'kromatografi', 'C', '', '', '2016-06-26 03:58:30', '2016-06-26 03:58:30'),
(242, 28, '<p>Yang&nbsp;merupakan&nbsp;ciri-ciri&nbsp;dari&nbsp;reaksi&nbsp;kimia&nbsp;adalah&nbsp;...</p>', 'terjadi perubahan massa', 'terjadi perubahan volum', 'terjadi perubahan warna', 'terjadi perubahan bentuk', 'C', '', '', '2016-06-26 03:59:25', '2016-06-26 03:59:25'),
(243, 28, '<p>Untuk&nbsp;memperoleh&nbsp;data&nbsp;mengenai&nbsp;tekstur&nbsp;kulit&nbsp;dan&nbsp;aroma&nbsp;buah&nbsp;mangga&nbsp;digunakan&nbsp;pasangan&nbsp;indera&nbsp;....</p>', 'indera penglihatan dan indera penciuman ', 'indera peraba dan indera penciuman', 'indera pendengaran dan indera peraba', 'semua indera', 'A', '', '', '2016-06-26 04:00:25', '2016-06-26 04:00:25'),
(244, 28, '<p>Berikut&nbsp;ini&nbsp;adalah&nbsp;hal-hal&nbsp;yang&nbsp;harus&nbsp;dipersiapkan&nbsp;sebelum&nbsp;melakukan&nbsp;pengamatan&nbsp;lapangan,&nbsp;kecuali&nbsp;....</p>', 'memakai sepatu', 'membaca petunjuk praktikum', 'memakai jas laboratorium', 'membawa makanan dan minuman', 'D', '', '', '2016-06-26 04:01:20', '2016-06-26 04:01:20');
INSERT INTO `tb_questions` (`id`, `subject_id`, `question`, `a_choice`, `b_choice`, `c_choice`, `d_choice`, `correct_answer`, `picture`, `audio`, `created_at`, `updated_at`) VALUES
(245, 28, '<p>Ketika&nbsp;kita&nbsp;berada&nbsp;di&nbsp;dalam&nbsp;mobil&nbsp;yang&nbsp;sedang&nbsp;melaju,&nbsp;rumah-rumah&nbsp;di&nbsp;pinggir&nbsp;jalan&nbsp;seolah-olah&nbsp;bergerak&nbsp;berlawanan&nbsp;arah&nbsp;dengan&nbsp;laju&nbsp;mobil.&nbsp;Gerak&nbsp;semacam&nbsp;ini&nbsp;disebut&nbsp;...</p>', 'gerak semu', 'gerak relatif', 'gerak nyata', 'gerak lurus', 'A', '', '', '2016-06-26 04:02:19', '2016-06-26 04:02:19'),
(246, 28, '<p>Agar&nbsp;tidak&nbsp;punah,&nbsp;makhluk&nbsp;hidup&nbsp;memiliki&nbsp;kemampuan&nbsp;untuk&nbsp;....</p>', 'berkembang biak', 'beradaptasi', 'membela diri', 'respons terhadap rangsang', 'A', '', '', '2016-06-26 04:03:12', '2016-06-26 04:03:12'),
(247, 28, '<p>Zat&nbsp;makanan&nbsp;yang&nbsp;berfungsi&nbsp;mengganti&nbsp;selsel&nbsp;yang&nbsp;rusak&nbsp;adalah&nbsp;....</p>', 'Karbohidrat', 'Lemak', 'protein', 'vitamin dan mineral', 'C', '', '', '2016-06-26 04:04:39', '2016-06-26 04:04:39'),
(248, 28, '<p>Sistem&nbsp;pernapasan&nbsp;dibentuk&nbsp;oleh&nbsp;organ-organ&nbsp;di&nbsp;bawah&nbsp;ini,&nbsp;kecuali&nbsp;....</p>', 'paru-paru', 'bronkus', 'hidung', 'jantung', 'D', '', '', '2016-06-26 04:05:18', '2016-06-26 04:05:18'),
(249, 28, '<p>Organisme&nbsp;yang&nbsp;berperan&nbsp;sebagai&nbsp;produsen&nbsp;di&nbsp;dalam&nbsp;ekosistem&nbsp;air&nbsp;adalah&nbsp;....</p>', 'bakteri', 'fitoplankton', 'plankton', 'zooplankton', 'B', '', '', '2016-06-26 04:06:07', '2016-06-26 04:06:07'),
(250, 29, '<p>Mobil&nbsp;&ndash;&nbsp;bensin&nbsp;=&nbsp;pelari&nbsp;&ndash;</p>', 'Makanan', 'Sepatu', 'Kaos', 'Lintasan', 'A', '', '', '2016-06-26 04:11:53', '2016-06-26 04:11:53'),
(251, 29, '<p>Dingin&nbsp;&ndash;selimut&nbsp;=&nbsp;hujan&nbsp;&ndash;</p>', 'Air', 'Payung', 'Dingin', 'Basah', 'B', '', '', '2016-06-26 04:12:46', '2016-06-26 04:12:46'),
(252, 29, '<p>Kepala&nbsp;&ndash;&nbsp;pusing&nbsp;=&nbsp;perut&nbsp;&ndash;</p>', 'Batuk', 'Pilek ', 'Mules', 'Buncit', 'C', '', '', '2016-06-26 04:13:32', '2016-06-26 04:13:32'),
(253, 29, '<p>2&nbsp;-&nbsp;6&nbsp;&ndash;&nbsp;18&nbsp;-54&nbsp;-&nbsp;&hellip;&hellip;&hellip;&hellip;&hellip;.&nbsp;&ndash;&nbsp;486</p>', '166', '165	', '164', '162', 'D', '', '', '2016-06-26 04:14:20', '2016-06-26 04:14:20'),
(254, 29, '<p>16,&nbsp;8,&nbsp;4,&nbsp;2,&nbsp;1,&nbsp;&frac12;,&nbsp;&hellip;&hellip;&hellip;,&nbsp;</p>', '1/4', '1/2', '1/3', '0', 'A', '', '', '2016-06-26 04:15:20', '2016-06-26 04:15:20'),
(255, 29, '<p>6,&nbsp;3/8&nbsp;dari&nbsp;40&nbsp;%&nbsp;adalah&nbsp;&hellip;&hellip;&hellip;.</p>', '0,15', '0,11', '16 %', '15,5 %', 'A', '', '', '2016-06-26 04:16:15', '2016-06-26 04:16:15'),
(256, 29, '<p>19&nbsp;adalah&nbsp;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;.&nbsp;persennya&nbsp;dari&nbsp;380</p>', '0,5 %', '5 %', '0,05 %', '5,5 %', 'B', '', '', '2016-06-26 04:17:10', '2016-06-26 04:17:10'),
(257, 29, '<p>Sebagian&nbsp;siswa&nbsp;SDN&nbsp;02&nbsp;suka&nbsp;baso,&nbsp;semua&nbsp;siswa&nbsp;SDN&nbsp;02&nbsp;suka&nbsp;soto,&nbsp;jadi&nbsp;&hellip;&hellip;&hellip;</p>', 'Siswa SDN 02 yang suka baso pasti juga suka soto', 'Siswa SDN 02 yang tidak suka soto, suka baso', 'Belum tentu semua siswa SDN 02 yang tidak suka baso, suka soto', 'Siswa SDN 02 yang suka soto pastilah suka baso', 'A', '', '', '2016-06-26 04:18:05', '2016-06-26 04:18:05'),
(258, 29, '<p>Seri&nbsp;huruf&nbsp;:&nbsp;a,&nbsp;c,&nbsp;f,&nbsp;j,&nbsp;o,&nbsp;selanjutnya&nbsp;adalah&nbsp;:</p>', 'P', 'T', 'V', 'U', 'D', '', '', '2016-06-26 04:19:12', '2016-06-26 04:19:12'),
(259, 29, '<p>Yang&nbsp;tidak&nbsp;mampu&nbsp;dalam&nbsp;kelompoknya&nbsp;adalah&nbsp;&hellip;&hellip;&hellip;</p>', 'Paus', 'Manusia ', 'Kera', 'Lumba – lumba ', 'B', '', '', '2016-06-26 04:20:03', '2016-06-26 04:20:03'),
(260, 29, '<p>Carilah&nbsp;lawan&nbsp;kata,&nbsp;imun&nbsp;&gt;&lt;&nbsp;&hellip;&hellip;&hellip;.</p>', 'Payah', 'Rapuh', 'Lelah ', 'Kebal ', 'B', '', '', '2016-06-26 04:20:53', '2016-06-26 04:20:53'),
(261, 29, '<p>Hubungan&nbsp;kata&nbsp;</p>\r\n<p>Pizza&nbsp;:&nbsp;gandum,&nbsp;adalah&nbsp;&hellip;&hellip;&hellip;.</p>', 'Rumah – tukang ', 'Genteng – tanah liat ', 'Patung – pemahat ', 'Gambar – pelukis', 'B', '', '', '2016-06-26 04:22:05', '2016-06-26 04:22:05'),
(262, 29, '<p>216&nbsp;x&nbsp;0,&nbsp;875&nbsp;=</p>', '188', '198', '209', '189', 'D', '', '', '2016-06-26 04:23:32', '2016-06-26 04:23:32'),
(263, 29, '<p>Sebagian&nbsp;orang&nbsp;yang&nbsp;berminat&nbsp;menjadi&nbsp;politikus&nbsp;hanya&nbsp;ingin&nbsp;harta&nbsp;dan&nbsp;tahta,&nbsp;rosyid&nbsp;tidak&nbsp;berminat&nbsp;menjadi&nbsp;politikus</p>', 'Rosyid tidak ingin harta dan tahta', 'Tahta bukanlah keinginan rosyid, tapi harta mungkin ya', 'Rosyid ingin tahta tapi tidak berminat menjadi politikus', 'Tidak dapat ditarik kesimpulan', 'D', '', '', '2016-06-26 04:24:28', '2016-06-26 04:24:28'),
(264, 29, '<p>Volume&nbsp;ember&nbsp;jika&nbsp;penuh&nbsp;adalah&nbsp;42,5&nbsp;liter,&nbsp;namun&nbsp;hanya&nbsp;terisi&nbsp;3/5&nbsp;saja&nbsp;saat&nbsp;ini&nbsp;dan&nbsp;diambil&nbsp;lagi&nbsp;oleh&nbsp;andi&nbsp;sehingga&nbsp;kini&nbsp;hanya&nbsp;terisi&nbsp;1/5&nbsp;saja,&nbsp;berapakah&nbsp;yang&nbsp;diambil&nbsp;oleh&nbsp;andi&nbsp;?</p>', '17 liter', '8,5 liter', '17,5 liter', '8 liter ', 'A', '', '', '2016-06-26 04:25:12', '2016-06-26 04:25:12'),
(265, 30, '<p>Hasil&nbsp;dari&nbsp;(&nbsp;180&nbsp;:&nbsp;5&nbsp;)&nbsp;+&nbsp;(&nbsp;15&nbsp;x&nbsp;4&nbsp;)&nbsp;&nbsp;adalah</p>', '36', '72', '96', '100', 'C', '', '', '2016-06-26 04:28:43', '2016-06-26 04:28:43'),
(266, 30, '<p>Seorang&nbsp;pedagang&nbsp;membeli&nbsp;persediaan&nbsp;barang&nbsp;dagangannya&nbsp;yaitu&nbsp;buah-buahan&nbsp;5&nbsp;keranjang&nbsp;apel.&nbsp;Setiap&nbsp;keranjang&nbsp;berisi&nbsp;200&nbsp;buah&nbsp;apel.&nbsp;Apel&nbsp;tersebut&nbsp;dimasukkan&nbsp;kedalam&nbsp;50&nbsp;kantong&nbsp;plastik&nbsp;sama&nbsp;banyak.&nbsp;Banyaknya&nbsp;buah&nbsp;apel&nbsp;dalam&nbsp;setiap&nbsp;kantong&nbsp;plastik&nbsp;adalah&nbsp;&hellip;</p>', '15	buah', '20 buah', '25 buah', '37 buah', 'B', '', '', '2016-06-26 04:29:34', '2016-06-26 04:29:34'),
(267, 30, '<p>Jarak&nbsp;Jakarta-Bandung&nbsp;pada&nbsp;peta&nbsp;adalah&nbsp;10cm,&nbsp;jarak&nbsp;sesungguhnya&nbsp;150&nbsp;km.&nbsp;Skala&nbsp;peta&nbsp;tersebut&nbsp;adalah</p>', '1 :  1.500	', '1 : 15.000', '1 : 150.000', '1 : 1.500.000', 'D', '', '', '2016-06-26 04:30:30', '2016-06-26 04:30:30'),
(268, 30, '<p>Fachrie&nbsp;berangkat&nbsp;sekolah&nbsp;naik&nbsp;sepeda&nbsp;dngan&nbsp;kecepatan&nbsp;rata-rata&nbsp;15km/jam.&nbsp;Jarak&nbsp;dari&nbsp;rumah&nbsp;fachrie&nbsp;ke&nbsp;sekolah&nbsp;adalah&nbsp;5&nbsp;km.&nbsp;Berapa&nbsp;lama&nbsp;waktu&nbsp;yang&nbsp;di&nbsp;perlukan&nbsp;Andi&nbsp;k&nbsp;sekolah&nbsp;?</p>', '15 menit', '19 menit	', '20 menit', '25 menit', 'C', '', '', '2016-06-26 04:31:33', '2016-06-26 04:31:33'),
(269, 30, '<p>Sebuah&nbsp;lemari&nbsp;dibeli&nbsp;dengan&nbsp;harga&nbsp;Rp.&nbsp;1.750.000,00.&nbsp;Kemudian&nbsp;dijual&nbsp;dengan&nbsp;harga&nbsp;Rp.&nbsp;2.100.000,00.&nbsp;Hitung&nbsp;presentase&nbsp;keuntungan&nbsp;yang&nbsp;diperoleh&nbsp;dari&nbsp;penjualan&nbsp;lemari&nbsp;tersebut&nbsp;!</p>', '20%', '10%', '200%', '2%', 'A', '', '', '2016-06-26 04:33:58', '2016-06-26 04:33:58'),
(270, 31, '<p>Yang&nbsp;tidak&nbsp;termasuk&nbsp;alat&nbsp;komunikasi&nbsp;tertulis&nbsp;adalah&nbsp;......</p>', 'Surat', 'Telegram', 'Kartu pos', 'Telepon', 'D', '', '', '2016-06-26 04:36:31', '2016-06-26 04:36:31'),
(271, 31, '<p>Merupakan&nbsp;bagian&nbsp;penting&nbsp;pada&nbsp;sebuah&nbsp;komputer&nbsp;seperti&nbsp;halnya&nbsp;otak&nbsp;pada&nbsp;manusia&nbsp;yang&nbsp;berfungsi&nbsp;sebagai&nbsp;pengolah&nbsp;informasi&nbsp;disebut.....</p>', 'CPU', 'Monitor', 'Mouse', 'Printer', 'A', '', '', '2016-06-26 04:37:27', '2016-06-26 04:37:27'),
(272, 31, '<p>Sebagai&nbsp;bahan&nbsp;pertimbangan&nbsp;untuk&nbsp;&nbsp;melamar&nbsp;kerja&nbsp;,&nbsp;dokumen&nbsp;yang&nbsp;tidak&nbsp;boleh&nbsp;dilampirkan&nbsp;adalah&nbsp;<strong><em>&nbsp;</em></strong>......</p>', 'Daftar Riwayat Hidup', 'Kurikulum sekolah', 'Surat kesehatan', 'Surat berkelakuan baik', 'B', '', '', '2016-06-26 04:38:26', '2016-06-26 04:38:26'),
(273, 31, '<p>Yang&nbsp;bukan&nbsp;termasuk&nbsp;alat-alat&nbsp;perlindungan&nbsp;pribadi&nbsp;pada&nbsp;perusahaan&nbsp;adalah&nbsp;........</p>', 'Pakaian kerja', 'Alat pelindung tangan', 'Alat pelindung hidung', 'Alat pelindung rambut', 'D', '', '', '2016-06-26 04:41:14', '2016-06-26 04:41:14'),
(274, 31, '<p>Frustasi,&nbsp;pendiam,&nbsp;tertutup,&nbsp;dan&nbsp;emosi&nbsp;berlebihan&nbsp;termasuk&nbsp;ketidakseimbangan&nbsp;dalam&nbsp;</p>', 'Stres mental', 'Stres fisik', 'Psikologis', 'Kemampuan fisik', 'C', '', '', '2016-06-26 04:41:58', '2016-06-26 04:41:58'),
(275, 32, '<p>Below&nbsp;is&nbsp;a&nbsp;tourism&nbsp;object&nbsp;in&nbsp;west&nbsp;java, it is .....................</p>', 'Kaliurang', 'Dieng ', 'Taman Sari', 'Ciater hot spring', 'D', '', '', '2016-06-26 04:46:05', '2016-06-26 04:46:05'),
(276, 32, '<p>Borobudur&nbsp;temple&nbsp;is&nbsp;a&nbsp;magnificent&nbsp;temple&nbsp;in&nbsp;&nbsp;the&nbsp;world,&nbsp;located&nbsp;in&nbsp;....</p>', 'Magelang', 'Klaten', 'Solo', 'Purworejo', 'A', '', '', '2016-06-26 04:46:37', '2016-06-26 04:46:37'),
(277, 32, '<p>The&nbsp;souvenir&nbsp;from&nbsp;Cirebon&nbsp;is...</p>', 'Empal Gentong', 'Nasi Lengko', 'Docang', 'Batik', 'D', '', '', '2016-06-26 04:47:14', '2016-06-26 04:47:14'),
(278, 32, '<p>Below&nbsp;is&nbsp;domestic&nbsp;route&nbsp;of&nbsp;airline&nbsp;route..</p>', 'Jakarta – Kualalumpur', 'Jakarta – Serawak', 'Jakarta – Kendari', 'Jakarta – Timorleste', 'C', '', '', '2016-06-26 04:48:12', '2016-06-26 04:48:12'),
(279, 32, '<p>The&nbsp;original&nbsp;people&nbsp;from&nbsp;Australia&nbsp;is&nbsp;...</p>', 'Aborigin', 'Maori', 'aino', 'mongol', 'A', '', '', '2016-06-26 04:48:54', '2016-06-26 04:48:54'),
(280, 33, '<p>Page&nbsp;Layout&nbsp;terdiri&nbsp;atas&nbsp;beberapa&nbsp;hal&nbsp;tersebut&nbsp;di&nbsp;bawah&nbsp;ini,&nbsp;<strong><em>kecuali</em></strong>&nbsp;&hellip;&hellip;&hellip;</p>', 'Margin', 'Page  Number	', 'Columns', 'Orientation', 'C', '', '', '2016-06-26 04:50:34', '2016-06-26 04:50:34'),
(281, 33, '<p>Jika&nbsp;kalian&nbsp;akan&nbsp;membuat&nbsp;presentasi,&nbsp;maka&nbsp;harus&nbsp;membuka&nbsp;&nbsp;Software&nbsp;&nbsp;&nbsp;&hellip;</p>', 'Microsoft Access', 'Microsoft Powerpoint', 'Adobe Photoshop', 'Microsoft excel', 'B', '', '', '2016-06-26 04:52:08', '2016-06-26 04:52:08'),
(282, 33, '<p>Program&nbsp;untuk&nbsp;menjelajah&nbsp;internet,&nbsp;mengakses&nbsp;situs-situs&nbsp;adalah&nbsp;:</p>', 'FTP', 'Outlook Express', 'Browser', 'IRC', 'C', '', '', '2016-06-26 04:52:47', '2016-06-26 04:52:47'),
(283, 33, '<p>Menu&nbsp;perintah&nbsp;yang&nbsp;digunakan&nbsp;untuk&nbsp;menyalin&nbsp;<strong><em>File&nbsp;</em></strong>atau<strong><em>&nbsp;Folder</em></strong>&nbsp;adalah&nbsp;&hellip;.</p>', 'Format', 'Delete', 'Rename', 'Copy', 'D', '', '', '2016-06-26 04:53:26', '2016-06-26 04:53:26'),
(284, 33, '<p>Yang&nbsp;termasuk&nbsp;pada&nbsp;warna&nbsp;primer&nbsp;adalah&nbsp;&hellip;&hellip;&hellip;&hellip;.</p>', 'Merah, Kuning, Biru', 'Ungu, Abu-abu, Jingga', 'Kuning, Hijau, Merah', 'Merah, Hitam, Putih', 'A', '', '', '2016-06-26 04:54:12', '2016-06-26 04:54:12'),
(285, 34, '<p>Periklanan&nbsp;....</p>', 'Distribusi', 'Pemasaran', 'Advertising', 'Marketing', 'C', '', '', '2016-06-26 04:55:52', '2016-06-26 04:55:52'),
(286, 34, '<p>Kewirausahaan&nbsp;....</p>', 'Enterpreneurship', 'Infotainment', 'Ownership', 'Relationship', 'A', '', '', '2016-06-26 04:56:35', '2016-06-26 04:56:35'),
(287, 34, '<p>Orang-orang&nbsp;yang&nbsp;menyibukan&nbsp;diri&nbsp;untuk&nbsp;mendapatkan&nbsp;keuntungan&nbsp;...</p>', 'Perusahaan ', 'Bisnis', 'Industri', 'Pasar', 'B', '', '', '2016-06-26 04:57:12', '2016-06-26 04:57:12'),
(288, 34, '<p>Tujuan&nbsp;perusahaan&nbsp;....</p>', 'Menghasilkan laba', 'Menghasilkan produk', 'Mencari konsumen', 'Menyenangkan konsumen', 'A', '', '', '2016-06-26 04:58:00', '2016-06-26 04:58:00'),
(289, 34, '<p>Memperkenalkan&nbsp;produk&nbsp;kepada&nbsp;konsumen&nbsp;...</p>', 'Distribusi', 'Pemasaran', 'Promosi', 'Marketing', 'C', '', '', '2016-06-26 04:58:49', '2016-06-26 04:58:49'),
(290, 35, '<p>Kepanjangan&nbsp;daei&nbsp;SBPU&nbsp;adalah&nbsp;.&nbsp;.&nbsp;</p>', 'Surat Bukti Peminjaman Utang', 'Surat Berharga Peminjaman Uang', 'Surat Berharga Pasar Uang', 'Surat Berharga  Pasar Utang', 'C', '', '', '2016-06-26 05:00:27', '2016-06-26 05:00:27'),
(291, 35, '<p>Kurs&nbsp;yang&nbsp;diperlakukan&nbsp;apabila&nbsp;pedagang&nbsp;valas&nbsp;melakukan&nbsp;penjual&nbsp;valas.&nbsp;Merupakan&nbsp;pengertian&nbsp;dari&nbsp;.&nbsp;.&nbsp;</p>', 'Kurs jual', 'Kurs beli', 'Kurs saham', 'Kurs bursa', 'A', '', '', '2016-06-26 05:01:20', '2016-06-26 05:01:20'),
(292, 35, '<p>Kamu&nbsp;ingin&nbsp;membawa&nbsp;Sin$&nbsp;3.000,&nbsp;maka&nbsp;kamu&nbsp;harus&nbsp;mengeluarkan&nbsp;uang&nbsp;.&nbsp;.&nbsp;</p>', 'Rp 14.595,01', 'Rp 15.595,010', 'Rp 16.595,010', 'Rp 17.595,010', 'C', '', '', '2016-06-26 05:02:08', '2016-06-26 05:02:08'),
(293, 35, '<p>Sepulang&nbsp;dari&nbsp;Singapura,&nbsp;kamu&nbsp;masih&nbsp;memiliki&nbsp;sisa&nbsp;Sin$&nbsp;10.&nbsp;Maka&nbsp;berapa&nbsp;banyak&nbsp;rupiah&nbsp;yang&nbsp;bias&nbsp;kamu&nbsp;beli&nbsp;.&nbsp;.&nbsp;</p>', '57.736,50', '57.736,40', '57.736,30', '57.736,20', 'D', '', '', '2016-06-26 05:03:01', '2016-06-26 05:03:01'),
(294, 35, '<p>Suatu&nbsp;perjanjian&nbsp;di&nbsp;mana&nbsp;dua&nbsp;pihak&nbsp;sepakat&nbsp;untuk&nbsp;saling&nbsp;tukar&nbsp;menukar&nbsp;pembayar&nbsp;uang&nbsp;disebut&nbsp;.&nbsp;.&nbsp;.</p>', 'Opsi', 'Swap', 'Future', 'Forward', 'B', '', '', '2016-06-26 05:03:47', '2016-06-26 05:03:47');

-- --------------------------------------------------------

--
-- Table structure for table `tb_smp`
--

CREATE TABLE IF NOT EXISTS `tb_smp` (
`idSMP` int(11) NOT NULL,
  `nama_smp` varchar(100) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=106 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_smp`
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
-- Table structure for table `tb_subjects`
--

CREATE TABLE IF NOT EXISTS `tb_subjects` (
`id` int(10) unsigned NOT NULL,
  `kejuruan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_subjects`
--

INSERT INTO `tb_subjects` (`id`, `kejuruan`, `name`, `type`, `active`, `created_at`, `updated_at`) VALUES
(25, 'Semua', 'Bahasa Indonesia', 'Akademik', 1, '2016-06-24 22:36:33', '2016-06-24 22:51:26'),
(26, 'Semua', 'Bahasa Inggris', 'Akademik', 1, '2016-06-24 22:37:49', '2016-06-24 22:37:49'),
(27, 'Semua', 'Matematika', 'Akademik', 1, '2016-06-24 22:38:09', '2016-06-24 22:38:09'),
(28, 'Semua', 'IPA', 'Akademik', 1, NULL, NULL),
(29, 'Semua', 'Psikotes', 'Psikotes', 1, NULL, NULL),
(30, 'Akuntansi', 'Akuntansi', 'Kejuruan', 1, '2016-06-24 22:39:17', '2016-06-24 22:39:17'),
(31, 'Administrasi Perkantoran', 'Adm-Perkantoran', 'Kejuruan', 1, '2016-06-24 22:43:39', '2016-06-24 22:43:39'),
(32, 'Usaha Perjalanan Wisata', 'Pariwisata', 'Kejuruan', 1, '2016-06-24 22:44:04', '2016-06-24 22:44:04'),
(33, 'Multimedia', 'Multimedia', 'Kejuruan', 1, '2016-06-24 22:44:24', '2016-06-24 22:44:24'),
(34, 'Pemasaran', 'Pemasaran', 'Kejuruan', 1, '2016-06-24 22:44:50', '2016-06-24 22:44:50'),
(35, 'Perbankan', 'Perbankan', 'Kejuruan', 1, '2016-06-24 22:45:13', '2016-06-24 22:45:13');

-- --------------------------------------------------------

--
-- Table structure for table `tb_users`
--

CREATE TABLE IF NOT EXISTS `tb_users` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pil_daftar` varchar(50) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `verified` enum('Yes','No') NOT NULL,
  `role` tinyint(1) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=354 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_users`
--

INSERT INTO `tb_users` (`id`, `name`, `email`, `pil_daftar`, `username`, `password`, `verified`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(25, 'Administrator', 'admin@mail.com', '', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'Yes', 1, 'NDN9XSBN7xd7LGyZAqsyPceQBh5LORA38bunRU67kKpVVHHTYHLOQRaqgl3V', '2016-06-20 03:48:04', '2016-06-26 07:13:10'),
(77, 'Operator 1', 'operator@mail.com', '', 'operatorsatu', 'e10adc3949ba59abbe56e057f20f883e', 'Yes', 1, 'DnAkuu4LKRWxDOfx9w6Kq9apSDtKWehBXwrUdpnxJtNAzWWSkbJe9yTzYepM', '2016-06-24 20:00:25', '2016-06-25 09:11:12'),
(78, 'Operator 2', 'operator@mail.com', '', 'operatordua', 'e10adc3949ba59abbe56e057f20f883e', 'Yes', 1, NULL, '2016-06-24 20:00:52', '2016-06-24 20:00:52'),
(79, 'Operator 3', 'operator@mail.com', '', 'operatortiga', 'e10adc3949ba59abbe56e057f20f883e', 'Yes', 1, NULL, '2016-06-24 20:01:22', '2016-06-24 20:01:22'),
(80, 'Operator 4', 'operator@mail.com', '', 'operatorempat', 'e10adc3949ba59abbe56e057f20f883e', 'Yes', 1, NULL, '2016-06-24 20:01:50', '2016-06-24 20:01:50'),
(81, 'HANIFAH', 'Hanicandrakiranah@yahoo.com', 'Afirmasi', 'HANI', 'dcce71bfd9a878b196542f2ff6569caf', 'No', 0, NULL, '2016-06-27 01:23:18', '0000-00-00 00:00:00'),
(82, 'HANIFAH', 'Hanicandrakiranah@yahoo.com', 'Afirmasi', 'HANIFAH', 'dcce71bfd9a878b196542f2ff6569caf', 'Yes', 0, NULL, '2016-06-27 01:24:40', '0000-00-00 00:00:00'),
(83, 'VIVI LUTHFIYYAH', 'vivicynkchabateuyy@yahoo.co.id', 'PGRI', 'vivi luthfiyyah II', '5fbb227cd21e64b0816d8f50434cbe9e', 'No', 0, NULL, '2016-06-27 01:32:06', '0000-00-00 00:00:00'),
(84, 'Nina Riyani', 'ninariyani30@gmail.com', 'Afirmasi', 'Nina Riyani', '8aedaa686272007f4db7ddfe6c83ae7b', 'Yes', 0, NULL, '2016-06-27 01:34:40', '0000-00-00 00:00:00'),
(85, 'VIVI LUTHFIYYAH ', 'vivicynkchabateuyy@yahoo.co.id', 'PGRI', 'vivicynkchabateuyy@yahoo.co.id', '5fbb227cd21e64b0816d8f50434cbe9e', 'Yes', 0, NULL, '2016-06-27 01:34:41', '0000-00-00 00:00:00'),
(86, 'Nur fauzan pangestu', 'Susanqu383@gmail.com', 'Prestasi', 'susan', '2f6b11eb72762c6079b5728b2d5aab7b', 'No', 0, NULL, '2016-06-27 01:34:43', '0000-00-00 00:00:00'),
(87, 'Alfani', '089501342514', 'Afirmasi', '089501342514', 'b9a01a9a4990df67c3fb8057d1c67f42', 'Yes', 0, NULL, '2016-06-27 01:38:34', '0000-00-00 00:00:00'),
(88, 'Siti Rahayu', 'Khalifahrahayu@yahoo.co.id', 'Afirmasi', 'Rahayy', 'b5eaabb76ecc6599aeaf553ecf398801', 'Yes', 0, NULL, '2016-06-27 01:39:25', '0000-00-00 00:00:00'),
(89, '  INDRIYANI', '089677446453', 'Afirmasi', 'INDRIYANI', 'a24745e4f240ab47181933a6f683b1c1', 'Yes', 0, NULL, '2016-06-27 01:40:37', '0000-00-00 00:00:00'),
(90, 'NELLA LUTFIYAH', '089672732294', 'Afirmasi', 'NELLA', 'a24745e4f240ab47181933a6f683b1c1', 'Yes', 0, NULL, '2016-06-27 01:41:14', '0000-00-00 00:00:00'),
(91, 'Nur Rahmah ', 'nurrahmah169@gmail.com', 'Afirmasi', 'Nur Rahmah ', 'b8145cfc5211dfb3789c0c34c437e287', 'Yes', 0, NULL, '2016-06-27 01:42:17', '0000-00-00 00:00:00'),
(92, 'METRI LISA YOLANDARI', 'METRILISA1@GMAIL.COM', 'Afirmasi', 'METRIYOLANDARI', '6ac66f1a90ba8a11b00c01fc46824674', 'No', 0, NULL, '2016-06-27 01:46:39', '0000-00-00 00:00:00'),
(93, 'Hagi Ramlan', 'hagiramlan@gmail.com', 'Afirmasi', 'Hagi Rmlan', '5d48d0d8bb276d1203f5fadf9c09c891', 'No', 0, NULL, '2016-06-27 01:49:32', '0000-00-00 00:00:00'),
(94, 'Nur Fauzan Pangestu', '08986127648', 'Prestasi', 'Nur Fauzan', '2b9b94c7ef635a0ae4705726eba3f993', 'Yes', 0, NULL, '2016-06-27 01:51:00', '0000-00-00 00:00:00'),
(95, 'yoga sugiro', 'yogas@gmail.com', '', 'yogas38', '57a9bca748c4ebb2fadb54f82ac2e337', 'Yes', 0, NULL, '2016-06-27 01:51:13', '0000-00-00 00:00:00'),
(96, 'Hagi Ramlan', 'Hagiramlan@gmail.com', 'Afirmasi', 'Hagi Ramlan', 'e10afc3c79f7f2ca03e3a65606403e3a', 'No', 0, NULL, '2016-06-27 01:52:34', '0000-00-00 00:00:00'),
(97, 'Hagi ramlan ', 'Hagiramlan@gmail.com', 'Afirmasi', 'hagiramlan', '155d28dfc44675d9353ab94110118be3', 'No', 0, NULL, '2016-06-27 01:54:33', '0000-00-00 00:00:00'),
(98, 'leli nurlita', 'lelinurlita99.gmail.com', 'Afirmasi', 'leli nurlita', '71216d66131902ceb723147752a1edc5', 'No', 0, NULL, '2016-06-27 01:55:04', '0000-00-00 00:00:00'),
(99, 'Leli nur;ota', '089685456802', 'Afirmasi', 'lelii nurliita', '0468e6e27d8cbfa296312b563371639e', 'No', 0, NULL, '2016-06-27 01:58:03', '0000-00-00 00:00:00'),
(100, 'hagi ramlan', 'hagiramlan@gmail.com', 'Afirmasi', 'Hagi R', '80cbdd33f673564fdb8ca633888697d1', 'Yes', 0, NULL, '2016-06-27 01:58:30', '0000-00-00 00:00:00'),
(101, 'siti nurjanah', 'sitinurjanah24@yahoo.com', 'Afirmasi', 'sitinurjanah24@yahoo.com', '3cfd6a4902a2baa47a22b4c35b5e936c', 'Yes', 0, NULL, '2016-06-27 02:01:07', '0000-00-00 00:00:00'),
(102, 'Rifa Dila', 'Rifadila26@gmail.com', 'Afirmasi', 'Rifadila', '8074c6ba39f4622d21dbf6dab05ebce1', 'Yes', 0, NULL, '2016-06-27 02:01:20', '0000-00-00 00:00:00'),
(103, 'sugiarti', '', 'Afirmasi', 'sugiarti', '9c721b544e577c85f7e0d19b59824e12', 'Yes', 0, NULL, '2016-06-27 02:02:19', '0000-00-00 00:00:00'),
(104, 'metri lisa yolandari', 'metrilisa1@gmail.com', 'Afirmasi', 'metrilisa', '78fcfd3497b1906193443003bab9d281', 'Yes', 0, NULL, '2016-06-27 02:02:27', '0000-00-00 00:00:00'),
(105, 'putri', '', 'Afirmasi', 'putri', '6cdc8809a7b02c110247530808501818', 'Yes', 0, NULL, '2016-06-27 02:10:54', '0000-00-00 00:00:00'),
(106, 'JUJU JULEHA', 'Julaehajuju23@gmail.com', 'Afirmasi', 'juju', 'd2463e3c7c9fd76a5744fc3c8d9bdd83', 'Yes', 0, NULL, '2016-06-27 02:11:58', '0000-00-00 00:00:00'),
(107, 'leli nurlita', '', 'Afirmasi', 'lelinurlita', 'ba2f570a2c7c55506f5737d3ae3aff42', 'Yes', 0, NULL, '2016-06-27 02:14:01', '0000-00-00 00:00:00'),
(108, 'YUNIKE WIJAYANTI', 'YUNIKEWIJAYANTI042', 'Prestasi', 'YUNIKE', 'd41d8cd98f00b204e9800998ecf8427e', 'No', 0, NULL, '2016-06-27 02:15:01', '0000-00-00 00:00:00'),
(109, 'lita putri kirani ', 'litaputri.9b@gmail.com', 'Afirmasi', 'lita putri ', '9e0d6b6b676adda1aa748e49dbdd00c4', 'Yes', 0, NULL, '2016-06-27 02:15:26', '0000-00-00 00:00:00'),
(110, 'YULINDAH', 'YULINDAH@MAIL.COM', 'Afirmasi', 'YULINDAH', 'e470eaea636c4b47be079d22f05c705c', 'Yes', 0, NULL, '2016-06-27 02:17:24', '0000-00-00 00:00:00'),
(111, 'khamidah', 'khamidah@mail.com', 'Afirmasi', 'khamidah', '8d213eebcccc4cecc92b215abb7bdcf3', 'Yes', 0, NULL, '2016-06-27 02:22:15', '0000-00-00 00:00:00'),
(112, 'YUNIKE WIJAYANTI', 'YUNIKEWIJAYANTI04@gmail.com', 'Prestasi', 'yuni', '16c3721b0ac9a34c745671ec2c6ee344', 'Yes', 0, NULL, '2016-06-27 02:24:26', '0000-00-00 00:00:00'),
(113, 'ANITAH', 'NITA ANITA', 'Afirmasi', 'ANITAH', 'cefb80e114a4dd74d7e137f6b93197ce', 'Yes', 0, NULL, '2016-06-27 02:24:40', '0000-00-00 00:00:00'),
(114, 'REDA SUCININGSASIH', 'REDASUCI', 'Afirmasi', 'REDA SUCININGSASIH', '13f86f827241bd6aaa99a7c4876453e9', 'Yes', 0, NULL, '2016-06-27 02:26:21', '0000-00-00 00:00:00'),
(115, 'acmad saefudin', 'acmad saefudin', 'Afirmasi', 'acmad saefudin', '902bf3435740e85de7db0d6c3815f547', 'Yes', 0, NULL, '2016-06-27 02:26:27', '0000-00-00 00:00:00'),
(116, 'pepi wijayanti', 'pepiwija@mail.com', 'Afirmasi', 'pepi  wijayanti', '3058ef543ca71baa53a5b902acc37b71', 'No', 0, NULL, '2016-06-27 02:29:41', '0000-00-00 00:00:00'),
(117, 'Piska Dewi', 'pisscadewi@gmail.com', 'Afirmasi', 'Piska Dewi', 'f9cf78c870c2a10fe235dee1b9c86120', 'Yes', 0, NULL, '2016-06-27 02:30:51', '0000-00-00 00:00:00'),
(118, 'badriyah', 'badriyahmaret@gmail.com', 'Afirmasi', 'badriyah', '7519938e427e039ff26fe3a407686a29', 'Yes', 0, NULL, '2016-06-27 02:30:52', '0000-00-00 00:00:00'),
(119, 'KHOFIFAH NURADZANI', 'KHOFIFAH', 'Afirmasi', 'KHOFIFAH NURADZANI', '21ef05aed5af92469a50b35623d52101', 'Yes', 0, NULL, '2016-06-27 02:31:59', '0000-00-00 00:00:00'),
(120, 'ISTIANA', 'ISTIANA', 'Afirmasi', 'ISTIANA', '65ef551abb62986738e6fa08e7a2f7ef', 'Yes', 0, NULL, '2016-06-27 02:33:57', '0000-00-00 00:00:00'),
(121, 'SEKAR DWI YULIANTI', 'sekardwii@gmail.com', 'Afirmasi', 'sekar', '8d216a8b6c156318e126be78927932d3', 'Yes', 0, NULL, '2016-06-27 02:34:19', '0000-00-00 00:00:00'),
(122, 'pepi wijayanti', 'pepiwijayanti@mail.com', 'Afirmasi', 'pepi wijayanti', 'ec46993a71b78852d2c1be0be6005602', 'Yes', 0, NULL, '2016-06-27 02:34:21', '0000-00-00 00:00:00'),
(123, 'muhammad aditya eka saputra', 'muhammad aditya005', 'Afirmasi', 'muhammad aditya eka saputra', '057829fa5a65fc1ace408f490be486ac', 'Yes', 0, NULL, '2016-06-27 02:39:54', '0000-00-00 00:00:00'),
(124, 'YESYTA DAMAYANTI', 'DANU', 'Afirmasi', 'YESYTA', 'bb08039637d60c17b4adab57b9f10555', 'No', 0, NULL, '2016-06-27 02:40:02', '0000-00-00 00:00:00'),
(125, 'siti indanafiah', 'indahnaffiah@gamil.com', 'Afirmasi', 'indah naffiah', 'e636c108515506797c3ddd9d0a4b7004', 'Yes', 0, NULL, '2016-06-27 02:40:18', '0000-00-00 00:00:00'),
(126, 'ananda syifa fauziah', 'ananda_syifa2001@yahoo.com', 'Afirmasi', 'ananda', 'bfbed2898a1d289e020a19f733ba35ed', 'Yes', 0, NULL, '2016-06-27 02:41:28', '0000-00-00 00:00:00'),
(127, 'FIRMAN ALMANSYAH', 'FIRMAN@MAIL.COM', 'Afirmasi', 'FIRMAN ALMANSYAH', 'ea25dc892ac775c86fd1d1b0ae6a4de1', 'Yes', 0, NULL, '2016-06-27 02:41:56', '0000-00-00 00:00:00'),
(128, 'Farhan Fahrezi', 'fahrezicakra@gmail.com', 'Afirmasi', 'Farhan Fahrezi', 'd0d4d594dadf7b7286bd444a86975379', 'Yes', 0, NULL, '2016-06-27 02:42:40', '0000-00-00 00:00:00'),
(129, 'IIS ISNAWATI', 'IIS ISNAWATI', 'Afirmasi', 'IIS ISNAWATI', 'b1ae24e5f9c94136b0e810d0dd651fa4', 'Yes', 0, NULL, '2016-06-27 02:42:51', '0000-00-00 00:00:00'),
(130, 'RITA MAUDINA', 'dinnarhitaa@gmail.com', 'Afirmasi', 'rita', '37c431cbeced972bba74c9c1a146927d', 'Yes', 0, NULL, '2016-06-27 02:43:09', '0000-00-00 00:00:00'),
(131, 'ANZELINA NIRPALA SARI', 'ANZELINA', 'Afirmasi', 'ANZELINA NIRPALA SARI', 'fa9ef668a501dfa7f4c2ea35da241336', 'Yes', 0, NULL, '2016-06-27 02:43:15', '0000-00-00 00:00:00'),
(132, 'nur alimah', 'nuralimah@gmail.com', 'Afirmasi', 'nur alimah', '95d48a6ba069620ebae7405d09271825', 'Yes', 0, NULL, '2016-06-27 02:46:19', '0000-00-00 00:00:00'),
(133, 'azis', '', 'Akademis', 'azis', 'ece4d80d2597f084b564b95c1bf2f224', 'No', 0, NULL, '2016-06-27 02:48:01', '0000-00-00 00:00:00'),
(134, 'WISNU WULDANI', '', 'Afirmasi', 'WISNU@MAIL.COM', '1d90bee5407c1d3cb6a2c584b0398d6b', 'Yes', 0, NULL, '2016-06-27 02:48:30', '0000-00-00 00:00:00'),
(135, 'ANNISA ABABIL ', '', 'Afirmasi', 'ANNISA ', '52d7f74eeaaf0af3efb42e9e7860052d', 'Yes', 0, NULL, '2016-06-27 02:49:15', '0000-00-00 00:00:00'),
(136, 'Nur hanifah setyawati', '', 'Afirmasi', 'Nur hanifah ', '599b383cfcd595a81fd8a2adf2bc7961', 'Yes', 0, NULL, '2016-06-27 02:49:23', '0000-00-00 00:00:00'),
(137, 'putri tiara mustika sari', '', 'Afirmasi', 'tiara', 'ec0cadb62619a47cfb48df2ea9453905', 'Yes', 0, NULL, '2016-06-27 02:50:18', '0000-00-00 00:00:00'),
(138, 'RIZA ADITYA', '', 'Afirmasi', 'RIZA', 'd480db1b5d685639758ecd4ac888e9f5', 'No', 0, NULL, '2016-06-27 02:51:13', '0000-00-00 00:00:00'),
(139, 'riza aditya', '', 'Afirmasi', 'riza@gmail.com', '41a44352a6f3cd3b45282acbce50927c', 'Yes', 0, NULL, '2016-06-27 02:52:31', '0000-00-00 00:00:00'),
(140, 'teguh rokhman saputra', '', 'Afirmasi', 'teguh', '5e0c5a0bf82decdd43b2150b622c66c5', 'Yes', 0, NULL, '2016-06-27 02:52:56', '0000-00-00 00:00:00'),
(141, 'salsa bilarahmani', '', 'Afirmasi', 'salsa bilarahmani', '0143c1e8e97da861c623ff508a441c54', 'Yes', 0, NULL, '2016-06-27 02:53:15', '0000-00-00 00:00:00'),
(142, 'EVA EVI YANA', '', 'Afirmasi', 'EVA', '80465f89e3942a1eca593524e9d5e4d3', 'Yes', 0, NULL, '2016-06-27 02:54:11', '0000-00-00 00:00:00'),
(143, 'VIRA AYU DYAH PITALOKA', '', 'Afirmasi', 'VIRA', '1b1d9b2e853eb2950215ba670bb9ee08', 'Yes', 0, NULL, '2016-06-27 02:55:32', '0000-00-00 00:00:00'),
(144, 'dea safitri', '', 'Afirmasi', 'dea', '464f39313803277233c3be1f6366c9a5', 'Yes', 0, NULL, '2016-06-27 02:56:16', '0000-00-00 00:00:00'),
(145, 'DIAN SAVITRI', '', 'Afirmasi', 'DIAN', '2150bf3feb5e1cd1a2d4ba7af81b72b6', 'Yes', 0, NULL, '2016-06-27 02:56:21', '0000-00-00 00:00:00'),
(146, 'ulan oktaviani', '', 'Afirmasi', 'ulan', '2a44478f684371871188983f9344f70d', 'Yes', 0, NULL, '2016-06-27 02:57:53', '0000-00-00 00:00:00'),
(147, 'SILVIA NIRMALA DEWI', '', 'PGRI', 'silvi', '1b1d167f4ad4c8dbf6f9f7535ec2403a', 'Yes', 0, NULL, '2016-06-27 02:58:23', '0000-00-00 00:00:00'),
(148, 'NAZWA KHAIRANA PRAYUDATI', '', 'PGRI', 'NAZWA', 'dcad17bf896db288ca5888080961743e', 'Yes', 0, NULL, '2016-06-27 02:59:18', '0000-00-00 00:00:00'),
(149, 'evien jubaidah', '', 'Afirmasi', 'evien@gmail.com', 'b61dde2b64b6dfe15424a20405dc9b92', 'Yes', 0, NULL, '2016-06-27 03:01:04', '0000-00-00 00:00:00'),
(150, 'ELLA DAMAYANTI', '', 'Afirmasi', 'ELLA', 'cc2263b42b9556b242bc30afc4d307a1', 'Yes', 0, NULL, '2016-06-27 03:01:36', '0000-00-00 00:00:00'),
(151, 'MOHAMAD PRIANA', '', 'Afirmasi', 'RIAN', 'c5e548cb9af6cf4a89e1b2c3df58f869', 'Yes', 0, NULL, '2016-06-27 03:02:41', '0000-00-00 00:00:00'),
(152, 'amanda nabila putri', '', 'Afirmasi', 'amanda', 'cbe74987dd46050e841ad2c41720fcf0', 'Yes', 0, NULL, '2016-06-27 03:03:24', '0000-00-00 00:00:00'),
(153, 'yesyta damayanti', '', 'Afirmasi', 'danu', 'a29e5a0efaa2b1521ebea7cf10cd0eab', 'Yes', 0, NULL, '2016-06-27 03:05:12', '0000-00-00 00:00:00'),
(154, 'DESI RAHMAWATI', '', 'Afirmasi', 'DESI', 'cc2263b42b9556b242bc30afc4d307a1', 'Yes', 0, NULL, '2016-06-27 03:05:19', '0000-00-00 00:00:00'),
(155, 'YULIANA PUTRI ANGGRAENI ', '', 'Afirmasi', 'YULIANA ', '4d71ca313a77a844328628ff08d5ffbc', 'Yes', 0, NULL, '2016-06-27 03:06:14', '0000-00-00 00:00:00'),
(156, 'NOVIAR TRI KHAERINA RAMDHANI', '', 'PGRI', 'NOVIAR', '86af4318dc4e431358c4ceddfa6140d0', 'Yes', 0, NULL, '2016-06-27 03:07:03', '0000-00-00 00:00:00'),
(157, 'Tubagus azhar assidiqie', '', 'PGRI', 'tubagus_azhar2yahoo.co.id', '3f281d2bdb289a5749de986c410a9921', 'No', 0, NULL, '2016-06-27 03:07:34', '0000-00-00 00:00:00'),
(158, 'DINA WIDYA ANNISA', '', 'Afirmasi', 'DINA', 'ec645e0908414c19522ef492f47a7913', 'Yes', 0, NULL, '2016-06-27 03:07:58', '0000-00-00 00:00:00'),
(159, 'darlinda', '', 'Prestasi', 'linda', 'fa452b6c6bc4d1bb70f26a8313933083', 'Yes', 0, NULL, '2016-06-27 03:08:10', '0000-00-00 00:00:00'),
(160, 'sriyani', '', 'Afirmasi', 'sri', '080840925a7e2087673145d83918c658', 'Yes', 0, NULL, '2016-06-27 03:09:41', '0000-00-00 00:00:00'),
(161, 'safira prakarsa', '', 'Afirmasi', 'safira', '3e40ba9ac9c41bf9bef5493a36c4dfee', 'Yes', 0, NULL, '2016-06-27 03:10:10', '0000-00-00 00:00:00'),
(162, 'Tubagus azhar', '', 'PGRI', 'Tubagusazhar@gmail.com', 'b1b5c37c5077242a4fb96bd953c8bc27', 'Yes', 0, NULL, '2016-06-27 03:12:02', '0000-00-00 00:00:00'),
(163, 'Giti meilina', '', 'Afirmasi', 'Giti', '54b9a1562b2638e345160728ac34b480', 'No', 0, NULL, '2016-06-27 03:12:04', '0000-00-00 00:00:00'),
(164, 'KHANIFAH', '', 'Afirmasi', 'KHANIFAH', '29e3a1b43dfb044dfaa4da6824b11690', 'Yes', 0, NULL, '2016-06-27 03:15:36', '0000-00-00 00:00:00'),
(165, 'PUTRI', '', 'Afirmasi', 'CIPUT', 'cc2263b42b9556b242bc30afc4d307a1', 'Yes', 0, NULL, '2016-06-27 03:15:43', '0000-00-00 00:00:00'),
(166, 'Arfan Tri Wijaya', '', 'Prestasi', 'Arfan', '72b36cbc7d437d8f9c76b56904f94aef', 'No', 0, NULL, '2016-06-27 03:15:44', '0000-00-00 00:00:00'),
(167, 'MELIYANA', '', 'Afirmasi', 'MELI', 'ec645e0908414c19522ef492f47a7913', 'Yes', 0, NULL, '2016-06-27 03:17:09', '0000-00-00 00:00:00'),
(168, 'Giti meilina', '', 'Afirmasi', 'Lina', '54b9a1562b2638e345160728ac34b480', 'Yes', 0, NULL, '2016-06-27 03:17:28', '0000-00-00 00:00:00'),
(169, 'david susanto', '', 'Prestasi', 'david', 'b61dde2b64b6dfe15424a20405dc9b92', 'No', 0, NULL, '2016-06-27 03:17:34', '0000-00-00 00:00:00'),
(170, 'nur ayu fitriyani ', '', 'Afirmasi', 'ayu', '534a0b7aa872ad1340d0071cbfa38697', 'Yes', 0, NULL, '2016-06-27 03:18:53', '0000-00-00 00:00:00'),
(171, 'NADILA', '', 'Afirmasi', 'DILA', 'eafab90701f08abba51179b2e74ba8b3', 'Yes', 0, NULL, '2016-06-27 03:20:29', '0000-00-00 00:00:00'),
(172, 'david susanto', '', 'Prestasi', 'davids', '172522ec1028ab781d9dfd17eaca4427', 'Yes', 0, NULL, '2016-06-27 03:21:37', '0000-00-00 00:00:00'),
(173, 'Arfantriwijaya', '', 'Prestasi', 'jaya', '1120d25bc95bc8395d749eb3658d1701', 'Yes', 0, NULL, '2016-06-27 03:21:53', '0000-00-00 00:00:00'),
(174, 'FARA ZAFIRA', '', 'Afirmasi', 'FARA ZAFIRA', '197d349e399f83a2105899067f3d68cc', 'Yes', 0, NULL, '2016-06-27 03:23:08', '0000-00-00 00:00:00'),
(175, 'siti maemunah', '', 'Afirmasi', 'maemunah', 'eb4a4a36e4d53916f9979759c3d3b822', 'Yes', 0, NULL, '2016-06-27 03:24:07', '0000-00-00 00:00:00'),
(176, 'HALIMATUS SADIYAH', '', 'Afirmasi', 'HALIMA', 'fe2be9750d7173e1ec4a5971c66b6d72', 'Yes', 0, NULL, '2016-06-27 03:25:28', '0000-00-00 00:00:00'),
(177, 'FARADINA KHOLIDAH', '', 'Prestasi', 'FARADINA', '46f227e9cf17e2e1e88b14e679047bd9', 'Yes', 0, NULL, '2016-06-27 03:25:29', '0000-00-00 00:00:00'),
(178, 'DWIYANA MERLEY', '', 'Afirmasi', 'DWIYANA', '601258f7b485551d853bf365b75f73b1', 'Yes', 0, NULL, '2016-06-27 03:26:20', '0000-00-00 00:00:00'),
(179, 'SIFA FAUZIAH NUR UBAEDAH', '', 'Afirmasi', 'SIFA FAUZIAH', 'deeaa7f1bb0eac9b7e710ab5caab4e6e', 'Yes', 0, NULL, '2016-06-27 03:30:03', '0000-00-00 00:00:00'),
(180, 'YULIA WIDIASTUTI', '', 'Afirmasi', 'LIA', '4f62ef1986b7262ffdd9c161613bae3f', 'Yes', 0, NULL, '2016-06-27 03:30:06', '0000-00-00 00:00:00'),
(181, 'siti fatimah azahra', '', 'Afirmasi', 'zahra', '01e50c681c0b05ff22686b3e0f7290d3', 'Yes', 0, NULL, '2016-06-27 03:31:17', '0000-00-00 00:00:00'),
(182, 'Tri Wulan Oktaviyani', '', 'Afirmasi', 'okta', '44ea3380f132d18d3ed0dc9be2dbb320', 'Yes', 0, NULL, '2016-06-27 03:32:24', '0000-00-00 00:00:00'),
(183, 'DINDA', '', 'Afirmasi', 'DINDA', 'd747e24a410a059874940ef423345661', 'Yes', 0, NULL, '2016-06-27 03:34:23', '0000-00-00 00:00:00'),
(184, 'avie dwi alamanda', '', 'Afirmasi', 'avie', '2b89bfdd0a42fd0df6194e46916cb874', 'No', 0, NULL, '2016-06-27 03:35:13', '0000-00-00 00:00:00'),
(185, 'Puja Sukmawati', '', 'Afirmasi', 'puja', 'de12d78a36c8e10b6b96df47cd930c1e', 'Yes', 0, NULL, '2016-06-27 03:35:40', '0000-00-00 00:00:00'),
(186, 'safira prakarsa', '', 'Afirmasi', 'fira', '3e40ba9ac9c41bf9bef5493a36c4dfee', 'No', 0, NULL, '2016-06-27 03:36:14', '0000-00-00 00:00:00'),
(187, 'NOERLAELA', '', 'Afirmasi', 'LELA', 'cf6393cfabe0c406242edd04fc0a305d', 'Yes', 0, NULL, '2016-06-27 03:36:54', '0000-00-00 00:00:00'),
(188, 'KHOIRUNNISYA', '', 'Afirmasi', 'NISYA', 'f4d8e9ade5e3a2d1e02cabd889890435', 'Yes', 0, NULL, '2016-06-27 03:36:57', '0000-00-00 00:00:00'),
(189, 'avie dwi alamanda', '', 'Afirmasi', 'alamanda', '2b89bfdd0a42fd0df6194e46916cb874', 'No', 0, NULL, '2016-06-27 03:37:36', '0000-00-00 00:00:00'),
(190, 'INKA SILVI SAFITRI', '', 'Afirmasi', 'INKA', '4e63974e13630ddaeac0320bb0e15604', 'Yes', 0, NULL, '2016-06-27 03:37:42', '0000-00-00 00:00:00'),
(191, 'INDAH WIDIA NINGSIH ', '', 'Afirmasi', 'INDAH', '202cb962ac59075b964b07152d234b70', 'Yes', 0, NULL, '2016-06-27 03:39:07', '0000-00-00 00:00:00'),
(192, 'VENTI VADILAH', '', 'Afirmasi', 'VENTI', 'bac904f3e75a0f0a38a935fdcdf48f9e', 'Yes', 0, NULL, '2016-06-27 03:40:23', '0000-00-00 00:00:00'),
(193, 'ANIS VISCIANTY', '', 'Afirmasi', 'ANIS', '79558d36eda4ed7ee9901ceeadd319ce', 'Yes', 0, NULL, '2016-06-27 03:42:09', '0000-00-00 00:00:00'),
(194, 'PUTRI AMPELI', '', 'Afirmasi', 'PUTRI2', '657657f665df6b2d842ff079c6da83b5', 'Yes', 0, NULL, '2016-06-27 03:42:23', '0000-00-00 00:00:00'),
(195, 'PUTRI ERFRIDA DIANNISA', '', 'Afirmasi', 'DIANNISA', 'd285b16e0c753d61a709dad427eb9654', 'Yes', 0, NULL, '2016-06-27 03:43:30', '0000-00-00 00:00:00'),
(196, 'siti oktaviani ', '', 'Prestasi', 'via', 'e0389393ca1d22f95681086c8a9ff7ab', 'No', 0, NULL, '2016-06-27 03:44:24', '0000-00-00 00:00:00'),
(197, 'YENI AGUSTIN', '', 'Afirmasi', 'YENI', '202cb962ac59075b964b07152d234b70', 'Yes', 0, NULL, '2016-06-27 03:44:38', '0000-00-00 00:00:00'),
(198, 'CICI SAFITRI', '', 'Afirmasi', 'CICI', 'f4bb6e247c27fe5e312b0f45ac7605bc', 'Yes', 0, NULL, '2016-06-27 03:44:53', '0000-00-00 00:00:00'),
(199, 'avie dwi alamanda', '', 'Afirmasi', 'dwi', 'cd714a3914f82fe147ca8257877d8f1d', 'Yes', 0, NULL, '2016-06-27 03:45:13', '0000-00-00 00:00:00'),
(200, 'siti octaviyani', '', 'Prestasi', 'viya', 'e0389393ca1d22f95681086c8a9ff7ab', 'No', 0, NULL, '2016-06-27 03:46:25', '0000-00-00 00:00:00'),
(201, 'ANI NURYANTI', '', 'Afirmasi', 'ANI', '4ff35e52034daec0251f7b3370969a1a', 'Yes', 0, NULL, '2016-06-27 03:46:27', '0000-00-00 00:00:00'),
(202, 'FIKRI AOLIANTI ', '', 'Afirmasi', 'FIKRI', '1c6eb296e67b603e95437caf17e62493', 'Yes', 0, NULL, '2016-06-27 03:46:37', '0000-00-00 00:00:00'),
(203, 'Novita Putri', '', 'Afirmasi', 'Novita ', 'd8578edf8458ce06fbc5bb76a58c5ca4', 'Yes', 0, NULL, '2016-06-27 03:47:21', '0000-00-00 00:00:00'),
(204, 'RESA LIVIYANA', '', 'Afirmasi', 'RESA', 'dcad17bf896db288ca5888080961743e', 'Yes', 0, NULL, '2016-06-27 03:47:24', '0000-00-00 00:00:00'),
(205, 'siti octaviyani', '', 'Prestasi', 'siti', 'e0389393ca1d22f95681086c8a9ff7ab', 'Yes', 0, NULL, '2016-06-27 03:47:34', '0000-00-00 00:00:00'),
(206, 'Subeki', '', 'Afirmasi', 'Subeki', '4d9d8ec550e3722e55b9125008686bf4', 'Yes', 0, NULL, '2016-06-27 03:47:48', '0000-00-00 00:00:00'),
(207, 'fitria uswatun hasanah gusasi', '', 'Afirmasi', 'fitriauhg', '453933650dd981b7e2c3f93cd230f620', 'Yes', 0, NULL, '2016-06-27 03:48:51', '0000-00-00 00:00:00'),
(208, 'NOVIANTI DWI RIHANDJANI', '', 'Afirmasi', 'NOVIANTI', 'cb08ca4a7bb5f9683c19133a84872ca7', 'Yes', 0, NULL, '2016-06-27 03:49:35', '0000-00-00 00:00:00'),
(209, 'ERIYATI', '', 'Afirmasi', 'ERI', 'ed62eb86db99b18cd2d9a247ed625f06', 'No', 0, NULL, '2016-06-27 03:52:03', '0000-00-00 00:00:00'),
(210, 'resa restianawati', '', 'Afirmasi', 'resa r', 'e7ff89ab6bb8cbd4f1591775a6c97793', 'No', 0, NULL, '2016-06-27 03:52:24', '0000-00-00 00:00:00'),
(211, 'selviyani', '', 'Afirmasi', 'selvi', '7ee8a2910251c9df6e2ddac2037cc2fa', 'Yes', 0, NULL, '2016-06-27 03:52:31', '0000-00-00 00:00:00'),
(212, 'NURRAHMAH ISTIQOMAH', '', 'Afirmasi', 'RAHMAH', '7d1f0bd97f18e4e0c4fecb43a111fe6d', 'No', 0, NULL, '2016-06-27 03:52:53', '0000-00-00 00:00:00'),
(213, 'ERIYATI', '', 'Afirmasi', 'RIRI', 'e17fe690a95d80047738fa2fd6f4f579', 'No', 0, NULL, '2016-06-27 03:53:03', '0000-00-00 00:00:00'),
(214, 'RIYAN FEBRIYANTO', '', 'Afirmasi', 'RIYAN', '24de0f78d40ff984c03668fff14f28bd', 'Yes', 0, NULL, '2016-06-27 03:53:05', '0000-00-00 00:00:00'),
(215, 'ERIYATI', '', 'Afirmasi', 'ERIYATI ERIYATI', 'e17fe690a95d80047738fa2fd6f4f579', 'Yes', 0, NULL, '2016-06-27 03:54:05', '0000-00-00 00:00:00'),
(216, 'RUDI HARYANTO', '', 'Afirmasi', 'rudhykun', 'e8350e8cf922997500b370c2c851ca7f', 'Yes', 0, NULL, '2016-06-27 03:54:07', '0000-00-00 00:00:00'),
(217, 'resa restianawati', '', 'Afirmasi', 'resti', 'dbc314331dd384ea0c4f2abef49053d0', 'Yes', 0, NULL, '2016-06-27 03:54:11', '0000-00-00 00:00:00'),
(218, 'RENA APRILLIA SISKA MULYANA', '', 'Afirmasi', 'rena28', 'ba2f6767ba2e53751c53654eeda7e8a8', 'Yes', 0, NULL, '2016-06-27 03:56:11', '0000-00-00 00:00:00'),
(219, 'NURRAHMAH ISTIQOMAH', '', 'Afirmasi', 'RAHMA', '0e3ff98fcde44d4892f9193eebe52a7c', 'Yes', 0, NULL, '2016-06-27 03:57:11', '0000-00-00 00:00:00'),
(220, 'FITRI NUR AENI', '', 'Afirmasi', 'AENI', 'b2f1eb148179a9436d364cc613c8fd9f', 'Yes', 0, NULL, '2016-06-27 03:57:22', '0000-00-00 00:00:00'),
(221, 'DEWI KIRANA', '', 'Afirmasi', 'DEWI', 'f8a7f5d7ad69505e97391b94665555c6', 'Yes', 0, NULL, '2016-06-27 03:58:20', '0000-00-00 00:00:00'),
(222, 'ITA JUWITA', '', 'Afirmasi', 'ITANOVIANTI', 'cb08ca4a7bb5f9683c19133a84872ca7', 'No', 0, NULL, '2016-06-27 03:58:33', '0000-00-00 00:00:00'),
(223, 'ilham ramadhan', '', 'Afirmasi', 'ilham@gmail.com', 'b63d204bf086017e34d8bd27ab969f28', 'No', 0, NULL, '2016-06-27 03:59:13', '0000-00-00 00:00:00'),
(224, 'ITA JUWITA', '', 'Afirmasi', 'ITA', 'fecc20873235bd62c2f592619986e7d1', 'No', 0, NULL, '2016-06-27 03:59:57', '0000-00-00 00:00:00'),
(225, 'ilham ramadhan', '', 'Afirmasi', 'ilhamrama@gmail.com', 'b63d204bf086017e34d8bd27ab969f28', 'Yes', 0, NULL, '2016-06-27 04:01:06', '0000-00-00 00:00:00'),
(226, 'PUTRI NA SOLEKHA', '', 'PGRI', 'PUTRINA', '39e2ffb17972cec71e53283d70e502be', 'Yes', 0, NULL, '2016-06-27 04:02:30', '0000-00-00 00:00:00'),
(227, 'ADELIA PUTERI LESTARI', '', 'Afirmasi', 'ADELIA', '2604138c756569c72019a96ae7c75d73', 'Yes', 0, NULL, '2016-06-27 04:03:29', '0000-00-00 00:00:00'),
(228, 'RIZKI SUTRISNA', '', 'Afirmasi', 'rizki02', '3e089c076bf1ec3a8332280ee35c28d4', 'Yes', 0, NULL, '2016-06-27 04:03:32', '0000-00-00 00:00:00'),
(229, 'ALYFIAH RACHMAWATI', '', 'Afirmasi', 'ALYFIAH', 'a43de694439b38de3c1ceed50059282b', 'Yes', 0, NULL, '2016-06-27 04:04:25', '0000-00-00 00:00:00'),
(230, 'MUHAMAD ILHAM', '', 'Afirmasi', 'ILHAM11', '07ca0d78c642e08a31fd4f1d8344e8ef', 'Yes', 0, NULL, '2016-06-27 04:07:04', '0000-00-00 00:00:00'),
(231, 'HANIFATIN NISAH', '', 'PGRI', 'NIFFA', '2b017f3f62cdd7c49837a97fb69b4aef', 'Yes', 0, NULL, '2016-06-27 04:08:23', '0000-00-00 00:00:00'),
(232, 'SERLY PRATIWI', '', 'Afirmasi', 'SERLY', 'f263ee1462d516d8099e8ea34972f834', 'Yes', 0, NULL, '2016-06-27 04:09:06', '0000-00-00 00:00:00'),
(233, 'SITI NURJANA ADEA', '', 'Afirmasi', 'SITI NURJANA ADEA', 'adcd71b696c72bb8d481cbb21d2a906f', 'No', 0, NULL, '2016-06-27 04:09:51', '0000-00-00 00:00:00'),
(234, 'WILDANI ADITYA', '', 'Afirmasi', 'WILDAN28', 'cd3df044fb3b2fb0b174aa4eef523cbf', 'Yes', 0, NULL, '2016-06-27 04:11:36', '0000-00-00 00:00:00'),
(235, 'SITI NURJANA ADEA', '', 'Afirmasi', 'SITI NURJANA', '995b29ee26f403d24f350a0f9ed3c362', 'Yes', 0, NULL, '2016-06-27 04:14:28', '0000-00-00 00:00:00'),
(236, 'SRI HARTATI', '', 'Afirmasi', 'SRIHARTATI16@.GMAIL.COM', '7cb1c3ee5ff633480b9b81fe83b058e1', 'No', 0, NULL, '2016-06-27 04:15:23', '0000-00-00 00:00:00'),
(237, 'SHINDY APRILIA', '', 'Afirmasi', 'SHINDY', 'f0ad4f2ed43cc064878310d7b9a4d69c', 'No', 0, NULL, '2016-06-27 04:16:44', '0000-00-00 00:00:00'),
(238, 'RAHAYU RULIANA', '', 'Afirmasi', 'RAHAYU', '15b9d517bd8a0de1a2aa670e7b1ff3a2', 'Yes', 0, NULL, '2016-06-27 04:17:13', '0000-00-00 00:00:00'),
(239, 'AHMAD RIFAI', '', 'Afirmasi', 'RIFAI', '555ebbc22c365c3c88f9ac2576d07674', 'Yes', 0, NULL, '2016-06-27 04:18:20', '0000-00-00 00:00:00'),
(240, 'MUKHAMAD FARHAN RIYADI', '', 'Afirmasi', 'FARHAN21', 'c18694dfc1cf063ac822ec139d9fd0e7', 'Yes', 0, NULL, '2016-06-27 04:18:26', '0000-00-00 00:00:00'),
(241, 'PRIYO', '', 'Afirmasi', 'RIYO', '601258f7b485551d853bf365b75f73b1', 'No', 0, NULL, '2016-06-27 04:18:39', '0000-00-00 00:00:00'),
(242, 'PUTRI INDAH LESTARI', '', 'Prestasi', 'PUTRI9D', '775b1df3db8a0f8c949fee07b3441e90', 'Yes', 0, NULL, '2016-06-27 04:19:17', '0000-00-00 00:00:00'),
(243, 'SRI HARTATI', '', 'Afirmasi', 'SRIHARTATI16@GMAIL.COM', '7cb1c3ee5ff633480b9b81fe83b058e1', 'Yes', 0, NULL, '2016-06-27 04:19:21', '0000-00-00 00:00:00'),
(244, 'SHINDY APRILIA', '', 'Afirmasi', 'APRILIA', 'f10ab7e40ad786f0d85105c95bcca87e', 'Yes', 0, NULL, '2016-06-27 04:19:22', '0000-00-00 00:00:00'),
(245, 'PRIYO', '', 'Afirmasi', 'RIO', '601258f7b485551d853bf365b75f73b1', 'No', 0, NULL, '2016-06-27 04:21:07', '0000-00-00 00:00:00'),
(246, 'asih nuraeni', '', 'Afirmasi', 'asih2', '9a27adf1714b77f749db78b0e5f2f75c', 'Yes', 0, NULL, '2016-06-27 04:21:39', '0000-00-00 00:00:00'),
(247, 'RAHMA FIKRI R N M', '', 'PGRI', 'R.FIKRI', '1587965fb4d4b5afe8428a4a024feb0d', 'Yes', 0, NULL, '2016-06-27 04:24:27', '0000-00-00 00:00:00'),
(248, 'ALIF NUR ALAMSYAH', '', 'Afirmasi', 'ALIF69', 'e19f780132dd22622a5d370dc21ace31', 'Yes', 0, NULL, '2016-06-27 04:24:36', '0000-00-00 00:00:00'),
(249, 'ADI GUNAWAN', '', 'Afirmasi', 'ADI', '78a9d9d71b0d01a2fde1f1de7885e0bd', 'Yes', 0, NULL, '2016-06-27 04:25:44', '0000-00-00 00:00:00'),
(250, 'SANTI FEBRIANTI', '', 'Afirmasi', 'SANTI', '2fca641477e6597a8fd5b7831ab0d674', 'Yes', 0, NULL, '2016-06-27 04:26:07', '0000-00-00 00:00:00'),
(251, 'RIAN SABARA', '', 'Afirmasi', 'RIANS', '5506b366bffa35098a91b6b272da13db', 'Yes', 0, NULL, '2016-06-27 04:27:34', '0000-00-00 00:00:00'),
(252, 'AMINA TUZZAHRO', '', 'Afirmasi', 'AAM', '79fc813ea5027bcb18362aa7739282b9', 'Yes', 0, NULL, '2016-06-27 04:28:38', '0000-00-00 00:00:00'),
(253, 'SYIFA NUR DELFIANI ', '', 'Afirmasi', 'SYIFA28', '7724d9bb7ed745754cfeae1eed84fc7b', 'Yes', 0, NULL, '2016-06-27 04:30:34', '0000-00-00 00:00:00'),
(254, 'ANGGI SANTIKA', '', 'Afirmasi', 'ANGGI', '827ccb0eea8a706c4c34a16891f84e7b', 'Yes', 0, NULL, '2016-06-27 04:31:54', '0000-00-00 00:00:00'),
(255, 'SAEROSA INDAH', '', 'Afirmasi', 'SAE', '827ccb0eea8a706c4c34a16891f84e7b', 'Yes', 0, NULL, '2016-06-27 04:32:05', '0000-00-00 00:00:00'),
(256, 'faradillah zahwa putri', '', 'Afirmasi', 'faradillah', '30e60e5a12858a46fdaada2fc008abc6', 'Yes', 0, NULL, '2016-06-27 04:32:40', '0000-00-00 00:00:00'),
(257, 'Desy Septriani Putri', '', 'Afirmasi', 'Desysp', '157ce32d14c9b8053af9ffac32b822ab', 'Yes', 0, NULL, '2016-06-27 04:32:54', '0000-00-00 00:00:00'),
(258, 'DZUL QARNAIN SYAH', '', 'PGRI', 'DZUL QARNAIN', '1ac7e90b5a39afd6940f2d2c92454ab7', 'Yes', 0, NULL, '2016-06-27 04:33:52', '0000-00-00 00:00:00'),
(259, 'FITRI ANGGRAENI', '', 'Afirmasi', 'FITRI', 'b2f1eb148179a9436d364cc613c8fd9f', 'Yes', 0, NULL, '2016-06-27 04:36:59', '0000-00-00 00:00:00'),
(260, 'FAUZIYAH', '', 'Prestasi', 'YAYAH24', 'b5f9c84950e9d1ef9355bb7177918062', 'Yes', 0, NULL, '2016-06-27 04:38:02', '0000-00-00 00:00:00'),
(261, 'NUR MAHMUDAH', '', 'Afirmasi', 'NURMAH', '1ba911a5b3613c396dc9dd288e1ea00f', 'Yes', 0, NULL, '2016-06-27 04:38:16', '0000-00-00 00:00:00'),
(262, 'wasiri', '', 'Afirmasi', 'wawas', 'f785bd474619f72f6059dfdd056b6ba3', 'Yes', 0, NULL, '2016-06-27 04:41:17', '0000-00-00 00:00:00'),
(263, 'NUR MAHMUDAH', '', 'Afirmasi', 'NUR21', '1ba911a5b3613c396dc9dd288e1ea00f', 'No', 0, NULL, '2016-06-27 04:41:46', '0000-00-00 00:00:00'),
(264, 'IKA MUSTIKA DEWI', '', 'Afirmasi', 'IKA', '93c1c96841bd8bed51211c26879a6629', 'Yes', 0, NULL, '2016-06-27 04:41:47', '0000-00-00 00:00:00'),
(265, 'PUTRI RIZKI AULIA', '', 'Afirmasi', 'PUTRI.RA', '702a8b9abd6180368bf643a24ccff35b', 'No', 0, NULL, '2016-06-27 04:42:29', '0000-00-00 00:00:00'),
(266, 'PUTRI RIZKI AULIA', '', 'Afirmasi', 'PUTRI RA', '702a8b9abd6180368bf643a24ccff35b', 'Yes', 0, NULL, '2016-06-27 04:45:06', '0000-00-00 00:00:00'),
(267, 'FATHAN IZZATUL MAULA', '', 'PGRI', 'Fthnizza', '5e44f30e718ee2bd84b5265091372a59', 'Yes', 0, NULL, '2016-06-27 04:45:25', '0000-00-00 00:00:00'),
(268, 'NURUL TIFANI', '', 'Afirmasi', 'nurul123', '7ab9badf26b111165ce5a6346eeebbe0', 'Yes', 0, NULL, '2016-06-27 04:46:12', '0000-00-00 00:00:00'),
(269, 'RIZKY ADINDA', '', 'Afirmasi', 'DINDA123', 'c3401699bb15f54866d267294ef1fe95', 'Yes', 0, NULL, '2016-06-27 04:46:40', '0000-00-00 00:00:00'),
(270, 'Muhammad wildan', '', 'PGRI', 'Wildan', '0f6fabdfa842e63d353f54999ef06095', 'Yes', 0, NULL, '2016-06-27 04:47:20', '0000-00-00 00:00:00'),
(271, 'AGHITS NIDALLAH', '', 'PGRI', 'AGHITS', 'a6da60a08bef263884bcef09658888fe', 'Yes', 0, NULL, '2016-06-27 04:49:24', '0000-00-00 00:00:00'),
(272, 'DESI YULIA NINGSIH', '', 'Afirmasi', 'DESYUL', '75b8c7cd3f4270e16563880249df8435', 'Yes', 0, NULL, '2016-06-27 04:52:48', '0000-00-00 00:00:00'),
(273, 'CASMARI', '', 'Afirmasi', 'CAS', '00b7691d86d96aebd21dd9e138f90840', 'Yes', 0, NULL, '2016-06-27 04:53:34', '0000-00-00 00:00:00'),
(274, 'sudirman', '', 'Afirmasi', 'sudir', '465a55e3bcce3758eb7d32b2f5f9ce26', 'Yes', 0, NULL, '2016-06-27 04:54:46', '0000-00-00 00:00:00'),
(275, 'SEKAR', '', 'Prestasi', 'KAR', '4b63c9268660a737e9f18c022f308801', 'Yes', 0, NULL, '2016-06-27 04:54:55', '0000-00-00 00:00:00'),
(276, 'ADI PRAYOGI', '', 'Afirmasi', 'YOGI', '1a37907d5d0945b928ef7bddaad749c2', 'Yes', 0, NULL, '2016-06-27 04:55:07', '0000-00-00 00:00:00'),
(277, 'NADIA ARUM PUTRI', '', 'Prestasi', 'NADIA', 'baa5e77607a200ea2edce74e04415ca1', 'No', 0, NULL, '2016-06-27 04:56:10', '0000-00-00 00:00:00'),
(278, 'rina rismawati', '', 'Afirmasi', 'rina', 'cc1e1887fb2c20cccc72a729c73fb73b', 'Yes', 0, NULL, '2016-06-27 04:56:46', '0000-00-00 00:00:00'),
(279, 'nadia arum putri', '', 'Prestasi', 'nadia arum putri', 'a2e8cea3392da09d1d31be3fca68efed', 'Yes', 0, NULL, '2016-06-27 04:59:36', '0000-00-00 00:00:00'),
(280, 'TESSA FIRMANSAH', '', 'Afirmasi', 'TESSA', 'dbdf91c9e77e98ab68ca4a89db1c6196', 'Yes', 0, NULL, '2016-06-27 05:02:37', '0000-00-00 00:00:00'),
(281, 'SEILA NURHALIZA', '', 'Afirmasi', 'SEILA', '2c73f17f7c517963167627fa216f84d9', 'Yes', 0, NULL, '2016-06-27 05:03:47', '0000-00-00 00:00:00'),
(282, 'SUKMO WIJAYA', '', 'Afirmasi', 'MOMO', '6ae56758b407ad49dbdc303dd42df669', 'No', 0, NULL, '2016-06-27 05:04:18', '0000-00-00 00:00:00'),
(283, 'OKTA AYUWANDI FAUZIAH', '', 'Afirmasi', 'oktaayu13@ymail.com', '7b2ec0a9f02be3a45a8f487f195a8f63', 'Yes', 0, NULL, '2016-06-27 05:04:57', '0000-00-00 00:00:00'),
(284, 'Silfiyah', '', 'Afirmasi', 'silfi', 'c9d2cce909ea37234be8af1a1f958805', 'Yes', 0, NULL, '2016-06-27 05:05:24', '0000-00-00 00:00:00'),
(285, 'ayu triviyani', '', 'Prestasi', 'ayutri', '87ae3f903246d15f9c0535078bd25340', 'Yes', 0, NULL, '2016-06-27 05:05:25', '0000-00-00 00:00:00'),
(286, 'SUKMO WIJAYA', '', 'Afirmasi', 'SUKMO', '614a014465b70edea8bb6077441d5912', 'Yes', 0, NULL, '2016-06-27 05:05:35', '0000-00-00 00:00:00'),
(287, 'DIANA ROSVERDIRIYANTI KARIM', '', 'PGRI', 'DIANA', 'daa03f292703feded10b70b3bba60600', 'No', 0, NULL, '2016-06-27 05:07:23', '0000-00-00 00:00:00'),
(288, 'taufik hendrawan', '', 'Afirmasi', 'taufik', 'd4305d7ed2ec97107cd6eb8dd4b6f6b7', 'Yes', 0, NULL, '2016-06-27 05:08:23', '0000-00-00 00:00:00'),
(289, 'MAILIZA ZAINIZA', '', 'Afirmasi', 'IMEL', '13b659cf9fbfc6ddef71922848fcc951', 'Yes', 0, NULL, '2016-06-27 05:09:15', '0000-00-00 00:00:00'),
(290, 'KHOIROTUL FAJRIYAH', '', 'Afirmasi', 'FAJRI', '78a83225aa3bc632142ad91bc99987b4', 'Yes', 0, NULL, '2016-06-27 05:09:27', '0000-00-00 00:00:00'),
(291, 'DIANA ROSVERDIRIYANTI KARIM', '', 'PGRI', 'ROSVERDIRIYANTI26', 'daa03f292703feded10b70b3bba60600', 'No', 0, NULL, '2016-06-27 05:09:38', '0000-00-00 00:00:00'),
(292, 'ANDI PURNOMO', '', 'Afirmasi', 'andi123', '6b95baa00a649f0c037be9dd5590c944', 'Yes', 0, NULL, '2016-06-27 05:10:26', '0000-00-00 00:00:00'),
(293, 'serly rosyallina', '', 'PGRI', 'serly@gmail.com', 'f231d991b955e81cb89be0d4da58106e', 'No', 0, NULL, '2016-06-27 05:14:14', '0000-00-00 00:00:00'),
(294, 'MUAWIYAH', '', 'Afirmasi', 'MUAWIYAH', '0204781f3d89a71c2b4feee9963a99bf', 'No', 0, NULL, '2016-06-27 05:15:28', '0000-00-00 00:00:00'),
(295, 'Dino Sapta Prasetyo', '', 'PGRI', 'DINO', '77a830b4d6ae99a3fa75f36c805f8d16', 'No', 0, NULL, '2016-06-27 05:16:15', '0000-00-00 00:00:00'),
(296, 'Amirah deya firzanah', '', 'Prestasi', 'AMIRAH', '9c661a2e6b28217de85b4cd8996f827e', 'No', 0, NULL, '2016-06-27 05:16:36', '0000-00-00 00:00:00'),
(297, 'indri alvianty', '', 'Afirmasi', 'indri', '9826068aef3e6b1bbb3c65461a879c4b', 'No', 0, NULL, '2016-06-27 05:17:06', '0000-00-00 00:00:00'),
(298, 'RUANI', '', 'Afirmasi', 'AniRN', 'a4616f4a94b4a8545782d0e7385893a1', 'No', 0, NULL, '2016-06-27 05:17:13', '0000-00-00 00:00:00'),
(299, 'FARHAH RIHHADATUL AISY', '', 'Afirmasi', 'FARHAH', '601258f7b485551d853bf365b75f73b1', 'No', 0, NULL, '2016-06-27 05:18:46', '0000-00-00 00:00:00'),
(300, 'PIPIT FITRIYANTI', '', 'Afirmasi', 'PIPIT', 'e7021483ba2b5a7dafcca10db68e7146', 'No', 0, NULL, '2016-06-27 05:20:53', '0000-00-00 00:00:00'),
(301, 'mustika ratna dewi', '', 'Afirmasi', 'mustika', '25f9e794323b453885f5181f1b624d0b', 'No', 0, NULL, '2016-06-27 05:21:45', '0000-00-00 00:00:00'),
(302, 'NOVIA', '', 'Afirmasi', 'NOVIA', 'd7125ec573d892ba2b417bfcc390ba04', 'No', 0, NULL, '2016-06-27 05:24:27', '0000-00-00 00:00:00'),
(303, 'DEWI RASEMI', '', 'Afirmasi', 'DEWI123', 'f8a7f5d7ad69505e97391b94665555c6', 'No', 0, NULL, '2016-06-27 05:26:51', '0000-00-00 00:00:00'),
(304, 'Jidan Dwilaksana', '', 'Prestasi', 'Jidan', '2d6ded6ac425bd00c312c1a8802fd64f', 'No', 0, NULL, '2016-06-27 05:27:53', '0000-00-00 00:00:00'),
(305, 'JIHAN ZAHUROH', '', 'Afirmasi', 'JIHAN', '90371211146408c4abc5ee0ab84fc2f5', 'No', 0, NULL, '2016-06-27 05:29:38', '0000-00-00 00:00:00'),
(306, 'Azril Raihan Miraj', '', 'PGRI', 'azril', 'efddd5a8b90e629a43be99f99d457d81', 'No', 0, NULL, '2016-06-27 05:30:40', '0000-00-00 00:00:00'),
(307, 'Naely saadah', '', 'Afirmasi', 'Naely', 'abcab7ea2b3f0e8feccf327a7825450c', 'No', 0, NULL, '2016-06-27 05:31:18', '0000-00-00 00:00:00'),
(308, 'ALFIAN TEGUH ARIFIANTO', '', 'PGRI', 'ALFIAN', '68dc62803a4eb8f2b9b9a136149b0b70', 'No', 0, NULL, '2016-06-27 05:31:46', '0000-00-00 00:00:00'),
(309, 'INTAN SUHERMAN', '', 'Afirmasi', 'INTAN', '7724d9bb7ed745754cfeae1eed84fc7b', 'No', 0, NULL, '2016-06-27 05:34:56', '0000-00-00 00:00:00'),
(310, 'PUTRI MELATI', '', 'Afirmasi', 'MELATI', '81dc9bdb52d04dc20036dbd8313ed055', 'No', 0, NULL, '2016-06-27 05:35:36', '0000-00-00 00:00:00'),
(311, 'Rindi Rosdiani', '', 'Afirmasi', 'Rindi', '2a15bb6a66de5ce57bc55654f0be06b4', 'No', 0, NULL, '2016-06-27 05:37:55', '0000-00-00 00:00:00'),
(312, 'SILFIANA', '', 'Afirmasi', 'silfi123', '59647f6d0855db6347e6372e06a1b63f', 'No', 0, NULL, '2016-06-27 05:38:20', '0000-00-00 00:00:00'),
(313, 'shinta elyanda', '', 'Afirmasi', 'shinta', 'cd21cbf1821248c06b61630753401c08', 'No', 0, NULL, '2016-06-27 05:38:39', '0000-00-00 00:00:00'),
(314, 'INTAN SUHERMAN', '', 'Afirmasi', 'INTAN 29', '3915a9e2e1b393a96801d7ab5e3479b0', 'No', 0, NULL, '2016-06-27 05:38:47', '0000-00-00 00:00:00'),
(315, 'AKHMAD', '', 'Afirmasi', 'RIFAI9', 'c85b5738485dae80d7d85efe9b3f2efc', 'No', 0, NULL, '2016-06-27 05:39:52', '0000-00-00 00:00:00'),
(316, 'Anggun Mutiara', '', 'Afirmasi', 'Anggun', '0d590cbfcfc37749f988248a65edfdde', 'No', 0, NULL, '2016-06-27 05:40:14', '0000-00-00 00:00:00'),
(317, 'ISNENI HENDRA PUTRI', '', 'Afirmasi', 'ISNENI', '781329f0a234dc04d683ae60c75da364', 'No', 0, NULL, '2016-06-27 05:43:49', '0000-00-00 00:00:00'),
(318, 'ISMATUL MAULANI', '', 'Afirmasi', 'ISMA', '5450c7731de19c131ce20ea74933cc23', 'No', 0, NULL, '2016-06-27 05:47:05', '0000-00-00 00:00:00'),
(319, 'OKIAWATI', '', 'Afirmasi', 'OKI', 'cf75c52328985791ae3a980a1252d5a7', 'No', 0, NULL, '2016-06-27 05:47:12', '0000-00-00 00:00:00'),
(320, 'AJAT SAPUTRA', '', 'Afirmasi', 'ajat6879', '8c63db93243d9fdb64ffc91661f3c546', 'No', 0, NULL, '2016-06-27 05:47:14', '0000-00-00 00:00:00'),
(321, 'SITI ROSTINA', '', 'Afirmasi', 'ROSTINA123', '36db71136c653b51bc8f92d1b853658f', 'No', 0, NULL, '2016-06-27 05:47:59', '0000-00-00 00:00:00'),
(322, 'sihabudin', '', 'Afirmasi', 'sihab87', '3a53eae55a04ecc18560c443a5d7feef', 'No', 0, NULL, '2016-06-27 05:48:06', '0000-00-00 00:00:00'),
(323, 'dunenci', '', 'Afirmasi', 'eci', 'e150ca9b89926b05cc3d6bcc7153b1cc', 'No', 0, NULL, '2016-06-27 05:48:44', '0000-00-00 00:00:00'),
(324, 'YENI NOVIYANI', '', 'Afirmasi', 'NOVI', '0c37fee3a6839587f2303c5a195d8bc1', 'No', 0, NULL, '2016-06-27 05:51:16', '0000-00-00 00:00:00'),
(325, 'HANNAH FAULIA', '', 'PGRI', 'HANNAH', 'd8ce1b2a8268f651551a0e1c9661d80a', 'Yes', 0, NULL, '2016-06-27 05:52:13', '0000-00-00 00:00:00'),
(326, 'YENI NOVIYANI', '', 'Afirmasi', 'NOVI123', '0c37fee3a6839587f2303c5a195d8bc1', 'No', 0, NULL, '2016-06-27 05:52:36', '0000-00-00 00:00:00'),
(327, 'ASMIRA', '', 'Afirmasi', 'MIRA', '269727a2b342292c3bac2d674e3ed2c0', 'No', 0, NULL, '2016-06-27 05:53:32', '0000-00-00 00:00:00'),
(328, 'MUHAMMAD RIFQI NAJIB', '', 'Afirmasi', 'RIFQI', 'c9eb12eeb6961bb4afb68aa3580be4bc', 'No', 0, NULL, '2016-06-27 05:54:03', '0000-00-00 00:00:00'),
(329, 'HERDA FASAH', '', 'Afirmasi', 'HERDA21', '186f0f565fba5bb609cb41eabd5704db', 'No', 0, NULL, '2016-06-27 05:55:47', '0000-00-00 00:00:00'),
(330, 'Monika', '', 'Afirmasi', 'Monika', '031e7f508a26c91b41c6c43a25e68f96', 'No', 0, NULL, '2016-06-27 05:57:33', '0000-00-00 00:00:00'),
(331, 'tanti oktaviani', '', 'Afirmasi', 'tanti', 'f8d892a8bb93622f9c90e184a9b2974a', 'No', 0, NULL, '2016-06-27 05:57:47', '0000-00-00 00:00:00'),
(332, 'NOK SOLEHA', '', 'Afirmasi', 'EHA', '6f15267e4dc5380969ffe05bd7a9e3e7', 'No', 0, NULL, '2016-06-27 06:00:04', '0000-00-00 00:00:00'),
(333, 'luckyana', '', 'Afirmasi', 'lucky', 'e11990da86d183a25cbc60a395196020', 'No', 0, NULL, '2016-06-27 06:00:22', '0000-00-00 00:00:00'),
(334, 'Tabitha Audia Oktaviani Liando', '', 'Afirmasi', 'audia', '88f2b3f139d13c858890ff1917b7e1a0', 'No', 0, NULL, '2016-06-27 06:01:17', '0000-00-00 00:00:00'),
(335, 'priyo', '', 'Afirmasi', 'rio21', '656aed26eb665f868b70fb82c7177d06', 'No', 0, NULL, '2016-06-27 06:02:04', '0000-00-00 00:00:00'),
(336, 'VINA', '', 'Afirmasi', 'VINA26', '729739035b3d5e74dd600e9b51c825ae', 'No', 0, NULL, '2016-06-27 06:03:32', '0000-00-00 00:00:00'),
(337, 'nur listiara', '', 'Afirmasi', 'nurlis', '39f8ffb8767b8e7521fa482ca16891cf', 'No', 0, NULL, '2016-06-27 06:05:55', '0000-00-00 00:00:00'),
(338, 'AGI SATULUS', '', 'Afirmasi', 'AGI', '8f049fdb775c45958cba125c44be7d54', 'No', 0, NULL, '2016-06-27 06:07:13', '0000-00-00 00:00:00'),
(339, 'eelga putri elisabeth rompas', '', 'Afirmasi', 'ega', '853f0d277c9ebfda2c8dd35b270d041a', 'No', 0, NULL, '2016-06-27 06:08:16', '0000-00-00 00:00:00'),
(340, 'Dani Malik', '', 'Prestasi', 'Dani', '3af3b3221714103a593acc24ae213767', 'No', 0, NULL, '2016-06-27 06:08:34', '0000-00-00 00:00:00'),
(341, 'septia vania', '', 'Afirmasi', 'septiavania@gmail.com', 'ec2d531b8e4b0a0848e036148d061b7d', 'No', 0, NULL, '2016-06-27 06:09:17', '0000-00-00 00:00:00'),
(342, 'SRI RAHAYU', '', 'Afirmasi', 'RAHAYU99', '10976c4e1cd5d7aacb59b76b5bcaccb2', 'No', 0, NULL, '2016-06-27 06:10:06', '0000-00-00 00:00:00'),
(343, 'Anisah', '', 'Afirmasi', 'Anis07', '56434295ec67f16289ebe4b128ca1ff5', 'No', 0, NULL, '2016-06-27 06:10:16', '0000-00-00 00:00:00'),
(344, 'MELLY ANA ROSA', '', 'Afirmasi', 'MELLY', '8bc1fc11cb6f7f2535bb9bf0032c27c7', 'No', 0, NULL, '2016-06-27 06:12:48', '0000-00-00 00:00:00'),
(345, 'TAMIRI', '', 'Afirmasi', 'TAMI', '75f1a3c3b0e43859c91c92ee1150ea23', 'No', 0, NULL, '2016-06-27 06:12:53', '0000-00-00 00:00:00'),
(346, 'Devie nopiyanti', '', 'Afirmasi', 'Devi', '6bf1d222a4dfa97e16f71b76ddeb4cd2', 'No', 0, NULL, '2016-06-27 06:14:02', '0000-00-00 00:00:00'),
(347, 'gifta richa trias drastistiana', '', 'Afirmasi', 'gifta', '8250f0b2495fa1c40e0afba955c09398', 'No', 0, NULL, '2016-06-27 06:16:06', '0000-00-00 00:00:00'),
(348, 'shintiya agustiana', '', 'Afirmasi', 'shintiya', '8f1f72b9fa4e4c9dba36b24cbb9d6d5a', 'No', 0, NULL, '2016-06-27 06:16:31', '0000-00-00 00:00:00'),
(349, 'shintiya agustiana', '', 'Afirmasi', 'shintiya17', '757908cfc4ffa350711dc049a9af1a04', 'No', 0, NULL, '2016-06-27 06:18:58', '0000-00-00 00:00:00'),
(350, 'ilham baharudin', '', 'Prestasi', 'ilham', 'c48d0655df293d6abfb9f7874ebf35df', 'No', 0, NULL, '2016-06-27 06:19:16', '0000-00-00 00:00:00'),
(351, 'Abdul Karim', '', 'Afirmasi', 'Karim', '747bda46b83d0f642ccb846d9a8c1cbe', 'No', 0, NULL, '2016-06-27 06:19:46', '0000-00-00 00:00:00'),
(352, 'YEYEN ANGGITA', '', 'Afirmasi', 'YEYEN', 'ca919ea8dd2e625a6e12cf6eb05981da', 'No', 0, NULL, '2016-06-27 06:24:29', '0000-00-00 00:00:00'),
(353, 'KRISNA', '', 'Afirmasi', 'NANA', 'd65735f94c2887da0b5a3fed0b3efa40', 'No', 0, NULL, '2016-06-27 06:24:43', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user_answers`
--

CREATE TABLE IF NOT EXISTS `tb_user_answers` (
`id` int(10) unsigned NOT NULL,
  `user_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `question_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `answer` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `result` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=756 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_user_answers`
--

INSERT INTO `tb_user_answers` (`id`, `user_id`, `subject_id`, `group_id`, `question_id`, `question_type`, `answer`, `result`, `created_at`, `updated_at`) VALUES
(254, 81, 25, 4, 161, 'Akademik', 'A', 1, '2016-06-26 05:54:24', '2016-06-26 05:54:24'),
(255, 81, 25, 4, 190, 'Akademik', 'C', 1, '2016-06-26 05:54:24', '2016-06-26 05:54:24'),
(256, 81, 25, 4, 193, 'Akademik', 'B', 1, '2016-06-26 05:54:24', '2016-06-26 05:54:24'),
(257, 81, 25, 4, 198, 'Akademik', 'D', 1, '2016-06-26 05:54:24', '2016-06-26 05:54:24'),
(258, 81, 25, 4, 201, 'Akademik', 'B', 0, '2016-06-26 05:54:24', '2016-06-26 05:54:24'),
(259, 81, 25, 4, 204, 'Akademik', 'B', 0, '2016-06-26 05:54:24', '2016-06-26 05:54:24'),
(260, 81, 25, 4, 206, 'Akademik', 'C', 0, '2016-06-26 05:54:24', '2016-06-26 05:54:24'),
(261, 81, 25, 4, 207, 'Akademik', 'A', 0, '2016-06-26 05:54:24', '2016-06-26 05:54:24'),
(262, 81, 25, 4, 208, 'Akademik', 'D', 0, '2016-06-26 05:54:24', '2016-06-26 05:54:24'),
(263, 81, 25, 4, 209, 'Akademik', 'D', 0, '2016-06-26 05:54:24', '2016-06-26 05:54:24'),
(264, 81, 25, 4, 210, 'Akademik', 'C', 1, '2016-06-26 05:54:24', '2016-06-26 05:54:24'),
(265, 81, 25, 4, 211, 'Akademik', 'C', 0, '2016-06-26 05:54:24', '2016-06-26 05:54:24'),
(266, 81, 25, 4, 212, 'Akademik', 'D', 0, '2016-06-26 05:54:24', '2016-06-26 05:54:24'),
(267, 81, 25, 4, 213, 'Akademik', 'B', 0, '2016-06-26 05:54:24', '2016-06-26 05:54:24'),
(268, 81, 25, 4, 214, 'Akademik', 'B', 1, '2016-06-26 05:54:24', '2016-06-26 05:54:24'),
(269, 81, 25, 4, 215, 'Akademik', 'C', 0, '2016-06-26 05:54:24', '2016-06-26 05:54:24'),
(270, 81, 25, 4, 216, 'Akademik', 'B', 0, '2016-06-26 05:54:24', '2016-06-26 05:54:24'),
(271, 81, 25, 4, 217, 'Akademik', 'D', 0, '2016-06-26 05:54:24', '2016-06-26 05:54:24'),
(272, 81, 25, 4, 218, 'Akademik', 'C', 0, '2016-06-26 05:54:24', '2016-06-26 05:54:24'),
(273, 81, 25, 4, 219, 'Akademik', 'A', 0, '2016-06-26 05:54:24', '2016-06-26 05:54:24'),
(274, 81, 26, 4, 108, 'Akademik', 'B', 0, '2016-06-26 05:54:24', '2016-06-26 05:54:24'),
(275, 81, 26, 4, 113, 'Akademik', 'C', 1, '2016-06-26 05:54:24', '2016-06-26 05:54:24'),
(276, 81, 26, 4, 115, 'Akademik', 'D', 1, '2016-06-26 05:54:24', '2016-06-26 05:54:24'),
(277, 81, 26, 4, 119, 'Akademik', 'D', 1, '2016-06-26 05:54:24', '2016-06-26 05:54:24'),
(278, 81, 26, 4, 122, 'Akademik', 'C', 0, '2016-06-26 05:54:24', '2016-06-26 05:54:24'),
(279, 81, 26, 4, 130, 'Akademik', 'D', 1, '2016-06-26 05:54:24', '2016-06-26 05:54:24'),
(280, 81, 26, 4, 134, 'Akademik', 'A', 0, '2016-06-26 05:54:24', '2016-06-26 05:54:24'),
(281, 81, 26, 4, 136, 'Akademik', 'B', 1, '2016-06-26 05:54:24', '2016-06-26 05:54:24'),
(282, 81, 26, 4, 138, 'Akademik', 'C', 1, '2016-06-26 05:54:24', '2016-06-26 05:54:24'),
(283, 81, 26, 4, 142, 'Akademik', 'C', 0, '2016-06-26 05:54:24', '2016-06-26 05:54:24'),
(284, 81, 26, 4, 144, 'Akademik', 'C', 0, '2016-06-26 05:54:24', '2016-06-26 05:54:24'),
(285, 81, 26, 4, 150, 'Akademik', 'C', 0, '2016-06-26 05:54:24', '2016-06-26 05:54:24'),
(286, 81, 26, 4, 152, 'Akademik', 'B', 0, '2016-06-26 05:54:24', '2016-06-26 05:54:24'),
(287, 81, 26, 4, 155, 'Akademik', 'C', 1, '2016-06-26 05:54:24', '2016-06-26 05:54:24'),
(288, 81, 26, 4, 156, 'Akademik', 'C', 1, '2016-06-26 05:54:24', '2016-06-26 05:54:24'),
(289, 81, 27, 4, 220, 'Akademik', 'C', 0, '2016-06-26 05:54:24', '2016-06-26 05:54:24'),
(290, 81, 27, 4, 221, 'Akademik', 'C', 1, '2016-06-26 05:54:24', '2016-06-26 05:54:24'),
(291, 81, 27, 4, 222, 'Akademik', 'C', 0, '2016-06-26 05:54:24', '2016-06-26 05:54:24'),
(292, 81, 27, 4, 223, 'Akademik', 'B', 0, '2016-06-26 05:54:24', '2016-06-26 05:54:24'),
(293, 81, 27, 4, 224, 'Akademik', 'D', 1, '2016-06-26 05:54:24', '2016-06-26 05:54:24'),
(294, 81, 27, 4, 225, 'Akademik', 'A', 1, '2016-06-26 05:54:24', '2016-06-26 05:54:24'),
(295, 81, 27, 4, 226, 'Akademik', 'A', 0, '2016-06-26 05:54:24', '2016-06-26 05:54:24'),
(296, 81, 27, 4, 227, 'Akademik', 'D', 1, '2016-06-26 05:54:25', '2016-06-26 05:54:25'),
(297, 81, 27, 4, 228, 'Akademik', 'A', 0, '2016-06-26 05:54:25', '2016-06-26 05:54:25'),
(298, 81, 27, 4, 229, 'Akademik', 'B', 1, '2016-06-26 05:54:25', '2016-06-26 05:54:25'),
(299, 81, 27, 4, 230, 'Akademik', 'C', 1, '2016-06-26 05:54:25', '2016-06-26 05:54:25'),
(300, 81, 27, 4, 231, 'Akademik', 'C', 0, '2016-06-26 05:54:25', '2016-06-26 05:54:25'),
(301, 81, 27, 4, 232, 'Akademik', 'D', 0, '2016-06-26 05:54:25', '2016-06-26 05:54:25'),
(302, 81, 27, 4, 233, 'Akademik', 'C', 0, '2016-06-26 05:54:25', '2016-06-26 05:54:25'),
(303, 81, 27, 4, 234, 'Akademik', 'B', 1, '2016-06-26 05:54:25', '2016-06-26 05:54:25'),
(304, 81, 28, 4, 235, 'Akademik', 'Tidak Terjawab', 0, '2016-06-26 05:54:25', '2016-06-26 05:54:25'),
(305, 81, 28, 4, 236, 'Akademik', 'Tidak Terjawab', 0, '2016-06-26 05:54:25', '2016-06-26 05:54:25'),
(306, 81, 28, 4, 237, 'Akademik', 'C', 0, '2016-06-26 05:54:25', '2016-06-26 05:54:25'),
(307, 81, 28, 4, 238, 'Akademik', 'C', 0, '2016-06-26 05:54:25', '2016-06-26 05:54:25'),
(308, 81, 28, 4, 239, 'Akademik', 'C', 1, '2016-06-26 05:54:25', '2016-06-26 05:54:25'),
(309, 81, 28, 4, 240, 'Akademik', 'Tidak Terjawab', 0, '2016-06-26 05:54:25', '2016-06-26 05:54:25'),
(310, 81, 28, 4, 241, 'Akademik', 'B', 0, '2016-06-26 05:54:25', '2016-06-26 05:54:25'),
(311, 81, 28, 4, 242, 'Akademik', 'D', 0, '2016-06-26 05:54:25', '2016-06-26 05:54:25'),
(312, 81, 28, 4, 243, 'Akademik', 'D', 0, '2016-06-26 05:54:25', '2016-06-26 05:54:25'),
(313, 81, 28, 4, 244, 'Akademik', 'A', 0, '2016-06-26 05:54:25', '2016-06-26 05:54:25'),
(314, 81, 28, 4, 245, 'Akademik', 'C', 0, '2016-06-26 05:54:25', '2016-06-26 05:54:25'),
(315, 81, 28, 4, 246, 'Akademik', 'B', 0, '2016-06-26 05:54:25', '2016-06-26 05:54:25'),
(316, 81, 28, 4, 247, 'Akademik', 'B', 0, '2016-06-26 05:54:25', '2016-06-26 05:54:25'),
(317, 81, 28, 4, 248, 'Akademik', 'C', 0, '2016-06-26 05:54:25', '2016-06-26 05:54:25'),
(318, 81, 28, 4, 249, 'Akademik', 'C', 0, '2016-06-26 05:54:25', '2016-06-26 05:54:25'),
(319, 81, 29, 4, 250, 'Psikotes', 'B', 0, '2016-06-26 05:54:25', '2016-06-26 05:54:25'),
(320, 81, 29, 4, 251, 'Psikotes', 'A', 0, '2016-06-26 05:54:25', '2016-06-26 05:54:25'),
(321, 81, 29, 4, 252, 'Psikotes', 'C', 1, '2016-06-26 05:54:25', '2016-06-26 05:54:25'),
(322, 81, 29, 4, 253, 'Psikotes', 'D', 1, '2016-06-26 05:54:25', '2016-06-26 05:54:25'),
(323, 81, 29, 4, 254, 'Psikotes', 'A', 1, '2016-06-26 05:54:25', '2016-06-26 05:54:25'),
(324, 81, 29, 4, 255, 'Psikotes', 'Tidak Terjawab', 0, '2016-06-26 05:54:25', '2016-06-26 05:54:25'),
(325, 81, 29, 4, 256, 'Psikotes', 'C', 0, '2016-06-26 05:54:25', '2016-06-26 05:54:25'),
(326, 81, 29, 4, 257, 'Psikotes', 'C', 0, '2016-06-26 05:54:25', '2016-06-26 05:54:25'),
(327, 81, 29, 4, 258, 'Psikotes', 'B', 0, '2016-06-26 05:54:25', '2016-06-26 05:54:25'),
(328, 81, 29, 4, 259, 'Psikotes', 'C', 0, '2016-06-26 05:54:25', '2016-06-26 05:54:25'),
(329, 81, 29, 4, 260, 'Psikotes', 'A', 0, '2016-06-26 05:54:25', '2016-06-26 05:54:25'),
(330, 81, 29, 4, 261, 'Psikotes', 'B', 1, '2016-06-26 05:54:25', '2016-06-26 05:54:25'),
(331, 81, 29, 4, 262, 'Psikotes', 'C', 0, '2016-06-26 05:54:25', '2016-06-26 05:54:25'),
(332, 81, 29, 4, 263, 'Psikotes', 'A', 0, '2016-06-26 05:54:25', '2016-06-26 05:54:25'),
(333, 81, 29, 4, 264, 'Psikotes', 'A', 1, '2016-06-26 05:54:25', '2016-06-26 05:54:25'),
(334, 81, 31, 4, 93, 'Kejuruan', 'D', 0, '2016-06-26 05:54:25', '2016-06-26 05:54:25'),
(335, 81, 31, 4, 96, 'Kejuruan', 'B', 0, '2016-06-26 05:54:25', '2016-06-26 05:54:25'),
(336, 81, 31, 4, 98, 'Kejuruan', 'B', 1, '2016-06-26 05:54:25', '2016-06-26 05:54:25'),
(337, 81, 31, 4, 100, 'Kejuruan', 'C', 0, '2016-06-26 05:54:25', '2016-06-26 05:54:25'),
(338, 81, 31, 4, 101, 'Kejuruan', 'B', 0, '2016-06-26 05:54:25', '2016-06-26 05:54:25'),
(339, 81, 31, 4, 104, 'Kejuruan', 'C', 0, '2016-06-26 05:54:25', '2016-06-26 05:54:25'),
(340, 81, 31, 4, 107, 'Kejuruan', 'B', 0, '2016-06-26 05:54:25', '2016-06-26 05:54:25'),
(341, 81, 31, 4, 112, 'Kejuruan', 'C', 0, '2016-06-26 05:54:25', '2016-06-26 05:54:25'),
(342, 81, 31, 4, 118, 'Kejuruan', 'C', 1, '2016-06-26 05:54:25', '2016-06-26 05:54:25'),
(343, 81, 31, 4, 123, 'Kejuruan', 'B', 0, '2016-06-26 05:54:25', '2016-06-26 05:54:25'),
(344, 81, 31, 4, 126, 'Kejuruan', 'D', 0, '2016-06-26 05:54:25', '2016-06-26 05:54:25'),
(345, 81, 31, 4, 129, 'Kejuruan', 'A', 1, '2016-06-26 05:54:25', '2016-06-26 05:54:25'),
(346, 81, 31, 4, 133, 'Kejuruan', 'B', 1, '2016-06-26 05:54:25', '2016-06-26 05:54:25'),
(347, 81, 31, 4, 139, 'Kejuruan', 'C', 1, '2016-06-26 05:54:25', '2016-06-26 05:54:25'),
(348, 81, 31, 4, 141, 'Kejuruan', 'D', 0, '2016-06-26 05:54:25', '2016-06-26 05:54:25'),
(349, 81, 31, 4, 270, 'Kejuruan', 'A', 0, '2016-06-26 05:54:25', '2016-06-26 05:54:25'),
(350, 81, 31, 4, 271, 'Kejuruan', 'A', 1, '2016-06-26 05:54:26', '2016-06-26 05:54:26'),
(351, 81, 31, 4, 272, 'Kejuruan', 'C', 0, '2016-06-26 05:54:26', '2016-06-26 05:54:26'),
(352, 81, 31, 4, 273, 'Kejuruan', 'D', 1, '2016-06-26 05:54:26', '2016-06-26 05:54:26'),
(353, 81, 31, 4, 274, 'Kejuruan', 'B', 0, '2016-06-26 05:54:26', '2016-06-26 05:54:26'),
(354, 81, 25, 4, 161, 'Akademik', 'A', 1, '2016-06-26 05:55:02', '2016-06-26 05:55:02'),
(355, 81, 25, 4, 190, 'Akademik', 'C', 1, '2016-06-26 05:55:02', '2016-06-26 05:55:02'),
(356, 81, 25, 4, 193, 'Akademik', 'B', 1, '2016-06-26 05:55:02', '2016-06-26 05:55:02'),
(357, 81, 25, 4, 198, 'Akademik', 'D', 1, '2016-06-26 05:55:03', '2016-06-26 05:55:03'),
(358, 81, 25, 4, 201, 'Akademik', 'B', 0, '2016-06-26 05:55:03', '2016-06-26 05:55:03'),
(359, 81, 25, 4, 204, 'Akademik', 'B', 0, '2016-06-26 05:55:03', '2016-06-26 05:55:03'),
(360, 81, 25, 4, 206, 'Akademik', 'C', 0, '2016-06-26 05:55:03', '2016-06-26 05:55:03'),
(361, 81, 25, 4, 207, 'Akademik', 'A', 0, '2016-06-26 05:55:03', '2016-06-26 05:55:03'),
(362, 81, 25, 4, 208, 'Akademik', 'D', 0, '2016-06-26 05:55:03', '2016-06-26 05:55:03'),
(363, 81, 25, 4, 209, 'Akademik', 'D', 0, '2016-06-26 05:55:03', '2016-06-26 05:55:03'),
(364, 81, 25, 4, 210, 'Akademik', 'C', 1, '2016-06-26 05:55:03', '2016-06-26 05:55:03'),
(365, 81, 25, 4, 211, 'Akademik', 'C', 0, '2016-06-26 05:55:03', '2016-06-26 05:55:03'),
(366, 81, 25, 4, 212, 'Akademik', 'D', 0, '2016-06-26 05:55:03', '2016-06-26 05:55:03'),
(367, 81, 25, 4, 213, 'Akademik', 'B', 0, '2016-06-26 05:55:03', '2016-06-26 05:55:03'),
(368, 81, 25, 4, 214, 'Akademik', 'B', 1, '2016-06-26 05:55:03', '2016-06-26 05:55:03'),
(369, 81, 25, 4, 215, 'Akademik', 'C', 0, '2016-06-26 05:55:03', '2016-06-26 05:55:03'),
(370, 81, 25, 4, 216, 'Akademik', 'B', 0, '2016-06-26 05:55:03', '2016-06-26 05:55:03'),
(371, 81, 25, 4, 217, 'Akademik', 'D', 0, '2016-06-26 05:55:03', '2016-06-26 05:55:03'),
(372, 81, 25, 4, 218, 'Akademik', 'C', 0, '2016-06-26 05:55:03', '2016-06-26 05:55:03'),
(373, 81, 25, 4, 219, 'Akademik', 'A', 0, '2016-06-26 05:55:03', '2016-06-26 05:55:03'),
(374, 81, 26, 4, 108, 'Akademik', 'B', 0, '2016-06-26 05:55:03', '2016-06-26 05:55:03'),
(375, 81, 26, 4, 113, 'Akademik', 'C', 1, '2016-06-26 05:55:03', '2016-06-26 05:55:03'),
(376, 81, 26, 4, 115, 'Akademik', 'D', 1, '2016-06-26 05:55:03', '2016-06-26 05:55:03'),
(377, 81, 26, 4, 119, 'Akademik', 'D', 1, '2016-06-26 05:55:03', '2016-06-26 05:55:03'),
(378, 81, 26, 4, 122, 'Akademik', 'C', 0, '2016-06-26 05:55:03', '2016-06-26 05:55:03'),
(379, 81, 26, 4, 130, 'Akademik', 'D', 1, '2016-06-26 05:55:03', '2016-06-26 05:55:03'),
(380, 81, 26, 4, 134, 'Akademik', 'A', 0, '2016-06-26 05:55:03', '2016-06-26 05:55:03'),
(381, 81, 26, 4, 136, 'Akademik', 'B', 1, '2016-06-26 05:55:03', '2016-06-26 05:55:03'),
(382, 81, 26, 4, 138, 'Akademik', 'C', 1, '2016-06-26 05:55:03', '2016-06-26 05:55:03'),
(383, 81, 26, 4, 142, 'Akademik', 'C', 0, '2016-06-26 05:55:03', '2016-06-26 05:55:03'),
(384, 81, 26, 4, 144, 'Akademik', 'C', 0, '2016-06-26 05:55:03', '2016-06-26 05:55:03'),
(385, 81, 26, 4, 150, 'Akademik', 'C', 0, '2016-06-26 05:55:03', '2016-06-26 05:55:03'),
(386, 81, 26, 4, 152, 'Akademik', 'B', 0, '2016-06-26 05:55:03', '2016-06-26 05:55:03'),
(387, 81, 26, 4, 155, 'Akademik', 'C', 1, '2016-06-26 05:55:03', '2016-06-26 05:55:03'),
(388, 81, 26, 4, 156, 'Akademik', 'C', 1, '2016-06-26 05:55:03', '2016-06-26 05:55:03'),
(389, 81, 27, 4, 220, 'Akademik', 'C', 0, '2016-06-26 05:55:03', '2016-06-26 05:55:03'),
(390, 81, 27, 4, 221, 'Akademik', 'C', 1, '2016-06-26 05:55:03', '2016-06-26 05:55:03'),
(391, 81, 27, 4, 222, 'Akademik', 'C', 0, '2016-06-26 05:55:03', '2016-06-26 05:55:03'),
(392, 81, 27, 4, 223, 'Akademik', 'B', 0, '2016-06-26 05:55:03', '2016-06-26 05:55:03'),
(393, 81, 27, 4, 224, 'Akademik', 'D', 1, '2016-06-26 05:55:03', '2016-06-26 05:55:03'),
(394, 81, 27, 4, 225, 'Akademik', 'A', 1, '2016-06-26 05:55:03', '2016-06-26 05:55:03'),
(395, 81, 27, 4, 226, 'Akademik', 'A', 0, '2016-06-26 05:55:03', '2016-06-26 05:55:03'),
(396, 81, 27, 4, 227, 'Akademik', 'D', 1, '2016-06-26 05:55:03', '2016-06-26 05:55:03'),
(397, 81, 27, 4, 228, 'Akademik', 'A', 0, '2016-06-26 05:55:03', '2016-06-26 05:55:03'),
(398, 81, 27, 4, 229, 'Akademik', 'B', 1, '2016-06-26 05:55:03', '2016-06-26 05:55:03'),
(399, 81, 27, 4, 230, 'Akademik', 'C', 1, '2016-06-26 05:55:03', '2016-06-26 05:55:03'),
(400, 81, 27, 4, 231, 'Akademik', 'C', 0, '2016-06-26 05:55:03', '2016-06-26 05:55:03'),
(401, 81, 27, 4, 232, 'Akademik', 'D', 0, '2016-06-26 05:55:03', '2016-06-26 05:55:03'),
(402, 81, 27, 4, 233, 'Akademik', 'C', 0, '2016-06-26 05:55:03', '2016-06-26 05:55:03'),
(403, 81, 27, 4, 234, 'Akademik', 'B', 1, '2016-06-26 05:55:03', '2016-06-26 05:55:03'),
(404, 81, 28, 4, 235, 'Akademik', 'Tidak Terjawab', 0, '2016-06-26 05:55:03', '2016-06-26 05:55:03'),
(405, 81, 28, 4, 236, 'Akademik', 'Tidak Terjawab', 0, '2016-06-26 05:55:04', '2016-06-26 05:55:04'),
(406, 81, 28, 4, 237, 'Akademik', 'C', 0, '2016-06-26 05:55:04', '2016-06-26 05:55:04'),
(407, 81, 28, 4, 238, 'Akademik', 'C', 0, '2016-06-26 05:55:04', '2016-06-26 05:55:04'),
(408, 81, 28, 4, 239, 'Akademik', 'C', 1, '2016-06-26 05:55:04', '2016-06-26 05:55:04'),
(409, 81, 28, 4, 240, 'Akademik', 'Tidak Terjawab', 0, '2016-06-26 05:55:04', '2016-06-26 05:55:04'),
(410, 81, 28, 4, 241, 'Akademik', 'B', 0, '2016-06-26 05:55:04', '2016-06-26 05:55:04'),
(411, 81, 28, 4, 242, 'Akademik', 'D', 0, '2016-06-26 05:55:04', '2016-06-26 05:55:04'),
(412, 81, 28, 4, 243, 'Akademik', 'D', 0, '2016-06-26 05:55:04', '2016-06-26 05:55:04'),
(413, 81, 28, 4, 244, 'Akademik', 'A', 0, '2016-06-26 05:55:04', '2016-06-26 05:55:04'),
(414, 81, 28, 4, 245, 'Akademik', 'C', 0, '2016-06-26 05:55:04', '2016-06-26 05:55:04'),
(415, 81, 28, 4, 246, 'Akademik', 'B', 0, '2016-06-26 05:55:04', '2016-06-26 05:55:04'),
(416, 81, 28, 4, 247, 'Akademik', 'B', 0, '2016-06-26 05:55:04', '2016-06-26 05:55:04'),
(417, 81, 28, 4, 248, 'Akademik', 'C', 0, '2016-06-26 05:55:04', '2016-06-26 05:55:04'),
(418, 81, 28, 4, 249, 'Akademik', 'C', 0, '2016-06-26 05:55:04', '2016-06-26 05:55:04'),
(419, 81, 29, 4, 250, 'Psikotes', 'B', 0, '2016-06-26 05:55:04', '2016-06-26 05:55:04'),
(420, 81, 29, 4, 251, 'Psikotes', 'A', 0, '2016-06-26 05:55:04', '2016-06-26 05:55:04'),
(421, 81, 29, 4, 252, 'Psikotes', 'C', 1, '2016-06-26 05:55:04', '2016-06-26 05:55:04'),
(422, 81, 29, 4, 253, 'Psikotes', 'D', 1, '2016-06-26 05:55:04', '2016-06-26 05:55:04'),
(423, 81, 29, 4, 254, 'Psikotes', 'A', 1, '2016-06-26 05:55:04', '2016-06-26 05:55:04'),
(424, 81, 29, 4, 255, 'Psikotes', 'Tidak Terjawab', 0, '2016-06-26 05:55:04', '2016-06-26 05:55:04'),
(425, 81, 29, 4, 256, 'Psikotes', 'C', 0, '2016-06-26 05:55:04', '2016-06-26 05:55:04'),
(426, 81, 29, 4, 257, 'Psikotes', 'C', 0, '2016-06-26 05:55:04', '2016-06-26 05:55:04'),
(427, 81, 29, 4, 258, 'Psikotes', 'B', 0, '2016-06-26 05:55:04', '2016-06-26 05:55:04'),
(428, 81, 29, 4, 259, 'Psikotes', 'C', 0, '2016-06-26 05:55:04', '2016-06-26 05:55:04'),
(429, 81, 29, 4, 260, 'Psikotes', 'A', 0, '2016-06-26 05:55:04', '2016-06-26 05:55:04'),
(430, 81, 29, 4, 261, 'Psikotes', 'B', 1, '2016-06-26 05:55:04', '2016-06-26 05:55:04'),
(431, 81, 29, 4, 262, 'Psikotes', 'C', 0, '2016-06-26 05:55:04', '2016-06-26 05:55:04'),
(432, 81, 29, 4, 263, 'Psikotes', 'A', 0, '2016-06-26 05:55:04', '2016-06-26 05:55:04'),
(433, 81, 29, 4, 264, 'Psikotes', 'A', 1, '2016-06-26 05:55:04', '2016-06-26 05:55:04'),
(434, 81, 31, 4, 93, 'Kejuruan', 'D', 0, '2016-06-26 05:55:04', '2016-06-26 05:55:04'),
(435, 81, 31, 4, 96, 'Kejuruan', 'B', 0, '2016-06-26 05:55:04', '2016-06-26 05:55:04'),
(436, 81, 31, 4, 98, 'Kejuruan', 'B', 1, '2016-06-26 05:55:04', '2016-06-26 05:55:04'),
(437, 81, 31, 4, 100, 'Kejuruan', 'C', 0, '2016-06-26 05:55:04', '2016-06-26 05:55:04'),
(438, 81, 31, 4, 101, 'Kejuruan', 'B', 0, '2016-06-26 05:55:04', '2016-06-26 05:55:04'),
(439, 81, 31, 4, 104, 'Kejuruan', 'C', 0, '2016-06-26 05:55:04', '2016-06-26 05:55:04'),
(440, 81, 31, 4, 107, 'Kejuruan', 'B', 0, '2016-06-26 05:55:04', '2016-06-26 05:55:04'),
(441, 81, 31, 4, 112, 'Kejuruan', 'C', 0, '2016-06-26 05:55:04', '2016-06-26 05:55:04'),
(442, 81, 31, 4, 118, 'Kejuruan', 'C', 1, '2016-06-26 05:55:04', '2016-06-26 05:55:04'),
(443, 81, 31, 4, 123, 'Kejuruan', 'B', 0, '2016-06-26 05:55:04', '2016-06-26 05:55:04'),
(444, 81, 31, 4, 126, 'Kejuruan', 'D', 0, '2016-06-26 05:55:04', '2016-06-26 05:55:04'),
(445, 81, 31, 4, 129, 'Kejuruan', 'A', 1, '2016-06-26 05:55:04', '2016-06-26 05:55:04'),
(446, 81, 31, 4, 133, 'Kejuruan', 'B', 1, '2016-06-26 05:55:04', '2016-06-26 05:55:04'),
(447, 81, 31, 4, 139, 'Kejuruan', 'C', 1, '2016-06-26 05:55:04', '2016-06-26 05:55:04'),
(448, 81, 31, 4, 141, 'Kejuruan', 'D', 0, '2016-06-26 05:55:04', '2016-06-26 05:55:04'),
(449, 81, 31, 4, 270, 'Kejuruan', 'A', 0, '2016-06-26 05:55:04', '2016-06-26 05:55:04'),
(450, 81, 31, 4, 271, 'Kejuruan', 'A', 1, '2016-06-26 05:55:04', '2016-06-26 05:55:04'),
(451, 81, 31, 4, 272, 'Kejuruan', 'C', 0, '2016-06-26 05:55:04', '2016-06-26 05:55:04'),
(452, 81, 31, 4, 273, 'Kejuruan', 'D', 1, '2016-06-26 05:55:04', '2016-06-26 05:55:04'),
(453, 81, 31, 4, 274, 'Kejuruan', 'B', 0, '2016-06-26 05:55:04', '2016-06-26 05:55:04'),
(454, 83, 25, 5, 161, 'Akademik', 'A', 1, '2016-06-26 05:56:37', '2016-06-26 05:56:37'),
(455, 83, 25, 5, 190, 'Akademik', 'A', 0, '2016-06-26 05:56:37', '2016-06-26 05:56:37'),
(456, 83, 25, 5, 193, 'Akademik', 'A', 0, '2016-06-26 05:56:37', '2016-06-26 05:56:37'),
(457, 83, 25, 5, 198, 'Akademik', 'B', 0, '2016-06-26 05:56:37', '2016-06-26 05:56:37'),
(458, 83, 25, 5, 201, 'Akademik', 'A', 0, '2016-06-26 05:56:37', '2016-06-26 05:56:37'),
(459, 83, 25, 5, 204, 'Akademik', 'A', 0, '2016-06-26 05:56:37', '2016-06-26 05:56:37'),
(460, 83, 25, 5, 206, 'Akademik', 'B', 0, '2016-06-26 05:56:37', '2016-06-26 05:56:37'),
(461, 83, 25, 5, 207, 'Akademik', 'A', 0, '2016-06-26 05:56:38', '2016-06-26 05:56:38'),
(462, 83, 25, 5, 208, 'Akademik', 'C', 1, '2016-06-26 05:56:38', '2016-06-26 05:56:38'),
(463, 83, 25, 5, 209, 'Akademik', 'B', 0, '2016-06-26 05:56:38', '2016-06-26 05:56:38'),
(464, 83, 25, 5, 210, 'Akademik', 'A', 0, '2016-06-26 05:56:38', '2016-06-26 05:56:38'),
(465, 83, 25, 5, 211, 'Akademik', 'C', 0, '2016-06-26 05:56:38', '2016-06-26 05:56:38'),
(466, 83, 25, 5, 212, 'Akademik', 'A', 0, '2016-06-26 05:56:38', '2016-06-26 05:56:38'),
(467, 83, 25, 5, 213, 'Akademik', 'A', 1, '2016-06-26 05:56:38', '2016-06-26 05:56:38'),
(468, 83, 25, 5, 214, 'Akademik', 'A', 0, '2016-06-26 05:56:38', '2016-06-26 05:56:38'),
(469, 83, 25, 5, 215, 'Akademik', 'B', 0, '2016-06-26 05:56:38', '2016-06-26 05:56:38'),
(470, 83, 25, 5, 216, 'Akademik', 'A', 0, '2016-06-26 05:56:38', '2016-06-26 05:56:38'),
(471, 83, 25, 5, 217, 'Akademik', 'C', 1, '2016-06-26 05:56:38', '2016-06-26 05:56:38'),
(472, 83, 25, 5, 218, 'Akademik', 'B', 0, '2016-06-26 05:56:38', '2016-06-26 05:56:38'),
(473, 83, 25, 5, 219, 'Akademik', 'A', 0, '2016-06-26 05:56:38', '2016-06-26 05:56:38'),
(474, 83, 26, 5, 108, 'Akademik', 'A', 1, '2016-06-26 05:56:38', '2016-06-26 05:56:38'),
(475, 83, 26, 5, 113, 'Akademik', 'C', 1, '2016-06-26 05:56:38', '2016-06-26 05:56:38'),
(476, 83, 26, 5, 115, 'Akademik', 'B', 0, '2016-06-26 05:56:38', '2016-06-26 05:56:38'),
(477, 83, 26, 5, 119, 'Akademik', 'B', 0, '2016-06-26 05:56:38', '2016-06-26 05:56:38'),
(478, 83, 26, 5, 122, 'Akademik', 'A', 0, '2016-06-26 05:56:38', '2016-06-26 05:56:38'),
(479, 83, 26, 5, 130, 'Akademik', 'B', 0, '2016-06-26 05:56:38', '2016-06-26 05:56:38'),
(480, 83, 26, 5, 134, 'Akademik', 'A', 0, '2016-06-26 05:56:38', '2016-06-26 05:56:38'),
(481, 83, 26, 5, 136, 'Akademik', 'D', 0, '2016-06-26 05:56:38', '2016-06-26 05:56:38'),
(482, 83, 26, 5, 138, 'Akademik', 'A', 0, '2016-06-26 05:56:38', '2016-06-26 05:56:38'),
(483, 83, 26, 5, 142, 'Akademik', 'A', 0, '2016-06-26 05:56:38', '2016-06-26 05:56:38'),
(484, 83, 26, 5, 144, 'Akademik', 'C', 0, '2016-06-26 05:56:38', '2016-06-26 05:56:38'),
(485, 83, 26, 5, 150, 'Akademik', 'C', 0, '2016-06-26 05:56:38', '2016-06-26 05:56:38'),
(486, 83, 26, 5, 152, 'Akademik', 'A', 0, '2016-06-26 05:56:38', '2016-06-26 05:56:38'),
(487, 83, 26, 5, 155, 'Akademik', 'A', 0, '2016-06-26 05:56:38', '2016-06-26 05:56:38'),
(488, 83, 26, 5, 156, 'Akademik', 'A', 0, '2016-06-26 05:56:38', '2016-06-26 05:56:38'),
(489, 83, 27, 5, 220, 'Akademik', 'D', 1, '2016-06-26 05:56:38', '2016-06-26 05:56:38'),
(490, 83, 27, 5, 221, 'Akademik', 'A', 0, '2016-06-26 05:56:38', '2016-06-26 05:56:38'),
(491, 83, 27, 5, 222, 'Akademik', 'D', 0, '2016-06-26 05:56:38', '2016-06-26 05:56:38'),
(492, 83, 27, 5, 223, 'Akademik', 'B', 0, '2016-06-26 05:56:38', '2016-06-26 05:56:38'),
(493, 83, 27, 5, 224, 'Akademik', 'A', 0, '2016-06-26 05:56:38', '2016-06-26 05:56:38'),
(494, 83, 27, 5, 225, 'Akademik', 'C', 0, '2016-06-26 05:56:38', '2016-06-26 05:56:38'),
(495, 83, 27, 5, 226, 'Akademik', 'A', 0, '2016-06-26 05:56:38', '2016-06-26 05:56:38'),
(496, 83, 27, 5, 227, 'Akademik', 'A', 0, '2016-06-26 05:56:38', '2016-06-26 05:56:38'),
(497, 83, 27, 5, 228, 'Akademik', 'B', 0, '2016-06-26 05:56:38', '2016-06-26 05:56:38'),
(498, 83, 27, 5, 229, 'Akademik', 'A', 0, '2016-06-26 05:56:38', '2016-06-26 05:56:38'),
(499, 83, 27, 5, 230, 'Akademik', 'A', 0, '2016-06-26 05:56:38', '2016-06-26 05:56:38'),
(500, 83, 27, 5, 231, 'Akademik', 'C', 0, '2016-06-26 05:56:38', '2016-06-26 05:56:38'),
(501, 83, 27, 5, 232, 'Akademik', 'A', 1, '2016-06-26 05:56:38', '2016-06-26 05:56:38'),
(502, 83, 27, 5, 233, 'Akademik', 'A', 0, '2016-06-26 05:56:38', '2016-06-26 05:56:38'),
(503, 83, 27, 5, 234, 'Akademik', 'A', 0, '2016-06-26 05:56:38', '2016-06-26 05:56:38'),
(504, 83, 28, 5, 235, 'Akademik', 'Tidak Terjawab', 0, '2016-06-26 05:56:38', '2016-06-26 05:56:38'),
(505, 83, 28, 5, 236, 'Akademik', 'B', 0, '2016-06-26 05:56:38', '2016-06-26 05:56:38'),
(506, 83, 28, 5, 237, 'Akademik', 'A', 1, '2016-06-26 05:56:38', '2016-06-26 05:56:38'),
(507, 83, 28, 5, 238, 'Akademik', 'B', 0, '2016-06-26 05:56:38', '2016-06-26 05:56:38'),
(508, 83, 28, 5, 239, 'Akademik', 'A', 0, '2016-06-26 05:56:39', '2016-06-26 05:56:39'),
(509, 83, 28, 5, 240, 'Akademik', 'A', 0, '2016-06-26 05:56:39', '2016-06-26 05:56:39'),
(510, 83, 28, 5, 241, 'Akademik', 'A', 0, '2016-06-26 05:56:39', '2016-06-26 05:56:39'),
(511, 83, 28, 5, 242, 'Akademik', 'A', 0, '2016-06-26 05:56:39', '2016-06-26 05:56:39'),
(512, 83, 28, 5, 243, 'Akademik', 'B', 0, '2016-06-26 05:56:39', '2016-06-26 05:56:39'),
(513, 83, 28, 5, 244, 'Akademik', 'B', 0, '2016-06-26 05:56:39', '2016-06-26 05:56:39'),
(514, 83, 28, 5, 245, 'Akademik', 'A', 1, '2016-06-26 05:56:39', '2016-06-26 05:56:39'),
(515, 83, 28, 5, 246, 'Akademik', 'B', 0, '2016-06-26 05:56:39', '2016-06-26 05:56:39'),
(516, 83, 28, 5, 247, 'Akademik', 'A', 0, '2016-06-26 05:56:39', '2016-06-26 05:56:39'),
(517, 83, 28, 5, 248, 'Akademik', 'C', 0, '2016-06-26 05:56:39', '2016-06-26 05:56:39'),
(518, 83, 28, 5, 249, 'Akademik', 'A', 0, '2016-06-26 05:56:39', '2016-06-26 05:56:39'),
(519, 83, 29, 5, 250, 'Psikotes', 'A', 1, '2016-06-26 05:56:39', '2016-06-26 05:56:39'),
(520, 83, 29, 5, 251, 'Psikotes', 'C', 0, '2016-06-26 05:56:39', '2016-06-26 05:56:39'),
(521, 83, 29, 5, 252, 'Psikotes', 'A', 0, '2016-06-26 05:56:39', '2016-06-26 05:56:39'),
(522, 83, 29, 5, 253, 'Psikotes', 'B', 0, '2016-06-26 05:56:39', '2016-06-26 05:56:39'),
(523, 83, 29, 5, 254, 'Psikotes', 'A', 1, '2016-06-26 05:56:39', '2016-06-26 05:56:39'),
(524, 83, 29, 5, 255, 'Psikotes', 'B', 0, '2016-06-26 05:56:39', '2016-06-26 05:56:39'),
(525, 83, 29, 5, 256, 'Psikotes', 'A', 0, '2016-06-26 05:56:39', '2016-06-26 05:56:39'),
(526, 83, 29, 5, 257, 'Psikotes', 'B', 0, '2016-06-26 05:56:39', '2016-06-26 05:56:39'),
(527, 83, 29, 5, 258, 'Psikotes', 'C', 0, '2016-06-26 05:56:39', '2016-06-26 05:56:39'),
(528, 83, 29, 5, 259, 'Psikotes', 'A', 0, '2016-06-26 05:56:39', '2016-06-26 05:56:39'),
(529, 83, 29, 5, 260, 'Psikotes', 'D', 0, '2016-06-26 05:56:39', '2016-06-26 05:56:39'),
(530, 83, 29, 5, 261, 'Psikotes', 'A', 0, '2016-06-26 05:56:39', '2016-06-26 05:56:39'),
(531, 83, 29, 5, 262, 'Psikotes', 'A', 0, '2016-06-26 05:56:39', '2016-06-26 05:56:39'),
(532, 83, 29, 5, 263, 'Psikotes', 'C', 0, '2016-06-26 05:56:39', '2016-06-26 05:56:39'),
(533, 83, 29, 5, 264, 'Psikotes', 'A', 1, '2016-06-26 05:56:39', '2016-06-26 05:56:39'),
(534, 83, 33, 5, 94, 'Kejuruan', 'A', 0, '2016-06-26 05:56:39', '2016-06-26 05:56:39'),
(535, 83, 33, 5, 97, 'Kejuruan', 'A', 1, '2016-06-26 05:56:39', '2016-06-26 05:56:39'),
(536, 83, 33, 5, 99, 'Kejuruan', 'A', 1, '2016-06-26 05:56:39', '2016-06-26 05:56:39'),
(537, 83, 33, 5, 103, 'Kejuruan', 'B', 0, '2016-06-26 05:56:39', '2016-06-26 05:56:39'),
(538, 83, 33, 5, 106, 'Kejuruan', 'A', 0, '2016-06-26 05:56:39', '2016-06-26 05:56:39'),
(539, 83, 33, 5, 110, 'Kejuruan', 'B', 0, '2016-06-26 05:56:39', '2016-06-26 05:56:39'),
(540, 83, 33, 5, 111, 'Kejuruan', 'A', 0, '2016-06-26 05:56:39', '2016-06-26 05:56:39'),
(541, 83, 33, 5, 117, 'Kejuruan', 'Tidak Terjawab', 0, '2016-06-26 05:56:39', '2016-06-26 05:56:39'),
(542, 83, 33, 5, 120, 'Kejuruan', 'A', 1, '2016-06-26 05:56:39', '2016-06-26 05:56:39'),
(543, 83, 33, 5, 124, 'Kejuruan', 'D', 1, '2016-06-26 05:56:39', '2016-06-26 05:56:39'),
(544, 83, 33, 5, 128, 'Kejuruan', 'D', 1, '2016-06-26 05:56:39', '2016-06-26 05:56:39'),
(545, 83, 33, 5, 132, 'Kejuruan', 'D', 0, '2016-06-26 05:56:39', '2016-06-26 05:56:39'),
(546, 83, 33, 5, 135, 'Kejuruan', 'A', 1, '2016-06-26 05:56:39', '2016-06-26 05:56:39'),
(547, 83, 33, 5, 137, 'Kejuruan', 'A', 0, '2016-06-26 05:56:39', '2016-06-26 05:56:39'),
(548, 83, 33, 5, 140, 'Kejuruan', 'A', 0, '2016-06-26 05:56:39', '2016-06-26 05:56:39'),
(549, 83, 33, 5, 280, 'Kejuruan', 'B', 0, '2016-06-26 05:56:39', '2016-06-26 05:56:39'),
(550, 83, 33, 5, 281, 'Kejuruan', 'A', 0, '2016-06-26 05:56:39', '2016-06-26 05:56:39'),
(551, 83, 33, 5, 282, 'Kejuruan', 'A', 0, '2016-06-26 05:56:39', '2016-06-26 05:56:39'),
(552, 83, 33, 5, 283, 'Kejuruan', 'A', 0, '2016-06-26 05:56:39', '2016-06-26 05:56:39'),
(553, 83, 33, 5, 284, 'Kejuruan', 'B', 0, '2016-06-26 05:56:39', '2016-06-26 05:56:39'),
(554, 84, 25, 4, 161, 'Akademik', 'B', 0, '2016-06-26 06:04:40', '2016-06-26 06:04:40'),
(555, 84, 25, 4, 190, 'Akademik', 'C', 1, '2016-06-26 06:04:40', '2016-06-26 06:04:40'),
(556, 84, 25, 4, 193, 'Akademik', 'C', 0, '2016-06-26 06:04:40', '2016-06-26 06:04:40'),
(557, 84, 25, 4, 198, 'Akademik', 'A', 0, '2016-06-26 06:04:40', '2016-06-26 06:04:40'),
(558, 84, 25, 4, 201, 'Akademik', 'D', 0, '2016-06-26 06:04:40', '2016-06-26 06:04:40'),
(559, 84, 25, 4, 204, 'Akademik', 'C', 1, '2016-06-26 06:04:40', '2016-06-26 06:04:40'),
(560, 84, 25, 4, 206, 'Akademik', 'D', 0, '2016-06-26 06:04:40', '2016-06-26 06:04:40'),
(561, 84, 25, 4, 207, 'Akademik', 'C', 0, '2016-06-26 06:04:40', '2016-06-26 06:04:40'),
(562, 84, 25, 4, 208, 'Akademik', 'B', 0, '2016-06-26 06:04:40', '2016-06-26 06:04:40'),
(563, 84, 25, 4, 209, 'Akademik', 'C', 1, '2016-06-26 06:04:40', '2016-06-26 06:04:40'),
(564, 84, 25, 4, 210, 'Akademik', 'D', 0, '2016-06-26 06:04:40', '2016-06-26 06:04:40'),
(565, 84, 25, 4, 211, 'Akademik', 'B', 0, '2016-06-26 06:04:40', '2016-06-26 06:04:40'),
(566, 84, 25, 4, 212, 'Akademik', 'D', 0, '2016-06-26 06:04:40', '2016-06-26 06:04:40'),
(567, 84, 25, 4, 213, 'Akademik', 'A', 1, '2016-06-26 06:04:40', '2016-06-26 06:04:40'),
(568, 84, 25, 4, 214, 'Akademik', 'C', 0, '2016-06-26 06:04:40', '2016-06-26 06:04:40'),
(569, 84, 25, 4, 215, 'Akademik', 'C', 0, '2016-06-26 06:04:40', '2016-06-26 06:04:40'),
(570, 84, 25, 4, 216, 'Akademik', 'B', 0, '2016-06-26 06:04:40', '2016-06-26 06:04:40'),
(571, 84, 25, 4, 217, 'Akademik', 'B', 0, '2016-06-26 06:04:40', '2016-06-26 06:04:40'),
(572, 84, 25, 4, 218, 'Akademik', 'D', 1, '2016-06-26 06:04:40', '2016-06-26 06:04:40'),
(573, 84, 25, 4, 219, 'Akademik', 'B', 1, '2016-06-26 06:04:40', '2016-06-26 06:04:40'),
(574, 84, 26, 4, 108, 'Akademik', 'A', 1, '2016-06-26 06:04:40', '2016-06-26 06:04:40'),
(575, 84, 26, 4, 113, 'Akademik', 'C', 1, '2016-06-26 06:04:40', '2016-06-26 06:04:40'),
(576, 84, 26, 4, 115, 'Akademik', 'D', 1, '2016-06-26 06:04:40', '2016-06-26 06:04:40'),
(577, 84, 26, 4, 119, 'Akademik', 'B', 0, '2016-06-26 06:04:40', '2016-06-26 06:04:40'),
(578, 84, 26, 4, 122, 'Akademik', 'A', 0, '2016-06-26 06:04:40', '2016-06-26 06:04:40'),
(579, 84, 26, 4, 130, 'Akademik', 'B', 0, '2016-06-26 06:04:40', '2016-06-26 06:04:40'),
(580, 84, 26, 4, 134, 'Akademik', 'C', 0, '2016-06-26 06:04:40', '2016-06-26 06:04:40'),
(581, 84, 26, 4, 136, 'Akademik', 'C', 0, '2016-06-26 06:04:40', '2016-06-26 06:04:40'),
(582, 84, 26, 4, 138, 'Akademik', 'D', 0, '2016-06-26 06:04:40', '2016-06-26 06:04:40'),
(583, 84, 26, 4, 142, 'Akademik', 'B', 1, '2016-06-26 06:04:40', '2016-06-26 06:04:40'),
(584, 84, 26, 4, 144, 'Akademik', 'B', 0, '2016-06-26 06:04:40', '2016-06-26 06:04:40'),
(585, 84, 26, 4, 150, 'Akademik', 'B', 1, '2016-06-26 06:04:40', '2016-06-26 06:04:40'),
(586, 84, 26, 4, 152, 'Akademik', 'B', 0, '2016-06-26 06:04:40', '2016-06-26 06:04:40'),
(587, 84, 26, 4, 155, 'Akademik', 'C', 1, '2016-06-26 06:04:40', '2016-06-26 06:04:40'),
(588, 84, 26, 4, 156, 'Akademik', 'D', 0, '2016-06-26 06:04:40', '2016-06-26 06:04:40'),
(589, 84, 27, 4, 220, 'Akademik', 'B', 0, '2016-06-26 06:04:40', '2016-06-26 06:04:40'),
(590, 84, 27, 4, 221, 'Akademik', 'C', 1, '2016-06-26 06:04:40', '2016-06-26 06:04:40'),
(591, 84, 27, 4, 222, 'Akademik', 'C', 0, '2016-06-26 06:04:40', '2016-06-26 06:04:40'),
(592, 84, 27, 4, 223, 'Akademik', 'D', 1, '2016-06-26 06:04:40', '2016-06-26 06:04:40'),
(593, 84, 27, 4, 224, 'Akademik', 'B', 0, '2016-06-26 06:04:41', '2016-06-26 06:04:41'),
(594, 84, 27, 4, 225, 'Akademik', 'B', 0, '2016-06-26 06:04:41', '2016-06-26 06:04:41'),
(595, 84, 27, 4, 226, 'Akademik', 'D', 1, '2016-06-26 06:04:41', '2016-06-26 06:04:41'),
(596, 84, 27, 4, 227, 'Akademik', 'D', 1, '2016-06-26 06:04:41', '2016-06-26 06:04:41'),
(597, 84, 27, 4, 228, 'Akademik', 'A', 0, '2016-06-26 06:04:41', '2016-06-26 06:04:41'),
(598, 84, 27, 4, 229, 'Akademik', 'C', 0, '2016-06-26 06:04:41', '2016-06-26 06:04:41'),
(599, 84, 27, 4, 230, 'Akademik', 'B', 0, '2016-06-26 06:04:41', '2016-06-26 06:04:41'),
(600, 84, 27, 4, 231, 'Akademik', 'B', 0, '2016-06-26 06:04:41', '2016-06-26 06:04:41'),
(601, 84, 27, 4, 232, 'Akademik', 'C', 0, '2016-06-26 06:04:41', '2016-06-26 06:04:41'),
(602, 84, 27, 4, 233, 'Akademik', 'D', 1, '2016-06-26 06:04:41', '2016-06-26 06:04:41'),
(603, 84, 27, 4, 234, 'Akademik', 'A', 0, '2016-06-26 06:04:41', '2016-06-26 06:04:41'),
(604, 84, 28, 4, 235, 'Akademik', 'C', 1, '2016-06-26 06:04:41', '2016-06-26 06:04:41'),
(605, 84, 28, 4, 236, 'Akademik', 'D', 0, '2016-06-26 06:04:41', '2016-06-26 06:04:41'),
(606, 84, 28, 4, 237, 'Akademik', 'B', 0, '2016-06-26 06:04:41', '2016-06-26 06:04:41'),
(607, 84, 28, 4, 238, 'Akademik', 'C', 0, '2016-06-26 06:04:41', '2016-06-26 06:04:41'),
(608, 84, 28, 4, 239, 'Akademik', 'D', 0, '2016-06-26 06:04:41', '2016-06-26 06:04:41'),
(609, 84, 28, 4, 240, 'Akademik', 'D', 1, '2016-06-26 06:04:41', '2016-06-26 06:04:41'),
(610, 84, 28, 4, 241, 'Akademik', 'B', 0, '2016-06-26 06:04:41', '2016-06-26 06:04:41'),
(611, 84, 28, 4, 242, 'Akademik', 'B', 0, '2016-06-26 06:04:41', '2016-06-26 06:04:41'),
(612, 84, 28, 4, 243, 'Akademik', 'D', 0, '2016-06-26 06:04:41', '2016-06-26 06:04:41'),
(613, 84, 28, 4, 244, 'Akademik', 'C', 0, '2016-06-26 06:04:41', '2016-06-26 06:04:41'),
(614, 84, 28, 4, 245, 'Akademik', 'D', 0, '2016-06-26 06:04:41', '2016-06-26 06:04:41'),
(615, 84, 28, 4, 246, 'Akademik', 'C', 0, '2016-06-26 06:04:41', '2016-06-26 06:04:41'),
(616, 84, 28, 4, 247, 'Akademik', 'B', 0, '2016-06-26 06:04:41', '2016-06-26 06:04:41'),
(617, 84, 28, 4, 248, 'Akademik', 'D', 1, '2016-06-26 06:04:41', '2016-06-26 06:04:41'),
(618, 84, 28, 4, 249, 'Akademik', 'B', 1, '2016-06-26 06:04:41', '2016-06-26 06:04:41'),
(619, 84, 29, 4, 250, 'Psikotes', 'B', 0, '2016-06-26 06:04:41', '2016-06-26 06:04:41'),
(620, 84, 29, 4, 251, 'Psikotes', 'B', 1, '2016-06-26 06:04:41', '2016-06-26 06:04:41'),
(621, 84, 29, 4, 252, 'Psikotes', 'C', 1, '2016-06-26 06:04:41', '2016-06-26 06:04:41'),
(622, 84, 29, 4, 253, 'Psikotes', 'C', 0, '2016-06-26 06:04:41', '2016-06-26 06:04:41'),
(623, 84, 29, 4, 254, 'Psikotes', 'D', 0, '2016-06-26 06:04:41', '2016-06-26 06:04:41'),
(624, 84, 29, 4, 255, 'Psikotes', 'C', 0, '2016-06-26 06:04:41', '2016-06-26 06:04:41'),
(625, 84, 29, 4, 256, 'Psikotes', 'A', 0, '2016-06-26 06:04:41', '2016-06-26 06:04:41'),
(626, 84, 29, 4, 257, 'Psikotes', 'C', 0, '2016-06-26 06:04:41', '2016-06-26 06:04:41'),
(627, 84, 29, 4, 258, 'Psikotes', 'D', 1, '2016-06-26 06:04:41', '2016-06-26 06:04:41'),
(628, 84, 29, 4, 259, 'Psikotes', 'C', 0, '2016-06-26 06:04:41', '2016-06-26 06:04:41'),
(629, 84, 29, 4, 260, 'Psikotes', 'C', 0, '2016-06-26 06:04:41', '2016-06-26 06:04:41'),
(630, 84, 29, 4, 261, 'Psikotes', 'C', 0, '2016-06-26 06:04:42', '2016-06-26 06:04:42'),
(631, 84, 29, 4, 262, 'Psikotes', 'C', 0, '2016-06-26 06:04:42', '2016-06-26 06:04:42'),
(632, 84, 29, 4, 263, 'Psikotes', 'D', 1, '2016-06-26 06:04:42', '2016-06-26 06:04:42'),
(633, 84, 29, 4, 264, 'Psikotes', 'A', 1, '2016-06-26 06:04:42', '2016-06-26 06:04:42'),
(634, 84, 31, 4, 93, 'Kejuruan', 'A', 1, '2016-06-26 06:04:42', '2016-06-26 06:04:42'),
(635, 84, 31, 4, 96, 'Kejuruan', 'B', 0, '2016-06-26 06:04:42', '2016-06-26 06:04:42'),
(636, 84, 31, 4, 98, 'Kejuruan', 'C', 0, '2016-06-26 06:04:42', '2016-06-26 06:04:42'),
(637, 84, 31, 4, 100, 'Kejuruan', 'D', 1, '2016-06-26 06:04:42', '2016-06-26 06:04:42'),
(638, 84, 31, 4, 101, 'Kejuruan', 'C', 1, '2016-06-26 06:04:42', '2016-06-26 06:04:42'),
(639, 84, 31, 4, 104, 'Kejuruan', 'C', 0, '2016-06-26 06:04:42', '2016-06-26 06:04:42'),
(640, 84, 31, 4, 107, 'Kejuruan', 'C', 1, '2016-06-26 06:04:42', '2016-06-26 06:04:42'),
(641, 84, 31, 4, 112, 'Kejuruan', 'D', 0, '2016-06-26 06:04:42', '2016-06-26 06:04:42'),
(642, 84, 31, 4, 118, 'Kejuruan', 'B', 0, '2016-06-26 06:04:42', '2016-06-26 06:04:42'),
(643, 84, 31, 4, 123, 'Kejuruan', 'C', 0, '2016-06-26 06:04:42', '2016-06-26 06:04:42'),
(644, 84, 31, 4, 126, 'Kejuruan', 'C', 0, '2016-06-26 06:04:42', '2016-06-26 06:04:42'),
(645, 84, 31, 4, 129, 'Kejuruan', 'B', 0, '2016-06-26 06:04:42', '2016-06-26 06:04:42'),
(646, 84, 31, 4, 133, 'Kejuruan', 'C', 0, '2016-06-26 06:04:42', '2016-06-26 06:04:42'),
(647, 84, 31, 4, 139, 'Kejuruan', 'C', 1, '2016-06-26 06:04:42', '2016-06-26 06:04:42'),
(648, 84, 31, 4, 141, 'Kejuruan', 'B', 0, '2016-06-26 06:04:42', '2016-06-26 06:04:42'),
(649, 84, 31, 4, 270, 'Kejuruan', 'D', 1, '2016-06-26 06:04:42', '2016-06-26 06:04:42'),
(650, 84, 31, 4, 271, 'Kejuruan', 'A', 1, '2016-06-26 06:04:42', '2016-06-26 06:04:42'),
(651, 84, 31, 4, 272, 'Kejuruan', 'C', 0, '2016-06-26 06:04:42', '2016-06-26 06:04:42'),
(652, 84, 31, 4, 273, 'Kejuruan', 'D', 1, '2016-06-26 06:04:42', '2016-06-26 06:04:42'),
(653, 84, 31, 4, 274, 'Kejuruan', 'C', 1, '2016-06-26 06:04:42', '2016-06-26 06:04:42'),
(654, 87, 25, 3, 161, 'Akademik', 'A', 1, '2016-06-26 06:52:26', '2016-06-26 06:52:26'),
(655, 87, 25, 3, 190, 'Akademik', 'D', 0, '2016-06-26 06:52:26', '2016-06-26 06:52:26'),
(656, 87, 25, 3, 193, 'Akademik', 'A', 0, '2016-06-26 06:52:26', '2016-06-26 06:52:26'),
(657, 87, 25, 3, 198, 'Akademik', 'B', 0, '2016-06-26 06:52:26', '2016-06-26 06:52:26'),
(658, 87, 25, 3, 201, 'Akademik', 'A', 0, '2016-06-26 06:52:26', '2016-06-26 06:52:26'),
(659, 87, 25, 3, 204, 'Akademik', 'A', 0, '2016-06-26 06:52:26', '2016-06-26 06:52:26'),
(660, 87, 25, 3, 206, 'Akademik', 'A', 1, '2016-06-26 06:52:26', '2016-06-26 06:52:26'),
(661, 87, 25, 3, 207, 'Akademik', 'B', 1, '2016-06-26 06:52:26', '2016-06-26 06:52:26'),
(662, 87, 25, 3, 208, 'Akademik', 'A', 0, '2016-06-26 06:52:26', '2016-06-26 06:52:26'),
(663, 87, 25, 3, 209, 'Akademik', 'C', 1, '2016-06-26 06:52:26', '2016-06-26 06:52:26'),
(664, 87, 25, 3, 210, 'Akademik', 'B', 0, '2016-06-26 06:52:26', '2016-06-26 06:52:26'),
(665, 87, 25, 3, 211, 'Akademik', 'A', 1, '2016-06-26 06:52:26', '2016-06-26 06:52:26'),
(666, 87, 25, 3, 212, 'Akademik', 'B', 0, '2016-06-26 06:52:26', '2016-06-26 06:52:26'),
(667, 87, 25, 3, 213, 'Akademik', 'A', 1, '2016-06-26 06:52:26', '2016-06-26 06:52:26'),
(668, 87, 25, 3, 214, 'Akademik', 'A', 0, '2016-06-26 06:52:26', '2016-06-26 06:52:26'),
(669, 87, 25, 3, 215, 'Akademik', 'A', 1, '2016-06-26 06:52:26', '2016-06-26 06:52:26'),
(670, 87, 25, 3, 216, 'Akademik', 'A', 0, '2016-06-26 06:52:26', '2016-06-26 06:52:26'),
(671, 87, 25, 3, 217, 'Akademik', 'B', 0, '2016-06-26 06:52:26', '2016-06-26 06:52:26'),
(672, 87, 25, 3, 218, 'Akademik', 'C', 0, '2016-06-26 06:52:26', '2016-06-26 06:52:26'),
(673, 87, 25, 3, 219, 'Akademik', 'A', 0, '2016-06-26 06:52:26', '2016-06-26 06:52:26'),
(674, 87, 26, 3, 108, 'Akademik', 'A', 1, '2016-06-26 06:52:26', '2016-06-26 06:52:26'),
(675, 87, 26, 3, 113, 'Akademik', 'A', 0, '2016-06-26 06:52:26', '2016-06-26 06:52:26'),
(676, 87, 26, 3, 115, 'Akademik', 'A', 0, '2016-06-26 06:52:26', '2016-06-26 06:52:26'),
(677, 87, 26, 3, 119, 'Akademik', 'A', 0, '2016-06-26 06:52:26', '2016-06-26 06:52:26'),
(678, 87, 26, 3, 122, 'Akademik', 'A', 0, '2016-06-26 06:52:27', '2016-06-26 06:52:27'),
(679, 87, 26, 3, 130, 'Akademik', 'A', 0, '2016-06-26 06:52:27', '2016-06-26 06:52:27'),
(680, 87, 26, 3, 134, 'Akademik', 'A', 0, '2016-06-26 06:52:27', '2016-06-26 06:52:27'),
(681, 87, 26, 3, 136, 'Akademik', 'A', 0, '2016-06-26 06:52:27', '2016-06-26 06:52:27'),
(682, 87, 26, 3, 138, 'Akademik', 'C', 1, '2016-06-26 06:52:27', '2016-06-26 06:52:27'),
(683, 87, 26, 3, 142, 'Akademik', 'Tidak Terjawab', 0, '2016-06-26 06:52:27', '2016-06-26 06:52:27'),
(684, 87, 26, 3, 144, 'Akademik', 'C', 0, '2016-06-26 06:52:27', '2016-06-26 06:52:27'),
(685, 87, 26, 3, 150, 'Akademik', 'C', 0, '2016-06-26 06:52:27', '2016-06-26 06:52:27'),
(686, 87, 26, 3, 152, 'Akademik', 'A', 0, '2016-06-26 06:52:27', '2016-06-26 06:52:27'),
(687, 87, 26, 3, 155, 'Akademik', 'A', 0, '2016-06-26 06:52:27', '2016-06-26 06:52:27'),
(688, 87, 26, 3, 156, 'Akademik', 'B', 0, '2016-06-26 06:52:27', '2016-06-26 06:52:27'),
(689, 87, 27, 3, 220, 'Akademik', 'A', 0, '2016-06-26 06:52:27', '2016-06-26 06:52:27'),
(690, 87, 27, 3, 221, 'Akademik', 'A', 0, '2016-06-26 06:52:27', '2016-06-26 06:52:27'),
(691, 87, 27, 3, 222, 'Akademik', 'A', 1, '2016-06-26 06:52:27', '2016-06-26 06:52:27'),
(692, 87, 27, 3, 223, 'Akademik', 'A', 0, '2016-06-26 06:52:27', '2016-06-26 06:52:27'),
(693, 87, 27, 3, 224, 'Akademik', 'A', 0, '2016-06-26 06:52:27', '2016-06-26 06:52:27'),
(694, 87, 27, 3, 225, 'Akademik', 'A', 1, '2016-06-26 06:52:27', '2016-06-26 06:52:27'),
(695, 87, 27, 3, 226, 'Akademik', 'A', 0, '2016-06-26 06:52:27', '2016-06-26 06:52:27'),
(696, 87, 27, 3, 227, 'Akademik', 'A', 0, '2016-06-26 06:52:27', '2016-06-26 06:52:27'),
(697, 87, 27, 3, 228, 'Akademik', 'B', 0, '2016-06-26 06:52:27', '2016-06-26 06:52:27'),
(698, 87, 27, 3, 229, 'Akademik', 'B', 1, '2016-06-26 06:52:27', '2016-06-26 06:52:27'),
(699, 87, 27, 3, 230, 'Akademik', 'A', 0, '2016-06-26 06:52:27', '2016-06-26 06:52:27'),
(700, 87, 27, 3, 231, 'Akademik', 'C', 0, '2016-06-26 06:52:27', '2016-06-26 06:52:27'),
(701, 87, 27, 3, 232, 'Akademik', 'B', 0, '2016-06-26 06:52:27', '2016-06-26 06:52:27'),
(702, 87, 27, 3, 233, 'Akademik', 'B', 0, '2016-06-26 06:52:27', '2016-06-26 06:52:27'),
(703, 87, 27, 3, 234, 'Akademik', 'A', 0, '2016-06-26 06:52:27', '2016-06-26 06:52:27'),
(704, 87, 28, 3, 235, 'Akademik', 'B', 0, '2016-06-26 06:52:27', '2016-06-26 06:52:27'),
(705, 87, 28, 3, 236, 'Akademik', 'A', 0, '2016-06-26 06:52:27', '2016-06-26 06:52:27'),
(706, 87, 28, 3, 237, 'Akademik', 'C', 0, '2016-06-26 06:52:27', '2016-06-26 06:52:27'),
(707, 87, 28, 3, 238, 'Akademik', 'Tidak Terjawab', 0, '2016-06-26 06:52:27', '2016-06-26 06:52:27'),
(708, 87, 28, 3, 239, 'Akademik', 'A', 0, '2016-06-26 06:52:27', '2016-06-26 06:52:27'),
(709, 87, 28, 3, 240, 'Akademik', 'B', 0, '2016-06-26 06:52:27', '2016-06-26 06:52:27'),
(710, 87, 28, 3, 241, 'Akademik', 'A', 0, '2016-06-26 06:52:27', '2016-06-26 06:52:27'),
(711, 87, 28, 3, 242, 'Akademik', 'A', 0, '2016-06-26 06:52:27', '2016-06-26 06:52:27'),
(712, 87, 28, 3, 243, 'Akademik', 'A', 1, '2016-06-26 06:52:27', '2016-06-26 06:52:27'),
(713, 87, 28, 3, 244, 'Akademik', 'B', 0, '2016-06-26 06:52:27', '2016-06-26 06:52:27'),
(714, 87, 28, 3, 245, 'Akademik', 'A', 1, '2016-06-26 06:52:27', '2016-06-26 06:52:27'),
(715, 87, 28, 3, 246, 'Akademik', 'C', 0, '2016-06-26 06:52:27', '2016-06-26 06:52:27'),
(716, 87, 28, 3, 247, 'Akademik', 'C', 1, '2016-06-26 06:52:27', '2016-06-26 06:52:27'),
(717, 87, 28, 3, 248, 'Akademik', 'C', 0, '2016-06-26 06:52:27', '2016-06-26 06:52:27'),
(718, 87, 28, 3, 249, 'Akademik', 'D', 0, '2016-06-26 06:52:27', '2016-06-26 06:52:27'),
(719, 87, 29, 3, 250, 'Psikotes', 'C', 0, '2016-06-26 06:52:27', '2016-06-26 06:52:27'),
(720, 87, 29, 3, 251, 'Psikotes', 'A', 0, '2016-06-26 06:52:27', '2016-06-26 06:52:27'),
(721, 87, 29, 3, 252, 'Psikotes', 'B', 0, '2016-06-26 06:52:27', '2016-06-26 06:52:27'),
(722, 87, 29, 3, 253, 'Psikotes', 'A', 0, '2016-06-26 06:52:27', '2016-06-26 06:52:27'),
(723, 87, 29, 3, 254, 'Psikotes', 'A', 1, '2016-06-26 06:52:27', '2016-06-26 06:52:27'),
(724, 87, 29, 3, 255, 'Psikotes', 'B', 0, '2016-06-26 06:52:27', '2016-06-26 06:52:27'),
(725, 87, 29, 3, 256, 'Psikotes', 'B', 1, '2016-06-26 06:52:27', '2016-06-26 06:52:27'),
(726, 87, 29, 3, 257, 'Psikotes', 'B', 0, '2016-06-26 06:52:27', '2016-06-26 06:52:27'),
(727, 87, 29, 3, 258, 'Psikotes', 'A', 0, '2016-06-26 06:52:27', '2016-06-26 06:52:27'),
(728, 87, 29, 3, 259, 'Psikotes', 'B', 1, '2016-06-26 06:52:27', '2016-06-26 06:52:27'),
(729, 87, 29, 3, 260, 'Psikotes', 'D', 0, '2016-06-26 06:52:28', '2016-06-26 06:52:28'),
(730, 87, 29, 3, 261, 'Psikotes', 'C', 0, '2016-06-26 06:52:28', '2016-06-26 06:52:28'),
(731, 87, 29, 3, 262, 'Psikotes', 'B', 0, '2016-06-26 06:52:28', '2016-06-26 06:52:28'),
(732, 87, 29, 3, 263, 'Psikotes', 'B', 0, '2016-06-26 06:52:28', '2016-06-26 06:52:28'),
(733, 87, 29, 3, 264, 'Psikotes', 'A', 1, '2016-06-26 06:52:28', '2016-06-26 06:52:28'),
(734, 87, 32, 3, 102, 'Kejuruan', 'B', 0, '2016-06-26 06:52:28', '2016-06-26 06:52:28'),
(735, 87, 32, 3, 105, 'Kejuruan', 'B', 0, '2016-06-26 06:52:28', '2016-06-26 06:52:28'),
(736, 87, 32, 3, 109, 'Kejuruan', 'A', 0, '2016-06-26 06:52:28', '2016-06-26 06:52:28'),
(737, 87, 32, 3, 114, 'Kejuruan', 'A', 0, '2016-06-26 06:52:28', '2016-06-26 06:52:28'),
(738, 87, 32, 3, 116, 'Kejuruan', 'A', 0, '2016-06-26 06:52:28', '2016-06-26 06:52:28'),
(739, 87, 32, 3, 121, 'Kejuruan', 'A', 0, '2016-06-26 06:52:28', '2016-06-26 06:52:28'),
(740, 87, 32, 3, 125, 'Kejuruan', 'A', 1, '2016-06-26 06:52:28', '2016-06-26 06:52:28'),
(741, 87, 32, 3, 127, 'Kejuruan', 'A', 1, '2016-06-26 06:52:28', '2016-06-26 06:52:28'),
(742, 87, 32, 3, 131, 'Kejuruan', 'A', 0, '2016-06-26 06:52:28', '2016-06-26 06:52:28'),
(743, 87, 32, 3, 165, 'Kejuruan', 'A', 0, '2016-06-26 06:52:28', '2016-06-26 06:52:28'),
(744, 87, 32, 3, 169, 'Kejuruan', 'A', 1, '2016-06-26 06:52:28', '2016-06-26 06:52:28'),
(745, 87, 32, 3, 170, 'Kejuruan', 'B', 1, '2016-06-26 06:52:28', '2016-06-26 06:52:28'),
(746, 87, 32, 3, 172, 'Kejuruan', 'B', 1, '2016-06-26 06:52:28', '2016-06-26 06:52:28'),
(747, 87, 32, 3, 175, 'Kejuruan', 'A', 1, '2016-06-26 06:52:28', '2016-06-26 06:52:28'),
(748, 87, 32, 3, 178, 'Kejuruan', 'B', 0, '2016-06-26 06:52:28', '2016-06-26 06:52:28'),
(749, 87, 32, 3, 275, 'Kejuruan', 'B', 0, '2016-06-26 06:52:28', '2016-06-26 06:52:28'),
(750, 87, 32, 3, 276, 'Kejuruan', 'C', 0, '2016-06-26 06:52:28', '2016-06-26 06:52:28'),
(751, 87, 32, 3, 277, 'Kejuruan', 'C', 0, '2016-06-26 06:52:28', '2016-06-26 06:52:28'),
(752, 87, 32, 3, 278, 'Kejuruan', 'C', 1, '2016-06-26 06:52:28', '2016-06-26 06:52:28'),
(753, 87, 32, 3, 279, 'Kejuruan', 'C', 0, '2016-06-26 06:52:28', '2016-06-26 06:52:28'),
(754, 83, 36, 10, 295, 'Akademik', 'A', 0, '2016-06-26 07:10:47', '2016-06-26 07:10:47'),
(755, 83, 36, 10, 296, 'Akademik', 'A', 1, '2016-06-26 07:10:47', '2016-06-26 07:10:47');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user_groups`
--

CREATE TABLE IF NOT EXISTS `tb_user_groups` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `finished` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user_groups`
--

INSERT INTO `tb_user_groups` (`id`, `user_id`, `group_id`, `finished`) VALUES
(2, 81, 4, 1),
(3, 81, 4, 1),
(4, 83, 5, 1),
(5, 84, 4, 1),
(6, 87, 3, 1),
(7, 83, 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_user_results`
--

CREATE TABLE IF NOT EXISTS `tb_user_results` (
`id` int(10) unsigned NOT NULL,
  `user_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `start_time` datetime NOT NULL,
  `finish_time` datetime NOT NULL,
  `correct_count` int(11) NOT NULL,
  `total_question` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_user_results`
--

INSERT INTO `tb_user_results` (`id`, `user_id`, `subject_id`, `group_id`, `start_time`, `finish_time`, `correct_count`, `total_question`) VALUES
(59, 83, 0, 5, '2016-06-26 12:47:03', '2016-06-26 12:56:39', 19, 100),
(60, 81, 0, 4, '2016-06-26 12:47:07', '2016-06-26 12:55:04', 68, 200),
(61, 84, 0, 4, '2016-06-26 13:00:32', '2016-06-26 13:04:42', 35, 100),
(62, 82, 0, 5, '2016-06-26 13:02:56', '0000-00-00 00:00:00', 0, 0),
(63, 87, 0, 3, '2016-06-26 13:31:08', '2016-06-26 13:52:28', 26, 100),
(64, 83, 0, 10, '2016-06-26 14:03:11', '2016-06-26 14:10:47', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tb_user_subjects`
--

CREATE TABLE IF NOT EXISTS `tb_user_subjects` (
`id` int(10) unsigned NOT NULL,
  `user_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `finished` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
-- Indexes for table `tb_group`
--
ALTER TABLE `tb_group`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_group_subject`
--
ALTER TABLE `tb_group_subject`
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
-- Indexes for table `tb_user_groups`
--
ALTER TABLE `tb_user_groups`
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `tb_biodata`
--
ALTER TABLE `tb_biodata`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=227;
--
-- AUTO_INCREMENT for table `tb_group`
--
ALTER TABLE `tb_group`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tb_group_subject`
--
ALTER TABLE `tb_group_subject`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `tb_nilai`
--
ALTER TABLE `tb_nilai`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=229;
--
-- AUTO_INCREMENT for table `tb_orangtua`
--
ALTER TABLE `tb_orangtua`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=74;
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
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=295;
--
-- AUTO_INCREMENT for table `tb_smp`
--
ALTER TABLE `tb_smp`
MODIFY `idSMP` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=106;
--
-- AUTO_INCREMENT for table `tb_subjects`
--
ALTER TABLE `tb_subjects`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `tb_users`
--
ALTER TABLE `tb_users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=354;
--
-- AUTO_INCREMENT for table `tb_user_answers`
--
ALTER TABLE `tb_user_answers`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=756;
--
-- AUTO_INCREMENT for table `tb_user_groups`
--
ALTER TABLE `tb_user_groups`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tb_user_results`
--
ALTER TABLE `tb_user_results`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT for table `tb_user_subjects`
--
ALTER TABLE `tb_user_subjects`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
