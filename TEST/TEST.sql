create database quan_ly_bai_hoc;
use quan_ly_bai_hoc;
CREATE TABLE `quan_ly_bai_hoc`.`loai_do_kho` (
  `id_do_kho` INT NOT NULL,
  `ten_do_kho` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_do_kho`));
CREATE TABLE `quan_ly_bai_hoc`.`loai_module` (
  `id_module` INT NOT NULL,
  `ten_module` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_module`));
  CREATE TABLE `quan_ly_bai_hoc`.`loai_bai_hoc` (
  `id_loai_bai_hoc` INT NOT NULL AUTO_INCREMENT,
  `ten_loai_bai_hoc` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_loai_bai_hoc`));
CREATE TABLE `quan_ly_bai_hoc`.`bai_hoc` (
  `id_bai_hoc` INT NOT NULL AUTO_INCREMENT,
  `tieu_de` VARCHAR(45) NOT NULL,
  `id_loai_bai_hoc` INT NOT NULL,
  `id_do_kho` INT NOT NULL,
  `link_bai_hoc` VARCHAR(100) NOT NULL,
  `id_module` INT NOT NULL,
  `da_xoa` int default(0),
  PRIMARY KEY (`id_bai_hoc`),
  FOREIGN KEY (id_loai_bai_hoc) references loai_bai_hoc(id_loai_bai_hoc),
  FOREIGN KEY (id_do_kho) references loai_do_kho(id_do_kho),
  FOREIGN KEY (id_module) references loai_module(id_module)
  );
INSERT INTO `quan_ly_bai_hoc`.`loai_do_kho` (`id_do_kho`, `ten_do_kho`) VALUES ('1', 'level 1');
INSERT INTO `quan_ly_bai_hoc`.`loai_do_kho` (`id_do_kho`, `ten_do_kho`) VALUES ('2', 'level 2');
INSERT INTO `quan_ly_bai_hoc`.`loai_do_kho` (`id_do_kho`, `ten_do_kho`) VALUES ('3', 'level 3');
INSERT INTO `quan_ly_bai_hoc`.`loai_bai_hoc` (`id_loai_bai_hoc`, `ten_loai_bai_hoc`) VALUES ('1', 'bai giang');
INSERT INTO `quan_ly_bai_hoc`.`loai_bai_hoc` (`id_loai_bai_hoc`, `ten_loai_bai_hoc`) VALUES ('2', 'bai doc');
INSERT INTO `quan_ly_bai_hoc`.`loai_bai_hoc` (`id_loai_bai_hoc`, `ten_loai_bai_hoc`) VALUES ('3', 'thuc hanh');
INSERT INTO `quan_ly_bai_hoc`.`loai_bai_hoc` (`id_loai_bai_hoc`, `ten_loai_bai_hoc`) VALUES ('4', 'bai tap');
INSERT INTO `quan_ly_bai_hoc`.`loai_module` (`id_module`, `ten_module`) VALUES ('1', 'Bootcamp preparation');
INSERT INTO `quan_ly_bai_hoc`.`loai_module` (`id_module`, `ten_module`) VALUES ('2', 'java-apj');
INSERT INTO `quan_ly_bai_hoc`.`loai_module` (`id_module`, `ten_module`) VALUES ('3', 'java-jwbd');
INSERT INTO `quan_ly_bai_hoc`.`loai_module` (`id_module`, `ten_module`) VALUES ('4', 'java-wbds');
INSERT INTO `quan_ly_bai_hoc`.`loai_module` (`id_module`, `ten_module`) VALUES ('5', 'java-wbdr');
INSERT INTO `quan_ly_bai_hoc`.`bai_hoc` (`tieu_de`, `id_loai_bai_hoc`, `id_do_kho`, `link_bai_hoc`, `id_module`) VALUES ('cau dieu kien', '1', '1', 'abc', '3');
INSERT INTO `quan_ly_bai_hoc`.`bai_hoc` (`tieu_de`, `id_loai_bai_hoc`, `id_do_kho`, `link_bai_hoc`, `id_module`) VALUES ('vong lap', '1', '2', 'abc', '3');
INSERT INTO `quan_ly_bai_hoc`.`bai_hoc` (`tieu_de`, `id_loai_bai_hoc`, `id_do_kho`, `link_bai_hoc`, `id_module`) VALUES ('spring', '1', '1', 'abc', '3');
INSERT INTO `quan_ly_bai_hoc`.`bai_hoc` (`tieu_de`, `id_loai_bai_hoc`, `id_do_kho`, `link_bai_hoc`, `id_module`) VALUES ('solid', '3', '1', 'abc', '4');
INSERT INTO `quan_ly_bai_hoc`.`bai_hoc` (`tieu_de`, `id_loai_bai_hoc`, `id_do_kho`, `link_bai_hoc`, `id_module`) VALUES ('cau dieu kien', '3', '1', 'abc', '3');
INSERT INTO `quan_ly_bai_hoc`.`bai_hoc` (`tieu_de`, `id_loai_bai_hoc`, `id_do_kho`, `link_bai_hoc`, `id_module`) VALUES ('cau dieu kien', '4', '1', 'abc', '3');
desc
select id_bai_hoc, tieu_de, ten_loai_bai_hoc, ten_do_kho,ten_module,link_bai_hoc from bai_hoc as bh
join loai_bai_hoc as lbh on bh.id_loai_bai_hoc =lbh.id_loai_bai_hoc
join loai_do_kho as ldk on bh.id_do_kho = ldk.id_do_kho
join loai_module as lmd on bh.id_module = lmd.id_module;
update bai_hoc set da_xoa = 1 where id_bai_hoc = 1;