--Create the DBNASE base database for the Bank Demo Tables to reside
--Written by Alwyn Royall on 12 May 2023
--copyright opentext 2023
--This script is modified for MS SQL Server

-- Run this script after zbnkatyp.sql

--use DBNASE;

--DROP VIEW VBNKDETS;

CREATE VIEW VBNKDETS (
	VPID, 
    VNAME,
    VADDR1,
    VADDR2, 
    VSTATE,
    VCNTRY,
    VPSTCDE, 
    VEMAIL,
    VACCNO, 
    VDESC, 
    VCURRBAL,
    VLASTSTMTDTE,
    VLASTSTMTBAL) 
AS 
  SELECT BNKCUST.BCS_PID, 
         BNKCUST.BCS_NAME, 
         BNKCUST.BCS_ADDR1,
         BNKCUST.BCS_ADDR2, 
         BNKCUST.BCS_STATE,
         BNKCUST.BCS_COUNTRY,
         BNKCUST.BCS_POST_CODE, 
         BNKCUST.BCS_EMAIL,
         BNKACC.BAC_ACCNO,
         BNKATYPE.BAT_DESC, 
         BNKACC.BAC_BALANCE,
         BNKACC.BAC_LAST_STMT_DTE,
         BNKACC.BAC_LAST_STMT_BAL
  FROM (BNKCUST NATURAL FULL OUTER JOIN BNKACC BNKATYPE)
  WHERE (BNKCUST.BCS_PID = BNKACC.BAC_PID) AND  
        (BNKACC.BAC_ACCTYPE = BNKATYPE.BAT_TYPE); 


