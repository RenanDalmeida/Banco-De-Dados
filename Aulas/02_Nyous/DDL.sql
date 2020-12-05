CREATE DATABASE Nyous;
DROP DATABASE Nyous

USE Nyous;

CREATE TABLE Acesso(
	IdAcesso INT PRIMARY KEY IDENTITY NOT NULL,
	Permissao VARCHAR(50),
);

CREATE TABLE Categoria(
	IdCategoria INT PRIMARY KEY IDENTITY NOT NULL,
	Titulo VARCHAR(50)
);

CREATE TABLE Local(
	IdLocal INT PRIMARY KEY IDENTITY NOT NULL,
	Logradouro VARCHAR(100) NOT NULL,
	Numero VARCHAR(50) ,
	Complemento VARCHAR(50),
	Bairro VARCHAR(50),
	Cidade VARCHAR(50),
	UF VARCHAR(2),
	CEP VARCHAR(10)
);

CREATE TABLE Evento(
	IdEvento INT PRIMARY KEY IDENTITY NOT NULL,
	DataEvento DATETIME NOT NULL,
	AcessoRestrito BINARY,
	Capacidade INT NOT NULL,
	Descricao VARCHAR(255),

	IdLocal INT FOREIGN KEY REFERENCES Local(IdLocal),
	IdCategoria INT FOREIGN KEY REFERENCES Categoria(IdCategoria)
);

CREATE TABLE Usuario(
	IdUsuario INT PRIMARY KEY IDENTITY NOT NULL,
	Nome VARCHAR(100) NOT NULL,
	Email VARCHAR(100) NOT NULL,
	Senha VARCHAR(200) NOT NULL,
	DataNascimento DATETIME,

	IdAcesso INT FOREIGN KEY REFERENCES Acesso(IdAcesso)
);

CREATE TABLE Convite(
	IdConvite INT PRIMARY KEY IDENTITY NOT NULL,
	Confirmado BINARY,

	IdEvento INT FOREIGN KEY REFERENCES Evento(IdEvento),
	IdUsuario INT FOREIGN KEY REFERENCES Usuario(IdUsuario),
	IdUsuarioConvidado INT FOREIGN KEY REFERENCES Usuario(IdUsuario)
);

CREATE TABLE Presenca(
	IdPresenca INT PRIMARY KEY IDENTITY NOT NULL,
	Confirmado BINARY,

	IdEvento INT FOREIGN KEY REFERENCES Evento(IdEvento),
	IdUsuario INT FOREIGN KEY REFERENCES Usuario(IdUsuario)
);












