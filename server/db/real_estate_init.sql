CREATE DATABASE ds_project1;
USE ds_project1;
CREATE TABLE `users` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255),
  `email` varchar(255),
  `phone` varchar(255),
  `roles` varchar(255),
  `uid` varchar(255),
  `created_at` timestamp
);

insert into `users` (`name`, `email`, `phone`, `roles`, `uid`) VALUES ('Admin', 'admin@rps.com', 'Admin', '6', 'VwioudRBkCZFvEyNXmNKK7qHZpy1');
insert into `users` (`name`, `email`, `phone`, `roles`, `uid`) VALUES ('Publisher 1', 'publisher1@rps.com', 'Publisher 1', '2', 'IOxyt7H2ytMouuekKiKELoykGKH2');
insert into `users` (`name`, `email`, `phone`, `roles`, `uid`) VALUES ('Subscriber 1', 'subscriber1@rps.com', 'Subscriber 1', '4', 'XJxTONpve7hwXPz90pmMq7HAEFz1');

CREATE TABLE `properties` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255),
  `description` varchar(255),
  `price` bigint,
  `city_id` bigint,
  `room_type_id` bigint,
  `created_by_uid` varchar(255),
  `created_by_name` varchar(255),
  `created_at` timestamp,
  `image_url` varchar(1000),
  `listing_id` varchar(255)
);

CREATE TABLE `cities` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255)
);

INSERT INTO `cities` (`name`) VALUES ('Buffalo');
INSERT INTO `cities` (`name`) VALUES ('Syracuse');
INSERT INTO `cities` (`name`) VALUES ('Albany');
INSERT INTO `cities` (`name`) VALUES ('NYC');
INSERT INTO `cities` (`name`) VALUES ('Lancaster');
INSERT INTO `cities` (`name`) VALUES ('Niagara Falls');
INSERT INTO `cities` (`name`) VALUES ('Newark');
INSERT INTO `cities` (`name`) VALUES ('Philadelphia');
INSERT INTO `cities` (`name`) VALUES ('Boston');

CREATE TABLE `room_type` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `type` varchar(255)
);

INSERT INTO `room_type` (`type`) VALUES ('1 BHK');
INSERT INTO `room_type` (`type`) VALUES ('2 BHK');
INSERT INTO `room_type` (`type`) VALUES ('3 BHK');
INSERT INTO `room_type` (`type`) VALUES ('4 BHK');
INSERT INTO `room_type` (`type`) VALUES ('5 BHK');
INSERT INTO `room_type` (`type`) VALUES ('6 BHK');

CREATE TABLE `user_cities_rel` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `uid` varchar(255),
  `city_id` bigint
);

CREATE TABLE `user_room_types_rel` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `uid` varchar(255),
  `room_type_id` bigint
);

CREATE TABLE `adv_cities_rel` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `uid` varchar(255),
  `city_id` bigint
);

CREATE TABLE `adv_room_types_rel` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `uid` varchar(255),
  `room_type_id` bigint
);

CREATE TABLE `broker_vs_topics` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `broker_port` varchar(255),
  `topic_id` bigint
);

INSERT INTO `broker_vs_topics` (`broker_port`,`topic_id`) VALUES ( '5005','1');
INSERT INTO `broker_vs_topics` (`broker_port`,`topic_id`) VALUES ( '5005','2');
INSERT INTO `broker_vs_topics` (`broker_port`,`topic_id`) VALUES ( '5005','3');
INSERT INTO `broker_vs_topics` (`broker_port`,`topic_id`) VALUES ( '5006','4');
INSERT INTO `broker_vs_topics` (`broker_port`,`topic_id`) VALUES ( '5006','5');
INSERT INTO `broker_vs_topics` (`broker_port`,`topic_id`) VALUES ( '5006','6');
INSERT INTO `broker_vs_topics` (`broker_port`,`topic_id`) VALUES ( '5007','7');
INSERT INTO `broker_vs_topics` (`broker_port`,`topic_id`) VALUES ( '5007','8');
INSERT INTO `broker_vs_topics` (`broker_port`,`topic_id`) VALUES ( '5007','9');
INSERT INTO `broker_vs_topics` (`broker_port`,`topic_id`) VALUES ( '5008','1');
INSERT INTO `broker_vs_topics` (`broker_port`,`topic_id`) VALUES ( '5008','4');