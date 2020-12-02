--DQL - JOINS

USE boletim;

SELECT 
	Aluno.Nome,
	Materia.Titulo,
	Trabalho.Nota
FROM Trabalho
	INNER JOIN Aluno ON Trabalho.IdAluno = Aluno.IdAluno
	INNER JOIN Materia ON Trabalho.IdMateria = Materia.IdMateria
;


INSERT INTO Trabalho (IdMateria,IdAluno) VALUES (1,5);

SELECT * FROM Trabalho;
SELECT * FROM Aluno;
SELECT * FROM Materia;












