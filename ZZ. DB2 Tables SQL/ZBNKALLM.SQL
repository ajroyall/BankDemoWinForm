/* ------------------------------------------------- */
/* Bankdemo DB2 DDL adapted for Microsoft SQL Server */
/* ------------------------------------------------- */
--drop table BNKTXN;

CREATE TABLE BNKTXN
(
    BTX_PID                   CHAR(5) NOT NULL,
    BTX_TYPE                  CHAR(1) NOT NULL,
    BTX_SUB_TYPE              CHAR(1) NOT NULL,
    BTX_ACCNO                 CHAR(9),
    BTX_TIMESTAMP             CHAR(26) NOT NULL
    DEFAULT REPLACE(REPLACE(CONVERT(CHAR(26),CURRENT_TIMESTAMP,121),' ','-') +
    RIGHT(CAST(RAND() as DECIMAL(4,3)),3),':','.'),
    BTX_TIMESTAMP_FF          CHAR(26) NOT NULL  DEFAULT ' ',
    BTX_AMOUNT                DECIMAL(9,2) NOT NULL DEFAULT 0,
    BTX_DATA_OLD              CHAR(150) NOT NULL DEFAULT ' ',
    BTX_DATA_NEW              CHAR(150) NOT NULL DEFAULT ' ',
    BTX_FILLER                CHAR(27) NOT NULL DEFAULT ' ',
    CONSTRAINT BTX_CUST
    FOREIGN KEY  (BTX_PID)
            REFERENCES BNKCUST (BCS_PID),
    CONSTRAINT BTX_ACCT
    FOREIGN KEY  (BTX_ACCNO)
            REFERENCES BNKACC (BAC_ACCNO)
)

;
/* AUDIT NONE */
/* DATA CAPTURE NONE */

CREATE INDEX BNKTXN_IDX1 ON BNKTXN
(
     BTX_ACCNO
)

;

--CREATE VIEW VBNKDETS
--   (VPID,
--    VNAME,
--    VADDR1,
--    VADDR2,
--    VSTATE,
--    VCNTRY,
--    VPSTCDE,
--    VACCNO,
--    VDESC,
--    VCURRBAL,
--    VLASTSTMTDTE,
--    VLASTSTMTBAL) AS
--  SELECT A.BCS_PID,
--         A.BCS_NAME,
--         A.BCS_ADDR1,
--         A.BCS_ADDR2,
--         A.BCS_STATE,
--         A.BCS_COUNTRY,
--         A.BCS_POST_CODE,
--         B.BAC_ACCNO,
--         C.BAT_DESC,
--         B.BAC_BALANCE,
--         B.BAC_LAST_STMT_DTE,
--         B.BAC_LAST_STMT_BAL
--  FROM BNKCUST A,
--       BNKACC B,
--       BNKATYPE C
--  WHERE (A.BCS_PID = B.BAC_PID) AND
--        (B.BAC_ACCTYPE = C.BAT_TYPE)
--;
