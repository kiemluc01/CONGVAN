-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2022 at 04:40 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `document_management_4`
--

-- --------------------------------------------------------

--
-- Table structure for table `can_bo`
--

CREATE TABLE `can_bo` (
  `maCanBo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `matKhau` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hoTen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngaySinh` date NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sdt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trangThai` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `maQuyen` bigint(20) UNSIGNED NOT NULL,
  `maDonVi` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `can_bo`
--

INSERT INTO `can_bo` (`maCanBo`, `matKhau`, `hoTen`, `ngaySinh`, `email`, `sdt`, `trangThai`, `maQuyen`, `maDonVi`, `created_at`, `updated_at`) VALUES
('191105310150', '123456789', 'Trần Ngọc Tiến', '1995-08-09', 'ngoctien1995@gmail.com', '0765276376', '1', 1, 3, '2022-06-12 23:41:08', '2022-06-12 23:41:08'),
('1911505310118', '123456789', 'Lê Thị Phương Dung', '1998-07-09', 'phuongdung1998@gmail.com', '0777443786', '1', 3, 7, '2022-06-12 23:39:57', '2022-06-12 23:39:57'),
('1911505310132', '01262788456aA@', 'Nguyễn Đình Khoa', '2001-07-09', 'nguyendinhkhoa19t1@gmail.com', '0777443873', '1', 2, 3, '2022-06-12 23:23:03', '2022-06-12 23:23:03');

-- --------------------------------------------------------

--
-- Table structure for table `don_vi`
--

CREATE TABLE `don_vi` (
  `maDonVi` bigint(20) UNSIGNED NOT NULL,
  `tenDonVi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `moTa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `maLoaiDV` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `don_vi`
--

INSERT INTO `don_vi` (`maDonVi`, `tenDonVi`, `moTa`, `maLoaiDV`, `created_at`, `updated_at`) VALUES
(1, 'Đại học Đà Nẵng', 'Đại học Đà Nẵng', 2, '2022-06-12 23:14:47', '2022-06-12 23:14:47'),
(2, 'Phòng Công tác sinh viên', 'Phòng Công tác Sinh viên (CTSV) có chức năng tham mưu, giúp việc cho Hiệu trưởng trong công tác quản lý, giáo dục chính trị tư tưởng cho sinh viên, quản lý hoạt động của ký túc xá; tìm kiếm các nguồn học bổng trong và ngoài nước cho sinh viên (SV).', 2, '2022-06-12 23:15:41', '2022-06-12 23:15:41'),
(3, 'Phòng đào tạo', 'Tham mưu, giúp việc cho Hiệu trưởng trong công tác tổ chức và quản lý toàn bộ các hoạt động đào tạo của nhà trường.', 1, '2022-06-12 23:16:07', '2022-06-12 23:16:07'),
(4, 'Phòng QLKH và HTQT', 'Phòng Quản lý Khoa học và Hợp tác Quốc tế (QLKH&HTQT) có chức năng tham mưu cho Ban Giám hiệu, trực tiếp quản lý và triển khai các công tác liên quan đến hoạt động nghiên cứu khoa học (NCKH), chuyển giao công nghệ (CGCN)', 1, '2022-06-12 23:16:35', '2022-06-12 23:16:35'),
(5, 'Phòng kế hoạch tài chính', 'Phòng Kế hoạch - Tài chính (KH-TC) có chức năng tham mưu, giúp việc cho Hiệu trưởng thực hiện công tác lập kế hoạch, quản lý tài chính của nhà trường. Tổ chức thực hiện và đề xuất các quy chế, quy định quản lý các nguồn tài chính.', 1, '2022-06-12 23:17:04', '2022-06-12 23:17:04'),
(6, 'Phòng cơ sở vật chất', 'Phòng Cơ sở vật chất là đơn vị có chức năng tham mưu và giúp việc cho Hiệu trưởng tăng cường đầu tư cơ sở vật chất phục vụ công tác đào tạo, nghiên cứu khoa học.', 1, '2022-06-12 23:17:24', '2022-06-12 23:17:24'),
(7, 'Khoa công nghệ số', 'Khoa Công nghệ số vừa được thành lập từ tháng 3/2022', 1, '2022-06-12 23:17:58', '2022-06-12 23:17:58'),
(8, 'Khoa điện - điện tử', 'Khoa Điện - Điện tử với sứ mệnh đảm nhiệm việc đào tạo nguồn nhân lực Kỹ sư công nghệ trong các lĩnh vực Điện- Điện tử, Điều khiển và tự động hóa, Điện tử viễn thông.', 1, '2022-06-12 23:18:28', '2022-06-12 23:18:28'),
(9, 'Khoa kỹ thuật xây dựng', 'Khoa Kỹ thuật Xây dựng - được thành lập năm 2002 - có sứ mệnh đào tạo Kỹ sư, Kiến trúc sư và Cử nhân ở các chuyên ngành Xây dựng - Kiến trúc cho Khu vực Miền Trung - Tây Nguyên và cả nước.', 1, '2022-06-12 23:18:47', '2022-06-12 23:18:47'),
(10, 'Khoa công nghệ hóa học - môi trường', 'Khoa Công nghệ Hóa học - Môi trường đào tạo Kỹ sư Công nghệ hệ đại học (4 năm) với 4 chuyên ngành: Công nghệ Vật liệu – Công nghệ Kỹ thuật Môi trường – Kỹ thuật Thực phẩm – Sinh học ứng dụng.', 1, '2022-06-12 23:19:04', '2022-06-12 23:19:04'),
(11, 'Khoa sư phạm công nghiệp', 'Khoa Sư phạm Công nghiệp được ra đời trên nền tảng Khoa Sư phạm Kỹ thuật của Trường Đại học Bách khoa, Đại học Đà Nẵng từ năm 1999 và chính thức tuyển sinh khoá đầu tiên vào năm 2000. Tại Trường Đại học Sư phạm Kỹ thuật, Đại học Đà Nẵng bắt đầu tuyển sinh', 1, '2022-06-12 23:19:22', '2022-06-12 23:19:22');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loai_don_vi`
--

CREATE TABLE `loai_don_vi` (
  `maLoaiDV` bigint(20) UNSIGNED NOT NULL,
  `tenLoaiDV` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loai_don_vi`
--

INSERT INTO `loai_don_vi` (`maLoaiDV`, `tenLoaiDV`, `created_at`, `updated_at`) VALUES
(1, 'Nội bộ', '2022-06-12 22:58:19', '2022-06-12 22:58:19'),
(2, 'Bên ngoài', '2022-06-12 22:58:30', '2022-06-12 22:58:30');

-- --------------------------------------------------------

--
-- Table structure for table `loai_van_ban`
--

CREATE TABLE `loai_van_ban` (
  `maLoaiVB` bigint(20) UNSIGNED NOT NULL,
  `tenLoaiVB` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `moTa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loai_van_ban`
--

INSERT INTO `loai_van_ban` (`maLoaiVB`, `tenLoaiVB`, `moTa`, `created_at`, `updated_at`) VALUES
(1, 'Triển khai', 'văn bản triển khai', '2022-06-12 23:41:41', '2022-06-12 23:41:41'),
(2, 'Chỉ thị', 'văn bản chỉ thị', '2022-06-12 23:41:52', '2022-06-12 23:41:52'),
(3, 'Báo cáo', 'văn bản báo cáo', '2022-06-12 23:42:07', '2022-06-12 23:42:07'),
(4, 'Quyết định', 'văn bản quyết định', '2022-06-12 23:42:31', '2022-06-12 23:42:31'),
(5, 'Kế hoạch', 'văn bản kế hoạch', '2022-06-13 00:21:02', '2022-06-13 00:21:02');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2022_06_05_074754_create_loai_don_vis_table', 1),
(5, '2022_06_05_081939_create_don_vis_table', 1),
(6, '2022_06_06_054847_create_phan_quyens_table', 1),
(7, '2022_06_06_055422_create_can_bos_table', 1),
(8, '2022_06_12_040129_create_loai_van_bans_table', 1),
(9, '2022_06_13_035824_create_van_ban_dis_table', 1),
(10, '2022_06_13_042104_create_van_ban_dens_table', 1),
(11, '2022_06_13_054352_create__v_b_di__d_v_nhan_table', 1),
(12, '2022_06_13_054515_create__v_b_den__d_v_nhan_table', 1);

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
-- Table structure for table `phan_quyen`
--

CREATE TABLE `phan_quyen` (
  `maQuyen` bigint(20) UNSIGNED NOT NULL,
  `tenQuyen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phan_quyen`
--

INSERT INTO `phan_quyen` (`maQuyen`, `tenQuyen`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '2022-06-12 22:55:52', '2022-06-12 22:55:52'),
(2, 'Văn thư trưởng', '2022-06-12 22:56:15', '2022-06-12 22:56:15'),
(3, 'Văn thư các phòng ban', '2022-06-12 22:56:31', '2022-06-12 22:56:31');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hoten` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gioitinh` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngaysinh` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sdt` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `hoten`, `name`, `email`, `gioitinh`, `ngaysinh`, `sdt`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Bảo Chungg Lee', 'baochungg', 'baochung@gmail.com', 'Nam', '01/01/2001', '0987654321', NULL, '123', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `van_ban_den`
--

CREATE TABLE `van_ban_den` (
  `maVanBanDen` bigint(20) UNSIGNED NOT NULL,
  `tenFileVanBan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `soHieu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngayBanHanh` date NOT NULL,
  `nhanvien` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `moTa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngayHetHieuLuc` date NOT NULL,
  `maLoaiVB` bigint(20) UNSIGNED NOT NULL,
  `maDonViGui` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `van_ban_den`
--

INSERT INTO `van_ban_den` (`maVanBanDen`, `tenFileVanBan`, `soHieu`, `ngayBanHanh`, `nhanvien`, `moTa`, `ngayHetHieuLuc`, `maLoaiVB`, `maDonViGui`, `created_at`, `updated_at`) VALUES
(1, '3617 KH Festival 2021', '3617/KH-ĐHĐN', '2021-10-21', '', 'Kế hoạch Festival Khoa học công nghệ sinh viên Đại học Đà Nẵng lần thứ 3, năm 2021', '2021-11-21', 5, 1, '2022-06-13 00:28:22', '2022-06-13 00:28:22'),
(2, '753 KH ĐHĐN KH Giai thuong SV NCKH DHDN nam hoc 2021 - 2022', '753/KH-ĐHĐN', '2022-02-28', '', 'Kế hoạch tổ chức xét tặng Giải thưởng \"Sinh viên Nghiên cứu khoa học Đại học Đà Nẵng\" năm học 2021-2022', '2022-03-15', 5, 1, '2022-06-13 00:30:07', '2022-06-13 00:30:07'),
(3, '1885_0001', '1885/QĐ-ĐHĐN', '2022-05-27', '', 'Quyết định về việc kiểm tra việc thực hiện quy định về xét tuyển trong công tác tuyển sinh đại học hệ chính quy.', '2022-06-15', 4, 1, '2022-06-13 00:41:23', '2022-06-13 00:41:23'),
(7, 'home-image.jpg', '1235435', '0000-00-00', 'Bảo chung', '', '0000-00-00', 3, 2, NULL, NULL),
(8, 'Public/files/show.png', '1235435', '2022-01-01', 'Bảo chung', '', '0000-00-00', 3, 2, NULL, NULL),
(9, 'Public/files/index.php', '1235435', '2022-01-01', 'Bảo chung', '', '0000-00-00', 3, 2, NULL, NULL),
(10, 'Public/files/index.php', '1235435', '2022-01-01', 'Bảo chung', '', '0000-00-00', 3, 2, NULL, NULL),
(11, 'Public/files/index.php', '1235435', '2022-01-01', 'Bảo chung', '', '0000-00-00', 2, 2, NULL, NULL),
(12, 'Public/files/index.php', '1235435', '2022-01-01', 'Bảo chung', '', '0000-00-00', 2, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `van_ban_di`
--

CREATE TABLE `van_ban_di` (
  `maVanBanDi` bigint(20) UNSIGNED NOT NULL,
  `tenFileVanBan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `soHieu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngayBanHanh` date NOT NULL,
  `moTa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngayHetHieuLuc` date NOT NULL,
  `maLoaiVB` bigint(20) UNSIGNED NOT NULL,
  `maDonViGui` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `van_ban_di`
--

INSERT INTO `van_ban_di` (`maVanBanDi`, `tenFileVanBan`, `soHieu`, `ngayBanHanh`, `moTa`, `ngayHetHieuLuc`, `maLoaiVB`, `maDonViGui`, `created_at`, `updated_at`) VALUES
(1, '322 Qui dinh Cong tac Truyen thong cua Truong', '322/QĐ-ĐHSPKT', '2021-06-21', 'Quyết định về việc ban hành Quy định công tác truyền thông của Trường Đại học Sư phạm Kỹ thuật - Đại học Đà Nẵng', '2021-07-21', 4, 3, NULL, NULL),
(2, '323 Qui dinh luu thong tai lieu', '323/QĐ-ĐHSPKT', '2021-06-21', 'Quyết định về việc ban hành Quy định lưu thông tài liệu, phục vụ bạn đọc của Trường Đại học Sư phạm Kỹ thuật - Đại học Đà Nẵng', '2021-07-21', 4, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vbden_dvnhan`
--

CREATE TABLE `vbden_dvnhan` (
  `maVanBanDen` bigint(20) UNSIGNED NOT NULL,
  `maDonViNhan` bigint(20) UNSIGNED NOT NULL,
  `trangThai` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngayGuiThongBao` date NOT NULL,
  `ngayCapNhat` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vbden_dvnhan`
--

INSERT INTO `vbden_dvnhan` (`maVanBanDen`, `maDonViNhan`, `trangThai`, `ngayGuiThongBao`, `ngayCapNhat`, `created_at`, `updated_at`) VALUES
(2, 7, '1', '2021-10-21', '2021-10-22', '2022-06-13 00:32:20', '2022-06-13 00:32:20'),
(2, 10, '1', '2021-10-21', '2021-10-22', NULL, NULL),
(2, 9, '1', '2021-10-21', '2021-10-22', NULL, NULL),
(2, 11, '1', '2021-10-21', '2021-10-22', NULL, NULL),
(2, 8, '1', '2021-10-21', '2021-10-22', NULL, NULL),
(1, 3, '1', '2022-02-28', '2022-03-01', NULL, NULL),
(3, 3, '1', '2022-05-27', '2022-05-28', '2022-06-13 00:42:13', '2022-06-13 00:42:13');

-- --------------------------------------------------------

--
-- Table structure for table `vbdi_dvnhan`
--

CREATE TABLE `vbdi_dvnhan` (
  `maVanBanDi` bigint(20) UNSIGNED NOT NULL,
  `maDonViNhan` bigint(20) UNSIGNED NOT NULL,
  `trangThai` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngayGuiThongBao` date NOT NULL,
  `ngayCapNhat` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vbdi_dvnhan`
--

INSERT INTO `vbdi_dvnhan` (`maVanBanDi`, `maDonViNhan`, `trangThai`, `ngayGuiThongBao`, `ngayCapNhat`, `created_at`, `updated_at`) VALUES
(1, 10, '1', '2021-06-21', '2021-06-21', NULL, NULL),
(1, 7, '1', '2021-06-21', '2021-06-21', NULL, NULL),
(1, 9, '1', '2021-06-21', '2021-06-21', NULL, NULL),
(1, 11, '1', '2021-06-21', '2021-06-21', NULL, NULL),
(1, 8, '1', '2021-06-21', '2021-06-21', NULL, NULL),
(1, 2, '1', '2021-06-21', '2021-06-21', NULL, NULL),
(2, 10, '1', '2021-06-21', '2021-06-21', NULL, NULL),
(2, 7, '1', '2021-06-21', '2021-06-21', NULL, NULL),
(2, 9, '1', '2021-06-21', '2021-06-21', NULL, NULL),
(2, 11, '1', '2021-06-21', '2021-06-21', NULL, NULL),
(2, 8, '1', '2021-06-21', '2021-06-21', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `can_bo`
--
ALTER TABLE `can_bo`
  ADD PRIMARY KEY (`maCanBo`),
  ADD KEY `can_bo_maquyen_foreign` (`maQuyen`),
  ADD KEY `can_bo_madonvi_foreign` (`maDonVi`);

--
-- Indexes for table `don_vi`
--
ALTER TABLE `don_vi`
  ADD PRIMARY KEY (`maDonVi`),
  ADD KEY `don_vi_maloaidv_foreign` (`maLoaiDV`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loai_don_vi`
--
ALTER TABLE `loai_don_vi`
  ADD PRIMARY KEY (`maLoaiDV`);

--
-- Indexes for table `loai_van_ban`
--
ALTER TABLE `loai_van_ban`
  ADD PRIMARY KEY (`maLoaiVB`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `phan_quyen`
--
ALTER TABLE `phan_quyen`
  ADD PRIMARY KEY (`maQuyen`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `van_ban_den`
--
ALTER TABLE `van_ban_den`
  ADD PRIMARY KEY (`maVanBanDen`),
  ADD KEY `van_ban_den_maloaivb_foreign` (`maLoaiVB`),
  ADD KEY `van_ban_den_madonvigui_foreign` (`maDonViGui`);

--
-- Indexes for table `van_ban_di`
--
ALTER TABLE `van_ban_di`
  ADD PRIMARY KEY (`maVanBanDi`),
  ADD KEY `van_ban_di_maloaivb_foreign` (`maLoaiVB`),
  ADD KEY `van_ban_di_madonvigui_foreign` (`maDonViGui`);

--
-- Indexes for table `vbden_dvnhan`
--
ALTER TABLE `vbden_dvnhan`
  ADD KEY `vbden_dvnhan_mavanbanden_foreign` (`maVanBanDen`),
  ADD KEY `vbden_dvnhan_madonvinhan_foreign` (`maDonViNhan`);

--
-- Indexes for table `vbdi_dvnhan`
--
ALTER TABLE `vbdi_dvnhan`
  ADD KEY `vbdi_dvnhan_mavanbandi_foreign` (`maVanBanDi`),
  ADD KEY `vbdi_dvnhan_madonvinhan_foreign` (`maDonViNhan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `don_vi`
--
ALTER TABLE `don_vi`
  MODIFY `maDonVi` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loai_don_vi`
--
ALTER TABLE `loai_don_vi`
  MODIFY `maLoaiDV` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `loai_van_ban`
--
ALTER TABLE `loai_van_ban`
  MODIFY `maLoaiVB` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `phan_quyen`
--
ALTER TABLE `phan_quyen`
  MODIFY `maQuyen` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `van_ban_den`
--
ALTER TABLE `van_ban_den`
  MODIFY `maVanBanDen` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `van_ban_di`
--
ALTER TABLE `van_ban_di`
  MODIFY `maVanBanDi` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `can_bo`
--
ALTER TABLE `can_bo`
  ADD CONSTRAINT `can_bo_madonvi_foreign` FOREIGN KEY (`maDonVi`) REFERENCES `don_vi` (`maDonVi`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `can_bo_maquyen_foreign` FOREIGN KEY (`maQuyen`) REFERENCES `phan_quyen` (`maQuyen`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `don_vi`
--
ALTER TABLE `don_vi`
  ADD CONSTRAINT `don_vi_maloaidv_foreign` FOREIGN KEY (`maLoaiDV`) REFERENCES `loai_don_vi` (`maLoaiDV`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `van_ban_den`
--
ALTER TABLE `van_ban_den`
  ADD CONSTRAINT `van_ban_den_madonvigui_foreign` FOREIGN KEY (`maDonViGui`) REFERENCES `don_vi` (`maDonVi`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `van_ban_den_maloaivb_foreign` FOREIGN KEY (`maLoaiVB`) REFERENCES `loai_van_ban` (`maLoaiVB`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `van_ban_di`
--
ALTER TABLE `van_ban_di`
  ADD CONSTRAINT `van_ban_di_madonvigui_foreign` FOREIGN KEY (`maDonViGui`) REFERENCES `don_vi` (`maDonVi`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `van_ban_di_maloaivb_foreign` FOREIGN KEY (`maLoaiVB`) REFERENCES `loai_van_ban` (`maLoaiVB`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `vbden_dvnhan`
--
ALTER TABLE `vbden_dvnhan`
  ADD CONSTRAINT `vbden_dvnhan_madonvinhan_foreign` FOREIGN KEY (`maDonViNhan`) REFERENCES `don_vi` (`maDonVi`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `vbden_dvnhan_mavanbanden_foreign` FOREIGN KEY (`maVanBanDen`) REFERENCES `van_ban_den` (`maVanBanDen`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `vbdi_dvnhan`
--
ALTER TABLE `vbdi_dvnhan`
  ADD CONSTRAINT `vbdi_dvnhan_madonvinhan_foreign` FOREIGN KEY (`maDonViNhan`) REFERENCES `don_vi` (`maDonVi`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `vbdi_dvnhan_mavanbandi_foreign` FOREIGN KEY (`maVanBanDi`) REFERENCES `van_ban_di` (`maVanBanDi`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
