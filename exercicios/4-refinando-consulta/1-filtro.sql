-- Crie uma consulta para realizar inner join com as tabelas "tracks", "albums" e "artists". 
--Além disso, apresente apenas as músicas do artista que contenha "Nação" no nome e título do álbum que não seja "Da Lama Ao Caos"

SELECT
TRK.trackid as ID,
TRK.name as MUSICA,
ALB.title as ALBUM,
ART.name as ARTISTA
FROM 
tracks as TRK
INNER JOIN albums as ALB on trk.albumid = alb.albumid
INNER JOIN artists as ART on art.artistid= alb.artistid
WHERE ARTISTA LIKE '%Nação%'
AND ALBUM NOT LIKE '%Da Lama ao Caos%';


