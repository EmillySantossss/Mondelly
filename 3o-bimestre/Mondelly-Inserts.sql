SET FOREIGN_KEY_CHECKS=0;


INSERT INTO Cadastro (email, senha, nome, data_nascimento, cpf, rg, sexo, cep, endereco, bairro, cidade, telefone) VALUES
('joao@email.com', 'senha123', 'João Silva', '1990-05-15', '12345678901', 'MG1234567', 'M', '30140071', 'Rua das Flores, 123', 'Centro', 'Belo Horizonte', '31999999999'),
('maria@email.com', 'senha456', 'Maria Souza', '1985-10-20', '98765432100', 'SP7654321', 'F', '01010000', 'Avenida Paulista, 456', 'Bela Vista', 'São Paulo', '11988888888');


INSERT INTO Estilistas (id_cadastro, data_inicio) VALUES
(1, '2020-03-10'),
(2, '2019-08-25');


INSERT INTO Produtos (nome, descricao, preco, id_estilista) VALUES
('Vestido Floral', 'Vestido longo com estampa floral.', 199.90, 1),
('Camisa Social', 'Camisa social branca de algodão.', 129.90, 2);


INSERT INTO Galeria (id_estilista, id_usuario, descricao) VALUES
(1, 1, 'Coleção Primavera 2023'),
(2, 2, 'Vestidos de Gala 2024');


INSERT INTO Favoritos (id_cadastro, id_produto, data_adicionado) VALUES
(1, 1, '2024-01-10'),
(2, 2, '2024-01-12');


INSERT INTO Contas_Bancarias (id_cadastro, numero_conta, agencia, banco, cvv) VALUES
(1, '12345678', '0001', 'Banco do Brasil', '123'),
(2, '87654321', '0002', 'Itaú', '456');


INSERT INTO Carrinho (id_produto, quantidade) VALUES
(1, 2),
(2, 1);


INSERT INTO Pedidos (id_cadastro, data_pedido, valor_total, forma_pagamento) VALUES
(1, '2024-01-15', 399.80, 'Cartão de Crédito'),
(2, '2024-01-18', 129.90, 'Boleto Bancário');


INSERT INTO Eventos (nome, descricao, data_hora, localizacao, tipo_evento, vagas, tema) VALUES
('Desfile de Moda 2024', 'Evento de lançamento da nova coleção.', '2024-03-25 19:00', 'São Paulo Expo', 'Desfile', 200, 'Moda Contemporânea'),
('Workshop de Estilo', 'Aprenda sobre consultoria de imagem.', '2024-04-10 14:00', 'Centro Cultural', 'Workshop', 50, 'Imagem Pessoal');

INSERT INTO Agendamentos (id_evento, id_cadastro, data_agendamento, quantidade_assessoria) VALUES
(1, 1, '2024-03-01', 2),
(2, 2, '2024-04-05', 1);

SET FOREIGN_KEY_CHECKS=1;
