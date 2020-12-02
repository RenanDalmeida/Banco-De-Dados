USE clinica;

--Inserindo valores Pet
INSERT INTO Pet (Nome, DataNascimento) VALUES ('Spike', '2020-08-05T23:59:59');
INSERT INTO Pet (Nome, DataNascimento) VALUES ('Boltz', '2020-08-05T23:59:59');

--Inserindo valores Cl�nica
INSERT INTO Clinica (Nome, Endereco) VALUES ('Little Pet', 'Rua Ib�ria, 375');
INSERT INTO Clinica (Nome, Endereco) VALUES ('4Pet', 'Rua itatinga, 170');

--Inserindo valores Dono
INSERT INTO Dono (Nome) VALUES ('Josu�');
INSERT INTO Dono (Nome) VALUES ('Renan');
INSERT INTO Dono (Nome) VALUES ('Loan');

--Inserindo valores TipoPet
INSERT INTO TipoPet (Descricao) VALUES ('Gosta de brincar');
INSERT INTO TipoPet (Descricao) VALUES ('Magro');
INSERT INTO TipoPet (Descricao) VALUES ('Grande');

--Inserindo valores Ra�a
INSERT INTO Raca (Descricao, IdTipoPet) VALUES ('Pastor-Alem�o', 1);
INSERT INTO Raca (Descricao, IdTipoPet) VALUES ('Buldogue', 2);
INSERT INTO Raca (Descricao, IdTipoPet) VALUES ('Poodle', 3);

--Inserindo valores Veterin�rio
INSERT INTO Veterinario (Nome,Crv,IdClinica) VALUES ('Amanda', 256426, 1);
INSERT INTO Veterinario (Nome,Crv,IdClinica) VALUES ('Jo�o', 256426, 2);
INSERT INTO Veterinario (Nome,Crv) VALUES ('Isabel', 256426);

--Inserindo valores Atendimento
INSERT INTO Atendimento (DataAtendimento, Drescricao) VALUES ('2020-08-05T23:59:59', 'Excelente atendimento');
INSERT INTO Atendimento (DataAtendimento, Drescricao) VALUES ('2020-08-05T23:59:59', 'P�ssimo atendimento');

UPDATE Atendimento SET Drescricao = 'Atendimento OK' WHERE IdAtendimento = 1;

SELECT * FROM Clinica;
SELECT * FROM Pet;
SELECT * FROM Dono;
SELECT * FROM TipoPet;
SELECT * FROM Raca;
SELECT * FROM Veterinario;
SELECT * FROM Atendimento;

