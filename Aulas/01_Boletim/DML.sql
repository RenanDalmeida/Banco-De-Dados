--DML - Data Manipulation Language
USE boletim;

INSERT INTO Aluno (Nome, Ra, Idade) VALUES ('Barbosa', 'R786481', 17);
INSERT INTO Materia (Titulo) VALUES ('Matemática');
INSERT INTO Materia (Titulo) VALUES ('Português');
INSERT INTO Trabalho (Nota, IdAluno, IdMateria, DataEntrega) VALUES (7, 3, 2, '2020-08-05T23:59:59');

UPDATE Aluno SET Ra = 'R567512' WHERE IdAluno = 1;
UPDATE Trabalho SET DataEntrega = '2020-11-30T23:59:59';
UPDATE Trabalho SET Nota = 9.7 WHERE IdTrabalho = 4;

DELETE FROM Aluno WHERE IdAluno = 2;

SELECT * FROM Aluno;
SELECT * FROM Materia;
SELECT * FROM Trabalho;

ALTER TABLE Trabalho ALTER COLUMN Nota DECIMAL(10,2);
