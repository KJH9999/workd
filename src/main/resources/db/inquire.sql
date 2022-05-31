CREATE TABLE `inquire` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(30) DEFAULT NULL,
  `question` varchar(500) DEFAULT NULL,
  `answer` varchar(500) DEFAULT NULL,
  `at_time` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`idx`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;