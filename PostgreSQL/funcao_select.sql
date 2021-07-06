--Teste de SELECT no banco de dados apos iserção do arquivo DML baixado.

SELECT numero,nome,ativo FROM banco;
SELECT banco_numero, numero, nome FROM agencia;
SELECT numero,nome,email FROM cliente;
SELECT id,nome FROM tipo_transacao;
SELECT banco_numero, agencia_numero, numero, cliente_numero FROM conta_corrente;
SELECT banco_numero,agencia_numero,cliente_numero FROM cliente_transacoes;

SELECT * FROM cliente_transacoes; --Nunca utilizar o comando SELECT com '*' pois seeciona tudo e gera maior uso de recursos do banco de dados