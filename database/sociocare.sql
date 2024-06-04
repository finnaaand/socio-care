-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Dec 07, 2022 at 01:06 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simkbs`
--

-- --------------------------------------------------------

--
-- Table structure for table `tabel_control`
--

CREATE TABLE `tabel_control` (
  `id` int(11) NOT NULL,
  `nama_desa` varchar(255) NOT NULL,
  `logo_desa` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `maps` text NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tabel_control`
--

INSERT INTO `tabel_control` (`id`, `nama_desa`, `logo_desa`, `alamat`, `maps`, `email`) VALUES
(1, 'Surabaya', '700px-City_of_Surabaya_Logo.svg.png', 'Jl. Arief Rahman Hakim No.131-133, Keputih, Kec. Sukolilo, Surabaya, Jawa Timur 60117', 'https://maps.app.goo.gl/ta2AacgFRkp6gACi8', 'Sociocare@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_dusun`
--

CREATE TABLE `tabel_dusun` (
  `id` int(11) NOT NULL,
  `dusun` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tabel_dusun`
--

INSERT INTO `tabel_dusun` (`id`, `dusun`) VALUES
(1, 'Wonokromo'),
(2, 'Ketintang'),
(3, 'Wiyung'),
(4, 'Rungkut'),
(5, 'Ngagel');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_kependudukan`
--

CREATE TABLE `tabel_kependudukan` (
  `NO_KK` char(16) NOT NULL,
  `NIK` char(16) NOT NULL,
  `NAMA_LGKP` varchar(50) NOT NULL,
  `HBKEL` varchar(2) NOT NULL,
  `JK` tinyint(1) NOT NULL,
  `TMPT_LHR` varchar(30) NOT NULL,
  `TGL_LHR` date NOT NULL,
  `TAHUN` varchar(3) NOT NULL,
  `BULAN` varchar(2) NOT NULL,
  `HARI` varchar(2) NOT NULL,
  `NAMA_LGKP_AYAH` varchar(100) NOT NULL,
  `NAMA_LGKP_IBU` varchar(100) NOT NULL,
  `KECAMATAN` varchar(30) NOT NULL,
  `KELURAHAN` varchar(30) NOT NULL,
  `DSN` int(11) NOT NULL,
  `AGAMA` varchar(10) NOT NULL,
  `bantuan` varchar(2) NOT NULL,
  `jenis_bantuan` varchar(100) NOT NULL,
  `ibu_hamil` varchar(2) NOT NULL,
  `disabilitas` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tabel_kependudukan`
--
INSERT INTO `tabel_kependudukan` (`NO_KK`, `NIK`, `NAMA_LGKP`, `HBKEL`, `JK`, `TMPT_LHR`, `TGL_LHR`, `TAHUN`, `BULAN`, `HARI`, `NAMA_LGKP_AYAH`, `NAMA_LGKP_IBU`, `KECAMATAN`, `KELURAHAN`, `DSN`, `AGAMA`, `bantuan`, `jenis_bantuan`, `ibu_hamil`, `disabilitas`) VALUES
('0987654321234567', '0987654321234587', 'Budi Santoso', '1', 1, 'Surabaya', '1996-12-06', '96', '12', '06', 'Sukardi', 'Siti', 'Ketintang', 'Dr. Soetomo', 2, 'Islam', '0', '', '', '0'),
('1234567890987654', '1234567890987678', 'Siti Rohani', '1', 1, 'Surabaya', '1995-12-06', '95', '12', '06', 'Suharto', 'Yuni', 'Rungkut', 'Sidodadi', 4, 'Islam', '0', '', '', '0'),
('7503061001170005', '1302100901880001', 'Joko Priyono', '1', 1, 'Surabaya', '1988-01-09', '88', '01', '09', 'Priyono', 'Kartini', 'Ngagel', 'Kedung Baruk', 5, 'Islam', '0', '', '', '0'),
('7678909876543212', '4565432123456789', 'Ratna Dewi', '1', 1, 'Surabaya', '2001-12-06', '01', '12', '06', 'Supriyadi', 'Rina', 'Wonokromo', 'Sawahan', 1, 'Islam', '0', '', '', '0'),
('7503061902180006', '7204040405770001', 'Ahmad Fauzan', '1', 1, 'Surabaya', '1972-09-10', '72', '09', '10', 'Fauzan', 'Nurhayati', 'Rungkut', 'Medokan Ayu', 4, 'Islam', '1', 'PKH', '', '0'),
('7503061108160004', '7371114901030001', 'Rina Puspita', '4', 2, 'Surabaya', '2003-01-09', '03', '01', '09', 'Puspita', 'Yuliani', 'Wonokromo', 'Sawahan', 1, 'Islam', '', '', '', '0'),
('7503060906150003', '7501190712690001', 'Lina Hartati', '1', 1, 'Surabaya', '1996-12-07', '96', '12', '07', 'Hartati', 'Rina', 'Rungkut', 'Gunung Anyar Tambak', 4, 'Islam', '0', '', '', '0'),
('7503062403160004', '7502012203100002', 'Taufik Hidayat', '9', 1, 'Surabaya', '2010-03-22', '10', '03', '22', 'Hidayat', 'Rohani', 'Wonokromo', 'Pacar Keling', 1, 'Islam', '0', '', '', '0'),
('7503030602080028', '7503030411020001', 'Dewi Anggraini', '4', 1, 'Surabaya', '2002-11-04', '02', '11', '04', 'Anggraini', 'Ratna', 'Wonokromo', 'Gunung Anyar Tambak', 1, 'Islam', '', '', '', '0'),
('7503030602080028', '7503031510970001', 'Siti Nurjanah', '4', 1, 'Surabaya', '1997-11-20', '97', '11', '20', 'Nurjanah', 'Rahayu', 'Wonokromo', 'Panjang Jiwo', 1, 'Islam', '', '', '', '0'),
('7503030602080028', '7503035010630002', 'Arif Setiawan', '3', 1, 'Surabaya', '1963-10-10', '63', '10', '10', 'Setiawan', 'Indri', 'Ngagel', 'Kedung Baruk', 5, 'Islam', '', '', '0', '0'),
('7503060906150003', '7503035703070001', 'Nina Lestari', '9', 2, 'Surabaya', '2007-03-17', '07', '03', '17', 'Lestari', 'Yuni', 'Wonokromo', 'Gunung Anyar Lor', 1, 'Islam', '0', '', '', '0'),
('7503061108160004', '7503060111850001', 'Doni Purwanto', '1', 1, 'Surabaya', '1984-04-23', '84', '04', '23', 'Purwanto', 'Susanti', 'Rungkut', 'Wonorejo', 4, 'Islam', '1', 'BLT', '', '0'),
('7503061207120001', '7503060510770001', 'Hendra Wijaya', '1', 1, 'Surabaya', '1967-10-05', '67', '10', '05', 'Wijaya', 'Sulastri', 'Ngagel', 'Rungkut Menanggal', 5, 'Islam', '0', '', '', '0'),
('7503061001170005', '7503061208170001', 'Fauzi Ramadhan', '9', 1, 'Surabaya', '2017-08-12', '17', '08', '12', 'Ramadhan', 'Rohani', 'Wonokromo', 'Dr. Soetomo', 1, 'Islam', '', '', '', '0'),
('7503061302080160', '7503061212710002', 'Susi Susanti', '1', 1, 'Surabaya', '1971-12-12', '71', '12', '12', 'Susanti', 'Dewi', 'Rungkut', 'Sidodadi', 4, 'Islam', '0', '', '', '0'),
('7503061211100005', '7503061308840001', 'Fadli Rahman', '1', 1, 'Surabaya', '1984-08-13', '84', '08', '13', 'Rahman', 'Ayu', 'Rungkut', 'Medokan Ayu', 4, 'Islam', '1', 'PKH', '', '0'),
('7503061302080124', '7503061705470001', 'Herman Hidayat', '7', 1, 'Surabaya', '1947-05-17', '47', '05', '17', 'Hidayat', 'Kartini', 'Wonokromo', 'Sawahan', 1, 'Islam', '', '', '', '0'),
('7503061302080056', '7503061706670001', 'Slamet Riyadi', '1', 1, 'Surabaya', '1967-06-17', '67', '06', '17', 'Riyadi', 'Sri', 'Ngagel', 'Pacar Keling', 5, 'Islam', '1', 'BST', '', '0'),
('7503062403160004', '7503062306700001', 'Wahyu Satria', '1', 1, 'Surabaya', '1970-06-23', '70', '06', '23', 'Satria', 'Sari', 'Wonokromo', 'Dr. Soetomo', 1, 'Islam', '1', 'BLT', '', '0'),
('7503061406120004', '750306251187002', 'Bambang Setyo', '1', 1, 'Surabaya', '1987-11-25', '87', '11', '25', 'Setyo', 'Rina', 'Rungkut', 'Gunung Anyar Tambak', 4, 'Islam', '0', '', '', '0'),
('7503061302080160', '7503064206670001', 'Agus Wijaya', '3', 2, 'Surabaya', '1967-06-02', '67', '06', '02', 'Wijaya', 'Yuliani', 'Wonokromo', 'Gunung Anyar Lor', 1, 'Islam', '', '', '0', '0'),
('7503061108160004', '7503065112160001', 'Sri Wulandari', '9', 2, 'Surabaya', '2016-12-11', '16', '12', '11', 'Purwanto', 'Susanti', 'Wonokromo', 'Dr. Soetomo', 1, 'Islam', '', '', '', '0'),
('7503061001170005', '7503065407900001', 'Rahmat Hidayat', '3', 1, 'Surabaya', '1990-03-14', '90', '03', '14', 'Hidayat', 'Dewi', 'Ngagel', 'Pacar Keling', 5, 'Islam', '0', '', '0', '0'),
('7503061302080160', '7503065801010002', 'Sari Indah', '9', 2, 'Surabaya', '2001-01-18', '01', '01', '18', 'Indah', 'Kartini', 'Wonokromo', 'Gunung Anyar Lor', 1, 'Islam', '', '', '', '0'),
('7503061108160004', '7503070907130001', 'Bayu Wijaya', '9', 1, 'Surabaya', '2013-07-09', '13', '07', '09', 'Wijaya', 'Sri', 'Wonokromo', 'Sawahan', 1, 'Islam', '', '', '', '0'),
('7503061108160004', '7503075601900002', 'Nina Susanti', '3', 2, 'Surabaya', '1990-01-16', '90', '01', '16', 'Susanti', 'Dewi', 'Rungkut', 'Wonorejo', 4, 'Islam', '', '', '0', '0'),
('7503062705190003', '7505020511640001', 'Yuni Sari', '1', 2, 'Surabaya', '1984-11-05', '84', '11', '05', 'Sari', 'Rina', 'Ngagel', 'Pacar Keling', 5, 'Islam', '0', '', '', '0'),
('7503061108160004', '7503062511870002', 'Nur Aini', '1', 2, 'Surabaya', '1987-11-25', '87', '11', '25', 'Setyo', 'Rina', 'Rungkut', 'Gunung Anyar Tambak', 4, 'Islam', '0', '', '', '0'),
('7503061302080160', '7571030805610001', 'Agus Suryanto', '3', 1, 'Surabaya', '1967-06-02', '67', '06', '02', 'Wijaya', 'Yuliani', 'Wonokromo', 'Gunung Anyar Lor', 1, 'Islam', '1', 'BPNT', '0', '0'),
('7503061108160004', '7503065112160002', 'Sri Rahayu', '9', 2, 'Surabaya', '2016-12-11', '16', '12', '11', 'Purwanto', 'Susanti', 'Wonokromo', 'Dr. Soetomo', 1, 'Islam', '', '', '', '0');



-- --------------------------------------------------------

--
-- Table structure for table `tabel_konsumsi`
--

CREATE TABLE `tabel_konsumsi` (
  `NIK` varchar(16) NOT NULL,
  `NAMA` varchar(50) NOT NULL,
  `BAHAN_MAKANAN` varchar(10) NOT NULL,
  `FREKUENSI_PER_MINGGU` varchar(2) NOT NULL,
  `PAKAIAN_PER_TAHUN` varchar(2) NOT NULL,
  `MAKAN_PER_HARI` varchar(2) NOT NULL,
  `BIAYA_PENGOBATAN` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tabel_konsumsi`
--

INSERT INTO `tabel_konsumsi` (`NIK`, `NAMA`, `BAHAN_MAKANAN`, `FREKUENSI_PER_MINGGU`, `PAKAIAN_PER_TAHUN`, `MAKAN_PER_HARI`, `BIAYA_PENGOBATAN`) VALUES
('0987654321234587', 'terbaru', '1', '0', '1', '2', '0'),
('1234567890987678', 'ada  test', '1', '0', '1', '2', '0'),
('1302100901880001', 'ARIF FAREZA', '1', '0', '1', '2', '0'),
('4565432123456789', 'paling baru', '1', '3', '3', '3', '1'),
('7204040405770001', 'TASWIR', '1', '0', '1', '0', '0'),
('7371114901030001', 'IZZAH FAUZIAH IRFAN', '', '', '', '', ''),
('7501190712690001', 'KARIM ADAM', '1', '0', '1', '1', '0'),
('7502012203100002', 'RAHMAT SUAIB', '', '0', '0', '0', '0'),
('7503030411020001', 'RIAN N. DAU', '', '', '', '', ''),
('7503031505690001', 'Explicabo Commodo d', '1', '0', '1', '2', '0'),
('7503031510970001', 'NOVAL ADAM', '', '', '', '', ''),
('7503035010630002', 'HAPSA ADAM', '', '', '', '', ''),
('7503035703070001', 'NIKMAWATI ADAM', '', '0', '0', '0', '0'),
('7503060111850001', 'ISMAIL DJAFAR', '1', '0', '1', '1', '0'),
('7503060510770001', 'RAMIN G LADIKU', '1', '0', '1', '2', '0'),
('7503061208170001', 'ARFATTA DINAR FAREZA ', '', '', '', '', ''),
('7503061212710002', '', '', '0', '0', '0', '0'),
('7503061308840001', 'YUMAN TALANGO', '1', '1', '1', '1', '0'),
('7503061705470001', 'BAHRUDIN KARIM', '', '', '', '', ''),
('7503061706670001', 'DRS HENDRO NURJOKO MPKIM', '1', '0', '1', '2', '0'),
('7503062306700001', 'WAHAB SUAIBA', '1', '1', '1', '2', '0'),
('750306251187002', 'ABD RAHMAN MOKO', '1', '0', '1', '2', '0'),
('7503064206670001', 'HARLIN DJAFAR', '', '', '', '', ''),
('7503065112160001', 'SYAFIRA AZ-ZAHRA DJAFAR', '', '', '', '', ''),
('7503065407900001', '', '', '0', '0', '0', '0'),
('7503065801010002', 'RISKAWATI SAMANI', '', '', '', '', ''),
('7503070907130001', 'AQILAH ADRIYANA DJAFAR', '', '', '', '', ''),
('7503075601900002', 'VENDRIYANTI USMAN', '', '', '', '', ''),
('7505020511640001', 'SONI MANYOE', '1', '1', '1', '2', '0'),
('7571030805610001', 'Agus Suryanto', '2', '0', '1', '2', '0'),
('9876543219876543', 'test HBKL', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_pekerjaan`
--

CREATE TABLE `tabel_pekerjaan` (
  `NIK` varchar(16) NOT NULL,
  `NAMA` varchar(50) NOT NULL,
  `PEKERJAAN` varchar(30) NOT NULL,
  `PENGHASILAN_PER_BULAN` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tabel_pekerjaan`
--

INSERT INTO `tabel_pekerjaan` (`NIK`, `NAMA`, `PEKERJAAN`, `PENGHASILAN_PER_BULAN`) VALUES
('0987654321234587', 'Budi Santoso', 'Buruh Tani', 599999),
('1234567890987678', 'Siti Rohani', 'Buruh Bangunan', 300000),
('1302100901880001', 'Joko Priyono', 'Buruh Bangunan', 500000),
('4565432123456789', 'Ratna Dewi', 'Pengolahan/Industri', 50000000),
('7204040405770001', 'Ahmad Fauzan', 'Buruh Bangunan', 500000),
('7371114901030001', 'Rina Puspita', 'Petani', 600000),
('7501190712690001', 'Lina Hartati', 'Buruh Tani', 500000),
('7502012203100002', 'Taufik Hidayat', 'TKI', 0),
('7503030411020001', 'Dewi Anggraini', 'Tidak Bekerja', 0),
('7503031510970001', 'Siti Nurjanah', 'Tidak Bekerja', 0),
('7503035010630002', 'Arif Setiawan', 'Buruh Tani', 500000),
('7503035703070001', 'Nina Lestari', 'Perangkat Desa', 0),
('7503060111850001', 'Doni Purwanto', 'Buruh Bangunan', 500000),
('7503060510770001', 'Hendra Wijaya', 'Buruh Tani', 500000),
('7503061208170001', 'Fauzi Ramadhan', 'Tidak Bekerja', 0),
('7503061212710002', 'Susi Susanti', 'Nelayan', 500000),
('7503061308840001', 'Fadli Rahman', 'Buruh Tani', 500000),
('7503061705470001', 'Herman Hidayat', 'Tidak Bekerja', 0),
('7503061706670001', 'Slamet Riyadi', 'Buruh Tani', 500000),
('7503062306700001', 'Wahyu Satria', 'Buruh Perkebunan', 500000),
('750306251187002', 'Bambang Setyo', 'Petani', 500000),
('7503064206670001', 'Agus Wijaya', 'Tidak Bekerja', 0),
('7503065112160001', 'Sri Wulandari', 'Petani', 400000),
('7503065407900001', 'Rahmat Hidayat', 'Tidak Bekerja', 0),
('7503065801010002', 'Sari Indah', 'Tidak Bekerja', 0),
('7503070907130001', 'Bayu Wijaya', 'Petani', 500000),
('7503075601900002', 'Nina Susanti', 'Buruh Tani', 500000),
('7505020511640001', 'Yuni Sari', 'Buruh Bangunan', 400000),
('7503062511870002', 'Nur Aini', 'Buruh', 500000),
('7571030805610001', 'Agus Suryanto', 'Buruh Tani', 500000),
('9876543219876543', 'Sri Rahayu', 'Buruh Tani', 500000);


-- --------------------------------------------------------

--
-- Table structure for table `tabel_pendidikan`
--

CREATE TABLE `tabel_pendidikan` (
  `NIK` varchar(16) NOT NULL,
  `NAMA` varchar(50) NOT NULL,
  `PENDIDIKAN_TERAKHIR` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tabel_pendidikan`
--

INSERT INTO `tabel_pendidikan` (`NIK`, `NAMA`, `PENDIDIKAN_TERAKHIR`) VALUES
('0987654321234587', 'terbaru', 'Tidak Tamat SD'),
('1234567890987678', 'ada  test', 'Tidak Tamat SD'),
('1302100901880001', 'ARIF FAREZA', 'Tidak Tamat SD'),
('4565432123456789', 'paling baru', 'S3 dan Sederajat'),
('7204040405770001', 'TASWIR', 'Tidak Tamat SD'),
('7371114901030001', 'IZZAH FAUZIAH IRFAN', 'SMA dan Sederajat'),
('7501190712690001', 'KARIM ADAM', 'Tidak Tamat SD'),
('7502012203100002', 'RAHMAT SUAIB', 'SD dan Sederajat'),
('7503030411020001', 'RIAN N. DAU', 'S1 dan Sederajat'),
('7503031505690001', 'Explicabo Commodo d', 'Tidak Tamat SD'),
('7503031510970001', 'NOVAL ADAM', 'S1 dan Sederajat'),
('7503035010630002', 'HAPSA ADAM', 'Tidak Tamat SD'),
('7503035703070001', 'NIKMAWATI ADAM', 'SMP dan Sederajat'),
('7503060111850001', 'ISMAIL DJAFAR', 'Tidak Tamat SD'),
('7503060510770001', 'RAMIN G LADIKU', 'SMA dan Sederajat'),
('7503061208170001', 'ARFATTA DINAR FAREZA ', 'SD dan Sederajat'),
('7503061212710002', '', '--Pilih Pendidikan--'),
('7503061308840001', 'YUMAN TALANGO', 'Tidak Tamat SD'),
('7503061705470001', 'BAHRUDIN KARIM', 'Tidak Tamat SD'),
('7503061706670001', 'DRS HENDRO NURJOKO MPKIM', 'Tidak Tamat SD'),
('7503062306700001', 'WAHAB SUAIBA', 'Tidak Tamat SD'),
('750306251187002', 'ABD RAHMAN MOKO', 'Tidak Tamat SD'),
('7503064206670001', 'HARLIN DJAFAR', 'Tidak Sekolah'),
('7503065112160001', 'SYAFIRA AZ-ZAHRA DJAFAR', 'Tidak Sekolah'),
('7503065407900001', '', '--Pilih Pendidikan--'),
('7503065801010002', 'RISKAWATI SAMANI', 'S1 dan Sederajat'),
('7503070907130001', 'AQILAH ADRIYANA DJAFAR', 'SD dan Sederajat'),
('7503075601900002', 'VENDRIYANTI USMAN', 'SMP dan Sederajat'),
('7505020511640001', 'SONI MANYOE', 'Tidak Tamat SD'),
('7571030805610001', 'Agus Suryanto', 'Tidak Tamat SD'),
('9876543219876543', 'test HBKL', 'Tidak Tamat SD');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_rumah`
--

CREATE TABLE `tabel_rumah` (
  `NIK` varchar(16) NOT NULL,
  `LUAS_LANTAI` int(2) NOT NULL,
  `JENIS_LANTAI` varchar(20) NOT NULL,
  `JENIS_DINDING` varchar(30) NOT NULL,
  `FASILITAS_BAB` tinyint(1) NOT NULL,
  `SUMBER_PENERANGAN` tinyint(1) NOT NULL,
  `SUMBER_AIR_MINUM` varchar(30) NOT NULL,
  `BAHAN_BAKAR_MEMASAK` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tabel_rumah`
--

INSERT INTO `tabel_rumah` (`NIK`, `LUAS_LANTAI`, `JENIS_LANTAI`, `JENIS_DINDING`, `FASILITAS_BAB`, `SUMBER_PENERANGAN`, `SUMBER_AIR_MINUM`, `BAHAN_BAKAR_MEMASAK`) VALUES
('', 0, '--Pilih Jenis Lantai', '--Pilih Jenis Dinding--', 1, 1, '--Pilih Sumber Air Minum--', '--Pilih Bahan Bakar '),
('0987654321234587', 1, 'Semen', 'Tembok Tanpa Di Plester', 0, 0, 'Air Hujan', 'Minyak Tanah'),
('1234567890987678', 1, 'Tanah', 'Kayu berkualitas rendah/Bambu', 0, 0, 'Mata air tidak terlindung', 'Kayu Bakar'),
('1302100901880001', 1, 'Bambu', 'Bambu', 0, 0, 'Sungai', 'Kayu Bakar'),
('7204040405770001', 1, 'Bambu', 'Kayu berkualitas rendah/Bambu', 0, 0, 'Mata air tidak terlindung', 'Kayu Bakar'),
('7501190712690001', 1, 'Bambu', 'Kayu berkualitas rendah/Bambu', 0, 0, 'Mata air tidak terlindung', 'Kayu Bakar'),
('7503060111850001', 1, 'Kayu/Papan', 'Rumbia', 0, 0, 'Sungai', 'Kayu Bakar'),
('7503061212710002', 1, 'Kayu/Papan', 'Rumbia', 0, 0, 'Mata Air tidak Terlindung', 'Kayu Bakar'),
('7503061308840001', 1, 'Bambu', 'Kayu berkualitas rendah/Bambu', 0, 0, 'Mata air tidak terlindung', 'Kayu Bakar'),
('7503061706670001', 1, 'Kayu/Papan', 'Bambu', 0, 0, 'Sungai', 'Kayu Bakar'),
('7503062306700001', 1, 'Bambu', 'Rumbia', 0, 0, 'Mata Air tidak Terlindung', 'Kayu Bakar'),
('750306251187002', 1, 'Kayu/Papan', 'Bambu', 0, 0, 'Air Hujan', 'Minyak Tanah'),
('7505020511640001', 1, 'Bambu', 'Rumbia', 0, 0, 'Mata Air tidak Terlindung', 'Kayu Bakar'),
('7571030805610001', 1, 'Bambu', 'Bambu', 0, 0, 'Mata Air tidak Terlindung', 'Kayu Bakar');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_tabungan`
--

CREATE TABLE `tabel_tabungan` (
  `NIK` varchar(16) NOT NULL,
  `NAMA` varchar(50) NOT NULL,
  `KEPEMILIKAN_TABUNGAN` varchar(1) NOT NULL,
  `JENIS_TABUNGAN` varchar(4) NOT NULL,
  `HARGA` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tabel_tabungan`
--

INSERT INTO `tabel_tabungan` (`NIK`, `NAMA`, `KEPEMILIKAN_TABUNGAN`, `JENIS_TABUNGAN`, `HARGA`) VALUES
('0987654321234587', 'terbaru', '0', '', ''),
('1234567890987678', 'ada  test', '0', '', ''),
('1302100901880001', 'ARIF FAREZA', '0', '', ''),
('4565432123456789', 'paling baru', '1', '5', '100000000'),
('7204040405770001', 'TASWIR', '0', '', ''),
('7371114901030001', 'IZZAH FAUZIAH IRFAN', '', '', ''),
('7501190712690001', 'KARIM ADAM', '0', '', ''),
('7502012203100002', 'RAHMAT SUAIB', '0', '', ''),
('7503030411020001', 'RIAN N. DAU', '', '', ''),
('7503031505690001', 'Explicabo Commodo d', '0', '', ''),
('7503031510970001', 'NOVAL ADAM', '', '', ''),
('7503035010630002', 'HAPSA ADAM', '', '', ''),
('7503035703070001', 'NIKMAWATI ADAM', '0', '', ''),
('7503060111850001', 'ISMAIL DJAFAR', '0', '', ''),
('7503060510770001', 'RAMIN G LADIKU', '0', '', ''),
('7503061208170001', 'ARFATTA DINAR FAREZA ', '', '', ''),
('7503061212710002', '', '0', '', ''),
('7503061308840001', 'YUMAN TALANGO', '0', '', ''),
('7503061705470001', 'BAHRUDIN KARIM', '', '', ''),
('7503061706670001', 'DRS HENDRO NURJOKO MPKIM', '0', '', ''),
('7503062306700001', 'WAHAB SUAIBA', '0', '', ''),
('750306251187002', 'ABD RAHMAN MOKO', '0', '', ''),
('7503064206670001', 'HARLIN DJAFAR', '', '', ''),
('7503065112160001', 'SYAFIRA AZ-ZAHRA DJAFAR', '', '', ''),
('7503065407900001', '', '0', '', ''),
('7503065801010002', 'RISKAWATI SAMANI', '', '', ''),
('7503070907130001', 'AQILAH ADRIYANA DJAFAR', '', '', ''),
('7503075601900002', 'VENDRIYANTI USMAN', '', '', ''),
('7505020511640001', 'SONI MANYOE', '0', '', ''),
('7571030805610001', 'Agus Suryanto', '0', '', ''),
('9876543219876543', 'test HBKL', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `username` varchar(10) NOT NULL,
  `pass` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `username`, `pass`) VALUES
(2, 'Admin', 'admin', '21232f297a57a5a743894a0e4a801fc3');

--
-- Indexes for dumped tables
--
-- data donasi
CREATE TABLE donasi (
    id INT PRIMARY KEY,
    jumlah_donasi DECIMAL(10, 2) NOT NULL,
    tujuan_donasi VARCHAR(255) NOT NULL,
    donatur VARCHAR(255) NOT NULL,
    tanggal DATE NOT NULL
);

INSERT INTO donasi (id, jumlah_donasi, tujuan_donasi, donatur, tanggal) VALUES
(1, 500000, 'Pembangunan Masjid', 'Budi', '2024-05-01'),
(2, 50000, 'Bantuan Banjir', 'Siti', '2024-05-02'),
(3, 1000000, 'Beasiswa Pendidikan', 'Andi', '2024-05-03');

--
-- Indexes for table `tabel_control`
--
ALTER TABLE `tabel_control`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tabel_dusun`
--
ALTER TABLE `tabel_dusun`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tabel_kependudukan`
--
ALTER TABLE `tabel_kependudukan`
  ADD PRIMARY KEY (`NIK`);

--
-- Indexes for table `tabel_konsumsi`
--
ALTER TABLE `tabel_konsumsi`
  ADD PRIMARY KEY (`NIK`);

--
-- Indexes for table `tabel_pekerjaan`
--
ALTER TABLE `tabel_pekerjaan`
  ADD PRIMARY KEY (`NIK`);

--
-- Indexes for table `tabel_pendidikan`
--
ALTER TABLE `tabel_pendidikan`
  ADD PRIMARY KEY (`NIK`);

--
-- Indexes for table `tabel_rumah`
--
ALTER TABLE `tabel_rumah`
  ADD PRIMARY KEY (`NIK`);

--
-- Indexes for table `tabel_tabungan`
--
ALTER TABLE `tabel_tabungan`
  ADD PRIMARY KEY (`NIK`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tabel_control`
--
ALTER TABLE `tabel_control`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tabel_dusun`
--
ALTER TABLE `tabel_dusun`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
