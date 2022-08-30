/*


---------- Full Join-----------


*/


--FULL JOIN - PERSONEL VE ILCE

SELECT
    PER.*,
	ILC.*
FROM
    IK_PERSONEL AS PER
	FULL JOIN GN_ILCE AS ILC ON PER.ID_ILCE=ILC.ID_ILCE

--FULL JOIN - Ýlçesi eþleþen personeller ve personele baðlanmýþ ilçeler (Inner Join gibi çalýþýr)

SELECT
    PER.*,
	ILC.*
FROM
    IK_PERSONEL AS PER
	FULL JOIN GN_ILCE AS ILC ON PER.ID_ILCE=ILC.ID_ILCE
WHERE
    PER.ID_ILCE IS NOT NULL 
	AND ILC.ID_ILCE IS NOT NULL

--FULL JOIN - Ýlçesi eþleþmeyen personeller veya personele baðlanmamýþ ilçeler

SELECT
    PER.*,
	ILC.*
FROM
    IK_PERSONEL AS PER
	FULL JOIN GN_ILCE AS ILC ON PER.ID_ILCE=ILC.ID_ILCE
WHERE
    PER.ID_ILCE IS NULL 
	OR ILC.ID_ILCE IS NULL