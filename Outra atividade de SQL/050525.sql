CREATE DATABASE biblioteca;
USE biblioteca;

CREATE TABLE livros (
	id INT PRIMARY KEY,
	titulo TEXT,
    autores TEXT NOT NULL,
    precos INT NOT NULL,
    estoque INT
);

INSERT INTO livros (id, titulo, autores, precos, estoque)
VALUES
(1, 'Relatos de um gato viajente', 'Hiro Arikawa', 52, 2),
(2, 'Bíblia Sagrada', 'Muitos autores', 150, 49),
(3, 'Um gênio mal compreendido', 'Pedro Oliveira', 49, 12),
(4, 'Qual o nome disso aqui?', 'Pedro Oliveira', 20, 5),
(5, 'As crônicas de gelo e fogo', 'Jorge', 500, 6);

UPDATE livros
SET precos = precos * 1.10
WHERE id IN (1, 2, 3);

UPDATE livros
SET estoque = 15
WHERE id = 1;

UPDATE livros
SET estoque = 30
WHERE id = 3;

UPDATE livros
SET estoque = 0
WHERE id = 4;

DELETE FROM livros
WHERE estoque = 0;

UPDATE livros
SET precos = 8
WHERE id = 3;

SELECT titulo, autores FROM livros
WHERE precos < 50;

UPDATE livros
SET estoque = 2
WHERE id = 5;

SELECT * FROM livros
WHERE estoque > 5;

SELECT titulo, precos FROM livros
WHERE precos = (SELECT MAX(precos) FROM livros);

DELETE FROM livros
WHERE precos > 100;

SELECT * FROM livros;