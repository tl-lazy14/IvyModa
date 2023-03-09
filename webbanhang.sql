-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 31, 2023 lúc 05:49 PM
-- Phiên bản máy phục vụ: 10.4.25-MariaDB
-- Phiên bản PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webbanhang`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `tenTK` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `matKhau` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`tenTK`, `matKhau`) VALUES
('tunglam14', '14102002');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chi_tiet_don_hang`
--

CREATE TABLE `chi_tiet_don_hang` (
  `STT` int(11) NOT NULL,
  `idDonHang` int(11) NOT NULL,
  `idSanPham` int(11) NOT NULL,
  `size` varchar(10) CHARACTER SET utf8 NOT NULL,
  `soLuong` int(11) NOT NULL,
  `thanhTien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chi_tiet_don_hang`
--

INSERT INTO `chi_tiet_don_hang` (`STT`, `idDonHang`, `idSanPham`, `size`, `soLuong`, `thanhTien`) VALUES
(1, 1, 45, 'S', 1, 196000),
(2, 1, 2, 'S', 1, 1988000),
(3, 1, 1, 'XL', 2, 1810000),
(4, 2, 22, 'S', 1, 1090000),
(5, 2, 23, 'M', 2, 1470000),
(6, 3, 49, 'S', 1, 345000),
(7, 3, 62, 'L', 1, 445000),
(8, 4, 48, 'S', 1, 345000),
(9, 4, 44, 'L', 1, 396000),
(23, 16, 47, 'S', 1, 395000),
(24, 16, 70, 'XL', 1, 945000),
(32, 21, 75, 'S', 1, 314300),
(33, 21, 70, 'L', 1, 945000),
(34, 21, 80, 'S', 1, 384300),
(35, 21, 82, 'S', 1, 279300),
(36, 22, 50, 'L', 1, 1393000),
(37, 22, 51, 'L', 1, 1743000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danh_muc`
--

CREATE TABLE `danh_muc` (
  `idDanhMuc` int(11) NOT NULL,
  `tenDanhMuc` varchar(50) CHARACTER SET utf8 NOT NULL,
  `nhomSanPham` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `loaiSanPham` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danh_muc`
--

INSERT INTO `danh_muc` (`idDanhMuc`, `tenDanhMuc`, `nhomSanPham`, `loaiSanPham`) VALUES
(1, 'Nữ', 'Áo', 'Áo sơ mi nữ'),
(2, 'Nữ', 'Áo', 'Áo thun nữ'),
(3, 'Nữ', 'Áo', 'Áo croptop nữ'),
(4, 'Nữ', 'Áo', 'Áo khoác nữ\r\n'),
(5, 'Nữ', 'Áo', 'Áo len nữ'),
(6, 'Nữ', 'Áo', 'Áo vest nữ'),
(7, 'Nữ', 'Quần', 'Quần jeans nữ'),
(8, 'Nữ', 'Quần', 'Quần lửng/short nữ'),
(9, 'Nữ', 'Quần', 'Quần dài nữ'),
(10, 'Nam', 'Áo', 'Áo sơ mi nam'),
(11, 'Nam', 'Áo', 'Áo thun nam'),
(12, 'Nam', 'Áo', 'Áo polo nam'),
(13, 'Nam', 'Áo', 'Áo khoác nam'),
(14, 'Nam', 'Áo', 'Áo len nam'),
(15, 'Nam', 'Áo', 'Áo vest nam'),
(16, 'Nam', 'Quần', 'Quần jeans nam'),
(17, 'Nam', 'Quần', 'Quần lửng/short nam'),
(18, 'Nam', 'Quần', 'Quần dài nam'),
(19, 'Nam', 'Quần', 'Quần tây nam'),
(20, 'Trẻ em', 'Bé gái', 'Áo bé gái'),
(21, 'Trẻ em', 'Bé gái', 'Quần bé gái'),
(22, 'Trẻ em', 'Bé gái', 'Váy bé gái'),
(23, 'Trẻ em', 'Bé trai', 'Áo bé trai'),
(24, 'Trẻ em', 'Bé trai', 'Quần bé trai');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danh_muc_san_pham`
--

CREATE TABLE `danh_muc_san_pham` (
  `idDanhMuc` int(11) NOT NULL,
  `idSP` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danh_muc_san_pham`
--

INSERT INTO `danh_muc_san_pham` (`idDanhMuc`, `idSP`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(2, 9),
(2, 10),
(2, 11),
(2, 12),
(3, 13),
(3, 14),
(3, 15),
(3, 16),
(3, 86),
(4, 17),
(4, 18),
(4, 19),
(4, 20),
(5, 21),
(5, 22),
(5, 23),
(5, 24),
(6, 25),
(6, 26),
(6, 27),
(6, 28),
(7, 29),
(7, 30),
(7, 31),
(7, 32),
(8, 33),
(8, 34),
(8, 35),
(8, 36),
(9, 37),
(9, 38),
(9, 39),
(9, 40),
(10, 41),
(10, 42),
(10, 43),
(11, 44),
(11, 45),
(11, 46),
(12, 47),
(12, 48),
(12, 49),
(13, 50),
(13, 51),
(13, 52),
(14, 53),
(14, 54),
(15, 55),
(15, 56),
(15, 57),
(16, 58),
(16, 59),
(16, 60),
(17, 61),
(17, 62),
(17, 63),
(18, 64),
(18, 65),
(18, 66),
(19, 67),
(19, 68),
(19, 69),
(20, 70),
(20, 71),
(20, 72),
(21, 73),
(21, 74),
(21, 75),
(22, 76),
(22, 77),
(22, 78),
(23, 79),
(23, 80),
(23, 81),
(24, 82),
(24, 83),
(24, 84);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `don_hang`
--

CREATE TABLE `don_hang` (
  `idDonHang` int(11) NOT NULL,
  `hoTen` varchar(50) CHARACTER SET utf8 NOT NULL,
  `soDienThoai` varchar(20) CHARACTER SET utf8 NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 NOT NULL,
  `tinhThanh` varchar(50) CHARACTER SET utf8 NOT NULL,
  `quanHuyen` varchar(50) CHARACTER SET utf8 NOT NULL,
  `phuongXa` varchar(50) CHARACTER SET utf8 NOT NULL,
  `diaChi` varchar(50) CHARACTER SET utf8 NOT NULL,
  `ngayDatHang` datetime NOT NULL,
  `tongTienHang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `don_hang`
--

INSERT INTO `don_hang` (`idDonHang`, `hoTen`, `soDienThoai`, `email`, `tinhThanh`, `quanHuyen`, `phuongXa`, `diaChi`, `ngayDatHang`, `tongTienHang`) VALUES
(1, 'Tùng Lâm', '0329850375', 'lam2002ttb@gmail.com', 'Thái Bình', 'Vũ Thư', 'Tân Hòa', 'Xóm 9 thôn Đại Đồng', '2023-01-06 11:55:32', 3994000),
(2, 'Lan Anh', '0396202903', 'lananh@gmail.com', 'Hà Nội', 'Nam Từ Liêm', 'Mỹ Đình 2', 'Ký túc xá Mỹ Đình', '2023-01-06 12:11:24', 2560000),
(3, 'Đức Chung', '0326546116', 'ducchung@gmail.com', 'Thái Bình', 'Vũ Thư', 'Bách Thuận', 'Thôn Bách Tính', '2023-01-06 12:16:25', 790000),
(4, 'Trọng Quyền', '0376257611', 'quyen@gmail.com', 'Thái Bình', 'Vũ Thư', 'Bách Thuận', 'Thôn Bách Tính', '2023-01-06 12:24:14', 741000),
(16, 'Lê Bùi', '0364654845', 'buithile@gmail.com', 'Thái Bình', 'Vũ Thư', 'Nguyên Xá', 'Xóm 2', '2023-01-06 17:55:38', 1340000),
(21, 'Nguyễn Trang', '0348465464', 'trangnguyen@gmail.com', 'Hà Nội', 'Cầu Giấy', 'Trung Kính', 'Số nhà 34', '2023-01-07 16:18:14', 1922900),
(22, 'Đỗ Tùng Lâm', '0329850375', 'lam.dvt204574@sis.hust.edu.vn', 'Thái Bình', 'Vũ Thư', 'Tân Hòa', 'Xóm 9 Thôn Đại Đồng', '2023-01-07 17:09:52', 3136000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `san_pham`
--

CREATE TABLE `san_pham` (
  `idSP` int(11) NOT NULL,
  `tenSP` varchar(255) CHARACTER SET utf8 NOT NULL,
  `maSP` varchar(7) CHARACTER SET utf8 NOT NULL,
  `giaSP` int(11) NOT NULL,
  `mauSP` varchar(30) CHARACTER SET utf8 NOT NULL,
  `anhMauSP` varchar(50) CHARACTER SET utf8 NOT NULL,
  `anhSP1` varchar(50) CHARACTER SET utf8 NOT NULL,
  `anhSP2` varchar(50) CHARACTER SET utf8 NOT NULL,
  `anhSP3` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `anhSP4` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `gioithieuSP` text CHARACTER SET utf8 DEFAULT NULL,
  `dongSP` varchar(30) CHARACTER SET utf8 NOT NULL,
  `kieuDang` varchar(30) CHARACTER SET utf8 NOT NULL,
  `doDai` varchar(30) CHARACTER SET utf8 NOT NULL,
  `hoaTiet` varchar(30) CHARACTER SET utf8 NOT NULL,
  `chatLieu` varchar(30) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `san_pham`
--

INSERT INTO `san_pham` (`idSP`, `tenSP`, `maSP`, `giaSP`, `mauSP`, `anhMauSP`, `anhSP1`, `anhSP2`, `anhSP3`, `anhSP4`, `gioithieuSP`, `dongSP`, `kieuDang`, `doDai`, `hoaTiet`, `chatLieu`) VALUES
(1, 'Áo sơ mi cổ 2 ve cách điệu', '77M8112', 905000, 'Hồng Đậm', 'hongdam.png', 'sp1_1.jpg', 'sp1_2.jpg', 'sp1_3.jpg', 'sp1_4.jpg', 'Áo sơ mi dáng vest. Đằng trước là cổ 2 ve, đằng sau là cổ thủy thủ. Phần eo được bo chun bản to phía sau. Chất liệu vải tuysi đứng phom, mềm mịn, ít nhăn.\r\n\r\nThiết kế áo sơ mi này được lấy cảm hứng từ chiếc áo vest cổ điển với dáng đứng form. Cổ 2 ve mở rộng giúp khoe trọn đường xương quai xanh của nàng. Phía sau được phối cùng cổ thủy thủ đem đến nét trẻ trung và nữ tính. Dáng áo được bo chun phồng ở hông có tác dụng định hình tỷ lệ cơ thể người mặc.\r\n\r\nVới mẫu thiết kế này, nàng có thể chọn sơ vin hay thả suông đều rất đẹp, phối cùng kiều kiểu quần, chân váy khác nhau, phù hợp diện đi làm hay đi chơi.', 'Ladies', 'Oversize', 'Ngang mông', 'Trơn', 'Tuysi'),
(2, 'Set áo sơ mi dạ kẻ chân váy', '70M8017', 1988000, 'Kẻ Nude', 'kenude.png', 'sp2_1.jpg', 'sp2_2.jpg', 'sp2_3.jpg', '', 'Sản phẩm thuộc BST Timeless và được trình diễn trong show thời trang Fall Winter 2022. Bộ sưu tập lấy cảm hứng từ phong cách thời trang Academia, cộng hưởng với những ý tưởng sáng tạo đầy xu hướng, mang đến diện mạo học thức vượt ra khỏi khái niệm sắc đẹp đơn thuần.\r\n\r\nÁo sơ mi dạ trở thành hot trend trong những năm gần đây. Giữ nguyên kiểu dáng sơ mi cơ bản nhưng được nhấn nhá thêm hàng khuy kim loại trơn cùng kiểu may phối vải tuysi đen đã mang lại vẻ độc đáo cho cả bộ trang phục. Chân váy chữ A dáng ngắn cạp cao, có khuy cài phía sau.\r\n\r\nChất liệu được sử dụng là vải dạ, là loại vải gồm các sợi vải tự nhiên được ép chặt không có khe hở nên vải dạ giữ nhiệt rất tốt. Vải dạ dày hơn so với vải nỉ nên thường được ưu tiên may áo khoác mùa đông hay áo form dài. Quần áo làm từ vải dạ rất mềm, mịn và mang đến cảm giác êm ái. Họa tiết kẻ vuông thời thượng cùng màu sắc trung tính đem lại cảm giác ấm áp cho ngày lạnh.\r\n\r\nNàng chỉ cần diện full set là sẽ có ngay 1 outfit trendy và thời thượng. Ngoài ra, dáng áo khoác này có thể phối hợp với quần ống rộng, ống suông, quần jean các loại, chân váy dễ dàng diện cùng nhiều kiểu áo.', 'Ladies', 'Oversize', 'Ngang mông', 'Kẻ', 'Dạ'),
(3, 'Áo lụa cổ đổ', '17M7985', 950000, 'Đỏ Ruby', 'doruby.png', 'sp3_1.jpg', 'sp3_2.jpg', 'sp3_3.jpg', 'sp3_4.jpg', 'Sản phẩm thuộc BST Timeless và được trình diễn trong show thời trang Fall Winter 2022. Bộ sưu tập lấy cảm hứng từ phong cách thời trang Academia, cộng hưởng với những ý tưởng sáng tạo đầy xu hướng, mang đến diện mạo học thức vượt ra khỏi khái niệm sắc đẹp đơn thuần.\r\n\r\nLấy cảm hứng từ chiếc áo sơ mi cổ đức truyền thống, IVY ra mắt thiết kế áo sơ mi cách kiểu với dáng cổ đổ mang nét cổ điển, tôn lên phần vai quyến rũ của người phụ nữ.\r\n\r\nNhững chiếc áo lụa luôn mang đến sự thu hút mới lạ một cách đầy sang trọng. Chất liệu cao cấp này chưa bao giờ trở lên lỗi thời và có thể phối hoàn hảo cùng nhiều phong cách khác nhau.\r\n\r\nThiết kế áo này nàng có thể diện khi đi làm, đi chơi và đi tiệc. Chất liệu và kiểu dáng áo giúp nàng thỏa sức mix&match cùng nhiều kiểu chân váy và dáng quần khác nhau, phù hợp với mọi phong cách mà nàng theo đuổi.', 'Ladies', 'Xuông', 'Dài thường', 'Trơn', 'Lụa'),
(4, 'Eser set - set áo lụa và chân váy kèm đai', '17M7956', 1680000, 'Vàng Nâu', 'vangnau.png', 'sp4_1.jpg', 'sp4_2.jpg', 'sp4_3.jpg', 'sp4_4.jpg', 'Set áo lụa dài tay và chân váy nằm trong BST Timeless và được trình diễn trong show thời trang Fall Winter 2022. Set đồ lấy cảm hứng từ phong cách thời trang quý tộc phương tây mang đến vẻ đẹp học thức, kiêu kỳ. Thiết kế áo kiểu dài tay thiết kế phồng nhẹ nhàng vừa giúp các nàng tay không quá thon gọn che đi khuyết điểm, vừa nhẹ nhàng bay bổng phù hợp với không khí mùa thu đông. Phần cổ cao thiết kế kèm dây buộc nơ tạo kiểu cho thiết kế áo thêm yêu kiều mang phong cách tiểu thư. Điểm nhấn nằm ở họa tiết in hoa bên ngực phải mang đến vẻ đẹp nhẹ nhàng, nữ tính và giảm bớt sự đơn điệu cho set đồ. Chân váy dài qua đầu gối thiết kế xếp nếp tạo độ xòe nhẹ nhàng thanh lịch. Chi tiết đai rời nổi bật trên nền vải vàng nâu tạo điểm nhấn nhá giúp tôn lên vòng eo mảnh khảnh của phái đẹp.\r\n\r\nChất liệu lụa cao cấp, bề mặt vải mềm mại, bay bổng có nguồn gốc từ các sợi tơ tằm mang đến nét đẹp sang trọng, ấm áp trong những ngày tiết trời se lạnh.\r\n\r\nThiết kế đầm với độ dài không chỉ giúp nàng \"giấu nhẹm\" các khuyết điểm mà còn giúp tôn dáng mang đến vẻ đẹp thanh lịch, các nàng có thể diện đi làm, đi chơi, hay tham gia những sự kiện quan trọng cũng đều phù hợp.', 'Ladies', 'Xuông', 'Dài thường', 'Trơn', 'Lụa'),
(5, 'Áo sơ mi cổ sen', '17M7757', 990000, 'Đen', 'den.png', 'sp5_1.jpg', 'sp5_2.jpg', 'sp5_3.jpg', 'sp5_4.jpg', '- Áo sơ mi cổ sen, cổ may tạo kiểu\r\n\r\n- Tay áo bo phồng có khuy cài\r\n\r\n- Cài bằng hàng khuy ẩn\r\n\r\n- Chất liệu tuysi đứng phom, ít nhăn, xuyên thấu nhẹ', 'Ladies', 'Xuông', 'Dài thường', 'Trơn', 'Tuysi'),
(6, 'Áo lụa phối bèo', '17M7972', 763000, 'Trắng', 'trang.png', 'sp6_1.jpg', 'sp6_2.jpg', 'sp6_3.jpg', 'sp6_4.jpg', 'Áo sơ mi cổ cách điệu với điểm nhấn may bèo lệch một bên kết hợp cùng chi tiết dây thắt nơ đính kèm phụ kiện kim loại sang trong mang đến nét đẹp thanh lịch, kiêu kỳ cho các quý cô. Thiết kế áo được hoàn thiện tỉ mỉ từng chi tiết nhỏ đặc biệt phần khuy cài ống tay áo bằng kim loại nổi bật, tinh tế còn tôn lên khí chất cho người sử dụng.\r\n\r\nChất liệu áo mềm rủ thanh thoát, dày dặn kín đáo càng tôn lên sự cao cấp của thiết kế. Với mẫu áo lụa cổ cách điệu này bạn có thể dễ dàng kết hợp cùng chân váy hoặc bất kỳ mẫu quần nào trong tủ đồ của bạn là đã có ngay set đồ hoàn hảo, hút mắt phù hợp diện đi làm, đi chơi.', 'Ladies', 'Xuông', 'Dài thường', 'Trơn', 'Lụa'),
(7, 'Áo sơ mi lụa phối nút', '17M8025', 1190000, 'Xanh Lime', 'xanhlime.png', 'sp7_1.jpg', 'sp7_2.jpg', 'sp7_3.jpg', 'sp7_4.jpg', '- Áo sơ mi cổ chữ V, độ dài ngang hông\r\n\r\n- Tay dài bo chun co giãn ở gấu. Có đường xếp ly 2 bên. Có hàng khuy móc cài dải từ viền cổ xuống.\r\n\r\n- Chất liệu lụa mềm mịn, dày dặn kín đáo\r\n\r\n- Mix cùng các kiểu chân váy và dáng quần khác nhau. Phù hợp mặc đi chơi, đi làm hay đi học', 'Ladies', 'Xuông', 'Dài thường', 'Trơn', 'Lụa'),
(8, 'Áo sơ mi in họa tiết hoa', '17M7958', 875000, 'Hồng Phấn', 'hongphan.png', 'sp8_1.jpg', 'sp8_2.jpg', 'sp8_3.jpg', '', 'Áo sơ mi dài tay thiết kế cổ đức, dáng suông với chất liệu vải thô dễ dàng phối đồ theo nhiều cách khác nhau phù hợp với sự thay đổi của thời tiết. Chi tiết thêu hoa to nổi bật tạo điểm nhấn bên ngực phải giúp thiết kế áo thêm ấn tượng, thu hút hơn.\r\n\r\nNàng có thể kết hợp áo sơ mi thêu hoa cùng chân váy thanh lịch hoặc quần jean năng động diện đi làm hay đi chơi đều phù hợp.', 'Ladies', 'Xuông', 'Dài thường', 'Trơn', 'Thô'),
(9, 'Áo thun đính hoa', '58M8023', 595000, 'Hồng Phấn', 'hongphan.png', 'sp9_1.jpg', 'sp9_2.jpg', 'sp9_3.jpg', 'sp9_4.jpg', 'Áo thun cổ tròn, tay dài. Bo gấu ở cổ và tay áo. In hình họa tiết và đính hoa hạt tạo điểm nhấn. Chất thun có độ dày vừa phải, mềm nhẹ, giữ ấm hiệu quả.\r\n\r\nDễ dàng mix đồ với quần dài, zuýp bò...để có ngay set đồ ưng ý đi chơi, hẹn hò, đi làm mà vẫn cá tính.', 'Ladies', 'Bo gấu', 'Dài thường', 'Trơn', 'Thun'),
(10, 'Áo thun hoa voan xuyên thấu', '58M8021', 553000, 'Kem', 'kem.png', 'sp10_1.jpg', 'sp10_2.jpg', 'sp10_3.jpg', 'sp10_4.jpg', 'Áo thun cổ tròn, tay dài. Bo gấu ở cổ và tay áo. Áo thêu họa tiết hoa từ chất liệu vải voan xuyên thấu, tạo điểm nhấn cho chiếc áo. Chất thun có độ dày vừa phải, mềm nhẹ, giữ ấm hiệu quả.\r\n\r\nDễ dàng mix đồ với quần dài, zuýp bò...để có ngay set đồ ưng ý đi chơi, hẹn hò, đi làm mà vẫn cá tính.', 'Ladies', 'Bo gấu', 'Dài thường', 'Trơn', 'Thun'),
(11, 'Áo thun tay nhúm đính khuy', '58M7936', 690000, 'Xanh Lam Đậm', 'xanhlamdam.png', 'sp11_1.jpg', 'sp11_2.jpg', 'sp11_3.jpg', 'sp11_4.jpg', 'Áo thun cổ vuông, tay ngắn may nhúm phồng tạo kiểu, đính thêm hàng khuy kim loại tạo điểm nhấn. Dáng áo ôm nhẹ tôn dáng nàng.\r\n\r\nChất liệu vải thun mềm mại, không nhăn, có độ co giãn nhẹ phù hợp với tiết trời mùa thu.\r\n\r\nDáng cách điệu cùng chất liệu thun mềm mại. Không yêu cầu phải cầu kỳ thêm thắt quá nhiều chi tiết hay họa tiết cầu kỳ vẫn khiến nàng xinh đẹp rạng ngời và ghi điểm trong mắt mọi người.', 'Ladies', 'Ôm', 'Dài thường', 'Trơn', 'Thun'),
(12, 'Áo thun đính hạt', '58M8129', 595000, 'Đen', 'den.png', 'sp12_1.jpg', 'sp12_2.jpg', 'sp12_3.jpg', 'sp12_4.jpg', 'Áo thun cổ tròn, tay dài. Bo gấu ở cổ và tay áo. In hình họa tiết và đính hạt cườm tạo điểm nhấn. Chất thun có độ dày vừa phải, mềm nhẹ, giữ ấm hiệu quả.\r\n\r\nDễ dàng mix đồ với quần dài, zuýp bò...để có ngay set đồ ưng ý đi chơi, hẹn hò, đi làm mà vẫn cá tính.', 'Ladies', 'Bo gấu', 'Dài thường', 'Trơn', 'Thun'),
(13, 'Set áo croptop hoodie', '59M7948', 1600000, 'Đen', 'den.png', 'sp13_1.jpg', 'sp13_2.jpg', 'sp13_3.jpg', 'sp13_4.jpg', '- Áo hoddie dáng croptop, mũ liền có dây rút, tay và gấu áo bo tròn\r\n\r\n- Trước ngực in chữ Stay Awesome\r\n\r\n- Quần jogger eo chun co giãn có dây rút, 2 túi chéo 2 bên, gấu quần chun bó\r\n\r\n- Chất liệu vải thun dày dặn, giữ nhiệt tốt', 'Ladies', 'Bo gấu', 'Croptop', 'Trơn', 'Thun'),
(14, 'Áo khoác gió croptop', '70B8655', 1323000, 'Đen', 'den.png', 'sp14_1.jpg', 'sp14_2.jpg', 'sp14_3.jpg', 'sp14_4.jpg', 'Thiết kế áo lấy cảm hứng từ chiếc áo Bomber huyền thoại, được cách điệu nữ tính hơn nhờ kiểu dáng áo croptop, tay và viền áo bo chun bản to, cài bằng khóa kéo kim loại cao cấp. Chất liệu áo Polyester giúp giữ nhiệt, tránh mưa, cản gió hiệu quả, bên trong là lớp lót bông mềm mịn, ấm áp.\r\n\r\nChiếc áo đã đảm bảo tiêu chí trẻ trung, tôn dáng người mặc và giữ ấm tốt cho cơ thể. Đây là chiếc áo must-have dành cho tủ đồ của các cô gái cá tính.', 'You', 'Eo', 'Ngang hông', 'Trơn', 'Polyester'),
(15, 'Áo blazer croptop', '67M8069', 1690000, 'Hồng san hô', 'hongsanho.png', 'sp15_1.jpg', 'sp15_2.jpg', 'sp15_3.jpg', 'sp15_4.jpg', 'Áo Blazer croptop thuộc BST Timeless được trình diễn tại show thời trang Fall Winter 2022 với cảm hứng là phong cách Academia cộng hưởng cùng những ý tưởng sáng tạo và đậm chất xu hướng của thời đại mang đến diện mạo hoàn toàn mới mẻ, vượt xa khái niệm về phong cách của sắc đẹp đơn thuần.\r\n\r\nÁo blazer dáng ngắn kiểu croptop tay dài, phần cổ áo 2 ve bản to kết hợp cùng phần vai được độn nhẹ để tạo sự đứng form cho tổng thể item. Khuy cài cùng màu với màu áo đồng điệu. Chất liệu vải tuysi mềm mại vừa đủ để giữ được form dáng áo tốt hơn vừa giúp bạn thăng hạng phong cách thời trang của mình. \r\n\r\nĐặc biệt, khi kết hợp cùng quần dài phối đai 22M8069 và giày cao gót sẽ càng làm tôn vóc dáng của nàng. Đây cũng là phong cách được cô nàng công sở yêu thích trong mùa thu - đông.', 'Ladies', 'Xuông', 'Trên eo', 'Trơn', 'Tuysi'),
(16, 'Áo croptop họa tiết nổi', '16M7631', 623000, 'Vàng Đậm', 'vangdam.png', 'sp16_1.jpg', 'sp16_2.jpg', 'sp16_3.jpg', 'sp16_4.jpg', 'Áo cổ tròn. Dáng croptop ngang eo - chần chun bản to co giãn. Cổ xẻ sau có khuy cài. Áo phối họa tiết nổi tạo điểm nhấn.\r\n\r\nChất liệu vải thô thoáng mát, màu sắc trẻ trung. Mix cùng quần jean, zuýp các loại hoặc quần short cũng đủ nàng biến hóa nhiều phong cách mong muốn.', 'Ladies', 'Bo gấu', 'Croptop', 'Trơn', 'Thô'),
(17, 'Áo khoác thun cách điệu', '77T0144', 699300, 'Ghi Khói', 'ghikhoi.png', 'sp17_1.jpg', 'sp17_2.jpg', 'sp17_3.jpg', 'sp17_4.jpg', 'Thiết kế áo độc đáo tạo kiểu nhiều lớp. Áo khoác thun cổ mũ có dây kéo rút. Dây khóa kéo bằng kim loại phía trước. Áo dáng ôm, độ dài ngang hông tôn dáng người mặc. \r\n\r\nDáng áo để phối hợp với quần ống rộng, ống suông, quần jean các loại. Mặc khoác ra ngoài, mua thu sẽ giúp bạn trở nên năng động và trẻ trung hơn bao giờ hết. Thiết kế must-have cho các cô nàng trong tủ đồ nhà mình!', 'Ladies', 'Xuông', 'Ngang hông', 'Trơn', 'Thun'),
(18, 'Suede Biker Jacket', '70B9065', 1743000, 'Xanh', 'xanh.png', 'sp18_1.jpg', 'sp18_2.jpg', 'sp18_3.jpg', 'sp18_4.jpg', 'Thiết kế áo khoác lấy cảm hứng từ chiếc áo Biker thời thượng, phối cùng lớp lót lông mềm mịn bên trong vừa tạo điểm nhấn cho trang phục, vừa có tác dụng giữ ấm tốt.\r\n\r\nChất liệu da lộn cao cấp mềm mại, đều màu, mịn như nhung, đem đến cho người mặc một phong cách trẻ trung, cá tính và mang lại cảm giác ấm áp vào mùa đông. Đừng để cái lạnh làm ảnh hưởng đến các cuộc vui của bạn, hãy diện ngay áo khoác cùng Skinny Jeans là nàng đã có một outfit ấm áp, trẻ trung và khỏe khoắn cho các chuyến chơi xa.', 'You', 'Xuông', 'Ngang hông', 'Trơn', 'Da lộn'),
(19, 'Áo khoác bomber ivy you', '70B9047', 1533000, 'Màu Be', 'maube.png', 'sp19_1.jpg', 'sp19_2.jpg', 'sp19_3.jpg', 'sp19_4.jpg', 'Áo khoác dáng bomber, tay dài bo gấu. Có 2 túi chéo có khóa kéo. Bo gân co giãn ở cổ và gấu tay áo. Cài bằng khóa kéo phía trước. Bên phải thêu logo IVY you. \r\n\r\nChất vải thun dày dặn có lớp lót bên trong. Mix cùng quần jogger, quần jeans để có set đồ phong cách và năng động nhất.', 'You', 'Xuông', 'Ngang hông', 'Trơn', 'Thun'),
(20, 'Set áo tweed họa tiết argyle', '77M7949', 1540000, 'Họa tiết Xanh Atlantic', 'xanhatlantic.png', 'sp20_1.jpg', 'sp20_2.jpg', 'sp20_3.jpg', NULL, 'Set áo khoác và áo 3 lỗ croptop thuộc BST Timeless và được trình diễn tại show diễn thời trang Fall Winter 2022 với cảm hứng là phong cách Academia kết hợp cùng những ý tưởng sáng tạo và đậm chất xu hướng thời đại mang đến diện mạo hoàn toàn mới mẻ, vượt ra khỏi khái niệm về sắc đẹp đơn thuần, giúp nàng mãi xinh đẹp và yêu kiều.\r\n\r\nÁo khoác thun phối tweed dài tay, cổ áo tròn, dáng suông có độ dài ngang hông. Khuy cài áo phía trước. Chất liệu vải thun mềm mại, bề mặt ngoài có phối vải tweed mỏng đủ để tạo điểm nhấn cho item này. Áo 3 lỗ dáng croptop, kiểu dáng ôm, cổ vuông, cài bằng hàng khuy phía trước. Thiết kế áo trẻ trung, thời thượng, phù hợp diện hàng ngày. Set áo dễ dàng tách lẻ và phối cùng các items khác nhau. Nàng theo phong cách sexy cá tính hay kín đáo dịu dàng đều diện đẹp!\r\n\r\nSet áo mix cùng chân váy 30M7949 đồng bộ sẽ là outffit hoàn hảo cho nàng trong mùa thu này.', 'Ladies', 'Xuông', 'Ngang hông', 'Kẻ', 'Thun'),
(21, 'Áo len viền màu họa tiết thêu', '77M7792', 1090000, 'Xanh Lục', 'xanhluc.png', 'sp21_1.jpg', 'sp21_2.jpg', 'sp21_3.jpg', 'sp21_4.jpg', 'Áo len cổ tròn, tay ngắn. Bo len gân co giãn ở cổ tay và gấu áo. Vải thêu họa tiết bắt mắt. Cài bằng hàng khuy phía trước, điểm nhấn là 2 túi vuông nhỏ phía trước.\r\n\r\nLuôn là \"cực phẩm\" mỗi khi gió về, sản phẩm chất liệu len mềm mại, sang trọng, có độ đàn hồi, chắc chắn và thoải mái khi mặc. Màu sắc kẻ trẻ trung phom dáng xinh đẹp, thích hợp đến văn phòng hay dạo phố.', 'Ladies', 'Eo', 'Ngang mông', 'Họa tiết khác', 'Len'),
(22, 'Áo len cài khuy', '77M7800', 1090000, 'Tím Lavender', 'timlavender.png', 'sp22_1.jpg', 'sp22_2.jpg', 'sp22_3.jpg', 'sp22_4.jpg', 'Áo len cổ tròn, tay ngắn, độ dài ngang hông. Điểm nhấn là hàng khuy cài kim loại nhỏ mang lại vẻ thanh lịch cho người mặc.\r\n\r\nChất liệu vải len 1 lớp có gân sọc dọc mềm mịn, không giá giày phù hợp với thời tiết giao mùa. Màu sắc pastel nữ tính sẽ giúp nàng tăng mood cho một ngày dài đi làm hay đi học và thật năng động tươi vui trong các chuyến đi chơi. Kiểu dáng dễ mặc, phù hợp với mọi form người. Nàng hãy mix cùng jeans hoặc chân váy xếp ly ngắn để trông xinh tươi hơn nhé!', 'Ladies', 'Eo', 'Ngang mông', 'Họa tiết khác', 'Len'),
(23, 'Áo len gân cổ kiểu', '58M7793', 735000, 'Đen', 'den.png', 'sp23_1.jpg', 'sp23_2.jpg', 'sp23_3.jpg', 'sp23_4.jpg', 'Mỗi độ thu về thì áo len cách điệu luôn là items được các em săn đón. Thiết kế áo cổ khoét sâu, kiểu dáng ôm body cùng độ dài vừa phải sẽ giúp nàng khéo léo khoe lên nét quyến rũ của mình.\r\n\r\nChất liệu vải len gân co giãn, mềm nhẹ và giữ ấm hiệu quả. Để chất liệu vải được bền bỉ hơn, nàng hãy hạn chế giặt vắt bằng máy.\r\n\r\nThiết kế này gần đây đã gây sốt vì vừa dễ phối đồ, có nhiều màu lựa chọn và rất thời trang. Nàng có thể mix cùng quần jeans, zuýp, quần tây hay quần ống rộng đều rất phù hợp nhé!', 'Ladies', 'Ôm', 'Dài thường', 'Trơn', 'Len'),
(24, 'Áo len tay hến', '56B8908', 890000, 'Trắng', 'trang.png', 'sp24_1.jpg', 'sp24_2.jpg', 'sp24_3.jpg', 'sp24_4.jpg', 'Thiết kế áo cổ polo in viền tạo điểm nhấn, tay hến, eo may bo ôm sát, co giãn.\r\n\r\nChiếc áo kiểu dáng thời trang, thích hợp mix với nhiều trang phục khác nhau: Zuýp, quần Jeans,... Với chất len mềm, mịn chiếc áo sẽ trở nên item đắt giá trong mùa Thu Đông này.', 'You', 'Bo gấu', 'Dài thường', 'Trơn', 'Len'),
(25, 'Quinn Suit - Set áo vest và quần suông dập ly', '67M7999', 2576000, 'Màu Be', 'maube.png', 'sp25_1.jpg', 'sp25_2.jpg', 'sp25_3.jpg', 'sp25_4.jpg', 'Sản phẩm thuộc BST Timeless và được trình diễn trong show thời trang Fall Winter 2022. Bộ sưu tập lấy cảm hứng từ phong cách thời trang Academia, cộng hưởng với những ý tưởng sáng tạo đầy xu hướng, mang đến diện mạo học thức vượt ra khỏi khái niệm sắc đẹp đơn thuần.\r\n\r\nSet áo vest là thiết kế hoàn hảo dành cho các cô nàng theo đuổi phong cách Office Chic. Áo vest là sự kế thừa vẻ đẹp của phom dáng áo vest cổ điển: cổ 2 ve, vai độn, chiết eo. Quần dài dáng suông, dập ly 2 bên, cạp cao tôn dáng người mặc.\r\n\r\nChất liệu được sử dụng là chất vải tuysi cao cấp. Đây là sự lựa chọn hàng đầu của các nhà mốt dành cho các thiết kế đòi hỏi sự thanh lịch, sang trọng mà vẫn đảm bảo tính thoải mái. Vải tuysi mềm nhẹ, thoáng mát, ít nhăn và giữ form dáng tốt. Xu hướng nữ quyền được IVY moda kết hợp giữa vẻ đẹp thanh lịch, sang trọng nhưng vẫn đề cao sự thoải mái, dễ chịu từ phom dáng đến chất liệu mềm mại.\r\n\r\nKhông chỉ đẹp từ thiết kế đến chất liệu, set đồ còn mang tính ứng dụng cao, phù hợp cho các cô nàng diện nơi công sở và đi dự sự kiện.', 'Ladies', 'Xuông', 'Ngang hông', 'Trơn', 'Tuysi'),
(26, 'Adela tweed set - set áo vest và quần sooc', '67M7947', 3440000, 'Họa tiết kẻ trắng', 'ketrang.png', 'sp26_1.jpg', 'sp26_2.jpg', 'sp26_3.jpg', 'sp26_4.jpg', 'Adela Set thuộc BST Timeless và được trình diễn trong show thời trang Fall Winter 2022. Bộ sưu tập lấy cảm hứng từ phong cách thời trang Academia, cộng hưởng với những ý tưởng sáng tạo đầy xu hướng, mang đến diện mạo học thức vượt ra khỏi khái niệm sắc đẹp đơn thuần.\r\n\r\nNằm trong BST lần này, áo Tweed Blazer là sự kế thừa vẻ tinh tế trong thiết kế áo vest cổ điển: cổ 2 ve, 2 hàng khuy cài, vai độn, chiết eo; biến tấu cùng đường may và màu sắc, chất liệu, phụ kiện được tuyển chọn kĩ càng đã tạo nên một thiết kế áo Blazer nữ tính, hiện đại. Nhằm mang lại diện mạo trẻ trung hơn và giảm bớt sự \"nghiêm túc\" cho set đồ, áo Blazer được mix cùng quần sooc ngắn với thiết kế may vạt lệch giả váy, đính kèm khuy kim loại tạo sự đồng bộ và điểm nhấm cho cả bộ trang phục. \r\n\r\nĐặc biệt, việc sử dụng chất liệu cao cấp nhất thị trường như Tweed đã đem lại sự sang trọng cho cả set đồ. Chất liệu Tweed được sử dụng là loại vải dày dặn được dệt từ những sợi len có cấu trúc vặn xoắn. Bằng kỹ thuật dệt may độc đáo, các sợi len được dệt đan xen màu sắc tạo nên bản phối màu vô cùng khéo léo và tinh tế. Bề mặt vải Tweed có độ gồ ghề nhẹ đặc trưng, bên trong có lớp lót lụa mềm mại. Tính cao cấp của chất liệu Tweed đem lại là sự mềm nhẹ, khả năng chống nước, chống lạnh tốt. Đặc biệt hơn là khả năng “tự hồi phục” của các sợi vải khi bị những vật sắc nhọn bên ngoài tác động vào, chỉ cần dùng tay vuốt nhẹ nhàng thì những sợi len sẽ bện lại và xếp thành vị trí để che lấp hoàn toàn lỗ thủng. Bởi vậy đây chính là chất liệu \"Timeless\", là sự lựa chọn hàng đầu của các nhà mốt trên toàn thế giới.\r\n\r\nKhông chỉ đẹp từ thiết kế đến chất liệu, set đồ còn mang tính ứng dụng cao, phù hợp cho các cô nàng diện nơi công sở và đi dự sự kiện. Áo Blazer và quần sooc dễ dàng tách lẻ set giúp nàng thỏa sức mix&match với nhiều items khách nhau. Vào những ngày \"không biết mặc gì\", nàng hãy phối blazer cùng áo dáng ôm sát (màu sắc trắng hoặc đen) đi cùng đôi boots cao cổ hoặc giày loafer, kèm túi xách da là hoàn thiện outfit vừa chỉn chu mà không mất đi vẻ cá tính. Vào những ngày đại hàn, đừng quên phối set đồ cùng áo coat dạ hoặc áo phao dáng dài là nàng sẽ có một diện mạo đủ tiêu chí thời thượng giữ ấm hiệu quả.', 'Ladies', 'Eo', 'Ngang mông', 'Kẻ', 'Tweed'),
(27, 'Áo vest', '67M4975', 1145000, 'Trắng', 'trang.png', 'sp27_1.jpg', 'sp27_2.jpg', 'sp27_3.jpg', 'sp27_4.jpg', '- Áo khoác cổ 2 ve, dài tay, form suông cực kỳ dễ mặc và phù hợp với nhiều vóc dáng.\r\n- Chi tiết hai túi mặt trước giúp chiếc áo khoác trở nên thu hút, cá tính.\r\n- Chất liệu tuysi cao cấp, mềm mại, mịn màng, không nhăn, không bai dão và có khả năng giữ form tốt.\r\n- Mix cùng áo sơ mi, áo thun...để có set đồ ưng ý diện đi chơi, đi làm, hẹn hò...', 'Ladies', 'Xuông', 'Ngang mông', 'Trơn', 'Tuysi'),
(28, 'Áo vest phối tà dập ly', '67M5076', 572500, 'Trắng', 'trang.png', 'sp28_1.jpg', 'sp28_2.jpg', 'sp28_3.jpg', 'sp28_4.jpg', 'Thiết kế cổ 2 ve, điểm nhấn cách biệt với loại vest thông thường bởi đường tua chi tiết và tỉ mỉ đem lại sự trẻ trung và cá tính không lẫn\r\n\r\nChất vải tuysi cao cấp thấm hút tốt, không nhăn\r\n\r\nDễ dàng kết hợp cùng áo len và zuýp, quần dài phù hợp với đi chơi, đi làm...', 'Ladies', 'Eo', 'Ngang mông', 'Trơn', 'Tuysi'),
(29, 'Quần jeans nữ', '25M7791', 693000, 'Xanh Lơ', 'xanhlo.png', 'sp29_1.jpg', 'sp29-2.jpg', 'sp29_3.jpg', 'sp29_4.jpg', '- Quần jean ống đứng, độ dài trên mắt cá chân. Có 2 túi trước và 2 túi sau mông.\r\n\r\n- Cạp cao. Đai quần có khuy cài và đỉa quần.\r\n\r\n- Mix cùng áo phông, áo kiểu hoặc áo sơ mi basic. Phù hợp mặc hằng ngày.', 'Ladies', 'Ống đứng', 'Ngang mắt cá chân', 'Trơn', 'Denim'),
(30, 'Quần jeans ống suông', '25M7785', 763000, 'Xanh Lơ', 'xanhlo.png', 'sp30_1.jpg', 'sp30_2.jpg', 'sp30_3.jpg', 'sp30_4.jpg', '- Quần jean ống đứng, dáng suông, độ dài đến mắt cá chân. Có 2 túi trước và 2 túi sau mông.\r\n\r\n- Cạp cao. Đai quần có khuy cài và đỉa quần.\r\n\r\n- Mix cùng áo phông, áo kiểu hoặc áo sơ mi basic. Phù hợp mặc hằng ngày.', 'Ladies', 'Ống suông', 'Qua mắt cá chân', 'Trơn', 'Denim'),
(31, 'Quần jeans rách gối', '25M7788', 693000, 'Xanh Lơ', 'xanhlo.png', 'sp31_1.jpg', 'sp31_2.jpg', 'sp31_3.jpg', 'sp31_4.jpg', '- Quần jean ống đứng, độ dài trên mắt cá chân. Tạo kiểu rách ngang trên đầu gối\r\n\r\n- Cạp cao. Đai quần có khuy cài và đỉa quần.\r\n\r\n- Mix cùng áo phông, áo kiểu hoặc áo sơ mi basic. Phù hợp mặc hằng ngày.', 'Ladies', 'Ống đứng', 'Ngang mắt cá chân', 'Trơn', 'Denim'),
(32, 'Quần bò cắt gấu', '25B8903', 495000, 'Xanh Lơ', 'xanhlo.png', 'sp32_1.jpg', 'sp32_2.jpg', 'sp32_3.jpg', 'sp32_4.jpg', 'Quần bò với thiết kế basic, kiểu ống đứng, cạp cao, độ dài lửng. Túi trước thiết kế cách điệu. Đai có đỉa. Gấu kiểu tua rua không có nếp gấp đem lại sự trẻ trung, mới lạ. Màu xanh lơ nhạt trendy dễ dàng phối kết hợp với nhiều items trong tủ đồ,sản phẩm có tính ứng dụng cao. Cài bằng dây kéo và khóa kéo kim loại phía trước.\r\n\r\nKết hợp cùng áo thun, áo sơ mi đều phù hợp đi chơi, đi làm....mang đến sự năng động, cá tính', 'You', 'Ống đứng', 'Ngang mắt cá chân', 'Trơn', 'Denim'),
(33, 'Quần sooc đai cạp đính phụ kiện', '20M7995', 850000, 'Đen', 'den.png', 'sp33_1.jpg', 'sp33_2.jpg', 'sp33_3.jpg', 'sp33_4.jpg', 'Sản phẩm thuộc BST Timeless và được trình diễn trong show thời trang Fall Winter 2022. Bộ sưu tập lấy cảm hứng từ phong cách thời trang Academia, cộng hưởng với những ý tưởng sáng tạo đầy xu hướng, mang đến diện mạo học thức vượt ra khỏi khái niệm sắc đẹp đơn thuần.\r\n\r\nMột thiết kế quần sooc basic mà bất kì cô nàng công sở cũng nên sở hữu. Những chiếc âu dài trở nên \"dừ\" và nhàm chán thì nàng hãy \"đổi gió\" bằng chiếc quần sooc dáng suông thoải mái, cạp cao tôn dáng giúp tạo kiểu sơ vin cực sang khi cạp có phối phụ kiện kim loại. Độ dài đến ngang đùi phù hợp nơi công sở. Quần có 2 túi chéo 2 bên tiện lợi và cài bằng khóa kéo phía sau.\r\n\r\nChất liệu tuysi là loại vải cao cấp, là sự lựa chọn hàng đầu của các nhà mốt dành cho các thiết kế đòi hỏi sự thanh lịch, sang trọng mà vẫn đảm bảo sự thoải mái. Quần sooc từ chất liệu vải tuysi mềm nhẹ, thoáng mát, ít nhăn và giữ form dáng tốt. \r\n\r\nThiết kế áo này nàng có thể diện khi đi làm, đi chơi. Chất liệu và kiểu dáng quần giúp nàng thỏa sức mix&match cùng nhiều kiểu áo khác nhau, phù hợp với mọi phong cách mà nàng theo đuổi.', 'Ladies', 'Ống suông', 'Ngang đùi', 'Trơn', 'Tuysi'),
(34, 'Quần sooc organza', '20B9411', 890000, 'Vàng Nâu', 'vangnau.png', 'sp34_1.jpg', 'sp34_2.jpg', 'sp34_3.jpg', 'sp34_4.jpg', '- Quần sooc cạp cao, dáng suông, ống đúng\r\n\r\n- Chất liệu Organza cao cấp, đứng phom, dày dặn, có độ bóng nhẹ\r\n\r\n- 2 túi ẩn 2 bên \r\n\r\n- Khóa kéo phía sau\r\n\r\n- Hãy mix quần cùng áo sơ mi, áo kiểu có chất liệu tương đồng, phù hợp diện khi đi chơi, đi tiệc.', 'You', 'Ống suông', 'Ngang đùi', 'Trơn', 'Organza'),
(35, 'Quần baggy lửng', '22M7982', 833000, 'Màu nâu', 'nau.png', 'sp35_1.jpg', 'sp35_2.jpg', 'sp35_3.jpg', 'sp35_4.jpg', 'Quần baggy lửng độ dài trên mắt cá chân, thiết kế cạp cao bản to cách điệu tôn dáng với thiết kế 2 túi chéo 2 bên tiện lợi cho các nàng có thể đựng đồ khi ra ngoài. Thiết kế quần phối đai khuy cùng phần ống quần nhấn đai khác biệt.\r\n\r\nNàng có thể kết hợp quần baggy lửng với nhiều kiểu áo khác nhau để diện hàng ngày đi làm, đi chơi đều phù hợp.', 'Ladies', 'Baggy', 'Qua mắt cá chân', 'Trơn', 'Tuysi'),
(36, 'Quần lửng ống đứng', '22M7727', 1190000, 'Đen', 'den.png', 'sp36_1.jpg', 'sp36_2.jpg', 'sp36_3.jpg', 'sp36_4.jpg', 'Quần lửng ống đứng cơ bản. Ống có độ ôm nhẹ, chiều dài trên mắt cá chân. Phía trước có 2 túi chéo. Cài bằng khóa kéo bên hông.\r\n\r\nThiết kế quần phù hợp để nàng phối cùng nhiều item khác nhau, từ thanh lịch công sở với sơ mi cho đến năng động trẻ trung cùng áo thun. Chất liệu Tuysi thoáng mát và thấm hút mồ hôi tốt. Hơn nữa còn giữ form quần suốt cả ngày dài.', 'Ladies', 'Ống đứng', 'Ngang mắt cá chân', 'Trơn', 'Tuysi'),
(37, 'Quần ống loe xẻ trước', '22M7942', 1190000, 'Xanh Lam Đậm', 'xanhlamdam.png', 'sp37_1.jpg', 'sp37_2.jpg', 'sp37_3.jpg', 'sp37_4.jpg', '- Quần dài dáng ống loe, cạp cao\r\n\r\n- Ly là thẳng phía trước, quần xẻ trước tạo kiểu\r\n\r\n- 2 túi chéo 2 bên\r\n\r\n- Chất liệu tuysi mềm nhẹ, đứng form\r\n\r\n- Mix cùng nhiều kiểu áo sơ mi. Phù hợp đi làm, đi học.', 'Ladies', 'Ống loe', 'Ngang mắt cá chân', 'Trơn', 'Tuysi'),
(38, 'Quần dài phối đai', '22M8069', 1490000, 'Tím Lavender', 'timlavender.png', 'sp8_1.jpg', 'sp38_2.jpg', 'sp38_3.jpg', 'sp38_4.jpg', '- Quần dài suông, ống rộng\r\n\r\n- Cạp cao, phối đai vải cùng màu\r\n\r\n- Phía trước có 2 túi chéo, sau có túi giả\r\n\r\n- Chất liệu tuysi mềm mại, giữ form tốt\r\n\r\n- Mix cùng áo blazer MS 67M8069. Phù hợp đi làm, đi sự kiện.', 'Ladies', 'Ống suông', 'Ngang mắt cá chân', 'Trơn', 'Tuysi'),
(39, 'Quần dài ống rộng', '22M7696', 763000, 'Hồng Phấn', 'hongphan.png', 'sp39_1.jpg', 'sp39_2.jpg', 'sp39_3.jpg', 'sp39_4.jpg', 'Quần dài ống rộng, độ dài qua mắt cá chân. Quần cạp cao, 2 túi chéo 2 bên.\r\n\r\nDáng quần này tạo cảm giác chân thon dài, thẳng và che được hầu hết các khuyết điểm. Chất liệuTuysi lên form chuẩn, mềm mại tạo cảm giác thoải mái cho người mặc.', 'Ladies', 'Ống suông', 'Qua mắt cá chân', 'Trơn', 'Tuysi'),
(40, 'Quần dài eo tạo kiểu', '22B9457', 805000, 'Cam Đỏ', 'camdo.png', 'sp40_1.jpg', 'sp40_2.jpg', 'sp40_3.jpg', 'sp40_4.jpg', '- Quần ống loe, chiều dài qua mắt cá chân. Ly là thẳng phía trước và sau quần\r\n\r\n- Cạp cao, khóa kéo ẩn phía trước, khuy cài lệch 1 bên.\r\n\r\n- Chất liệu tuysi mềm mịn, giữ form tốt\r\n\r\n- Mix cùng áo sơ mi, áo kiểu. Phù hợp diện nơi công sở.', 'You', 'Ống loe', 'Qua mắt cá chân', 'Trơn', 'Tuysi'),
(41, 'Áo sơ mi trắng bamboo', '16E2975', 395000, 'Trắng', 'trang.png', 'sp41_1.jpg', 'sp41_2.jpg', 'sp41_3.jpg', 'sp41_4.jpg', 'Áo sơ mi trắng regular fit, cổ đức. Tay áo ngắn. Có 1 túi vuông phía trước. Cài bằng hàng khuy phía trước. Tông màu trắng dễ phối nhiều trang phục như quần jean, short, quần tây... Áo có thể sơ vin hoặc thả suông nhờ tà lượn thời trang.\r\n\r\nĐược làm từ chất liệu vải Bamboo - là một loại vải tự nhiên được tổng hợp từ bột gỗ của cây tre với một số chất phụ gia an toàn khác có các các ưu điểm như:\r\n\r\n+ Khả năng hút ẩm vượt trội hơn vải cotton đến 60% và độ bền màu cực cao,\r\n\r\n+ Thân thiện với môi trường, được sản xuất khép kín và không sử dụng hóa chất\r\n\r\n+ Kháng khuẩn và khử mùi: nhờ hợp chất sinh học \"bamboo kun\" kết hợp chặt chẽ với các phân tử Cellulose.\r\n\r\n+ Khả năng chống tia UV nhờ các sợi tre từ chất liệu này.', 'Men', 'Regular fit', 'Dài thường', 'Trơn', 'Thô'),
(42, 'Áo sơ mi slim vải bamboo fit', '17E2977', 381500, 'Kẻ Trắng', 'ketrang.png', 'sp42_1.jpg', 'sp42_2.jpg', 'sp42_3.jpg', 'sp42_4.jpg', 'Áo sơ mi cổ đức. Tay dài bo gấu và cài khuy. Cài bằng hàng khuy phía trước. Vải kẻ sọc đều.\r\n\r\nĐược làm từ chất liệu vải Bamboo - là một loại vải tự nhiên được tổng hợp từ bột gỗ của cây tre với một số chất phụ gia an toàn khác có các các ưu điểm như:\r\n\r\n+ Khả năng hút ẩm vượt trội hơn vải cotton đến 60% và độ bền màu cực cao,\r\n\r\n+ Thân thiện với môi trường, được sản xuất khép kín và không sử dụng hóa chất\r\n\r\n+ Kháng khuẩn và khử mùi: nhờ hợp chất sinh học \"bamboo kun\" kết hợp chặt chẽ với các phân tử Cellulose.\r\n\r\n+ Khả năng chống tia UV nhờ các sợi tre từ chất liệu này.', 'Men', 'Slim fit', 'Dài thường', 'Kẻ', 'Thô'),
(43, 'Áo sơ mi tay ngắn vải bamboo', '16E2959', 495000, 'Kẻ Đỏ Ruby', 'kedoruby.png', 'sp43_1.jpg', 'sp43_2.jpg', 'sp43_3.jpg', 'sp43_4.jpg', 'Áo sơ mi kẻ cổ đức, tay ngắn. 1 túi vuông trước ngực. Cài bằng hàng khuy phía trước.\r\n\r\nĐược làm từ chất liệu vải Bamboo - là một loại vải tự nhiên được tổng hợp từ bột gỗ của cây tre với một số chất phụ gia an toàn khác có các các ưu điểm như:\r\n\r\n+ Khả năng hút ẩm vượt trội hơn vải cotton đến 60% và độ bền màu cực cao,\r\n\r\n+ Thân thiện với môi trường, được sản xuất khép kín và không sử dụng hóa chất\r\n\r\n+ Kháng khuẩn và khử mùi: nhờ hợp chất sinh học \"bamboo kun\" kết hợp chặt chẽ với các phân tử Cellulose.\r\n\r\n+ Khả năng chống tia UV nhờ các sợi tre từ chất liệu này.', 'Men', 'Slim fit', 'Dài thường', 'Kẻ', 'Thô'),
(44, 'Áo thun nam họa tiết', '57E2943', 396000, 'Ghi Sáng', 'ghisang.png', 'sp44_1.jpg', 'sp44_2.jpg', 'sp44_3.jpg', 'sp44_4.jpg', 'Áo thun họa tiết cổ tròn, tay ngắn. Viền bằng màu trơn tạo điểm nhấn. Dáng áo xuông, bên ngoài lớp in họa tiết trên nền chất thun co giãn.', 'Men', 'Khác', 'Dài thường', 'Hoa', 'Thun'),
(45, 'Áo thun cổ tròn', '57E2969', 196000, 'Trắng', 'trang.png', 'sp45_1.jpg', 'sp45_2.jpg', 'sp45_3.jpg', 'sp45_4.jpg', 'Áo thun cổ tròn dáng basic. Tay áo ngắn. Dáng áo xuông. In chữ khác màu phía trước\r\n\r\nĐược làm từ chất vải thun cotton cao cấp là cotton sợi dài (lấy từ cây bông pima), độ bền cao, có khả năng chịu được nhiều công đoạn hoàn thiện, bề mặt vải có độ mềm mại và dày dặn hơn hẳn so với vải cotton thông thường. Độ dài của sợi cotton cao cấp từ 32 - 63,5mm và chiều dài tiêu chuẩn để sản xuất là: 22,2 - 31,5mm.  Vì những ưu điểm trên nên thiết kế này với chất liệu vải không chứa hóa chất nên an toàn với sức khỏe. Vải mềm mại, có khả năng hút ẩm tốt, độ bền cao.', 'Men', 'Khác', 'Dài thường', 'Trơn', 'Thun'),
(46, 'Áo thun', '58E2234', 475000, 'Nâu Nhạt', 'naunhat.png', 'sp46_1.jpg', 'sp46_2.jpg', 'sp46_3.jpg', 'sp46_4.jpg', 'Áo thun nam, cổ tròn và dài tay. Họa tiết dây xích độc quyền ELLE khiến chàng nổi bật hơn trong đám đông. Chất vải thun dày giữ ấm tốt. Dễ dàng phối hợp với quần jeans, quần âu, giày thể thao,... để có set đồ năng động nhất', 'Men', 'Regular', 'Dài thường', 'Trơn', 'Thun'),
(47, 'Áo polo dây kéo khóa', '57E2920', 395000, 'Ghi Khói', 'ghikhoi.png', 'sp47_1.jpg', 'sp47_2.jpg', 'sp47_3.jpg', 'sp47_4.jpg', 'Được ra đời vào những năm 60, là chiếc áo được dùng trong thể thao \"hockey trên lưng ngựa\" hay còn gọi là Polo. Và sau này đến năm 1920, nhà thiết kế René Lacoste biến tấu những chiếc áo polo dài tay thành những chiếc polo ngắn tay, và những chiếc áo polo đã sớm trở thành một trong những mẫu áo \"kinh điển\" luôn hiện diện trong tủ đồ của những quý ông hiện đại – Những chiếc áo polo mang dáng vẻ lịch sự nhưng vẫn vô cùng năng động, cuốn hút.\r\n\r\nChất liệu vải pique dệt - cotton sợi dệt mặt lưới, tạo ra được độ mềm và thoáng cho những người ưa vận động hay chơi thể thao, độ thấm hút mồ hôi tốt và có khả năng co giãn 4 chiều, đem đến cảm giác vô cùng thoải mái, dễ chịu khi sử dụng.\r\n\r\nForm áo Regular Fit tay áo được bo viền cùng phần cổ áo được may bằng vải từ thân áo tạo nên thiết kế mới mẻ, trẻ trung và đầy sức sống. Vẫn là áo polo nhưng được các nhà thiết kế IVY moda biến tấu phần dây kéo khóa phía trước và ở túi áo tạo nên điểm nhấn khác biệt.', 'Men', 'Khác', 'Dài thường', 'In hình', 'Thun'),
(48, 'Áo polo kẻ ngang', '57E2940', 345000, 'Kẻ Bạc Hà', 'kebacha.png', 'sp48_1.jpg', 'sp48_2.jpg', 'sp48_3.jpg', 'sp48_4.jpg', 'Được ra đời vào những năm 60, là chiếc áo được dùng trong thể thao \"hockey trên lưng ngựa\" hay còn gọi là Polo. Và sau này đến năm 1920, nhà thiết kế René Lacoste biến tấu những chiếc áo polo dài tay thành những chiếc polo ngắn tay, và những chiếc áo polo đã sớm trở thành một trong những mẫu áo \"kinh điển\" luôn hiện diện trong tủ đồ của những quý ông hiện đại – Những chiếc áo polo mang dáng vẻ lịch sự nhưng vẫn vô cùng năng động, cuốn hút.\r\n\r\nChất liệu vải pique dệt - cotton sợi dệt mặt lưới, tạo ra được độ mềm và thoáng cho những người ưa vận động hay chơi thể thao, độ thấm hút mồ hôi tốt và có khả năng co giãn 4 chiều, đem đến cảm giác vô cùng thoải mái, dễ chịu khi sử dụng.\r\n\r\nForm áo Regular Fit, thiết kế trở nên đắt giá khi được bo chun co giãn 100% ở cổ, và viền chun ở tay áo giúp bó sát vào bắp tay tạo nên sự nam tính và khỏe khoắn cho người mặc.', 'Men', 'Khác', 'Dài thường', 'Kẻ', 'Thun'),
(49, 'Áo polo cheese', '57E2951', 345000, 'Ghi Khói', 'ghikhoi.png', 'sp49_1.jpg', 'sp49_2.jpg', 'sp49_3.jpg', 'sp49_4.jpg', 'Được ra đời vào những năm 60, là chiếc áo được dùng trong thể thao \"hockey trên lưng ngựa\" hay còn gọi là Polo. Và sau này đến năm 1920, nhà thiết kế René Lacoste biến tấu những chiếc áo polo dài tay thành những chiếc polo ngắn tay, và những chiếc áo polo đã sớm trở thành một trong những mẫu áo \"kinh điển\" luôn hiện diện trong tủ đồ của những quý ông hiện đại – Những chiếc áo polo mang dáng vẻ lịch sự nhưng vẫn vô cùng năng động, cuốn hút.\r\n\r\nChất liệu vải pique dệt - cotton sợi dệt mặt lưới, tạo ra được độ mềm và thoáng cho những người ưa vận động hay chơi thể thao, độ thấm hút mồ hôi tốt và có khả năng co giãn 4 chiều, đem đến cảm giác vô cùng thoải mái, dễ chịu khi sử dụng.', 'Men', 'Khác', 'Dài thường', 'Trơn', 'Thun'),
(50, 'Track Jacket - áo khoác gió dáng cơ bản', '70E3150', 1393000, 'Xanh', 'xanh.png', 'sp50_1.jpg', 'sp50_2.jpg', 'sp50_3.jpg', 'sp50_4.jpg', '- Chất liệu: Polyester tổng hợp dày dặn, tính năng chống gió, chống bụi, giữ ấm cơ thể. \r\n\r\n- Áo khoác 2 lớp dáng suông, độ dài ngang hông, sử dụng khóa kéo kín mành (chống gió, chống thấm nước) \r\n\r\n- Áo tay dài,  2 túi chéo 2 bên có khóa kéo tiện lợi, gấu áo phối chun bản to co giãn. Phom dáng regular phù hợp với vóc dáng người Việt\r\n\r\n- Sản xuất năm 2022 tại Việt Nam', 'Men', 'Suông', 'Thường', 'Trơn', 'Polyester'),
(51, 'Áo khoác gió cổ Đức', '70E3151', 1743000, 'Đen', 'den.png', 'sp51_1.jpg', 'sp51_2.jpg', 'sp51_3.jpg', 'sp51_4.jpg', '- Chất liệu: 94% Polyester 6% Spandex tính năng siêu nhẹ, chống gió, chống bụi, giữ ấm cơ thể.\r\n\r\n- Áo khoác 2 lớp dáng suông, độ dài ngang hông, sử dụng khóa kéo kín mành (chống gió, chống thấm nước) \r\n\r\n- Áo tay dài, cổ đức, 2 túi chéo kéo khóa phía trước tiện lợi. Phom dáng regular phù hợp với vóc dáng người Việt\r\n\r\n- Sản xuất năm 2022 tại Việt Nam', 'Men', 'Suông', 'Thường', 'Trơn', 'Polyester'),
(52, 'Áo khoác nam', '71E2187', 1445000, 'Màu Be', 'maube.png', 'sp52_1.jpg', 'sp52_2.jpg', 'sp52_3.jpg', 'sp52_4.jpg', 'Thành phần: \r\n  + mặt ngoài: 50% len, 50% polyetser\r\n\r\n  + mặt trong: 100% polyetser', 'Men', 'Suông', 'Ngắn', 'Trơn', 'Tuysi'),
(53, 'Áo khoác len', '77E1535', 528000, 'Ghi Khói', 'ghikhoi.png', 'sp53_1.jpg', 'sp53_2.jpg', 'sp53_3.jpg', 'sp53_4.jpg', '- Thành phần: 30% len lông cừu, 70% acrylic.', 'Men', 'Ôm', 'Thường', 'Trơn', 'Len'),
(54, 'Áo len nam', '58E1640', 340000, 'Đen', 'den.png', 'sp54_1.jpg', 'sp54_2.jpg', 'sp54_3.jpg', NULL, 'Áo len nam với vải len có khả năng cách nhiệt, mặt vải mềm mại cùng sự bền bỉ với thời gian. Kiểu dáng năng động mix cùng với quần jean, quần âu các loại.', 'Men', 'Slim fit', 'Dài thường', 'Trơn', 'Len'),
(55, 'Áo vest kẻ', '67E2771', 2303000, 'Xanh Tím Than', 'xanhtimthan.png', 'sp55_1.jpg', 'sp55_2.jpg', 'sp55_3.jpg', 'sp55_4.jpg', 'Áo vest cổ hai ve cách điệu. Tay dài có 4 khuy. Có 1 túi trước ngực, 2 vuông có nắp 2 bên, có 3 túi lót bên trong. Có 2 khuy cài mặt trước. Xẻ tà 2 bên phía sau.\r\n\r\nĐể tạo nên những bộ suit đẳng cấp, các nhà thiết kế tài ba của IVY Men tỉ mỉ trong từng đường chỉ, phom dáng cứng cáp từ cầu vai, vạt áo cho đến chiều dài chuẩn của ống tay đều được IVY Men chú trọng.\r\nĐi cùng là chất liệu cao cấp nhập khẩu từ Nhật Bản. Tất cả tạo nên những bộ Suit hoàn hảo - Chuẩn mực tối thượng của sự lịch lãm đầy nam tính.', 'Men', 'Khác', 'Thường', 'Kẻ', 'Tuysi'),
(56, 'Áo vest cổ hai ve', '67E2741', 2240000, 'Kẻ Đen', 'keden.png', 'sp56_1.jpg', 'sp56_2.jpg', 'sp56_3.jpg', 'sp56_4.jpg', 'Áo vest cổ hai ve cách điệu. Tay dài có 4 khuy. Có 1 túi trước ngực, 2 vuông có nắp 2 bên, có 3 túi lót bên trong. Có 2 khuy cài mặt trước. Xẻ tà ở giữa phía sau.\r\n\r\nĐể tạo nên những bộ suit đẳng cấp, các nhà thiết kế tài ba của IVY Men tỉ mỉ trong từng đường chỉ, phom dáng cứng cáp từ cầu vai, vạt áo cho đến chiều dài chuẩn của ống tay đều được IVY Men chú trọng.\r\nĐi cùng là chất liệu cao cấp nhập khẩu từ Nhật Bản. Tất cả tạo nên những bộ Suit hoàn hảo - Chuẩn mực tối thượng của sự lịch lãm đầy nam tính.', 'Men', 'Khác', 'Thường', 'Kẻ, Trơn', 'Tuysi'),
(57, 'Áo vest nam', '67E2253', 1900000, 'Kẻ Nude', 'kenude.png', 'sp57_1.jpg', 'sp57_2.jpg', 'sp57_3.jpg', 'sp57_4.jpg', 'Áo Vest nam kiểu dáng trẻ trung - lịch lãm - sang trọng, không chỉ giành riêng cho các quý ông thành đạt mà còn phù hợp với các chàng trai trẻ đang đi tìm cho mình 1 phong thái đĩnh đạc, nam tính.\r\n\r\nChất liệu vải co giãn nhẹ tạo cảm giác thoải mái, khỏe khoắn khi mặc. Thiết kế ôm dáng, tôn body, 2 túi trước có nắp túi, có 3 cúc cài. Các phụ kiện từ chỉ may đến khuy đều được chọn lựa tinh tế, phối màu hoàn hảo cho một bộ Vest đẳng cấp.', 'Men', 'Ôm', 'Thường', 'Kẻ, Trơn', 'Tuysi'),
(58, 'Quần bò đen dáng slim fit', '25E2597', 436000, 'Đen', 'den.png', 'sp58_1.jpg', 'sp58_2.jpg', 'sp58_3.jpg', 'sp58_4.jpg', 'Quần bò cạp sử dụng khóa và khuy kim loại. Có 5 túi. Ống quần đứng.\r\n\r\n- Thành phần chủ yếu cotton: Mềm mại, an toàn cho da nhạy cảm nhất\r\n- Không sử dụng các chất làm màu, hóa chất độc. Khi mua jeans, khách hàng được tặng gói hút ẩm để bảo quản sp tối ưu\r\n- Có độ bền cao, hạn chế phai, bạc màu: Khóa YKK, cúc được sản xuất riêng. Quá trình giặt cầm màu cho màu bền hơn.', 'Men', 'Slim fit', 'Qua mắt cá chân', 'Trơn', 'Denim'),
(59, 'Quần bò nam slim fit', '25E2576', 560000, 'Xanh Lơ', 'xanhlo.png', 'sp59_1.jpg', 'sp59_2.jpg', 'sp59_3.jpg', 'sp59_4.jpg', 'Quần jeans ống suông, dài qua mắt cá chân. Kiểu bạc màu. Gấu lật. Có 5 túi. Cài phía trước bằng khóa kéo và khuy.\r\n\r\n- Thành phần chủ yếu cotton: Mềm mại, an toàn cho da nhạy cảm nhất\r\n- Không sử dụng các chất làm màu, hóa chất độc. Khi mua jeans, khách hàng được tặng gói hút ẩm để bảo quản sp tối ưu\r\n- Có độ bền cao, hạn chế phai, bạc màu: Khóa YKK, cúc được sản xuất riêng. Quá trình giặt cầm màu cho màu bền hơn.', 'Men', 'Slim fit', 'Qua mắt cá chân', 'Trơn', 'Denim'),
(60, 'Quần jeans slim fit', '25E2609', 763000, 'Xanh Lơ', 'xanhlo.png', 'sp60_1.jpg', 'sp60_2.jpg', 'sp60_3.jpg', 'sp60_4.jpg', 'Quần jeans ống suông, dài qua mắt cá chân. Kiểu bạc màu. Gấu lật. Có 5 túi. Cài phía trước bằng khóa kéo và khuy.\r\n\r\n- Thành phần chủ yếu cotton: Mềm mại, an toàn cho da nhạy cảm nhất\r\n- Không sử dụng các chất làm màu, hóa chất độc. Khi mua jeans, khách hàng được tặng gói hút ẩm để bảo quản sp tối ưu\r\n- Có độ bền cao, hạn chế phai, bạc màu: Khóa YKK, cúc được sản xuất riêng. Quá trình giặt cầm màu cho màu bền hơn.', 'Men', 'Slim fit', 'Qua mắt cá chân', 'Trơn', 'Denim'),
(61, 'Quần lửng nam', '21E2084', 950000, 'Trắng', 'trang.png', 'sp61_1.jpg', 'sp61_2.jpg', 'sp61_3.jpg', 'sp61_4.jpg', 'Quần lửng thiết kế độc quyền bởi thương hiệu IVY moda. Cạp sử dụng khóa và khuy kim loại, thiết kế túi vuông có nắp, xung quanh pha viền đen nổi bật. Chất liệu co dãn nhẹ tạo cảm giác vô cùng thoái mái. \r\n\r\nChất liệu tạo nên sản phẩm chính là Vải khaki có tính chất chung là bền, mát, không nhăn, hút ẩm tốt, có co giãn.', 'Men', 'Regular', 'Ngang gối', 'Trơn', 'Khaki'),
(62, 'Quần lửng cạp chun co giãn', '21E2914', 445000, 'Vàng Nâu', 'vangnau.png', 'sp62_1.jpg', 'sp62_2.jpg', 'sp62_3.jpg', 'sp62_4.jpg', 'Quần lửng cạp chun co giãn. Có 2 túi chéo có dây kéo khóa, 2 túi may viền phía sau. Chất liệu thun co dãn nhẹ tạo cảm giác vô cùng thoái mái.', 'Men', 'Khác', 'Ngang đùi', 'Trơn', 'Thun'),
(63, 'Quần lửng 2 túi', '21E2864', 495000, 'Trắng', 'trang.png', 'sp63_1.jpg', 'sp63_2.jpg', 'sp63_3.jpg', 'sp63_4.jpg', 'Quần lửng ngang đùi. Có 2 túi chéo phía trước và túi phía sau. Đáp túi vuông có nắp hai bên ống quần. Cài phía trước bằng khóa kéo và khuy. Vải khaki thun với độ bền chắc, không phai màu, ít bị nhăn và đặc biệt không bị xù lông trong quá trình sử dụng hay sau khi giặt.\r\n\r\nThiết kế ấn tượng nhưng không kém phần ấn tượng cho nam giới diện mạo cuốn hút. Màu sắc cơ bản, độ dài ngang gối, có thể linh hoạt phối hợp với nhiều trang phục khác nhau trong mùa hè.', 'Men', 'Khác', 'Ngang đùi', 'Trơn', 'Khaki thun'),
(64, 'Quần dài kẻ dáng slim', '22E2743', 945000, 'Kẻ Nâu Cà Phê', 'kenaucaphe.png', 'sp64_1.jpg', 'sp64_2.jpg', 'sp64_3.jpg', 'sp64_4.jpg', 'Quần dài đai khuy lệch có đỉa. Có 2 túi chéo. 2 túi sau may viền có khuy cài. Gấu quần may sẵn kiểu lật.\r\n\r\nVới độ ôm vừa phải, tôn dáng và che khuyết điểm rất tốt mang lại vẻ hiện đại, đẳng cấp. Được làm bằng chất liệu Tuysi có độ thấm hút cao, hạn chế nhăn nhàu giữ cho dáng quần luôn như mới.', 'Men', 'Slim', 'Qua mắt cá chân', 'Kẻ', 'Tuysi'),
(65, 'Quần dài slim khuy lệch', '22E2833', 875000, 'Xanh tím', 'xanhtim.png', 'sp65_1.jpg', 'sp65_2.jpg', 'sp65_3.jpg', 'sp65_4.jpg', 'Quần dài đai khuy lệch có đỉa. Có 2 túi chéo. 2 túi sau may viền có khuy cài. Gấu quần may sẵn kiểu lật.\r\n\r\nVới độ ôm vừa phải, tôn dáng và che khuyết điểm rất tốt mang lại vẻ hiện đại, đẳng cấp. Được làm bằng chất liệu Tuysi có độ thấm hút cao, hạn chế nhăn nhàu giữ cho dáng quần luôn như mới.', 'Men', 'Slim', 'Qua mắt cá chân', 'Trơn', 'Tuysi'),
(66, 'Quần dài kẻ slim', '22E2741', 763000, 'Kẻ Đen', 'keden.png', 'sp66_1.jpg', 'sp66_2.jpg', 'sp66_3.jpg', NULL, 'Quần dáng Slim, cạp có đỉa. Có 2 túi chéo phía trước và túi may viền đính khuy phía sau. Cài phía trước bằng khóa kéo và khuy.\r\n\r\nPhom ôm vừa phải, tôn dáng người mặc. Thiết kế chỉn chu giúp quần luôn đứng dáng, bền vững với giặt ủi, mang đến vẻ lịch lã. Gấu quần chờ, được may vừa vặn với số đo của từng khách hàng.', 'Men', 'Slim', 'Qua mắt cá chân', 'Kẻ, Trơn', 'Tuysi'),
(67, 'Quần tây nam kẻ dáng slim', '22E2952', 545000, 'Kẻ Xanh Tím Than', 'kexanhtimthan.png', 'sp67_1.jpg', 'sp67_2.jpg', 'sp67_3.jpg', 'sp67_4.jpg', 'Quần dài kẻ cạp có đỉa. 2 túi trước, 2 viền túi có khuy cài phía sau. Cài bằng khóa kéo và khuy. Vải kiểu kẻ trẻ trung.\r\n\r\nPhom ôm vừa phải, tôn dáng người mặc. Thiết kế chỉn chu giúp quần luôn đứng dáng, bền vững với giặt ủi, mang đến vẻ lịch lãm. Quần có túi xẻ hai bên, túi khuy cài phía sau tiện lợi. Gấu quần chờ, được may vừa vặn với số đo của từng khách hàng.', 'Men', 'Slim', 'Qua mắt cá chân', 'Kẻ', 'Tuysi'),
(68, 'Quần tây nam kèm đai liền', '22E2406', 532000, 'Màu Xám', 'xam.png', 'sp68_1.jpg', 'sp68_2.jpg', 'sp68_3.jpg', 'sp68_4.jpg', 'Quần Âu dáng Regular, có túi phía trước và túi may viền phía sau. Đai quần có đỉa kèm đai may liền có khóa kim loại kiểu lệch. Cài phía trước bằng khóa kéo và khuy.\r\n\r\nForm dáng tạo phong cách trẻ trung, sang trọng và lịch lãm. Kiểu dáng hoàn hảo dành cho các chàng trai văn phòng, công sở. Chất vải mềm mịn cùng lót trong sắc nét, tạo cảm giác thoải mái khi di chuyển và làm việc. Đường may chỉn chu, tinh tế khiến quần rất bền. Không chỉ phổ biến nơi công sở, bạn hoàn toàn có thể biến tấu cho riêng mình bằng cách mix-match cùng sơ mi, áo thun hoặc len mỏng để trở thành chàng trai lịch thiệp trong mọi trường hợp.', 'Men', 'Regular', 'Ngang mắt cá chân', 'Trơn', 'Tuysi'),
(69, 'Quần tây nam vải kẻ', '22E2289', 556000, 'Kẻ Ghi Khói', 'keghikhoi.png', 'sp69_1.jpg', 'sp69_2.jpg', 'sp69_3.jpg', 'sp69_4.jpg', 'Quần dài ống suông. Cài phía trước bằng khóa kéo và khuy. Họa tiết kẻ trẻ trung, năng động.\r\n\r\nChất liệu thô thấm mồ hôi rất tốt. Với độ dày vừa phải và ưu thế thấm hút mồ hôi vượt trội. Khi mặc lên cơ thể, bạn sẽ có cảm giác thoải mái, rất dễ chịu vì có độ mát, thông thoáng mà không bị nóng, bí hay ngột ngạt khó chịu.\r\nForm ống đứng cổ điển, nam tính, không kén dáng người và thích hợp nhiều độ tuổi. Dễ dàng kết hợp cùng nhiều trang phục như áo thun, sơ mi, blazer...', 'Men', 'Regular', 'Ngang mắt cá chân', 'Kẻ', 'Thô'),
(70, 'Áo khoác giả lông cừu bé gái', '70G1473', 945000, 'Vàng Đậm', 'vangdam.png', 'sp70_1.jpg', 'sp70_2.jpg', 'sp70_3.jpg', 'sp70_4.jpg', 'Áo khoác bé gái cổ đức, dáng suông, áo cài bằng khóa kéo ẩn.\r\n\r\nChất liệu vải lông giả lông cửu mềm ấm, dày dặn. Áo khoác dễ dàng mix cùng nhiều kiểu quần khác nhau, phù hợp với thời tiết mùa Đông. Áo khoác màu sắc nổi bật mang không khí mùa lễ hội, dễ dàng mix cùng nhiều kiểu quần khác nhau, phù hợp cho bé diện đi chơi hay đi học.', 'Girl', 'Xuông', 'Ngang hông', 'Trơn', 'Lông'),
(71, 'Áo sơ mi hoa cổ Peter Pan', '17G1591', 384300, 'Họa tiết Đỏ', 'hoatietdo.png', 'sp71_1.jpg', 'sp71_2.jpg', 'sp71_3.jpg', 'sp71_4.jpg', 'Thiết kế áo sơ mi cổ Peter pan viền bèo. Tay dài bo gấu, dáng áo suông. Cài bằng hàng khuy phía trước. Chất vải thô đũi mềm mại, thoáng mát. Với họa tiết hoa và màu sắc nổi bật, chiếc áo chính là sự lựa chọn hoàn hảo mẹ chọn cho bé diện đi chơi và đi học.', 'Girl', 'Xuông', 'Dài thường', 'Hoa, Trơn', 'Thô'),
(72, 'Áo thun perfect pear', '58G1582', 343000, 'Hồng san hô', 'hongsanho.png', 'sp72_1.jpg', 'sp72_2.jpg', 'sp72_3.jpg', 'sp72_4.jpg', 'Thiết kế áo bé gái dáng peplum dài tay bo phồng nhẹ. Điểm nhấn là họa tiết in đính hình quả lê độc đáo. Chất liệu vải thun mềm mát, thoải mái cùng màu sắc xinh xắn, đây sẽ là sự lựa chọn hoàn hảo cho bé diện đi học hay đi chơi.', 'Girl', 'Peplum', 'Dài thường', 'Trơn', 'Thun'),
(73, 'Quần sooc gấu nơ', '20G1281', 203000, 'Họa tiết Be', 'hoatietbe.png', 'sp73_1.jpg', 'sp73_2.jpg', 'sp73_3.jpg', 'sp73_4.jpg', 'Quần sooc bé gái, cạp chun co giãn. Gấu gập 2 bên thắt nơ sẵn tạo kiểu. Dáng suông với độ dài ngang đùi.', 'Girl', 'Ống suông', 'Ngang đùi', 'Họa tiết khác', 'Thô'),
(74, 'Quần bò bé gái', '25G0764', 290000, 'Xanh Lơ', 'xanhlo.png', 'sp74_1.jpg', 'sp74_2.jpg', 'sp74_3.jpg', 'sp74_4.jpg', 'Quần bò ống đứng. Có 5 túi. Cạp có đỉa. Cài bằng dây kéo và khóa kim loại phía trước. Bo gấu. Kiểu bạc màu.', 'Girl', 'Ống đứng', 'Ngang mắt cá chân', 'Trơn', 'Denim'),
(75, 'Quần sooc giả váy', '20G1521', 314300, 'Đỏ Thắm', 'dotham.png', 'sp75_1.jpg', 'sp75_2.jpg', 'sp75_3.jpg', 'sp75_4.jpg', '- Quần sooc bé gái dáng suông rộng, độ dài ngang đùi\r\n\r\n- Eo chun co giãn. 2 tà phía trước tạo kiểu giả váy\r\n\r\n- Chất liệu linen thoáng mát, mềm nhẹ\r\n\r\n- Mix cùng nhiều kiểu áo khác nhau. Phù hợp cho bé diện hằng ngày', 'Girl', 'Giả váy', 'Ngang đùi', 'Trơn', 'Linen'),
(76, 'Đầm thun Skateboard', '42G1583', 384300, 'Ghi Sáng', 'ghisang.png', 'sp76_1.jpg', 'sp76_2.jpg', 'sp76_3.jpg', 'sp76_4.jpg', 'Đầm thun cổ tròn, tay dài bo gấu. Eo hạ tùng váy xòe rộng ngang đầu gối. Mặt trước thêu hình ngộ nghĩnh. Chất liệu thun dập nổi mềm, có độ dày vừa phải giúp bé giữ ấm hiệu quả.', 'Girl', 'Đầm xòe', 'Trên gối', 'Trơn', 'Thun'),
(77, 'Đầm thun hạ eo dáng xòe', '42G1580', 343000, 'Họa tiết Hồng san hô', 'hoatiethongsanho.png', 'sp77_1.jpg', 'sp77_2.jpg', 'sp77_3.jpg', 'sp77_4.jpg', '- Đầm bé gái dáng suông, độ dài qua đầu gối\r\n\r\n- Phần chân váy dáng xòe, eo hạ có dây rút dễ dàng điều chỉnh độ rộng\r\n\r\n- Chất liệu vải thun in họa tiết hoa nhí mềm mại, thoáng mát', 'Girl', 'Đầm xòe', 'Trên gối', 'Họa tiết khác', 'Thun'),
(78, 'Đầm thun Small Germ', '42G1294', 336000, 'Xanh Lam Đậm', 'xanhlamdam.png', 'sp78_1.jpg', 'sp78_2.jpg', 'sp78_3.jpg', 'sp78_4.jpg', 'Đầm thun cổ đức có 2 khuy cài. Tay sát nách diềm chun co giãn. Dáng đầm xuông với tùng váy xếp nếp tạo xòe. In hình và chữ nhiều màu 1 bên ngực. Chất vải thun cá sấu với độ dày vừa phải.', 'Girl', 'Đầm xòe', 'Trên gối', 'Trơn', 'Thun'),
(79, 'Áo thun polo kẻ ngang', '58K1519', 279300, 'Kẻ Đen', 'keden.png', 'sp79_1.jpg', 'sp79_2.jpg', 'sp79_3.jpg', NULL, 'Áo polo bé trai dài tay dáng suông, cổ đức liền 3 khuy cài. Cổ và gấu tay phối vải khác màu tạo điểm nhấn. Chất liệu vải thun mềm mịn, thoải mái, giữ ấm tốt cho bé yêu. Áo dễ dàng mix cùng nhiều kiểu quần khác nhau, phù hợp cho bé diện đi chơi hay đi học.', 'Boy', 'Khác', 'Dài thường', 'Kẻ', 'Thun'),
(80, 'Áo hoodie khủng long', '59K1492', 384300, 'Xanh Lam Đậm', 'xanhlamdam.png', 'sp80_1.jpg', 'sp80_2.jpg', 'sp80_3.jpg', 'sp80_4.jpg', 'Áo hoddie bé trai dáng suông, cổ cao. Điểm nhấn là họa tiết hình chú khủng long được in dập nổi hiện đại, mũ áo phối viền tạo hình vảy khủng long độc đáo.\r\n\r\nÁo khoác làm từ chất liệu vải thun mềm mịn, giữ ấm tốt. Áo hoddie màu sắc trung tính cùng các chi tiết dễ thương sẽ là món quà tuyệt vời mà ba mẹ dành cho bé yêu. Áo dễ dàng mix cùng nhiều kiểu quần khác nhau, phù hợp cho bé diện đi chơi hay đi học.', 'Boy', 'Khác', 'Dài thường', 'Trơn', 'Thun');
INSERT INTO `san_pham` (`idSP`, `tenSP`, `maSP`, `giaSP`, `mauSP`, `anhMauSP`, `anhSP1`, `anhSP2`, `anhSP3`, `anhSP4`, `gioithieuSP`, `dongSP`, `kieuDang`, `doDai`, `hoaTiet`, `chatLieu`) VALUES
(81, 'Áo khoác chần bông kẻ caro', '70K1518', 769300, 'Kẻ Cam', 'kecam.png', 'sp81_1.jpg', 'sp81_2.jpg', 'sp81_3.jpg', 'sp81_4.jpg', 'Áo khoác bé trai cổ đức, dáng suông, áo cài bằng khóa kéo nhựa YKK cao cấp, cùng màu, không chỉ đẹp mà mang lại sự bền bỉ cho chiếc áo. Phía trước có túi vuông tạo kiểu và 2 túi chéo 2 bên tiện lợi.\r\n\r\nÁo khoác làm từ chất liệu vải thô may chần bông hình quả trám, bên trong có lớp lót, dày dặn giúp giữ ấm tốt mà vẫn mềm nhẹ giúp bé thoải mái vui chơi. Áo khoác màu sắc nổi bật mang không khí mùa lễ hội, dễ dàng mix cùng nhiều kiểu quần khác nhau, phù hợp cho bé diện đi chơi hay đi học.', 'Boy', 'Khác', 'Thường', 'Kẻ', 'Thô'),
(82, 'Quần thun dài bo gấu', '22K1533', 279300, 'Ghi Khói', 'ghikhoi.png', 'sp82_1.jpg', 'sp82_2.jpg', 'sp82_3.jpg', 'sp82_4.jpg', 'Quần thun bé trai dáng dài, bo gấu, cạp chun, 2 bên có 2 túi chéo. Chất liệu vải thun mềm mịn, thoải mái, giữ ấm tốt phù hợp cho bé mặc ở nhà, đi chơi.', 'Boy', 'Khác', 'Qua mắt cá chân', 'Trơn', 'Thun'),
(83, 'Quần khaki jogger bé trai', '22K1526', 398300, 'Nâu Nhạt', 'naunhat.png', 'sp83_1.jpg', 'sp83_2.jpg', 'sp83_3.jpg', 'sp83_4.jpg', 'Quần jogger bé trai dáng dài, bo chun gấu, cạp chun co giãn thoải mái, 2 bên có 2 túi chéo, quần phối túi hộp 1 bên tạo điêm nhấn. Chất liệu vải khaki dày dặn, mềm mịn tạo phom dáng khỏe khoắn. Quần dễ dàng mix cùng nhiều kiểu áo khác nhau, phù hợp cho bé diện đi học hay đi chơi.', 'Boy', 'Khác', 'Ngang mắt cá chân', 'Trơn', 'Khaki'),
(84, 'Quần thun xanh rêu in hình ô tô', '22K1532', 209300, 'Họa tiết Xanh Oliu', 'hoatietxanholiu.png', 'sp84_1.jpg', 'sp84_2.jpg', 'sp84_3.jpg', 'sp84_4.jpg', 'Quần thun bé trai dáng dài, ôm gấu, cạp chun, 2 bên có 2 túi chéo. Chất liệu vải thun mềm mịn, thoải mái, in hình hoạt  tiết ngộ nghĩnh phù hợp cho bé mặc ở nhà, đi chơi.', 'Boy', 'Khác', 'Qua mắt cá chân', 'Trơn', 'Thun'),
(86, 'Áo croptop tay phồng phối tweed', '17M8162', 665000, 'Kẻ Xanh Lime', 'kexanhlime.png', '42b8d081a58ad76a5ca774ae07dceef6.jpg', '0883b8eff86222f0fa5e99b12987da74.jpg', '61083ce7862d7a306ada7c5549ad4ff6.jpg', '', 'Áo croptop dáng suông, cổ tròn, phía trước là hàng khuy đá đậm chất tiểu thư. Áo dài tay vai phồng nữ tính. Chất vải tweed mỏng, mềm thoáng mát phối cùng tay áo chất vải thô mang lại vẻ trẻ trung, độc đáo. Phối cùng quần jeans hoặc chân váy xòe là nàng đã có 1 outfit đi chơi, đi làm đầy nữ tính!', 'Ladies', 'Suông', 'Dài thường', 'Kẻ', 'Tweed');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sliders`
--

CREATE TABLE `sliders` (
  `id` int(11) NOT NULL,
  `anhSlider` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sliders`
--

INSERT INTO `sliders` (`id`, `anhSlider`) VALUES
(1, 'slider1.jpg'),
(2, 'slider2.jpg'),
(3, 'slider3.jpg'),
(4, 'slider4.jpg'),
(5, 'slider5.jpg'),
(6, 'slider6.jpg');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`tenTK`,`matKhau`);

--
-- Chỉ mục cho bảng `chi_tiet_don_hang`
--
ALTER TABLE `chi_tiet_don_hang`
  ADD PRIMARY KEY (`STT`),
  ADD KEY `FK_don_hang` (`idDonHang`),
  ADD KEY `FK_san_pham` (`idSanPham`);

--
-- Chỉ mục cho bảng `danh_muc`
--
ALTER TABLE `danh_muc`
  ADD PRIMARY KEY (`idDanhMuc`);

--
-- Chỉ mục cho bảng `danh_muc_san_pham`
--
ALTER TABLE `danh_muc_san_pham`
  ADD PRIMARY KEY (`idDanhMuc`,`idSP`),
  ADD KEY `FK_danh_muc_san_pham_san_pham` (`idSP`);

--
-- Chỉ mục cho bảng `don_hang`
--
ALTER TABLE `don_hang`
  ADD PRIMARY KEY (`idDonHang`);

--
-- Chỉ mục cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  ADD PRIMARY KEY (`idSP`);

--
-- Chỉ mục cho bảng `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chi_tiet_don_hang`
--
ALTER TABLE `chi_tiet_don_hang`
  MODIFY `STT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `danh_muc`
--
ALTER TABLE `danh_muc`
  MODIFY `idDanhMuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `don_hang`
--
ALTER TABLE `don_hang`
  MODIFY `idDonHang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  MODIFY `idSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT cho bảng `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chi_tiet_don_hang`
--
ALTER TABLE `chi_tiet_don_hang`
  ADD CONSTRAINT `FK_don_hang` FOREIGN KEY (`idDonHang`) REFERENCES `don_hang` (`idDonHang`),
  ADD CONSTRAINT `FK_san_pham` FOREIGN KEY (`idSanPham`) REFERENCES `san_pham` (`idSP`);

--
-- Các ràng buộc cho bảng `danh_muc_san_pham`
--
ALTER TABLE `danh_muc_san_pham`
  ADD CONSTRAINT `FK_danh_muc_san_pham_danh_muc` FOREIGN KEY (`idDanhMuc`) REFERENCES `danh_muc` (`idDanhMuc`),
  ADD CONSTRAINT `FK_danh_muc_san_pham_san_pham` FOREIGN KEY (`idSP`) REFERENCES `san_pham` (`idSP`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
