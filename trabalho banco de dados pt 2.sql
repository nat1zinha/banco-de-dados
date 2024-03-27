
INSERT INTO clientes (nome, endereço, email, celular, data_de_nascimento) VALUES
('Natalia Costa', 'Rua N, 123', 'nanaz2007@gmail.com', '9999-8888', '1990-05-15'),
('Maria Santos', 'Av. V, 456', 'maria@gmail.com', '9876-5432', '1985-10-20'),
('Pedro Oliveira', 'Rua C, 789', 'pedro@gmail.com', '8765-4321', '1988-03-25'),
('Ana Souza', 'Rua D, 321', 'ana@gmail.com', '7654-3210', '1995-12-10'),
('Carlos Lima', 'Av. E, 654', 'carlos@gmail.com', '6543-2109', '1979-08-05'),
('Mariana Costa', 'Rua Z, 987', 'marianagmail@.com', '5432-1098', '1992-07-30'),
('Lucas Pereira', 'Av. G, 210', 'lucas@.gmailcom', '4321-0987', '1983-02-14'),
('Fernanda Santos', 'Rua H, 567', 'fernanda@gmail.com', '3210-9876', '1976-09-28'),
('Gabriel Oliveira', 'Av. P, 843', 'gabriel@gmail.com', '2109-8765', '1998-11-03'),
('Amanda Silva', 'Rua M, 732', 'amanda@gmail.com', '1098-7654', '1980-04-18');

INSERT INTO produtos (nome, preço, descrição, quantidade_em_estoque)
VALUES
('Produto 1', 29.99, 'Descrição do Produto 1', 50),
('Produto 2', 49.99, 'Descrição do Produto 2', 100),
('Produto 3', 19.99, 'Descrição do Produto 3', 75),
('Produto 4', 39.99, 'Descrição do Produto 4', 60),
('Produto 5', 59.99, 'Descrição do Produto 5', 80),
('Produto 6', 69.99, 'Descrição do Produto 6', 90),
('Produto 7', 79.99, 'Descrição do Produto 7', 70),
('Produto 8', 89.99, 'Descrição do Produto 8', 55),
('Produto 9', 99.99, 'Descrição do Produto 9', 65),
('Produto 10', 109.99, 'Descrição do Produto 10', 85);

INSERT INTO pedidos (id_cliente, numero_do_pedido, data_de_compra, valor_total, data_estimada_de_entrega)
VALUES
(1, 'PED123450', '2024-03-27', 149.97, '2024-05-05'),
(2, 'PED123451', '2024-03-28', 99.98, '2024-05-07'),
(3, 'PED123452', '2024-03-28', 239.95, '2024-05-09'),
(4, 'PED123453', '2024-03-29', 179.97, '2024-05-11'),
(5, 'PED123464', '2024-03-29', 119.97, '2024-05-13'),
(6, 'PED123465', '2024-03-30', 69.99, '2024-05-15'),
(7, 'PED123466', '2024-03-30', 129.98, '2024-05-17'),
(8, 'PED123467', '2024-03-31', 399.92, '2024-05-19'),
(9, 'PED123468', '2024-03-31', 149.97, '2024-05-22'),
(10, 'PED123469', '2024-04-01', 219.96, '2024-05-24');

INSERT INTO itens_do_pedido (id_pedido, id_produto, quantidade, valor_unitário, valor_total)
VALUES
(1, 1, 3, 29.99, 89.97),
(1, 3, 2, 19.99, 39.98),
(2, 2, 1, 49.99, 49.99),
(3, 4, 2, 39.99, 79.98),
(3, 5, 1, 59.99, 59.99),
(4, 6, 1, 69.99, 69.99),
(4, 7, 2, 79.99, 159.98),
(5, 8, 3, 89.99, 269.97),
(6, 9, 1, 99.99, 99.99),
(7, 10, 3, 109.99, 329.97);

-- Atualizar o celular do cliente com id 3
UPDATE Clientes
SET celular = '987654321'
WHERE id_cliente = 3;

-- Atualizar o preço do produto com id 1
UPDATE Produtos
SET preco = 34.99
WHERE id_produto = 1;

-- Atualizar a quantidade em estoque do produto com id 5
UPDATE Produtos
SET quantidade_estoque = 20
WHERE id_produto = 5;

-- Atualizar o valor total do pedido com id 9
UPDATE Pedidos
SET valor_total = 119.97
WHERE id_pedido = 9;

-- Excluir o cliente com id 10
DELETE FROM Clientes
WHERE id_cliente = 10;

-- Excluir o produto com id 9
DELETE FROM Produtos
WHERE id_produto = 1;