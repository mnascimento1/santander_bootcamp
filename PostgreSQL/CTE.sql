SELECT numero, nome FROM banco;
SELECT banco_numero, numero, nome FROM agencia;

WITH tbl_tmp_banco AS (
	select NUMERO,NOME
	FROM banco
)
SELECT numero, nome
FROM tbl_tmp_banco;

WITH params AS (
	SELECT 213 AS banco_numero
), tbl_tmp_banco AS (
	SELECT numero, nome
	FROM banco
	JOIN params ON params.banco_numero = banco.numero
)
SELECT numero, nome 
FROM tbl_tmp_banco;


WITH clientes_e_transacoes AS (
	SELECT cliente.nome AS cliente_nome,
			tipo_transacao.nome AS tipo_transacao_nome,
			cliente_transacoes.valor AS tipo_transacao_valor
	FROM cliente_transacoes
	JOIN cliente ON cliente.numero = cliente_transacoes.cliente_numero
	JOIN tipo_transacao ON tipo_transacao.id = cliente_transacoes.tipo_transacao_ID
)
SELECT cliente_nome, tipo_transacao_nome, tipo_transacao_valor
FROM clientes_e_transacoes;

WITH clientes_e_transacoes AS (
	SELECT cliente.nome AS cliente_nome,
			tipo_transacao.nome AS tipo_transacao_nome,
			cliente_transacoes.valor AS tipo_transacao_valor
	FROM cliente_transacoes
	JOIN cliente ON cliente.numero = cliente_transacoes.cliente_numero
	JOIN tipo_transacao ON tipo_transacao.id = cliente_transacoes.tipo_transacao_ID
	JOIN banco ON banco.numero = cliente_transacoes.banco_numero and banco.nome ILIKE '%Itaú%'
)
SELECT cliente_nome, tipo_transacao_nome, tipo_transacao_valor
FROM clientes_e_transacoes;