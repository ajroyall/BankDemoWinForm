--Create the DBNASE base database for the Bank Demo Tables to reside
--Written by Alwyn Royall on 12 May 2023
--copyright opentext 2023

-- This needs to be run after Zdbnase.sql
use DBNASE;

DROP TABLE BNKATYPE;

CREATE TABLE BNKATYPE
(   BAT_TYPE                  CHAR(1) NOT NULL,
    BAT_DESC                  CHAR(15) NOT NULL,
    BAT_FILLER                CHAR(84) NOT NULL,
    PRIMARY KEY (BAT_TYPE))
--IN DATABASE DBNASE
--AUDIT NONE
--DATA CAPTURE NONE
;

CREATE UNIQUE INDEX BNKATYPE_IDX ON BNKATYPE
(   BAT_TYPE);

INSERT INTO BNKATYPE VALUES
('1','Savings        ',' ');

INSERT INTO BNKATYPE VALUES
('2','Checking       ',' ');

INSERT INTO BNKATYPE VALUES
('3','Investment     ',' ');

INSERT INTO BNKATYPE VALUES
('4','Retirement     ',' ');

INSERT INTO BNKATYPE VALUES
('5','Mortgage       ',' ');

INSERT INTO BNKATYPE VALUES
('6','Cash           ',' ');
;
