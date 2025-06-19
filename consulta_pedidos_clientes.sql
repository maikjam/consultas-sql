--  Nome e sobre nome e tefone da pessoa, e  numero de pedido de cada um

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