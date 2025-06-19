/*
Uma consulta no banco de dados que retorne as informações básicas dos clientes 
nome, sobrenome e telefonejuntamente com o número do pedido e o identificador 
do livro associado. A consulta deve considerarsomente os clientes que tenham 
realizado algum pedido, relacionando as tabelas de pessoas e pedidos por meio
do identificador da pessoa. 
O objetivo é obter um conjunto de dados que permita acompanhar quais clientes 
fizeram pedidos e quais livros foram comprados.
*/

SELECT 
    ps.nome,
    ps.sobrenome,
    ps.telefone,
    p.num_pedido,
    p.id_livro
FROM pessoas AS ps
LEFT JOIN pedidos AS p
	ON ps.id_pessoa = p.id_pessoa
WHERE p.num_pedido IS NOT NULL;

-- Consulta para listar o nome, sobrenome e telefone das pessoas
-- junto com o número do pedido e o ID do livro correspondente.
-- objetivo garantir que todas as pessoas sejam consideradas,
-- mas filtra apenas aqueles que possuem um pedido válido (num_pedido não nulo).
