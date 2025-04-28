CREATE DATABASE escola;
USE escola;
CREATE TABLE alunos (
	id INT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    idade INT NOT NULL
);
INSERT INTO alunos (id, nome, idade)
VALUES
(200, 'Ronaldinho Gaúcho', 14),
(700, 'Crazy Dog', 19);

UPDATE alunos
SET idade = 23
WHERE id = 700;

UPDATE alunos
SET idade = 200
WHERE id = 123;

SELECT * FROM escola.alunos;
SELECT * FROM escola.alunos WHERE idade > 18;

DELETE FROM alunos
WHERE id = 19;

DELETE FROM alunos
WHERE id = 700;

SHOW DATABASES;