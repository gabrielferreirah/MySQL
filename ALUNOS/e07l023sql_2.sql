USE e07l023sql;

SELECT nome'Nome', nota_1'Nota 01' from alunos where nota_1 = (SELECT min(nota_1) FROM alunos);