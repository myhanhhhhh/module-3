create database ss2;

use  ss2;

create table phieu_xuat(
so_phieu_xuat int primary key auto_increment,
ngay_xuat date
);

create table vat_tu(
ma_vat_tu int primary key auto_increment,
ten_vat_tu varchar(50)
);

create table chi_tiet_phieu_xuat(
so_phieu_xuat int,
ma_vat_tu int,
primary key (so_phieu_xuat, ma_vat_tu),
foreign key (so_phieu_xuat) references phieu_xuat(so_phieu_xuat),
foreign key (ma_vat_tu) references vat_tu(ma_vat_tu),
don_gia_xuat int,
so_luong_xuat int
);

create table phieu_nhap(
so_phieu_nhap int primary key auto_increment,
ngay_nhap date
);

create table chi_tieu_phieu_nhap(
ma_vat_tu int,
so_phieu_nhap int,
primary key(so_phieu_nhap,ma_vat_tu),
foreign key (so_phieu_nhap) references phieu_nhap(so_phieu_nhap),
foreign key (ma_vat_tu) references vat_tu(ma_vat_tu),
don_gia_nhap int,
so_luong_nhap int
);

create table nha_cung_cap(
ma_nha_cung_cap int  primary key auto_increment,
ten_nha_cung_cap varchar(50),
dia_chi varchar(50),
ma_so_dien_thoai int,
foreign key (ma_so_dien_thoai) references so_dien_thoai(ma_so_dien_thoai)
);

create table don_dat_hang(
so_don_hang  int primary key auto_increment,
ngay_dat_hang date,
ma_nha_cung_cap int,
foreign key (ma_nha_cung_cap) references nha_cung_cap(ma_nha_cung_cap)
);

create table chi_tiet_don_dat_hang(
so_don_hang int,
ma_vat_tu int,
primary key(so_don_hang,ma_vat_tu),
foreign key (so_don_hang) references don_dat_hang(so_don_hang),
foreign key (ma_vat_tu) references vat_tu(ma_vat_tu)
);

create table so_dien_thoai(
ma_so_dien_thoai int primary key auto_increment,
so_dien_thoai varchar(50)
);




