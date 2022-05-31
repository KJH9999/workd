CREATE TABLE `user` (
  `email` varchar(50) NOT NULL,
  `pw` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `number` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `birth_date` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`email`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;