/* DQL - JOINS */

USE optus;

SELECT 
	Estilo.Nome,
	Artista.Nome
FROM Estilo
	INNER JOIN Artista ON Artista.IdArtista = Estilo.IdEstilo
WHERE Estilo.Nome LIKE '%p'
ORDER BY Estilo.Nome DESC
;

SELECT * FROM Estilo
SELECT * FROM Artista

UPDATE Artista SET IdEstilo = 1 WHERE IdArtista = 2;