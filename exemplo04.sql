USE escola;

SELECT salas_de_aula.nome'Sala', COUNT(usuarios.id)'Quantidade de alunos' 
FROM usuarios
JOIN salas_de_aula
	ON (salas_de_aula.id = usuarios.id_sala_de_aula)
GROUP BY usuarios.id_sala_de_aula;

