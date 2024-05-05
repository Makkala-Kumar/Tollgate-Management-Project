/*
MySQL Data Transfer
Source Host: localhost
Source Database: toll
Target Host: localhost
Target Database: toll
Date: 11/6/2012 7:47:11 PM
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for admin_amt
-- ----------------------------
DROP TABLE IF EXISTS `admin_amt`;
CREATE TABLE `admin_amt` (
  `type` varchar(255) NOT NULL,
  `amt` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for light
-- ----------------------------
DROP TABLE IF EXISTS `light`;
CREATE TABLE `light` (
  `journytype` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `from_date` varchar(255) NOT NULL,
  `to_date` varchar(255) NOT NULL,
  `vechile_no` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for newuser
-- ----------------------------
DROP TABLE IF EXISTS `newuser`;
CREATE TABLE `newuser` (
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `yourname` varchar(255) NOT NULL,
  `regstate` varchar(255) NOT NULL,
  `vehicleno` varchar(255) NOT NULL,
  `phoneno` varchar(255) NOT NULL,
  `emailid` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `admin` VALUES ('admin', 'admin');
INSERT INTO `admin_amt` VALUES ('lightvehicle', '34');
INSERT INTO `admin_amt` VALUES ('lightcommercial_vehicle', '60');
INSERT INTO `admin_amt` VALUES ('medium_vehicle', '120');
INSERT INTO `admin_amt` VALUES ('large_vehicle', '190');
INSERT INTO `admin_amt` VALUES ('extralarge_vehicle', '250');
INSERT INTO `light` VALUES ('dj', '240', '06-11-2012', '07-11-2012', 'TN21p4545', 'thiruttani', 'parthi', 'medium_vehicle');
INSERT INTO `light` VALUES ('dj', '68', '06-11-2012', '07-11-2012', 'TN21p4545', 'thiruttani', 'parthi', 'lightvehicle');
INSERT INTO `light` VALUES ('d1j', '570', '06-11-2012', '07-11-2012', 'TN21k3434', 'arakkonam', 'raman ks', 'large_vehicle');
INSERT INTO `newuser` VALUES ('parthiban', 'parthiban', 'parthi', 'TN', '21p4545', '9843444455', 'parthi@gmail.com', 'thiruttani');
INSERT INTO `newuser` VALUES ('ram', 'ram', 'raman ks', 'TN', '21k3434', '9789534737', 'ram@gmail.com', 'arakkonam');
