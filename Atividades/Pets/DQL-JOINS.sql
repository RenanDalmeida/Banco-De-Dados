--DQL

USE clinica;


SELECT 
	Raca.Descricao,
	TipoPet.IdTipoPet

FROM Raca 

INNER JOIN TipoPet ON TipoPet.IdTipoPet = Raca.IdTipoPet;



SELECT * FROM Veterinario ORDER BY Nome ASC;

SELECT * FROM Pet ORDER BY Nome;

SELECT * FROM Raca WHERE Descricao LIKE '%dle';

SELECT * FROM Raca;

SELECT * FROM Veterinario;