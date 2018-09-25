/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50173
Source Host           : localhost:3306
Source Database       : makefriends

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2018-09-11 20:38:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for chat
-- ----------------------------
DROP TABLE IF EXISTS `chat`;
CREATE TABLE `chat` (
  `chat_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id1` int(11) NOT NULL,
  `user_id2` int(11) NOT NULL,
  `content` varchar(500) NOT NULL,
  `time` date NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`chat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

select * from email;

-- ----------------------------
-- Records of chat
-- ----------------------------

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `dynamic_id` int(11) NOT NULL,
  `time` date NOT NULL,
  `content` varchar(1000) NOT NULL,
  `count` int(11) NOT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
select * from comment;
delete from comment where user_id=4;
-- ----------------------------
-- Records of comment
-- ----------------------------

-- ----------------------------
-- Table structure for dynamic
-- ----------------------------
DROP TABLE IF EXISTS `dynamic`;
CREATE TABLE `dynamic` (
  `dynamic_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `time` date NOT NULL,
  `content` varchar(1000) NOT NULL,
  `count` int(11) NOT NULL,
  PRIMARY KEY (`dynamic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
select * from user;
select * from friends;
insert into dynamic(user_id,time,content,count) values(6,now(),'哈哈哈',0);
select * from dynamic;
select dynamic.*,user.username from dynamic inner join user on dynamic.user_id = user.user_id
where dynamic.user_id not in ((select user_id2 from friends where user_id1=4 and status = 1),4);
-- ----------------------------
-- Records of dynamic
-- ----------------------------

-- ----------------------------
-- Table structure for friends
-- ----------------------------
DROP TABLE IF EXISTS `friends`;
CREATE TABLE `friends` (
  `user_id1` int(11) NOT NULL,
  `user_id2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
delete from friends where user_id1=6 and status=0;
insert into friends values(6,4,1);--6号做验证
insert into friends values(4,8,1);--用来显示而已
select * from user;
select * from friends;
update user set email='1685520561@qq.com' where user_id=6;
select * from user where user_id in (select user_id2 from friends where user_id1=1)
delete from friends where user_id1 = 6 and user_id2 = 6
delete from friends where user_id1 = 4 and user_id2 = 7
-- ----------------------------
-- Records of friends
-- ----------------------------

-- ----------------------------
-- Table structure for picture
-- ----------------------------
DROP TABLE IF EXISTS `picture`;
CREATE TABLE `picture` (
  `picture_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  PRIMARY KEY (`picture_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
select * from picture;
delete from picture where user_id=4;
-- ----------------------------
-- Records of picture
-- ----------------------------

-- ----------------------------
-- Table structure for snap
-- ----------------------------
DROP TABLE IF EXISTS `snap`;
CREATE TABLE `snap` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `dynamic_id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of snap
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `age` int(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `height` double DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `bloodtype` varchar(255) DEFAULT NULL,
  `star` varchar(255) DEFAULT NULL,
  `marriage` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `education` varchar(255) DEFAULT NULL,
  `hobby` varchar(255) DEFAULT NULL,
  `school` varchar(255) DEFAULT NULL,
  `major` varchar(255) DEFAULT NULL,
  `income` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
delete from user where user_id=3
select * from user;
insert into user(username,age,password,email,sex,content) values('lqq',22,'a','1685520561@qq.com','女','hhh');
insert into user(username,age,password,email,sex,content) values('lq',20,'a','123@qq.com','女','hhh');
insert into user(username,age,password,email,sex,content) values('wzf',20,'a','456@qq.com','男','hhh');
select * from friends;
-- ----------------------------
-- Records of user
-- ----------------------------
select * from email;


--用户表:   user（user_id，username，age , password，email，sex，height,weight,bloodtype,star,marriage,position,education,hobby,school,major,income,content）
--照片表:  picture（picture_id， user_id，path）
--好友表：   friends(user_id1，user_id2)
--聊天表： chat(chat_id，user_id1,user_id2,content,time,status)                            
--发表动态：dynamic(dynamic_id,user_id,time，content，count)
--评论表:    comment(comment_id,user_id，dynamic_id，time，content , count)        
--点赞记录表:    snap(user_id ,dynamic_id ,comment_id, type ,status)

