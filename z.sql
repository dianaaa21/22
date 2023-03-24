#
# TABLE STRUCTURE FOR: Author
#

DROP TABLE IF EXISTS `Author`;

CREATE TABLE `Author` (
  `music_music_id` int(11) NOT NULL,
  `music_genres_genres_id` int(11) NOT NULL,
  `user_userid` int(11) NOT NULL,
  PRIMARY KEY (`music_music_id`,`music_genres_genres_id`,`user_userid`),
  KEY `fk_music_has_user_user1_idx` (`user_userid`),
  KEY `fk_music_has_user_music1_idx` (`music_music_id`,`music_genres_genres_id`),
  CONSTRAINT `fk_music_has_user_music1` FOREIGN KEY (`music_music_id`, `music_genres_genres_id`) REFERENCES `music` (`music_id`, `genres_genres_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_music_has_user_user1` FOREIGN KEY (`user_userid`) REFERENCES `user` (`userid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `Author` (`music_music_id`, `music_genres_genres_id`, `user_userid`) VALUES (3, 5587, 49);
INSERT INTO `Author` (`music_music_id`, `music_genres_genres_id`, `user_userid`) VALUES (3, 5587, 631314577);


#
# TABLE STRUCTURE FOR: genres
#

DROP TABLE IF EXISTS `genres`;

CREATE TABLE `genres` (
  `genres_id` int(11) NOT NULL,
  `title` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`genres_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `genres` (`genres_id`, `title`) VALUES (0, 'ad');
INSERT INTO `genres` (`genres_id`, `title`) VALUES (9, 'beatae');
INSERT INTO `genres` (`genres_id`, `title`) VALUES (82, 'est');
INSERT INTO `genres` (`genres_id`, `title`) VALUES (89, 'vitae');
INSERT INTO `genres` (`genres_id`, `title`) VALUES (890, 'in');
INSERT INTO `genres` (`genres_id`, `title`) VALUES (4044, 'dicta');
INSERT INTO `genres` (`genres_id`, `title`) VALUES (5587, 'atque');
INSERT INTO `genres` (`genres_id`, `title`) VALUES (632265, 'fugiat');
INSERT INTO `genres` (`genres_id`, `title`) VALUES (697655, 'amet');
INSERT INTO `genres` (`genres_id`, `title`) VALUES (702216, 'neque');
INSERT INTO `genres` (`genres_id`, `title`) VALUES (3815786, 'omnis');
INSERT INTO `genres` (`genres_id`, `title`) VALUES (26307831, 'libero');
INSERT INTO `genres` (`genres_id`, `title`) VALUES (87982905, 'numquam');


#
# TABLE STRUCTURE FOR: likes
#

DROP TABLE IF EXISTS `likes`;

CREATE TABLE `likes` (
  `likes_id` int(11) NOT NULL,
  `music_music_id` int(11) NOT NULL,
  `user_userid` int(11) NOT NULL,
  PRIMARY KEY (`likes_id`),
  KEY `fk_likes_music1_idx` (`music_music_id`),
  KEY `fk_likes_user1_idx` (`user_userid`),
  CONSTRAINT `fk_likes_music1` FOREIGN KEY (`music_music_id`) REFERENCES `music` (`music_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_likes_user1` FOREIGN KEY (`user_userid`) REFERENCES `user` (`userid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `likes` (`likes_id`, `music_music_id`, `user_userid`) VALUES (0, 936, 3434190);
INSERT INTO `likes` (`likes_id`, `music_music_id`, `user_userid`) VALUES (5, 936, 687);
INSERT INTO `likes` (`likes_id`, `music_music_id`, `user_userid`) VALUES (7, 417920, 3405501);
INSERT INTO `likes` (`likes_id`, `music_music_id`, `user_userid`) VALUES (8, 3590180, 73);
INSERT INTO `likes` (`likes_id`, `music_music_id`, `user_userid`) VALUES (26, 417920, 707307);
INSERT INTO `likes` (`likes_id`, `music_music_id`, `user_userid`) VALUES (98, 2850, 73);
INSERT INTO `likes` (`likes_id`, `music_music_id`, `user_userid`) VALUES (833, 2, 707307);
INSERT INTO `likes` (`likes_id`, `music_music_id`, `user_userid`) VALUES (882, 936, 22287301);
INSERT INTO `likes` (`likes_id`, `music_music_id`, `user_userid`) VALUES (929, 936, 4263);
INSERT INTO `likes` (`likes_id`, `music_music_id`, `user_userid`) VALUES (2810, 936, 707307);
INSERT INTO `likes` (`likes_id`, `music_music_id`, `user_userid`) VALUES (95127, 2, 25246);
INSERT INTO `likes` (`likes_id`, `music_music_id`, `user_userid`) VALUES (633903, 574760, 22287301);
INSERT INTO `likes` (`likes_id`, `music_music_id`, `user_userid`) VALUES (9428283, 936, 73);


#
# TABLE STRUCTURE FOR: music
#

DROP TABLE IF EXISTS `music`;

CREATE TABLE `music` (
  `music_id` int(11) NOT NULL,
  `title` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `genres_genres_id` int(11) NOT NULL,
  PRIMARY KEY (`music_id`,`genres_genres_id`),
  KEY `fk_music_genres1_idx` (`genres_genres_id`),
  CONSTRAINT `fk_music_genres1` FOREIGN KEY (`genres_genres_id`) REFERENCES `genres` (`genres_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `music` (`music_id`, `title`, `genres_genres_id`) VALUES (0, 'commodi', 4044);
INSERT INTO `music` (`music_id`, `title`, `genres_genres_id`) VALUES (3, 'quis', 5587);
INSERT INTO `music` (`music_id`, `title`, `genres_genres_id`) VALUES (5, 'recusandae', 87982905);
INSERT INTO `music` (`music_id`, `title`, `genres_genres_id`) VALUES (12, 'itaque', 3815786);
INSERT INTO `music` (`music_id`, `title`, `genres_genres_id`) VALUES (37, 'labore', 632265);
INSERT INTO `music` (`music_id`, `title`, `genres_genres_id`) VALUES (56, 'neque', 89);
INSERT INTO `music` (`music_id`, `title`, `genres_genres_id`) VALUES (61, 'hic', 702216);
INSERT INTO `music` (`music_id`, `title`, `genres_genres_id`) VALUES (367, 'laudantium', 632265);
INSERT INTO `music` (`music_id`, `title`, `genres_genres_id`) VALUES (1622, 'qui', 4044);
INSERT INTO `music` (`music_id`, `title`, `genres_genres_id`) VALUES (5923, 'ipsam', 3815786);
INSERT INTO `music` (`music_id`, `title`, `genres_genres_id`) VALUES (22054, 'assumenda', 5587);
INSERT INTO `music` (`music_id`, `title`, `genres_genres_id`) VALUES (39099, 'architecto', 26307831);
INSERT INTO `music` (`music_id`, `title`, `genres_genres_id`) VALUES (46813, 'harum', 3815786);
INSERT INTO `music` (`music_id`, `title`, `genres_genres_id`) VALUES (1885768, 'tenetur', 82);
INSERT INTO `music` (`music_id`, `title`, `genres_genres_id`) VALUES (2060567, 'odit', 82);
INSERT INTO `music` (`music_id`, `title`, `genres_genres_id`) VALUES (5095343, 'est', 697655);
INSERT INTO `music` (`music_id`, `title`, `genres_genres_id`) VALUES (6566023, 'est', 890);
INSERT INTO `music` (`music_id`, `title`, `genres_genres_id`) VALUES (7258626, 'nesciunt', 632265);
INSERT INTO `music` (`music_id`, `title`, `genres_genres_id`) VALUES (7262780, 'ex', 702216);
INSERT INTO `music` (`music_id`, `title`, `genres_genres_id`) VALUES (8343515, 'sapiente', 702216);
INSERT INTO `music` (`music_id`, `title`, `genres_genres_id`) VALUES (33552197, 'eaque', 9);
INSERT INTO `music` (`music_id`, `title`, `genres_genres_id`) VALUES (35704320, 'id', 890);
INSERT INTO `music` (`music_id`, `title`, `genres_genres_id`) VALUES (717743726, 'sapiente', 0);


#
# TABLE STRUCTURE FOR: podpiska
#

DROP TABLE IF EXISTS `podpiska`;

CREATE TABLE `podpiska` (
  `podpiska_id` int(11) NOT NULL,
  `tip_podpiski_tip_podpiski_id` int(11) NOT NULL,
  `user_userid` int(11) NOT NULL,
  PRIMARY KEY (`podpiska_id`,`tip_podpiski_tip_podpiski_id`,`user_userid`),
  KEY `fk_podpiska_tip_podpiski1_idx` (`tip_podpiski_tip_podpiski_id`),
  KEY `fk_podpiska_user1_idx` (`user_userid`),
  CONSTRAINT `fk_podpiska_tip_podpiski1` FOREIGN KEY (`tip_podpiski_tip_podpiski_id`) REFERENCES `tip_podpiski` (`tip_podpiski_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_podpiska_user1` FOREIGN KEY (`user_userid`) REFERENCES `user` (`userid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `podpiska` (`podpiska_id`, `tip_podpiski_tip_podpiski_id`, `user_userid`) VALUES (0, 491, 687);
INSERT INTO `podpiska` (`podpiska_id`, `tip_podpiski_tip_podpiski_id`, `user_userid`) VALUES (5, 3, 22287301);
INSERT INTO `podpiska` (`podpiska_id`, `tip_podpiski_tip_podpiski_id`, `user_userid`) VALUES (89, 58, 7029);
INSERT INTO `podpiska` (`podpiska_id`, `tip_podpiski_tip_podpiski_id`, `user_userid`) VALUES (583, 58, 73);
INSERT INTO `podpiska` (`podpiska_id`, `tip_podpiski_tip_podpiski_id`, `user_userid`) VALUES (1767, 3894, 4263);
INSERT INTO `podpiska` (`podpiska_id`, `tip_podpiski_tip_podpiski_id`, `user_userid`) VALUES (77341, 76107923, 707307);
INSERT INTO `podpiska` (`podpiska_id`, `tip_podpiski_tip_podpiski_id`, `user_userid`) VALUES (86101, 9794289, 0);
INSERT INTO `podpiska` (`podpiska_id`, `tip_podpiski_tip_podpiski_id`, `user_userid`) VALUES (392015, 52395, 4263);
INSERT INTO `podpiska` (`podpiska_id`, `tip_podpiski_tip_podpiski_id`, `user_userid`) VALUES (434953, 491, 707307);
INSERT INTO `podpiska` (`podpiska_id`, `tip_podpiski_tip_podpiski_id`, `user_userid`) VALUES (532904220, 3, 707307);
INSERT INTO `podpiska` (`podpiska_id`, `tip_podpiski_tip_podpiski_id`, `user_userid`) VALUES (611759555, 3, 7029);
INSERT INTO `podpiska` (`podpiska_id`, `tip_podpiski_tip_podpiski_id`, `user_userid`) VALUES (681584099, 9220976, 3434190);
INSERT INTO `podpiska` (`podpiska_id`, `tip_podpiski_tip_podpiski_id`, `user_userid`) VALUES (723918741, 24640424, 3405501);


#
# TABLE STRUCTURE FOR: profile
#

DROP TABLE IF EXISTS `profile`;

CREATE TABLE `profile` (
  `profile_id` int(11) NOT NULL,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_userid` int(11) NOT NULL,
  PRIMARY KEY (`profile_id`,`user_userid`),
  KEY `fk_profile_user_idx` (`user_userid`),
  CONSTRAINT `fk_profile_user` FOREIGN KEY (`user_userid`) REFERENCES `user` (`userid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `profile` (`profile_id`, `name`, `user_userid`) VALUES (0, 'quam', 707307);
INSERT INTO `profile` (`profile_id`, `name`, `user_userid`) VALUES (1, 'illo', 3434190);
INSERT INTO `profile` (`profile_id`, `name`, `user_userid`) VALUES (2, 'est', 3434190);
INSERT INTO `profile` (`profile_id`, `name`, `user_userid`) VALUES (49, 'rerum', 0);
INSERT INTO `profile` (`profile_id`, `name`, `user_userid`) VALUES (80, 'omnis', 707307);
INSERT INTO `profile` (`profile_id`, `name`, `user_userid`) VALUES (323, 'in', 25246);
INSERT INTO `profile` (`profile_id`, `name`, `user_userid`) VALUES (360, 'consequatur', 25246);
INSERT INTO `profile` (`profile_id`, `name`, `user_userid`) VALUES (4214, 'repudiandae', 3434190);
INSERT INTO `profile` (`profile_id`, `name`, `user_userid`) VALUES (24393, 'et', 3405501);
INSERT INTO `profile` (`profile_id`, `name`, `user_userid`) VALUES (95521, 'nesciunt', 25246);
INSERT INTO `profile` (`profile_id`, `name`, `user_userid`) VALUES (5867184, 'dolorum', 3405501);
INSERT INTO `profile` (`profile_id`, `name`, `user_userid`) VALUES (6866267, 'nobis', 25246);
INSERT INTO `profile` (`profile_id`, `name`, `user_userid`) VALUES (94348429, 'et', 54);


#
# TABLE STRUCTURE FOR: tip_podpiski
#

DROP TABLE IF EXISTS `tip_podpiski`;

CREATE TABLE `tip_podpiski` (
  `tip_podpiski_id` int(11) NOT NULL,
  `title` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`tip_podpiski_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `tip_podpiski` (`tip_podpiski_id`, `title`) VALUES (0, 'aliquid');
INSERT INTO `tip_podpiski` (`tip_podpiski_id`, `title`) VALUES (3, 'pariatur');
INSERT INTO `tip_podpiski` (`tip_podpiski_id`, `title`) VALUES (4, 'temporibus');
INSERT INTO `tip_podpiski` (`tip_podpiski_id`, `title`) VALUES (58, 'sit');
INSERT INTO `tip_podpiski` (`tip_podpiski_id`, `title`) VALUES (491, 'iusto');
INSERT INTO `tip_podpiski` (`tip_podpiski_id`, `title`) VALUES (3894, 'optio');
INSERT INTO `tip_podpiski` (`tip_podpiski_id`, `title`) VALUES (50556, 'sunt');
INSERT INTO `tip_podpiski` (`tip_podpiski_id`, `title`) VALUES (52395, 'veniam');
INSERT INTO `tip_podpiski` (`tip_podpiski_id`, `title`) VALUES (849420, 'ea');
INSERT INTO `tip_podpiski` (`tip_podpiski_id`, `title`) VALUES (9220976, 'amet');
INSERT INTO `tip_podpiski` (`tip_podpiski_id`, `title`) VALUES (9794289, 'nam');
INSERT INTO `tip_podpiski` (`tip_podpiski_id`, `title`) VALUES (24640424, 'nihil');
INSERT INTO `tip_podpiski` (`tip_podpiski_id`, `title`) VALUES (76107923, 'est');


#
# TABLE STRUCTURE FOR: user
#

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `login` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `user` (`userid`, `login`, `password`) VALUES (0, 'nam', '6a18d9aade08fb535b5ca718428febe0dc1d65db');
INSERT INTO `user` (`userid`, `login`, `password`) VALUES (2, 'similique', '4ac39755094aa38c57a08805ef0e515e1e9bfb30');
INSERT INTO `user` (`userid`, `login`, `password`) VALUES (3, 'in', 'd83976971cc6d47c397b1b2166d53ec7bb027d01');
INSERT INTO `user` (`userid`, `login`, `password`) VALUES (4, 'rerum', 'a56de9a2378c4ebb4b3ecf370151cef1361931d7');
INSERT INTO `user` (`userid`, `login`, `password`) VALUES (5, 'perspiciatis', '41b47fbf7462dbe76bfde991415b8a1168b40446');
INSERT INTO `user` (`userid`, `login`, `password`) VALUES (19, 'facilis', 'e75d7f81f14d049026fe15f5384d73590bf990c3');
INSERT INTO `user` (`userid`, `login`, `password`) VALUES (355, 'laudantium', '3cfa777fb4c7d280f42c7b4d5d790e6f28877ca2');
INSERT INTO `user` (`userid`, `login`, `password`) VALUES (362, 'corrupti', 'c22ef9f729272566aaa4c60dc0002cd1a05f3fe8');
INSERT INTO `user` (`userid`, `login`, `password`) VALUES (661, 'nemo', '705d2d33c70125f40570532daf168183637a1a87');
INSERT INTO `user` (`userid`, `login`, `password`) VALUES (707, 'recusandae', '2d250c1c9deeb2c26754ca89debc54b7355896bf');
INSERT INTO `user` (`userid`, `login`, `password`) VALUES (930, 'ut', '769b6675ef0342fe45779fa58e51d53736fdbe75');
INSERT INTO `user` (`userid`, `login`, `password`) VALUES (8212, 'et', '35d19427171d923518b21e3a26b00269c8af4c5b');
INSERT INTO `user` (`userid`, `login`, `password`) VALUES (50512, 'omnis', '40c0179982567ac6e781f45167a07823a6d7131a');
INSERT INTO `user` (`userid`, `login`, `password`) VALUES (82077, 'cupiditate', 'dc46149af5c81379048d42c7b8da1ccc4db9bdbe');
INSERT INTO `user` (`userid`, `login`, `password`) VALUES (88169, 'ipsum', '393d16c165bff12f3b3b30d4bc54d6ecb6da5a0c');
INSERT INTO `user` (`userid`, `login`, `password`) VALUES (2695674, 'similique', '5f7d6bb680df412376ad5e3fe80dbcdb008a9288');
INSERT INTO `user` (`userid`, `login`, `password`) VALUES (3435114, 'quo', 'f3ba3bb054ec11b1304779f611764a4cb79dc0c7');
INSERT INTO `user` (`userid`, `login`, `password`) VALUES (9108736, 'necessitatibus', 'dc94070ceef0c581fc96b168fba517f571ab1dbb');
INSERT INTO `user` (`userid`, `login`, `password`) VALUES (31200273, 'et', '0438480413d4c5a007ace26102cc4b490502bd94');
INSERT INTO `user` (`userid`, `login`, `password`) VALUES (31653077, 'rem', 'f38954dc7ccf54e491efef56f58890f9180050e3');
INSERT INTO `user` (`userid`, `login`, `password`) VALUES (44490950, 'suscipit', '14865a5e05856b4d90deb6ba618e212f145a3385');
INSERT INTO `user` (`userid`, `login`, `password`) VALUES (61801612, 'illo', '016a0fa76f46ff005adc9fd1bd48a23f50778a00');
INSERT INTO `user` (`userid`, `login`, `password`) VALUES (144433166, 'ut', '80a5985bfb9867fe1e03e69fa25ab0eb3db96d6f');
INSERT INTO `user` (`userid`, `login`, `password`) VALUES (330736801, 'iste', 'f4cfb8fc1ac177d740f8c037cd40bade32ce791b');
INSERT INTO `user` (`userid`, `login`, `password`) VALUES (377326823, 'ut', 'a0619b3d137af5e2e5144d4ab7708ec7233b6194');


