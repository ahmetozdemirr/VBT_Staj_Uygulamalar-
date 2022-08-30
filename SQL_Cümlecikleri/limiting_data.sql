/*

---------Limiting Data------

  OFFSET FETCH
  TOP

*/

--OFFSET FETCH

SELECT
    *
FROM 
    IK_PERSONEL
ORDER BY            --3 den sonraki 5 taneyi
     PERSONEL_ADI
OFFSET 
      3 ROWS
FETCH NEXT 
      5 ROWS ONLY

--TOP

SELECT
    TOP 7*     --ilk 7 listeler
FROM 
    IK_PERSONEL






