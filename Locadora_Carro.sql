CREATE DATABASE carros;

CREATE TABLE marcas(
	id INT NOT NULL AUTO_INCREMENT,
    nome_marca VARCHAR(255) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE inventario(
	id INT NOT NULL AUTO_INCREMENT,
    modelo VARCHAR(255) NOT NULL,
    transmissao VARCHAR(255) NOT NULL,
    motor VARCHAR(255) NOT NULL,
    combustivel VARCHAR(255) NOT NULL,
    marcas_id INT NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(marcas_id) REFERENCES marcas(id)
);

CREATE TABLE clientes(
	id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    sobrenome VARCHAR(255) NOT NULL,
    endereco VARCHAR(255) NOT NULL,
    PRIMARY KEY(id)
);

INSERT INTO clientes(nome, sobrenome, endereco)
VALUES
	('Marcos','Souza','Rua do Coronel'),
    ('Maria','Fernanda','Rua da Flor Azul'),
    ('Filipe','Augusto','Rua da Majestade Francisco');
    
INSERT INTO marcas(nome_marca, origem)
VALUES
	('BMW','Alemanha'),
    ('Fiat','Alemanha'),
    ('Merceds-Benz','Alemanha'),
    ('Renault','Franca'),
    ('Jaguar','Inglaterra');
    
INSERT INTO inventario(modelo, transmissao, motor, combustivel, marcas_id)
VALUES
	('BMW 218', 'Automatica', '2.0', 'Gasolina',1),
    ('JAGUAR XJ', 'Manual', '2.0', 'Diesel',5);

