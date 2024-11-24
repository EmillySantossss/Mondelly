#INSERTS

INSERT INTO Cadastro (email, senha, nome, data_nascimento, cpf, rg, sexo, cep, endereco, bairro, cidade, telefone)
VALUES 
('cliente1@dominio.com', 'senha123', 'João Silva', '1990-05-15', '12345678901', '123456789', 'M', '12345678', 'Rua A, 123', 'Bairro A', 'Cidade A', '999999999'),
('cliente2@dominio.com', 'senha456', 'Maria Oliveira', '1992-08-20', '23456789012', '987654321', 'F', '23456789', 'Rua B, 456', 'Bairro B', 'Cidade B', '888888888');


INSERT INTO Estilistas (id_cadastro, data_inicio)
VALUES 
(1, '2021-03-15'),
(2, '2022-07-01');


INSERT INTO Galeria (id_estilista, id_usuario, descricao)
VALUES 
(1, 1, 'Coleção primavera-verão 2021'),
(2, 2, 'Coleção outono-inverno 2022');


INSERT INTO Usuarios (nome, biografia, id_imagem)
VALUES 
('Carlos Lima', 'Designer gráfico e amante da moda.', 1),
('Ana Costa', 'Blogueira de moda e consultora de estilo.', 2);


INSERT INTO Produtos (nome, descricao, preco, id_estilista)
VALUES 
('Vestido Floral', 'Vestido de flores para o verão.', 199.99, 1),
('Jaqueta de Couro', 'Jaqueta de couro para o inverno.', 399.99, 2);


INSERT INTO Favoritos (id_cadastro, id_produto, data_adicionado)
VALUES 
(1, 1, '2024-11-24'),
(2, 2, '2024-11-24');


INSERT INTO Contas_Bancarias (id_cadastro, numero_conta, agencia, banco, cvv)
VALUES 
(1, '1234567890', '1234', 'Banco A', '123'),
(2, '0987654321', '4321', 'Banco B', '456');

-- Inserir dados na tabela Carrinho
INSERT INTO Carrinho (id_produto, quantidade)
VALUES 
(1, 2),
(2, 1);

INSERT INTO Pedidos (id_cadastro, data_pedido, valor_total, forma_pagamento)
VALUES 
(1, '2024-11-24', 399.98, 'Cartão de Crédito'),
(2, '2024-11-25', 399.99, 'Boleto Bancário');


INSERT INTO Eventos (nome, descricao, data_hora, localizacao, tipo_evento, vagas, tema)
VALUES 
('Desfile de Moda Verão 2025', 'Evento de lançamento das coleções para o verão 2025.', '2025-01-15 19:00', 'São Paulo - SP', 'Desfile', 100, 'Verão 2025'),
('Workshop de Estilo', 'Workshop sobre tendências de moda para o outono 2025.', '2025-02-10 10:00', 'Rio de Janeiro - RJ', 'Workshop', 50, 'Outono 2025');


INSERT INTO Agendamentos (id_evento, id_cadastro, data_agendamento, quantidade_assessoria)
VALUES 
(1, 1, '2025-01-10', 2),
(2, 2, '2025-02-05', 1);
