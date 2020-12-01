CREATE DATABASE boletim;

USE boletim;
--Criar tabela Aluno
CREATE TABLE Aluno(
	IdAluno INT PRIMARY KEY IDENTITY NOT NULL,
	Nome VARCHAR(100) NOT NULL,
	Ra VARCHAR(20),
	Idade INT 
);

--Criar tabela Matéria
CREATE TABLE Materia(
	IdMateria INT PRIMARY KEY IDENTITY NOT NULL,
	Titulo VARCHAR(50),

);

--Criar tabela Trabalho
CREATE TABLE Trabalho(
	IdTrabalho INT PRIMARY KEY IDENTITY NOT NULL,
	Nota Decimal,
--Adicionar as FKS
	IdMateria INT FOREIGN KEY REFERENCES Materia(IdMateria),
	IdAluno INT FOREIGN KEY REFERENCES Aluno(IdAluno)
);
