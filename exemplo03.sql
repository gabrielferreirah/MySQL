DROP DATABASE IF EXISTS jojinho;
CREATE DATABASE IF NOT EXISTS jojinho;
USE jojinho;

CREATE TABLE campeos(
	id INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(100) NOT NULL
);

CREATE TABLE habilidades(
id INT AUTO_INCREMENT PRIMARY KEY,
id_campeao INT,
nome VARCHAR(100) NOT NULL,
descricao TEXT,
FOREIGN KEY (id_campeao) REFERENCES campeos(id)
);

INSERT INTO campeos(nome) VALUES
('Grove'),
('Makoa'),
('Maeve'),
('Viktor');

INSERT habilidades(id_campeao, nome, descricao) VALUES
((SELECT id FROM campeos WHERE nome = 'Viktor'), 'Assault Rifle', 
'Fire one shot every 0.1s that deals 135 damage. Effective up to Medium Range.'),
((SELECT id FROM campeos WHERE nome = 'Viktor'), 'Iron Sights', 
'Look down the barrel of your rifle. Gain improved accuracy but move 50% Slower.'),
((SELECT id FROM campeos WHERE nome = 'Viktor'), 'Frag Grenade', 
'Throw a fragmentation grenade dealing up to 750 damage. Holding Frag Grenade will cook the grenade and reduce its detonation time.'),
((SELECT id FROM campeos WHERE nome = 'Viktor'), 'Hustle', 'Lower your weapon and run 65% faster.'),
((SELECT))