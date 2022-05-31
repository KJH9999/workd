CREATE TABLE `youtube` (
  `videoUrl` varchar(12) NOT NULL,
  `thumbnailUrl` varchar(50) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  `publishedAt` date NOT NULL,
  PRIMARY KEY (`videoUrl`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

insert into youtube(videoUrl, thumbnailUrl, title, description, publishedAt) values('1','1','1','1','1');
insert into youtube(videoUrl, thumbnailUrl, title, description, publishedAt) values('2','1','1','1','1');
insert into youtube(videoUrl, thumbnailUrl, title, description, publishedAt) values('3','1','1','1','1');
insert into youtube(videoUrl, thumbnailUrl, title, description, publishedAt) values('4','1','1','1','1');
insert into youtube(videoUrl, thumbnailUrl, title, description, publishedAt) values('5','1','1','1','1');