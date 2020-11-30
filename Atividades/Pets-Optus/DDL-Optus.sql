CREATE DATABASE optus;

USE optus;
--Criar tabela Usuário
CREATE TABLE Usuario(
	IdUsuario INT PRIMARY KEY IDENTITY NOT NULL,
	Nome VARCHAR(100) NOT NULL,
	Permissao BIT NOT NULL,
	Senha VARCHAR(200) NOT NULL,
	Email VARCHAR(200) NOT NULL
);

--Criar tabela Estilo
CREATE TABLE Estilo(
	IdEstilo INT PRIMARY KEY IDENTITY NOT NULL,
	Nome VARCHAR(100) NOT NULL
);

--Criar tabela Artista
CREATE TABLE Artista(
	IdArtista INT PRIMARY KEY IDENTITY NOT NULL,
	Nome VARCHAR(100)NOT NULL,
--Adicionando a Foreign Key
	IdEstilo INT FOREIGN KEY REFERENCES Estilo(IdEstilo)
);

--Criar tabela Album
CREATE TABLE Album(
	IdAlbum INT PRIMARY KEY IDENTITY NOT NULL,
	Nome VARCHAR(100) NOT NULL,
	DataLancamento DATETIME NOT NULL,
	Localizacao VARCHAR(200),
	QtdMinutos INT,
	Ativo BIT NOT NULL
);

--Criar tabela EstiloAlbum
CREATE TABLE EstiloAlbum(
	IdEstiloAlbum INT PRIMARY KEY IDENTITY NOT NULL,
--Adicionando as Foreign Keys
	IdAlbum INT FOREIGN KEY REFERENCES Album(IdAlbum),
	IdEstilo INT FOREIGN KEY REFERENCES Estilo(IdEstilo)
);



