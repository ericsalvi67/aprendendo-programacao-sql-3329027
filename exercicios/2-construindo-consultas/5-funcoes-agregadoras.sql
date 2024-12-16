-- Para a tabela "invoices", crie uma consulta que retorne o país e a soma das compras realizadas nele, 
--bem como o valor da compra mínima e máxima, a quantidade de compras realizadas e o ticket médio de cada compra.

SELECT
BillingCountry,
count(total) as qnt_compras,
min(total) as menorvalor,
max(total) as maiorvalor,
round(avg(total),2) as MEDIA,
SUM(total) as TOTAL_PAIS


FROM invoices
WHERE BillingCountry LIKE 'AUSTRIA';