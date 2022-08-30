/*

---------Filtering Data------

 

*/

select *from IK_PERSONEL

--Ankarada yaþayan personeller

SELECT *
        FROM IK_PERSONEL 
        WHERE IL_ADI='Ankara'

--Ankarada yaþayan  ve Bilgi Ýþlem departmanýnda çalýþan personeller

SELECT *
        FROM IK_PERSONEL 
        WHERE IL_ADI='Ankara' AND DEPARTMAN_ADI='Bilgi Ýþlem'

--Muhasebe ve Bilgi Ýþlem departmanýnda çalýþan, Uzman ve Müdür olmayan personeller

SELECT *
        FROM IK_PERSONEL 
        WHERE DEPARTMAN_ADI IN ('Muhasebe','Bilgi Ýþlem')
		AND UNVAN_ADI NOT IN ('Uzman', 'Müdür')

--Yaþý 40+ ya da Kýdemi 10+ olan çalýþanlar

SELECT 
       PERSONEL_ADI,PERSONEL_SOYADI,DOGUM_TARIHI,ISE_GIRIS_TARIHI,
	  -- YEAR(DOGUM_TARIHI) AS DOGUM_YILI,
	   YEAR(GETDATE())-YEAR(DOGUM_TARIHI) AS YAS,
	  -- YEAR(ISE_GIRIS_TARIHI) AS ISE_GIRIS_YILI,
	   YEAR(GETDATE())-YEAR(ISE_GIRIS_TARIHI) AS KIDEM
        FROM IK_PERSONEL 
		WHERE 
	    YEAR(GETDATE())-YEAR(DOGUM_TARIHI) >=40 
		AND YEAR(GETDATE())-YEAR(ISE_GIRIS_TARIHI)>=10

       

--Yaþý 35+ ya da Kýdemi 5 yýlýn altýnda olan çalýþanlar


SELECT 
       PERSONEL_ADI,PERSONEL_SOYADI,DOGUM_TARIHI,ISE_GIRIS_TARIHI,
	   YEAR(GETDATE())-YEAR(DOGUM_TARIHI) AS YAS,
	   YEAR(GETDATE())-YEAR(ISE_GIRIS_TARIHI) AS KIDEM
        FROM IK_PERSONEL 
		WHERE 
	    YEAR(GETDATE())-YEAR(DOGUM_TARIHI) >=35 
		AND YEAR(GETDATE())-YEAR(ISE_GIRIS_TARIHI)<5

       

--Doðum yýlý 1985 ile 1990 arasýnda olan personeller


SELECT 
        *
        FROM IK_PERSONEL 
		WHERE 
	    YEAR(DOGUM_TARIHI) BETWEEN 1985 AND 1990

--Adý 'S' ile baþlayan personlerrin adý ve soyadýna göre listele

SELECT 
        personel_adý,personel_soyadý
        FROM IK_PERSONEL 
		WHERE 
	    PERSONEL_ADI LIKE 'S%'

--Soyadý 'K' ile baþlayan, Adý 'S ' ile baþlamayan personeller

SELECT 
        *
        FROM IK_PERSONEL 
		WHERE 
	    PERSONEL_SOYADI LIKE 'K%' AND  PERSONEL_ADI NOT LIKE 'S%'

--Kýdemi 10+ yýl ve maaþý 1000 ile 1200 arasýnda olanlarýn Adý, Soyadý, Departmaný ve Unvan bilgisini listele

SELECT 
        personel_adý,personel_soyadý,DEPARTMAN_ADI,UNVAN_ADI
        FROM IK_PERSONEL 
		WHERE 
	    YEAR(GETDATE())-YEAR(ISE_GIRIS_TARIHI)>=10 AND MAAS BETWEEN 1000 AND 1200
       
       

