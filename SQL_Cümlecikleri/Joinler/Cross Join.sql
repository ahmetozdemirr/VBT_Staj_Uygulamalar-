/*


---------- Cross Join-----------


*/


--CROSS JOIN - PERSONEL VE ILCE

SELECT
    PER.*,
	IL.*
FROM
    IK_PERSONEL AS PER
	CROSS JOIN GN_ILL AS IL 

ORDER BY
   PER.PERSONEL_ADI,
   PER.PERSONEL_SOYADI,
   IL.IL_ADI