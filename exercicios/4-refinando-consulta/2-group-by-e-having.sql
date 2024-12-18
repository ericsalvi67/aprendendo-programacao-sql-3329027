-- Crie uma consulta usando as tabelas "invoices" e "customers" cujo o resultado seja o total de gastos por cliente
-- Na consulta anterior, insira um filtro para que apresente apenas os clientes que gastaram mais de R$30
-- Na consulta anterior, insira uma coluna que informe a compra de maior valor feita por cada cliente

SELECT
cus.customerid as ID,
(cus.firstname || ' ' || cus.LastName) as NOME,
SUM(inv.total) as TOTAL,
COUNT(inv.total) as N_COMPRAS
FROM 
invoices as INV
INNER JOIN customers as CUS on inv.customerid = cus.customerid
GROUP BY ID
HAVING SUM(inv.total) >= 30;
