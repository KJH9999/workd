CREATE TABLE `board` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) DEFAULT NULL,
  `content` varchar(500) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `at_time` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`idx`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3;