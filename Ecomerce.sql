/*
SQLyog Community v12.02 (32 bit)
MySQL - 5.5.29 : Database - ecommerce_review
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ecommerce_review` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `ecommerce_review`;

/*Table structure for table `add_product` */

DROP TABLE IF EXISTS `add_product`;

CREATE TABLE `add_product` (
  `pid` int(200) NOT NULL AUTO_INCREMENT,
  `cat` varchar(200) DEFAULT NULL,
  `pname` varchar(200) DEFAULT NULL,
  `price` varchar(200) DEFAULT NULL,
  `word` varchar(200) DEFAULT NULL,
  `pic` text,
  `rating` varchar(200) DEFAULT '0',
  `feedback` varchar(200) DEFAULT '-',
  `likes` varchar(200) DEFAULT '0',
  `dislike` varchar(200) DEFAULT '1',
  `rank` int(200) DEFAULT NULL,
  `buyerid` varchar(200) DEFAULT NULL,
  `buyername` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `add_product` */

insert  into `add_product`(`pid`,`cat`,`pname`,`price`,`word`,`pic`,`rating`,`feedback`,`likes`,`dislike`,`rank`,`buyerid`,`buyername`) values (2,'electronics','speaker','4000','speaker','speaker.jpg','2','nice one','2','2',3,'1','padmasri'),(4,'hand bags','skybags','1000','handbags','login_bg.jpg','5','nice very good','0','1',1,'1','padmasri'),(5,'book','java','600','8','5.jpg','1','Bad Product','3','3',1,'6','Lakshmi'),(6,'table','Dinning Table','12000','42As34','thei3.jpg','5','Very good products','2','1',NULL,'4','praba'),(7,'table','Dinning Table 1','20000','45T34','tab1.jpg','0','-','0','1',NULL,NULL,NULL),(8,'LG','Washing Machince','12,000','3 to 5','5.jpg','1','Worst Product','1','1',NULL,'6','Lakshmi'),(9,'LG','Fridge','50000','4','1.png','0','-','2','1',NULL,NULL,NULL);

/*Table structure for table `adnotify` */

DROP TABLE IF EXISTS `adnotify`;

CREATE TABLE `adnotify` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) DEFAULT NULL,
  `ad_id` varchar(200) DEFAULT NULL,
  `cat` varchar(200) DEFAULT NULL,
  `publicity` varchar(200) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `descp` varchar(200) DEFAULT NULL,
  `rent` varchar(200) DEFAULT NULL,
  `timing` varchar(200) DEFAULT NULL,
  `queries` varchar(200) DEFAULT NULL,
  `ad_pic` varchar(200) DEFAULT NULL,
  `cost` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `adnotify` */

insert  into `adnotify`(`id`,`username`,`ad_id`,`cat`,`publicity`,`title`,`descp`,`rent`,`timing`,`queries`,`ad_pic`,`cost`) values (1,'praba','2','NEWS','TV AD PUBLISH','study',' AD DESCRIPTION  good','PUBLISH FOR 1 WEE','3 Min:00 SEC','sathya','event.jpg','3000'),(2,'praba','2','NEWS','TV AD PUBLISH','study',' AD DESCRIPTION  good','PUBLISH FOR 1 WEE','3 Min:00 SEC','sathya','event.jpg','3000');

/*Table structure for table `ads` */

DROP TABLE IF EXISTS `ads`;

CREATE TABLE `ads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat` varchar(200) DEFAULT NULL,
  `publicity` varchar(200) DEFAULT NULL,
  `rent` varchar(22) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `ads` */

insert  into `ads`(`id`,`cat`,`publicity`,`rent`) values (1,'null','null','null'),(2,'NEWS','TV AD PUBLISH','PUBLISH FOR 1 WEE');

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `category` */

insert  into `category`(`id`,`category_name`) values (10,'book'),(11,'table'),(12,'LG');

/*Table structure for table `domain` */

DROP TABLE IF EXISTS `domain`;

CREATE TABLE `domain` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `domain` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `domain` */

insert  into `domain`(`id`,`domain`) values (1,'Education'),(2,'Movies'),(3,'News'),(4,'Music'),(5,'Sports');

/*Table structure for table `friend_request` */

DROP TABLE IF EXISTS `friend_request`;

CREATE TABLE `friend_request` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `uid` varchar(200) DEFAULT NULL,
  `uname` varchar(200) DEFAULT NULL,
  `fid` varchar(200) DEFAULT NULL,
  `fname` varchar(200) DEFAULT NULL,
  `mobile` varchar(200) DEFAULT NULL,
  `mail` varchar(200) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `fpic` text,
  `status` varchar(200) DEFAULT 'waiting',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `friend_request` */

insert  into `friend_request`(`id`,`uid`,`uname`,`fid`,`fname`,`mobile`,`mail`,`city`,`fpic`,`status`) values (1,'1','padmasri','2','madhuri','9988776655','1croreprojects.javateam@gmail.com','chennai','Lighthouse.jpg','Accept'),(2,'4','praba','1','padmasri','9393843944','1croreproject.javateam@gmail.com','chennai','h9.jpg','Accept'),(3,'5','aaa','4','praba','213456775','sarojini@gmail.com','chennai','c3.jpg','Accept');

/*Table structure for table `negative` */

DROP TABLE IF EXISTS `negative`;

CREATE TABLE `negative` (
  `neg` varchar(40) DEFAULT NULL,
  `polarity` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `negative` */

insert  into `negative`(`neg`,`polarity`) values ('worst','0.5'),('failed','0.5'),('poor','0.5'),('unsatistied','0.5'),('dont buy','0.5'),('waste','0.5'),('waste product','0.5'),('useless','0.5'),('poor','0.5'),('poor design','0.5'),('poor product','0.5'),('0% satisfied','0.5'),('average','0.5'),('flop','0.5'),('utter','0.5'),('waste of time','0.5'),('annoy','0.5'),('annoyed','1'),('annoying','0.5'),('not amazing','0.5'),('not ok','0.5'),('fuck','0.5'),('fuck off','0.5'),('bull shit','0.5'),('shit product','0.5'),('under performed','0.5'),('under performance','0.5'),('flaw','0.5'),('flawed product','0.5'),('damaged','0.5'),('damaged product','0.5'),('waste of money','0.5'),('cant believe this','0.5'),('whook','0.5'),('eeee','0.5'),('f***k','0.5'),('average product','0.5'),('shitty product','0.5'),('not satisfied','0.5'),('non delighted','0.5'),('not','0.5'),('bad','0.5'),('useless','0.5');

/*Table structure for table `negative_reviews` */

DROP TABLE IF EXISTS `negative_reviews`;

CREATE TABLE `negative_reviews` (
  `id` int(100) DEFAULT NULL,
  `product` varchar(200) DEFAULT NULL,
  `category` varchar(200) DEFAULT NULL,
  `reviews` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `negative_reviews` */

/*Table structure for table `netrual` */

DROP TABLE IF EXISTS `netrual`;

CREATE TABLE `netrual` (
  `product` varchar(200) DEFAULT NULL,
  `category` varchar(200) DEFAULT NULL,
  `reviews` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `netrual` */

/*Table structure for table `neutral_reviews` */

DROP TABLE IF EXISTS `neutral_reviews`;

CREATE TABLE `neutral_reviews` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `product` varchar(100) DEFAULT NULL,
  `category` varchar(200) DEFAULT NULL,
  `reviews` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `neutral_reviews` */

/*Table structure for table `payment` */

DROP TABLE IF EXISTS `payment`;

CREATE TABLE `payment` (
  `id` int(11) DEFAULT NULL,
  `uname` varchar(200) DEFAULT NULL,
  `adid` varchar(200) DEFAULT NULL,
  `cat` varchar(200) DEFAULT NULL,
  `publicity` varchar(200) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `cardname` varchar(200) DEFAULT NULL,
  `cardno` varchar(200) DEFAULT NULL,
  `cvv` varchar(200) DEFAULT NULL,
  `cost` varchar(200) DEFAULT NULL,
  `payment` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `payment` */

insert  into `payment`(`id`,`uname`,`adid`,`cat`,`publicity`,`title`,`cardname`,`cardno`,`cvv`,`cost`,`payment`) values (NULL,'praba','2','NEWS','TV AD PUBLISH','study','praba','938438403070374','E','3000','Amount Paid');

/*Table structure for table `positive` */

DROP TABLE IF EXISTS `positive`;

CREATE TABLE `positive` (
  `gud` varchar(38) DEFAULT NULL,
  `polarity` double(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `positive` */

insert  into `positive`(`gud`,`polarity`) values ('A+',1.00),('A1',1.00),('A++',1.00),('AA+',1.00),('fab',0.00),('rad',1.00),('A+++',1.00),('AAA+',1.00),('A-OK',1.00),('a-ok',1.00),('best',1.00),('cool',1.00),('deal',1.00),('fast',1.00),('fine',1.00),('nice',1.00),('safe',1.00),('thx',0.00),('thanks',0.00),('tops',1.00),('wow',1.00),('clean',1.00),('grand',0.00),('great',1.00),('happy',1.00),('prime',1.00),('quick',1.00),('rapid',1.00),('solid',1.00),('super',1.00),('swift',1.00),('thanks',0.00),('value',1.00),('whoa!',1.00),('whoa',1.00),('choice',1.00),('dealer',1.00),('groovy',1.00),('honest',1.00),('polite',1.00),('secure',1.00),('seller',0.00),('snappy',0.00),('speedy',1.00),('super',1.00),('superb',1.00),('timely',0.00),('vendor',0.00),('zowie',1.00),('amazing',1.00),('auction',1.00),('awesome',1.00),('elegant',0.00),('classic',0.00),('genuine',1.00),('perfect',1.00),('classy',1.00),('master piece',0.00),('pleased',0.00),('quality',0.00),('sweet',1.00),('sweeet',1.00),('accurate',1.00),('ecstatic',1.00),('fabulous',1.00),('flawless',1.00),('friendly',1.00),('glorious',1.00),('good buy',1.00),('gorgeous',1.00),('pleasant',1.00),('peerlessstandout',1.00),('stunning',1.00),('superior',1.00),('the best',1.00),('the bomb',1.00),('thrilled',0.00),('up front',1.00),('way cool',1.00),('all right',1.00),('As listed',1.00),('authentic',1.00),('brilliant',1.00),('competant',1.00),('delighted',1.00),('excellent',1.00),('great buy',1.00),('love this',1.00),('low price',1.00),('marvellous',1.00),('overjoyed',1.00),('over joyed',1.00),('satisfied',1.00),('thank you',1.00),('top notch',1.00),('unrivaled',1.00),('very best',1.00),('wonderful',1.00),('astounding',1.00),('delightful',1.00),('first rate',1.00),('good rate',1.00),('good value',1.00),('great deal',1.00),('great item ',1.00),('im elated',1.00),('impressive',1.00),('incredible',0.00),('supercool',1.00),('superfast',0.00),('supersonic',1.00),('astounding',1.00),('considerate',1.00),('cooperative',1.00),('user friendly',1.00),('interesting',1.00),('magnifient',1.00),('no problem',0.00),('outstanding',1.00),('splendourous',1.00),('trustworthy',1.00),('unsurpassed',0.00),('well packed',0.00),('wicked cool',1.00),('as described',0.00),('breathtaking',1.00),('just perfect',1.00),('looking good',1.00),('looking cool',1.00),('looking awesome',1.00),('looking pro',1.00),('professional',0.00),('unbelievable',1.00),('no compalints',1.00),('thanks a ton!',1.00),('extremely cool',1.00),('satisfied 100%',1.00),('well protected',1.00),('state of the art',1.00),('unbelievable cool',1.00),('very good',1.00),('wonderful as described',1.00),('beyond my wildest dreams',1.00),('im very happy with this i',1.00),('awesome product',1.00),('good',1.00);

/*Table structure for table `positive_reviews` */

DROP TABLE IF EXISTS `positive_reviews`;

CREATE TABLE `positive_reviews` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `product` varchar(200) DEFAULT NULL,
  `category` varchar(200) DEFAULT NULL,
  `reviews` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `positive_reviews` */

insert  into `positive_reviews`(`id`,`product`,`category`,`reviews`) values (1,'speaker','electronics','nice one'),(2,'skybags','hand bags','nice very good'),(3,'Dinning Table','table','Very good products');

/*Table structure for table `post` */

DROP TABLE IF EXISTS `post`;

CREATE TABLE `post` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `domain` varchar(100) DEFAULT NULL,
  `postname` varchar(200) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `author` varchar(200) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `profile_pic` text,
  `recommend` int(100) DEFAULT '0',
  `likes` int(100) DEFAULT '0',
  `dislike` int(100) DEFAULT '0',
  `credits` int(100) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `post` */

insert  into `post`(`id`,`username`,`domain`,`postname`,`title`,`author`,`description`,`profile_pic`,`recommend`,`likes`,`dislike`,`credits`) values (2,'Vivek','Education','Article On Education ','Importance of Education for Individual:','David Becham','ascascascascascascascsa','bg.jpg',1,3,1,15),(5,'karthik','Movies','Article On Flims','Strangers Things','Stephen Hakwing','World of Cinema which need to be witnessed and discussed from a different perspective, moving ahead of the routine. ','CloudStorage.jpg',1,3,1,0),(6,'karthik','News','Aritlce on GobalWarming','Impact on world due to gobal warming','James Goslings','ascascascascascascascsa','bg3.jpg',1,1,0,0),(7,'ram','Sports','Article on Sports','Sports Performance in Olympics','B S DAS','Impoeratnce of sports in for life','images111.jpg',1,2,1,11),(8,'lakshmi','Education','educarion','engineering ','deeeee','there are many cganglessc in engineering  field','enmed.jpg',0,0,0,0);

/*Table structure for table `ranking` */

DROP TABLE IF EXISTS `ranking`;

CREATE TABLE `ranking` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `product` varchar(200) DEFAULT NULL,
  `positive` varchar(200) DEFAULT NULL,
  `negative` varchar(200) DEFAULT NULL,
  `neutral` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `ranking` */

insert  into `ranking`(`id`,`product`,`positive`,`negative`,`neutral`) values (1,'Dinning Table','1','0','0'),(2,'skybags','1','0','0'),(3,'speaker','1','0','0');

/*Table structure for table `recommend` */

DROP TABLE IF EXISTS `recommend`;

CREATE TABLE `recommend` (
  `sno` int(22) NOT NULL AUTO_INCREMENT,
  `uid` varchar(200) DEFAULT NULL,
  `uname` varchar(200) DEFAULT NULL,
  `pid` varchar(200) DEFAULT NULL,
  `pname` varchar(200) DEFAULT NULL,
  `price` varchar(200) DEFAULT NULL,
  `rating` varchar(200) DEFAULT NULL,
  `feedback` text,
  `fname` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

/*Data for the table `recommend` */

insert  into `recommend`(`sno`,`uid`,`uname`,`pid`,`pname`,`price`,`rating`,`feedback`,`fname`,`status`) values (8,'1','padmasri','4','skybags','1000','4','good products','madhuri','Postive'),(9,'1','padmasri','4','skybags','1000','5','nice very good','madhuri','Postive'),(10,'1','padmasri','5','java','600','2','bad products','madhuri','Negative'),(11,'4','praba','6','Dinning Table','12000','5','Very good products','padmasri','Postive'),(12,'6','Lakshmi','5','java','600','1','Useless Products','null','Negative'),(13,'6','Lakshmi','5','java','600','1','Bad Product','null','Negative'),(14,'6','Lakshmi','8','Washing Machince','12,000','1','Bad Product','null','Negative'),(15,'6','Lakshmi','8','Washing Machince','12,000','1','Very Worst','null','Negative'),(16,'6','Lakshmi','8','Washing Machince','12,000','2','Bad Product','null','Negative'),(17,'6','Lakshmi','8','Washing Machince','12,000','1','Worst Product','null','Negative');

/*Table structure for table `search` */

DROP TABLE IF EXISTS `search`;

CREATE TABLE `search` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `domain` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `search` */

/*Table structure for table `user_register` */

DROP TABLE IF EXISTS `user_register`;

CREATE TABLE `user_register` (
  `user_id` int(200) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `mobile` varchar(200) DEFAULT NULL,
  `mail` varchar(200) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `profile_pic` text,
  `status` varchar(200) DEFAULT 'Un-Authorized',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `user_register` */

insert  into `user_register`(`user_id`,`username`,`password`,`mobile`,`mail`,`city`,`profile_pic`,`status`) values (1,'padmasri','padma','9988776655','1croreprojects.javateam@gmail.com','chennai','Lighthouse.jpg','Authorized'),(2,'madhuri','madhu','9988776655','madhu@gmail.com','chennai','Chrysanthemum.jpg','Authorized'),(3,'nivetha','nive','9988776655','1croreprojects.javateam@gmail.com','chennai','Koala.jpg','Authorized'),(4,'praba','praba','9393843944','1croreproject.javateam@gmail.com','chennai','h9.jpg','Authorized'),(5,'aaa','aaa','213456775','sarojini@gmail.com','chennai','c3.jpg','Authorized'),(6,'Lakshmi','lakshmi','9876543245','lakshmi@gmail.com','Chennai','13-132360_size-admin-user-icon-png.png','Authorized');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
