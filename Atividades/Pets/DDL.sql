CREATE DATABASE clinica;

USE clinica;
--Criar tabela clinica
CREATE TABLE Clinica(
	IdClinica INT PRIMARY KEY IDENTITY NOT NULL,
	Nome Varchar(100) NOT NULL,
	Endereco Varchar(200) NOT NULL,
);

--Criar tabela dono
CREATE TABLE Dono( 
	IdDono INT PRIMARY KEY IDENTITY NOT NULL,
	Nome Varchar(100) NOT NULL
);

--Criar tabela tipospets
CREATE TABLE TipoPet(
	IdTipoPet INT PRIMARY KEY IDENTITY NOT NULL,
	Descricao Varchar(200)
);

--Criar tabela racas
CREATE TABLE Raca(
	IdRaca INT PRIMARY KEY IDENTITY NOT NULL,
	Descricao Varchar(200), 
--Adicionando as Foreign Keys
	IdTipoPet INT FOREIGN KEY REFERENCES TipoPet(IdTipoPet)
);

--Criar tabela pets
CREATE TABLE Pet(
	IdPet INT PRIMARY KEY IDENTITY NOT NULL,
	Nome VARCHAR(100) NOT NULL,
	DataNascimento DATETIME,
--Adicionando as Foreign Keys
	IdRaca INT FOREIGN KEY REFERENCES Raca(IdRaca),
	IdDono INT FOREIGN KEY REFERENCES Dono(IdDono)
);

--Criar tabela veterinarios
CREATE TABLE Veterinario(
	IdVeterinario INT PRIMARY KEY IDENTITY NOT NULL,
	Crv INT,
	Nome VARCHAR(100) NOT NULL,
--Adicionando as Foreign Keys
	IdClinica INT FOREIGN KEY REFERENCES Clinica(IdClinica)
);

--Criar tabela atendimentos
CREATE TABLE Atendimento(
	IdAtendimento INT PRIMARY KEY IDENTITY NOT NULL,
	Drescricao VARCHAR(200),
	DataAtendimento DATETIME,
--Adicionando as Foreign Keys
	IdPet INT FOREIGN KEY REFERENCES Pet(IdPet),
	IdVeterinario INT FOREIGN KEY REFERENCES Veterinario(IdVeterinario)
);

