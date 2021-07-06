--Teste proposto para testar e relembrar comandos ensinados.

CREATE TABLE IF NOT EXISTS teste (
	id SERIAL PRIMARY KEY,
	nome VARCHAR(50) NOT NULL,
	creat_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

DROP TABLE IF EXISTS teste;

CREATE TABLE IF NOT EXISTS teste (
	cpf VARCHAR(11) NOT NULL,
	nome VARCHAR(50) NOT NULL,
	creat_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (cpf)
);

INSERT INTO teste (cpf,nome,creat_at)
VALUES ('22344566712','José Colmeia','2019-07-01 12:00:00') ON CONFLICT (cpf) DO NOTHING

select * FROM teste;

UPDATE teste SET nome = 'Pedro Alvares' WHERE cpf = '22344566712';