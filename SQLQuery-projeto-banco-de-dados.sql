
--RESPOSTA
--1 
SELECT
Nome ,
Ano
FROM Filmes

--2

SELECT
Nome ,
Ano,
Duracao
FROM Filmes
ORDER BY Ano ASC

--3
SELECT
*
FROM Filmes
WHERE Nome = 'De Volta para o futuro' 
AND Ano = 1985 AND Duracao = 116
--4
SELECT
Nome ,
Ano,
Duracao
FROM Filmes
WHERE Ano  = 1997

--5
SELECT
Nome ,
Ano,
Duracao
FROM Filmes
WHERE Ano > 2000

--6
SELECT
Nome ,
Ano,
Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC

--7
SELECT Ano, COUNT(*) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

--8
SELECT id, PrimeiroNome, UltimoNome,Genero
FROM Atores
WHERE Genero = 'M'

--9
SELECT id, PrimeiroNome, UltimoNome,Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome
 
 -
 --10

 SELECT Nome, Genero
 FROM Generos, Filmes
 INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
 
 --11
 SELECT Nome, Genero
 FROM Filmes, Generos
 WHERE Genero = 'Mist�rio';
 --12 
 SELECT Nome, PrimeiroNome, UltimoNome, Papel
 FROM Filmes, Atores,ElencoFilme
 INNER JOIN FilmesGenero ON ElencoFilme.Id = ElencoFilme.IdFilme