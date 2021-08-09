DROP DATABASE Tweets_NASDAQ_test;
CREATE DATABASE Tweets_NASDAQ_test;
USE Tweets_NASDAQ_test;

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
  `tweet_id` varchar(20) NOT NULL,
  `ticker_symbol` varchar(6) NOT NULL,
  CONSTRAINT `Company_Tweet_ibfk_1` FOREIGN KEY (`tweet_id`) REFERENCES `Tweet` (`tweet_id`),
  CONSTRAINT `Company_Tweet_ibfk_2` FOREIGN KEY (`ticker_symbol`) REFERENCES `Company` (`ticker_symbol`),
  PRIMARY KEY(`tweet_id`, `ticker_symbol`)	
);

CREATE TABLE `Company_Values` (
  `ticker_symbol` varchar(6) NOT NULL,
  `day_date` date NOT NULL,
  `close_value` float NOT NULL,
  `volume` int(11) NOT NULL,
  `open_value` float NOT NULL,
  `high_value` float NOT NULL,
  `low_value` float NOT NULL,
  CONSTRAINT `Company_Values_ibfk_1` FOREIGN KEY (`ticker_symbol`) REFERENCES `Company` (`ticker_symbol`),
  PRIMARY KEY (`ticker_symbol`, `day_date`)
);

LOAD DATA LOCAL INFILE '/home/ney/Documents/Big Data UN/archivos_nasdaq_kaggle/archive/Company.csv' INTO TABLE Company FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 LINES;















