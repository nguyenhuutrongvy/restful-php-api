-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2023 at 08:05 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restful_php_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `cauhoi`
--

CREATE TABLE `cauhoi` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `cau_a` varchar(200) NOT NULL,
  `cau_b` varchar(200) NOT NULL,
  `cau_c` varchar(200) DEFAULT NULL,
  `cau_d` varchar(200) DEFAULT NULL,
  `cau_dung` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cauhoi`
--

INSERT INTO `cauhoi` (`id`, `title`, `cau_a`, `cau_b`, `cau_c`, `cau_d`, `cau_dung`) VALUES
(1, 'Phần của đường bộ được sử dụng cho các phương tiện giao thông qua lại là gì?', 'Phần mặt đường và lề đường.', 'Phần đường xe chạy.', 'Phần đường xe cơ giới.', NULL, 'cau_b'),
(2, '\"Phương tiện tham gia giao thông đường bộ\" gồm những loại nào?', 'Phương tiện giao thông cơ giới đường bộ.', 'Phương tiện giao thông thô sơ đường bộ và xe máy chuyên dùng.', 'Cả ý 1 và ý 2.', NULL, 'cau_c'),
(3, 'Sử dụng rượu bia khi lái xe, nếu bị phát hiện thì bị xử lý như thế nào?', 'Chỉ bị nhắc nhở.', 'Bị xử phạt hành chính hoặc có thể bị xử lý hình sự tùy theo mức độ vi phạm.', 'Không bị xử lý hình sự.', NULL, 'cau_b'),
(4, 'Bạn đang lái xe phía trước có một xe cứu thương đang phát tín hiệu ưu tiên bạn có được phép vượt hay không?', 'Không được vượt.', 'Được vượt khi đang đi trên cầu.', 'Được phép vượt khi đi qua nơi giao nhau có ít phương tiện cùng tham gia giao thông.', 'Được vượt khi đảm bảo an toàn.', 'cau_a'),
(5, 'Hành vi sử dụng xe mô tô để kéo, đẩy xe mô tô khác bị hết xăng đến trạm mua xăng có được phép hay không?', 'Chỉ được kéo nếu đã nhìn thấy trạm xăng.', 'Chỉ được thực hiện trên đường vắng phương tiện cùng tham gia giao thông.', 'Không được phép.', NULL, 'cau_c'),
(6, 'Biển báo hiệu hình tròn có nền xanh lam có hình vẽ màu trắng là loại biển gì dưới đây?', 'Biển báo nguy hiểm.', 'Biển báo cấm.', 'Biển báo hiệu lệnh phải thi hành.', 'Biển báo chỉ dẫn.', 'cau_c'),
(7, 'Bạn đang lái xe trong khu vực đô thị từ 22 giờ đến 5 giờ sáng hôm sau và cần vượt một xe khác, bạn cần báo hiệu như thế nào để đảm bảo an toàn giao thông?', 'Phải báo hiệu bằng đèn hoặc còi;', 'Chỉ được báo hiệu bằng còi.', 'Phải báo hiệu bằng cả còi và đèn.', 'Chỉ được báo hiệu bằng đèn.', 'cau_d'),
(8, 'Người điều khiển phương tiện tham gia giao thông trong hầm đường bộ ngoài việc phải tuân thủ các quy tắc giao thông còn phải thực hiện những quy định nào dưới đây?', 'Xe cơ giới, xe máy chuyên dùng phải bật đèn; xe thô sơ phải bật đèn hoặc có vật phát sáng báo hiệu; chỉ được dừng xe, đỗ xe ở nơi quy định.', 'Xe cơ giới phải bật đèn ngay cả khi đường hầm sáng; phải cho xe chạy trên một làn đường và chỉ chuyển làn ở nơi được phép; được quay đầu xe, lùi xe khi cần thiết.', 'Xe máy chuyên dùng phải bật đèn ngay cả khi đường hầm sáng; phải cho xe chạy trên một làn đường và chỉ chuyển làn ở nơi được phép; được quay đầu xe, lùi xe khi cần thiết.', NULL, 'cau_a'),
(9, 'Trên đoạn đường hai chiều không có giải phân cách giữa, người lái xe không được vượt xe khác trong các trường hợp nào dưới đây?', 'Xe bị vượt bất ngờ tăng tốc độ và cố tình không nhường đường.', 'Xe bị vượt giảm tốc độ và nhường đường.', 'Phát hiện có xe đi ngược chiều.', 'Cả ý 1 và ý 3.', 'cau_d'),
(10, 'Khi điều khiển xe chạy với tốc độ dưới 60 km/h, để đảm bảo khoảng cách an toàn giữa hai xe, người lái xe phải điều khiển xe như thế nào?', 'Chủ động giữ khoảng cách an toàn phù hợp với xe chạy liền trước xe của mình.', 'Đảm bảo khoảng cách an toàn theo mật độ phương tiện, tình hình giao thông thực tế.', 'Cả ý 1 và ý 2.', NULL, 'cau_c');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cauhoi`
--
ALTER TABLE `cauhoi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cauhoi`
--
ALTER TABLE `cauhoi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
