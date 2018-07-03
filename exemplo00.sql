DROP DATABASE IF EXISTS exemplo00;
CREATE DATABASE exemplo00;
USE exemplo00;
CREATE TABLE alunos(
	nomes VARCHAR(100),
	idade TINYINT
);

/*
TIPOS INTEIROS
TINYINT: -128 ... 127
SMALLINT: -32728 ... 32727
MEDIUMINT: -8388608 ... 8388607
INT: -2147483648 ... 2147483647
LONG: -2^63 ... 2^63-1
*/

DELETE FROM alunos WHERE nomes <> '';
INSERT INTO alunos VALUE('Henrique', 21);
INSERT INTO alunos VALUE('Leonardo', 21);
INSERT INTO alunos VALUE('Gustavo', 21);
INSERT INTO alunos VALUE('Lucas', 16);
INSERT INTO alunos VALUE('Daiana', 22);
INSERT INTO alunos VALUE('Logan', 18);
INSERT INTO alunos VALUE('Guilherme', 17);

SELECT * FROM alunos;

SELECT * FROM alunos WHERE idade = 21;

SELECT * FROM alunos WHERE idade > 18;