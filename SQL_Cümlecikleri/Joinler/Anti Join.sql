/*


---------- Anti Join-----------

     IN
	 NOT IN

	 EXCEPT
	 INTERSECT

*/

SELECT * FROM IK_PERSONEL

--IN

SELECT
    PER.*
FROM
   IK_PERSONEL AS PER
WHERE
    PER.ID_ILCE  IN
	(
	      SELECT
		      ILC.ID_ILCE
		   FROM
			  GN_ILCE AS ILC
		   WHERE
			  ILC.ID_ILCE=PER.ID_ILCE
			  )

--EXCEPT - Ilce tablosu ile personeldeki ilce farklar� -- ORTAK OLANLARDA E�LE�MEYENLER


--INTERSECT --KES��ENLER



--NOT IN - �l�esi girilmeyen personeller