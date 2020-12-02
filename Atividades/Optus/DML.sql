USE optus;

--Adicionando valores Usuário
INSERT INTO Usuario (Nome,Email,Senha,Permissao) VALUES ('Renan', 'abcde@outlook.com', '8965ry85', 0);
INSERT INTO Usuario (Nome,Email,Senha,Permissao) VALUES ('Loan', 'abcde@gmail.com', '8965ry85', 1);
INSERT INTO Usuario (Nome,Email,Senha,Permissao) VALUES ('Josué', 'abcde@gmail.com', '89d5ry85', 0);

--Adicionando valores Estilo
INSERT INTO Estilo (Nome) VALUES ('Rap');
INSERT INTO Estilo (Nome) VALUES ('Funk');
INSERT INTO Estilo (Nome) VALUES ('Trap');

--Adicionando valores Álbum
INSERT INTO Album (Nome, Localizacao, DataLancamento, QtdMinutos, Ativo) VALUES ('50/50', 'Rua inexistente, 500', '2020-12-01T23:59:59', 50, 0);
INSERT INTO Album (Nome, Localizacao, DataLancamento, QtdMinutos, Ativo) VALUES ('50/50', 'Rua Paraguai, 500', '2020-12-01T11:02:50', 30, 0);

--Adicionando valores Artista
INSERT INTO Artista (Nome,IdEstilo) VALUES ('Gustavo Lima', 1);
INSERT INTO Artista (Nome,IdEstilo) VALUES ('Alok', 2);
INSERT INTO Artista (Nome,IdEstilo) VALUES ('Kyan', 1);

SELECT * FROM Usuario;
SELECT * FROM Estilo;
SELECT * FROM Album;
SELECT * FROM Artista;
