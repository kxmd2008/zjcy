CREATE DATABASE zjcy;

DROP TABLE t_account;

CREATE TABLE t_account (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  address varchar(200) DEFAULT NULL,
  email varchar(30) DEFAULT NULL,
  login_name varchar(50) DEFAULT NULL,
  password varchar(50) DEFAULT NULL,
  phone varchar(20) DEFAULT NULL,
  status varchar(2) DEFAULT NULL,
  type varchar(15) DEFAULT NULL,s
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE `product_raw_materials`;
CREATE TABLE `zjqy`.`product_raw_materials` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `company_id` BIGINT(20) NULL,
  `raw_materials_id` BIGINT(20) NULL,
  PRIMARY KEY (`id`)
 );




insert into t_account(login_name, password, type) values('admin', 'Jnw5ofpjlbE=dsCg4fdKqnY=', 'ADMIN');
insert into t_account(login_name, password, type) values('purchase', 'Jnw5ofpjlbE=dsCg4fdKqnY=', 'PURCHASE');
insert into t_account(login_name, password, type) values('pm', 'Jnw5ofpjlbE=dsCg4fdKqnY=', 'PM');




INSERT INTO t_raw_materials(`id`,`name`, `parentId`, `type`) VALUES(1,'薄膜', null, '');
INSERT INTO t_raw_materials(`id`,`name`, `parentId`, `type`) VALUES(11,'BOPP', 1, '薄膜');
INSERT INTO t_raw_materials(`id`,`name`, `parentId`, `type`) VALUES(12,'AL', 1, '薄膜');
INSERT INTO t_raw_materials(`id`,`name`, `parentId`, `type`) VALUES(13,'CPP', 1, '薄膜');
INSERT INTO t_raw_materials(`id`,`name`, `parentId`, `type`) VALUES(14,'VMPET', 1, '薄膜');
INSERT INTO t_raw_materials(`id`,`name`, `parentId`, `type`) VALUES(15,'VMOPP', 1, '薄膜');
INSERT INTO t_raw_materials(`id`,`name`, `parentId`, `type`) VALUES(16,'PET', 1, '薄膜');
INSERT INTO t_raw_materials(`id`,`name`, `parentId`, `type`) VALUES(17,'FOH', 1, '薄膜');
INSERT INTO t_raw_materials(`id`,`name`, `parentId`, `type`) VALUES(18,'珠光膜', 1, '薄膜');
INSERT INTO t_raw_materials(`id`,`name`, `parentId`, `type`) VALUES(19,'单面铜版纸', 1, '薄膜');
INSERT INTO t_raw_materials(`id`,`name`, `parentId`, `type`) VALUES(20,'食品包装原纸', 1, '薄膜');
INSERT INTO t_raw_materials(`id`,`name`, `parentId`, `type`) VALUES(21,'白牛皮纸', 1, '薄膜');
INSERT INTO t_raw_materials(`id`,`name`, `parentId`, `type`) VALUES(22,'黄牛皮纸', 1, '薄膜');
INSERT INTO t_raw_materials(`id`,`name`, `parentId`, `type`) VALUES(23,'PA', 1, '薄膜');

INSERT INTO t_raw_materials(`id`,`name`, `parentId`, `type`) VALUES(2,'粒子', null, '');
INSERT INTO t_raw_materials(`id`,`name`, `parentId`, `type`) VALUES(24,'粒子', 2, '粒子');

INSERT INTO t_raw_materials(`id`,`name`, `parentId`, `type`) VALUES(3,'油墨', null, '');
INSERT INTO t_raw_materials(`id`,`name`, `parentId`, `type`) VALUES(25,'油墨', 3, '油墨');

INSERT INTO t_raw_materials(`id`,`name`, `parentId`, `type`) VALUES(4,'胶水', null, '');
INSERT INTO t_raw_materials(`id`,`name`, `parentId`, `type`) VALUES(26,'胶水', 4, '胶水');

INSERT INTO t_raw_materials(`id`,`name`, `parentId`, `type`) VALUES(5,'溶剂', null, '');
INSERT INTO t_raw_materials(`id`,`name`, `parentId`, `type`) VALUES(27,'溶剂', 5, '溶剂');

INSERT INTO t_raw_materials(`id`,`name`, `parentId`, `type`) VALUES(6,'纸箱', null, '');
INSERT INTO t_raw_materials(`id`,`name`, `parentId`, `type`) VALUES(28,'纸箱', 6, '纸箱');

INSERT INTO t_raw_materials(`id`,`name`, `parentId`, `type`) VALUES(7,'纸芯', null, '');
INSERT INTO t_raw_materials(`id`,`name`, `parentId`, `type`) VALUES(29,'纸芯', 7, '纸芯');

INSERT INTO t_raw_materials(`id`,`name`, `parentId`, `type`) VALUES(8,'铲板', null, '');
INSERT INTO t_raw_materials(`id`,`name`, `parentId`, `type`) VALUES(30,'铲板', 8, '铲板');

INSERT INTO t_raw_materials(`id`,`name`, `parentId`, `type`) VALUES(9,'小五金', null, '');
INSERT INTO t_raw_materials(`id`,`name`, `parentId`, `type`) VALUES(31,'小五金', 9, '小五金');

INSERT INTO t_raw_materials(`id`,`name`, `parentId`, `type`) VALUES(10,'劳防办公', null, '');
INSERT INTO t_raw_materials(`id`,`name`, `parentId`, `type`) VALUES(32,'劳防办公', 10, '劳防办公');
