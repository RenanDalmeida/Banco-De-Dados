USE Nyous;

INSERT INTO Acesso (Permissao) 
VALUES
	('Administrador'),
	('Padr�o');

INSERT INTO Categoria (Titulo)
VALUES
	('Meetup'),
	('Workshop'),
	('Hackaton'),
	('Live'),
	('Palestra');

INSERT INTO Local (Logradouro,Numero,Bairro,Cidade,UF,CEP)
VALUES
	('Alameda Bar�o de  Limeira', 539, 'Santa Cec�lia', 'S�o Paulo', 'SP', '0102-001');


INSERT INTO Usuario (Nome,Email,Senha,DataNascimento,IdAcesso)
VALUES
	('Renan', 'rdalmeidi@gmail.com', '99885rd165', '2004-01-26T05:20:00', 1);

INSERT INTO Evento (DataEvento,Capacidade,AcessoRestrito,IdCategoria,IdLocal) VALUES
	('2020-05-20T23:59:59', 100, 0, 3, 1);