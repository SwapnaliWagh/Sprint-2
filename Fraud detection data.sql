mysql> create database Fraud_Detection_Data_analysis;
ERROR 1007 (HY000): Can't create database 'fraud_detection_data_analysis'; database exists
mysql> show databases;
+-------------------------------+
| Database                      |
+-------------------------------+
| anpc8905                      |
| fraud_detection_data_analysis |
| information_schema            |
| mysql                         |
| performance_schema            |
| sakila                        |
| sys                           |
| world                         |
+-------------------------------+
8 rows in set (0.01 sec)

mysql> use fraud_detection_data_analysis
Database changed
mysql> CREATE TABLE fraud_detection_data (Customer_id INT PRIMARY KEY AUTO_INCREMENT,Profession VARCHAR(100) NOT NULL,In
come DECIMAL(10, 2) NOT NULL,Credit_card_number VARCHAR(16) NOT NULL,Expiry_date DATETIME NOT NULL,Security_code INT NOT NULL,Fraud INT NOT NULL);
Query OK, 0 rows affected (0.08 sec)

mysql> Show tables;
+-----------------------------------------+
| Tables_in_fraud_detection_data_analysis |
+-----------------------------------------+
| customers                               |
| fraud_detection_data                    |
+-----------------------------------------+
2 rows in set (0.03 sec)

mysql> desc fraud_detection_data;
+--------------------+---------------+------+-----+---------+----------------+
| Field              | Type          | Null | Key | Default | Extra          |
+--------------------+---------------+------+-----+---------+----------------+
| Customer_id        | int           | NO   | PRI | NULL    | auto_increment |
| Profession         | varchar(100)  | NO   |     | NULL    |                |
| Income             | decimal(10,2) | NO   |     | NULL    |                |
| Credit_card_number | varchar(16)   | NO   |     | NULL    |                |
| Expiry_date        | date          | YES  |     | NULL    |                |
| Security_code      | int           | NO   |     | NULL    |                |
| Fraud              | int           | NO   |     | NULL    |                |
+--------------------+---------------+------+-----+---------+----------------+
7 rows in set (0.02 sec)

mysql> INSERT INTO customers (Customer_id, Profession, Income, Credit_card_number, Expiry_date, Security_code, Fraud) VALUES
(1, 'Doctor', 42509.00, '3515418493460774', '2024-07-25', 251, 1),
(2, 'Doctor', 80334.00, '213134223583196', '2024-05-03', 858, 1),
(3, 'LAWYER', 91552.00, '4869615013764888', '2023-03-30', 755, 1),
(4, 'LAWYER', 43623.00, '341063356109385', '2024-01-29', 160, 1),
(5, 'DOCTOR', 22962.00, '4707418777543978', '2022-11-30', 102, 0),
(6, 'ENGINEER', 72106.00, '4483533221713', '2024-05-27', 834, 0),
(7, 'DOCTOR', 54992.00, '348781654665997', '2024-06-30', 207, 0),
(8, 'LAWYER', 19996.00, '38608157332988', '2024-12-26', 433, 0),
(9, 'DOCTOR', 54682.00, '44959340169318', '2022-01-02', 872, 0),
(10, 'DOCTOR', 74679.00, '30107450695256', '2022-09-19', 295, 0),
(11, 'ENGINEER', 18932.00, '437812746457599', '2022-09-05', 637, 0),
(12, 'ENGINEER', 7554.00, '4277979999858', '2022-10-21', 360, 0),
(13, 'LAWYER', 3092.00, '3584353125903535', '2023-10-02', 666, 0),
(14, 'LAWYER', 35707.00, '3566642280046540', '2022-02-12', 652, 1),
(15, 'DOCTOR', 48695.00, '3509190113431000', '2024-09-25', 901, 1),
(16, 'ENGINEER', 7932.00, '3598862315700018', '2023-11-10', 831, 1),
(17, 'DOCTOR', 5403.00, '4728303889641271', '2022-10-30', 962, 1),
(18, 'ENGINEER', 52440.00, '6011305111955735', '2022-04-03', 3336, 0),
(19, 'LAWYER', 1598.00, '4786471014340', '2023-12-24', 390, 0),
(20, 'DOCTOR', 53211.00, '38604448050141', '2022-04-22', 859, 1),
(21, 'LAWYER', 54103.00, '571979063658', '2023-04-10', 228, 1),
(22, 'LAWYER', 74329.00, '65923298943375', '2021-11-05', 469, 1),
(23, 'ENGINEER', 3784.00, '4899733632669', '2021-09-03', 723, 0),
(24, 'LAWYER', 93669.00, '347167113631542', '2022-03-25', 547, 0),
(25, 'DOCTOR', 72324.00, '36674486727001', '2022-05-21', 783, 1),
(26, 'LAWYER', 62306.00, '4514788813299', '2023-11-28', 141, 0),
(27, 'DOCTOR', 22144.00, '4330275529855384', '2022-07-27', 457, 1),
(28, 'ENGINEER', 7286.00, '5470392481549252', '2021-02-28', 758, 1),
(29, 'DOCTOR', 4885.00, '2247057643520090', '2023-11-26', 288, 0),
(30, 'LAWYER', 4829.00, '30410458019135', '2023-02-25', 852, 1),
(31, 'ENGINEER', 80900.00, '38269305641638', '2021-01-30', 882, 0),
(32, 'DOCTOR', 86156.00, '30084059321297', '2022-02-25', 962, 1),
(33, 'ENGINEER', 30627.00, '375169591033220', '2021-12-24', 871, 1),
(34, 'DOCTOR', 4195.00, '4792890479814707', '2021-07-22', 279, 0),
(35, 'DOCTOR', 86553.00, '4340098493416212', '2023-12-25', 282, 0),
(36, 'DOCTOR', 99484.00, '2567867494423778', '2022-01-21', 686, 1),
(37, 'ENGINEER', 83925.00, '370522502935666', '2022-03-26', 677, 1),
(38, 'DOCTOR', 35956.00, '213118318256057', '2022-07-09', 848, 0),
(39, 'ENGINEER', 13039.00, '3561835251466870', '2023-12-25', 241, 0),
(40, 'DOCTOR', 84764.00, '213185684197843', '2023-08-31', 817, 1),
(41, 'LAWYER', 17564.00, '4902419569172045', '2021-11-08', 777, 1),
(42, 'LAWYER', 69645.00, '371030681064497', '2022-04-22', 4108, 1),
(43, 'DOCTOR', 37159.00, '6011824682411928', '2021-10-29', 428, 0),
(44, 'LAWYER', 20653.00, '5363884342348650', '2022-04-22', 958, 1),
(45, 'DOCTOR', 40682.00, '3501682453218433', '2023-08-25', 791, 1),
(46, 'ENGINEER', 8051.00, '3545511695093858', '2021-09-30', 22, 1),
(47, 'ENGINEER', 16701.00, '213196024854928', '2021-01-25', 741, 1),
(48, 'DOCTOR', 35273.00, '30280051238568', '2021-05-25', 203, 1),
(49, 'DOCTOR', 61284.00, '4598579635222170', '2022-04-27', 3575, 0),
(50, 'LAWYER', 24571.00, '4767152850301', '2022-04-30', 857, 0);

mysql> select *from fraud_detection_data;
+-------------+------------+----------+--------------------+-------------+---------------+-------+
| Customer_id | Profession | Income   | Credit_card_number | Expiry_date | Security_code | Fraud |
+-------------+------------+----------+--------------------+-------------+---------------+-------+
|           1 | Doctor     | 42509.00 | 3515418493460774   | 2024-07-25  |           251 |     1 |
|           2 | Doctor     | 80334.00 | 213134223583196    | 2024-05-03  |           858 |     1 |
|           3 | LAWYER     | 91552.00 | 4869615013764888   | 2023-03-30  |           755 |     1 |
|           4 | LAWYER     | 43623.00 | 341063356109385    | 2024-01-29  |           160 |     1 |
|           5 | DOCTOR     | 22962.00 | 4707418777543978   | 2022-11-30  |           102 |     0 |
|           6 | ENGINEER   | 72106.00 | 4483533221713      | 2024-05-27  |           834 |     0 |
|           7 | DOCTOR     | 54992.00 | 348781654665997    | 2024-06-30  |           207 |     0 |
|           8 | LAWYER     | 19996.00 | 38608157332988     | 2024-12-26  |           433 |     0 |
|           9 | DOCTOR     | 54682.00 | 44959340169318     | 2022-01-02  |           872 |     0 |
|          10 | DOCTOR     | 74679.00 | 30107450695256     | 2022-09-19  |           295 |     0 |
|          11 | ENGINEER   | 18932.00 | 437812746457599    | 2022-09-05  |           637 |     0 |
|          12 | ENGINEER   |  7554.00 | 4277979999858      | 2022-10-21  |           360 |     0 |
|          13 | LAWYER     |  3092.00 | 3584353125903535   | 2023-10-02  |           666 |     0 |
|          14 | LAWYER     | 35707.00 | 3566642280046540   | 2022-02-12  |           652 |     1 |
|          15 | DOCTOR     | 48695.00 | 3509190113431000   | 2024-09-25  |           901 |     1 |
|          16 | ENGINEER   |  7932.00 | 3598862315700018   | 2023-11-10  |           831 |     1 |
|          17 | DOCTOR     |  5403.00 | 4728303889641271   | 2022-10-30  |           962 |     1 |
|          18 | ENGINEER   | 52440.00 | 6011305111955735   | 2022-04-03  |          3336 |     0 |
|          19 | LAWYER     |  1598.00 | 4786471014340      | 2023-12-24  |           390 |     0 |
|          20 | DOCTOR     | 53211.00 | 38604448050141     | 2022-04-22  |           859 |     1 |
|          21 | LAWYER     | 54103.00 | 571979063658       | 2023-04-10  |           228 |     1 |
|          22 | LAWYER     | 74329.00 | 65923298943375     | 2021-11-05  |           469 |     1 |
|          23 | ENGINEER   |  3784.00 | 4899733632669      | 2021-09-03  |           723 |     0 |
|          24 | LAWYER     | 93669.00 | 347167113631542    | 2022-03-25  |           547 |     0 |
|          25 | DOCTOR     | 72324.00 | 36674486727001     | 2022-05-21  |           783 |     1 |
|          26 | LAWYER     | 62306.00 | 4514788813299      | 2023-11-28  |           141 |     0 |
|          27 | DOCTOR     | 22144.00 | 4330275529855384   | 2022-07-27  |           457 |     1 |
|          28 | ENGINEER   |  7286.00 | 5470392481549252   | 2021-02-28  |           758 |     1 |
|          29 | DOCTOR     |  4885.00 | 2247057643520090   | 2023-11-26  |           288 |     0 |
|          30 | LAWYER     |  4829.00 | 30410458019135     | 2023-02-25  |           852 |     1 |
|          31 | ENGINEER   | 80900.00 | 38269305641638     | 2021-01-30  |           882 |     0 |
|          32 | DOCTOR     | 86156.00 | 30084059321297     | 2022-02-25  |           962 |     1 |
|          33 | ENGINEER   | 30627.00 | 375169591033220    | 2021-12-24  |           871 |     1 |
|          34 | DOCTOR     |  4195.00 | 4792890479814707   | 2021-07-22  |           279 |     0 |
|          35 | DOCTOR     | 86553.00 | 4340098493416212   | 2023-12-25  |           282 |     0 |
|          36 | DOCTOR     | 99484.00 | 2567867494423778   | 2022-01-21  |           686 |     1 |
|          37 | ENGINEER   | 83925.00 | 370522502935666    | 2022-03-26  |           677 |     1 |
|          38 | DOCTOR     | 35956.00 | 213118318256057    | 2022-07-09  |           848 |     0 |
|          39 | ENGINEER   | 13039.00 | 3561835251466870   | 2023-12-25  |           241 |     0 |
|          40 | DOCTOR     | 84764.00 | 213185684197843    | 2023-08-31  |           817 |     1 |
|          41 | LAWYER     | 17564.00 | 4902419569172045   | 2021-11-08  |           777 |     1 |
|          42 | LAWYER     | 69645.00 | 371030681064497    | 2022-04-22  |          4108 |     1 |
|          43 | DOCTOR     | 37159.00 | 6011824682411928   | 2021-10-29  |           428 |     0 |
|          44 | LAWYER     | 20653.00 | 5363884342348650   | 2022-04-22  |           958 |     1 |
|          45 | DOCTOR     | 40682.00 | 3501682453218433   | 2023-08-25  |           791 |     1 |
|          46 | ENGINEER   |  8051.00 | 3545511695093858   | 2021-09-30  |            22 |     1 |
|          47 | ENGINEER   | 16701.00 | 213196024854928    | 2021-01-25  |           741 |     1 |
|          48 | DOCTOR     | 35273.00 | 30280051238568     | 2021-05-25  |           203 |     1 |
|          49 | DOCTOR     | 61284.00 | 4598579635222170   | 2022-04-27  |          3575 |     0 |
|          50 | LAWYER     | 24571.00 | 4767152850301      | 2022-04-30  |           857 |     0 |
+-------------+------------+----------+--------------------+-------------+---------------+-------+
50 rows in set (0.01 sec)
