USE [DBNASE]
GO
/****** Object:  View [dbo].[VBNKDETS]    Script Date: 15/05/2023 11:24:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VBNKDETS]
AS
SELECT dbo.BNKCUST.BCS_PID AS VPID, dbo.BNKCUST.BCS_NAME AS VNAME, dbo.BNKCUST.BCS_ADDR1 AS VADDR1, dbo.BNKCUST.BCS_ADDR2 AS VADDR2, dbo.BNKCUST.BCS_STATE AS VSTATE, 
                  dbo.BNKCUST.BCS_COUNTRY AS VCNTRY, dbo.BNKCUST.BCS_POST_CODE AS VPSTCDE, dbo.BNKCUST.BCS_EMAIL AS VEMAIL, dbo.BNKACC.BAC_ACCNO AS VACCNO, dbo.BNKATYPE.BAT_DESC AS VDESC, 
                  dbo.BNKACC.BAC_BALANCE AS VCURRBAL, dbo.BNKACC.BAC_LAST_STMT_DTE AS VLASTSTMTDTE, dbo.BNKACC.BAC_LAST_STMT_BAL AS VLASTSTMTBAL
FROM     dbo.BNKCUST INNER JOIN
                  dbo.BNKACC ON dbo.BNKCUST.BCS_PID = dbo.BNKACC.BAC_PID INNER JOIN
                  dbo.BNKATYPE ON dbo.BNKACC.BAC_ACCTYPE = dbo.BNKATYPE.BAT_TYPE
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "BNKCUST"
            Begin Extent = 
               Top = 7
               Left = 48
               Bottom = 306
               Right = 315
            End
            DisplayFlags = 280
            TopColumn = 7
         End
         Begin Table = "BNKACC"
            Begin Extent = 
               Top = 7
               Left = 363
               Bottom = 170
               Right = 601
            End
            DisplayFlags = 280
            TopColumn = 4
         End
         Begin Table = "BNKATYPE"
            Begin Extent = 
               Top = 7
               Left = 649
               Bottom = 148
               Right = 843
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 3504
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VBNKDETS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VBNKDETS'
GO
