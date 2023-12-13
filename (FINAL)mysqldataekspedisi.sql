/*
 Navicat Premium Data Transfer

 Source Server         : pb
 Source Server Type    : MySQL
 Source Server Version : 100425
 Source Host           : localhost:3306
 Source Schema         : mysqldataekspedisi

 Target Server Type    : MySQL
 Target Server Version : 100425
 File Encoding         : 65001

 Date: 25/01/2023 15:55:42
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for barang
-- ----------------------------
DROP TABLE IF EXISTS `barang`;
CREATE TABLE `barang`  (
  `KODE_BARANG` int(11) NOT NULL,
  `KODE_PENGIRIM` int(11) NOT NULL,
  `ID_JENISBARANG` int(11) NULL DEFAULT NULL,
  `NAMA_BARANG` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ASURANSI_BARANG` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `BERAT_BARANG` float NOT NULL,
  `DIMENSI_BARANG` float NULL DEFAULT NULL,
  `BIAYAPERKG` float NULL DEFAULT NULL,
  PRIMARY KEY (`KODE_BARANG`) USING BTREE,
  INDEX `fk_pengirim_barang`(`KODE_PENGIRIM`) USING BTREE,
  INDEX `fk_jenis_barang`(`ID_JENISBARANG`) USING BTREE,
  CONSTRAINT `fk_jenis_barang` FOREIGN KEY (`ID_JENISBARANG`) REFERENCES `jenis_barang` (`ID_JENISBARANG`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_pengirim_barang` FOREIGN KEY (`KODE_PENGIRIM`) REFERENCES `pengirim` (`KODE_PENGIRIM`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of barang
-- ----------------------------
INSERT INTO `barang` VALUES (1, 1, 1, 'Asus B450M Pro', 'N', 2, 9375, 10000);
INSERT INTO `barang` VALUES (2, 2, 4, 'Fanta Orange', 'N', 0.8, 4000, 10000);
INSERT INTO `barang` VALUES (3, 3, 4, 'Fiesta Tempura', 'N', 1, 4000, 10000);
INSERT INTO `barang` VALUES (4, 4, 2, 'Konidin OBH', 'N', 0.5, 1000, 10000);
INSERT INTO `barang` VALUES (5, 5, 3, 'Erigo Tokyo T-Shirt', 'N', 0.5, 1550, 10000);
INSERT INTO `barang` VALUES (6, 6, 2, 'Biogesic', 'N', 0.4, 2000, 10000);
INSERT INTO `barang` VALUES (7, 7, 1, 'Nvidia GTX 1050', 'N', 1, 5040, 10000);
INSERT INTO `barang` VALUES (8, 8, 5, 'Wardah Lipstick', 'N', 0.2, 1500, 10000);
INSERT INTO `barang` VALUES (9, 9, 2, 'Tolak Angin', 'N', 0.5, 500, 10000);
INSERT INTO `barang` VALUES (10, 10, 1, 'Poco F4', 'N', 1, 4560, 10000);
INSERT INTO `barang` VALUES (11, 11, 1, 'XBOX 360 Controller', 'N', 0.75, 3500, 10000);
INSERT INTO `barang` VALUES (12, 12, 1, 'Edifier R1280T', 'N', 2, 16000, 10000);
INSERT INTO `barang` VALUES (13, 13, 5, 'Loreal Lipstick', 'N', 0.3, 1500, 10000);
INSERT INTO `barang` VALUES (14, 14, 1, 'Keyboard Logitech', 'N', 1, 5000, 10000);
INSERT INTO `barang` VALUES (15, 15, 6, 'Filter Udara Beat', 'N', 0.4, 3200, 10000);
INSERT INTO `barang` VALUES (16, 16, 3, 'Adidas Shirt', 'N', 0.3, 1500, 10000);
INSERT INTO `barang` VALUES (17, 17, 4, 'Fortuna Chicken Nugget', 'N', 1, 5300, 10000);
INSERT INTO `barang` VALUES (18, 18, 4, 'Sprit Lemon', 'N', 1, 5850, 10000);
INSERT INTO `barang` VALUES (19, 19, 4, 'Selamat Wafer', 'N', 1, 4000, 10000);
INSERT INTO `barang` VALUES (20, 20, 4, 'Nissin Crackers', 'N', 1, 4800, 10000);
INSERT INTO `barang` VALUES (21, 21, 4, 'Richeese Nabati', 'N', 1, 4600, 10000);
INSERT INTO `barang` VALUES (22, 22, 4, 'Indomie Goreng', 'N', 1, 6000, 10000);
INSERT INTO `barang` VALUES (23, 23, 1, 'AKG Earphone', 'N', 0.5, 3000, 10000);
INSERT INTO `barang` VALUES (24, 24, 1, 'Mouse Fantech', 'N', 0.5, 5000, 10000);
INSERT INTO `barang` VALUES (25, 25, 1, 'Kabel Data Ugreen', 'N', 0.3, 1000, 10000);
INSERT INTO `barang` VALUES (26, 26, 1, 'CCA CRA Earphone', 'N', 0.3, 2000, 10000);
INSERT INTO `barang` VALUES (27, 27, 1, 'KZ ZSN Earphone', 'N', 0.3, 2000, 10000);
INSERT INTO `barang` VALUES (28, 28, 1, 'Fiio KA2 Amplifier', 'N', 0.7, 3500, 10000);
INSERT INTO `barang` VALUES (29, 29, 1, 'Power Bank Baseus', 'N', 1, 5000, 10000);
INSERT INTO `barang` VALUES (30, 30, 1, 'DBE Headset', 'N', 1, 4175, 10000);
INSERT INTO `barang` VALUES (31, 31, 7, 'Jurnal Perusahaan', 'Y', 1, 5985, 30000);
INSERT INTO `barang` VALUES (32, 32, 3, 'Erigo Couch Jacket', 'N', 0, 1658, 10000);
INSERT INTO `barang` VALUES (33, 33, 3, 'Polo Blue Shirt', 'N', 0, 1500, 10000);
INSERT INTO `barang` VALUES (34, 34, 3, 'Nike Air Jordan', 'Y', 1, 6000, 10000);
INSERT INTO `barang` VALUES (35, 35, 3, 'Adidas VS Pace', 'N', 1, 5659, 10000);
INSERT INTO `barang` VALUES (36, 36, 3, 'Adidas Runfalcon', 'N', 1, 5000, 10000);
INSERT INTO `barang` VALUES (37, 37, 5, 'Parfum Ferrarri', 'N', 0.4, 1300, 10000);
INSERT INTO `barang` VALUES (38, 38, 5, 'Sabun LIfeboy', 'N', 1, 5300, 10000);
INSERT INTO `barang` VALUES (39, 39, 5, 'Baby Oil Zaitun', 'N', 0.4, 3000, 10000);
INSERT INTO `barang` VALUES (40, 40, 5, 'Sampo Zinc', 'N', 0.5, 3480, 10000);
INSERT INTO `barang` VALUES (41, 41, 1, 'ID-Cooling AM4 Cooler', 'N', 1, 6000, 10000);
INSERT INTO `barang` VALUES (42, 42, 1, 'Logitech Z120 Speaker', 'N', 0.7, 4200, 10000);
INSERT INTO `barang` VALUES (43, 43, 1, 'Logitech G503 Mouse', 'N', 1, 4900, 10000);
INSERT INTO `barang` VALUES (44, 44, 2, 'Betadine 500ml', 'N', 0.5, 400, 10000);
INSERT INTO `barang` VALUES (45, 45, 2, 'Hansaplast', 'N', 0.5, 700, 10000);
INSERT INTO `barang` VALUES (46, 46, 2, 'Insto Obat Tetes Mata', 'N', 0.2, 100, 10000);
INSERT INTO `barang` VALUES (47, 47, 2, 'Neurobion', 'N', 0.3, 1200, 10000);
INSERT INTO `barang` VALUES (48, 48, 2, 'Vitacimin C', 'N', 0.5, 2500, 10000);
INSERT INTO `barang` VALUES (49, 49, 6, 'Aki Motobatt GTZ6V', 'N', 1, 5000, 10000);
INSERT INTO `barang` VALUES (50, 50, 6, 'Cover Tangki Bensin Ninja 250', 'N', 1, 10000, 10000);
INSERT INTO `barang` VALUES (51, 51, 6, 'FDR Ban Depan Tubeless 80/90', 'N', 1, 9000, 10000);
INSERT INTO `barang` VALUES (52, 52, 6, 'Aspira Reservoir Radiator', 'N', 0.5, 4560, 10000);
INSERT INTO `barang` VALUES (53, 53, 6, 'Speedometer Honda Beat', 'N', 1, 4350, 10000);
INSERT INTO `barang` VALUES (54, 54, 6, 'As Shock Depan Vega R', 'N', 2, 10600, 10000);
INSERT INTO `barang` VALUES (55, 55, 6, 'Kampas Kopling Vixion', 'N', 1, 1000, 10000);
INSERT INTO `barang` VALUES (56, 56, 6, 'Karbu PE 28 Keihin', 'N', 1, 2000, 10000);
INSERT INTO `barang` VALUES (57, 57, 7, 'Dokumen Perpanjangan STNK', 'Y', 0.4, 300, 30000);
INSERT INTO `barang` VALUES (58, 58, 7, 'BPKB Motor', 'Y', 0.3, 400, 30000);
INSERT INTO `barang` VALUES (59, 59, 1, 'Letshuoer S12 Earphone', 'N', 1, 4650, 10000);
INSERT INTO `barang` VALUES (60, 60, 1, 'Miyako Kipas Angin', 'N', 1, 5550, 10000);
INSERT INTO `barang` VALUES (61, 61, 1, 'USB Hub Orico', 'N', 0.5, 4000, 10000);
INSERT INTO `barang` VALUES (62, 62, 1, 'Charger Uneed 18Watt', 'N', 0.5, 3000, 10000);
INSERT INTO `barang` VALUES (63, 63, 1, 'Keyboard Mechanical Rexus ', 'N', 1, 4560, 10000);
INSERT INTO `barang` VALUES (64, 64, 1, 'Epson Printer L120', 'N', 1, 6000, 10000);
INSERT INTO `barang` VALUES (65, 65, 5, 'Parfum Wardah', 'N', 0.3, 1800, 10000);
INSERT INTO `barang` VALUES (66, 66, 5, 'Sabun Muka Cetaphil', 'N', 0.75, 5400, 10000);
INSERT INTO `barang` VALUES (67, 67, 1, 'Radeon RX 6600', 'N', 1, 6000, 10000);
INSERT INTO `barang` VALUES (68, 68, 1, 'Charger Laptop Acer E5', 'N', 0.9, 1000, 10000);
INSERT INTO `barang` VALUES (69, 69, 1, 'Avani DAC Amplifier Dongle', 'N', 0.2, 1000, 10000);
INSERT INTO `barang` VALUES (70, 70, 1, 'Monitor Samsung C23490F', 'Y', 2, 11000, 10000);
INSERT INTO `barang` VALUES (71, 71, 1, 'Microphone Lavalier', 'N', 0.3, 2000, 10000);
INSERT INTO `barang` VALUES (72, 72, 6, 'LED T10 Universal Honda', 'N', 0.5, 2000, 10000);
INSERT INTO `barang` VALUES (73, 73, 6, 'Velg King Speed Vario', 'Y', 4, 23510, 10000);
INSERT INTO `barang` VALUES (74, 74, 6, 'Grease CVT ', 'N', 0.3, 500, 10000);
INSERT INTO `barang` VALUES (75, 75, 6, 'Noken AS BRT ', 'N', 0.8, 1500, 10000);
INSERT INTO `barang` VALUES (76, 76, 6, 'Piston FIM 54', 'N', 1, 3000, 10000);
INSERT INTO `barang` VALUES (77, 77, 4, 'SilverQueen Max Chocolate', 'N', 1, 5000, 10000);
INSERT INTO `barang` VALUES (78, 78, 4, 'Mie Sedap Kari Ayam', 'N', 1, 5000, 10000);
INSERT INTO `barang` VALUES (79, 79, 4, 'Chitato Indomie', 'N', 1, 5420, 10000);
INSERT INTO `barang` VALUES (80, 80, 4, 'PotaBee Barbeque', 'N', 1, 5570, 10000);
INSERT INTO `barang` VALUES (81, 81, 4, 'Pocky Green Tea', 'N', 0.6, 3000, 10000);
INSERT INTO `barang` VALUES (82, 82, 3, 'Gildan Premium White', 'N', 1, 5000, 10000);
INSERT INTO `barang` VALUES (83, 83, 3, 'Polo Green T-Shirt', 'N', 1, 2500, 10000);
INSERT INTO `barang` VALUES (84, 84, 3, 'Polo Black Shirt', 'N', 0.75, 2000, 10000);
INSERT INTO `barang` VALUES (85, 85, 3, 'Celana Cargo', 'N', 0.5, 2000, 10000);
INSERT INTO `barang` VALUES (86, 86, 3, 'DC Chino ', 'N', 0.5, 2000, 10000);
INSERT INTO `barang` VALUES (87, 87, 3, 'OneSix Basic Shirt', 'N', 0.3, 2420, 10000);
INSERT INTO `barang` VALUES (88, 88, 3, 'Uniqlo Jacket', 'N', 0.5, 2000, 10000);
INSERT INTO `barang` VALUES (89, 89, 3, 'League Football Shoes', 'N', 1, 5450, 10000);
INSERT INTO `barang` VALUES (90, 90, 1, 'LCD Laptop Asus Vivobook', 'N', 1, 60000, 10000);

-- ----------------------------
-- Table structure for gerai
-- ----------------------------
DROP TABLE IF EXISTS `gerai`;
CREATE TABLE `gerai`  (
  `KODE_GERAI` int(11) NOT NULL,
  `KODE_PERUSAHAAN` int(11) NULL DEFAULT NULL,
  `NAMA_GERAI` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ALAMAT_GERAI` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `TELP_GERAI` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`KODE_GERAI`) USING BTREE,
  INDEX `fk_headoffice_gerai`(`KODE_PERUSAHAAN`) USING BTREE,
  CONSTRAINT `fk_headoffice_gerai` FOREIGN KEY (`KODE_PERUSAHAAN`) REFERENCES `head_office` (`KODE_PERUSAHAAN`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gerai
-- ----------------------------
INSERT INTO `gerai` VALUES (1, 1, 'Yudistira', ' Jl Imam Bonjol 58, Dki Jakarta', '0213152756');
INSERT INTO `gerai` VALUES (2, 1, 'Bima', 'Jl Tembaan Kompl Sinar Galaxy D/58, Surabaya, Jawa Timur', '0218438170');
INSERT INTO `gerai` VALUES (3, 1, 'Arjuna', 'Jl. RE. Martadinata No. 63 Citarum Bandung Wetan, Bandung, Jawa Barat', '0213161974');
INSERT INTO `gerai` VALUES (4, 1, 'Nakula', 'Jl. Setiabudi No. 207, Semarang, Jawa Tengah', '0217626478');
INSERT INTO `gerai` VALUES (5, 1, 'Sadewa', 'Jl. Nakula No. 34 ketanggungan, wirobrajan, Kota Yogyakarta, Daerah Istimewa Yogyakarta', '0318490142');

-- ----------------------------
-- Table structure for head_office
-- ----------------------------
DROP TABLE IF EXISTS `head_office`;
CREATE TABLE `head_office`  (
  `KODE_PERUSAHAAN` int(11) NOT NULL,
  `NAMA_PERUSAHAAN` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ALAMAT_KANTOR` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `TELP_KANTOR` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`KODE_PERUSAHAAN`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of head_office
-- ----------------------------
INSERT INTO `head_office` VALUES (1, 'Esa Unggul Express', 'Jl. Arjuna Utara No.9, Duri Kepa, Kec. Kb. Jeruk, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta ', '(021) 5674223');

-- ----------------------------
-- Table structure for jenis_barang
-- ----------------------------
DROP TABLE IF EXISTS `jenis_barang`;
CREATE TABLE `jenis_barang`  (
  `ID_JENISBARANG` int(11) NOT NULL,
  `JENIS_BARANG` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `HARGA_PERKG` float NULL DEFAULT NULL,
  PRIMARY KEY (`ID_JENISBARANG`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jenis_barang
-- ----------------------------
INSERT INTO `jenis_barang` VALUES (1, 'Elektronik', 10000);
INSERT INTO `jenis_barang` VALUES (2, 'Farmasi', 10000);
INSERT INTO `jenis_barang` VALUES (3, 'Apparel', 10000);
INSERT INTO `jenis_barang` VALUES (4, 'Food and Beverages', 10000);
INSERT INTO `jenis_barang` VALUES (5, 'Kosmetik', 10000);
INSERT INTO `jenis_barang` VALUES (6, 'Otomotif', 10000);
INSERT INTO `jenis_barang` VALUES (7, 'Surat Berharga', 30000);

-- ----------------------------
-- Table structure for kas
-- ----------------------------
DROP TABLE IF EXISTS `kas`;
CREATE TABLE `kas`  (
  `PENDAPATAN` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `TOTAL_PENDAPATAN` float NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kas
-- ----------------------------
INSERT INTO `kas` VALUES ('totalpendapatan', 1540000);

-- ----------------------------
-- Table structure for kasir
-- ----------------------------
DROP TABLE IF EXISTS `kasir`;
CREATE TABLE `kasir`  (
  `KODE_KASIR` int(11) NOT NULL,
  `KODE_PEGAWAI` int(11) NOT NULL,
  `NAMA_KASIR` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`KODE_KASIR`) USING BTREE,
  INDEX `fk_pegawai_kasir`(`KODE_PEGAWAI`) USING BTREE,
  CONSTRAINT `fk_pegawai_kasir` FOREIGN KEY (`KODE_PEGAWAI`) REFERENCES `pegawai` (`KODE_PEGAWAI`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kasir
-- ----------------------------
INSERT INTO `kasir` VALUES (1, 1, 'Cahyo Hidayanto');
INSERT INTO `kasir` VALUES (2, 2, 'Lulut Wahyudin');
INSERT INTO `kasir` VALUES (3, 3, 'Warta Adriansyah');
INSERT INTO `kasir` VALUES (4, 4, 'Hana Mulyani');
INSERT INTO `kasir` VALUES (5, 5, 'Ida Mayasari ');

-- ----------------------------
-- Table structure for kurir
-- ----------------------------
DROP TABLE IF EXISTS `kurir`;
CREATE TABLE `kurir`  (
  `KODE_PEGAWAI` int(11) NOT NULL,
  `KODE_PENERIMA` int(11) NOT NULL,
  `KODE_PENGIRIMAN` int(11) NOT NULL,
  INDEX `fk_pegawai_kurir`(`KODE_PEGAWAI`) USING BTREE,
  INDEX `fk_penerima_kurir`(`KODE_PENERIMA`) USING BTREE,
  INDEX `fk_pengiriman_kurir`(`KODE_PENGIRIMAN`) USING BTREE,
  CONSTRAINT `fk_pegawai_kurir` FOREIGN KEY (`KODE_PEGAWAI`) REFERENCES `pegawai` (`KODE_PEGAWAI`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_penerima_kurir` FOREIGN KEY (`KODE_PENERIMA`) REFERENCES `penerima` (`KODE_PENERIMA`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_pengiriman_kurir` FOREIGN KEY (`KODE_PENGIRIMAN`) REFERENCES `pengiriman` (`KODE_PENGIRIMAN`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kurir
-- ----------------------------
INSERT INTO `kurir` VALUES (6, 1, 1001);
INSERT INTO `kurir` VALUES (6, 2, 1002);
INSERT INTO `kurir` VALUES (6, 3, 1003);
INSERT INTO `kurir` VALUES (6, 4, 1004);
INSERT INTO `kurir` VALUES (6, 5, 1005);
INSERT INTO `kurir` VALUES (6, 6, 1006);
INSERT INTO `kurir` VALUES (6, 7, 1007);
INSERT INTO `kurir` VALUES (6, 8, 1008);
INSERT INTO `kurir` VALUES (6, 9, 1009);
INSERT INTO `kurir` VALUES (6, 10, 1010);
INSERT INTO `kurir` VALUES (6, 11, 1011);
INSERT INTO `kurir` VALUES (6, 12, 1012);
INSERT INTO `kurir` VALUES (6, 13, 1013);
INSERT INTO `kurir` VALUES (6, 14, 1014);
INSERT INTO `kurir` VALUES (7, 15, 1015);
INSERT INTO `kurir` VALUES (7, 16, 1016);
INSERT INTO `kurir` VALUES (7, 17, 1017);
INSERT INTO `kurir` VALUES (7, 18, 1018);
INSERT INTO `kurir` VALUES (7, 19, 1019);
INSERT INTO `kurir` VALUES (7, 20, 1020);
INSERT INTO `kurir` VALUES (8, 21, 1021);
INSERT INTO `kurir` VALUES (8, 22, 1022);
INSERT INTO `kurir` VALUES (8, 23, 1023);
INSERT INTO `kurir` VALUES (8, 24, 1024);
INSERT INTO `kurir` VALUES (8, 25, 1025);
INSERT INTO `kurir` VALUES (8, 26, 1026);
INSERT INTO `kurir` VALUES (8, 27, 1027);
INSERT INTO `kurir` VALUES (8, 28, 1028);
INSERT INTO `kurir` VALUES (8, 29, 1029);
INSERT INTO `kurir` VALUES (8, 30, 1030);
INSERT INTO `kurir` VALUES (9, 31, 1031);
INSERT INTO `kurir` VALUES (9, 32, 1032);
INSERT INTO `kurir` VALUES (9, 33, 1033);
INSERT INTO `kurir` VALUES (9, 34, 1034);
INSERT INTO `kurir` VALUES (9, 35, 1035);
INSERT INTO `kurir` VALUES (7, 36, 1036);
INSERT INTO `kurir` VALUES (7, 37, 1037);
INSERT INTO `kurir` VALUES (7, 38, 1038);
INSERT INTO `kurir` VALUES (7, 39, 1039);
INSERT INTO `kurir` VALUES (7, 40, 1040);
INSERT INTO `kurir` VALUES (10, 41, 1041);
INSERT INTO `kurir` VALUES (10, 42, 1042);
INSERT INTO `kurir` VALUES (10, 43, 1043);
INSERT INTO `kurir` VALUES (10, 44, 1044);
INSERT INTO `kurir` VALUES (10, 45, 1045);
INSERT INTO `kurir` VALUES (10, 46, 1046);
INSERT INTO `kurir` VALUES (10, 47, 1047);
INSERT INTO `kurir` VALUES (10, 48, 1048);
INSERT INTO `kurir` VALUES (10, 49, 1049);
INSERT INTO `kurir` VALUES (10, 50, 1050);
INSERT INTO `kurir` VALUES (11, 51, 1051);
INSERT INTO `kurir` VALUES (11, 52, 1052);
INSERT INTO `kurir` VALUES (11, 53, 1053);
INSERT INTO `kurir` VALUES (11, 54, 1054);
INSERT INTO `kurir` VALUES (11, 55, 1055);
INSERT INTO `kurir` VALUES (12, 56, 1056);
INSERT INTO `kurir` VALUES (12, 57, 1057);
INSERT INTO `kurir` VALUES (12, 58, 1058);
INSERT INTO `kurir` VALUES (12, 59, 1059);
INSERT INTO `kurir` VALUES (12, 60, 1060);
INSERT INTO `kurir` VALUES (12, 61, 1061);
INSERT INTO `kurir` VALUES (12, 62, 1062);
INSERT INTO `kurir` VALUES (12, 63, 1063);
INSERT INTO `kurir` VALUES (12, 64, 1064);
INSERT INTO `kurir` VALUES (12, 65, 1065);
INSERT INTO `kurir` VALUES (13, 66, 1066);
INSERT INTO `kurir` VALUES (13, 67, 1067);
INSERT INTO `kurir` VALUES (13, 68, 1068);
INSERT INTO `kurir` VALUES (13, 69, 1069);
INSERT INTO `kurir` VALUES (13, 70, 1070);
INSERT INTO `kurir` VALUES (14, 71, 1071);
INSERT INTO `kurir` VALUES (14, 72, 1072);
INSERT INTO `kurir` VALUES (14, 73, 1073);
INSERT INTO `kurir` VALUES (14, 74, 1074);
INSERT INTO `kurir` VALUES (14, 75, 1075);
INSERT INTO `kurir` VALUES (14, 76, 1076);
INSERT INTO `kurir` VALUES (14, 77, 1077);
INSERT INTO `kurir` VALUES (14, 78, 1078);
INSERT INTO `kurir` VALUES (14, 79, 1079);
INSERT INTO `kurir` VALUES (14, 80, 1080);
INSERT INTO `kurir` VALUES (15, 81, 1081);
INSERT INTO `kurir` VALUES (15, 82, 1082);
INSERT INTO `kurir` VALUES (15, 83, 1083);
INSERT INTO `kurir` VALUES (15, 84, 1084);
INSERT INTO `kurir` VALUES (15, 85, 1085);
INSERT INTO `kurir` VALUES (7, 86, 1086);
INSERT INTO `kurir` VALUES (7, 87, 1087);
INSERT INTO `kurir` VALUES (7, 88, 1088);
INSERT INTO `kurir` VALUES (7, 89, 1089);
INSERT INTO `kurir` VALUES (7, 90, 1090);

-- ----------------------------
-- Table structure for pegawai
-- ----------------------------
DROP TABLE IF EXISTS `pegawai`;
CREATE TABLE `pegawai`  (
  `KODE_PEGAWAI` int(11) NOT NULL,
  `KODE_PERUSAHAAN` int(11) NULL DEFAULT NULL,
  `KODE_GERAI` int(11) NULL DEFAULT NULL,
  `NAMA_PEGAWAI` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `JABATAN` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `TELP_PEGAWAI` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`KODE_PEGAWAI`) USING BTREE,
  INDEX `fk_gerai_pegawai`(`KODE_GERAI`) USING BTREE,
  INDEX `fk_headoffice_pegawai`(`KODE_PERUSAHAAN`) USING BTREE,
  CONSTRAINT `fk_gerai_pegawai` FOREIGN KEY (`KODE_GERAI`) REFERENCES `gerai` (`KODE_GERAI`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_headoffice_pegawai` FOREIGN KEY (`KODE_PERUSAHAAN`) REFERENCES `head_office` (`KODE_PERUSAHAAN`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pegawai
-- ----------------------------
INSERT INTO `pegawai` VALUES (1, 1, 1, 'Cahyo Hidayanto', 'Kasir/Staff', '+62-294950694');
INSERT INTO `pegawai` VALUES (2, 1, 2, 'Lulut Wahyudin', 'Kasir/Staff', '+62-584499589');
INSERT INTO `pegawai` VALUES (3, 1, 3, 'Warta Adriansyah', 'Kasir/Staff', '+62-960716846');
INSERT INTO `pegawai` VALUES (4, 1, 4, 'Hana Mulyani', 'Kasir/Staff', '+62-965248403');
INSERT INTO `pegawai` VALUES (5, 1, 5, 'Ida Mayasari ', 'Kasir/Staff', '\r\n+62-862945656');
INSERT INTO `pegawai` VALUES (6, 1, 1, 'Budi Siregar', 'Kurir', '\r\n+62-674621846');
INSERT INTO `pegawai` VALUES (7, 1, 1, 'Shakila Mulyani ', 'Kurir', '+62-709722418');
INSERT INTO `pegawai` VALUES (8, 1, 2, 'Ellis Usamah', 'Kurir', '+62-299906551');
INSERT INTO `pegawai` VALUES (9, 1, 2, 'Gaduh Sihotang', 'Kurir', '+62-593728812');
INSERT INTO `pegawai` VALUES (10, 1, 3, 'Shania Yuliarti ', 'Kurir', '+62-411419737');
INSERT INTO `pegawai` VALUES (11, 1, 3, 'Mahesa Salahudin', 'Kurir', '+62-116632215');
INSERT INTO `pegawai` VALUES (12, 1, 4, 'Elma Pertiwi', 'Kurir', '+62-227615541');
INSERT INTO `pegawai` VALUES (13, 1, 4, 'Harjasa Budiman ', 'Kurir', '+62-363279971');
INSERT INTO `pegawai` VALUES (14, 1, 5, 'Umay Maryadi', 'Kurir', '+62-107353092');
INSERT INTO `pegawai` VALUES (15, 1, 5, 'Calista Mardhiyah', 'Kurir', '+62-626324593');

-- ----------------------------
-- Table structure for penerima
-- ----------------------------
DROP TABLE IF EXISTS `penerima`;
CREATE TABLE `penerima`  (
  `KODE_PENERIMA` int(11) NOT NULL,
  `NAMA_PENERIMA` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ALAMAT_PENERIMA` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `TELP_PENERIMA` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`KODE_PENERIMA`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of penerima
-- ----------------------------
INSERT INTO `penerima` VALUES (1, 'Darmana Maryadi', 'Jl A. YANI NO 2 JAKARTA PERKANTORAN PULOMAS 1, Jakarta Utara, DKI Jakarta', '+62-855614678');
INSERT INTO `penerima` VALUES (2, 'Tedi Hutagalung', 'Jl Karmel Raya Nomor 2, Jakarta Selatan, DKI Jakarta', '+62-388286478');
INSERT INTO `penerima` VALUES (3, 'Damar Mahendra', 'Jl. Poris Indah Residence Nomor 12, Kota Tangerang', '+62-826801141');
INSERT INTO `penerima` VALUES (4, 'Tirtayasa Kurniawan', 'Perum. Cipondoh Makmur Blok C5 Nomor 1, Kota tangerang', '+62-628877145');
INSERT INTO `penerima` VALUES (5, 'Danu Prayoga', 'Jl Kabel Pendek RT 013/02, Jakarta TImur, Dki Jakarta', '+62-530054924');
INSERT INTO `penerima` VALUES (6, 'Kariman Nababan', 'Jl Tj Duren 11, Jakarta Barat, Dki Jakarta', '+62-437529486');
INSERT INTO `penerima` VALUES (7, 'Lasmanto Salahudin', 'Jl Meruya Ilir Raya 21, Jakarta Barat, Dki Jakarta', '+62-754669324');
INSERT INTO `penerima` VALUES (8, 'Balangga Budiyanto', 'Jl Mangga Dua Raya ITC Mangga Dua Bl C/24, Jakarta Utara, Dki Jakarta', '+62-214552718');
INSERT INTO `penerima` VALUES (9, 'Saka Wahyudin', 'Jl KH Hasyim Ashari Pus Niaga Roxy Mas Bl E-2/47,  Jakarta Barat,Dki Jakarta', '+62-214552718');
INSERT INTO `penerima` VALUES (10, 'Raihan Sinaga', 'Jl Pirus Cawang 12, Jakarta Utara, Dki Jakarta', '+62-579110773');
INSERT INTO `penerima` VALUES (11, 'Harsanto Tampubolon', 'Jl Buncit Raya 1, Jakarta Pusat, Dki Jakarta', '+62-456781609');
INSERT INTO `penerima` VALUES (12, 'Estiawan Dabukke', 'Jl Raya Pejuangan 88 Rukan Graha Kencana Bl AL, Dki Jakarta', '+62-980246619');
INSERT INTO `penerima` VALUES (13, 'Taufan Uwais', 'Jl. Lawang Gintung, RT.04/RW.03, Lawanggintung, Kec. Bogor Sel., Kota Bogor,', '+62-750724551');
INSERT INTO `penerima` VALUES (14, 'Reksa Ramadan', 'Jl Letda Nasir 45 RT 001/02,Bekasi Barat, Bekasi', '+62-810070327');
INSERT INTO `penerima` VALUES (15, 'Sudarsono Sugiarto', 'Jl KH Hasyim 33, Kota Tangerang', '');
INSERT INTO `penerima` VALUES (16, 'Opan Saragih', 'Jalan Raya Sawangan KM 42, Depok', '+62-607002824');
INSERT INTO `penerima` VALUES (17, 'Koko Marbun', 'Jl. Komjen Yasin Dua Kelapa, Depok', '+62-970809915');
INSERT INTO `penerima` VALUES (18, 'Paiman Prabowo', 'Jl Sunan Sedayu 1 F, Dki Jakarta', '+62-904498322');
INSERT INTO `penerima` VALUES (19, 'Bajragin Irawan', 'Jl Bintara Raya IV 37 A, Dki Jakarta', '+62-955209721');
INSERT INTO `penerima` VALUES (20, 'Cager Salahudin', 'Jl Madrasah I 543, Dki Jakarta', '+62-766146812');
INSERT INTO `penerima` VALUES (21, 'Ana Astuti', 'Jl Manukan Adi 12 A/7, Jawa Timur', '+62-809722020');
INSERT INTO `penerima` VALUES (22, 'Mila Rahayu', 'Psr Kapasan Baru Bl II/102, Jawa Timur', '+62-549485531');
INSERT INTO `penerima` VALUES (23, 'Oni Yolanda', 'Jl Mastrip 90, Jawa Timur', '+62-289908521');
INSERT INTO `penerima` VALUES (24, 'Ciaobella Hariyah', 'Jl Ngaglik 49 I, Jawa Timur', '+62-457826957');
INSERT INTO `penerima` VALUES (25, 'Ciaobella Namaga', 'Jl Raya Juanda 3, Jawa Timur', '+62-935551116');
INSERT INTO `penerima` VALUES (26, 'Elvina Kuswandari', 'Psr Bunga Kayoon Street C-26, Jawa Timur', '+62-389686308');
INSERT INTO `penerima` VALUES (27, 'Nabila Nurdiyanti', 'Jl Margomulyo Permai 6-8 Kav 2 D-G, Jawa Timur', '+62-880874394');
INSERT INTO `penerima` VALUES (28, 'Wirda Nurdiyanti', 'Jl Tidar 153, Jawa Timur', '+62-695373385');
INSERT INTO `penerima` VALUES (29, 'Restu Utami', 'Jl Tambak Pring 63, Jawa Timur', '+62-353709333');
INSERT INTO `penerima` VALUES (30, 'Maya Wastuti', 'Jl Raya Darmo 68-76, Jawa Timur', '+62-956202661');
INSERT INTO `penerima` VALUES (31, 'Gabriella Agustina', 'Jl Rungkut Tgh 3 B 24, Jawa Timur', '+62-887189363');
INSERT INTO `penerima` VALUES (32, 'Keisha Lailasari', 'Psr Bunga Bratang E/31-32, Jawa Timur', '+62-333343165');
INSERT INTO `penerima` VALUES (33, 'Vera Agustina', 'Jl Raya Kalirungkut 5 Bl L-19, Jawa Timur', '+62-473223680');
INSERT INTO `penerima` VALUES (34, 'Jane Purnawati', 'Jl Argopuro 65, Jawa Timur', '+62-369107487');
INSERT INTO `penerima` VALUES (35, 'Betania Andriani', 'Jl Menur Pumpungan 11, Jawa Timur', '+62-968783673');
INSERT INTO `penerima` VALUES (36, 'Cinthia Maryati', 'Jl. Raya Cipendawa No. 23, Bojong Menteng, Bekasi', '+62-701179052');
INSERT INTO `penerima` VALUES (37, 'Salimah Widiastuti', ' Jl Gajah Mada 146, Dki Jakarta', '+62-366590278');
INSERT INTO `penerima` VALUES (38, 'Zelaya Rahimah', 'Jl Halim Perdana Kusuma 56-60, Dki Jakarta', '+62-889806122');
INSERT INTO `penerima` VALUES (39, 'Sabrina Andriani', 'Kompl Masjid Almuhajirin Bukit Pamulang Indah Bl A-6/4, Dki Jakarta', '+62-188233557');
INSERT INTO `penerima` VALUES (40, 'Restu Purwanti', 'Kompl Tanjung Mas Raya Bl B-1/29, Dki Jakarta', '+62-159110995');
INSERT INTO `penerima` VALUES (41, 'Kambali Saptono', 'Jl Sukajadi 223, Jawa Barat', '+62-436826009');
INSERT INTO `penerima` VALUES (42, 'Bala Lazuardi', 'Jl Sancang 8, Jawa Barat', '+62-259135700');
INSERT INTO `penerima` VALUES (43, 'Candrakanta Hidayanto', 'Jl Imam Bonjol 18, Jawa Barat', '+62-114364337');
INSERT INTO `penerima` VALUES (44, 'Harsanto Jailani', 'Jl Ereh 8, Cianjur, Jawa Barat', '+62-134474894');
INSERT INTO `penerima` VALUES (45, 'Aslijan Setiawan', 'Jl Nako 10, Bandung, Jawa Barat', '+62-684825015');
INSERT INTO `penerima` VALUES (46, 'Rosman Wibowo', 'Jl Kopo Mas Regency Bl K/8, Bandung,  Jawa Barat', '+62-753523929');
INSERT INTO `penerima` VALUES (47, 'Labuh Pradana', 'Jl Tmn Sari 29, Bandung, Jawa Barat', '+62-767349424');
INSERT INTO `penerima` VALUES (48, 'Cemani Putra', 'Jl Kebon Jati 15 Lt 2, Bandung, Jawa Barat', '+62-443067382');
INSERT INTO `penerima` VALUES (49, 'Hasan Sirait', 'Jl Talaga Bodas 41 D, Bandung, Jawa Barat', '+62-810063398');
INSERT INTO `penerima` VALUES (50, 'Nasim Kurniawan', 'Jl Ir H Juanda 37, Bandung, Jawa Barat', '+62-833063865');
INSERT INTO `penerima` VALUES (51, 'Jayadi Nababan', 'Jl Ciateul 40, Ciamis, Jawa Barat', '+62-931842496');
INSERT INTO `penerima` VALUES (52, 'Muhammad Waluyo', 'Jl Ir H Juanda 37, Subang,  Jawa Barat', '+62-988963539');
INSERT INTO `penerima` VALUES (53, 'Warsita Prakasa', 'Jl BKR 178, Cirebon,  Jawa Barat', '+62-753139993');
INSERT INTO `penerima` VALUES (54, 'Ega Sinaga', 'Jl Terusan Buahbatu 34, Indramayu, Jawa Barat', '+62-186694326');
INSERT INTO `penerima` VALUES (55, 'Waluyo Thamrin', 'Jl Banceuy 79, Garut, Jawa Barat', '+62-450169158');
INSERT INTO `penerima` VALUES (56, 'Reza Maulana', 'Jl Mayjen Sutoyo 83, Semarang, Jawa Tengah', '+62-233426875');
INSERT INTO `penerima` VALUES (57, 'Nrima Saptono', 'Jl WR Supratman 26, Magelang, Jawa Tengah', '+62-954601805');
INSERT INTO `penerima` VALUES (58, 'Mulya Jailani', 'Jl Wastukencana 5, Unggaran, Jawa Tengah', '+62-986044352');
INSERT INTO `penerima` VALUES (59, 'Ridwan Lazuardi', 'Jl Raya Plumbon 345, Jawa Tengah', '+62-896796991');
INSERT INTO `penerima` VALUES (60, 'Daliono Prasetyo', 'Mall Ciputra 23/22 Lt 1, Semarang,  Jawa Tengah', '+62-917625841');
INSERT INTO `penerima` VALUES (61, 'Latika Kusmawati', 'Jl Menoreh Utr Raya 11, Semarang, Jawa Tengah', '+62-648913706');
INSERT INTO `penerima` VALUES (62, 'Nadine Halimah', 'Jl Kp Seratus II 14, Jepara, Jawa Tengah', '+62-744685732');
INSERT INTO `penerima` VALUES (63, 'Paulin Hariyah', ' Jl Bubaan 27, Semarang, Jawa Tengah', '+62-806719127');
INSERT INTO `penerima` VALUES (64, 'Tiara Novitasari', 'Jl Supriyadi 114, Semarang, Jawa Tengah', '+62-489578551');
INSERT INTO `penerima` VALUES (65, 'Samiah Pudjiastuti', 'Jl Raya Senduro 34, Pekalongan, Jawa Tengah', '+62-657692897');
INSERT INTO `penerima` VALUES (66, 'Tami Wijayanti', 'Jl Supriyadi 114, Kudus, Jawa Tengah', '+62-445649975');
INSERT INTO `penerima` VALUES (67, 'Julia Oktaviani', 'Jl Margomulyo 68 East Kav 16-17,  Jawa tengah', '+62-140292689');
INSERT INTO `penerima` VALUES (68, 'Ophelia Oktaviani', 'Jl Sidobali UH II/402, Jawa Tengah', '+62-539122963');
INSERT INTO `penerima` VALUES (69, 'Karimah Mardhiyah', 'Jl Ring Rd Maguwoharjo, Jawa Tengah', '+62-973637220');
INSERT INTO `penerima` VALUES (70, 'Calista Uyainah', 'Jl Brigjen Katamso 55, Jawa Tengah', '+62-897325122');
INSERT INTO `penerima` VALUES (71, 'Queen Anggraini', 'Jl Jaksa Agung Suprapto Nomor 22. Kota Yogyakarta', '+62-656481511');
INSERT INTO `penerima` VALUES (72, 'Cornelia Uyainah', 'Jl Jolotundo Baru 26, Kota Yogyakarta', '+62-249361673');
INSERT INTO `penerima` VALUES (73, 'Michelle Pudjiastuti', 'Jl Sultan Agung Kav 7/106, Kabupaten Bantul', '+62-649415277');
INSERT INTO `penerima` VALUES (74, 'Zelaya Safitri', 'Jl Bengawan 21, Kabupaten Gunungkidul', '+62-766596982');
INSERT INTO `penerima` VALUES (75, 'Juli Rahimah', 'Jalan Magelang Nomor 5, Kabupaten Sleman', '+62-543921146');
INSERT INTO `penerima` VALUES (76, 'Ika Nuraini', 'Jalan Kaliurang 12, Kota Yogyakarta', '+62-752637856');
INSERT INTO `penerima` VALUES (77, 'Talia Uyainah', 'SRC Wijaya Bantul 2, Kabupaten Bantul', '+62-590993089');
INSERT INTO `penerima` VALUES (78, 'Ciaobella Haryanti', 'Merapi Park Yogyakarta, Kota Yogyakarta', '+62-518870449');
INSERT INTO `penerima` VALUES (79, 'Citra Hartati', 'Bukit Klangon, Kota Yogyakarta', '+62-362928796');
INSERT INTO `penerima` VALUES (80, 'Rina Kusmawati', 'Pantai Wonosari, Kabupaten Gunung Kidul', '+62-407752011');
INSERT INTO `penerima` VALUES (81, 'Jasmani Hakim', 'Dinas Tenaga Kerja, Kabupaten Bantul', '+62-364253124');
INSERT INTO `penerima` VALUES (82, 'Prayitna Prasasta', 'Museum Affandi, Kabupaten Bantul', '+62-597785986');
INSERT INTO `penerima` VALUES (83, 'Mumpuni Hakim', 'Kantor Kecamatan Nanggulan, Kabupaten Kulon Progo', '+62-556312924');
INSERT INTO `penerima` VALUES (84, 'Kala Kurniawan', 'Kantor Kapanewon Pengasih, Kabupaten Kulon Progo', '+62-580305849');
INSERT INTO `penerima` VALUES (85, 'Laswi Mansur', 'Villa Kalibiru Nomor 41, Kabupaten Kulon Progo', '+62-341452813');
INSERT INTO `penerima` VALUES (86, 'Eka Prayoga', 'Jl Kertamurti 2, Jakarta Utara, Dki Jakarta', '+62-315305562');
INSERT INTO `penerima` VALUES (87, 'Mulyono Uwais', 'Jl Raya Kebayoran Lama 2, Dki Jakarta', '+62-750994323');
INSERT INTO `penerima` VALUES (88, 'Lurhur Setiawan', 'Kompl Ketapang Indah Bl B-2/28, Dki Jakarta', '+62-447822640');
INSERT INTO `penerima` VALUES (89, 'Hartaka Widodo', 'Jl Kemanggisan Ilir III 12 RT 007/13, Dki Jakarta', '+62-746315114');
INSERT INTO `penerima` VALUES (90, 'Naruto Uzumaki', 'Jl Pengangsaan 1, Jakarta Utara, DKI Jakarta', '+62-854346723');

-- ----------------------------
-- Table structure for pengirim
-- ----------------------------
DROP TABLE IF EXISTS `pengirim`;
CREATE TABLE `pengirim`  (
  `KODE_PENGIRIM` int(11) NOT NULL,
  `NAMA_PENGIRIM` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `TELP_PENGIRIM` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`KODE_PENGIRIM`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pengirim
-- ----------------------------
INSERT INTO `pengirim` VALUES (1, 'Nrima Kuswoyo', '+62-240966108');
INSERT INTO `pengirim` VALUES (2, 'Darimin Uwais', '+62-210121365');
INSERT INTO `pengirim` VALUES (3, 'Kadir Winarno', '+62-337186976');
INSERT INTO `pengirim` VALUES (4, 'Aswani Sihombing', '+62-140688538');
INSERT INTO `pengirim` VALUES (5, 'Kasusra Zulkarnain', '+62-890131410');
INSERT INTO `pengirim` VALUES (6, 'Kurnia Maryadi', '+62-526914163');
INSERT INTO `pengirim` VALUES (7, 'Akarsana Lazuardi', '+62-504242637');
INSERT INTO `pengirim` VALUES (8, 'Cayadi Pratama', '+62-687795174');
INSERT INTO `pengirim` VALUES (9, 'Cakrabuana Gunawan', '+62-250248138');
INSERT INTO `pengirim` VALUES (10, 'Purwadi Mangunsong', '+62-710901603');
INSERT INTO `pengirim` VALUES (11, 'Atma Marpaung', '+62-490369222');
INSERT INTO `pengirim` VALUES (12, 'Pandu Adriansyah', '+62-516960615');
INSERT INTO `pengirim` VALUES (13, 'Kemal Thamrin', '+62-495589716');
INSERT INTO `pengirim` VALUES (14, 'Gantar Napitupulu', '+62-102289367');
INSERT INTO `pengirim` VALUES (15, 'Asmianto Budiyanto', '+62-404743499');
INSERT INTO `pengirim` VALUES (16, 'Lasmanto Sihotang', '+62-252705987');
INSERT INTO `pengirim` VALUES (17, 'Garda Nainggolan', '+62-453802668');
INSERT INTO `pengirim` VALUES (18, 'Cakrajiya Prasasta', '+62-685906791');
INSERT INTO `pengirim` VALUES (19, 'Margana Gunarto', '+62-842960998');
INSERT INTO `pengirim` VALUES (20, 'Dirja Napitupulu', '+62-909901543');
INSERT INTO `pengirim` VALUES (21, 'Mega Putri', '+62-134923284');
INSERT INTO `pengirim` VALUES (22, 'Faizah Handayani', '+62-998182925');
INSERT INTO `pengirim` VALUES (23, 'Belinda Yolanda', '+62-166505107');
INSERT INTO `pengirim` VALUES (24, 'Devi Aryani', '+62-490887780');
INSERT INTO `pengirim` VALUES (25, 'Titin Rahayu', '+62-779732912');
INSERT INTO `pengirim` VALUES (26, 'Amelia Rahayu', '+62-947685724');
INSERT INTO `pengirim` VALUES (27, 'Vanesa Farida', '+62-406688855');
INSERT INTO `pengirim` VALUES (28, 'Dewi Agustina', '+62-126741892');
INSERT INTO `pengirim` VALUES (29, 'Yance Maryati', '+62-837417124');
INSERT INTO `pengirim` VALUES (30, 'Titi Winarsih', '+62-372344841');
INSERT INTO `pengirim` VALUES (31, 'Cindy Andriani', '+62-261488591');
INSERT INTO `pengirim` VALUES (32, 'Dina Lestari', '+62-842466749');
INSERT INTO `pengirim` VALUES (33, 'Umi Hasanah', '+62-371754024');
INSERT INTO `pengirim` VALUES (34, 'Usyi Nasyiah', '+62-933646243');
INSERT INTO `pengirim` VALUES (35, 'Lintang Hartati', '+62-933936647');
INSERT INTO `pengirim` VALUES (36, 'Raina Widiastuti', '+62-520886567');
INSERT INTO `pengirim` VALUES (37, 'Umi Rahmawati', '+62-321573817');
INSERT INTO `pengirim` VALUES (38, 'Ratna Usamah', '+62-573544170');
INSERT INTO `pengirim` VALUES (39, 'Ifa Lailasari', '+62-751522527');
INSERT INTO `pengirim` VALUES (40, 'Restu Wulandari', '+62-265952286');
INSERT INTO `pengirim` VALUES (41, 'Harsana Tamba', '+62-756075819');
INSERT INTO `pengirim` VALUES (42, 'Caturangga Manullang', '+62-322601178');
INSERT INTO `pengirim` VALUES (43, 'Danang Megantara', '+62-781466616');
INSERT INTO `pengirim` VALUES (44, 'Yusuf Siregar', '+62-197024797');
INSERT INTO `pengirim` VALUES (45, 'Dacin Pradipta', '+62-436830748');
INSERT INTO `pengirim` VALUES (46, 'Jasmani Prasetyo', '+62-973353329');
INSERT INTO `pengirim` VALUES (47, 'Kairav Suwarno', '+62-750590762');
INSERT INTO `pengirim` VALUES (48, 'Arsipatra Hidayanto', '+62-487104184');
INSERT INTO `pengirim` VALUES (49, 'Darmaji Putra', '+62-357874227');
INSERT INTO `pengirim` VALUES (50, 'Kamal Mansur', '+62-461827335');
INSERT INTO `pengirim` VALUES (51, 'Harjasa Maulana', '+62-334550971');
INSERT INTO `pengirim` VALUES (52, 'Rizki Wasita', '+62-547832152');
INSERT INTO `pengirim` VALUES (53, 'Eka Iswahyudi', '+62-741496359');
INSERT INTO `pengirim` VALUES (54, 'Dadi Natsir', '+62-848123366');
INSERT INTO `pengirim` VALUES (55, 'Candra Saragih', '+62-880440336');
INSERT INTO `pengirim` VALUES (56, 'Purwadi Waluyo', '+62-462986670');
INSERT INTO `pengirim` VALUES (57, 'Enteng Kuswoyo', '+62-739162607');
INSERT INTO `pengirim` VALUES (58, 'Bakianto Sihombing', '+62-521177641');
INSERT INTO `pengirim` VALUES (59, 'Lanang Hutasoit', '+62-130360568');
INSERT INTO `pengirim` VALUES (60, 'Jati Prasetya', '+62-167257471');
INSERT INTO `pengirim` VALUES (61, 'Paris Yolanda', '+62-589738481');
INSERT INTO `pengirim` VALUES (62, 'Zahra Agustina', '+62-534752219');
INSERT INTO `pengirim` VALUES (63, 'Amalia Novitasari', '+62-715315167');
INSERT INTO `pengirim` VALUES (64, 'Melinda Rahimah', '+62-727837366');
INSERT INTO `pengirim` VALUES (65, 'Melinda Palastri', '+62-469503456');
INSERT INTO `pengirim` VALUES (66, 'Elma Hartati', '+62-405591672');
INSERT INTO `pengirim` VALUES (67, 'Kiandra Palastri', '+62-941714612');
INSERT INTO `pengirim` VALUES (68, 'Tina Zulaika', '+62-326228137');
INSERT INTO `pengirim` VALUES (69, 'Melinda Agustina', '+62-510240301');
INSERT INTO `pengirim` VALUES (70, 'Karen Kusmawati', '+62-742085030');
INSERT INTO `pengirim` VALUES (71, 'Ida Wijayanti', '+62-653800150');
INSERT INTO `pengirim` VALUES (72, 'Winda Handayani', '+62-434907737');
INSERT INTO `pengirim` VALUES (73, 'Tira Laksita', '+62-221714361');
INSERT INTO `pengirim` VALUES (74, 'Agnes Astuti', '+62-841261011');
INSERT INTO `pengirim` VALUES (75, 'Hana Wahyuni', '+62-165233690');
INSERT INTO `pengirim` VALUES (76, 'Tania Wulandari', '+62-230912186');
INSERT INTO `pengirim` VALUES (77, 'Widya Nuraini', '+62-779539165');
INSERT INTO `pengirim` VALUES (78, 'Sakura Hasanah', '+62-984224832');
INSERT INTO `pengirim` VALUES (79, 'Fitriani Usamah', '+62-339682110');
INSERT INTO `pengirim` VALUES (80, 'Clara Maryati', '+62-115639068');
INSERT INTO `pengirim` VALUES (81, 'Astuti Mastuti', '+62-997133033');
INSERT INTO `pengirim` VALUES (82, 'Sanjaya Dhani', '+62-373500667');
INSERT INTO `pengirim` VALUES (83, 'Lukas Wijaya', '+62-141054180');
INSERT INTO `pengirim` VALUES (84, 'Siti Badriyah', '+62-641985506');
INSERT INTO `pengirim` VALUES (85, 'Siska Eka', '+62-135670098');
INSERT INTO `pengirim` VALUES (86, 'Agus Prayudha', '+62-182760256');
INSERT INTO `pengirim` VALUES (87, 'Natalie Oka', '+62-927178666');
INSERT INTO `pengirim` VALUES (88, 'Santa Jember', '+62-570669818');
INSERT INTO `pengirim` VALUES (89, 'Joko Wisudorso', '+62-134924686');
INSERT INTO `pengirim` VALUES (90, 'Jonathan Aditya Puryanto', '+62-240966421');

-- ----------------------------
-- Table structure for pengiriman
-- ----------------------------
DROP TABLE IF EXISTS `pengiriman`;
CREATE TABLE `pengiriman`  (
  `KODE_PENGIRIMAN` int(11) NOT NULL,
  `KODE_PERUSAHAAN` int(11) NOT NULL,
  `KODE_GERAI` int(11) NOT NULL,
  `KODE_BARANG` int(11) NULL DEFAULT NULL,
  `KODE_PENGIRIM` int(11) NULL DEFAULT NULL,
  `KODE_PENERIMA` int(11) NULL DEFAULT NULL,
  `GERAI_TUJUAN` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`KODE_PENGIRIMAN`) USING BTREE,
  INDEX `fk_gerai_pengiriman`(`KODE_GERAI`) USING BTREE,
  INDEX `fk_headoffice_pengiriman`(`KODE_PERUSAHAAN`) USING BTREE,
  INDEX `fk_barang_pengiriman`(`KODE_BARANG`) USING BTREE,
  INDEX `fk_pengirim_pengiriman`(`KODE_PENGIRIM`) USING BTREE,
  INDEX `fk_penerima_pengiriman`(`KODE_PENERIMA`) USING BTREE,
  INDEX `fk_gerai_pengiriman_tujuan`(`GERAI_TUJUAN`) USING BTREE,
  CONSTRAINT `fk_barang_pengiriman` FOREIGN KEY (`KODE_BARANG`) REFERENCES `barang` (`KODE_BARANG`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_gerai_pengiriman` FOREIGN KEY (`KODE_GERAI`) REFERENCES `gerai` (`KODE_GERAI`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_gerai_pengiriman_tujuan` FOREIGN KEY (`GERAI_TUJUAN`) REFERENCES `gerai` (`KODE_GERAI`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_headoffice_pengiriman` FOREIGN KEY (`KODE_PERUSAHAAN`) REFERENCES `head_office` (`KODE_PERUSAHAAN`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_penerima_pengiriman` FOREIGN KEY (`KODE_PENERIMA`) REFERENCES `penerima` (`KODE_PENERIMA`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_pengirim_pengiriman` FOREIGN KEY (`KODE_PENGIRIM`) REFERENCES `pengirim` (`KODE_PENGIRIM`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pengiriman
-- ----------------------------
INSERT INTO `pengiriman` VALUES (1001, 1, 1, 1, 1, 1, 1);
INSERT INTO `pengiriman` VALUES (1002, 1, 1, 2, 2, 2, 1);
INSERT INTO `pengiriman` VALUES (1003, 1, 1, 3, 3, 3, 1);
INSERT INTO `pengiriman` VALUES (1004, 1, 1, 4, 4, 4, 1);
INSERT INTO `pengiriman` VALUES (1005, 1, 1, 5, 5, 5, 1);
INSERT INTO `pengiriman` VALUES (1006, 1, 1, 6, 6, 6, 1);
INSERT INTO `pengiriman` VALUES (1007, 1, 1, 7, 7, 7, 1);
INSERT INTO `pengiriman` VALUES (1008, 1, 1, 8, 8, 8, 1);
INSERT INTO `pengiriman` VALUES (1009, 1, 1, 9, 9, 9, 1);
INSERT INTO `pengiriman` VALUES (1010, 1, 1, 10, 10, 10, 1);
INSERT INTO `pengiriman` VALUES (1011, 1, 3, 11, 11, 11, 1);
INSERT INTO `pengiriman` VALUES (1012, 1, 3, 12, 12, 12, 1);
INSERT INTO `pengiriman` VALUES (1013, 1, 3, 13, 13, 13, 1);
INSERT INTO `pengiriman` VALUES (1014, 1, 2, 14, 14, 14, 1);
INSERT INTO `pengiriman` VALUES (1015, 1, 2, 15, 15, 15, 1);
INSERT INTO `pengiriman` VALUES (1016, 1, 2, 16, 16, 16, 1);
INSERT INTO `pengiriman` VALUES (1017, 1, 4, 17, 17, 17, 1);
INSERT INTO `pengiriman` VALUES (1018, 1, 4, 18, 18, 18, 1);
INSERT INTO `pengiriman` VALUES (1019, 1, 5, 19, 19, 19, 1);
INSERT INTO `pengiriman` VALUES (1020, 1, 5, 20, 20, 20, 1);
INSERT INTO `pengiriman` VALUES (1021, 1, 2, 21, 21, 21, 2);
INSERT INTO `pengiriman` VALUES (1022, 1, 2, 22, 22, 22, 2);
INSERT INTO `pengiriman` VALUES (1023, 1, 2, 23, 23, 23, 2);
INSERT INTO `pengiriman` VALUES (1024, 1, 2, 24, 24, 24, 2);
INSERT INTO `pengiriman` VALUES (1025, 1, 2, 25, 25, 25, 2);
INSERT INTO `pengiriman` VALUES (1026, 1, 2, 26, 26, 26, 2);
INSERT INTO `pengiriman` VALUES (1027, 1, 2, 27, 27, 27, 2);
INSERT INTO `pengiriman` VALUES (1028, 1, 2, 28, 28, 28, 2);
INSERT INTO `pengiriman` VALUES (1029, 1, 2, 29, 29, 29, 2);
INSERT INTO `pengiriman` VALUES (1030, 1, 2, 30, 30, 30, 2);
INSERT INTO `pengiriman` VALUES (1031, 1, 3, 31, 31, 31, 2);
INSERT INTO `pengiriman` VALUES (1032, 1, 1, 32, 32, 32, 2);
INSERT INTO `pengiriman` VALUES (1033, 1, 4, 33, 33, 33, 2);
INSERT INTO `pengiriman` VALUES (1034, 1, 5, 34, 34, 34, 2);
INSERT INTO `pengiriman` VALUES (1035, 1, 3, 35, 35, 35, 2);
INSERT INTO `pengiriman` VALUES (1036, 1, 1, 36, 36, 36, 1);
INSERT INTO `pengiriman` VALUES (1037, 1, 1, 37, 37, 37, 1);
INSERT INTO `pengiriman` VALUES (1038, 1, 1, 38, 38, 38, 1);
INSERT INTO `pengiriman` VALUES (1039, 1, 1, 39, 39, 39, 1);
INSERT INTO `pengiriman` VALUES (1040, 1, 1, 40, 40, 40, 1);
INSERT INTO `pengiriman` VALUES (1041, 1, 3, 41, 41, 41, 3);
INSERT INTO `pengiriman` VALUES (1042, 1, 3, 42, 42, 42, 3);
INSERT INTO `pengiriman` VALUES (1043, 1, 3, 43, 43, 43, 3);
INSERT INTO `pengiriman` VALUES (1044, 1, 3, 44, 44, 44, 3);
INSERT INTO `pengiriman` VALUES (1045, 1, 3, 45, 45, 45, 3);
INSERT INTO `pengiriman` VALUES (1046, 1, 3, 46, 46, 46, 3);
INSERT INTO `pengiriman` VALUES (1047, 1, 3, 47, 47, 47, 3);
INSERT INTO `pengiriman` VALUES (1048, 1, 3, 48, 48, 48, 3);
INSERT INTO `pengiriman` VALUES (1049, 1, 3, 49, 49, 49, 3);
INSERT INTO `pengiriman` VALUES (1050, 1, 3, 50, 50, 50, 3);
INSERT INTO `pengiriman` VALUES (1051, 1, 1, 51, 51, 51, 3);
INSERT INTO `pengiriman` VALUES (1052, 1, 5, 52, 52, 52, 3);
INSERT INTO `pengiriman` VALUES (1053, 1, 4, 53, 53, 53, 3);
INSERT INTO `pengiriman` VALUES (1054, 1, 1, 54, 54, 54, 3);
INSERT INTO `pengiriman` VALUES (1055, 1, 2, 55, 55, 55, 3);
INSERT INTO `pengiriman` VALUES (1056, 1, 4, 56, 56, 56, 4);
INSERT INTO `pengiriman` VALUES (1057, 1, 4, 57, 57, 57, 4);
INSERT INTO `pengiriman` VALUES (1058, 1, 4, 58, 58, 58, 4);
INSERT INTO `pengiriman` VALUES (1059, 1, 4, 59, 59, 59, 4);
INSERT INTO `pengiriman` VALUES (1060, 1, 4, 60, 60, 60, 4);
INSERT INTO `pengiriman` VALUES (1061, 1, 4, 61, 61, 61, 4);
INSERT INTO `pengiriman` VALUES (1062, 1, 4, 62, 62, 62, 4);
INSERT INTO `pengiriman` VALUES (1063, 1, 4, 63, 63, 63, 4);
INSERT INTO `pengiriman` VALUES (1064, 1, 4, 64, 64, 64, 4);
INSERT INTO `pengiriman` VALUES (1065, 1, 4, 65, 65, 65, 4);
INSERT INTO `pengiriman` VALUES (1066, 1, 2, 66, 66, 66, 4);
INSERT INTO `pengiriman` VALUES (1067, 1, 5, 67, 67, 67, 4);
INSERT INTO `pengiriman` VALUES (1068, 1, 2, 68, 68, 68, 4);
INSERT INTO `pengiriman` VALUES (1069, 1, 3, 69, 69, 69, 4);
INSERT INTO `pengiriman` VALUES (1070, 1, 1, 70, 70, 70, 4);
INSERT INTO `pengiriman` VALUES (1071, 1, 5, 71, 71, 71, 5);
INSERT INTO `pengiriman` VALUES (1072, 1, 5, 72, 72, 72, 5);
INSERT INTO `pengiriman` VALUES (1073, 1, 5, 73, 73, 73, 5);
INSERT INTO `pengiriman` VALUES (1074, 1, 5, 74, 74, 74, 5);
INSERT INTO `pengiriman` VALUES (1075, 1, 5, 75, 75, 75, 5);
INSERT INTO `pengiriman` VALUES (1076, 1, 5, 76, 76, 76, 5);
INSERT INTO `pengiriman` VALUES (1077, 1, 5, 77, 77, 77, 5);
INSERT INTO `pengiriman` VALUES (1078, 1, 5, 78, 78, 78, 5);
INSERT INTO `pengiriman` VALUES (1079, 1, 5, 79, 79, 79, 5);
INSERT INTO `pengiriman` VALUES (1080, 1, 5, 80, 80, 80, 5);
INSERT INTO `pengiriman` VALUES (1081, 1, 2, 81, 81, 81, 5);
INSERT INTO `pengiriman` VALUES (1082, 1, 1, 82, 82, 82, 5);
INSERT INTO `pengiriman` VALUES (1083, 1, 4, 83, 83, 83, 5);
INSERT INTO `pengiriman` VALUES (1084, 1, 3, 84, 84, 84, 5);
INSERT INTO `pengiriman` VALUES (1085, 1, 1, 85, 85, 85, 5);
INSERT INTO `pengiriman` VALUES (1086, 1, 1, 86, 86, 86, 1);
INSERT INTO `pengiriman` VALUES (1087, 1, 1, 87, 87, 87, 1);
INSERT INTO `pengiriman` VALUES (1088, 1, 1, 88, 88, 88, 1);
INSERT INTO `pengiriman` VALUES (1089, 1, 1, 89, 89, 89, 1);
INSERT INTO `pengiriman` VALUES (1090, 1, 1, 90, 90, 90, 1);

-- ----------------------------
-- Table structure for transaksi
-- ----------------------------
DROP TABLE IF EXISTS `transaksi`;
CREATE TABLE `transaksi`  (
  `NO_TRANSAKSI` int(11) NOT NULL,
  `KODE_PERUSAHAAN` int(11) NOT NULL,
  `KODE_GERAI` int(11) NOT NULL,
  `KODE_KASIR` int(11) NULL DEFAULT NULL,
  `KODE_PENGIRIMAN` int(11) NOT NULL,
  `KODE_BARANG` int(11) NOT NULL,
  `TGL_TRANSAKSI` date NOT NULL,
  `JENIS_PENGIRIMAN` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `BIAYA_ASURANSI` float NULL DEFAULT NULL,
  `BIAYA_KIRIM` float NOT NULL,
  `TOTAL` float NOT NULL,
  PRIMARY KEY (`NO_TRANSAKSI`) USING BTREE,
  INDEX `fk_headoffice_transaksi`(`KODE_PERUSAHAAN`) USING BTREE,
  INDEX `fk_gerai_transaksi`(`KODE_GERAI`) USING BTREE,
  INDEX `fk_kasir_transaksi`(`KODE_KASIR`) USING BTREE,
  INDEX `fk_pengiriman_transaksi`(`KODE_PENGIRIMAN`) USING BTREE,
  INDEX `fk_barang_transaksi`(`KODE_BARANG`) USING BTREE,
  CONSTRAINT `fk_barang_transaksi` FOREIGN KEY (`KODE_BARANG`) REFERENCES `barang` (`KODE_BARANG`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_gerai_transaksi` FOREIGN KEY (`KODE_GERAI`) REFERENCES `gerai` (`KODE_GERAI`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_headoffice_transaksi` FOREIGN KEY (`KODE_PERUSAHAAN`) REFERENCES `head_office` (`KODE_PERUSAHAAN`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_kasir_transaksi` FOREIGN KEY (`KODE_KASIR`) REFERENCES `kasir` (`KODE_KASIR`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_pengiriman_transaksi` FOREIGN KEY (`KODE_PENGIRIMAN`) REFERENCES `pengiriman` (`KODE_PENGIRIMAN`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of transaksi
-- ----------------------------
INSERT INTO `transaksi` VALUES (1, 1, 1, 1, 1001, 1, '2023-01-01', 'Reguler', 0, 20000, 20000);
INSERT INTO `transaksi` VALUES (2, 1, 1, 1, 1002, 2, '2023-01-02', 'Reguler', 0, 10000, 10000);
INSERT INTO `transaksi` VALUES (3, 1, 1, 1, 1003, 3, '2023-01-03', 'Reguler', 0, 10000, 10000);
INSERT INTO `transaksi` VALUES (4, 1, 1, 1, 1004, 4, '2023-01-04', 'Reguler', 0, 10000, 10000);
INSERT INTO `transaksi` VALUES (5, 1, 1, 1, 1005, 5, '2023-01-05', 'Reguler', 0, 10000, 10000);
INSERT INTO `transaksi` VALUES (6, 1, 1, 1, 1006, 6, '2023-01-06', 'Reguler', 0, 10000, 10000);
INSERT INTO `transaksi` VALUES (7, 1, 1, 1, 1007, 7, '2023-01-07', 'Reguler', 0, 10000, 10000);
INSERT INTO `transaksi` VALUES (8, 1, 1, 1, 1008, 8, '2023-01-08', 'Reguler', 0, 10000, 10000);
INSERT INTO `transaksi` VALUES (9, 1, 1, 1, 1009, 9, '2023-01-09', 'Reguler', 0, 10000, 10000);
INSERT INTO `transaksi` VALUES (10, 1, 1, 1, 1010, 10, '2023-01-10', 'Reguler', 0, 10000, 10000);
INSERT INTO `transaksi` VALUES (11, 1, 3, 3, 1011, 11, '2023-01-11', 'Reguler', 0, 20000, 20000);
INSERT INTO `transaksi` VALUES (12, 1, 3, 3, 1012, 12, '2023-01-12', 'Reguler', 0, 60000, 60000);
INSERT INTO `transaksi` VALUES (13, 1, 3, 3, 1013, 13, '2023-01-13', 'Reguler', 0, 20000, 20000);
INSERT INTO `transaksi` VALUES (14, 1, 2, 2, 1014, 14, '2023-01-14', 'Reguler', 0, 20000, 20000);
INSERT INTO `transaksi` VALUES (15, 1, 2, 2, 1015, 15, '2023-01-15', 'Reguler', 0, 20000, 20000);
INSERT INTO `transaksi` VALUES (16, 1, 2, 2, 1016, 16, '2023-01-16', 'Reguler', 0, 20000, 20000);
INSERT INTO `transaksi` VALUES (17, 1, 4, 4, 1017, 17, '2023-01-17', 'Reguler', 0, 20000, 20000);
INSERT INTO `transaksi` VALUES (18, 1, 4, 4, 1018, 18, '2023-01-18', 'Reguler', 0, 20000, 20000);
INSERT INTO `transaksi` VALUES (19, 1, 5, 5, 1019, 19, '2023-01-19', 'Reguler', 0, 20000, 20000);
INSERT INTO `transaksi` VALUES (20, 1, 5, 5, 1020, 20, '2023-01-20', 'Reguler', 0, 20000, 20000);
INSERT INTO `transaksi` VALUES (21, 1, 2, 2, 1021, 21, '2023-01-21', 'Reguler', 0, 10000, 10000);
INSERT INTO `transaksi` VALUES (22, 1, 2, 2, 1022, 22, '2023-01-22', 'Reguler', 0, 10000, 10000);
INSERT INTO `transaksi` VALUES (23, 1, 2, 2, 1023, 23, '2023-01-23', 'Reguler', 0, 10000, 10000);
INSERT INTO `transaksi` VALUES (24, 1, 2, 2, 1024, 24, '2023-01-24', 'Reguler', 0, 10000, 10000);
INSERT INTO `transaksi` VALUES (25, 1, 2, 2, 1025, 25, '2023-01-25', 'Reguler', 0, 10000, 10000);
INSERT INTO `transaksi` VALUES (26, 1, 2, 2, 1026, 26, '2023-01-26', 'Reguler', 0, 10000, 10000);
INSERT INTO `transaksi` VALUES (27, 1, 2, 2, 1026, 27, '2023-01-27', 'Reguler', 0, 10000, 10000);
INSERT INTO `transaksi` VALUES (28, 1, 2, 2, 1028, 28, '2023-01-28', 'Reguler', 0, 10000, 10000);
INSERT INTO `transaksi` VALUES (29, 1, 2, 2, 1029, 29, '2023-01-29', 'Reguler', 0, 10000, 10000);
INSERT INTO `transaksi` VALUES (30, 1, 2, 2, 1030, 30, '2023-01-30', 'Reguler', 0, 10000, 10000);
INSERT INTO `transaksi` VALUES (31, 1, 3, 3, 1031, 31, '2023-01-31', 'Reguler', 30000, 60000, 90000);
INSERT INTO `transaksi` VALUES (32, 1, 1, 1, 1032, 32, '2023-02-01', 'Reguler', 0, 20000, 20000);
INSERT INTO `transaksi` VALUES (33, 1, 4, 4, 1033, 33, '2023-02-02', 'Reguler', 0, 20000, 20000);
INSERT INTO `transaksi` VALUES (34, 1, 5, 5, 1034, 34, '2023-02-03', 'Reguler', 10000, 20000, 30000);
INSERT INTO `transaksi` VALUES (35, 1, 3, 3, 1035, 35, '2023-02-04', 'Reguler', 0, 20000, 20000);
INSERT INTO `transaksi` VALUES (36, 1, 1, 1, 1036, 36, '2023-02-05', 'Reguler', 0, 10000, 10000);
INSERT INTO `transaksi` VALUES (37, 1, 1, 1, 1037, 37, '2023-02-06', 'Reguler', 0, 10000, 10000);
INSERT INTO `transaksi` VALUES (38, 1, 1, 1, 1038, 38, '2023-02-07', 'Reguler', 0, 10000, 10000);
INSERT INTO `transaksi` VALUES (39, 1, 1, 1, 1039, 39, '2023-02-08', 'Reguler', 0, 10000, 10000);
INSERT INTO `transaksi` VALUES (40, 1, 1, 1, 1040, 40, '2023-02-09', 'Reguler', 0, 10000, 10000);
INSERT INTO `transaksi` VALUES (41, 1, 3, 3, 1041, 41, '2023-02-10', 'Reguler', 0, 10000, 10000);
INSERT INTO `transaksi` VALUES (42, 1, 3, 3, 1042, 42, '2023-02-11', 'Reguler', 0, 10000, 10000);
INSERT INTO `transaksi` VALUES (43, 1, 3, 3, 1043, 43, '2023-02-12', 'Reguler', 0, 10000, 10000);
INSERT INTO `transaksi` VALUES (44, 1, 3, 3, 1044, 44, '2023-02-13', 'Reguler', 0, 10000, 10000);
INSERT INTO `transaksi` VALUES (45, 1, 3, 3, 1045, 45, '2023-02-14', 'Reguler', 0, 10000, 10000);
INSERT INTO `transaksi` VALUES (46, 1, 3, 3, 1046, 46, '2023-02-15', 'Reguler', 0, 10000, 10000);
INSERT INTO `transaksi` VALUES (47, 1, 3, 3, 1047, 47, '2023-02-16', 'Reguler', 0, 10000, 10000);
INSERT INTO `transaksi` VALUES (48, 1, 3, 3, 1048, 48, '2023-02-17', 'Reguler', 0, 10000, 10000);
INSERT INTO `transaksi` VALUES (49, 1, 3, 3, 1049, 49, '2023-02-18', 'Reguler', 0, 10000, 10000);
INSERT INTO `transaksi` VALUES (50, 1, 3, 3, 1050, 50, '2023-02-19', 'Reguler', 0, 20000, 20000);
INSERT INTO `transaksi` VALUES (51, 1, 1, 1, 1051, 51, '2023-02-20', 'Reguler', 0, 40000, 40000);
INSERT INTO `transaksi` VALUES (52, 1, 5, 5, 1052, 52, '2023-02-21', 'Reguler', 0, 20000, 20000);
INSERT INTO `transaksi` VALUES (53, 1, 4, 4, 1053, 53, '2023-02-22', 'Reguler', 0, 20000, 20000);
INSERT INTO `transaksi` VALUES (54, 1, 1, 1, 1054, 54, '2023-02-23', 'Reguler', 0, 40000, 40000);
INSERT INTO `transaksi` VALUES (55, 1, 2, 2, 1055, 55, '2023-02-24', 'Reguler', 0, 20000, 20000);
INSERT INTO `transaksi` VALUES (56, 1, 4, 4, 1056, 56, '2023-02-25', 'Reguler', 0, 10000, 10000);
INSERT INTO `transaksi` VALUES (57, 1, 4, 4, 1057, 57, '2023-02-26', 'Reguler', 15000, 30000, 45000);
INSERT INTO `transaksi` VALUES (58, 1, 4, 4, 1058, 58, '2023-02-27', 'Reguler', 15000, 30000, 45000);
INSERT INTO `transaksi` VALUES (59, 1, 4, 4, 1059, 59, '2023-02-28', 'Reguler', 0, 10000, 10000);
INSERT INTO `transaksi` VALUES (60, 1, 4, 4, 1060, 60, '2023-03-01', 'Reguler', 0, 10000, 10000);
INSERT INTO `transaksi` VALUES (61, 1, 4, 4, 1061, 61, '2023-03-02', 'Reguler', 0, 10000, 10000);
INSERT INTO `transaksi` VALUES (62, 1, 4, 4, 1062, 62, '2023-03-03', 'Reguler', 0, 10000, 10000);
INSERT INTO `transaksi` VALUES (63, 1, 4, 4, 1063, 63, '2023-03-05', 'Reguler', 0, 10000, 10000);
INSERT INTO `transaksi` VALUES (64, 1, 4, 4, 1064, 64, '2023-03-06', 'Reguler', 0, 10000, 10000);
INSERT INTO `transaksi` VALUES (65, 1, 4, 4, 1065, 65, '2023-03-07', 'Reguler', 0, 10000, 10000);
INSERT INTO `transaksi` VALUES (66, 1, 2, 2, 1066, 66, '2023-03-08', 'Reguler', 0, 20000, 20000);
INSERT INTO `transaksi` VALUES (67, 1, 5, 5, 1067, 67, '2023-03-09', 'Reguler', 0, 20000, 20000);
INSERT INTO `transaksi` VALUES (68, 1, 2, 2, 1068, 68, '2023-03-10', 'Reguler', 0, 20000, 20000);
INSERT INTO `transaksi` VALUES (69, 1, 3, 3, 1069, 69, '2023-03-11', 'Reguler', 0, 20000, 20000);
INSERT INTO `transaksi` VALUES (70, 1, 1, 1, 1070, 70, '2023-03-12', 'Reguler', 20000, 40000, 60000);
INSERT INTO `transaksi` VALUES (71, 1, 5, 5, 1071, 71, '2023-03-13', 'Reguler', 0, 10000, 10000);
INSERT INTO `transaksi` VALUES (72, 1, 5, 5, 1072, 72, '2023-03-14', 'Reguler', 0, 10000, 10000);
INSERT INTO `transaksi` VALUES (73, 1, 5, 5, 1073, 73, '2023-03-15', 'Reguler', 20000, 40000, 60000);
INSERT INTO `transaksi` VALUES (74, 1, 5, 5, 1074, 74, '2023-03-16', 'Reguler', 0, 10000, 10000);
INSERT INTO `transaksi` VALUES (75, 1, 5, 5, 1075, 75, '2023-03-17', 'Reguler', 0, 10000, 10000);
INSERT INTO `transaksi` VALUES (76, 1, 5, 5, 1076, 76, '2023-03-18', 'Reguler', 0, 10000, 10000);
INSERT INTO `transaksi` VALUES (77, 1, 5, 5, 1077, 77, '2023-03-19', 'Reguler', 0, 10000, 10000);
INSERT INTO `transaksi` VALUES (78, 1, 5, 5, 1078, 78, '2023-03-20', 'Reguler', 0, 10000, 10000);
INSERT INTO `transaksi` VALUES (79, 1, 5, 5, 1079, 79, '2023-03-21', 'Reguler', 0, 10000, 10000);
INSERT INTO `transaksi` VALUES (80, 1, 5, 5, 1080, 80, '2023-03-22', 'Reguler', 0, 10000, 10000);
INSERT INTO `transaksi` VALUES (81, 1, 2, 2, 1081, 81, '2023-03-23', 'Reguler', 0, 20000, 20000);
INSERT INTO `transaksi` VALUES (82, 1, 1, 1, 1082, 82, '2023-03-24', 'Reguler', 0, 20000, 20000);
INSERT INTO `transaksi` VALUES (83, 1, 4, 4, 1083, 83, '2023-03-25', 'Reguler', 0, 20000, 20000);
INSERT INTO `transaksi` VALUES (84, 1, 3, 3, 1084, 84, '2023-03-26', 'Reguler', 0, 20000, 20000);
INSERT INTO `transaksi` VALUES (85, 1, 1, 1, 1085, 85, '2023-03-27', 'Reguler', 0, 20000, 20000);
INSERT INTO `transaksi` VALUES (86, 1, 1, 1, 1086, 86, '2023-03-28', 'Reguler', 0, 10000, 10000);
INSERT INTO `transaksi` VALUES (87, 1, 1, 1, 1087, 87, '2023-03-29', 'Reguler', 0, 10000, 10000);
INSERT INTO `transaksi` VALUES (88, 1, 1, 1, 1088, 88, '2023-03-30', 'Reguler', 0, 10000, 10000);
INSERT INTO `transaksi` VALUES (89, 1, 1, 1, 1089, 89, '2023-03-31', 'Reguler', 0, 10000, 10000);
INSERT INTO `transaksi` VALUES (90, 1, 1, 1, 1090, 89, '2023-04-01', 'Reguler', 0, 10000, 10000);

-- ----------------------------
-- Procedure structure for filter_jenisbarang
-- ----------------------------
DROP PROCEDURE IF EXISTS `filter_jenisbarang`;
delimiter ;;
CREATE PROCEDURE `filter_jenisbarang`(IN id INT)
begin
	select * from barang where ID_JENISBARANG = id;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for filter_kodegerai
-- ----------------------------
DROP PROCEDURE IF EXISTS `filter_kodegerai`;
delimiter ;;
CREATE PROCEDURE `filter_kodegerai`(IN id INT)
begin
	select * from transaksi where KODE_GERAI = id;
end
;;
delimiter ;

-- ----------------------------
-- Procedure structure for filter_transaksi
-- ----------------------------
DROP PROCEDURE IF EXISTS `filter_transaksi`;
delimiter ;;
CREATE PROCEDURE `filter_transaksi`(in f_date date, in l_date date)
begin
	SELECT * FROM `transaksi` where tgl_transaksi between f_date and l_date;
end
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table transaksi
-- ----------------------------
DROP TRIGGER IF EXISTS `after_total_transaksi`;
delimiter ;;
CREATE TRIGGER `after_total_transaksi` AFTER INSERT ON `transaksi` FOR EACH ROW update kas
set total_pendapatan = total_pendapatan + NEW.total
where pendapatan = "totalpendapatan"
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table transaksi
-- ----------------------------
DROP TRIGGER IF EXISTS `after_mengupdate_transaksi`;
delimiter ;;
CREATE TRIGGER `after_mengupdate_transaksi` AFTER UPDATE ON `transaksi` FOR EACH ROW update kas
set total_pendapatan = total_pendapatan + (New.total - OLD.total)
where pendapatan = "totalpendapatan"
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table transaksi
-- ----------------------------
DROP TRIGGER IF EXISTS `after_menghapus_transaksi`;
delimiter ;;
CREATE TRIGGER `after_menghapus_transaksi` AFTER DELETE ON `transaksi` FOR EACH ROW update kas
set total_pendapatan = total_pendapatan - OLD.total
where pendapatan = "totalpendapatan"
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
