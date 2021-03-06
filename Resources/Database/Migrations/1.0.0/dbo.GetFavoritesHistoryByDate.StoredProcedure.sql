USE [{DATABASE_NAME}]
GO
/****** Object:  StoredProcedure [dbo].[GetFavoritesHistoryByDate]    Script Date: 12/10/2012 22:16:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetFavoritesHistoryByDate]
	(
  @From datetime,
  @To datetime
	)
AS
	select distinct FavoriteId from History 
  where @From < Date and  Date < @To
GO
