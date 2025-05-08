CREATE DATABASE loja;
USE loja;

CREATE TABLE vendas (
    id_venda INT PRIMARY KEY,
    cliente VARCHAR(100),
    cidade VARCHAR(100),
    produto VARCHAR(100),
    quantidade INT,
    preco_unitario DECIMAL(10,2),
    data_venda DATE
);

INSERT INTO vendas (id_venda, cliente, cidade, produto, quantidade, preco_unitario, data_venda) VALUES
(1, 'Ana', 'São Paulo', 'Camiseta', 2, 50.00, '2024-01-10'),
(2, 'Bruno', 'Rio de Janeiro', 'Calça', 1, 120.00, '2024-02-05'),
(3, 'Ana', 'São Paulo', 'Jaqueta', 1, 250.00, '2024-03-15'),
(4, 'Carla', 'Belo Horizonte', 'Camiseta', 3, 50.00, '2024-04-02'),
(5, 'Daniel', 'Fortaleza', 'Camiseta', 1, 50.00, '2024-04-20'),
(6, 'Bruno', 'Rio de Janeiro', 'Camiseta', 2, 50.00, '2024-05-01');

SELECT * FROM vendas;