SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS `consume`;
CREATE TABLE `consume`  (
  `商店编号` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `顾客编号` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `消费金额` decimal(11, 2) NULL DEFAULT NULL,
  `消费日期` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  INDEX `sdbh`(`商店编号`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;


INSERT INTO `consume` VALUES ('S001', 'C0001', 345.00, '2019-4-20');
INSERT INTO `consume` VALUES ('S001', 'C0002', 600.00, '2019-5-1');
INSERT INTO `consume` VALUES ('S002', 'C0002', 800.00, '2019-5-1');
INSERT INTO `consume` VALUES ('S003', 'C0004', 1100.80, '2019-6-1');
INSERT INTO `consume` VALUES ('S004', 'C0005', 300.40, '2019-6-3');
INSERT INTO `consume` VALUES ('S003', 'C0003', 788.00, '2019-6-20');


DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer`  (
  `顾客编号` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `顾客姓名` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `地址` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `年龄` int(11) NULL DEFAULT NULL,
  `性别` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`顾客编号`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;


INSERT INTO `customer` VALUES ('C0001', '谢芳', '江城区', 23, '女');
INSERT INTO `customer` VALUES ('C0002', '林静', '阳东', 26, '女');
INSERT INTO `customer` VALUES ('C0003', '张小', '阳西', 18, '女');
INSERT INTO `customer` VALUES ('C0004', '刘晓琼', '阳春', 34, '女');
INSERT INTO `customer` VALUES ('C0005', '张云', '江城区', 45, '女');


DROP TABLE IF EXISTS `shop`;
CREATE TABLE `shop`  (
  `商店编号` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `商店名` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `地址` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `电话` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`商店编号`) USING BTREE,
  UNIQUE INDEX `ix_sm`(`商店名`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;


INSERT INTO `shop` VALUES ('S001', '蓝城百货商店', '南恩路', '0662-3645001');
INSERT INTO `shop` VALUES ('S002', '甜妞百货店', '江源路', '0662-7285002');
INSERT INTO `shop` VALUES ('S003', '佳有百货店', '漠江路', '0662-8900333');
INSERT INTO `shop` VALUES ('S004', '阳光百货店', '东风一路', '0662-7878666');

SET FOREIGN_KEY_CHECKS = 1;
