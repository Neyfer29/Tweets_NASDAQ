DROP DATABASE Tweets_NASDAQ;
CREATE DATABASE Tweets_NASDAQ;
USE Tweets_NASDAQ;

CREATE TABLE `Company` (
  `ticker_symbol` varchar(6) NOT NULL,
  `company_name` varchar(25) NOT NULL,
  PRIMARY KEY (`ticker_symbol`)
);

CREATE TABLE `Tweet` (
  `tweet_id` varchar(20) NOT NULL,
  `writer` varchar(30),
  `post_date` date NOT NULL,
  `body` text(5000) NOT NULL,
  `comment_num` int(11) NOT NULL,
  `retweet_num` int(11) NOT NULL,
  `like_num` int(11) NOT NULL,
  PRIMARY KEY (`tweet_id`)
);

CREATE TABLE `Company_Tweet` (
  `id_Company_Tweet` int(11) NOT NULL AUTO_INCREMENT,
  `tweet_id` varchar(20) NOT NULL,
  `ticker_symbol` varchar(6) NOT NULL,
  PRIMARY KEY (`id_Company_Tweet`),
  KEY `tweet_id` (`tweet_id`),
  KEY `ticker_symbol` (`ticker_symbol`),
  CONSTRAINT `Company_Tweet_ibfk_1` FOREIGN KEY (`tweet_id`) REFERENCES `Tweet` (`tweet_id`),
  CONSTRAINT `Company_Tweet_ibfk_2` FOREIGN KEY (`ticker_symbol`) REFERENCES `Company` (`ticker_symbol`)
);

CREATE TABLE `Company_Values` (
  `id_CompanyValue` int(11) NOT NULL AUTO_INCREMENT,
  `ticker_symbol` varchar(6) NOT NULL,
  `day_date` date NOT NULL,
  `close_value` float NOT NULL,
  `volume` int(11) NOT NULL,
  `open_value` float NOT NULL,
  `high_value` float NOT NULL,
  `low_value` float NOT NULL,
  PRIMARY KEY (`id_CompanyValue`),
  KEY `ticker_symbol` (`ticker_symbol`),
  CONSTRAINT `Company_Values_ibfk_1` FOREIGN KEY (`ticker_symbol`) REFERENCES `Company` (`ticker_symbol`)
);







