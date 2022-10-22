/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

CREATE TABLE `collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

CREATE TABLE `collection_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `collection_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `collection_id` (`collection_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `collection_product_ibfk_1` FOREIGN KEY (`collection_id`) REFERENCES `collection` (`id`),
  CONSTRAINT `collection_product_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` float NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

CREATE TABLE `tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

CREATE TABLE `tag_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tag_id` (`tag_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `tag_product_ibfk_1` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`),
  CONSTRAINT `tag_product_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

INSERT INTO `collection` (`id`, `title`, `description`) VALUES
(1, 'Apple', 'Apple c\'est cool');
INSERT INTO `collection` (`id`, `title`, `description`) VALUES
(2, 'iPhone', 'L\'iPhone c\'est cool. Donc on devrait l\'appeler iCool');


INSERT INTO `collection_product` (`id`, `collection_id`, `product_id`) VALUES
(1, 1, 1);
INSERT INTO `collection_product` (`id`, `collection_id`, `product_id`) VALUES
(2, 2, 1);
INSERT INTO `collection_product` (`id`, `collection_id`, `product_id`) VALUES
(3, 1, 2);
INSERT INTO `collection_product` (`id`, `collection_id`, `product_id`) VALUES
(4, 2, 2),
(5, 1, 3),
(6, 2, 3);

INSERT INTO `product` (`id`, `title`, `sku`, `description`, `price`, `quantity`) VALUES
(1, 'iPhone 14', 'iphone-14', 'Un super iphone 14', 1000.99, 100);
INSERT INTO `product` (`id`, `title`, `sku`, `description`, `price`, `quantity`) VALUES
(2, 'iPhone 14 Pro', 'iphone-14-pro', 'Un super iphone 14 pro', 1349.99, 200);
INSERT INTO `product` (`id`, `title`, `sku`, `description`, `price`, `quantity`) VALUES
(3, 'iPhone 14 Pro Max', 'iphone-14-pro-max', 'Un super iphone 14 pro', 1600, 150);

INSERT INTO `tag` (`id`, `title`) VALUES
(1, 'smartphone');
INSERT INTO `tag` (`id`, `title`) VALUES
(2, 'pro');
INSERT INTO `tag` (`id`, `title`) VALUES
(3, 'max');

INSERT INTO `tag_product` (`id`, `tag_id`, `product_id`) VALUES
(2, 1, 1);
INSERT INTO `tag_product` (`id`, `tag_id`, `product_id`) VALUES
(3, 1, 2);
INSERT INTO `tag_product` (`id`, `tag_id`, `product_id`) VALUES
(4, 2, 2);
INSERT INTO `tag_product` (`id`, `tag_id`, `product_id`) VALUES
(5, 1, 3),
(6, 2, 3),
(7, 3, 3);


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;