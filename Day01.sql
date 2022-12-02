--DDL - DATA DEFINITION LANG.
--CREATE - TABLO OLUSTURMA
CREATE TABLE ogrenciler
(ogrenci_no char(7),
 isim varchar(20),
 soyisim varchar(25),
 not_ort real,-- ondalıklı sayılar kullanılır (double gibi)
 kayıt_tarihi date
);
--VAR OLAN TABLODAN YENİ TABLO OLUŞTURMAK
CREATE TABLE ogrenci_notları 
as select isim,soyisim,not_ort 
from ogrenciler;
--DATA MANUPLATİON LANG.
--INSERT (Database e veri ekleme)

INSERT INTO ogrenciler VALUES ('1234567','HÜSEYİN','BULAT',90.5,now());
INSERT INTO ogrenciler VALUES ('1234568','CENNET','BULAT',95.5,'2022.12.11');
INSERT INTO ogrenciler(isim,soyisim) VALUES ('ZEYNEP','BULAT');

--DQL DATA QUERY LANG.
--SELECT
SELECT * FROM ogrenciler;
