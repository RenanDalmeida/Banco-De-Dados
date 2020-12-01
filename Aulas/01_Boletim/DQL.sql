USE boletim;

SELECT * FROM Aluno ORDER BY Nome;

SELECT * FROM Aluno ORDER BY Idade;

SELECT * FROM Aluno WHERE IdAluno >= 1 AND IdAluno <=5;

SELECT * FROM Aluno WHERE Nome LIKE '%a' OR Nome LIKE 'b%'

SELECT * FROM Trabalho WHERE DataEntrega BETWEEN '2020-11-30T23:59:59' AND '2020-12-01T00:00:00';

SELECT * FROM Trabalho;