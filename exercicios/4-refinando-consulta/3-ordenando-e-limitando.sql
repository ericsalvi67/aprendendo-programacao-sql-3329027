-- Desenvolva uma consulta para a tabela "customers" que retorne apenas 10 linhas
-- Usando a consulta anterior, ordene a coluna "Country" de forma crescente e "FirstName" de forma decrescente
-- Continue usando a consulta anterior, dessa vez retorne 10 resultados, no entando ignore as 3 primeiras linhas

SELECT 
cus.CustomerId as ID,
(cus.FirstName || ' ' || cus.LastName) as NOME,
cus.Country as PAIS
FROM customers as CUS
ORDER BY PAIS ASC,
NOME DESC
LIMIT 10;