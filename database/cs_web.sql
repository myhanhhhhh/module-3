create database booking;
use booking;

CREATE TABLE account_customers (
    account_code INT PRIMARY KEY AUTO_INCREMENT,
    user_name VARCHAR(100) NOT NULL,
    password_account VARCHAR(100) NOT NULL,
    is_delete BIT(1) DEFAULT 0
);

CREATE TABLE customers (
    customer_code INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(100) NOT NULL,
    identity_number VARCHAR(12) NOT NULL,
    date_of_birth DATETIME NOT NULL,
    gender BIT(1),
    phone_number VARCHAR(20) NOT NULL,
    address VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    account_code INT,
    FOREIGN KEY (account_code)REFERENCES account_customers(account_code),
	is_delete bit(1)  DEFAULT 0
);

CREATE TABLE villas (
    villa_id INT PRIMARY KEY AUTO_INCREMENT,
    image_map VARCHAR(200),
    area INT,
    `level` INT,
    width INT,
    deep INT,
    garage INT,
    gym_room INT,
    relax_room INT,
    toilet INT,
    living_room INT,
    kitchen_room INT,
    bedroom INT,
    price INT,
	is_delete BIT(1) DEFAULT 0
);

CREATE TABLE bookings (
    booking_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_code INT,
    booking_checkin DATE,
    booking_checkout DATE,
    deposit VARCHAR(10),
    villa_id INT,
    FOREIGN KEY (customer_code) REFERENCES customers (customer_code),
    FOREIGN KEY (villa_id) REFERENCES villas(villa_id),
	is_delete BIT(1)  DEFAULT 0
);


CREATE TABLE image_detail_links (
    image_id INT PRIMARY KEY AUTO_INCREMENT,
    villa_id INT,
    image_detail VARCHAR(200),
    FOREIGN KEY (villa_id) REFERENCES villas(villa_id),
	is_delete BIT(1)  DEFAULT 0
);

insert into account_customers(user_name, password_account)
values
( "0704698161", "12345"),
( "076513500", "00001"), 
( "0934706085", "23456"), 
( "0905937963", "11112"); 

insert into customers( customer_name, identity_number, date_of_birth, gender, phone_number, address, email, account_code)
values
( "Nguyễn Văn An", "362300012001", "1991-10-03", 0, "0704698161", "10, Đường Nguyễn Du, Thành phố Hà Nội, Tỉnh Hà Nội", "nguyenvana@gmail.com", 1),
( "Trần Minh Đạt", "491200211999", "1998-01-01", 0, "076513500","15, Đường Lê Lợi, Thành phố Đà Nẵng, Tỉnh Đà Nẵng", "tranminhdat123@gmail.com", 2),
( "Lê Văn Bình", "362300012001", "2000-03-19", 0, "0934706085", "30, Đường Nguyễn Huệ, Thành phố Hồ Chí Minh, Tỉnh Hồ Chí Minh", "levanbinh@gmail.com", 3),
( "Nguyễn Ngọc Hân", "362300012001", "1999-08-18", 1, "0905937963","9, Đường Trần Phú, Thành phố Hội An, Tỉnh Quảng Nam", "nguyenngochan1999@gmail.com", 4);


insert into bookings(customer_code, booking_checkin, booking_checkout, deposit, villa_id)
values
(1, "2022-05-12",  "2022-05-17", 1620000, 1),
(2, "2023-03-03", "2023-03-09", 3087000, 2),
(3, "2022-07-15", "2022-07-21", 1792000, 3),
(4, "2023-06-12", "2023-06-17", 834000, 4);

insert into villas (image_map, area, `level`, width, deep, garage, gym_room, relax_room, toilet, living_room, kitchen_room, bedroom, price)
values
("https://drive.google.com/uc?id=1nc-sqvrPl7lxW4GggOJZQjyp0a5AC7y", 540, 3, 15, 12, 0, 0 , 1, 3, 1, 1, 5, 2700000),
("https://drive.google.com/uc?id=1lnQTdeFfqaiwTSDCDR8IRxBmVSQJe_97", 882, 4, 20, 14, 0, 1, 2, 5, 1, 1, 7, 4410000),
("https://drive.google.com/uc?id=13FMm1rmxofoEkBhedjDP16skMh394NVc", 512, 3, 12.5, 20.5, 1, 1, 1, 4, 1, 1, 3, 2560000),
("https://drive.google.com/uc?id=1P5X9amlwKkUbMxYe8qstluKu_hmLVDQM", 278, 2, 13.2, 10.5, 0, 0, 0, 4, 1, 1, 4, 1390000),
("https://drive.google.com/uc?id=1Q2N6rGUdt_DAW4JeiEsXdlVFOREW02EJ", 540, 3, 12.5, 20.5, 0, 1, 0, 6, 1, 1, 5, 2700000),
("https://drive.google.com/uc?id=1rR5IICzPMgitkEx9i3OelWfjsIabRFxR", 374, 3, 12, 14, 1, 0, 0, 4, 1, 1, 4, 1870000),
("https://drive.google.com/uc?id=15iuFjzJubATp_yzFWufnr5OTgLxVMiGn", 738, 4, 22.5, 16.3, 0, 1, 0, 5, 1, 1, 6, 3690000),
("https://drive.google.com/uc?id=1IvGoqItZmiMmnkifriCvte_KK_m9-7Od", 465, 3, 8.5, 18, 0, 1, 2, 3, 1, 1, 3, 2325000),
("https://drive.google.com/uc?id=1IvGoqItZmiMmnkifriCvte_KK_m9-7Od", 1142, 2, 19, 28, 1, 9, 0, 7, 1, 1, 8, 5710000),
("https://drive.google.com/uc?id=1EEkZ-sZsolg7kQ2VT18ZUIe1aAHGOWDK", 746, 3, 17.2, 13.3, 1, 0, 0, 6, 1, 1, 6, 3730000);

insert into image_detail_links(villa_id, image_detail)
values
(1, "https://drive.google.com/uc?id=1NxHAgMfX2XX_eA34oiithxv97a6VopTF"),
(1, "https://drive.google.com/uc?id=1i0xsOs4WqAxVebKeQKwspQmXtlMuRo4M"),
(1, "https://drive.google.com/uc?id=1tkKXQbLsC7CxLsPkyGCqEqQ5Bf-NUyNa"),
(1, "https://drive.google.com/uc?id=1OGBoS97BiZafmRA102Imud62uLatx_RN"),
(1,"https://drive.google.com/uc?id=1Oor-TJD7-uo9e96xA3I_vKoNzcDndyES"),
(2, "https://drive.google.com/uc?id=1xe9Q-lGyPQbx8IObBKTb7D4hjdAG0WEF"),
(2, "https://drive.google.com/uc?id=1eBa5t2pUvcuchwwM2tWTzwEb8l4FBMTn"),
(2, "https://drive.google.com/uc?id=1PN-UTWQSb8LIluKaHXLfcIbHlCn_RRa1"),
(2, "https://drive.google.com/uc?id=1_7EjJ5GDC1v7w4v6JYURh8X6193l6zkL"),
(2, "https://drive.google.com/uc?id=1xEx3cNkDFngFh9oD24uY0UaEnDgNmApz"),
(2, "https://drive.google.com/uc?id=1iIms_wazyYYlJ06j3Y-cORgtKcki8iH3"),
(3, "https://drive.google.com/uc?id=1TKVJr4cn-SYWjac9crrcp7uiSiz1TwI1"),
(3, "https://drive.google.com/uc?id=1U-gyDldJMduxBv5_xQWGVJnsLG71jMCd"),
(3, "https://drive.google.com/uc?id=1jOI60Kk_1gw8GeObTsUxwT152AdeB0dT"),
(3, "https://drive.google.com/uc?id=1ZIu6KE_2dte4zaR0NHdTNGCZ2CyK3q8I"),
(3, "https://drive.google.com/uc?id=1DB2qafko4m78EGS_f6Dw3CVWNJyvjAG0"),
(4, "https://drive.google.com/uc?id=1xKSwa95gvCvhj4lF7UUL-DZHqzfYYL6i"),
(4, "https://drive.google.com/uc?id=1ZzYV5qZIdrZ1S2FwSSIIef6nPOb9wESJ"),
(4, "https://drive.google.com/uc?id=1TfW3cbQl99vpoMtyClwWJ0TA8EnstZhm"),
(4, "https://drive.google.com/uc?id=1sS6m1UQyt-_rfJ7rqyT389le7p0rT4bh"),
(4, "https://drive.google.com/uc?id=17ZGnoyO3Q81Z-DaFU1_4wz8cYEqkv-Op"),
(5, "https://drive.google.com/uc?id=1H8XRHhXZkxuxCjUJMyUzVXyzZjNxEkVE"),
(5, "https://drive.google.com/uc?id=1jGg_3Bnj_u3-1YuGgN_MhUClsIscdCJI"),
(5, "https://drive.google.com/uc?id=1M6cPBuLKeJobbrQENn3VL6DDAGjWdyaK"),
(5, "https://drive.google.com/uc?id=1Fb97M_DjXVNsRHaqaB48ldC0U2IxWi-t"),
(5, "https://drive.google.com/uc?id=1_q1a1vjO2C59yExnYHwCgUSHv1ClX_p0"),
(5, "https://drive.google.com/uc?id=1qNhiRbJGZdbqU2FtO_SXoIwPE389MZz_"),
(6, "https://drive.google.com/uc?id=1HSHCa3tgF8LncIjVTk0y7JxrLT1G3f6Z"),
(6, "https://drive.google.com/uc?id=1XRkKJtEm791L7sNJAbWJRkuBWVUc7RD3"),
(6, "https://drive.google.com/uc?id=1VOcum21hyQ7cguPyIaiNwLpySGv2AP5o"),
(6, "https://drive.google.com/uc?id=1iwqB8qrqyAUNVWY6Lp8aSiff4AV3-RPi"),
(6, "https://drive.google.com/uc?id=1ig_5jPgx0jDfxYe3_VDRnwX5ZgSEVJfS"),
(7, "https://drive.google.com/uc?id=11BoXW1litPYFnU3XFtiXHrdhzN6mJmZ8"),
(7, "https://drive.google.com/uc?id=1En7aWsz2zzkuqBPZM0X_ef1oR3egZxoQ"),
(7, "https://drive.google.com/uc?id=1_pm_cdsc_lfNw2IyPhCEcnuN10PCzf88"),
(7, "https://drive.google.com/uc?id=1BOINbgJMeTtPNlbEcsHe39muq1jZcM__"),
(7, "https://drive.google.com/uc?id=1APfnsd07iP_nnQSK8ww-xTvqacbNxZ6O"),
(7, "https://drive.google.com/uc?id=1g1thQafVhwBWtg1hMr8pceIyOC2X821H"),
(7, "https://drive.google.com/uc?id=1cHoFynG1KqxQWvYcf_BHkNtRUBGwtpIN"),
(8, "https://drive.google.com/uc?id=1I3JMgAGrwlRbMlrScB0kqR99s49RirV7"),
(8, "https://drive.google.com/uc?id=1VzP88vpqYR28QS1pmBU3CCjVsTY2Ben4"),
(8, "https://drive.google.com/uc?id=1DI8hC_k4cuml_HX_WkVfimnODkXQOxG-"),
(8, "https://drive.google.com/uc?id=1mbTogWKgiNnM2MtWPiNuyWLFAwtJ57bY"),
(9, "https://drive.google.com/uc?id=1cprUb-02yCtAv-tFPXlhOe-cEw_0FyTg"),
(9, "https://drive.google.com/uc?id=1ljYMcWznDMm_-v_OUrruKs6aNiAsl3AJ"),
(9, "https://drive.google.com/uc?id=1vMUQgFLOfi6ekA4tSD8UZY1dQMtDOYCk"),
(9, "https://drive.google.com/uc?id=1Au4dgCtFbiWu8-6QPDz7_9jhxfmLGCve"),
(9, "https://drive.google.com/uc?id=185YTYODuaBL7gDW3ZpkpfE_Se2I72P9p"), 
(9, "https://drive.google.com/uc?id=1T8KCfom9Yl8MJgeWPaVsUiyoDG254DKt"),
(9, "https://drive.google.com/uc?id=1nCeCUGPbgLlcKgygUZRz8QNqomGV4p1d"),
(10, "https://drive.google.com/uc?id=1ZjlEDHtdaS_TJrDm_Qk_0fPd1LDd30pG"),
(10, "https://drive.google.com/uc?id=1Rs5pyMK2eBAnMwVHd9iGLJthX-IMdqOi"), 
(10, "https://drive.google.com/uc?id=10fOZgpMlZyuo47xIDzUaX9S6gGWqmWGd"),
(10, "https://drive.google.com/uc?id=1Sik_S1SOIsUn4lbSeu4ZsZP9e1DtzFDj"),
(10, "https://drive.google.com/uc?id=17GbcuFOa4t_36Bo8cCmsQynE9xtsKgbe"),
(10, "https://drive.google.com/uc?id=1FyuARERKJcUjMmVC3m9Db40ctcyBhNSq"),
(10, "https://drive.google.com/uc?id=1jObNvjYuzlElEflfC7SFlaJQK-ENPO-i"),
(10, "https://drive.google.com/uc?id=1u2Q2Ki_GViZbU-OUDj_Udv4Rqd5dwy5i");


