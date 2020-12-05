USE Nyous;

SELECT * FROM Categoria;

SELECT * FROM Evento;

SELECT Usuario.Nome, Usuario.Email, Acesso.Permissao AS PerimissaoAcesso FROM Usuario
	INNER JOIN Acesso ON Usuario.IdAcesso = Acesso.IdAcesso;

SELECT * FROM Evento 
	INNER JOIN Categoria ON Evento.IdCategoria = Categoria.IdCategoria
	INNER JOIN Local ON Evento.IdLocal = Local.IdLocal;
	