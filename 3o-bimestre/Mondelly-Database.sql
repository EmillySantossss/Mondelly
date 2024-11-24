CREATE DATABASE Mondelly;
USE Mondelly;

CREATE TABLE Cadastro (
    id_cadastro INT AUTO_INCREMENT PRIMARY KEY,  
    email VARCHAR(255) NOT NULL UNIQUE,         
    senha VARCHAR(255) NOT NULL,               
    nome VARCHAR(255) NOT NULL,                
    data_nascimento VARCHAR(10),  
    cpf VARCHAR(11) UNIQUE,                    
    rg VARCHAR(20),                           
    sexo CHAR(1),                             
    cep VARCHAR(8),                          
    endereco VARCHAR(255),                  
    bairro VARCHAR(100),                        
    cidade VARCHAR(100),                       
    telefone VARCHAR(15)
);

CREATE TABLE Estilistas (
    id_estilista INT AUTO_INCREMENT PRIMARY KEY,
    id_cadastro INT,
    data_inicio VARCHAR(10) NOT NULL, 
    FOREIGN KEY (id_cadastro) REFERENCES Cadastro(id_cadastro)
);

CREATE TABLE Galeria (
    id_imagem INT AUTO_INCREMENT PRIMARY KEY,
    id_estilista INT,                            
    id_usuario INT,                           
    descricao TEXT,                              
    FOREIGN KEY (id_estilista) REFERENCES Estilistas(id_estilista)
);

CREATE TABLE Usuarios (
    nome VARCHAR(255) NOT NULL,
    biografia TEXT,                           
    id_imagem INT,                            
    FOREIGN KEY (id_imagem) REFERENCES Galeria(id_imagem)  
);

CREATE TABLE Produtos (
    id_produto INT AUTO_INCREMENT PRIMARY KEY, 
    nome VARCHAR(255) NOT NULL,               
    descricao TEXT,                         
    preco DECIMAL(10, 2) NOT NULL,           
    id_estilista INT,  
    FOREIGN KEY (id_estilista) REFERENCES Estilistas(id_estilista)
);

CREATE TABLE Favoritos (
    id_favorito INT AUTO_INCREMENT PRIMARY KEY,  
    id_cadastro INT NOT NULL,                     
    id_produto INT NOT NULL,                     
    data_adicionado VARCHAR(10),  
    FOREIGN KEY (id_cadastro) REFERENCES Cadastro(id_cadastro),   
    FOREIGN KEY (id_produto) REFERENCES Produtos(id_produto)     
);

CREATE TABLE Contas_Bancarias (
    id_conta INT AUTO_INCREMENT PRIMARY KEY,    
    id_cadastro INT,                             
    numero_conta VARCHAR(20) NOT NULL,          
    agencia VARCHAR(10) NOT NULL,               
    banco VARCHAR(50),                        
    cvv VARCHAR(3),                           
    FOREIGN KEY (id_cadastro) REFERENCES Cadastro(id_cadastro) 
);

CREATE TABLE Carrinho (
    id INT AUTO_INCREMENT PRIMARY KEY,       
    id_produto INT NOT NULL,                  
    quantidade INT,               
    FOREIGN KEY (id_produto) REFERENCES Produtos(id_produto)
);

CREATE TABLE Pedidos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_cadastro INT,  
    data_pedido VARCHAR(10),  
    valor_total DECIMAL(10, 2),
    forma_pagamento VARCHAR(50) NOT NULL,
    FOREIGN KEY (id_cadastro) REFERENCES Cadastro(id_cadastro)  
);

CREATE TABLE Eventos (
    id_evento INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,              
    descricao TEXT,                       
    data_hora VARCHAR(20) NOT NULL,  
    localizacao VARCHAR(255),                 
    tipo_evento VARCHAR(50) NOT NULL,       
    vagas INT,                             
    tema VARCHAR(255)                         
);

CREATE TABLE Agendamentos (
    id_agendamento INT AUTO_INCREMENT PRIMARY KEY, 
    id_evento INT,                              
    id_cadastro INT NOT NULL,                     
    data_agendamento VARCHAR(10) NOT NULL,  
    quantidade_assessoria INT,          
    FOREIGN KEY (id_evento) REFERENCES Eventos(id_evento),
    FOREIGN KEY (id_cadastro) REFERENCES Cadastro(id_cadastro)
);
