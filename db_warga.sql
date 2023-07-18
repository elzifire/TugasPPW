-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 18, 2023 at 11:50 AM
-- Server version: 10.3.39-MariaDB
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gozi_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `arsip`
--

CREATE TABLE `arsip` (
  `id_arsip` int(5) NOT NULL,
  `id_user` int(5) NOT NULL,
  `id_surat` int(5) NOT NULL,
  `no_laci` varchar(5) NOT NULL,
  `no_lemari` varchar(5) NOT NULL,
  `keterangan` varchar(30) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `arsip`
--

INSERT INTO `arsip` (`id_arsip`, `id_user`, `id_surat`, `no_laci`, `no_lemari`, `keterangan`, `tanggal`) VALUES
(1, 1, 2, '2', 'A', 'Surat Keterangan Bebas', '2019-12-18'),
(2, 1, 1, '23', 'B', 'Surat Keterangan Lagi', '2019-12-23');

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(5) NOT NULL,
  `id_user` int(5) NOT NULL,
  `judul` varchar(25) NOT NULL,
  `isi` text NOT NULL,
  `tanggal` date NOT NULL,
  `gambar` varchar(25) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `id_user`, `judul`, `isi`, `tanggal`, `gambar`, `created_at`, `updated_at`) VALUES
(7, 1, 'KELUHAN MASYARAKAT CILTIM', '<p>\" &gt;</p>\r\n<p>\" &gt;</p>\r\n<p>Masyarakat kampung warnasari, Desa Cilebut Timur, Kecamatan Sukaraja, Kabupaten Bogor, menagih janji para wakil rakyatnya yang notabane lahir dari Daerah Pemilihan (Dapil) 1 untuk DPRD Kabupaten Bogor, Dapil 6 bagi Aleg Provinsi Jawa Barat, maupun Dapil Jawa Barat V untuk DPR-RI.</p>\r\n<p>Hal itu dikarenakan, jembatan penghubung antara Desa Cilebut Timur-Kelurahan Karadenan maupun antar Kecamatan Sukaraja dengan Kecamatan Cibinong.</p>\r\n<p>Salah satu perwakilan masyarakat dari warga Kampung Warnasari Desa Cilebut Timur, Sahaludin mengeluhkan tidak kepekaannya para wakil yang lahir dari dapil Kabupaten Bogor maupun di wilayah kecamatan tempatnya tinggal. Pasalnya, jembatan penghubung dua wilayah itu kini sejak enam (6) bulan terakhir mengalami kerusakan parah namun tak kunjung diperbaiki.</p>\r\n<p>Menurutnya, sudah ada beberapa aleg yang kini duduk di kursi panas DPRD Kabupaten Bogor telah menjanjikan akan memperbaiki jembatan penghubung tersebut.</p>\r\n<p>&ldquo;Mana ini anggota dewan yang terhormat, yang lahir dari wilayah Desa Cilebut Timur, Kecamatan Sukaraja maupun aleg di provinsi Jabar dan DPR-RI. Ada jembatan penghubung rusak diwilayah kami tapi hanya diam saja,&rdquo; ujar Sahaludin kepada wartawan, Jum&rsquo;at (7/7/23).</p>\r\n<p>Pria yang akrap disapa Odeng ini melanjutkan, janji-janji aleg yang pernah disampaikan kepadanya selaku Ketua Karang Taruna Desa Cilebut Timur, maupun kepihak pemerintahan desa setempat hingga sampai saat ini hanya bualan janji belaka tanpa adanya realisasi yang pasti.</p>\r\n<p>&ldquo;Janji hanya janji, tanpa terbukti janji-janji yang pernah diucapkan dari para anggota legislatif yang kini nyaman duduk dikursi singgasana dengan fasilitas mewah yang diberikan oleh negara hasil dari pajak rakyat,&rdquo; tegas Odeng.</p>\r\n<p>Odeng menjelaskan, rusaknya jembatan penghubung antar wilayah dua kecamatan di Bumi Tegar Beriman itu menyebabkan terganggunya para pelajar yang kerap menggunakan akses jembatan itu saat menuju ke sekolahnya.</p>\r\n<p>Misalnya, pelajar dari SMPN 3 Cibinong, MTs Negeri 3 Cibinong, SMAN 2 Cibinong, dan SMK Negeri 1 Cibinong, yang seluruhnya mereka banyak berdomisili di Desa Cilebut Timur maupun Desa Cilebut Barat, Kecamatan Sukaraja.</p>\r\n<p>&ldquo;Saya kasihan nya ke para pelajar yang setiap hari menggunakan akses jembatan ini. Alhasil, aktifitas para pelajar itu jadi terganggu yang hendak menuju ke sekolah tempatnya menimba ilmu,&rdquo; tambahnya menegaskan.</p>\r\n<p>\"Saya harap dapat segera diperbaiki jembatan yang kami anggap di wilayah kampung Warnasari ini sebagai jembatan bersejarah. Terutama pesan ini saya tujukan kepada para wakil rakyat yang hanya mengumbar janji-janji tanpa adanya bukti, jangan harap di pemilu 2024 nanti kami akan memilih anda kembali,&rdquo; tandasnya.</p>\r\n<p>\" &gt;</p>\r\n<p>Masyarakat kampung warnasari, Desa Cilebut Timur, Kecamatan Sukaraja, Kabupaten Bogor, menagih janji para wakil rakyatnya yang notabane lahir dari Daerah Pemilihan (Dapil) 1 untuk DPRD Kabupaten Bogor, Dapil 6 bagi Aleg Provinsi Jawa Barat, maupun Dapil Jawa Barat V untuk DPR-RI.</p>\r\n<p>Hal itu dikarenakan, jembatan penghubung antara Desa Cilebut Timur-Kelurahan Karadenan maupun antar Kecamatan Sukaraja dengan Kecamatan Cibinong.</p>\r\n<p>Salah satu perwakilan masyarakat dari warga Kampung Warnasari Desa Cilebut Timur, Sahaludin mengeluhkan tidak kepekaannya para wakil yang lahir dari dapil Kabupaten Bogor maupun di wilayah kecamatan tempatnya tinggal. Pasalnya, jembatan penghubung dua wilayah itu kini sejak enam (6) bulan terakhir mengalami kerusakan parah namun tak kunjung diperbaiki.</p>\r\n<p>Menurutnya, sudah ada beberapa aleg yang kini duduk di kursi panas DPRD Kabupaten Bogor telah menjanjikan akan memperbaiki jembatan penghubung tersebut.</p>\r\n<p>&ldquo;Mana ini anggota dewan yang terhormat, yang lahir dari wilayah Desa Cilebut Timur, Kecamatan Sukaraja maupun aleg di provinsi Jabar dan DPR-RI. Ada jembatan penghubung rusak diwilayah kami tapi hanya diam saja,&rdquo; ujar Sahaludin kepada wartawan, Jum&rsquo;at (7/7/23).</p>\r\n<p>Pria yang akrap disapa Odeng ini melanjutkan, janji-janji aleg yang pernah disampaikan kepadanya selaku Ketua Karang Taruna Desa Cilebut Timur, maupun kepihak pemerintahan desa setempat hingga sampai saat ini hanya bualan janji belaka tanpa adanya realisasi yang pasti.</p>\r\n<p>&ldquo;Janji hanya janji, tanpa terbukti janji-janji yang pernah diucapkan dari para anggota legislatif yang kini nyaman duduk dikursi singgasana dengan fasilitas mewah yang diberikan oleh negara hasil dari pajak rakyat,&rdquo; tegas Odeng.</p>\r\n<p>Odeng menjelaskan, rusaknya jembatan penghubung antar wilayah dua kecamatan di Bumi Tegar Beriman itu menyebabkan terganggunya para pelajar yang kerap menggunakan akses jembatan itu saat menuju ke sekolahnya.</p>\r\n<p>Misalnya, pelajar dari SMPN 3 Cibinong, MTs Negeri 3 Cibinong, SMAN 2 Cibinong, dan SMK Negeri 1 Cibinong, yang seluruhnya mereka banyak berdomisili di Desa Cilebut Timur maupun Desa Cilebut Barat, Kecamatan Sukaraja.</p>\r\n<p>&ldquo;Saya kasihan nya ke para pelajar yang setiap hari menggunakan akses jembatan ini. Alhasil, aktifitas para pelajar itu jadi terganggu yang hendak menuju ke sekolah tempatnya menimba ilmu,&rdquo; tambahnya menegaskan.</p>\r\n<p>\"Saya harap dapat segera diperbaiki jembatan yang kami anggap di wilayah kampung Warnasari ini sebagai jembatan bersejarah. Terutama pesan ini saya tujukan kepada para wakil rakyat yang hanya mengumbar janji-janji tanpa adanya bukti, jangan harap di pemilu 2024 nanti kami akan memilih anda kembali,&rdquo; tandasnya.</p>\r\n<p>\" &gt;</p>\r\n<p>\" &gt;</p>\r\n<p>Masyarakat kampung warnasari, Desa Cilebut Timur, Kecamatan Sukaraja, Kabupaten Bogor, menagih janji para wakil rakyatnya yang notabane lahir dari Daerah Pemilihan (Dapil) 1 untuk DPRD Kabupaten Bogor, Dapil 6 bagi Aleg Provinsi Jawa Barat, maupun Dapil Jawa Barat V untuk DPR-RI.</p>\r\n<p>Hal itu dikarenakan, jembatan penghubung antara Desa Cilebut Timur-Kelurahan Karadenan maupun antar Kecamatan Sukaraja dengan Kecamatan Cibinong.</p>\r\n<p>Salah satu perwakilan masyarakat dari warga Kampung Warnasari Desa Cilebut Timur, Sahaludin mengeluhkan tidak kepekaannya para wakil yang lahir dari dapil Kabupaten Bogor maupun di wilayah kecamatan tempatnya tinggal. Pasalnya, jembatan penghubung dua wilayah itu kini sejak enam (6) bulan terakhir mengalami kerusakan parah namun tak kunjung diperbaiki.</p>\r\n<p>Menurutnya, sudah ada beberapa aleg yang kini duduk di kursi panas DPRD Kabupaten Bogor telah menjanjikan akan memperbaiki jembatan penghubung tersebut.</p>\r\n<p>&ldquo;Mana ini anggota dewan yang terhormat, yang lahir dari wilayah Desa Cilebut Timur, Kecamatan Sukaraja maupun aleg di provinsi Jabar dan DPR-RI. Ada jembatan penghubung rusak diwilayah kami tapi hanya diam saja,&rdquo; ujar Sahaludin kepada wartawan, Jum&rsquo;at (7/7/23).</p>\r\n<p>Pria yang akrap disapa Odeng ini melanjutkan, janji-janji aleg yang pernah disampaikan kepadanya selaku Ketua Karang Taruna Desa Cilebut Timur, maupun kepihak pemerintahan desa setempat hingga sampai saat ini hanya bualan janji belaka tanpa adanya realisasi yang pasti.</p>\r\n<p>&ldquo;Janji hanya janji, tanpa terbukti janji-janji yang pernah diucapkan dari para anggota legislatif yang kini nyaman duduk dikursi singgasana dengan fasilitas mewah yang diberikan oleh negara hasil dari pajak rakyat,&rdquo; tegas Odeng.</p>\r\n<p>Odeng menjelaskan, rusaknya jembatan penghubung antar wilayah dua kecamatan di Bumi Tegar Beriman itu menyebabkan terganggunya para pelajar yang kerap menggunakan akses jembatan itu saat menuju ke sekolahnya.</p>\r\n<p>Misalnya, pelajar dari SMPN 3 Cibinong, MTs Negeri 3 Cibinong, SMAN 2 Cibinong, dan SMK Negeri 1 Cibinong, yang seluruhnya mereka banyak berdomisili di Desa Cilebut Timur maupun Desa Cilebut Barat, Kecamatan Sukaraja.</p>\r\n<p>&ldquo;Saya kasihan nya ke para pelajar yang setiap hari menggunakan akses jembatan ini. Alhasil, aktifitas para pelajar itu jadi terganggu yang hendak menuju ke sekolah tempatnya menimba ilmu,&rdquo; tambahnya menegaskan.</p>\r\n<p>\"Saya harap dapat segera diperbaiki jembatan yang kami anggap di wilayah kampung Warnasari ini sebagai jembatan bersejarah. Terutama pesan ini saya tujukan kepada para wakil rakyat yang hanya mengumbar janji-janji tanpa adanya bukti, jangan harap di pemilu 2024 nanti kami akan memilih anda kembali,&rdquo; tandasnya.</p>', '2023-07-13', 'IMG-20230704-WA0143.jpg', '2023-07-13 14:37:40', '2023-07-13 15:57:44'),
(8, 1, 'PEMILIHAN KEPALA DESA', '<p>Artikel</p>\r\n<p>Pada tanggal 14 Januari 2023, Menteri Dalam Negeri menerbitkan Surat kepada Bupati/Walikota di seluruh Indonesia yang memiliki Desa yakni Surat Mendagri Nomor 100.3.5.5/244/SJ hal Pelaksanaan Pemilihan Kepala Desa pada Masa Pemilu dan Pilkada Serentak Tahun 2024.</p>\r\n<p>Surat tersebut ditandatangani oleh Sekretaris Jenderal Menteri Dalam Negeri Dr. H. Suhajar Diantoro, M.Si atas nama Menteri Dalam Negeri.</p>\r\n<p>Adapun yang menjadi dasar dikeluarkan Surat Menteri Dalam Negeri Nomor 100.3.5.5/244/SJ yaitu pelaksanaan pemilihan kepala Desa pada masa Pemilihan Umum (Pemilu) dan Pemilihan Kepala Daerah (Pilkada) Serentak Tahun 2024 dan menindaklanjuti Peraturan Komisi Pemilihan Umum Nomor 3 Tahun 2022 tentang Tahapan dan Jadwal Penyelenggaraan Pemilihan Umum Tahun 2024 khususnya yang mengatur masa kampanye Pemilu dan Pilkada Serentak sehingga diperlukan dukungan situasi yang kondusif.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>ISI SURAT MENDAGRI</strong></p>\r\n<p>Dalam rangka pelaksanaan pemilihan kepala Desa pada masa Pemilihan Umum (Pemilu) dan Pemilihan Kepala Daerah (Pilkada) Serentak Tahun 2024 dan menindaklanjuti Peraturan Komisi Pemilihan Umum Nomor 3 Tahun 2022 tentang Tahapan dan Jadwal Penyelenggaraan Pemilihan Umum Tahun 2024 khususnya yang mengatur masa kampanye Pemilu dan Pilkada Serentak diperlukan dukungan situasi yang kondusif, bersama ini dengan hormat disampaikan hal-hal sebagai berikut:</p>\r\n<ol>\r\n<li>&nbsp;Berdasarkan Pasal 31 ayat (2) Undang-Undang Nomor 6 Tahun 2014 tentang Desa menyatakan bahwa Pemerintah Daerah Kabupaten/Kota menetapkan kebijakan pelaksanaan pemilihan Kepala Desa secara serentak dengan Peraturan Daerah Kabupaten/Kota.</li>\r\n<li>&nbsp;Berdasarkan Pasal 2 Permendagri Nomor 112 Tahun 2014 tentang Pemilihan Kepala Desa menyatakan bahwa &Atilde;&cent;&acirc;&sbquo;&not;&Aring;&ldquo;Pemilihan Kepala Desa dilakukan secara serentak satu kali atau dapat bergelombang&Atilde;&cent;&acirc;&sbquo;&not;&Acirc;Â. Selanjutnya pada Pasal 3 menyatakan bahwa &Atilde;&cent;&acirc;&sbquo;&not;&Aring;&ldquo;Pemilihan Kepala Desa satu kali sebagaimana dimaksud dalam Pasal 2 dilaksanakan pada hari yang sama di seluruh desa pada wilayah Kabupaten/Kota&Atilde;&cent;&acirc;&sbquo;&not;&Acirc;Â.</li>\r\n<li>&nbsp;Berdasarkan Pasal 4 ayat (1) Permendagri Nomor 65 Tahun 2017 tentang Perubahan atas Permendagri Nomor 112 Tahun 2014 tentang Pemilihan Kepala Desa menyatakan bahwa Pemilihan kepala Desa secara bergelombang dapat dilaksanakan dengan mempertimbangkan:</li>\r\n<li>&nbsp;Pengelompokan waktu berakhirnya masa jabatan Kepala Desa di wilayah Kabupaten/Kota;</li>\r\n<li>&nbsp;Kemampuan keuangan daerah; dan/atau</li>\r\n<li>&nbsp;Ketersediaan Pegawai Negeri Sipil di lingkungan pemerintah daerah Kabupaten/Kota yang memenuhi persyaratan sebagai penjabat Kepala Desa. Selanjutnya pada Pasal 4 ayat (2) dan ayat (3) menyatakan bahwa Pemilihan kepala Desa secara bergelombang dilaksanakan paling banyak 3 (tiga) kali dalam jangka waktu 6 (enam) tahun dan ketentuan lebih lanjut mengenai interval waktu pemilihan kepala desa secara bergelombang diatur dengan Peraturan Bupati/Wali Kota.</li>\r\n<li>&nbsp;Dengan memperhatikan pertimbangan dan ketentuan-ketentuan sebagaimana tersebut di atas, maka:</li>\r\n<li><strong>&nbsp;Bupati/Wali Kota yang akan menyelenggarakan pemilihan kepala desa dapat dilaksanakan sebelum tanggal 1 November 2023 dengan tetap berpedoman pada ketentuan peraturan perundang-undangan.</strong></li>\r\n<li>&nbsp;Bupati/Wali Kota dapat melaksanakan kembali pemilihan kepala desa setelah selesainya tahapan Pemilu dan Pilkada Serentak Tahun 2024, dengan tetap berpedoman pada ketentuan peraturan perundang-undangan.</li>\r\n<li>&nbsp;Bupati/Wali Kota yang akan melaksanakan pemilihan kepala desa sebelum tanggal 1 November 2023 dan yang akan menunda sampai dengan selesainya tahapan Pemilu dan Pilkada Serentak Tahun 2024 agar melaporkan kepada Gubernur dengan tembusan kepada Menteri Dalam Negeri.</li>\r\n<li>&nbsp;Dalam rangka pemilihan kepala desa sebagaimana dimaksud pada huruf a dan huruf b, agar melakukan koordinasi dengan FORKOPIMDA khususnya dalam menjaga kondusifitas dan stabilitas keamanan di wilayah Saudara/i.</li>\r\n<li>&nbsp;Gubernur sebagai Wakil Pemerintah Pusat melaksanakan monitoring dan evaluasi pelaksanaan pemilihan kepala desa di wilayahnya masing-masing serta melaporkan kepada Menteri Dalam Negeri.</li>\r\n</ol>', '2023-07-13', 'pilkades.png', '2023-07-13 15:57:21', '0000-00-00 00:00:00'),
(9, 1, '2 Kelompok Pemuda Tawuran', '<p>Jakarta - Video aksi dua kelompok pemuda tawuran di Jalan Raya Cilebut, Sukaraja, Kabupaten Bogor, Jawa Barat, beredar di media sosial. Kedua kelompok tawuran itu tampak membawa sejumlah senjata tajam.<br />Dalam video yang dilihat detikcom, Senin (17/7/2023), kedua kelompok terlihat saling menyerang. Mereka juga saling berteriak.<br />Kedua kelompok tersebut juga saling kejar-kejaran. Tawuran dua kelompok tersebut berhenti dengan sendirinya.</p>\r\n<p>Dimintai konfirmasi perihal video itu, Kapolsek Sukaraja Kompol Birman Simanulang membenarkan kejadian tersebut. Satu orang dilaporkan meninggal dunia dalam kejadian itu.</p>\r\n<p>\"Iya (benar kejadiannya), (korban 1) meninggal,\" kata Birman.</p>\r\n<p>Peristiwa itu terjadi pada Sabtu (15/7) malam menjelang Minggu (16/7) dini hari. Kasus tersebut kini tengah ditangani Satreskrim Polres Bogor.</p>\r\n<p>\"Sudah ditangani Reskrim Polres,\" imbuhnya.</p>\r\n<p>&nbsp;</p>', '2023-07-17', '16tauran.jpg', '2023-07-17 16:04:32', '0000-00-00 00:00:00'),
(10, 1, 'Terima Kasih AKBP Iman Im', '<p>CIBINONG-Plt. Bupati Bogor, Iwan Setiawan atas nama masyarakat dan Pemerintah Kabupaten (Pemkab) Bogor mengucapkan terima kasih kepada AKBP Iman Imanuddin atas segala sumbangsih yang diberikan untuk Kabupaten Bogor selama menjadi Kapolres Bogor.<br /> <br />Hal ini ia ungkapkan pada kegiatan Laporan Pertanggungjawaban Publik yang disampaikan AKBP Iman Imanuddin, di Ruang Serbaguna I, Sekretariat Daerah, Cibinong, Senin (17/7). Hadir pada kegiatan tersebut Kapolres Bogor yang baru, Rio Wahyu Anggoro, Wakil Ketua I DPRD Kabupaten Bogor, Ketua KPU Kabupaten Bogor, Kepala BNN Kabupaten Bogor, perwakilan Forkopimda, jajaran pimpinan perangkat daerah, para camat dan Direktur BUMD.<br /> <br />&ldquo;Semoga kinerja dan segala sumbangsih yang telah diberikan selama bertugas sebagai Kapolres Bogor bermanfaat dan menjadi catatan amaliah. Dan semoga semakin sukses dalam menjalankan tugas yang baru,&rdquo; ungkap Iwan Setiawan.</p>\r\n<p>Menurut Iwan, selama ini jajaran Polres Bogor senantiasa bahu membahu bersama-sama pemerintah daerah dalam upaya penegakan hukum, menjaga ketertiban, penanganan konflik masyarakat, penanggulangan bencana dan pelaksanaan pembangunan.</p>\r\n<p>&ldquo;Stabilitas daerah merupakan salah satu prasyarat agar kegiatan pemerintahan, pelayanan publik dan pemberdayaan masyarakat berlangsung dengan baik, lancar dan tertib tanpa gangguan yang berarti, terlebih kita sudah berada di tahun politik menjelang Pemilu serentak tahun 2024,&rdquo; jelas Iwan.</p>\r\n<p>Iwan menambahkan, terwujudnya stabilitas tidak terlepas dari peran Polri dalam mengayomi, menjaga keteraturan, keharmonisan dan ketentraman di masyarakat. Semoga sinergi yang baik antara Pemkab Bogor beserta seluruh komponen Forkopimda dan stakeholder akan terus terjalin, demi kelancaran pembangunan dan terciptanya situasi yang kondusif di Kabupaten Bogor.</p>\r\n<p>&ldquo;Selamat datang Kapolres Bogor yang baru, AKBP Rio Wahyu Anggoro, semoga apa yang menjadi tugas kita bersama untuk menjaga Kabupaten Bogor bisa kita lakukan dengan bersinergi, dengan harapan menjadi percontohan bagi daerah lainnya,&rdquo; kata Iwan Setiawan.</p>\r\n<p>Sementara itu, AKBP Iman Imanuddin menjelaskan, Kabupaten Bogor sangatlah kaya dengan sumber daya yang dimilikinya. Kondisi ini bisa menjadi potensi yang bisa dikembangkan, namun dibalik itu ada sumber permasalahan yang harus dihadapi.<br /> <br />&ldquo;Kekuatan dan kolaborasi antara Pemkab Bogor, Forkopimda dan seluruh stakeholder sangat dibutuhkan untuk mengelola potensi ini dengan baik. Potensi dimiliki Kabupaten Bogor bisa kita gunakan untuk mengakselerasi pembangunan,&rdquo; jelas AKBP Iman.<br /> <br />AKBP Iman juga mengatakan, sejauh ini kolaborasi dan soliditas antar pemangku kepentingan di Kabupaten Bogor sudah berjalan dengan baik. Mulai dari Forkopimda, Instansi yang tergabung dalam Sistem Peradilan Pidana, dan stakeholder lainnya.</p>\r\n<p>&ldquo;Namun masih dapat ditingkatkan dalam rangka mewujudkan Kabupaten Bogor yang aman dan damai, terlebih dalam rangka menghadapi Pemilu 2024 dan Pilbup Bogor 2024,&rdquo; kata AKBP Iman.</p>\r\n<p>Selanjutnya, Kapolres Bogor AKBP Rio Wahyu Anggoro menuturkan, hari ini adalah langkah pijakannya yang pertama untuk dapat berkomunikasi, berkolaborasi agar siap bekerja untuk kemajuan Kabupaten Bogor.</p>\r\n<p>&ldquo;Saya mendapatkan amanah menjadi Kapolres Bogor untuk meneruskan perjuangan Kapolres sebelumnya. Saya ingin mewakafkan diri saya seluruhnya untuk Kabupaten Bogor, saya ingin masyarakat bisa menjalani kehidupan yang tertib, aman, dan damai,&rdquo; tandas AKBP Rio.(TIM KOMUNIKASI PUBLIK / DISKOMINFO KABUPATEN BOGOR)</p>', '2023-07-17', '1.jpeg', '2023-07-17 16:07:25', '2023-07-17 16:07:56'),
(11, 1, 'Berbasis Online, PPDB Tin', '<div>IAWI- Memasuki tahun ajaran baru , proses Penerimaan Peserta Didik Baru (PPDB) secara online di seluruh Sekolah Menengah Pertama Negeri di Kabupaten Bogor telah rampung dilaksanakan. Salah satunya proses PPDB di SMPN 1 Ciawi Kabupaten Bogor yang berlangsung sejak 3-10 Juli 2023 telah selesai dilaksanakan.</div>\r\n<div>&nbsp;</div>\r\n<div>Sebagaimana diketahui bahwa, Proses PPDB di Kabupaten Bogor tertuang dalam Surat Keputusan Kepala Dinas Pendidikan Kabupaten Bogor Jawa Barat Nomor : 400.3.1/352-Disdik tentang pedoman pelaksanaan PPDB pada Pendidikan Anak Usia Dini, Sekolah Dasar, Sekolah Menengah Pertama dan Pendidikan Non Formal Kabupaten Bogor Tahun Pelajaran 2023/2024.</div>\r\n<div>&nbsp;</div>\r\n<div>Perlu diketahui, proses PPDB online yang dilakukan oleh pihak SMPN 1 Ciawi Kabupaten Bogor dimulai sejak 3-10 Juli 2023, dengan mengedepankan Standar Operasional Prosedur (SOP) yang ada. Dengan rincian, 3-6 Juli 2023 pendaftaran online dan verifikasi data, 10 Juli 2023 pengumuman dan 11-14 Juli 2023 daftar ulang.</div>\r\n<div>&nbsp;</div>\r\n<div>Ada lima jalur PPDB di SMPN 1 Ciawi yaitu jalur zonasi, afirmasi, prestasi akademik dan non akademik, perpindahan orang tua, dan nilai rata-rata raport. Dengan rincian jalur zonasi sebanyak 50%,&nbsp; afirmasi 20%, prestasi 25% dan perpindahan orang tua 5 %.</div>\r\n<div>&nbsp;</div>\r\n<div>Informasi terkait PPDB online di SMPN 1 Ciawi dilakukan secara terbuka dan transparan, mulai dari pendaftaran, hasil verifikasi hingga pengumuman hasil seleksi PPDB melalui website : ppdb.smpn1ciawibogor.sch.id, banner dan surat resmi dari pihak sekolah.</div>\r\n<div>&nbsp;</div>\r\n<div>Saat diwawancara tim Komunikasi Publik Diskominfo Kabupaten Bogor, Kepala Sekolah SMPN 1 Ciawi, Ermaini menjelaskan, Proses PPDB di SMPN 1 Ciawi dilakukan secara online dengan terbuka melalui link yang disediakan di website agar mudah diakses oleh calon pendaftar. Dengan melibatkan tim panitia PPDB online yang dilengkapi dengan Surat Keputusan (SK) Kepanitiaan dari pihak Sekolah.</div>\r\n<div>&nbsp;</div>\r\n<div>&ldquo;Verifikasi data dilakukan dengan selektif oleh tim panitia PPDB yang telah di SK-kan sesuai dengan tugas dan fungsinya masing-masing. Agar proses PPDB online ini bisa dilakukan dengan baik dan profesional,&rdquo; ungkapnya.</div>\r\n<div>&nbsp;</div>\r\n<div>Menurutnya, proses PPDB online dilaksanakan dengan matang bahkan jauh sebelum PPDB online dibuka, salah satunya sosialisasi secara luring dengan sejumlah sekolah terdekat baik SD dan MI yang ada di lingkup Kecamatan Ciawi. Untuk menyampaikan Petunjuk Teknis (Juknis) informasi pelaksanaan PPDB online, syarat, aturan masuk ke SMPN 1 Ciawi, hingga waktu pelaksanaan PPDB online.</div>\r\n<div>&nbsp;</div>\r\n<div>&ldquo;Kami undang para guru kelas 6 untuk menyampaikan juknis secara detail, kami juga buat forum secara daring hingga publikasi informasi di website dan banner. Ini kami lakukan agar proses PPDB bisa transparan dan objektif,&rdquo; jelasnya.</div>\r\n<div>&nbsp;</div>\r\n<div>Beredarnya isu dugaan pungli pelaksanaan PPDB Online di SMPN 1 Ciawi, Kepala Sekolah SMPN 1 Ciawi, Ermaini menegaskan bahwa informasi tersebut tidak benar. Meski demikian dirinya akan terus melakukan penelusuran informasi lebih dalam, untuk meminimalisir terjadinya tindakan yang melanggar aturan.</div>\r\n<div>&nbsp;</div>\r\n<div>&ldquo;Karena sejak awal kami melarang keras ke seluruh panitia PPDB untuk menerima pemberian dalam bentuk apapun. Komitmen kami dalam proses PPDB Online ini tidak boleh ada pungutan apapun,&rdquo; imbuhnya.</div>\r\n<div>&nbsp;</div>\r\n<div>Selanjutnya, Kepala Bidang Pembinaan SMP Disdik Kabupaten Bogor, Hendarsah mengungkapkan, pra 10 minggu pelaksanaan PPDB umum di Kabupaten Bogor pembinaan senantiasa dilakukan oleh Pemkab Bogor melalui Dinas Pendidikan ke seluruh sekolah yang akan melaksanakan kegiatan PPDB online di Kabupaten Bogor.</div>\r\n<div>&nbsp;</div>\r\n<div>&ldquo;Ini kami lakukan agar pelaksanaan PPDB di Kabupaten Bogor bisa dilaksanakan sesuai aturan yang ada, berjalan dengan lancar dan menghindari terjadinya penyimpangan,&rdquo; ungkap Hendarsah.</div>\r\n<div>&nbsp;</div>\r\n<div>Lanjut Hendarsyah, pihak Dinas Pendidikan telah mengimbau kepada seluruh kepala sekolah untuk menjalankan pelaksanaan PPDB sesuai dengan juknis yang berlaku.</div>\r\n<div>&nbsp;</div>\r\n<h2>&ldquo;Kami bersama selalu memantau agar pelaksanaanya sukses, tidak terjadi hal yang tidak diinginkan, Sehingga jika terjadi pelanggaran kami bisa segera menindaknya dengan tegas,&rdquo; imbuhnya. (Tim Komunikasi Publik/Diskominfo Kabupaten Bogor)</h2>', '2023-07-17', '2.jpeg', '2023-07-17 16:09:16', '0000-00-00 00:00:00'),
(12, 1, 'Bappedalitbang Kabupaten ', '<div>CIBINONG- Pemerintah Kabupaten (Pemkab) Bogor dalam hal ini Bappedalitbang berhasil sabet juara dua Lomba Karya Tulis Ilmiah dalam ajang Lomba Karya Ilmiah Jabar Juara 2023 yang bertemakan Inovasi dan Kolaborasi. Melalui karya tulisnya mengenai Faktor Ambidexterity Inovasi di Instansi Pemerintah. Penetapan juara diumumkan pada Kamis, 6 Juli 2023 secara virtual dan melalui akun resmi Instagram @bp2djabar.&nbsp;</div>\r\n<div>&nbsp;</div>\r\n<div>Sebagaimana diketahui, Ambidexterity adalah konsep manajemen yang menyeimbangkan antara Sumber Daya Manusia (SDM) yang ada di dalam instansi pemerintah dan eksplorasi inovasi untuk perbaikan tata kelola pemerintahan dan pelayanan publik.</div>\r\n<div>&nbsp;</div>\r\n<div>Setelah sebelumnya dinyatakan lolos dalam tiga besar, Bappedalitbang Kabupaten Bogor dalam hal ini Kepala Bidang Litbang Bappedalitbang Kabupaten Bogor, Riny Kusumawati berhasil meraih juara dua bersama Shinta Nasution dalam Lomba Karya Tulis Ilmiah Jabar Juara 2023 yang diselenggarakan oleh Pemerintah Provinsi Jawa Barat.&nbsp;</div>\r\n<div>&nbsp;</div>\r\n<div>Kepala Bidang Litbang Bappedalitbang Kabupaten Bogor, Riny Kusumawati mengungkapkan, bahwa karya tulis ilmiah yang ia dilombakan berjudul \"Faktor-faktor yang Mempengaruhi Ambidexterity Inovasi di Instansi Pemerintah untuk Meningkatkan Kinerja Instansi\". Pemilihan judul ini&nbsp; dibuat dengan menyelaraskan&nbsp; dengan tema ke-5 yaitu \"Tata Kelola Pemerintahan yang Bersih dan Berkualitas\".</div>\r\n<div>&nbsp;</div>\r\n<div>Lebih lanjut Riny menyatakan, dirinya sangat bersyukur karya yang diciptakan mampu menorehkan prestasi membanggakan untuk Pemerintah Kabupaten Bogor. Semoga ini dapat menjadi masukan dan berdampak positif bagi Pemerintah Jawa Barat dan Kabupaten Bogor, khususnya mengenai faktor-faktor yang mempengaruhi ambidexterity inovasi pada instansi pemerintah. Agar institusi pemerintah dapat meningkatkan kinerjanya dalam tata kelola pemerintah dan dalam melayani masyarakat dengan mengelola proses inovasi secara efektif</div>\r\n<div>&nbsp;</div>\r\n<div>\"Syukur alhamdulilah karya ilmiah kami bisa meraih juara dua dalam lomba karya tulis ilmiah jabar juara tahun ini. Mudah-mudahan ini bisa memotivasi kita semua untuk bersama-sama meningkatkan kinerja dalam melayani masyarakat dengan mengelola proses inovasi secara efektif,&rdquo; ungkap Riny.</div>\r\n<div>&nbsp;</div>\r\n<div>Riny pun berharap prestasi yang ia raih melalui Lomba Karya Ilmiah Jabar Juara 2023 dapat menginspirasi dan memotivasi bagi para Aparatur Sipil Negara (ASN) untuk dapat mengabdikan diri melalui berbagai karya yang dapat dikontribusikan.&nbsp;</div>\r\n<div>&nbsp;</div>\r\n<div>Dilansir dari situs resmi BP2D Jawa Barat, lomba karya tulis ilmiah ini bertujuan untuk meninjau capaian, keberhasilan, dan masukan terkait program yang sudah dilaksanakan oleh Pemerintah Provinsi Jawa Barat, sehingga diharapkan dapat menghasilkan tulisan ilmiah terkait program-program sesuai tema yang ditetapkan.&nbsp;</div>\r\n<div>&nbsp;</div>\r\n<div>Adapun tema besar dalam lomba ini yakni Refleksi Inovasi dan Kolaborasi, dengan lima sub tema antara lain Membentuk Manusia Pancasila dan Berbudaya, Meningkatkan Kesejahteraan dan Kualitas Hidup Masyarakat, Pembangunan Infrastruktur yang Merata dan Berkelanjutan, Ekonomi Berkelanjutan dan Berkeadilan, serta Tata Kelola Pemerintahan yang Bersih dan Berkualitas.&nbsp;</div>\r\n<div>&nbsp;</div>\r\n<div>Pemenang ditentukan setelah melalui tahapan pengumpulan 540 abstraksi kemudian disaring menjadi 296 full paper dan akhirnya tahapan presentasi dan wawancara yang diikuti oleh 15 finalis. Dewan juri kemudian memutuskan pemenang berdasarkan hasil penilaian tahapan tersebut. (Tim Komunikasi Publik/Diskominfo Kabupaten Bogor)</div>', '2023-07-17', '3.jpeg', '2023-07-17 16:10:13', '0000-00-00 00:00:00'),
(13, 1, 'Optimalkan Program Penang', '<div>CIBINONG- Upaya Pemkab Bogor dalam menanggulangi masyarakat miskin menunjukan hasil dengan penurunan tingkat kemiskinan yang signifikan. Hal itu selaras dengan data yang dirilis oleh BPS Provinsi Jawa Barat, bahwa data tahun 2022 persentase tingkat penduduk miskin di Kabupaten Bogor mengalami penurunan tajam 0,40% dibanding tahun 2021 dan berada di urutan tertinggi ke-7 dari 27 kabupaten/kota se-Jawa Barat dalam tingkat penurunan penduduk miskin.</div>\r\n<div>&nbsp;</div>\r\n<div>Kepala Bidang Pengelolaan Informasi dan Komunikasi Publik (PIKP), Dinas Komunikasi dan Informatika Kabupaten Bogor, Iwan Setiawan, menerangkan, data BPS Provinsi Jawa Barat menunjukan bahwa sampai tahun 2022 di Kabupaten Bogor masih terdapat sekitar 474 ribu penduduk miskin. Akan tetapi data jumlah penduduk miskin saja tidak bisa menjadi ukuran dalam merepresentasikan tingkat penduduk miskin di suatu wilayah. Melainkan harus diperbandingkan dengan jumlah penduduk yang mencapai 5,5 juta penduduk, sehingga diperoleh persentase tingkat penduduk miskin sebesar 7,73%.</div>\r\n<div>&nbsp;</div>\r\n<div>\"Persentase inilah salah satu ukuran yang bisa merepresentasikan tingkat penduduk miskin di Kabupaten Bogor maupun di kabupaten/kota lainnya&rdquo;, ujar Kabid PKlP Iwan Setiawan, Selasa (27/06/23).</div>\r\n<div>&nbsp;</div>\r\n<div>Lebih lanjut, Iwan Setiawan, menjelaskan bahwa, data BPS sudah jelas persentase tingkat penduduk miskin di Kabupaten Bogor tahun 2021 berada di 8,13% dan tahun 2022 berada di 7,73%.&nbsp;</div>\r\n<div>&nbsp;</div>\r\n<div>\"Artinya di kedua tahun tersebut posisinya bukan berada di urutan tertinggi pertama seperti isu yang beredar, tetapi berada di urutan tertinggi ke-17 dari 27 kabupaten/kota se-Jawa Barat dalam tingkat penduduk miskin&rdquo;, ungkapnya.</div>\r\n<div>&nbsp;</div>\r\n<div>Perlu diketahui tren indikator makro Kabupaten Bogor juga menunjukan angka yang sangat positif dengan angka yang melesat tajam. Berdasarkan data dari BPS Kabupaten Bogor, seperti Laju Pertumbuhan Ekonomi (LPE) dari angka -1,77 % pada 2020 meningkat menjadi 5,85% di tahun 2022, begitu juga dengan Indeks Pembangunan Manusia dari 70,60% pada 2021 menjadi 71,20% pada tahun 2022. Indikator lainnya, seperti penurunan jumlah pengangguran juga meluncur tajam dari 12,22% pada 2021 menjadi 10,64% di 2022.&nbsp;</div>\r\n<div>&nbsp;</div>\r\n<div>Kepala Bidang PPM Bappeda Litbang, Endik Supiani mengungkapkan bahwa, penurunan angka penduduk miskin di Kabupaten Bogor tidak terlepas dari upaya yang dilakukan Pemkab Bogor. Dengan mengedepankan pada tiga pendekatan, pertama menurunkan beban hidup kebutuhan biaya kesehatan melalui bantuan biaya pengobatan melalui program Penerima Bantuan Iuran (PBI).</div>\r\n<div>&nbsp;</div>\r\n<div>Kemudian bantuan biaya pendidikan dengan bantuan Bantuan Operasional Sekolah (BOS) dan program Bogor Cerdas, serta bantuan perbaikan rumah rusak&nbsp; menjadi layak huni melalui program Rumah Tidak Layak Huni (RTLH). Untuk pendekatan peningkatan pendapatan ia lakukan dengan cara pembinaan untuk meningkatkan keterampilan masyarakat dalam usaha.</div>\r\n<div>&nbsp;</div>\r\n<div>\"Pendekatan penanggulangan kemiskinan ini terus kami lakukan melalui pengurangan beban hidup orang miskin mulai dari PBI kesehatan, Jamkesda, bantuan anak sekolah dengan beasiswa, dan perbaikan Rumah Tidak Layak Huni (RTLH). Kemudian pembangunan sarana air bersih dan sanitasi dengan bantuan peningkatan pembangunan infrastruktur desa. Kami juga fokus pada upaya peningkatan pendapatan orang miskin melalui usaha ekonomi produktif, kelompok usaha bersama dan pembinaan UMKM,\" jelas Endik</div>\r\n<div>&nbsp;</div>\r\n<div>Menurutnya, untuk mempercepat penurunan angka kemiskinan, penanganan kemiskinan di Kabupaten Bogor dilakukan secara sinergi dan kolaborasi. Semua terlibat mulai dari Dinas Sosial, DP3AP2KB, dan Disnaker untuk memutus mata rantai kemiskinan tidak hanya sumber daya manusianya juga meningkatkan kualitas pendidikannya.&nbsp;</div>\r\n<div>&nbsp;</div>\r\n<div>Lanjut Endik, Distanhorbun dan Diskanak berperan aktif dalam menurunkan angka kemiskinan di Kabupaten Bogor salah satunya melalui fasilitas Kelompok Usaha Bersama (KUBE). Dinas Sosial juga berperan aktif selain memberikan layanan jaminan langsung juga melakukan pembinaan terhadap para kelompok usaha.</div>\r\n<div>&nbsp;</div>\r\n<div>\"Bahkan penanggulangan kemiskinan sudah terorganisir melalui Tim Penanggulangan Kemiskinan Daerah (TPKD) yang diketuai oleh Plt. Bupati Bogor Iwan Setiawan dan beranggotakan beberapa Perangkat Daerah termasuk Baznas yang bekerja mulai dari menganalisis kondisi, perencanaan, penganggaran, pelaksanaan hingga monitoring evaluasi,\" terangnya.</div>\r\n<div>&nbsp;</div>\r\n<div>Bukti keseriusan Pemkab Bogor dalam menanggulangi kemiskinan di Kabupaten Bogor menuju masyarakat sejahtera. Selain alokasi anggaran yang besar, pola pendekatan yang dilakukan cukup masif dan komprehensif dengan hasil yang juga cukup baik.&nbsp;</div>\r\n<div>&nbsp;</div>\r\n<div>Selanjutnya, Statistisi Ahli Muda BPS Kabupaten Bogor Ujang Jaelani menegaskan, secara persentase jumlah penduduk miskin di Kabupaten Bogor cenderung mengalami penurunan yang cukup baik dari 8,13% pada tahun 2021, menurun menjadi 7,73% di tahun 2022. Dari 18 Kabupaten se-Jawa Barat posisi Kabupaten Bogor berada di urutan ke-14.</div>\r\n<div>&nbsp;</div>\r\n<div>\"Secara persentase kemiskinan di Kabupaten Bogor turunnya sangat bagus dari 8,13% jadi 7,73% di tahun 2022. Beberapa kabupaten lainnya bahkan masih ada yang di atas 10% sampai 12%,\" ujar Ujang.</div>\r\n<div>&nbsp;</div>\r\n<div>Menurutnya, tahun 2022 Indikator Makro Pemkab Bogor baik IPM, LPE, Daya Beli, RLS semua menunjukan kenaikan. Kemudian indikator kemiskinan juga menunjukan penurunan yang bagus pengangguran juga turun.</div>\r\n<div>&nbsp;</div>\r\n<div>\"Secara umum tahun 2022 angka indikator yang cukup bagus,\" imbuhnya. (Tim Komunikasi Publik/Diskominfo Kabupaten Bogor)</div>', '2023-07-17', '4.jpeg', '2023-07-17 16:13:08', '0000-00-00 00:00:00'),
(14, 1, 'Pemkab Bogor Pastikan Hew', '<div>CIBINONG- Pemerintah Kabupaten Bogor melalui Dinas Perikanan dan Peternakan (Diskanak) Kabupaten Bogor, turun langsung melakukan pengecekan kesehatan hewan ke sejumlah peternakan dan lapak pedagang hewan qurban yang ada di wilayah Kabupaten Bogor.</div>\r\n<div>&nbsp;</div>\r\n<div>Itu dilakukan untuk memastikan kesehatan hewan qurban dan terbebas dari penyakit lato-lato atau Lumpy Skin Disease merupakan penyakit menular yang disebabkan oleh infeksi Lumpy Skin Disease Virus (LSDV) yang menyerang hewan ternak khususnya sapi dan kerbau. Mengingat saat ini telah terjadi kasus penyakit lato-lato yang menyerang sejumlah hewan ternak di sejumlah wilayah di Indonesia.</div>\r\n<div>&nbsp;</div>\r\n<div>Sebagaimana diketahui bahwa, menjelang hari raya Idul Adha tim Diskanak Kabupaten Bogor rutin melakukan pengecekan kesehatan terhadap hewan qurban baik di peternakan juga lapak-lapak penjual hewan qurban.&nbsp;</div>\r\n<div>&nbsp;</div>\r\n<div>Pengecekan dilakukan sejak H-30, H-1 hingga hari H hari raya Idul Adha dengan melibatkan seluruh tim Diskanak Kabupaten Bogor, 50 mahasiswa IPB juga sejumlah tim dari Dinas Ketahanan Pangan dan Peternakan Provinsi Jawa Barat.</div>\r\n<div>&nbsp;</div>\r\n<div>Plt. Kepala Dinas Perikanan dan Peternakan Kabupaten Bogor, Muliadi mengungkapkan, hari ini pihaknya bersama para petugas kesehatan hewan telah melaksanakan pemeriksaan kesehatan hewan qurban ke sejumlah pedagang hewan qurban di wilayah Kecamatan Ciomas.</div>\r\n<div>&nbsp;</div>\r\n<div>&ldquo;Alhamdulilah kami baru saja melaksanakan pemeriksaan kesehatan hewan qurban. Himbauan untuk masyarakat pilihlah ternak qurban yang sehat yang sudah diperiksa oleh dokter hewan/petugas Diskanak dengan bukti adanya Surat Keterangan Kesehatan Hewan Qurban (SKK HQ),&rdquo; tegasnya.</div>\r\n<div>&nbsp;</div>\r\n<div>Sub Koordinator Kesehatan Masyarakat Veteriner, Diskanak Kabupaten Bogor, Hardy Herdiawan menjelaskan, saat ini baik tim dari Diskanak juga tim dari Pusat Kesehatan Hewan (Puskeswan) yang tersebar di enam wilayah yakni UPT Cibinong, Babakan Madang, Jonggol, Sindang Barang, Pamijahan dan Cigudeg disebar ke peternakan dan lapak pedagang hewan kurban untuk memeriksa kesehatan hewan. Serta memastikan hewan qurban yang akan dijual adalah hewan sehat terbebas dari penyakit baik PMK, lato-lato dan lainnya.</div>\r\n<div>&nbsp;</div>\r\n<div>&ldquo;Pemeriksaan kesehatan hewan ini sudah kita sudah mulai di H -30. Selain pemeriksaan kami juga lakukan sosialisasi kesehatan hewan qurban juga cara pemotongan yang baik supaya ternak kurban itu motongnya halal sesuai dengan syariat Islam. Kami bekerjasama dengan MUI Kabupaten Bogor dan Ketua DKM masjid serta DKM desa di tiap kecamatan,&rdquo; tuturnya.</div>\r\n<div>&nbsp;</div>\r\n<div>Melalui sosialisasi dirinya memberikan edukasi kepada masyarakat juga DKM masjid melalui brosur mengenai bagaimana menangani, melihat hewan yang sehat, bagaimana memotong hewan qurban dan bagaimana membagikanya supaya aman. Hal itu tertuang dalam Surat Edaran Kementerian Pertanian Nomor : 5412/SE/PK.430/F/05/2023 tentang Pelaksanaan Kurban dan Pemotongan Hewan Dalam Pencegahan Penyebaran Penyakit Kulit Berbenjol (Lumpy Skin Disease/LSD) dan Kewaspadaan Terhadap Penyakit Peste Des Petitis Ruminants (PPR). Serta fatwa MUI Nomor 34 tahun 2023 tentang Hukum dan Panduan Ibadah Qurban Saat Merebaknya Penyakit Lumpy Skin Disease Virus dan Peste Des Petitis Ruminants.</div>\r\n<div>&nbsp;</div>\r\n<div>&ldquo;Meskipun kasus PMK sudah tidak ditemukan di Kabupaten Bogor, proses pemotongan hingga pembagian hewan qurban kami tetapkan protokol seperti tahun lalu saat terjadi PMK.</div>\r\n<div>&nbsp;</div>\r\n<div>Lanjut Hardy, dirinya juga bersinergi dengan 50 mahasiswa kedokteran hewan IPB yang disebar ke 40 kecamatan, untuk membantu melaksanakan pemeriksaan kesehatan hewan qurban yang akan dipotong atau antemortem pada H-1 Idul Adha, dan pemeriksaan hewan qurban yang sudah dipotong atau postmortem pada hari H Idul Adha. Ini kami lakukan untuk memastikan daging hewan qurban layak untuk dikonsumsi masyarakat,&rdquo; bebernya.</div>\r\n<div>&nbsp;</div>\r\n<div>Dirinya juga menghimbau kepada masyarakat untuk cermat sebelum membeli hewan qurban. Jika ditemukan ciri-ciri seperti munculnya nodul yang keras (benjolan) dengan diameter 2 centimeter (cm) sampai 5 cm yang terdapat di kepala, leher, tungkai, kaki, ekor, dan ambing. Pada kasus yang serius, nodul dapat menutupi di hampir seluruh bagian tubuh artinya hewan tersebut terjangkit penyakit lato-lato. Hindari jika ditemukan hewan qurban dengan ciri-ciri tersebut. (Tim Komunikasi Publik/Diskominfo Kabupaten Bogor)</div>', '2023-07-17', '5.jpeg', '2023-07-17 16:16:37', '0000-00-00 00:00:00'),
(15, 1, 'Pemkab Bogor Gerak Cepat ', '<div>CIBINONG- Pemerintah Kabupaten Bogor melalui Badan Penanggulangan Bencana Daerah (BPBD) Kabupaten Bogor, secara gerak cepat melakukan penanganan bencana kekeringan dengan mendistribusikan air bersih sebanyak 65 ribu liter bagi masyarakat wilayah Bogor Barat Kabupaten Bogor yang mengalami bencana kekeringan, yakni masyarakat di wilayah Kecamatan Nanggung dan Kecamatan Jasinga Kabupaten Bogor.</div>\r\n<div>&nbsp;</div>\r\n<div>Sebanyak 65 ribu liter air bersih didistribusikan kedua wilayah tersebut, dengan rincian 10 ribu liter air bersih bagi 148 Kepala Keluarga/592 jiwa masyarakat Kp. Liud Rt 05 /04 Rw 02&nbsp; Desa Curug Kecamatan Jasinga, dan 10 ribu liter bagi 152 KK/603 jiwa bagi masyarakat Kp. Roke RW. 001 Desa Neglasari Kecamatan Jasinga sebanyak 152 KK/603 Jiwa. Serta 45 ribu liter air bersih untuk 1.408 KK/4.068 warga masyarakat wilayah Desa Kalong Liud Kecamatan Nanggung Kabupaten Bogor. Total 65 liter air bersih didistribusikan kepada 5.263 masyarakat wilayah Kecamatan Jasinga dan Nanggung yang mengalami krisis air bersih</div>\r\n<div>&nbsp;</div>\r\n<div>Perlu diketahui, penanganan bencana kekeringan di wilayah Kecamatan Jasinga dan Nanggung ini telah dilakukan oleh tim reaksi cepat dari BPBD Kabupaten Bogor selama empat hari berturut-turut dari 3 &ndash; 6 Juni 2023.</div>\r\n<div>&nbsp;</div>\r\n<div>Plt. Kasi Logistik BPBD Kabupaten Bogor, Cecep Dais mengungkapkan, bahwa secara gerak cepat BPBD sudah menerjunkan tim ke lokasi bencana kekeringan untuk mendistribusikan air bersih. Pendistribusian air menggunakan dua metode pertama dibagikan langsung ke warga, kedua kami tampung ke toren-toren air yang sudah ia sediakan sebagai upaya mitigasi bencana kekeringan di Kabupaten Bogor.</div>\r\n<div>&nbsp;</div>\r\n<div>&ldquo;Sejak adanya laporan terjadinya bencana kekeringan pada 2 Juni 2023 lalu. Tim kami turun langsung melakukan penanganan bencana tersebut, tim kami sudah bekerja sejak 3-6 Juni 2023 kemarin,&rdquo; tutur Cecep.</div>\r\n<div>&nbsp;</div>\r\n<div>Menurut, Cecep tim BPBD hingga kini selalu standby dan siap menerima serta memenuhi&nbsp; laporan permintaan air bersih dari masyarakat.&nbsp;</div>\r\n<div>&nbsp;</div>\r\n<div>&ldquo;Bahkan hari ini masih ada yang standby disana. Jika ada permintaan air kami siap kirim dan distribusikan bantuan air bersih kami distribusikan menggunakan mobil tangki air dengan bantuan lima personal tim reaksi cepat BPBD disetiap tangki. Hingga saat ini sekitar 65 ribu liter air bersih kami distribusikan untuk memenuhi kebutuhan masyarakat disana. Untuk laporan alhamdulilah berkurang dari sebelumnya, karena mungkin kemarin Kabupaten Bogor telah diguyur hujan,&rdquo; terang Cecep.</div>\r\n<div>&nbsp;</div>\r\n<div>Lanjut Cecep menjelaskan, bahkan dirinya telah memasang toren penampungan air bersih di 24 titik yakni 11 titik tersebar di wilayah Kecamatan Jonggol dan 13 titik tersebar di wilayah Kecamatan Nanggung sebagai upaya mitigasi dan antisipasi terjadinya bencana kekeringan.</div>\r\n<div>&nbsp;</div>\r\n<div>&ldquo;Bantuan distribusi air bersih ini akan terus kami berikan selama laporan permintaan air bersih itu dibutuhkan masyarakat. Pada prinsipnya kami siap membantu dan senantiasa gerak cepat jika ada bencana dan masyarakat yang membutuhkan,&rdquo; ungkapnya.</div>\r\n<div>&nbsp;</div>\r\n<div>Dirinya juga menghimbau kepada seluruh masyarakat Kabupaten Bogor untuk bijak menggunakan air bersih dan selalu sediakan penampungan air untuk antisipasi terjadinya kekeringan. Mengingat saat ini akan memasuki masa peralihan dari musim hujan ke musim kemarau.</div>\r\n<div>&nbsp;</div>\r\n<div>&ldquo;Setiap rumah harus menyiapkan toren penyimpanan air, ini juga salah satu antisipasi kelangkaan air bersih,&rdquo; tuturnya.</div>\r\n<div>&nbsp;</div>\r\n<div>Meski kejadian bencana kekeringan ini terjadi di wilayah Bogor Barat Kabupaten Bogor, tapi pihaknya akan terus memantau dan memonitor keseluruh wilayah Kabupaten Bogor sebagai upaya mitigasi bencana. (Tim Komunikasi Publik/Diskominfo Kabupaten Bogor)</div>', '2023-07-17', '6.jpeg', '2023-07-17 16:17:39', '0000-00-00 00:00:00'),
(16, 1, 'HJB ke-541 Capaian Keberh', '<div>CIBINONG- Plt. Bupati Bogor Iwan Setiawan, menyampaikan sejumlah keberhasilan yang dicapai Kabupaten Bogor pada saat memimpin Upacara Peringatan Hari Jadi Bogor (HJB) ke-541 tahun 2023. Di Lapangan Tegar Beriman, Cibinong, Sabtu (3/6/23).</div>\r\n<div>&nbsp;</div>\r\n<div>Berbicara capaian Kabupaten Bogor, perlu diketahui beberapa tahun ini, pembangunan di wilayah perdesaan ditingkatkan secara intensif. Bahkan di awal periode RPJMD ada 45 desa tertinggal di Kabupaten Bogor. Saat ini sudah nol desa tertinggal, 90 desa berkembang, 231 desa maju dan 95 desa mandiri. Sementara untuk Indeks Pembangunan Manusia (IPM) saat ini, IPM Kabupaten Bogor meningkat dari 69,69 poin menjadi 71,20 poin.</div>\r\n<div>&nbsp;</div>\r\n<div>&ldquo;Melalui program Samisade kita terus berupaya mendorong desa membangun agar masyarakat di pedesaan mendapatkan fasilitas dasar yang baik dan setara serta semakin mandiri dan sejahtera,&rdquo; tutur Iwan Setiawan</div>\r\n<div>&nbsp;</div>\r\n<div>Plt. Bupati Bogor Iwan Setiawan menerangkan, Pemkab Bogor juga terus berupaya meningkatkan sektor pendidikan salah satunya dengan cara mengupayakan ribuan guru honorer terus diupayakan untuk diangkat menjadi PPPK.</div>\r\n<div>&nbsp;</div>\r\n<div>&ldquo;Kemudian, pendidikan inklusif diadakan hampir di setiap Kecamatan, 1.200 pemuda difasilitasi beasiswa perguruan tinggi hingga selesai dan 1.000 hafidz dilahirkan dari program Tahfidz Qur&rsquo;an,&rdquo; terangnya.</div>\r\n<div>&nbsp;</div>\r\n<div>Tidak hanya itu, Pemkab Bogor juga terus berupaya memberikan kepastian hukum dan perlindungan khususnya bagi perempuan dan anak Kabupaten Bogor salah satunya melalui program Isbat Nikah. Juga program intervensi stunting untuk melahirkan generasi Kabupaten Bogor yang sehat.</div>\r\n<div>&nbsp;</div>\r\n<div>&ldquo;Alhamdulilah dalam waktu 4 tahun angka stunting juga turun dari 32,9% menjadi 4,78%,&rdquo; jelas Iwan Setiawan.</div>\r\n<div>&nbsp;</div>\r\n<div>Lanjut Plt. Bupati Bogor mengungkapkan, meskipun sempat terhambat oleh masa pandemi Covid-19, Pemkab Bogor mampu menuntaskan pembangunan 99 jembatan rawayan, rehab 10.000 rumah tidak layak huni, membangun fasilitas bedah syaraf di RSUD Cibinong dan pusat penanganan nyeri di RSUD Ciawi, membangun dan merehabilitasi ribuan ruang sekolah/madrasah/pondok pesantren, dan sebagainya.</div>\r\n<div>&nbsp;</div>\r\n<div>Katanya, berbagai keberhasilan Kabupaten Bogor tidak terlepas dari kerjasama, sinergi, kolaborasi dan dukungan dari semua pihak mulai dari Forkopimda hingga masyarakat.</div>\r\n<div>&nbsp;</div>\r\n<div>&ldquo;Atas nama Pemerintah Kabupaten Bogor saya&nbsp; mengucapkan terima kasih dan penghargaan yang setinggi-tingginya kepada segenap Forkopimda, aparatur, serta seluruh elemen masyarakat sipil atas dukungan dan kepercayaan serta sinergi dan kerjasama yang baik dalam melaksanakan pembangunan daerah dan menciptakan suasana yang kondusif di Kabupaten Bogor,&rdquo; ucapnya.</div>\r\n<div>&nbsp;</div>\r\n<div>Ungkap Iwan Setiawan, jika dibandingkan antara Kabupaten Bogor yang dulu dengan yang sekarang bukan sekedar membandingkan keadaan sekarang dengan kondisi ideal, karena yang ideal harus terus diperjuangkan bersama dan perjalanan masa depan Kabupaten Bogor masih&nbsp; panjang.</div>\r\n<div>&nbsp;</div>\r\n<div>Di masa depan harus lebih banyak lagi jalan, jembatan, dan rumah sakit yang kita bangun. Lebih banyak rutilahu yang direhabilitasi, desa-desa berkembang harus semakin maju dan mandiri. Beasiswa kuliah harus lebih banyak, agar semakin banyak generasi muda Kabupaten Bogor yang mendapatkan pendidikan tinggi.</div>\r\n<div>&nbsp;</div>\r\n<div>&ldquo;Jika saat ini kita mencetak 1.000 hafidz maka di masa depan harus lebih banyak lagi insan cendekia penghafal Qur&rsquo;an yang berdaya saing di Kabupaten Bogor,&rdquo; harapnya.</div>\r\n<div>&nbsp;</div>\r\n<div>Iwan menyatakan, berbagai kemajuan yang sudah kita capai bersama melalui program Pancakarsa baik dalam hal pendidikan, kesehatan, sosial dan infrastruktur, harus terus dilanjutkan dan dipercepat, karena proses pembangunan berkelanjutan dan berkesinambungan.</div>\r\n<div>&nbsp;</div>\r\n<div>Sebagai Informasi, baru-baru ini, Pemerintah Kabupaten Bogor juga berhasil meraih berbagai penghargaan. Pertama, Lencana Bakti Desa Pertama dari Kementerian Desa PDTT, karena menempati peringkat 7 IDM tertinggi se-Jawa Barat dan ke-50 dari 434 Kabupaten se-Indonesia. Kemudian penghargaan sebagai Kabupaten Terinovatif ke-2 se-Indonesia dalam Innovative Government Award (IGA) dari Kemendagri.</div>\r\n<div>&nbsp;</div>\r\n<div>Juara umum pada &ldquo;National Firefighter Skill Competition\" dari Kemendagri. Serta meraih &ldquo;Predikat Badan Publik Informatif&rdquo; dalam rangka Keterbukaan Informasi Publik dari Komisi Informasi Jawa Barat. (Tim Komunikasi Publik/Diskominfo Kabupaten Bogor)</div>', '2023-07-17', '7.jpeg', '2023-07-17 16:19:11', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `galeri`
--

CREATE TABLE `galeri` (
  `id_galeri` int(5) NOT NULL,
  `nama_file` varchar(50) NOT NULL,
  `caption` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `galeri`
--

INSERT INTO `galeri` (`id_galeri`, `nama_file`, `caption`) VALUES
(8, 'a7688d94ea2f426b0dae19739cee2319.jpeg', 'Kantor desa cilebut timur'),
(10, 'a8e14b1a14e02423990f1260209f63d6.jpg', 'cil');

-- --------------------------------------------------------

--
-- Table structure for table `kartu_keluarga`
--

CREATE TABLE `kartu_keluarga` (
  `id_keluarga` int(11) NOT NULL,
  `nomor_kk` varchar(16) NOT NULL,
  `id_kepala_keluarga` int(5) DEFAULT NULL,
  `alamat_keluarga` text NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'Kepala Keluarga',
  `id_user` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kartu_keluarga`
--

INSERT INTO `kartu_keluarga` (`id_keluarga`, `nomor_kk`, `id_kepala_keluarga`, `alamat_keluarga`, `status`, `id_user`, `created_at`, `updated_at`) VALUES
(20, '13', 1, 'Ciawi', 'Kepala Keluarga', 1, '2019-12-17 05:26:07', '2017-12-17 11:41:23'),
(21, '12', 2, 'Kuningan', 'Kepala Keluarga', 1, '2019-12-17 05:32:00', '2017-12-17 11:40:10'),
(36, '123123123123123', 38, 'Kievo', 'Kepala Keluarga', 1, '2019-12-16 17:24:15', '2019-12-16 17:24:15'),
(37, '3326162103070009', 40, 'Bogor ', 'Kepala Keluarga', 1, '2023-07-17 04:29:05', '2023-07-17 04:29:39'),
(38, '43782397239432', 46, 'Ciamis', 'Kepala Keluarga', 1, '2023-07-17 13:58:44', '2023-07-17 14:02:53'),
(39, '3208090101960089', 45, 'Bogor', 'Kepala Keluarga', 1, '2023-07-17 14:10:31', '2023-07-17 14:12:19'),
(40, '3208090101960524', 55, 'Bogor', 'Kepala Keluarga', 1, '2023-07-17 14:26:21', '2023-07-17 14:27:01');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id_setting` int(11) NOT NULL,
  `jenis` enum('Nomor_tpl','Kontak','Tentang','Alamat') NOT NULL,
  `Isi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id_setting`, `jenis`, `Isi`) VALUES
(1, 'Kontak', ''),
(2, 'Nomor_tpl', '<p>(021) 111 111 11</p>\r\n<p>(+62) 812 2345 56</p>\r\n<p>E-mail: admin@gmail.com</p>'),
(3, 'Alamat', '<p>Desa Cilebut Timur,</p>\r\n<p>Kecamatan Sukaraja</p>\r\n<p>Kota Bogor,</p>\r\n<p>Jawa barat. 1660</p>\r\n<div id=\"gtx-trans\" style=\"position: absolute; left: -14px; top: 25.0909px;\">&nbsp;</div>'),
(4, 'Tentang', '<p style=\"text-align: center;\">Ini adalah <em>website</em> kelurahan Kademangan untuk mengelola data warga dan pengarsipan.</p>\r\n<p style=\"text-align: center;\">Serta sebagai media untuk menyebarkan informasi berupa berita dan agenda kegiatan kepada warga</p>');

-- --------------------------------------------------------

--
-- Table structure for table `surat`
--

CREATE TABLE `surat` (
  `id_surat` int(5) NOT NULL,
  `id_user` int(5) NOT NULL,
  `tanggal` date NOT NULL,
  `nama_surat` varchar(20) NOT NULL,
  `berkas` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `surat`
--

INSERT INTO `surat` (`id_surat`, `id_user`, `tanggal`, `nama_surat`, `berkas`) VALUES
(1, 1, '2019-12-18', 'test', 'borobudur.docx'),
(2, 1, '2019-12-18', 'test pdf', 'Puisi Susah.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(5) NOT NULL,
  `nama_user` varchar(45) NOT NULL,
  `username_user` varchar(20) NOT NULL,
  `password_user` varchar(32) NOT NULL,
  `status_user` varchar(10) NOT NULL DEFAULT 'Admin',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama_user`, `username_user`, `password_user`, `status_user`, `created_at`, `updated_at`) VALUES
(1, 'Admin ', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'Admin', '2019-12-13 13:24:20', '2017-10-18 23:31:17'),
(12, 'Jamal Kaboer', 'jamal123', '7592628bce37dd14e0b36ea66d5ba847', 'Admin 3', '2019-12-17 05:35:51', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `warga`
--

CREATE TABLE `warga` (
  `id_warga` int(5) NOT NULL,
  `nik_warga` varchar(16) NOT NULL,
  `password` varchar(32) DEFAULT NULL,
  `nama_warga` varchar(45) NOT NULL,
  `tempat_lahir_warga` varchar(30) NOT NULL,
  `tanggal_lahir_warga` date NOT NULL,
  `jenis_kelamin_warga` enum('L','P') NOT NULL,
  `alamat_ktp_warga` text NOT NULL,
  `alamat_warga` text NOT NULL,
  `negara_warga` varchar(30) NOT NULL,
  `rt_warga` varchar(3) NOT NULL,
  `rw_warga` varchar(3) NOT NULL,
  `agama_warga` enum('Islam','Kristen','Katholik','Hindu','Budha','Konghucu') NOT NULL,
  `pekerjaan_warga` varchar(20) NOT NULL,
  `status_perkawinan` enum('Kawin','Lajang') NOT NULL,
  `status` enum('Aktif','Tidak Aktif') NOT NULL DEFAULT 'Aktif',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `warga`
--

INSERT INTO `warga` (`id_warga`, `nik_warga`, `password`, `nama_warga`, `tempat_lahir_warga`, `tanggal_lahir_warga`, `jenis_kelamin_warga`, `alamat_ktp_warga`, `alamat_warga`, `negara_warga`, `rt_warga`, `rw_warga`, `agama_warga`, `pekerjaan_warga`, `status_perkawinan`, `status`, `created_at`, `updated_at`) VALUES
(1, '3208090101960089', '', 'sulaiman', 'Dukuhdalem', '1985-02-26', 'L', '<p>Dukuh</p>\r\n<p>dalem</p>', '<p>Dukuh</p>\r\n<p>dalem</p>', 'Indonesia', '001', '002', 'Islam', 'Petani', 'Lajang', 'Aktif', '2018-01-17 08:51:54', '2019-12-21 06:52:41'),
(2, '3208090511780005', '', 'Anang', 'Kuningan', '1978-11-05', 'L', '<p>Dukuh<strong>dalem</strong></p>', '<p>Dukuhdalem</p>', 'Indonesia', '02', '01', 'Islam', 'pedagang', 'Kawin', 'Aktif', '2018-01-17 08:53:24', '2019-12-21 06:53:04'),
(36, '1234567891234567', 'd8578edf8458ce06fbc5bb76a58c5ca4', 'Dobleh', 'Kabur', '2010-12-16', 'L', '<p>adas</p>', '<p>Rumah</p>', 'Indonesia', '1', '2', 'Hindu', 'Penguras Air Sawah', 'Lajang', 'Aktif', '2019-12-16 08:29:46', '2019-12-22 17:05:40'),
(37, '1234567891234568', '', 'sdad', 'sfaf', '2019-12-16', 'L', '<p>afaf</p>', '<p>afaf</p>', 'afaf', '04', '02', 'Kristen', 'afaf', 'Kawin', 'Aktif', '2019-12-16 09:03:42', '2019-12-21 06:53:23'),
(38, '1111111111111111', 'cc68ba356b36e974079316d0c365c5e2', 'Gagarin', 'Moskva', '2019-12-16', 'L', '<p>dd</p>', '<p>dd</p>', 'Rusia', '01', '03', 'Katholik', 'Kosmonot', 'Kawin', 'Aktif', '2019-12-16 14:16:19', '2019-12-21 06:53:29'),
(39, '1234567891234569', 'cc68ba356b36e974079316d0c365c5e2', 'Yuri', 'Moskva', '2019-12-18', 'L', '<p>Bogor</p>', '<p>Depok</p>', 'Russia', '02', '01', 'Kristen', 'Astronot', 'Kawin', 'Aktif', '2019-12-18 13:31:54', '2019-12-21 06:53:36'),
(40, '3326160101810021', '4c4284743c846288b5a5312d3d49464b', 'Asep', 'Bogor', '1989-07-11', 'L', '<p>Bogor&nbsp;</p>', '<p>Bogor</p>', 'Indonesia ', '01', '02', 'Islam', 'Wirausaha ', 'Kawin', 'Aktif', '2023-07-17 04:20:13', '0000-00-00 00:00:00'),
(41, '3326160101810863', 'b0599b790184bc94d4d08e76808c468c', 'Mawardi', 'Bogor', '1997-07-13', 'L', '<p>Bogor</p>', '<p>Bogor&nbsp;</p>', 'Indonesia ', '01', '01', 'Islam', 'Wirausaha ', 'Kawin', 'Aktif', '2023-07-17 07:18:43', '0000-00-00 00:00:00'),
(42, '3326160101810822', '1e0fccc57ccb3403bdeb6422e9c1504f', 'Alif ', 'Bogor', '2007-03-14', 'L', '<p>Bogor&nbsp;</p>', '<p>Bogor&nbsp;</p>', 'Indonesia ', '01', '08', 'Islam', 'Pelajar', 'Lajang', 'Aktif', '2023-07-17 07:19:50', '0000-00-00 00:00:00'),
(43, '3326160101810222', '6bc3d0682b20fb4c46d8144775b41a0d', 'Siti ', 'Bandung ', '1992-12-24', 'P', '<p>Bogor&nbsp;</p>', '<p>Bogor</p>', 'Indonesia ', '08', '02', 'Islam', 'Rumah tangga ', 'Kawin', 'Aktif', '2023-07-17 07:21:15', '0000-00-00 00:00:00'),
(44, '3200087241190002', 'b179ba6e45cb16afb532e62d6a3bc4e2', 'Agatha', 'Bogor', '2001-07-02', 'P', '<p>Jl. Mawar Kp. Sawit Rt. 06/03</p>', '<p>Jl. Mawar Kp. Sawit Rt. 06/03</p>', 'Indonesia ', '06', '03', 'Kristen', 'Pelajar ', 'Lajang', 'Aktif', '2023-07-17 10:45:54', '0000-00-00 00:00:00'),
(45, '3200054287190006', '000f03289fdd255b9f45679e358acebc', 'Wisnu kencana ', 'Bogor', '1994-05-04', 'L', '<p>Jl. Kinung Kp. Guda RT. 05/01</p>', '<p>Jl. Kinung Kp. Guda RT. 05/01</p>', 'Indonesia ', '05', '01', 'Islam', 'Wirausaha ', 'Lajang', 'Aktif', '2023-07-17 10:49:29', '0000-00-00 00:00:00'),
(46, '3200076249190023', '80e9252b0cfcc829335dcb808fb1d579', 'Saga Danuri ', 'Bogor', '2007-08-13', 'L', '<p>Jl. Kobu Kp. Loka RT. 04/02</p>', '<p>Jl. Kobu Kp. Loka RT 04/02</p>', 'Indonesia ', '04', '02', 'Islam', 'Pelajar ', 'Lajang', 'Aktif', '2023-07-17 10:52:20', '0000-00-00 00:00:00'),
(47, '3200022367160032', '2fb6afbb24d28cda6a4337a5c15e8849', 'Shakila Deen ', 'Bogor', '2015-10-12', 'P', '<p>Jl. Kina Kp. Sawo RT. 05/02</p>', '<p>Jl. Kina Kp. Sawo RT 05/02</p>', 'Indonesia ', '05', '02', 'Kristen', 'Pelajar ', 'Lajang', 'Aktif', '2023-07-17 10:55:45', '0000-00-00 00:00:00'),
(48, '3200184541790021', 'c6f9023f7aa3cc82ced9522891939107', 'Lokha jinaya', 'Bogor', '1989-10-18', 'P', '<p>Jl. Nima Kp. Hola RT. 02/04</p>', '<p>Jl. Nima Kp. Hola RT. 02/04</p>', 'Indonesia ', '02', '04', 'Islam', 'Ibu rumah tangga ', 'Kawin', 'Aktif', '2023-07-17 10:59:25', '0000-00-00 00:00:00'),
(49, '9238490234890238', 'ae0e844a425df2c0595dcfe5d1c93e6b', 'putri', 'jakarta', '1996-06-30', 'P', '<p>Bogor</p>', '<p>Bandung</p>', 'indonesia', '01', '02', 'Islam', 'Rumah tangga', 'Kawin', 'Aktif', '2023-07-17 14:01:01', '0000-00-00 00:00:00'),
(50, '3211002411620007', 'd51a23b92523f6e98f5ee6f3763cd44c', 'Nurlela Sari', 'Bogor', '1994-06-30', 'P', '<p>Kp. Kademangan</p>', '<p>Kp. Kademangan</p>', 'Indonesia', '001', '006', 'Islam', 'PNS ', 'Kawin', 'Aktif', '2023-07-17 14:07:13', '2023-07-17 14:09:06'),
(51, '3211002511620030', 'd95de1eb6496221d9973017586a5d5ff', 'Murti', 'Garut', '2002-02-13', 'P', '<p>Desa Garut</p>', '<p>Kp. Kademangan</p>', 'Indonesia', '001', '006', 'Islam', 'Mahasiswi', 'Lajang', 'Aktif', '2023-07-17 14:12:09', '0000-00-00 00:00:00'),
(52, '3201170201030002', '140d3f1fc35ae0ca4c35cd8b3a6220d0', 'Nina hartati', 'Depok', '2003-03-01', 'P', '<p>Depok</p>', '<p>Kp. Kademangan</p>', 'Indonesia', '002', '006', 'Islam', 'Belum/Tidak Bekerja', 'Lajang', 'Aktif', '2023-07-17 14:17:06', '0000-00-00 00:00:00'),
(53, '3201172411020015', '89332690d422422f150b9e3aad0dab36', 'Budiono Hartono', 'Depok', '2002-11-24', 'L', '<p>Depok</p>', '<p>Kp. Kademangan</p>', 'Indonesia', '002', '006', 'Islam', 'Belum/Tidak Bekerja', 'Lajang', 'Aktif', '2023-07-17 14:19:53', '0000-00-00 00:00:00'),
(54, '3201173004980007', '88e997a72d18b512324564289499f2cd', 'Hartati', 'Depok', '1998-04-30', 'P', '<p>Depok</p>', '<p>Kp.Kademangan</p>', 'Indonesia', '002', '006', 'Islam', 'Ibu Rumah Tangga', 'Kawin', 'Aktif', '2023-07-17 14:22:23', '0000-00-00 00:00:00'),
(55, '3201171702980008', 'd663c98d80fe15fd390a8695a0f7fbd8', 'Hartono', 'Depok', '1998-02-17', 'L', '<p>Depok</p>', '<p>Kp.Kademangan</p>', 'Indonesia', '002', '006', 'Islam', 'Wirausaha', 'Kawin', 'Aktif', '2023-07-17 14:24:43', '0000-00-00 00:00:00'),
(56, '3201171405990020', '1df303ad32de2b30394761d34e067e0b', 'Jajang', 'Subang', '1999-05-14', 'L', '<p>Kp.Subang</p>', '<p>Kp.Kademangan</p>', 'Indonesia', '001', '007', 'Kristen', 'PNS ', 'Kawin', 'Aktif', '2023-07-17 14:28:36', '0000-00-00 00:00:00'),
(57, '3202111010990004', '20a1517feba804ce02296d33600fcf23', 'Jinten', 'Subang', '1999-10-10', 'L', '<p>Kp.Subang</p>', '<p>Kp.Kademangan</p>', 'Indonesia', '002', '007', 'Islam', 'Ibu Rumah Tangga', 'Kawin', 'Aktif', '2023-07-17 14:31:27', '0000-00-00 00:00:00'),
(58, '3201112012000008', '7f7d5f9f3a660f2b09e3aae62a15e29b', 'Kaligata', 'Papua', '2000-12-20', 'L', '<p>Papua</p>', '<p>Kp.Kademangan</p>', 'Indonesia', '001', '004', 'Islam', 'Belum/Tidak Bekerja', 'Lajang', 'Aktif', '2023-07-17 14:35:51', '0000-00-00 00:00:00'),
(59, '3202221208010008', 'f7ea0080d3b662acc550bb31ff93a932', 'Agung Gumelar', 'Caringin', '2001-08-12', 'L', '<p>Kp. Caringin</p>', '<p>Kp. Kademangan</p>', 'Indonesia', '001', '004', 'Katholik', 'Belum/Tidak Bekerja', 'Lajang', 'Aktif', '2023-07-17 14:41:06', '0000-00-00 00:00:00'),
(60, '3204441606990008', 'b4ec0c90bcf1f8fc542790e0d1a4e903', 'Minnah', 'Bogor', '1999-06-16', 'P', '<p>Bogor</p>', '<p>Kp.kademangan</p>', 'Indonesia', '001', '006', 'Islam', 'Ibu Rumah Tangga', 'Kawin', 'Aktif', '2023-07-17 14:43:58', '0000-00-00 00:00:00'),
(61, '3201232204990001', '34ade1ad6d79826b1662cb2983fa054d', 'Bima Satir', 'Tangerang', '1999-04-22', 'L', '<p>Tangerang</p>', '<p>Kp. Kademangan</p>', 'Indonesia', '001', '004', 'Islam', 'Wirausaha', 'Kawin', 'Aktif', '2023-07-17 14:48:21', '0000-00-00 00:00:00'),
(62, '3201230811990007', '06805869900cc5e0ed26a2aa5b7fba1f', 'Munaroh', 'Tangerang', '1999-11-08', 'P', '<p>Tangerang</p>', '<p>Kp.Kademangan</p>', 'Indonesia', '001', '004', 'Islam', 'Ibu Rumah Tangga', 'Kawin', 'Aktif', '2023-07-17 14:51:03', '2023-07-17 14:51:29'),
(63, '3203210309000444', '60c8d4a0147f75649ba71807bd825a68', 'Darma', 'Bogor', '2000-09-03', 'L', '<p>Bogor</p>', '<p>Kp. Kademangan</p>', 'Indonesia', '001', '004', 'Kristen', 'Wirausaha', 'Lajang', 'Aktif', '2023-07-17 14:59:09', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `warga_has_kartu_keluarga`
--

CREATE TABLE `warga_has_kartu_keluarga` (
  `id_warga` int(5) NOT NULL,
  `id_keluarga` int(5) NOT NULL,
  `status` enum('Anak','Istri') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `warga_has_kartu_keluarga`
--

INSERT INTO `warga_has_kartu_keluarga` (`id_warga`, `id_keluarga`, `status`) VALUES
(36, 37, 'Anak'),
(43, 37, 'Istri'),
(42, 37, 'Anak'),
(39, 36, 'Anak'),
(49, 38, 'Istri'),
(47, 38, 'Anak'),
(52, 39, 'Istri'),
(44, 39, 'Anak'),
(54, 40, 'Istri'),
(51, 40, 'Anak');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `arsip`
--
ALTER TABLE `arsip`
  ADD PRIMARY KEY (`id_arsip`),
  ADD KEY `id_surat` (`id_surat`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id_galeri`);

--
-- Indexes for table `kartu_keluarga`
--
ALTER TABLE `kartu_keluarga`
  ADD PRIMARY KEY (`id_keluarga`),
  ADD UNIQUE KEY `FK_keluarga_penduduk` (`id_kepala_keluarga`) USING BTREE,
  ADD UNIQUE KEY `id_kepala_keluarga` (`id_kepala_keluarga`) USING BTREE,
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_user_2` (`id_user`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id_setting`);

--
-- Indexes for table `surat`
--
ALTER TABLE `surat`
  ADD PRIMARY KEY (`id_surat`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `warga`
--
ALTER TABLE `warga`
  ADD PRIMARY KEY (`id_warga`);

--
-- Indexes for table `warga_has_kartu_keluarga`
--
ALTER TABLE `warga_has_kartu_keluarga`
  ADD KEY `id_warga` (`id_warga`),
  ADD KEY `id_keluarga` (`id_keluarga`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `arsip`
--
ALTER TABLE `arsip`
  MODIFY `id_arsip` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id_galeri` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `kartu_keluarga`
--
ALTER TABLE `kartu_keluarga`
  MODIFY `id_keluarga` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id_setting` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `surat`
--
ALTER TABLE `surat`
  MODIFY `id_surat` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `warga`
--
ALTER TABLE `warga`
  MODIFY `id_warga` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `arsip`
--
ALTER TABLE `arsip`
  ADD CONSTRAINT `fk_arsip` FOREIGN KEY (`id_surat`) REFERENCES `surat` (`id_surat`),
  ADD CONSTRAINT `fk_arsip2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Constraints for table `berita`
--
ALTER TABLE `berita`
  ADD CONSTRAINT `fk_berita` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Constraints for table `kartu_keluarga`
--
ALTER TABLE `kartu_keluarga`
  ADD CONSTRAINT `fk_kk` FOREIGN KEY (`id_kepala_keluarga`) REFERENCES `warga` (`id_warga`),
  ADD CONSTRAINT `kartu_keluarga_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Constraints for table `surat`
--
ALTER TABLE `surat`
  ADD CONSTRAINT `fk_surat` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Constraints for table `warga_has_kartu_keluarga`
--
ALTER TABLE `warga_has_kartu_keluarga`
  ADD CONSTRAINT `fk1` FOREIGN KEY (`id_warga`) REFERENCES `warga` (`id_warga`),
  ADD CONSTRAINT `fk2` FOREIGN KEY (`id_keluarga`) REFERENCES `kartu_keluarga` (`id_keluarga`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
