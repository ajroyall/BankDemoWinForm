--Create the DBNASE base database for the Bank Demo Tables to reside
--Written by Alwyn Royall on 12 May 2023
--copyright opentext 2023
--This script is modified for MS SQL Server

-- Run this script after zbnkatyp.sql

use DBNASE;

DROP TABLE BNKTXN;

CREATE TABLE BNKTXN
(
    BTX_PID                   CHAR(5) NOT NULL REFERENCES BNKCUST(BCS_PID),
    BTX_TYPE                  CHAR(1) NOT NULL,
    BTX_SUB_TYPE              CHAR(1) NOT NULL,
    BTX_ACCNO                 CHAR(9) REFERENCES BNKACC(BAC_ACCNO),
    BTX_TIMESTAMP             DATETIME NOT NULL  DEFAULT(current_timestamp),
    BTX_TIMESTAMP_FF          CHAR(26) NOT NULL   DEFAULT ' ',
    BTX_AMOUNT                DECIMAL(9,2) NOT NULL  DEFAULT 0,
    BTX_DATA_OLD              CHAR(150) NOT NULL DEFAULT ' ',
    BTX_DATA_NEW              CHAR(150) NOT NULL DEFAULT ' ',
    BTX_FILLER                CHAR(27) NOT NULL DEFAULT ' ',
    --FOREIGN KEY BTX_CUST (BTX_PID)
    --        REFERENCES BNKCUST (BCS_PID),
    --FOREIGN KEY BTX_ACCT (BTX_ACCNO)
    --        REFERENCES BNKACC (BAC_ACCNO)
)
--IN DATABASE DBNASE
--AUDIT NONE
--DATA CAPTURE NONE
;

CREATE INDEX BNKTXN_IDX1 ON BNKTXN
(
     BTX_ACCNO
);

INSERT INTO BNKTXN VALUES
  ('B0001','1','1','541374829',convert(datetime,'2011-12-24 01:01:01.001'),'',0000001.00,'Christmas present 1      ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('B0001','1','1','541374829',convert(datetime,'2021-12-24 01:01:02.002'),'',0000002.00,'Christmas present 2      ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('B0001','1','1','541374829',convert(datetime,'2021-12-24 01:01:03.003'),'',0000003.00,'Christmas present 3      ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('B0001','1','1','541374829',convert(datetime,'2021-12-24 01:01:04.004'),'',0000004.00,'Christmas present 4      ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('B0001','1','1','541374829',convert(datetime,'2021-12-24 01:01:05.005'),'',0000005.00,'Christmas present 5      ',' ',' ');

INSERT INTO BNKTXN VALUES
  ('B0002','1','1','962732474',convert(datetime,'2021-12-24 02:03:01.006'),'',0000001.00,'Christmas present 1      ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('B0002','1','1','962732474',convert(datetime,'2021-12-24 02:03:02.007'),'',0000002.00,'Christmas present 2      ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('B0002','1','1','962732474',convert(datetime,'2021-12-24 02:03:03.008'),'',0000003.00,'Christmas present 3      ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('B0002','1','1','962732474',convert(datetime,'2021-12-24 02:03:04.009'),'',0000004.00,'Christmas present 4      ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('B0002','1','1','962732474',convert(datetime,'2021-12-24 02:03:05.010'),'',0000005.00,'Christmas present 5      ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('B0002','1','1','962732474',convert(datetime,'2021-12-24 02:03:06.011'),'',0000006.00,'Christmas present 6      ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('B0002','1','1','962732474',convert(datetime,'2021-12-24 02:03:07.012'),'',0000007.00,'Christmas present 7      ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('B0002','1','1','962732474',convert(datetime,'2021-12-24 02:03:08.013'),'',0000008.00,'Christmas present 8      ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('B0002','1','1','962732474',convert(datetime,'2021-12-24 02:03:09.014'),'',0000009.00,'Christmas present 9      ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('B0002','1','1','962732474',convert(datetime,'2021-12-24 02:03:10.015'),'',0000010.00,'Christmas present 10     ',' ',' ');

INSERT INTO BNKTXN VALUES
  ('B0004','1','1','310781989',convert(datetime,'2021-12-24 04:04:01.016'),'',0000001.00,'Christmas present 1      ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('B0004','1','1','310781989',convert(datetime,'2021-12-24 04:04:02.017'),'',0000002.00,'Christmas present 2      ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('B0004','1','1','310781989',convert(datetime,'2021-12-24 04:04:03.018'),'',0000003.00,'Christmas present 3      ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('B0004','1','1','310781989',convert(datetime,'2021-12-24 04:04:04.019'),'',0000004.00,'Christmas present 4      ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('B0004','1','1','310781989',convert(datetime,'2021-12-24 04:04:05.020'),'',0000005.00,'Christmas present 5      ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('B0004','1','1','310781989',convert(datetime,'2021-12-24 04:04:06.021'),'',0000006.00,'Christmas present 6      ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('B0004','1','1','310781989',convert(datetime,'2021-12-24 04:04:07.022'),'',0000007.00,'Christmas present 7      ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('B0004','1','1','310781989',convert(datetime,'2021-12-24 04:04:08.023'),'',0000008.00,'Christmas present 8      ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('B0004','1','1','310781989',convert(datetime,'2021-12-24 04:04:09.024'),'',0000009.00,'Christmas present 9      ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('B0004','1','1','310781989',convert(datetime,'2021-12-24 04:04:10.025'),'',0000010.00,'Christmas present 10     ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('B0004','1','1','310781989',convert(datetime,'2021-12-24 04:04:11.026'),'',0000011.00,'Christmas present 11     ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('B0004','1','1','310781989',convert(datetime,'2021-12-24 04:04:12.027'),'',0000012.00,'Christmas present 12     ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('B0004','1','1','310781989',convert(datetime,'2021-12-24 04:04:13.028'),'',0000013.00,'Christmas present 13     ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('B0004','1','1','310781989',convert(datetime,'2021-12-24 04:04:14.029'),'',0000014.00,'Christmas present 14     ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('B0004','1','1','310781989',convert(datetime,'2021-12-24 04:04:15.030'),'',0000015.00,'Christmas present 15     ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('B0004','1','1','310781989',convert(datetime,'2021-12-24 04:04:16.031'),'',0000016.00,'Christmas present 16     ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('B0004','1','1','310781989',convert(datetime,'2021-12-24 04:04:17.032'),'',0000017.00,'Christmas present 17     ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('B0004','1','1','310781989',convert(datetime,'2021-12-24 04:04:18.033'),'',0000018.00,'Christmas present 18     ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('B0004','1','1','310781989',convert(datetime,'2021-12-24 04:04:19.034'),'',0000019.00,'Christmas present 19     ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('B0004','1','1','310781989',convert(datetime,'2021-12-24 04:04:20.035'),'',0000020.00,'Christmas present 20     ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('B0004','1','1','310781989',convert(datetime,'2021-12-24 04:04:21.036'),'',0000001.00,'Christmas present 21     ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('B0004','1','1','310781989',convert(datetime,'2021-12-24 04:04:22.037'),'',0000002.00,'Christmas present 22     ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('B0004','1','1','310781989',convert(datetime,'2021-12-24 04:04:23.038'),'',0000003.00,'Christmas present 23     ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('B0004','1','1','310781989',convert(datetime,'2021-12-24 04:04:24.039'),'',0000004.00,'Christmas present 24     ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('B0004','1','1','310781989',convert(datetime,'2021-12-24 04:04:25.040'),'',0000005.00,'Christmas present 25     ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('B0004','1','1','310781989',convert(datetime,'2021-12-24 04:04:26.041'),'',0000006.00,'Christmas present 26     ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('B0004','1','1','310781989',convert(datetime,'2021-12-24 04:04:27.042'),'',0000007.00,'Christmas present 27     ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('B0004','1','1','310781989',convert(datetime,'2021-12-24 04:04:28.043'),'',0000008.00,'Christmas present 28     ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('B0004','1','1','310781989',convert(datetime,'2021-12-24 04:04:29.044'),'',0000009.00,'Christmas present 29     ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('B0004','1','1','310781989',convert(datetime,'2021-12-24 04:04:30.045'),'',0000010.00,'Christmas present 30     ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('B0004','1','1','310781989',convert(datetime,'2021-12-24 04:04:31.046'),'',0000011.00,'Christmas present 31     ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('B0004','1','1','310781989',convert(datetime,'2021-12-24 04:04:32.047'),'',0000012.00,'Christmas present 32     ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('B0004','1','1','310781989',convert(datetime,'2021-12-24 04:04:33.048'),'',0000013.00,'Christmas present 33     ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('B0004','1','1','310781989',convert(datetime,'2021-12-24 04:04:34.049'),'',0000014.00,'Christmas present 34     ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('B0004','1','1','310781989',convert(datetime,'2021-12-24 04:04:35.050'),'',0000015.00,'Christmas present 35     ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('B0004','1','1','310781989',convert(datetime,'2021-12-24 04:04:36.051'),'',0000016.00,'Christmas present 36     ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('B0004','1','1','310781989',convert(datetime,'2021-12-24 04:04:37.052'),'',0000017.00,'Christmas present 37     ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('B0004','1','1','310781989',convert(datetime,'2021-12-24 04:04:38.053'),'',0000018.00,'Christmas present 38     ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('B0004','1','1','310781989',convert(datetime,'2021-12-24 04:04:39.054'),'',0000019.00,'Christmas present 39     ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('B0004','1','1','310781989',convert(datetime,'2021-12-24 04:04:40.055'),'',0000020.00,'Christmas present 40     ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('B0004','1','1','310781989',convert(datetime,'2021-12-24 04:04:41.056'),'',0000001.00,'Christmas present 41     ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('B0004','1','1','310781989',convert(datetime,'2021-12-24 04:04:42.057'),'',0000002.00,'Christmas present 42     ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('B0004','1','1','310781989',convert(datetime,'2021-12-24 04:04:43.058'),'',0000003.00,'Christmas present 43     ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('B0004','1','1','310781989',convert(datetime,'2021-12-24 04:04:44.059'),'',0000004.00,'Christmas present 44     ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('B0004','1','1','310781989',convert(datetime,'2021-12-24 04:04:45.060'),'',0000005.00,'Christmas present 45     ',' ',' ');

INSERT INTO BNKTXN VALUES
  ('B0004','1','1','067606426',convert(datetime,'2017-12-21 01:01:01.061'),'',0000101.00,'Christmas present 1      ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('B0004','1','1','067606426',convert(datetime,'2017-12-22 01:01:02.062'),'',0000102.00,'Christmas present 2      ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('B0004','1','1','067606426',convert(datetime,'2017-12-23 01:01:03.063'),'',0000103.00,'Christmas present 3      ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('B0004','1','1','067606426',convert(datetime,'2021-12-24 01:01:04.064'),'',0000104.00,'Christmas present 4      ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('B0004','1','1','067606426',convert(datetime,'2021-12-24 01:01:05.065'),'',0000105.00,'Christmas present 5      ',' ',' ');

INSERT INTO BNKTXN VALUES
  ('T0001','1','1','000000003',convert(datetime,'2021-12-24 04:04:01.066'),'',0000001.00,'Christmas present 1      ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('T0001','1','1','000000003',convert(datetime,'2021-12-24 04:04:02.067'),'',0000002.00,'Christmas present 2      ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('T0001','1','1','000000003',convert(datetime,'2021-12-24 04:04:03.068'),'',0000003.00,'Christmas present 3      ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('T0001','1','1','000000003',convert(datetime,'2021-12-24 04:04:04.069'),'',0000004.00,'Christmas present 4      ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('T0001','1','1','000000003',convert(datetime,'2021-12-24 04:04:05.070'),'',0000005.00,'Christmas present 5      ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('T0001','1','1','000000003',convert(datetime,'2021-12-24 04:04:06.071'),'',0000006.00,'Christmas present 6      ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('T0001','1','1','000000003',convert(datetime,'2021-12-24 04:04:07.072'),'',0000007.00,'Christmas present 7      ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('T0001','1','1','000000003',convert(datetime,'2021-12-24 04:04:08.073'),'',0000008.00,'Christmas present 8      ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('T0001','1','1','000000003',convert(datetime,'2021-12-24 04:04:09.074'),'',0000009.00,'Christmas present 9      ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('T0001','1','1','000000003',convert(datetime,'2021-12-24 04:04:10.075'),'',0000010.00,'Christmas present 10     ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('T0001','1','1','000000003',convert(datetime,'2021-12-24 04:04:11.076'),'',0000011.00,'Christmas present 11     ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('T0001','1','1','000000003',convert(datetime,'2021-12-24 04:04:12.077'),'',0000012.00,'Christmas present 12     ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('T0001','1','1','000000003',convert(datetime,'2021-12-24 04:04:13.078'),'',0000013.00,'Christmas present 13     ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('T0001','1','1','000000003',convert(datetime,'2021-12-24 04:04:14.079'),'',0000014.00,'Christmas present 14     ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('T0001','1','1','000000003',convert(datetime,'2021-12-24 04:04:15.080'),'',0000015.00,'Christmas present 15     ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('T0001','1','1','000000003',convert(datetime,'2021-12-24 04:04:16.081'),'',0000016.00,'Christmas present 16     ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('T0001','1','1','000000003',convert(datetime,'2021-12-24 04:04:17.082'),'',0000017.00,'Christmas present 17     ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('T0001','1','1','000000003',convert(datetime,'2021-12-24 04:04:18.083'),'',0000018.00,'Christmas present 18     ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('T0001','1','1','000000003',convert(datetime,'2021-12-24 04:04:19.084'),'',0000019.00,'Christmas present 19     ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('T0001','1','1','000000003',convert(datetime,'2021-12-24 04:04:20.085'),'',0000020.00,'Christmas present 20     ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('T0001','1','1','000000003',convert(datetime,'2021-12-24 04:04:21.086'),'',0000001.00,'Christmas present 21     ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('T0001','1','1','000000003',convert(datetime,'2021-12-24 04:04:22.087'),'',0000002.00,'Christmas present 22     ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('T0001','1','1','000000003',convert(datetime,'2021-12-24 04:04:23.088'),'',0000003.00,'Christmas present 23     ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('T0001','1','1','000000003',convert(datetime,'2021-12-24 04:04:24.089'),'',0000004.00,'Christmas present 24     ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('T0001','1','1','000000003',convert(datetime,'2021-12-24 04:04:25.090'),'',0000005.00,'Christmas present 25     ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('T0001','1','1','000000003',convert(datetime,'2021-12-24 04:04:26.091'),'',0000006.00,'Christmas present 26     ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('T0001','1','1','000000003',convert(datetime,'2021-12-24 04:04:27.092'),'',0000007.00,'Christmas present 27     ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('T0001','1','1','000000003',convert(datetime,'2021-12-24 04:04:28.093'),'',0000008.00,'Christmas present 28     ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('T0001','1','1','000000003',convert(datetime,'2021-12-24 04:04:29.094'),'',0000009.00,'Christmas present 29     ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('T0001','1','1','000000003',convert(datetime,'2021-12-24 04:04:30.095'),'',0000010.00,'Christmas present 30     ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('T0001','1','1','000000003',convert(datetime,'2021-12-24 04:04:31.096'),'',0000011.00,'Christmas present 31     ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('T0001','1','1','000000003',convert(datetime,'2021-12-24 04:04:32.097'),'',0000012.00,'Christmas present 32     ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('T0001','1','1','000000003',convert(datetime,'2021-12-24 04:04:33.098'),'',0000013.00,'Christmas present 33     ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('T0001','1','1','000000003',convert(datetime,'2021-12-24 04:04:34.099'),'',0000014.00,'Christmas present 34     ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('T0001','1','1','000000003',convert(datetime,'2021-12-24 04:04:35.100'),'',0000015.00,'Christmas present 35     ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('T0001','1','1','000000003',convert(datetime,'2021-12-24 04:04:36.101'),'',0000016.00,'Christmas present 36     ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('T0001','1','1','000000003',convert(datetime,'2021-12-24 04:04:37.102'),'',0000017.00,'Christmas present 37     ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('T0001','1','1','000000003',convert(datetime,'2021-12-24 04:04:38.103'),'',0000018.00,'Christmas present 38     ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('T0001','1','1','000000003',convert(datetime,'2021-12-24 04:04:39.104'),'',0000019.00,'Christmas present 39     ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('T0001','1','1','000000003',convert(datetime,'2021-12-24 04:04:40.105'),'',0000020.00,'Christmas present 40     ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('T0001','1','1','000000003',convert(datetime,'2021-12-24 04:04:41.106'),'',0000001.00,'Christmas present 41     ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('T0001','1','1','000000003',convert(datetime,'2021-12-24 04:04:42.107'),'',0000002.00,'Christmas present 42     ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('T0001','1','1','000000003',convert(datetime,'2021-12-24 04:04:43.100'),'',0000003.00,'Christmas present 43     ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('T0001','1','1','000000003',convert(datetime,'2021-12-24 04:04:44.109'),'',0000004.00,'Christmas present 44     ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('T0001','1','1','000000003',convert(datetime,'2021-12-24 04:04:45.110'),'',0000005.00,'Christmas present 45     ',' ',' ');

INSERT INTO BNKTXN VALUES
  ('T0001','1','1','000000004',convert(datetime,'2017-12-21 01:01:01.111'),'',0000101.00,'Christmas present 1      ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('T0001','1','1','000000004',convert(datetime,'2017-12-22 01:01:02.112'),'',0000102.00,'Christmas present 2      ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('T0001','1','1','000000004',convert(datetime,'2017-12-23 01:01:03.113'),'',0000103.00,'Christmas present 3      ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('T0001','1','1','000000004',convert(datetime,'2021-12-24 01:01:04.114'),'',0000104.00,'Christmas present 4      ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('T0001','1','1','000000004',convert(datetime,'2021-12-24 01:01:05.115'),'',0000105.00,'Christmas present 5      ',' ',' ');

INSERT INTO BNKTXN VALUES
  ('T0001','1','1','000000001',convert(datetime,'2017-12-21 01:01:01.116'),'',0000101.00,'Christmas present 1      ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('T0001','1','1','000000001',convert(datetime,'2017-12-22 01:01:02.117'),'',0000102.00,'Christmas present 2      ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('T0001','1','1','000000001',convert(datetime,'2017-12-23 01:01:03.118'),'',0000103.00,'Christmas present 3      ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('T0001','1','1','000000001',convert(datetime,'2021-12-24 01:01:04.119'),'',0000104.00,'Christmas present 4      ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('T0001','1','1','000000001',convert(datetime,'2021-12-24 01:01:05.120'),'',0000105.00,'Christmas present 5      ',' ',' ');

INSERT INTO BNKTXN VALUES
  ('T0001','1','1','000000002',convert(datetime,'2017-12-21 01:01:01.121'),'',0000101.00,'Christmas present 1      ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('T0001','1','1','000000002',convert(datetime,'2017-12-22 01:01:02.122'),'',0000102.00,'Christmas present 2      ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('T0001','1','1','000000002',convert(datetime,'2017-12-23 01:01:03.123'),'',0000103.00,'Christmas present 3      ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('T0001','1','1','000000002',convert(datetime,'2021-12-24 01:01:04.124'),'',0000104.00,'Christmas present 4      ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('T0001','1','1','000000002',convert(datetime,'2021-12-24 01:01:05.125'),'',0000105.00,'Christmas present 5      ',' ',' ');

INSERT INTO BNKTXN VALUES
  ('T0001','1','1','000000005',convert(datetime,'2017-12-21 01:01:01.126'),'',0000101.00,'Christmas present 1      ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('T0001','1','1','000000005',convert(datetime,'2017-12-22 01:01:02.127'),'',0000102.00,'Christmas present 2      ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('T0001','1','1','000000005',convert(datetime,'2017-12-23 01:01:03.128'),'',0000103.00,'Christmas present 3      ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('T0001','1','1','000000005',convert(datetime,'2021-12-24 01:01:04.129'),'',0000104.00,'Christmas present 4      ',' ',' ');
INSERT INTO BNKTXN VALUES
  ('T0001','1','1','000000005',convert(datetime,'2021-12-24 01:01:05.130'),'',0000105.00,'Christmas present 5      ',' ',' ');
