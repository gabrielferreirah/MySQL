USE e08l023sql;

SELECT nome'Nome', nota_1'Nota 1', nota_2'Nota 2', nota_3'Nota 3', nota_4'Nota 4' FROM alunos WHERE nome = (SELECT max(nome) FROM alunos);