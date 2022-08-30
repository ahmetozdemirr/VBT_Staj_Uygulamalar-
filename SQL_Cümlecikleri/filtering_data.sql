/*

---------Filtering Data------

 

*/

select *from IK_PERSONEL

--Ankarada ya�ayan personeller

SELECT *
        FROM IK_PERSONEL 
        WHERE IL_ADI='Ankara'

--Ankarada ya�ayan  ve Bilgi ��lem departman�nda �al��an personeller

SELECT *
        FROM IK_PERSONEL 
        WHERE IL_ADI='Ankara' AND DEPARTMAN_ADI='Bilgi ��lem'

--Muhasebe ve Bilgi ��lem departman�nda �al��an, Uzman ve M�d�r olmayan personeller

SELECT *
        FROM IK_PERSONEL 
        WHERE DEPARTMAN_ADI IN ('Muhasebe','Bilgi ��lem')
		AND UNVAN_ADI NOT IN ('Uzman', 'M�d�r')

--Ya�� 40+ ya da K�demi 10+ olan �al��anlar

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

       

--Ya�� 35+ ya da K�demi 5 y�l�n alt�nda olan �al��anlar


SELECT 
       PERSONEL_ADI,PERSONEL_SOYADI,DOGUM_TARIHI,ISE_GIRIS_TARIHI,
	   YEAR(GETDATE())-YEAR(DOGUM_TARIHI) AS YAS,
	   YEAR(GETDATE())-YEAR(ISE_GIRIS_TARIHI) AS KIDEM
        FROM IK_PERSONEL 
		WHERE 
	    YEAR(GETDATE())-YEAR(DOGUM_TARIHI) >=35 
		AND YEAR(GETDATE())-YEAR(ISE_GIRIS_TARIHI)<5

       

--Do�um y�l� 1985 ile 1990 aras�nda olan personeller


SELECT 
        *
        FROM IK_PERSONEL 
		WHERE 
	    YEAR(DOGUM_TARIHI) BETWEEN 1985 AND 1990

--Ad� 'S' ile ba�layan personlerrin ad� ve soyad�na g�re listele

SELECT 
        personel_ad�,personel_soyad�
        FROM IK_PERSONEL 
		WHERE 
	    PERSONEL_ADI LIKE 'S%'

--Soyad� 'K' ile ba�layan, Ad� 'S ' ile ba�lamayan personeller

SELECT 
        *
        FROM IK_PERSONEL 
		WHERE 
	    PERSONEL_SOYADI LIKE 'K%' AND  PERSONEL_ADI NOT LIKE 'S%'

--K�demi 10+ y�l ve maa�� 1000 ile 1200 aras�nda olanlar�n Ad�, Soyad�, Departman� ve Unvan bilgisini listele

SELECT 
        personel_ad�,personel_soyad�,DEPARTMAN_ADI,UNVAN_ADI
        FROM IK_PERSONEL 
		WHERE 
	    YEAR(GETDATE())-YEAR(ISE_GIRIS_TARIHI)>=10 AND MAAS BETWEEN 1000 AND 1200
       
       

