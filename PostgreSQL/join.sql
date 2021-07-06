SELECT numero, nome FROM banco;
SELECT banco_, numero, nome FROM agencia;
SELECT numero, nome FROm cliente;
SELECT banco_numero, agencia_numero, numero, digitp, cliente_numero FROM conta_corrente;
SELEC id,nome FROM tipo_transacao;
SELECT banco_numero, agencia_numero, conta_corrente_numero, conta_corrente_digito, cliente_numero, valor FROM cliente_trasancoes;


SELECT count(1) FROM banco; --151
SELECT count(1) FROM agencia; --296

--296 registros
SELECT banco.numero, banco.nome, agencia.numero, agencia.nome
FROM banco
JOIN agencia ON agencia.banco_numero = banco.numero;

--296 registros
SELECT count(banco.numero)
FROM banco
JOIN agencia ON agencia.banco_numero = banco.numero;

SELECT count(banco.numero)
FROM banco
JOIN agencia ON agencia.banco_numero = banco.numero;

-- 9 grupos encontrados
SELECT banco.numero
FROM banco
JOIN agencia ON agencia.banco_numero = banco.numero
GROUP BY banco.numero;

--Retorna apenas o numero de grupos encontrados
SELECT count(distinct banco.numero)
FROM banco
JOIN agencia ON agencia.banco_numero = banco.numero;


-- Retorna todos os bancos que tem relação com agencias e também os que não tem relação
-- Total de 438 registros
SELECT banco.numero, banco.nome, agencia.numero, agencia.nome
FROM banco
LEFT JOIN agencia ON agencia.banco_numero = banco.numero;


-- Retorna todos as agencias que tem relação com bancos e também as que não tem relação
-- Total de 438 registros
SELECT agencia.numero, agencia.nome, banco.numero, banco.nome
FROM agencia
RIGHT JOIN banco ON banco.numero = agencia.banco_numero;


-- Retorna apenas os registros que tem agencia bancaria relacionada com um banco
-- Total de 296 registros
SELECT agencia.numero, agencia.nome, banco.numero, banco.nome
FROM agencia
LEFT JOIN banco ON banco.numero = agencia.banco_numero;


-- 
-- 438 registros
SELECT banco.numero, banco.nome, agencia numero, agencia.nome
FROM banco
FULL JOIN agencia ON agencia.banco_numero = banco.numero;


-- Retorna Cada um dos registros de banco com cada agencia
-- 44696 registros
SELECT banco.numero, banco.nome, agencia numero, agencia.nome
FROM banco
CROSS JOIN agencia;


-- Join entre 4 tabelas
SELECT banco.nome,
		agencia.nome,
		conta_corrente.numero,
		conta_corrente.digito,
		cliente.nome
FROM banco
JOIN agencia ON agencia.banco_numero = banco.numero
JOIN conta_corrente
			-- JOIN conta_corrente ON conta_corrente.banco_numero =  agencia.banco_numero
			ON conta_corrente.banco_numero = banco.numero
			AND conta_corrente.agencia_numero = agencia.numero
JOIN cliente
			ON cliente.numero = conta_corrente.cliente_numero;
			
			
-- teste proposto
-- Fazer um JOIN acima incluindo transações de cada cliente e tipo de transacão
SELECT banco.nome,
		agencia.nome,
		conta_corrente.numero,
		conta_corrente.digito,
		cliente.nome,
		cliente_transacoes.valor,
		cliente_transacoes.tipo_transacao_id,
		tipo_transacao.nome
FROM banco
JOIN agencia ON agencia.banco_numero = banco.numero
JOIN conta_corrente
			ON conta_corrente.banco_numero = banco.numero
			AND conta_corrente.agencia_numero = agencia.numero
JOIN cliente
			ON cliente.numero = conta_corrente.cliente_numero
JOIN cliente_transacoes
			ON cliente_transacoes.valor = cliente_transacoes.valor			
JOIN tipo_transacao ON tipo_transacao.id = cliente_transacoes.tipo_transacao_id;


