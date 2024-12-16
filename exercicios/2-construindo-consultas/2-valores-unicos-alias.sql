-- Para a tabela "customers" crie uma consulta que retorne apenas os valores únicos da coluna Country
-- Na consulta anterior, adicione a coluna Company para verificar as combinações únicas entre empresas e países
-- Nesta mesma consulta, atribua um alias com título em português para cada coluna

SELECT DISTINCT Company AS EMPRESA,
Country AS PAIS
FROM customers
WHERE NOT Company is NULL;
