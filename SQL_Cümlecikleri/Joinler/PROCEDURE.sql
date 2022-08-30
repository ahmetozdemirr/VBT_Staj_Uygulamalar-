
CREATE OR ALTER PROCEDURE GetIkPersonel
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON; --KAÇ SATIR ETKÝLENDÝ

    -- Insert statements for procedure here
	SELECT *
	FROM IK_PERSONEL

	DECLARE @SATIRSAYISI INT = @@ROWCOUNT

	--SELECT @@ROWCOUNT AS SATIRSAYISI --SATIR SAYISI DÖNDÜRÜR

	
END
GO

EXEC GetIkPersonel
