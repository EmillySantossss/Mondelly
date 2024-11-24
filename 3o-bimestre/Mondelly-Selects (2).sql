

SELECT 
    Estilistas.id_estilista,
    Cadastro.nome AS estilista_nome,
    Galeria.descricao AS colecao
FROM 
    Estilistas
JOIN 
    Cadastro ON Estilistas.id_cadastro = Cadastro.id_cadastro
JOIN 
    Galeria ON Estilistas.id_estilista = Galeria.id_estilista;




SELECT 
    Cadastro.nome AS usuario_nome,
    Produtos.nome AS produto_nome,
    Favoritos.data_adicionado
FROM 
    Favoritos
JOIN 
    Cadastro ON Favoritos.id_cadastro = Cadastro.id_cadastro
JOIN 
    Produtos ON Favoritos.id_produto = Produtos.id_produto;





SELECT 
    Cadastro.nome AS cliente_nome,
    COUNT(Pedidos.id) AS total_pedidos,
    SUM(Pedidos.valor_total) AS valor_total_gasto
FROM 
    Pedidos
JOIN 
    Cadastro ON Pedidos.id_cadastro = Cadastro.id_cadastro
GROUP BY 
    Cadastro.nome;




SELECT 
    Cadastro.nome AS cliente_nome,
    Eventos.nome AS evento_nome,
    Agendamentos.data_agendamento,
    Agendamentos.quantidade_assessoria
FROM 
    Agendamentos
JOIN 
    Cadastro ON Agendamentos.id_cadastro = Cadastro.id_cadastro
JOIN 
    Eventos ON Agendamentos.id_evento = Eventos.id_evento;




SELECT 
    Produtos.nome AS produto_nome,
    Carrinho.quantidade,
    Produtos.preco,
    (Carrinho.quantidade * Produtos.preco) AS valor_total
FROM 
    Carrinho
JOIN 
    Produtos ON Carrinho.id_produto = Produtos.id_produto;