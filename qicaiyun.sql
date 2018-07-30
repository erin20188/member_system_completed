/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : qicaiyun

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-07-20 12:16:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `adminuser`
-- ----------------------------
DROP TABLE IF EXISTS `adminuser`;
CREATE TABLE `adminuser` (
  `ID` int(255) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(255) NOT NULL,
  `passWord` int(16) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of adminuser
-- ----------------------------
INSERT INTO `adminuser` VALUES ('1', 'long', '123');
INSERT INTO `adminuser` VALUES ('2', 'éç', '123');
INSERT INTO `adminuser` VALUES ('3', '陇盛', '123');
INSERT INTO `adminuser` VALUES ('4', '999', '999');
INSERT INTO `adminuser` VALUES ('5', 'admin', '123456');
INSERT INTO `adminuser` VALUES ('6', '111', '222');

-- ----------------------------
-- Table structure for `advice`
-- ----------------------------
DROP TABLE IF EXISTS `advice`;
CREATE TABLE `advice` (
  `nickname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `advice` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of advice
-- ----------------------------
INSERT INTO `advice` VALUES ('李白', '内容太少', '2010-09-06 10:02:24');
INSERT INTO `advice` VALUES ('李白', '不错', '2018-07-16 16:02:17');
INSERT INTO `advice` VALUES ('李白', '好', '2018-07-19 16:53:28');

-- ----------------------------
-- Table structure for `entertainproductinformation`
-- ----------------------------
DROP TABLE IF EXISTS `entertainproductinformation`;
CREATE TABLE `entertainproductinformation` (
  `id` varchar(255) NOT NULL,
  `compName` varchar(255) NOT NULL,
  `entertainName` varchar(255) NOT NULL,
  `entertainType` varchar(100) NOT NULL,
  `entertainPrice` varchar(10) NOT NULL,
  `productPicture` varchar(80) DEFAULT NULL,
  `weekendPrice` varchar(20) DEFAULT NULL,
  `specialTimePrice` varchar(10) DEFAULT NULL,
  `entertainMemberPrice` varchar(20) DEFAULT NULL,
  `entertainTime` varchar(10) DEFAULT NULL,
  `entertainPlace` varchar(100) DEFAULT NULL,
  `reservationInformation` varchar(255) DEFAULT NULL,
  `recommendNumber` varchar(10) DEFAULT NULL,
  `invoice` varchar(20) DEFAULT NULL,
  `insurance` varchar(50) DEFAULT NULL,
  `startTime` varchar(20) DEFAULT NULL,
  `endTime` varchar(20) DEFAULT NULL,
  `entertainIntroduction` varchar(100) DEFAULT NULL,
  `storage` varchar(20) DEFAULT NULL,
  `availableState` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of entertainproductinformation
-- ----------------------------
INSERT INTO `entertainproductinformation` VALUES ('10', 'PaintingTower娱乐画馆（银泰店）', '单人零基础乐绘套餐', 'DIY手工', '160', '/产品图片/entertain-PaintingTower娱乐画馆（银泰店）.jpg', '170', '150', '150', '8小时', 'PaintingTower娱乐画馆', '您可直接到店取走成品，请提前0天预约', '1-5', '有', '有', '2016.10.21', '2019.4.18', '仅售160元，价值516元单人零基础乐绘套餐，免费WiFi，多种款式可选！免费赠送包装盒！', '100', '是');
INSERT INTO `entertainproductinformation` VALUES ('11', 'PaintingTower娱乐画馆（银泰店）', '单人零基础乐绘套餐', 'DIY手工', '160', '/产品图片/entertain-PaintingTower娱乐画馆（银泰店）.jpg', '170', '150', '150', '8小时', 'PaintingTower娱乐画馆', '您可直接到店取走成品，请提前0天预约', '1-5', '有', '有', '2016.10.21', '2019.4.18', '仅售160元，价值516元单人零基础乐绘套餐，免费WiFi，多种款式可选！免费赠送包装盒！', '100', '是');
INSERT INTO `entertainproductinformation` VALUES ('12', '日日煮美食体验馆', '精选单人体验课', 'DIY手工', '58', '/产品图片/entertain-日日煮美食生活体验馆.jpg', '68', '48', '48', '8小时', '悠方购物中心B1椰壳超市内', '您可直接到店取走成品，请提前0天预约', '1-5', '有', '有', '2016.10.21', '2019.4.18', '仅售58元，价值119元精选单人体验课-四选一，节假日通用！', '100', '是');
INSERT INTO `entertainproductinformation` VALUES ('13', '日日煮美食体验馆', '精选单人体验课', 'DIY手工', '58', '/产品图片/entertain-日日煮美食生活体验馆.jpg', '68', '48', '48', '8小时', '悠方购物中心B1椰壳超市内', '您可直接到店取走成品，请提前0天预约', '1-5', '有', '有', '2016.10.21', '2019.4.18', '仅售58元，价值119元精选单人体验课-四选一，节假日通用！', '100', '是');
INSERT INTO `entertainproductinformation` VALUES ('14', '日日煮美食体验馆', '精选单人体验课', 'DIY手工', '58', '/产品图片/entertain-日日煮美食生活体验馆.jpg', '68', '48', '48', '8小时', '悠方购物中心B1椰壳超市内', '您可直接到店取走成品，请提前0天预约', '1-5', '有', '有', '2016.10.21', '2019.4.18', '仅售58元，价值119元精选单人体验课-四选一，节假日通用！', '100', '是');
INSERT INTO `entertainproductinformation` VALUES ('15', '日日煮美食体验馆', '精选单人体验课', 'DIY手工', '58', '/产品图片/entertain-日日煮美食生活体验馆.jpg', '68', '48', '48', '8小时', '悠方购物中心B1椰壳超市内', '您可直接到店取走成品，请提前0天预约', '1-5', '有', '有', '2016.10.21', '2019.4.18', '仅售58元，价值119元精选单人体验课-四选一，节假日通用！', '100', '是');
INSERT INTO `entertainproductinformation` VALUES ('5', 'PaintingTower娱乐画馆（银泰店）', '单人零基础乐绘套餐', 'DIY手工', '160', '/产品图片/entertain-PaintingTower娱乐画馆（银泰店）.jpg', '170', '150', '150', '8小时', 'PaintingTower娱乐画馆', '您可直接到店取走成品，请提前0天预约', '1-5', '有', '有', '2016.10.21', '2019.4.18', '仅售160元，价值516元单人零基础乐绘套餐，免费WiFi，多种款式可选！免费赠送包装盒！', '100', '是');
INSERT INTO `entertainproductinformation` VALUES ('6', 'PaintingTower娱乐画馆（银泰店）', '单人零基础乐绘套餐', 'DIY手工', '160', '/产品图片/entertain-PaintingTower娱乐画馆（银泰店）.jpg', '170', '150', '150', '8小时', 'PaintingTower娱乐画馆', '您可直接到店取走成品，请提前0天预约', '1-5', '有', '有', '2016.10.21', '2019.4.18', '仅售160元，价值516元单人零基础乐绘套餐，免费WiFi，多种款式可选！免费赠送包装盒！', '100', '是');
INSERT INTO `entertainproductinformation` VALUES ('7', 'PaintingTower娱乐画馆（银泰店）', '单人零基础乐绘套餐', 'DIY手工', '160', '/产品图片/entertain-PaintingTower娱乐画馆（银泰店）.jpg', '170', '150', '150', '8小时', 'PaintingTower娱乐画馆', '您可直接到店取走成品，请提前0天预约', '1-5', '有', '有', '2016.10.21', '2019.4.18', '仅售160元，价值516元单人零基础乐绘套餐，免费WiFi，多种款式可选！免费赠送包装盒！', '100', '是');
INSERT INTO `entertainproductinformation` VALUES ('8', 'PaintingTower娱乐画馆（银泰店）', '单人零基础乐绘套餐', 'DIY手工', '160', '/产品图片/entertain-PaintingTower娱乐画馆（银泰店）.jpg', '170', '150', '150', '8小时', 'PaintingTower娱乐画馆', '您可直接到店取走成品，请提前0天预约', '1-5', '有', '有', '2016.10.21', '2019.4.18', '仅售160元，价值516元单人零基础乐绘套餐，免费WiFi，多种款式可选！免费赠送包装盒！', '100', '是');
INSERT INTO `entertainproductinformation` VALUES ('9', 'PaintingTower娱乐画馆（银泰店）', '单人零基础乐绘套餐', 'DIY手工', '160', '/产品图片/entertain-PaintingTower娱乐画馆（银泰店）.jpg', '170', '150', '150', '8小时', 'PaintingTower娱乐画馆', '您可直接到店取走成品，请提前0天预约', '1-5', '有', '有', '2016.10.21', '2019.4.18', '仅售160元，价值516元单人零基础乐绘套餐，免费WiFi，多种款式可选！免费赠送包装盒！', '100', '是');

-- ----------------------------
-- Table structure for `foodproductinformation`
-- ----------------------------
DROP TABLE IF EXISTS `foodproductinformation`;
CREATE TABLE `foodproductinformation` (
  `specialTimePrice` float DEFAULT NULL,
  `weekendPrice` float DEFAULT NULL,
  `availableState` tinyint(4) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `id` int(100) DEFAULT NULL,
  `compName` varchar(255) DEFAULT NULL,
  `storage` varchar(255) DEFAULT NULL,
  `foodName` varchar(255) DEFAULT NULL,
  `foodPrice` float DEFAULT NULL,
  `foodIntroduction` varchar(255) DEFAULT NULL,
  `foodPicture` varchar(255) DEFAULT NULL,
  `foodType` varchar(255) DEFAULT NULL,
  `foodMemberPrice` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of foodproductinformation
-- ----------------------------
INSERT INTO `foodproductinformation` VALUES ('35', '38', '1', null, '1', '厘途', '100', '斑斓戚风', '38', '一款甜品，日式戚风蛋糕的既视感。分量大的惊人，这么大的戚风真的好吗，哈哈。抹茶口味的戚风蛋糕，搭配自制的稀奶油，味道极好', '/产品图片/food-厘途·LittleTravel(少城店)-斑斓戚风.jpg', '蛋糕', '35');
INSERT INTO `foodproductinformation` VALUES ('35', '38', '1', null, '2', '厘途', '100', '斑斓戚风', '38', '一款甜品，日式戚风蛋糕的既视感。分量大的惊人，这么大的戚风真的好吗，哈哈。抹茶口味的戚风蛋糕，搭配自制的稀奶油，味道极好', '/产品图片/food-厘途·LittleTravel(少城店)-斑斓戚风.jpg', '蛋糕', '35');
INSERT INTO `foodproductinformation` VALUES ('35', '38', '1', null, '3', '厘途', '100', '斑斓戚风', '38', '一款甜品，日式戚风蛋糕的既视感。分量大的惊人，这么大的戚风真的好吗，哈哈。抹茶口味的戚风蛋糕，搭配自制的稀奶油，味道极好', '/产品图片/food-厘途·LittleTravel(少城店)-斑斓戚风.jpg', '蛋糕', '35');
INSERT INTO `foodproductinformation` VALUES ('35', '38', '1', null, '4', '厘途', '100', '斑斓戚风', '38', '一款甜品，日式戚风蛋糕的既视感。分量大的惊人，这么大的戚风真的好吗，哈哈。抹茶口味的戚风蛋糕，搭配自制的稀奶油，味道极好', '/产品图片/food-厘途·LittleTravel(少城店)-斑斓戚风.jpg', '蛋糕', '35');
INSERT INTO `foodproductinformation` VALUES ('35', '38', '1', null, '5', '园里火锅', '100', '本味牛肉', '38', '下锅烫十多秒、待牛肉变色即可食用，非常嫩气，牛肉吸满了锅底的味道。', '/产品图片/food-园里火锅(府城大道店)-本味牛肉.jpg', '荤菜', '35');
INSERT INTO `foodproductinformation` VALUES ('35', '38', '1', null, '6', '园里火锅', '100', '本味牛肉', '38', '下锅烫十多秒、待牛肉变色即可食用，非常嫩气，牛肉吸满了锅底的味道。', '/产品图片/food-园里火锅(府城大道店)-本味牛肉.jpg', '荤菜', '35');
INSERT INTO `foodproductinformation` VALUES ('35', '38', '1', null, '7', '园里火锅(府城大道店)', '100', '本味牛肉', '38', '下锅烫十多秒、待牛肉变色即可食用，非常嫩气，牛肉吸满了锅底的味道。', '/产品图片/food-园里火锅(府城大道店)-本味牛肉.jpg', '荤菜', '35');
INSERT INTO `foodproductinformation` VALUES ('55', '58', '1', null, '8', '马尔代', '100', '蜂蜜柚子茶', '58', '蜂蜜柚子茶', '/产品图片/food-马尔代-蜂蜜柚子茶.jpg', '饮品', '55');
INSERT INTO `foodproductinformation` VALUES ('55', '58', '1', null, '9', '马尔代', '100', '蜂蜜柚子茶', '58', '蜂蜜柚子茶', '/产品图片/food-马尔代-蜂蜜柚子茶.jpg', '饮品', '55');
INSERT INTO `foodproductinformation` VALUES ('55', '58', '1', null, '10', '马尔代', '100', '蜂蜜柚子茶', '58', '蜂蜜柚子茶', '/产品图片/food-马尔代-蜂蜜柚子茶.jpg', '饮品', '55');
INSERT INTO `foodproductinformation` VALUES ('55', '58', '1', null, '11', '马尔代', '100', '蜂蜜柚子茶', '58', '蜂蜜柚子茶', '/产品图片/food-马尔代-蜂蜜柚子茶.jpg', '饮品', '55');
INSERT INTO `foodproductinformation` VALUES ('45', '48', '1', null, '11', '集渔·泰式海鲜火锅(华阳店)', '100', '泰式冬阴功锅底', '48', '锅底味道中规中矩，冬阴功酱和配料是锅端上来后加进去的，还加了椰汁', '/产品图片/food-集渔·泰式海鲜火锅(华阳店)-泰式冬阴功锅底.jpg', '饮品', '45');
INSERT INTO `foodproductinformation` VALUES ('45', '48', '1', null, '11', '集渔·泰式海鲜火锅(华阳店)', '100', '泰式冬阴功锅底', '48', '锅底味道中规中矩，冬阴功酱和配料是锅端上来后加进去的，还加了椰汁', '/产品图片/food-集渔·泰式海鲜火锅(华阳店)-泰式冬阴功锅底.jpg', '饮品', '45');
INSERT INTO `foodproductinformation` VALUES ('35', '38', '1', null, '1', '厘途', '100', '斑斓戚风', '38', '一款甜品，日式戚风蛋糕的既视感。分量大的惊人，这么大的戚风真的好吗，哈哈。抹茶口味的戚风蛋糕，搭配自制的稀奶油，味道极好', '/产品图片/food-厘途·LittleTravel(少城店)-斑斓戚风.jpg', '蛋糕', '35');
INSERT INTO `foodproductinformation` VALUES ('35', '38', '1', null, '2', '厘途', '100', '斑斓戚风', '38', '一款甜品，日式戚风蛋糕的既视感。分量大的惊人，这么大的戚风真的好吗，哈哈。抹茶口味的戚风蛋糕，搭配自制的稀奶油，味道极好', '/产品图片/food-厘途·LittleTravel(少城店)-斑斓戚风.jpg', '蛋糕', '35');
INSERT INTO `foodproductinformation` VALUES ('35', '38', '1', null, '3', '厘途', '100', '斑斓戚风', '38', '一款甜品，日式戚风蛋糕的既视感。分量大的惊人，这么大的戚风真的好吗，哈哈。抹茶口味的戚风蛋糕，搭配自制的稀奶油，味道极好', '/产品图片/food-厘途·LittleTravel(少城店)-斑斓戚风.jpg', '蛋糕', '35');
INSERT INTO `foodproductinformation` VALUES ('35', '38', '1', null, '4', '厘途', '100', '斑斓戚风', '38', '一款甜品，日式戚风蛋糕的既视感。分量大的惊人，这么大的戚风真的好吗，哈哈。抹茶口味的戚风蛋糕，搭配自制的稀奶油，味道极好', '/产品图片/food-厘途·LittleTravel(少城店)-斑斓戚风.jpg', '蛋糕', '35');
INSERT INTO `foodproductinformation` VALUES ('35', '38', '1', null, '5', '园里火锅(府城大道店)', '100', '本味牛肉', '38', '下锅烫十多秒、待牛肉变色即可食用，非常嫩气，牛肉吸满了锅底的味道。', '/产品图片/food-园里火锅(府城大道店)-本味牛肉.jpg', '荤菜', '35');
INSERT INTO `foodproductinformation` VALUES ('35', '38', '1', null, '6', '园里火锅(府城大道店)', '100', '本味牛肉', '38', '下锅烫十多秒、待牛肉变色即可食用，非常嫩气，牛肉吸满了锅底的味道。', '/产品图片/food-园里火锅(府城大道店)-本味牛肉.jpg', '荤菜', '35');
INSERT INTO `foodproductinformation` VALUES ('35', '38', '1', null, '7', '园里火锅(府城大道店)', '100', '本味牛肉', '38', '下锅烫十多秒、待牛肉变色即可食用，非常嫩气，牛肉吸满了锅底的味道。', '/产品图片/food-园里火锅(府城大道店)-本味牛肉.jpg', '荤菜', '35');
INSERT INTO `foodproductinformation` VALUES ('55', '58', '1', null, '8', '马尔代', '100', '蜂蜜柚子茶', '58', '蜂蜜柚子茶', '/产品图片/food-马尔代-蜂蜜柚子茶.jpg', '饮品', '55');
INSERT INTO `foodproductinformation` VALUES ('55', '58', '1', null, '9', '马尔代', '100', '蜂蜜柚子茶', '58', '蜂蜜柚子茶', '/产品图片/food-马尔代-蜂蜜柚子茶.jpg', '饮品', '55');
INSERT INTO `foodproductinformation` VALUES ('55', '58', '1', null, '10', '马尔代', '100', '蜂蜜柚子茶', '58', '蜂蜜柚子茶', '/产品图片/food-马尔代-蜂蜜柚子茶.jpg', '饮品', '55');
INSERT INTO `foodproductinformation` VALUES ('55', '58', '1', null, '11', '马尔代', '100', '蜂蜜柚子茶', '58', '蜂蜜柚子茶', '/产品图片/food-马尔代-蜂蜜柚子茶.jpg', '饮品', '55');
INSERT INTO `foodproductinformation` VALUES ('45', '48', '1', null, '11', '集渔·泰式海鲜火锅(华阳店)', '100', '泰式冬阴功锅底', '48', '锅底味道中规中矩，冬阴功酱和配料是锅端上来后加进去的，还加了椰汁', '/产品图片/food-集渔·泰式海鲜火锅(华阳店)-泰式冬阴功锅底.jpg', '饮品', '45');
INSERT INTO `foodproductinformation` VALUES ('45', '48', '1', null, '11', '集渔·泰式海鲜火锅(华阳店)', '100', '泰式冬阴功锅底', '48', '锅底味道中规中矩，冬阴功酱和配料是锅端上来后加进去的，还加了椰汁', '/产品图片/food-集渔·泰式海鲜火锅(华阳店)-泰式冬阴功锅底.jpg', '饮品', '45');
INSERT INTO `foodproductinformation` VALUES ('35', '38', '1', null, '1', '厘途·LittleTravel(少城店)', '100', '斑斓戚风', '38', '一款甜品，日式戚风蛋糕的既视感。分量大的惊人，这么大的戚风真的好吗，哈哈。抹茶口味的戚风蛋糕，搭配自制的稀奶油，味道极好', '/产品图片/food-厘途·LittleTravel(少城店)-斑斓戚风.jpg', '蛋糕', '35');
INSERT INTO `foodproductinformation` VALUES ('35', '38', '1', null, '2', '厘途·LittleTravel(少城店)', '100', '斑斓戚风', '38', '一款甜品，日式戚风蛋糕的既视感。分量大的惊人，这么大的戚风真的好吗，哈哈。抹茶口味的戚风蛋糕，搭配自制的稀奶油，味道极好', '/产品图片/food-厘途·LittleTravel(少城店)-斑斓戚风.jpg', '蛋糕', '35');
INSERT INTO `foodproductinformation` VALUES ('35', '38', '1', null, '3', '厘途·LittleTravel(少城店)', '100', '斑斓戚风', '38', '一款甜品，日式戚风蛋糕的既视感。分量大的惊人，这么大的戚风真的好吗，哈哈。抹茶口味的戚风蛋糕，搭配自制的稀奶油，味道极好', '/产品图片/food-厘途·LittleTravel(少城店)-斑斓戚风.jpg', '蛋糕', '35');
INSERT INTO `foodproductinformation` VALUES ('35', '38', '1', null, '4', '厘途·LittleTravel(少城店)', '100', '斑斓戚风', '38', '一款甜品，日式戚风蛋糕的既视感。分量大的惊人，这么大的戚风真的好吗，哈哈。抹茶口味的戚风蛋糕，搭配自制的稀奶油，味道极好', '/产品图片/food-厘途·LittleTravel(少城店)-斑斓戚风.jpg', '蛋糕', '35');
INSERT INTO `foodproductinformation` VALUES ('35', '38', '1', null, '5', '园里火锅(府城大道店)', '100', '本味牛肉', '38', '下锅烫十多秒、待牛肉变色即可食用，非常嫩气，牛肉吸满了锅底的味道。', '/产品图片/food-园里火锅(府城大道店)-本味牛肉.jpg', '荤菜', '35');
INSERT INTO `foodproductinformation` VALUES ('35', '38', '1', null, '6', '园里火锅(府城大道店)', '100', '本味牛肉', '38', '下锅烫十多秒、待牛肉变色即可食用，非常嫩气，牛肉吸满了锅底的味道。', '/产品图片/food-园里火锅(府城大道店)-本味牛肉.jpg', '荤菜', '35');
INSERT INTO `foodproductinformation` VALUES ('35', '38', '1', null, '7', '园里火锅(府城大道店)', '100', '本味牛肉', '38', '下锅烫十多秒、待牛肉变色即可食用，非常嫩气，牛肉吸满了锅底的味道。', '/产品图片/food-园里火锅(府城大道店)-本味牛肉.jpg', '荤菜', '35');
INSERT INTO `foodproductinformation` VALUES ('55', '58', '1', null, '8', '马尔代', '100', '蜂蜜柚子茶', '58', '蜂蜜柚子茶', '/产品图片/food-马尔代-蜂蜜柚子茶.jpg', '饮品', '55');
INSERT INTO `foodproductinformation` VALUES ('55', '58', '1', null, '9', '马尔代', '100', '蜂蜜柚子茶', '58', '蜂蜜柚子茶', '/产品图片/food-马尔代-蜂蜜柚子茶.jpg', '饮品', '55');
INSERT INTO `foodproductinformation` VALUES ('55', '58', '1', null, '10', '马尔代', '100', '蜂蜜柚子茶', '58', '蜂蜜柚子茶', '/产品图片/food-马尔代-蜂蜜柚子茶.jpg', '饮品', '55');
INSERT INTO `foodproductinformation` VALUES ('55', '58', '1', null, '11', '马尔代', '100', '蜂蜜柚子茶', '58', '蜂蜜柚子茶', '/产品图片/food-马尔代-蜂蜜柚子茶.jpg', '饮品', '55');
INSERT INTO `foodproductinformation` VALUES ('45', '48', '1', null, '11', '集渔·泰式海鲜火锅(华阳店)', '100', '泰式冬阴功锅底', '48', '锅底味道中规中矩，冬阴功酱和配料是锅端上来后加进去的，还加了椰汁', '/产品图片/food-集渔·泰式海鲜火锅(华阳店)-泰式冬阴功锅底.jpg', '饮品', '45');
INSERT INTO `foodproductinformation` VALUES ('45', '48', '1', null, '11', '集渔·泰式海鲜火锅(华阳店)', '100', '泰式冬阴功锅底', '48', '锅底味道中规中矩，冬阴功酱和配料是锅端上来后加进去的，还加了椰汁', '/产品图片/food-集渔·泰式海鲜火锅(华阳店)-泰式冬阴功锅底.jpg', '饮品', '45');
INSERT INTO `foodproductinformation` VALUES ('35', '38', '1', null, '1', '厘途·LittleTravel(少城店)', '100', '斑斓戚风', '38', '一款甜品，日式戚风蛋糕的既视感。分量大的惊人，这么大的戚风真的好吗，哈哈。抹茶口味的戚风蛋糕，搭配自制的稀奶油，味道极好', '/产品图片/food-厘途·LittleTravel(少城店)-斑斓戚风.jpg', '蛋糕', '35');
INSERT INTO `foodproductinformation` VALUES ('35', '38', '1', null, '2', '厘途·LittleTravel(少城店)', '100', '斑斓戚风', '38', '一款甜品，日式戚风蛋糕的既视感。分量大的惊人，这么大的戚风真的好吗，哈哈。抹茶口味的戚风蛋糕，搭配自制的稀奶油，味道极好', '/产品图片/food-厘途·LittleTravel(少城店)-斑斓戚风.jpg', '蛋糕', '35');
INSERT INTO `foodproductinformation` VALUES ('35', '38', '1', null, '3', '厘途·LittleTravel(少城店)', '100', '斑斓戚风', '38', '一款甜品，日式戚风蛋糕的既视感。分量大的惊人，这么大的戚风真的好吗，哈哈。抹茶口味的戚风蛋糕，搭配自制的稀奶油，味道极好', '/产品图片/food-厘途·LittleTravel(少城店)-斑斓戚风.jpg', '蛋糕', '35');
INSERT INTO `foodproductinformation` VALUES ('35', '38', '1', null, '4', '厘途·LittleTravel(少城店)', '100', '斑斓戚风', '38', '一款甜品，日式戚风蛋糕的既视感。分量大的惊人，这么大的戚风真的好吗，哈哈。抹茶口味的戚风蛋糕，搭配自制的稀奶油，味道极好', '/产品图片/food-厘途·LittleTravel(少城店)-斑斓戚风.jpg', '蛋糕', '35');
INSERT INTO `foodproductinformation` VALUES ('35', '38', '1', null, '5', '园里火锅(府城大道店)', '100', '本味牛肉', '38', '下锅烫十多秒、待牛肉变色即可食用，非常嫩气，牛肉吸满了锅底的味道。', '/产品图片/food-园里火锅(府城大道店)-本味牛肉.jpg', '荤菜', '35');
INSERT INTO `foodproductinformation` VALUES ('35', '38', '1', null, '6', '园里火锅(府城大道店)', '100', '本味牛肉', '38', '下锅烫十多秒、待牛肉变色即可食用，非常嫩气，牛肉吸满了锅底的味道。', '/产品图片/food-园里火锅(府城大道店)-本味牛肉.jpg', '荤菜', '35');
INSERT INTO `foodproductinformation` VALUES ('35', '38', '1', null, '7', '园里火锅(府城大道店)', '100', '本味牛肉', '38', '下锅烫十多秒、待牛肉变色即可食用，非常嫩气，牛肉吸满了锅底的味道。', '/产品图片/food-园里火锅(府城大道店)-本味牛肉.jpg', '荤菜', '35');
INSERT INTO `foodproductinformation` VALUES ('55', '58', '1', null, '8', '马尔代', '100', '蜂蜜柚子茶', '58', '蜂蜜柚子茶', '/产品图片/food-马尔代-蜂蜜柚子茶.jpg', '饮品', '55');
INSERT INTO `foodproductinformation` VALUES ('55', '58', '1', null, '9', '马尔代', '100', '蜂蜜柚子茶', '58', '蜂蜜柚子茶', '/产品图片/food-马尔代-蜂蜜柚子茶.jpg', '饮品', '55');
INSERT INTO `foodproductinformation` VALUES ('55', '58', '1', null, '10', '马尔代', '100', '蜂蜜柚子茶', '58', '蜂蜜柚子茶', '/产品图片/food-马尔代-蜂蜜柚子茶.jpg', '饮品', '55');
INSERT INTO `foodproductinformation` VALUES ('55', '58', '1', null, '11', '马尔代', '100', '蜂蜜柚子茶', '58', '蜂蜜柚子茶', '/产品图片/food-马尔代-蜂蜜柚子茶.jpg', '饮品', '55');
INSERT INTO `foodproductinformation` VALUES ('45', '48', '1', null, '11', '集渔·泰式海鲜火锅(华阳店)', '100', '泰式冬阴功锅底', '48', '锅底味道中规中矩，冬阴功酱和配料是锅端上来后加进去的，还加了椰汁', '/产品图片/food-集渔·泰式海鲜火锅(华阳店)-泰式冬阴功锅底.jpg', '饮品', '45');
INSERT INTO `foodproductinformation` VALUES ('45', '48', '1', null, '11', '集渔·泰式海鲜火锅(华阳店)', '100', '泰式冬阴功锅底', '48', '锅底味道中规中矩，冬阴功酱和配料是锅端上来后加进去的，还加了椰汁', '/产品图片/food-集渔·泰式海鲜火锅(华阳店)-泰式冬阴功锅底.jpg', '饮品', '45');
INSERT INTO `foodproductinformation` VALUES ('45', '48', '1', null, '11', '集渔·泰式海鲜火锅(华阳店)', '100', '泰式冬阴功锅底', '48', '锅底味道中规中矩，冬阴功酱和配料是锅端上来后加进去的，还加了椰汁', '/产品图片/food-集渔·泰式海鲜火锅(华阳店)-泰式冬阴功锅底.jpg', '饮品', '45');

-- ----------------------------
-- Table structure for `gift`
-- ----------------------------
DROP TABLE IF EXISTS `gift`;
CREATE TABLE `gift` (
  `giftName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `giftScore` int(11) DEFAULT NULL,
  `compName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of gift
-- ----------------------------
INSERT INTO `gift` VALUES ('gift-btn-1', '50', '第一佳');
INSERT INTO `gift` VALUES ('gift-btn-2', '100', '第二家');
INSERT INTO `gift` VALUES ('gift-btn-3', '300', '第三家');
INSERT INTO `gift` VALUES ('gift-btn-4', '20', '第四家');

-- ----------------------------
-- Table structure for `hotelproductinformation`
-- ----------------------------
DROP TABLE IF EXISTS `hotelproductinformation`;
CREATE TABLE `hotelproductinformation` (
  `id` int(110) DEFAULT NULL,
  `compName` varchar(255) NOT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productPrice` float DEFAULT NULL,
  `weekendPrice` float DEFAULT NULL,
  `productMemberPrice` float DEFAULT NULL,
  `productIntroduction` varchar(255) DEFAULT NULL,
  `productPicture` varchar(255) DEFAULT NULL,
  `roomType` varchar(255) DEFAULT NULL,
  `breakfast` varchar(255) DEFAULT NULL,
  `bedType` varchar(255) DEFAULT NULL,
  `WIFI` varchar(255) DEFAULT NULL,
  `roomState` tinyint(4) DEFAULT NULL,
  `specialTimePrice` float DEFAULT NULL,
  `availableState` varchar(4) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `storage` varchar(255) DEFAULT NULL,
  `person` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hotelproductinformation
-- ----------------------------
INSERT INTO `hotelproductinformation` VALUES ('1', '茶花民宿', '茶花民宿公寓', '168', '188', '158', '位于春熙太古商圈,紧临地铁234号线,处于闹市却不临街,进一步繁华退一步宁静。精装北欧小清新风格,一张大床、一张沙发床,适合2-3人居住(最多4人),设施齐全,好看也好住。', '/产品图片/hotel-茶花民宿-产品.jpg', '整套公寓', null, '双人床X1、沙发床X1', null, null, '158', 'Y', null, '1', '3');
INSERT INTO `hotelproductinformation` VALUES ('2', 'MOHUANG', 'MOHUANG公寓', '228', '238', '218', '. 24小时热水 . 无线Wi-Fi . 网络电视 海量电影综艺随便看 . 免费提供一次性牙刷牙膏 . 免费提供洗发水、沐浴乳、浴巾 . 床品采用舒适的水洗棉,裸睡力MAX . 充足的自然光及绿植 . 所有床上用品及浴巾一客一换,干净卫生', '/产品图片/hotel-MOHUANG.jpg', '整套公寓', null, '双人床X1', null, null, '218', 'Y', null, '1', '2');
INSERT INTO `hotelproductinformation` VALUES ('3', 'Loft古典新中式洋楼', '华章', '598', '608', '588', '整套房子为独门进入loft结构，进门便是阳光精致小花园，可在小花园内high tea静静享受午后的阳光。大落地玻璃窗使整个房间拥有超棒的采光。配备全地暖，大冬天只要脚踩到的地方都是暖暖的。各种宽带，网络电视，厨房餐具，浴缸洗漱用品一应俱全，是您放松休憩的理想居所。', '/产品图片/hotel-华章.jpg', '整套公寓', null, '双人床X1、沙发床X1', null, null, '588', 'Y', null, '1', '3');
INSERT INTO `hotelproductinformation` VALUES ('4', 'DUDUSA·画', 'DUDUSA·画公寓', '89', '99', '79', '这里有个小型画室,可以和我们一起画油画,画盘子,画包包等很多好玩的东西(画画是收费项目,住宿客人有折扣)，这是一个二楼的阁楼间,虽然空高不高,但是应有尽有,配有小米4k电视机,您可以在线看电视电影甚至可以打王者荣耀等手机游戏!您也可以玩任天堂红白游戏机、桌游等,我们配了一个超大龙猫床垫,可爱温馨,阁楼是开放式的,有帘子,女生可以放心。', '/产品图片/hotel-DUDUSA·画.jpg', '整套公寓', null, '双人床X1', null, null, '79', 'Y', null, '1', '2');
INSERT INTO `hotelproductinformation` VALUES ('4', 'AIR', 'AIR【千と千寻の神隠し】', '198', '208', '188', '因为房东是个宫崎骏迷,他的每一部电影都有看无数遍,经过风风雨雨所以做了一个这个主题,房源位于城市中央,毗邻春熙路和太古里,房间的每一件物品,大到电视柜小到笔筒都是房东精心挑选出来的哦。房子是一个loft复式,楼下是客厅厨房和一个卫生间,楼上是两个房间,采光超好,主卧带卫生间。空间都是超大的,很适合家人集体出行。', '/产品图片/hotel-AIR.jpg', '整套公寓', null, '双人床X3', null, null, '188', 'Y', null, '1', '6');
INSERT INTO `hotelproductinformation` VALUES ('1', '茶花民宿', '茶花民宿公寓', '168', '188', '158', '位于春熙太古商圈,紧临地铁234号线,处于闹市却不临街,进一步繁华退一步宁静。精装北欧小清新风格,一张大床、一张沙发床,适合2-3人居住(最多4人),设施齐全,好看也好住。', '/产品图片/hotel-茶花民宿-产品.jpg', '整套公寓', null, '双人床X1、沙发床X1', null, null, '158', 'Y', null, '1', '3');
INSERT INTO `hotelproductinformation` VALUES ('2', 'MOHUANG', 'MOHUANG公寓', '228', '238', '218', '. 24小时热水 . 无线Wi-Fi . 网络电视 海量电影综艺随便看 . 免费提供一次性牙刷牙膏 . 免费提供洗发水、沐浴乳、浴巾 . 床品采用舒适的水洗棉,裸睡力MAX . 充足的自然光及绿植 . 所有床上用品及浴巾一客一换,干净卫生', '/产品图片/hotel-MOHUANG.jpg', '整套公寓', null, '双人床X1', null, null, '218', 'Y', null, '1', '2');
INSERT INTO `hotelproductinformation` VALUES ('3', 'Loft古典新中式洋楼', '华章', '598', '608', '588', '整套房子为独门进入loft结构，进门便是阳光精致小花园，可在小花园内high tea静静享受午后的阳光。大落地玻璃窗使整个房间拥有超棒的采光。配备全地暖，大冬天只要脚踩到的地方都是暖暖的。各种宽带，网络电视，厨房餐具，浴缸洗漱用品一应俱全，是您放松休憩的理想居所。', '/产品图片/hotel-华章.jpg', '整套公寓', null, '双人床X1、沙发床X1', null, null, '588', 'Y', null, '1', '3');
INSERT INTO `hotelproductinformation` VALUES ('4', 'DUDUSA·画', 'DUDUSA·画公寓', '89', '99', '79', '这里有个小型画室,可以和我们一起画油画,画盘子,画包包等很多好玩的东西(画画是收费项目,住宿客人有折扣)，这是一个二楼的阁楼间,虽然空高不高,但是应有尽有,配有小米4k电视机,您可以在线看电视电影甚至可以打王者荣耀等手机游戏!您也可以玩任天堂红白游戏机、桌游等,我们配了一个超大龙猫床垫,可爱温馨,阁楼是开放式的,有帘子,女生可以放心。', '/产品图片/hotel-DUDUSA·画.jpg', '整套公寓', null, '双人床X1', null, null, '79', 'Y', null, '1', '2');
INSERT INTO `hotelproductinformation` VALUES ('4', 'AIR', 'AIR【千と千寻の神隠し】', '198', '208', '188', '因为房东是个宫崎骏迷,他的每一部电影都有看无数遍,经过风风雨雨所以做了一个这个主题,房源位于城市中央,毗邻春熙路和太古里,房间的每一件物品,大到电视柜小到笔筒都是房东精心挑选出来的哦。房子是一个loft复式,楼下是客厅厨房和一个卫生间,楼上是两个房间,采光超好,主卧带卫生间。空间都是超大的,很适合家人集体出行。', '/产品图片/hotel-AIR.jpg', '整套公寓', null, '双人床X3', null, null, '188', 'Y', null, '1', '6');
INSERT INTO `hotelproductinformation` VALUES ('1', '茶花民宿', '茶花民宿公寓', '168', '188', '158', '位于春熙太古商圈,紧临地铁234号线,处于闹市却不临街,进一步繁华退一步宁静。精装北欧小清新风格,一张大床、一张沙发床,适合2-3人居住(最多4人),设施齐全,好看也好住。', '/产品图片/hotel-茶花民宿-产品.jpg', '整套公寓', null, '双人床X1、沙发床X1', null, null, '158', 'Y', null, '1', '3');
INSERT INTO `hotelproductinformation` VALUES ('2', 'MOHUANG', 'MOHUANG公寓', '228', '238', '218', '. 24小时热水 . 无线Wi-Fi . 网络电视 海量电影综艺随便看 . 免费提供一次性牙刷牙膏 . 免费提供洗发水、沐浴乳、浴巾 . 床品采用舒适的水洗棉,裸睡力MAX . 充足的自然光及绿植 . 所有床上用品及浴巾一客一换,干净卫生', '/产品图片/hotel-MOHUANG.jpg', '整套公寓', null, '双人床X1', null, null, '218', 'Y', null, '1', '2');
INSERT INTO `hotelproductinformation` VALUES ('3', 'Loft古典新中式洋楼', '华章', '598', '608', '588', '整套房子为独门进入loft结构，进门便是阳光精致小花园，可在小花园内high tea静静享受午后的阳光。大落地玻璃窗使整个房间拥有超棒的采光。配备全地暖，大冬天只要脚踩到的地方都是暖暖的。各种宽带，网络电视，厨房餐具，浴缸洗漱用品一应俱全，是您放松休憩的理想居所。', '/产品图片/hotel-华章.jpg', '整套公寓', null, '双人床X1、沙发床X1', null, null, '588', 'Y', null, '1', '3');
INSERT INTO `hotelproductinformation` VALUES ('4', 'DUDUSA·画', 'DUDUSA·画公寓', '89', '99', '79', '这里有个小型画室,可以和我们一起画油画,画盘子,画包包等很多好玩的东西(画画是收费项目,住宿客人有折扣)，这是一个二楼的阁楼间,虽然空高不高,但是应有尽有,配有小米4k电视机,您可以在线看电视电影甚至可以打王者荣耀等手机游戏!您也可以玩任天堂红白游戏机、桌游等,我们配了一个超大龙猫床垫,可爱温馨,阁楼是开放式的,有帘子,女生可以放心。', '/产品图片/hotel-DUDUSA·画.jpg', '整套公寓', null, '双人床X1', null, null, '79', 'Y', null, '1', '2');
INSERT INTO `hotelproductinformation` VALUES ('4', 'AIR', 'AIR【千と千寻の神隠し】', '198', '208', '188', '因为房东是个宫崎骏迷,他的每一部电影都有看无数遍,经过风风雨雨所以做了一个这个主题,房源位于城市中央,毗邻春熙路和太古里,房间的每一件物品,大到电视柜小到笔筒都是房东精心挑选出来的哦。房子是一个loft复式,楼下是客厅厨房和一个卫生间,楼上是两个房间,采光超好,主卧带卫生间。空间都是超大的,很适合家人集体出行。', '/产品图片/hotel-AIR.jpg', '整套公寓', null, '双人床X3', null, null, '188', 'Y', null, '1', '6');
INSERT INTO `hotelproductinformation` VALUES ('1', '茶花民宿', '茶花民宿公寓', '168', '188', '158', '位于春熙太古商圈,紧临地铁234号线,处于闹市却不临街,进一步繁华退一步宁静。精装北欧小清新风格,一张大床、一张沙发床,适合2-3人居住(最多4人),设施齐全,好看也好住。', '/产品图片/hotel-茶花民宿-产品.jpg', '整套公寓', null, '双人床X1、沙发床X1', null, null, '158', 'Y', null, '1', '3');
INSERT INTO `hotelproductinformation` VALUES ('2', 'MOHUANG', 'MOHUANG公寓', '228', '238', '218', '. 24小时热水 . 无线Wi-Fi . 网络电视 海量电影综艺随便看 . 免费提供一次性牙刷牙膏 . 免费提供洗发水、沐浴乳、浴巾 . 床品采用舒适的水洗棉,裸睡力MAX . 充足的自然光及绿植 . 所有床上用品及浴巾一客一换,干净卫生', '/产品图片/hotel-MOHUANG.jpg', '整套公寓', null, '双人床X1', null, null, '218', 'Y', null, '1', '2');
INSERT INTO `hotelproductinformation` VALUES ('3', 'Loft古典新中式洋楼', '华章', '598', '608', '588', '整套房子为独门进入loft结构，进门便是阳光精致小花园，可在小花园内high tea静静享受午后的阳光。大落地玻璃窗使整个房间拥有超棒的采光。配备全地暖，大冬天只要脚踩到的地方都是暖暖的。各种宽带，网络电视，厨房餐具，浴缸洗漱用品一应俱全，是您放松休憩的理想居所。', '/产品图片/hotel-华章.jpg', '整套公寓', null, '双人床X1、沙发床X1', null, null, '588', 'Y', null, '1', '3');
INSERT INTO `hotelproductinformation` VALUES ('4', 'DUDUSA·画', 'DUDUSA·画公寓', '89', '99', '79', '这里有个小型画室,可以和我们一起画油画,画盘子,画包包等很多好玩的东西(画画是收费项目,住宿客人有折扣)，这是一个二楼的阁楼间,虽然空高不高,但是应有尽有,配有小米4k电视机,您可以在线看电视电影甚至可以打王者荣耀等手机游戏!您也可以玩任天堂红白游戏机、桌游等,我们配了一个超大龙猫床垫,可爱温馨,阁楼是开放式的,有帘子,女生可以放心。', '/产品图片/hotel-DUDUSA·画.jpg', '整套公寓', null, '双人床X1', null, null, '79', 'Y', null, '1', '2');
INSERT INTO `hotelproductinformation` VALUES ('4', 'AIR', 'AIR【千と千寻の神隠し】', '198', '208', '188', '因为房东是个宫崎骏迷,他的每一部电影都有看无数遍,经过风风雨雨所以做了一个这个主题,房源位于城市中央,毗邻春熙路和太古里,房间的每一件物品,大到电视柜小到笔筒都是房东精心挑选出来的哦。房子是一个loft复式,楼下是客厅厨房和一个卫生间,楼上是两个房间,采光超好,主卧带卫生间。空间都是超大的,很适合家人集体出行。', '/产品图片/hotel-AIR.jpg', '整套公寓', null, '双人床X3', null, null, '188', 'Y', null, '1', '6');
INSERT INTO `hotelproductinformation` VALUES ('4', '花舍/菠萝', '花舍/菠萝公寓', '168', '178', '158', '方便宜居：独栋的商业公寓进出不像小区一样麻烦,24小时保安值班方便安全, 打开窗热闹繁华,关上窗宁静宜居。北欧风格： 每一样东西都是房东亲自设计挑选,温馨干净。干花植物： 房间的多肉、盆栽、干花都是房东亲自栽种精心维护的。', '/产品图片/hotel-花舍菠萝.jpg', '整套公寓', null, '双人床X1', null, null, '158', 'Y', null, '1', '2');

-- ----------------------------
-- Table structure for `logonlog`
-- ----------------------------
DROP TABLE IF EXISTS `logonlog`;
CREATE TABLE `logonlog` (
  `account` varchar(10) NOT NULL,
  `date` datetime(6) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of logonlog
-- ----------------------------

-- ----------------------------
-- Table structure for `manager`
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager` (
  `UserName` varchar(255) DEFAULT NULL,
  `passWord` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of manager
-- ----------------------------
INSERT INTO `manager` VALUES ('zhangsan', '123456');

-- ----------------------------
-- Table structure for `membercomment`
-- ----------------------------
DROP TABLE IF EXISTS `membercomment`;
CREATE TABLE `membercomment` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `nickName` varchar(20) DEFAULT NULL,
  `compName` varchar(20) DEFAULT NULL,
  `review` text,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of membercomment
-- ----------------------------
INSERT INTO `membercomment` VALUES ('2', '王二', '酒店', '嘿嘿嘿', '2018-07-13');
INSERT INTO `membercomment` VALUES ('3', '张三', '酒店', '急急急', '2018-07-13');
INSERT INTO `membercomment` VALUES ('4', '张三', '淘宝2', '张三', '2018-07-13');
INSERT INTO `membercomment` VALUES ('5', '张三', '淘宝2', '张三', '2018-07-13');
INSERT INTO `membercomment` VALUES ('6', '张三', '淘宝2', '张三', '2018-07-13');
INSERT INTO `membercomment` VALUES ('7', '张三', '淘宝2', '11', '2018-07-13');
INSERT INTO `membercomment` VALUES ('8', '李四', '兰桂坊', '999', '2018-07-10');
INSERT INTO `membercomment` VALUES ('9', '李四', '兰桂坊', '888', '2018-07-23');
INSERT INTO `membercomment` VALUES ('10', '王二', '兰桂坊', '444', '2018-08-01');
INSERT INTO `membercomment` VALUES ('11', '周五', '兰桂坊', '777', '2018-07-24');
INSERT INTO `membercomment` VALUES ('12', '张三', '途牛', '465184', null);
INSERT INTO `membercomment` VALUES ('13', '张三', '途牛', '486135', null);
INSERT INTO `membercomment` VALUES ('14', '李四', '途牛', '489613', null);
INSERT INTO `membercomment` VALUES ('15', '王二', '途牛', '481', null);
INSERT INTO `membercomment` VALUES ('16', '李白', '第一佳', '好', '2018-07-20');

-- ----------------------------
-- Table structure for `memberuser`
-- ----------------------------
DROP TABLE IF EXISTS `memberuser`;
CREATE TABLE `memberuser` (
  `nickName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `realName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birth` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `passWord` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `idtype` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `idNum` varchar(18) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `addr` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `compName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of memberuser
-- ----------------------------
INSERT INTO `memberuser` VALUES ('李白', '白羊', '男', '1999-12-09', '123456', '身份证', '132874628', '12132@', '双流', '第一佳');
INSERT INTO `memberuser` VALUES ('晚风', '张德胜', '男', '2010-03-05', '234263', '身份证', '723482736', '24678@qq.com', '天府三街', '第二季');
INSERT INTO `memberuser` VALUES ('略略略', '丰城', '男', '1995-07-01', '247568', '身份证', '821974741', '23754@136.com', '北海道', '一点点');
INSERT INTO `memberuser` VALUES ('指上花开', '南苑', '女', '2009-12-16', '397853', '身份证', '349723470', 'yyda@499.com', '北京王府井', '菁蓉镇');
INSERT INTO `memberuser` VALUES ('张闪', '张三', '男', '1997-11-24', '123456', 'idtenyify', '544775248812345874', '李白', '四川', null);

-- ----------------------------
-- Table structure for `merchant`
-- ----------------------------
DROP TABLE IF EXISTS `merchant`;
CREATE TABLE `merchant` (
  `classify` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `compName` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `addre` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phonenumber` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zipCode` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `startLevel` int(10) DEFAULT NULL,
  `prpor` double(10,2) DEFAULT NULL,
  `pName` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sex` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `job` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobPhone` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cCode` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `passWord` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cf` int(11) DEFAULT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`compName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of merchant
-- ----------------------------
INSERT INTO `merchant` VALUES ('hotel', 'AIR', '四川省成都市太古里.九眼桥', '0285858558', '655000', '5', '0.05', 'Coco', '女', 'CEO', '13888888888', '0285858558', '4081', '983075095@qq.com', '13888888888', '123456', '1', 'img/hotle-3.webp');
INSERT INTO `merchant` VALUES ('hotel', 'DUDUSA·画', '四川省成都市太古里九眼桥兰桂坊', '0285858558', '655000', '5', '0.05', 'Coco', '女', 'CEO', '13888888888', '0285858558', '4081', '983075095@qq.com', '13888888888', '123456', '1', 'img/hotle-2.webp');
INSERT INTO `merchant` VALUES ('hotel', 'Loft古典新中式洋楼', '上海市法租界太原路', '0285858558', '655000', '5', '0.05', 'Coco', '女', 'CEO', '13888888888', '0285858558', '4081', '983075095@qq.com', '13888888888', '123456', '1', 'img/hotle-1.webp');
INSERT INTO `merchant` VALUES ('hotel', 'MOHUANG', '四川省成都市太古里九眼桥兰桂坊', '0285858558', '655000', '5', '0.05', '唐', '女', 'CEO', '13888888888', '0285858558', '4081', '983075095@qq.com', '13888888888', '123456', '1', 'img/index-1.webp');
INSERT INTO `merchant` VALUES ('shopping', '三星官方旗舰店', '四川省成都市新都区熊', ' 028-83510033', '655000', '3', '0.05', 'Jack', '男', 'CEO', '13778882797', '13778882797', '4081', '983075095@qq.com', '1', '123456', '1', 'img/shoping-3x.jpg');
INSERT INTO `merchant` VALUES ('food', '厘途', '四川省成都市青羊区斌升24附1', '028-85939393', '655000', '3', '0.05', 'Jack', '男', 'CEO', '13778882797', '13778882797', '4081', '983075095@qq.com', '1', '123456', '1', 'img/index-3.jpeg');
INSERT INTO `merchant` VALUES ('food', '园里火锅', '四川省成都市 段505仁国际c座三层', '028-85939393', '655000', '3', '0.05', 'Jack', '男', 'CEO', '13778882797', '13778882797', '4081', '983075095@qq.com', '1', '123456', '1', 'img/index-4.png');
INSERT INTO `merchant` VALUES ('travel', '大熊猫繁育研究基地', '四川省成都市新都区熊猫大道1375号（近北湖）', ' 028-83510033', '655000', '3', '0.05', 'Jack', '男', 'CEO', '13778882797', '13778882797', '4081', '983075095@qq.com', '1', '123456', '1', 'img/shop-panda.png');
INSERT INTO `merchant` VALUES ('entertain', '娱乐画馆', '四川省成都市武侯区天府大道北段1199号成都银泰中心in99六楼607-608号', '028-82889239', '655000', '3', '0.05', 'Jack', '男', 'CEO', '13778882797', '13778882797', '4081', '983075095@qq.com', '1', '123456', '1', 'img/shop-ylhg.jpg');
INSERT INTO `merchant` VALUES ('entertain', '日日煮美食体验馆', '四川省成都市武侯区成都武侯区交子大道300号悠方购物中心B1椰壳超市内', '028-67561311', '655000', '3', '0.05', 'Jack', '男', 'CEO', '13778882797', '13778882797', '4081', '983075095@qq.com', '1', '123456', '1', 'img/shop-rrz.jpg');
INSERT INTO `merchant` VALUES ('hotel', '第一', '四川', '1809234455', '524782', '5', '5.00', '张三', null, '', '12345666', null, '2543', 'zhangsan', '18925473447', '123456', '0', null);
INSERT INTO `merchant` VALUES ('hotel', '花舍/菠萝', '四川省成都市春熙路太古里市中心宽窄巷子', '0285858558', '655000', '5', '0.05', 'Coco', '女', 'CEO', '13888888888', '0285858558', '4081', '983075095@qq.com', '13888888888', '123456', '1', 'img/hotle-4.webp');
INSERT INTO `merchant` VALUES ('hotel', '茶花民宿', '四川省成都市春熙路IFS太古里', '0285858558', '655000', '5', '0.05', '唐', '女', 'CEO', '13888888888', '0285858558', '4081', '983075095@qq.com', '13888888888', '123456', '1', 'img/index-2.webp');
INSERT INTO `merchant` VALUES ('food', '集渔', '四川省成都市华府大道一段52号', '17726422511', '655000', '3', '0.05', 'Jack', '男', 'CEO', '13778882797', '13778882797', '4081', '983075095@qq.com', '1', '123456', '0', 'img/index-5.png');
INSERT INTO `merchant` VALUES ('food', '马尔代', '四川省成都市双流区双流东升镇蔵卫路南一段131号', '028-65400360', '655000', '3', '0.05', 'Jack', '男', 'CEO', '13778882797', '13778882797', '4081', '983075095@qq.com', '1', '123456', '1', 'img/shop-med.jpg');

-- ----------------------------
-- Table structure for `merchantmember`
-- ----------------------------
DROP TABLE IF EXISTS `merchantmember`;
CREATE TABLE `merchantmember` (
  `nickName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `compName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of merchantmember
-- ----------------------------
INSERT INTO `merchantmember` VALUES ('李白', '第一佳');
INSERT INTO `merchantmember` VALUES ('李白', '一点点');
INSERT INTO `merchantmember` VALUES ('李白', '菁蓉镇');

-- ----------------------------
-- Table structure for `message`
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `comment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `reply` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('非常好', '谢谢');
INSERT INTO `message` VALUES ('不好', '抱歉');

-- ----------------------------
-- Table structure for `replymember`
-- ----------------------------
DROP TABLE IF EXISTS `replymember`;
CREATE TABLE `replymember` (
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `replymember` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `replytime` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `replyname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of replymember
-- ----------------------------
INSERT INTO `replymember` VALUES ('张三', '谢谢反馈，会尽快处理', '2018-7-13', '李白');
INSERT INTO `replymember` VALUES ('张三', '我们会不断努力', '2018-7-19', '李白');
INSERT INTO `replymember` VALUES ('李白', '好哒', '2018-07-20 12:04:28', 'zhangsan');

-- ----------------------------
-- Table structure for `replymerchant`
-- ----------------------------
DROP TABLE IF EXISTS `replymerchant`;
CREATE TABLE `replymerchant` (
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `replytime` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `replymerchant` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `replyname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of replymerchant
-- ----------------------------

-- ----------------------------
-- Table structure for `review`
-- ----------------------------
DROP TABLE IF EXISTS `review`;
CREATE TABLE `review` (
  `compName` varchar(255) DEFAULT NULL,
  `review` varchar(255) DEFAULT NULL,
  `Date` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of review
-- ----------------------------
INSERT INTO `review` VALUES ('null', '好的', '2018-07-18 19:59:11');
INSERT INTO `review` VALUES ('兰桂坊', '很好', '2018-07-18 20:14:30');
INSERT INTO `review` VALUES ('兰桂坊', '太好了', '2018-07-18 20:15:55');
INSERT INTO `review` VALUES ('李白', 'null', '2018-07-19 14:51:30');
INSERT INTO `review` VALUES ('李白', '', '2018-07-19 16:24:30');
INSERT INTO `review` VALUES ('李白', 'null', '2018-07-19 16:26:19');

-- ----------------------------
-- Table structure for `score`
-- ----------------------------
DROP TABLE IF EXISTS `score`;
CREATE TABLE `score` (
  `nickName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `totalScore` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of score
-- ----------------------------
INSERT INTO `score` VALUES ('李白', '40');
INSERT INTO `score` VALUES ('张闪', '0');

-- ----------------------------
-- Table structure for `scorerecord`
-- ----------------------------
DROP TABLE IF EXISTS `scorerecord`;
CREATE TABLE `scorerecord` (
  `nickName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `compName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of scorerecord
-- ----------------------------
INSERT INTO `scorerecord` VALUES ('李白', '2009-11-02 11:32:08', '-45', '积分兑换', '第一佳');
INSERT INTO `scorerecord` VALUES ('李白', '2018-09-11 22:09:44', '-35', '积分兑换', '菁蓉镇');
INSERT INTO `scorerecord` VALUES ('李白', '2018-07-17 17:22:56', '-30', '兑换礼品', '七彩云平台');
INSERT INTO `scorerecord` VALUES ('李白', '2018-07-17 17:28:38', '-300', '兑换礼品', '七彩云平台');
INSERT INTO `scorerecord` VALUES ('李白', '2018-07-17 17:36:38', '-30', '兑换礼品', '七彩云平台');
INSERT INTO `scorerecord` VALUES ('李白', '2018-07-17 17:36:41', '-300', '兑换礼品', '七彩云平台');
INSERT INTO `scorerecord` VALUES ('李白', '2018-07-17 17:36:44', '-300', '兑换礼品', '七彩云平台');
INSERT INTO `scorerecord` VALUES ('李白', '2018-07-17 17:36:46', '-300', '兑换礼品', '七彩云平台');
INSERT INTO `scorerecord` VALUES ('李白', '2018-07-17 17:36:48', '-300', '兑换礼品', '七彩云平台');
INSERT INTO `scorerecord` VALUES ('李白', '2018-07-17 17:37:09', '-40', '兑换礼品', '七彩云平台');
INSERT INTO `scorerecord` VALUES ('李白', '2018-07-17 18:41:22', '-40', '兑换礼品', '七彩云平台');
INSERT INTO `scorerecord` VALUES ('李白', '2018-07-17 18:57:44', '-30', '兑换礼品', '七彩云平台');
INSERT INTO `scorerecord` VALUES ('李白', '2018-07-17 19:07:30', '-30', '兑换礼品', '七彩云平台');
INSERT INTO `scorerecord` VALUES ('李白', '2018-07-17 19:07:38', '-30', '兑换礼品', '七彩云平台');
INSERT INTO `scorerecord` VALUES ('李白', '2018-07-17 19:07:51', '-40', '兑换礼品', '七彩云平台');
INSERT INTO `scorerecord` VALUES ('李白', '2018-07-17 19:11:32', '-40', '兑换礼品', '七彩云平台');
INSERT INTO `scorerecord` VALUES ('李白', '2018-07-17 19:11:36', '-40', '兑换礼品', '七彩云平台');
INSERT INTO `scorerecord` VALUES ('李白', '2018-07-17 19:14:02', '-40', '兑换礼品', '七彩云平台');
INSERT INTO `scorerecord` VALUES ('李白', '2018-07-17 19:14:17', '-30', '兑换礼品', '七彩云平台');
INSERT INTO `scorerecord` VALUES ('李白', '2018-07-17 19:14:23', '-30', '兑换礼品', '七彩云平台');
INSERT INTO `scorerecord` VALUES ('李白', '2018-07-17 19:18:48', '-40', '兑换礼品', '七彩云平台');
INSERT INTO `scorerecord` VALUES ('李白', '2018-07-17 19:21:55', '-30', '兑换礼品', '七彩云平台');
INSERT INTO `scorerecord` VALUES ('李白', '2018-07-17 19:25:10', '-30', '兑换礼品', '七彩云平台');
INSERT INTO `scorerecord` VALUES ('李白', '2018-07-20 11:00:30', '-30', '积分兑换', '七彩云平台');

-- ----------------------------
-- Table structure for `search`
-- ----------------------------
DROP TABLE IF EXISTS `search`;
CREATE TABLE `search` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `volume` int(255) NOT NULL,
  `number` int(255) DEFAULT NULL,
  `Januarynumber` int(255) DEFAULT NULL,
  `Februarynumber` int(255) DEFAULT NULL,
  `Marchnumber` int(255) DEFAULT NULL,
  `Aprilnumber` int(255) DEFAULT NULL,
  `Maynumber` int(255) DEFAULT NULL,
  `Junenumber` int(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of search
-- ----------------------------
INSERT INTO `search` VALUES ('DUDUSA·画', '500', '8295', '111', '222', '333', '444', '555', '666');
INSERT INTO `search` VALUES ('第一佳', '1111', '17222', '2222', '1000', '2000', '3000', '4000', '5000');

-- ----------------------------
-- Table structure for `shangjiauser`
-- ----------------------------
DROP TABLE IF EXISTS `shangjiauser`;
CREATE TABLE `shangjiauser` (
  `ID` int(255) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(255) NOT NULL,
  `passWord` int(16) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shangjiauser
-- ----------------------------
INSERT INTO `shangjiauser` VALUES ('1', 'long', '123');
INSERT INTO `shangjiauser` VALUES ('2', 'longsheng', '123');
INSERT INTO `shangjiauser` VALUES ('3', 'éç', '123');
INSERT INTO `shangjiauser` VALUES ('4', '陇盛', '123');

-- ----------------------------
-- Table structure for `shop`
-- ----------------------------
DROP TABLE IF EXISTS `shop`;
CREATE TABLE `shop` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `compName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `productType` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `productPicture` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `productPrice` decimal(10,0) DEFAULT NULL,
  `productMemberPrice` decimal(10,0) DEFAULT NULL,
  `storage` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weekendPrice` decimal(10,0) DEFAULT NULL,
  `productIntroduction` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `availableState` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `specialTimePrice` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of shop
-- ----------------------------
INSERT INTO `shop` VALUES ('1', '三星官方旗舰店', '三星 GALAXY S8 SM-G9500 全网通 4G手机', '数码产品', '/产品图片/shopping-三星官方旗舰店.jpg', '4299', '4199', '100', '4299', '优惠700元 Samsung/三星 GALAXY S8 SM-G9500 全网通 4G手机', 'Y', '4299');
INSERT INTO `shop` VALUES ('2', '三星官方旗舰店', '三星 GALAXY S8 SM-G9500 全网通 4G手机', '数码产品', '/产品图片/shopping-三星官方旗舰店.jpg', '4299', '4199', '100', '4299', '优惠700元 Samsung/三星 GALAXY S8 SM-G9500 全网通 4G手机', 'Y', '4299');
INSERT INTO `shop` VALUES ('3', '三星官方旗舰店', '三星 GALAXY S8 SM-G9500 全网通 4G手机', '数码产品', '/产品图片/shopping-三星官方旗舰店.jpg', '4299', '4199', '100', '4299', '优惠700元 Samsung/三星 GALAXY S8 SM-G9500 全网通 4G手机', 'Y', '4299');
INSERT INTO `shop` VALUES ('4', '三星官方旗舰店', '三星 GALAXY S8 SM-G9500 全网通 4G手机', '数码产品', '/产品图片/shopping-三星官方旗舰店.jpg', '4299', '4199', '100', '4299', '优惠700元 Samsung/三星 GALAXY S8 SM-G9500 全网通 4G手机', 'Y', '4299');

-- ----------------------------
-- Table structure for `travelproductinformation`
-- ----------------------------
DROP TABLE IF EXISTS `travelproductinformation`;
CREATE TABLE `travelproductinformation` (
  `id` varchar(255) NOT NULL,
  `compName` varchar(255) NOT NULL,
  `travelName` varchar(255) NOT NULL,
  `travelType` varchar(100) NOT NULL,
  `travelPrice` varchar(10) NOT NULL,
  `productPicture` varchar(100) DEFAULT NULL,
  `weekendPrice` varchar(20) DEFAULT NULL,
  `specialTimePrice` varchar(10) DEFAULT NULL,
  `travelMemberPrice` varchar(20) DEFAULT NULL,
  `travelTime` varchar(20) DEFAULT NULL,
  `travelPlace` varchar(30) DEFAULT NULL,
  `reservationInformation` varchar(255) DEFAULT NULL,
  `recommendNumber` varchar(10) DEFAULT NULL,
  `invoice` varchar(2) DEFAULT NULL,
  `insurance` varchar(50) DEFAULT NULL,
  `startTime` varchar(20) DEFAULT NULL,
  `endTime` varchar(20) DEFAULT NULL,
  `travelIntroduction` varchar(255) DEFAULT NULL,
  `storage` varchar(20) DEFAULT NULL,
  `availableState` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of travelproductinformation
-- ----------------------------
INSERT INTO `travelproductinformation` VALUES ('1', '大熊猫繁育研究基地', '大熊猫繁育研究基地、都江堰景区纯玩1日跟团游', '景区', '289', '/产品图片/travel-大熊猫繁育研究基地.jpg', '299', '279', '279', '2天', '新都区熊猫大道，都江堰', '只能够整单退款·行程前0天0点--1天0点退款,每单收取手续费50%', '1-10人', '有', '有', '2016.05.16', '2018.08.31', '大熊猫繁育研究基地、都江堰景区纯玩1日跟团游*品盖碗茶、赏川剧变脸', '100', '1');
INSERT INTO `travelproductinformation` VALUES ('2', '大熊猫繁育研究基地', '大熊猫繁育研究基地、都江堰景区纯玩1日跟团游', '景区', '289', '/产品图片/travel-大熊猫繁育研究基地.jpg', '299', '279', '279', '2天', '新都区熊猫大道，都江堰', '只能够整单退款·行程前0天0点--1天0点退款,每单收取手续费50%', '1-10人', '有', '有', '2016.05.16', '2018.08.31', '大熊猫繁育研究基地、都江堰景区纯玩1日跟团游*品盖碗茶、赏川剧变脸', '100', '1');
INSERT INTO `travelproductinformation` VALUES ('3', '大熊猫繁育研究基地', '大熊猫繁育研究基地、都江堰景区纯玩1日跟团游', '景区', '289', '/产品图片/travel-大熊猫繁育研究基地.jpg', '299', '279', '279', '2天', '新都区熊猫大道，都江堰', '只能够整单退款·行程前0天0点--1天0点退款,每单收取手续费50%', '1-10人', '有', '有', '2016.05.16', '2018.08.31', '大熊猫繁育研究基地、都江堰景区纯玩1日跟团游*品盖碗茶、赏川剧变脸', '100', '1');
INSERT INTO `travelproductinformation` VALUES ('4', '大熊猫繁育研究基地', '大熊猫繁育研究基地、都江堰景区纯玩1日跟团游', '景区', '289', '/产品图片/travel-大熊猫繁育研究基地.jpg', '299', '279', '279', '2天', '新都区熊猫大道，都江堰', '只能够整单退款·行程前0天0点--1天0点退款,每单收取手续费50%', '1-10人', '有', '有', '2016.05.16', '2018.08.31', '大熊猫繁育研究基地、都江堰景区纯玩1日跟团游*品盖碗茶、赏川剧变脸', '100', '1');
