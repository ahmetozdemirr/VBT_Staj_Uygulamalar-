
CREATE OR ALTER PROCEDURE GetIkPersonel
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON; --KA� SATIR ETK�LEND�

    -- Insert statements for procedure here
	SELECT *
	FROM IK_PERSONEL

	DECLARE @SATIRSAYISI INT = @@ROWCOUNT

	--SELECT @@ROWCOUNT AS SATIRSAYISI --SATIR SAYISI D�ND�R�R

	
END
GO

EXEC GetIkPersonel
