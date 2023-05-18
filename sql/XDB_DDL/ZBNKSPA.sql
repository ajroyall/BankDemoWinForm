--Create the DBNASE base database for the Bank Demo Tables to reside
--Written by Alwyn Royall on 12 May 2023
--copyright opentext 2023
--This script is modified for MS SQL Server

-- Run this script after zbnkatyp.sql

use DBNASE;

DROP TABLE BNKSPA;
--COMMIT;

CREATE TABLE BNKSPA
(
    BSP_TERM               CHAR(8) NOT NULL,
    BSP_SPA_DATA           VARCHAR(6144) NOT NULL
)
;
--IN DBNASE.SPA
--AUDIT NONE
--DATA CAPTURE NONE;

--COMMIT;
