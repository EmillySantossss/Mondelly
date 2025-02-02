SELECT * FROM Cadastro;

SELECT Estilistas.*, Cadastro.nome, Cadastro.email FROM Estilistas
JOIN Cadastro ON Estilistas.id_cadastro = Cadastro.id_cadastro;


SELECT Produtos.*, Estilistas.data_inicio FROM Produtos
JOIN Estilistas ON Produtos.id_estilista = Estilistas.id_estilista;


SELECT Galeria.*, Estilistas.data_inicio, Cadastro.nome FROM Galeria
JOIN Estilistas ON Galeria.id_estilista = Estilistas.id_estilista
JOIN Cadastro ON Galeria.id_usuario = Cadastro.id_cadastro;


SELECT Favoritos.*, Cadastro.nome, Produtos.nome AS produto_nome FROM Favoritos
JOIN Cadastro ON Favoritos.id_cadastro = Cadastro.id_cadastro
JOIN Produtos ON Favoritos.id_produto = Produtos.id_produto;

SELECT Contas_Bancarias.*, Cadastro.nome, Cadastro.email FROM Contas_Bancarias
JOIN Cadastro ON Contas_Bancarias.id_cadastro = Cadastro.id_cadastro;


SELECT Carrinho.*, Produtos.nome, Produtos.preco FROM Carrinho
JOIN Produtos ON Carrinho.id_produto = Produtos.id_produto;


SELECT Pedidos.*, Cadastro.nome, Cadastro.email FROM Pedidos
JOIN Cadastro ON Pedidos.id_cadastro = Cadastro.id_cadastro;


SELECT * FROM Eventos;

SELECT Agendamentos.*, Eventos.nome AS evento_nome, Cadastro.nome FROM Agendamentos
JOIN Eventos ON Agendamentos.id_evento = Eventos.id_evento
JOIN Cadastro ON Agendamentos.id_cadastro = Cadastro.id_cadastro;


SELECT Estilistas.*, COUNT(Produtos.id_produto) AS total_produtos FROM Estilistas
LEFT JOIN Produtos ON Estilistas.id_estilista = Produtos.id_estilista
GROUP BY Estilistas.id_estilista;

-- Selecionando clientes com quantidade de pedidos
SELECT Cadastro.*, COUNT(Pedidos.id) AS total_pedidos FROM Cadastro
LEFT JOIN Pedidos ON Cadastro.id_cadastro = Pedidos.id_cadastro
GROUP BY Cadastro.id_cadastro;

-- Selecionando eventos com quantidade de agendamentos
SELECT Eventos.*, COUNT(Agendamentos.id_agendamento) AS total_agendamentos FROM Eventos
LEFT JOIN Agendamentos ON Eventos.id_evento = Agendamentos.id_evento
GROUP BY Eventos.id_evento;

SELECT Produtos.*, COUNT(Favoritos.id_favorito) AS total_favoritos FROM Produtos
LEFT JOIN Favoritos ON Produtos.id_produto = Favoritos.id_produto
GROUP BY Produtos.id_produto
ORDER BY total_favoritos DESC;

SELECT Cadastro.*, Contas_Bancarias.banco FROM Cadastro
LEFT JOIN Contas_Bancarias ON Cadastro.id_cadastro = Contas_Bancarias.id_cadastro;

SELECT DISTINCT Estilistas.*, Cadastro.nome AS cliente FROM Estilistas
JOIN Produtos ON Estilistas.id_estilista = Produtos.id_estilista
JOIN Favoritos ON Produtos.id_produto = Favoritos.id_produto
JOIN Cadastro ON Favoritos.id_cadastro = Cadastro.id_cadastro;


SELECT Produtos.*, COUNT(Carrinho.id) AS total_compras FROM Produtos
LEFT JOIN Carrinho ON Produtos.id_produto = Carrinho.id_produto
GROUP BY Produtos.id_produto
ORDER BY total_compras DESC;

-- Selecionando estilistas que mais venderam
SELECT Estilistas.*, SUM(Pedidos.valor_total) AS total_vendas FROM Estilistas
JOIN Produtos ON Estilistas.id_estilista = Produtos.id_estilista
JOIN Carrinho ON Produtos.id_produto = Carrinho.id_produto
JOIN Pedidos ON Carrinho.id_produto = Pedidos.id_cadastro
GROUP BY Estilistas.id_estilista
ORDER BY total_vendas DESC;


SELECT Cadastro.*, SUM(Pedidos.valor_total) AS total_gasto FROM Cadastro
JOIN Pedidos ON Cadastro.id_cadastro = Pedidos.id_cadastro
GROUP BY Cadastro.id_cadastro
ORDER BY total_gasto DESC;

SELECT * FROM Eventos WHERE data_hora > NOW();


SELECT Agendamentos.*, Eventos.nome AS evento_nome FROM Agendamentos
JOIN Eventos ON Agendamentos.id_evento = Eventos.id_evento
ORDER BY Agendamentos.data_agendamento DESC;


SELECT * FROM Produtos WHERE preco BETWEEN 100 AND 200;
