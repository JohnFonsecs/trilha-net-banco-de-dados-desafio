SELECT Nome, Ano FROM Filmes

SELECT Nome, Ano FROM Filmes ORDER BY Ano

SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De Volta para o Futuro'

SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano = 1997

SELECT Nome, Ano, Duracao FROM Filmes WHERE ANO > 2000

SELECT Nome, Ano, Duracao FROM Filmes 
WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao

SELECT Ano, COUNT(*) AS Quantidade FROM Filmes
GROUP BY Ano ORDER BY Quantidade DESC

SELECT PrimeiroNome, UltimoNome, Genero 
FROM Atores WHERE Genero = 'M'

SELECT PrimeiroNome, UltimoNome FROM Atores 
WHERE Genero = 'F' ORDER BY PrimeiroNome

SELECT Nome, Genero FROM FILMES JOIN FilmesGenero ON Filmes.Id = IdFilme
JOIN Generos ON IdGenero = Generos.Id

SELECT Nome, Genero FROM FILMES JOIN FilmesGenero ON Filmes.Id = IdFilme
JOIN Generos ON IdGenero = Generos.Id AND Genero = 'Mistério'

SELECT Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel
FROM Filmes JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
JOIN Atores ON ElencoFilme.IdAtor = Atores.Id;
