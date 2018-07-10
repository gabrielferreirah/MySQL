USE e03l023sql;

SELECT nome'Aluno', nota_1'Nota 01', nota_2'Nota 02', nota_3'Nota 03', nota_4'Nota 04',((nota_1+nota_2+nota_3+nota_4)/4)'Média' FROM alunos;