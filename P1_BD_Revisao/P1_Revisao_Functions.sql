-- Revisão para a P1 - DDL (Data Definition Language)
-- Função Escalar

-- Criar uma função
CREATE FUNCTION dbo.funcao(@nome varchar(50)) -- Essa função recebe um nome, como parâmetro
RETURNS varchar(50) -- Tipo de valor do retorno
AS
BEGIN -- Início
	-- Comandos da função
	RETURN @nome -- Comando para retornar o nome
END -- Fim

-- Chamar uma função
SELECT dbo.funcao('Jéssica');

-- Excluir uma função
DROP FUNCTION dbo.funcao;