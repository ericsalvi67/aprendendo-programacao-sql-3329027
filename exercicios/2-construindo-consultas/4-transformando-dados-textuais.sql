-- Crie uma consulta que retorne as colunas CustomerId, FirstName, LastName e Address das pessoas consumidoras brasileiras x
-- Na consulta anterior, converta o sobrenome para letras maiúsculas x
-- Na consulta anterior, converta o nome para letras minúsculas x
-- Na consulta anterior, adicione uma coluna cujos os dados seja o resultado da concatenação das colunas de nome e sobrenome
-- Na consulta anterior, substitua "Av." por "Avenida" na coluna endereço
-- Na consulta anterior, utilize o símbolo de coringa para construir padrões textuais

SELECT 
Customerid as ID,
LOWER(FirstName) as NOME,
UPPER(LastName) as SOBRENOME,
FirstName ||' '|| LastName as NOME_COMPLETO,
REPLACE (Address, 'Av.', 'Avenida') as ENDEREÇO

FROM customers
WHERE Country LIKE 'Br%';