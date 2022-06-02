CREATE TABLE `youtube` (
  `videoUrl` varchar(50) NOT NULL,
  `thumbnailUrl` varchar(200) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` varchar(500) NOT NULL,
  `publishedAt` datetime NOT NULL,
  PRIMARY KEY (`videoUrl`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
