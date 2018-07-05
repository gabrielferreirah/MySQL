DROP DATABASE IF EXISTS exercicio02;
CREATE DATABASE exercicio02;
USE exercicio02;

CREATE TABLE champions(
	nome VARCHAR(120),
	descricao VARCHAR(120),
	habilidade1	VARCHAR(120),
	habilidade2	VARCHAR(120),
	habilidade3	VARCHAR(120),
	habilidade4	VARCHAR(120),
	habilidade5 VARCHAR(120)
);

INSERT INTO champions(nome, descricao, habilidade1, habilidade2, habilidade3, habilidade4, habilidade5) VALUES
('Katarina', 'a Lâmina Sinistra', 'Voracidade', 'Lâmina Saltitante', 'Preparação', 'Shunpo', 'Lótus da Morte'),
('Yasuo', 'o Imperdoável', 'Estilo do Errante', 'Tempestade de Aço', 'Parede de Vento', 'Espaada Ágil', 'Último Suspiro'),
('Master Yi', 'o Espadachim Wuju', 'Ataque Duplo', '', '', '', ''),
('Vayne', 'a Caçadora Noturna', 'Caçadora Noturna', 'Rolamento', 'Dardos de Prata', 'Condenar', 'Hora Final'),
('Lee Sin', 'o Monge Cego', 'Agitação', 'Onda Sônica/Ataque Ressoante', 'Proteger/Vontade de Ferro', 'Tempestade/Mutilar', ''),
('Vi', 'a Defensora de Piltover', 'Blindagem', '', 'Pancada Certeira', 'Força Exessiva', 'Saque e Enterrada'),
('Diana', 'o Escárnio da Lua', 'Espada de Prata Lunar', 'Golpe Crescente', 'Cascata Lívida', 'Colapso Minguante', 'Zênite Lunar'),
('Annie', 'a Criança Sombria', 'Piromania', 'Desintegrar', 'Incinerar', 'Escudo Fundido', 'Invocar Tibbers'),
('Aatrox', '', 'Poço de Sangue', 'voo Sombrio', 'Sede de Sangue / Preço em Sangue', 'Lâminas da Aflição', 'Massacre');

SELECT 
    nome 'Nome',
    descricao 'Descrição',
    habilidade1 'Habilidade 1',
    habilidade2 'Habilidade 2',
    habilidade3 'Habilidade 3',
    habilidade4 'Habilidade 4',
    habilidade5 'Habilidade 5'
FROM
    champions;
