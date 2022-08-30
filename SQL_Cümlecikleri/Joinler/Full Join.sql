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

--FULL JOIN - �l�esi e�le�en personeller ve personele ba�lanm�� il�eler (Inner Join gibi �al���r)

SELECT
    PER.*,
	ILC.*
FROM
    IK_PERSONEL AS PER
	FULL JOIN GN_ILCE AS ILC ON PER.ID_ILCE=ILC.ID_ILCE
WHERE
    PER.ID_ILCE IS NOT NULL 
	AND ILC.ID_ILCE IS NOT NULL

--FULL JOIN - �l�esi e�le�meyen personeller veya personele ba�lanmam�� il�eler

SELECT
    PER.*,
	ILC.*
FROM
    IK_PERSONEL AS PER
	FULL JOIN GN_ILCE AS ILC ON PER.ID_ILCE=ILC.ID_ILCE
WHERE
    PER.ID_ILCE IS NULL 
	OR ILC.ID_ILCE IS NULL