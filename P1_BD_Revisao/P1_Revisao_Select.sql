-- Revisão para a P1 - DML (Data Manipulation Language)
-- SELECT, Subconsultas, GROUP BY e HAVING 

-- Exibir todos os dados de uma tabela
SELECT * FROM nome_tabela;

-- Exibir os dados de colunas específicas
SELECT nome FROM nome_tabela;

-- AS - Colocar um apelido para uma coluna
SELECT nome AS Nome_Funcionario FROM nome_tabela;

-- ORDER BY - Ordenar os registros, na consulta
SELECT nome AS Nome_Empregado FROM nome_tabela
ORDER BY nome;

--  ASC - Ordenar de forma ascendente
SELECT salario AS Salario_Empregado FROM nome_tabela
ORDER BY nome ASC;

-- DESC - Ordenar de forma descendente
SELECT salario AS Salario_Empregado FROM nome_tabela
ORDER BY nome DESC;


-- Funções de agregação

-- COUNT - Contar uma quantidade de registros
SELECT COUNT(*) AS Quant_Empregados FROM nome_tabela;

-- SUM - Somar todos os valores de uma coluna
SELECT SUM(salario) AS Soma_dos_Salarios FROM nome_tabela;

-- AVG - Média
SELECT AVG(salario) FROM nome_tabela;

-- MIN - Menor valor
SELECT MIN(salario) FROM nome_tabela;

-- MAX - Maior valor
SELECT MAX(salario) FROM nome_tabela;

-- DISTINCT - Valores distintos (sem repetição)
SELECT DISTINCT(salario) FROM nome_tabela;

-- ISNULL - Substituir um valor nulo, por algum valor
SELECT ISNULL(salario, 0) AS Salario FROM nome_tabela;


-- Operadores IS NULL, IS NOT NULL e IN
-- Exemplos:

-- IS NULL - Verifica se o valor é nulo
SELECT nome, salario FROM nome_tabela
WHERE salario IS NULL;

-- IS NOT NULL - Verifica se o valor não é nulo
SELECT nome, salario FROM nome_tabela
WHERE salario IS NOT NULL;

-- IN - Reúne um conjunto de valores, para faciltar a consulta
SELECT nome, salario FROM nome_tabela
WHERE salario IN (1000, 2000, 3000);


-- Subconsultas - São consultas, que ficam dentro de outras consultas.
-- Exemplos:

-- Empregados, com sálarios maiores, do que a média salarial de todos os empregados
SELECT nome, salario FROM empregado
WHERE salario > (SELECT AVG(salario) FROM empregado);


-- Funções de Agrupamento

-- GROUP BY - Ele agrupa um conjunto de registros e ajuda a fazer consultas mais precisas
-- Exemplo:

-- Empregados, com sálarios maiores, do que a média salarial do seu departamento, 
-- separados por departamento.
SELECT nome, salario FROM empregado
WHERE salario > (SELECT AVG(salario) FROM empregado)
GROUP BY id_departamento;


-- O HAVING, é o "filtro" do GROUP BY e funciona quase igual ao WHERE.
-- Exemplo:

-- Funcionários, com sálarios maiores do que 2000 reais e que 
-- fazem parte dos departamentos, com os IDs 1 e 2
SELECT nome, salario FROM empregado
WHERE salario > 2000
GROUP BY id_departamento -- Agrupei pelo departamento
HAVING id_departamento IN (1, 2); -- Filtrei pelos IDs
