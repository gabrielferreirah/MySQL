DROP DATABASE IF EXISTS escola;
CREATE DATABASE IF NOT EXISTS escola;
USE escola;

CREATE TABLE escolas(
	id INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE salas_de_aula(
	id INT AUTO_INCREMENT PRIMARY KEY,
	id_escola INT,
	nome VARCHAR(100) UNIQUE NOT NULL,
	quantidade_maxima_alunos SMALLINT UNSIGNED NOT NULL,
	UNIQUE(id_escola, nome)
);

INSERT INTO salas_de_aula (nome, quantidade_maxima_alunos) VALUES
('Sala da Caixa', 4),
('Sala PS', 10),
('Sala de deixa eu assoprar a fita', 2);

CREATE TABLE usuarios(
	id INT AUTO_INCREMENT PRIMARY KEY,
	id_sala_de_aula INT NOT NULL,
	nome VARCHAR(200) UNIQUE NOT NULL,
	cpf VARCHAR(14) NOT NULL,
	FOREIGN KEY(id_sala_de_aula) REFERENCES salas_de_aula(id)
);

INSERT INTO usuarios(id_sala_de_aula, nome, cpf) VALUES
(1, 'Pedro', '12345678998'),
(3, 'Gustavo', '12345678912'),
(2, 'Gabriel', '12345678934'),
(2, 'Vilherme', '12345678956'),
(1, 'Henrique', '45612378912'),
(1, 'Rafael', '98765432100');
