USE e07l023sql;

SELECT nome'Nome', nota_1'Nota 01' FROM alunos WHERE nota_1 = (SELECT MIN(nota_1) FROM alunos);