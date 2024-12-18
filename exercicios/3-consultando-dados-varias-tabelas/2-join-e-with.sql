-- Crie uma consulta para realizar inner join com as tabelas "tracks", "albums" e "artists"
-- Refatore a consulta anterior usando a cláusula "with" e verifique o total de músicas existente na base de terminado artista, ex: Caetano Veloso

WITH MUSICA AS (
SELECT 
TRK.trackid as ID,
TRK.name as MUSICA,
ALB.title as ALBUM,
ART.name as ARTISTA
FROM 
tracks as TRK
INNER JOIN albums as ALB on TRK.albumid = alb.albumid
INNER JOIN artists as ART on art.artistid = alb.artistid)

SELECT 
ARTISTA,
COUNT(MUSICA) as QUANT
FROM MUSICA
WHERE ARTISTA LIKE 'Caetano%';
