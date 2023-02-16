-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 15, 2023 at 04:06 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_cuti`
--

-- --------------------------------------------------------

--
-- Table structure for table `cuti`
--

CREATE TABLE `cuti` (
  `id_cuti` varchar(30) NOT NULL,
  `id_user` varchar(256) NOT NULL,
  `alasan` text NOT NULL,
  `tgl_diajukan` date NOT NULL,
  `mulai` date NOT NULL,
  `berakhir` date NOT NULL,
  `id_status_cuti` int(12) NOT NULL,
  `perihal_cuti` varchar(100) NOT NULL,
  `alasan_verifikasi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cuti`
--

INSERT INTO `cuti` (`id_cuti`, `id_user`, `alasan`, `tgl_diajukan`, `mulai`, `berakhir`, `id_status_cuti`, `perihal_cuti`, `alasan_verifikasi`) VALUES
('cuti-060ae', 'c551fc8847d29dc25a23db5d2cdb941b', 'Cuti Sakit SAkit', '2022-08-06', '2022-08-04', '2022-08-17', 2, 'Cuti Sakit', 'YEs'),
('cuti-203c6', '1fcaef592c1b8f4b733b04e19be58f99', 'Menemani study tour anak di Bali', '2022-08-11', '2022-09-04', '2022-09-16', 3, 'study tour', 'Ada rapat penting'),
('cuti-285ed', '8ac5e3b30c2f0091eef898158122d131', 'Liburan muncak di Gunug Lawu', '2022-08-11', '2022-08-27', '2022-08-29', 1, 'Muncak', NULL),
('cuti-3d2a7', '263a76c22eb8acf8c3e08edd55c1421d', 'Menghadiri acara wisuda anak di sekolahan', '2022-08-11', '2022-08-22', '2022-08-23', 1, 'Anak Wisuda', NULL),
('cuti-714f0', '592d06bdc0ee778dab4e01d55ba8b14c', 'Karena ibu saya sakit', '2022-06-15', '2022-06-12', '2022-06-30', 1, 'Cuti Libur', NULL),
('cuti-7d81b', 'beecc6bfae05c7fba5a19f27f41a27ec', 'Muncak di Gunug Lawu sama Alvian', '2022-08-11', '2022-08-27', '2022-08-29', 1, 'Muncak', NULL),
('cuti-89c0c', '2fbb953bcaf76ff9d669197a6d9b6733', 'Membantu panen kebun orang tua', '2022-08-11', '2022-08-12', '2022-08-13', 1, 'Panen', NULL),
('cuti-99215', 'ebeeaf891bcf293ec607f50475648ddc', 'menemani ibu saya yang sakit, sekarang beliau masih berada dirumah sakit dan butuh saya temani selama seminggu.', '2022-06-06', '2022-06-06', '2022-06-15', 2, 'berobat', NULL),
('cuti-a2f13', '39332f054c98c54e4eda83e1274566ed', 'melahirkan anak pertama', '2022-08-11', '2022-08-13', '2022-11-01', 2, 'Cuti Melahirkan', 'melahirkan'),
('cuti-ede81', 'dce802a5e29e9ccabc144dfb6a37abbb', 'Liburan ke lampung', '2022-06-21', '2022-06-21', '2022-06-21', 2, 'Cuti Libur', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jenis_kelamin`
--

CREATE TABLE `jenis_kelamin` (
  `id_jenis_kelamin` int(11) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jenis_kelamin`
--

INSERT INTO `jenis_kelamin` (`id_jenis_kelamin`, `jenis_kelamin`) VALUES
(1, 'Laki-Laki'),
(2, 'Perempuan');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id_mahasiswa` varchar(30) NOT NULL,
  `id_user` varchar(255) NOT NULL,
  `id_status_mahasiswa` int(12) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nik` int(50) NOT NULL,
  `tempat_lahir` varchar(255) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` set('Laki-laki','Perempuan') NOT NULL,
  `no_wa` int(40) NOT NULL,
  `email_simpkb` varchar(255) NOT NULL,
  `ptk_id` int(50) NOT NULL,
  `nama_darurat` varchar(255) NOT NULL,
  `no_darurat` int(50) NOT NULL,
  `no_peserta` int(255) NOT NULL,
  `nim` int(255) NOT NULL,
  `lptk` varchar(255) NOT NULL,
  `bidang_studi` set('Pendidikan Guru Sekolah dasar','Bahasa Indonesia','Matematika') NOT NULL,
  `nama_kelas` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `provinsi` varchar(255) NOT NULL,
  `kabupaten` varchar(255) NOT NULL,
  `kode_pos` int(15) NOT NULL,
  `nama_rekening` varchar(255) NOT NULL,
  `npwp` int(50) NOT NULL,
  `nama_bank` varchar(255) NOT NULL,
  `bank_cabang` varchar(255) NOT NULL,
  `no_rekening` int(50) NOT NULL,
  `alasan_verifikasi` text DEFAULT NULL,
  `dokumen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id_mahasiswa`, `id_user`, `id_status_mahasiswa`, `nama`, `nik`, `tempat_lahir`, `tgl_lahir`, `jenis_kelamin`, `no_wa`, `email_simpkb`, `ptk_id`, `nama_darurat`, `no_darurat`, `no_peserta`, `nim`, `lptk`, `bidang_studi`, `nama_kelas`, `alamat`, `provinsi`, `kabupaten`, `kode_pos`, `nama_rekening`, `npwp`, `nama_bank`, `bank_cabang`, `no_rekening`, `alasan_verifikasi`, `dokumen`) VALUES
('mahasiswa-2726a', '06aabe79415b71343793c9e1f26876b2', 1, 'Syahrul', 123123, 'Boyolali', '2023-01-30', 'Laki-laki', 123213, 'sy@mail.com', 12332, 'Lanjar', 21321, 123213, 123123, 'UNISSULA', 'Bahasa Indonesia', 'A', 'Boyolali', 'Jawa Tengah', 'Batang', 41121, 'Jadjit', 12321, 'BRI', 'Jateng', 12321312, '', '1676383017-cetak-magang_2.pdf'),
('mahasiswa-4e6f2', '06aabe79415b71343793c9e1f26876b2', 2, 'Lanjar Dwi Suparto', 12342, 'Bekasi', '2023-01-31', 'Perempuan', 2147483647, 'lanjar17@gmail.com', 12312, 'Lanjad', 12321, 1323123, 213123, 'SOLO', 'Bahasa Indonesia', 'A', 'Banjarjo 18/04, Gedangan, Cepogo, Boyolali', 'Jateng', 'Kab. Boyolali', 57362, 'Akai', 123213, 'Plecit', 'Jateng', 123, 'mantap semangat', '1676380190-UAS COPY.pdf'),
('mahasiswa-c1f37', '43b4ee2ed3b3a3086a06357389b6aa30', 1, 'Lanjar Dwi Saputro', 2147483647, 'Boyolali', '2002-11-29', 'Laki-laki', 2147483647, 'lanjar17@gmail.com', 7009, 'Syahrul', 2147483647, 20, 0, 'UNISSULA', 'Matematika', 'Matematika B', 'Banjarjo 18/04, Gedangan, Cepogo, Boyolali', 'Jawa Tengah', 'Boyolali', 57362, 'Lanjar Dwi Saputro', 24224, 'BNI', 'KCP Boyolali', 176, '', '1676388019-ktm.jpeg'),
('mahasiswa-c9f9a', '263a76c22eb8acf8c3e08edd55c1421d', 3, 'Coba', 123123123, 'Coba', '2023-01-31', 'Laki-laki', 123123, 'aa@a.com', 3123, 'Coba', 23123, 123123, 123123, 'UNISSULA', 'Pendidikan Guru Sekolah dasar', 'A', 'Jl Coba', 'Jawa Tengah', 'Batang', 231312, 'Coba', 123123, 'A', 'c', 231231, 'Kurang', ''),
('mahasiswa-d41d8', '', 1, '', 0, '', '0000-00-00', '', 0, '', 0, '', 0, 0, 0, '', '', '', '', '', '', 0, '', 0, '', '', 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `status_cuti`
--

CREATE TABLE `status_cuti` (
  `id_status_cuti` int(11) NOT NULL,
  `status_cuti` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `status_cuti`
--

INSERT INTO `status_cuti` (`id_status_cuti`, `status_cuti`) VALUES
(1, 'Menunggu Konfirmasi'),
(2, 'Izin Cuti Diterima'),
(3, 'Izin Cuti Ditolak');

-- --------------------------------------------------------

--
-- Table structure for table `status_mahasiswa`
--

CREATE TABLE `status_mahasiswa` (
  `id_status_mahasiswa` int(11) NOT NULL,
  `status_mahasiswa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `status_mahasiswa`
--

INSERT INTO `status_mahasiswa` (`id_status_mahasiswa`, `status_mahasiswa`) VALUES
(1, 'Menunggu Konfirmasi'),
(2, 'Lapor Diri Diterima'),
(3, 'Lapor Diri Ditolak');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` varchar(256) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `id_user_level` int(11) NOT NULL,
  `id_user_detail` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `email`, `id_user_level`, `id_user_detail`) VALUES
('06aabe79415b71343793c9e1f26876b2', 'jarjit', 'jarjit', 'jarjit@gmail.com', 1, '06aabe79415b71343793c9e1f26876b2'),
('134e349e4f50a051d8ca3687d6a7de1a', 'admin', 'admin', 'admin@admin.com', 2, '134e349e4f50a051d8ca3687d6a7de1a'),
('43b4ee2ed3b3a3086a06357389b6aa30', 'lanjar', 'lanjar', 'lanjar17@gmail.com', 1, '43b4ee2ed3b3a3086a06357389b6aa30'),
('6bde4cff163e1055a27ddf1b609b3145', 'syahrol', 'syahrol', 'syahrol@gmail.com', 1, '6bde4cff163e1055a27ddf1b609b3145'),
('98eb4077470a60a0fe0f7b9d01755557', 'admin2', 'admin2@admin.com', 'ika@gmail.com', 2, '98eb4077470a60a0fe0f7b9d01755557'),
('a7d83b756c8ccdae288ae1b9094c5880', 'jupriyanto', 'jupriyanto', 'jupriyanto@gmail.com', 2, 'a7d83b756c8ccdae288ae1b9094c5880'),
('f5972fbf4ef53843c1e12c3ae99e5005', 'super_admin', 'super_admin', 'kresna123@gmail.com', 3, 'f5972fbf4ef53843c1e12c3ae99e5005');

-- --------------------------------------------------------

--
-- Table structure for table `user_detail`
--

CREATE TABLE `user_detail` (
  `id_user_detail` varchar(256) NOT NULL,
  `nama_lengkap` varchar(30) DEFAULT NULL,
  `id_jenis_kelamin` int(12) DEFAULT NULL,
  `no_telp` varchar(30) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `nip` varchar(50) DEFAULT NULL,
  `pangkat` varchar(50) DEFAULT NULL,
  `jabatan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_detail`
--

INSERT INTO `user_detail` (`id_user_detail`, `nama_lengkap`, `id_jenis_kelamin`, `no_telp`, `alamat`, `nip`, `pangkat`, `jabatan`) VALUES
('06aabe79415b71343793c9e1f26876b2', 'jarjit', 1, '123', 'Banjarjo 18/04, Gedangan, Cepogo, Boyolali', NULL, NULL, NULL),
('134e349e4f50a051d8ca3687d6a7de1a', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('43b4ee2ed3b3a3086a06357389b6aa30', 'Lanjar Dwi saputro', 1, '085747768629', 'Banjarjo 18/04, Gedangan, Cepogo, Boyolali', NULL, NULL, NULL),
('6bde4cff163e1055a27ddf1b609b3145', '', 0, '', '', NULL, NULL, NULL),
('98eb4077470a60a0fe0f7b9d01755557', NULL, 1, NULL, NULL, NULL, NULL, NULL),
('a7d83b756c8ccdae288ae1b9094c5880', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('f5972fbf4ef53843c1e12c3ae99e5005', NULL, 1, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_level`
--

CREATE TABLE `user_level` (
  `id_user_level` int(11) NOT NULL,
  `user_level` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_level`
--

INSERT INTO `user_level` (`id_user_level`, `user_level`) VALUES
(1, 'pegawai'),
(2, 'admin'),
(3, 'super admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cuti`
--
ALTER TABLE `cuti`
  ADD PRIMARY KEY (`id_cuti`);

--
-- Indexes for table `jenis_kelamin`
--
ALTER TABLE `jenis_kelamin`
  ADD PRIMARY KEY (`id_jenis_kelamin`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id_mahasiswa`);

--
-- Indexes for table `status_cuti`
--
ALTER TABLE `status_cuti`
  ADD PRIMARY KEY (`id_status_cuti`);

--
-- Indexes for table `status_mahasiswa`
--
ALTER TABLE `status_mahasiswa`
  ADD PRIMARY KEY (`id_status_mahasiswa`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `user_detail`
--
ALTER TABLE `user_detail`
  ADD PRIMARY KEY (`id_user_detail`);

--
-- Indexes for table `user_level`
--
ALTER TABLE `user_level`
  ADD PRIMARY KEY (`id_user_level`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jenis_kelamin`
--
ALTER TABLE `jenis_kelamin`
  MODIFY `id_jenis_kelamin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `status_cuti`
--
ALTER TABLE `status_cuti`
  MODIFY `id_status_cuti` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `status_mahasiswa`
--
ALTER TABLE `status_mahasiswa`
  MODIFY `id_status_mahasiswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_level`
--
ALTER TABLE `user_level`
  MODIFY `id_user_level` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
