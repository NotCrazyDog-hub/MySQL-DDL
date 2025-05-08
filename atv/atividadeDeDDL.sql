CREATE DATABASE um_restaurante;
USE um_restaurante;

CREATE TABLE clientes (
	id INT PRIMARY KEY,
    nome TEXT NOT NULL,
    email VARCHAR(100) UNIQUE,
    data_cadastro DATETIME
);

CREATE TABLE pedidos (
	id_pedidos INT PRIMARY KEY,
    cliente_id INT,
    data_pedido DATETIME,
    valor_total DECIMAL,
    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

ALTER TABLE clientes ADD COLUMN
telefone TEXT;

ALTER TABLE pedidos
MODIFY COLUMN valor_total DECIMAL(10,2);

ALTER TABLE pedidos 
RENAME COLUMN data_pedido TO data_p;

DROP TABLE pedidos;

TRUNCATE TABLE clientes;

CREATE TABLE produtos (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome TEXT,
    preco DECIMAL,
    CHECK (preco > 0)
);

RENAME TABLE clientes TO clientesAtivos;