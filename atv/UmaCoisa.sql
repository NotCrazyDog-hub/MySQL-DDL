CREATE DATABASE restaurantes;
USE restaurantes;
CREATE TABLE cliente (
	id INT PRIMARY KEY AUTO_INCREMENT ,
    nome TEXT NOT NULL,
	email VARCHAR(100),
    data_cadastro DATETIME
);
CREATE TABLE pedido (
	id_pedido INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    data_pedido DATETIME,
    valor_total DECIMAL,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id)
);

DROP TABLE pedido;