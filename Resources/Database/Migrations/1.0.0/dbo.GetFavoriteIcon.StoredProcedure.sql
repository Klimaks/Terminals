USE [{DATABASE_NAME}]
GO
/****** Object:  StoredProcedure [dbo].[GetFavoriteIcon]    Script Date: 12/10/2012 22:16:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[GetFavoriteIcon]
(
  @FavoriteId int
)

AS
SELECT  IconData
FROM    Favorites
WHERE   (Id = @FavoriteId)
GO
