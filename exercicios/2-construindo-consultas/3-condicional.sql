-- Escreva uma consulta que retorne o nome por extenso dos estados brasileiros

SELECT DISTINCT 
country AS PAIS,
state AS SIGLA,

CASE
  WHEN state = 'SP' THEN 'SAO PAULO'
  WHEN state = 'RJ' THEN 'RIO DE JANEIRO'
  else 'ESTADO DESCONHECIDO'
END AS ESTADO

FROM customers
WHERE country LIKE 'Brazil';

