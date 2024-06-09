-- Criar tabela de modelos de celular
CREATE TABLE modelos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    marca VARCHAR(50),
    preco DECIMAL(10,2),
    caracteristicas TEXT
);

-- Preencher tabela de modelos com dados fictícios
INSERT INTO modelos (nome, marca, preco, caracteristicas) VALUES
('Modelo 1', 'Marca A', 999.99, 'Características do Modelo 1'),
('Modelo 2', 'Marca B', 799.99, 'Características do Modelo 2'),
('Modelo 3', 'Marca C', 649.99, 'Características do Modelo 3'),
('Modelo 4', 'Marca D', 899.99, 'Características do Modelo 4'),
('Modelo 5', 'Marca E', 749.99, 'Características do Modelo 5'),
('Modelo 6', 'Marca F', 1099.99, 'Características do Modelo 6'),
('Modelo 7', 'Marca G', 1199.99, 'Características do Modelo 7'),
('Modelo 8', 'Marca H', 699.99, 'Características do Modelo 8'),
('Modelo 9', 'Marca I', 899.99, 'Características do Modelo 9'),
('Modelo 10', 'Marca J', 999.99, 'Características do Modelo 10'),
('Modelo 11', 'Marca K', 1099.99, 'Características do Modelo 11'),
('Modelo 12', 'Marca L', 899.99, 'Características do Modelo 12'),
('Modelo 13', 'Marca M', 799.99, 'Características do Modelo 13'),
('Modelo 14', 'Marca N', 1299.99, 'Características do Modelo 14'),
('Modelo 15', 'Marca O', 899.99, 'Características do Modelo 15');

-- Criar tabela de clientes
CREATE TABLE clientes (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100),
    bairro VARCHAR(100),
    idade INT,
    renda_mensal DECIMAL(10,2)
);

-- Preencher tabela de clientes com dados fictícios
INSERT INTO clientes (nome, email, bairro, idade, renda_mensal) VALUES
('Ana Silva', 'ana.silva@example.com', 'Copacabana', 30, 5000.00),
('João Santos', 'joao.santos@example.com', 'Tijuca', 35, 6000.00),
('Maria Oliveira', 'maria.oliveira@example.com', 'Barra da Tijuca', 28, 4500.00),
('Pedro Souza', 'pedro.souza@example.com', 'Botafogo', 40, 7000.00),
('Carla Pereira', 'carla.pereira@example.com', 'Ipanema', 25, 4000.00),
('Lucas Almeida', 'lucas.almeida@example.com', 'Leblon', 32, 5500.00),
('Juliana Costa', 'juliana.costa@example.com', 'Jacarepaguá', 29, 4800.00),
('Fernando Lima', 'fernando.lima@example.com', 'Santa Teresa', 38, 6500.00),
('Camila Santos', 'camila.santos@example.com', 'Gávea', 27, 4700.00),
('Gustavo Pereira', 'gustavo.pereira@example.com', 'Laranjeiras', 33, 5800.00),
('José Silva', 'jose.silva@example.com', 'Botafogo', 33, 6000.00),
('Ana Oliveira', 'ana.oliveira@example.com', 'Leblon', 26, 5500.00),
('Mariana Santos', 'mariana.santos@example.com', 'Barra da Tijuca', 31, 7000.00),
('Felipe Pereira', 'felipe.pereira@example.com', 'Ipanema', 29, 6500.00),
('Carlos Souza', 'carlos.souza@example.com', 'Copacabana', 36, 5800.00);

-- Criar tabela de vendedores
CREATE TABLE vendedores (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100)
);

-- Preencher tabela de vendedores com dados fictícios
INSERT INTO vendedores (nome) VALUES
('Vendedor 1'),
('Vendedor 2'),
('Vendedor 3'),
('Vendedor 4'),
('Vendedor 5'),
('Vendedor 6');

-- Criar tabela de compras
CREATE TABLE compras (
    id SERIAL PRIMARY KEY,
    cliente_id INT,
    modelo_id INT,
    vendedor_id INT,
    forma_pagamento VARCHAR(10),
    data_compra DATE,
    FOREIGN KEY (cliente_id) REFERENCES clientes(id),
    FOREIGN KEY (modelo_id) REFERENCES modelos(id),
    FOREIGN KEY (vendedor_id) REFERENCES vendedores(id)
);

-- Inserir dados manualmente na tabela de compras com 60 linhas
INSERT INTO compras (cliente_id, modelo_id, vendedor_id, forma_pagamento, data_compra) VALUES
(1, 1, 3, 'Crédito', '2024-05-01'),
(2, 3, 1, 'Dinheiro', '2024-05-02'),
(3, 5, 3, 'Débito', '2024-05-03'),
(4, 7, 3, 'Dinheiro', '2024-05-04'),
(5, 9, 2, 'Crédito', '2024-05-05'),
(6, 2, 3, 'Débito', '2024-05-06'),
(7, 4, 3, 'Crédito', '2024-05-07'),
(8, 6, 2, 'Dinheiro', '2024-05-08'),
(9, 8, 3, 'Crédito', '2024-05-09'),
(10, 10, 3, 'Débito', '2024-05-10'),
(1, 2, 1, 'Crédito', '2024-05-11'),
(2, 4, 3, 'Dinheiro', '2024-05-12'),
(3, 6, 3, 'Débito', '2024-05-13'),
(4, 8, 2, 'Dinheiro', '2024-05-14'),
(5, 10, 3, 'Crédito', '2024-05-15'),
(6, 1, 3, 'Débito', '2024-05-16'),
(7, 3, 1, 'Crédito', '2024-05-17'),
(8, 5, 2, 'Dinheiro', '2024-05-18'),
(9, 7, 3, 'Crédito', '2024-05-19'),
(10, 9, 1, 'Débito', '2024-05-20'),
(1, 10, 3, 'Crédito', '2024-05-21'),
(2, 9, 2, 'Dinheiro', '2024-05-22'),
(3, 8, 1, 'Débito', '2024-05-23'),
(4, 7, 3, 'Dinheiro', '2024-05-24'),
(5, 6, 3, 'Crédito', '2024-05-25'),
(6, 5, 2, 'Débito', '2024-05-26'),
(7, 4, 1, 'Crédito', '2024-05-27'),
(8, 3, 3, 'Dinheiro', '2024-05-28'),
(9, 2, 3, 'Crédito', '2024-05-29'),
(10, 1, 3, 'Débito', '2024-05-30'),
(2, 1, 1, 'Crédito', '2024-05-27'),
(3, 2, 2, 'Dinheiro', '2024-05-28'),
(4, 3, 3, 'Débito', '2024-05-29'),
(5, 4, 1, 'Crédito', '2024-05-30'),
(6, 5, 2, 'Dinheiro', '2024-06-01'),
(7, 6, 3, 'Débito', '2024-06-02'),
(8, 7, 1, 'Crédito', '2024-06-03'),
(9, 8, 2, 'Dinheiro', '2024-06-04'),
(10, 9, 3, 'Débito', '2024-06-05'),
(1, 10, 1, 'Crédito', '2024-06-06'),
(2, 11, 2, 'Dinheiro', '2024-06-07'),
(3, 12, 3, 'Débito', '2024-06-08'),
(4, 13, 1, 'Crédito', '2024-06-09'),
(5, 14, 2, 'Dinheiro', '2024-06-10'),
(6, 15, 3, 'Débito', '2024-06-11'),
(7, 1, 1, 'Crédito', '2024-06-12'),
(8, 2, 2, 'Dinheiro', '2024-06-13'),
(9, 3, 3, 'Débito', '2024-06-14'),
(10, 4, 1, 'Crédito', '2024-06-15'),
(1, 5, 2, 'Dinheiro', '2024-06-16'),
(2, 6, 3, 'Débito', '2024-06-17'),
(3, 7, 1, 'Crédito', '2024-06-18'),
(4, 8, 2, 'Dinheiro', '2024-06-19'),
(5, 9, 3, 'Débito', '2024-06-20'),
(6, 10, 1, 'Crédito', '2024-06-21'),
(7, 11, 2, 'Dinheiro', '2024-06-22'),
(8, 12, 3, 'Débito', '2024-06-23'),
(9, 13, 1, 'Crédito', '2024-06-24'),
(10, 14, 2, 'Dinheiro', '2024-06-25'),
(1, 15, 3, 'Débito', '2024-06-26');
