CREATE DATABASE IF NOT EXISTS TDE3;


USE TDE3;


CREATE TABLE IF NOT EXISTS clientes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    email VARCHAR(100),
    telefone VARCHAR(15),
    saldo DECIMAL(10, 2),  
    data_cadastro DATE
);


CREATE TABLE IF NOT EXISTS pedidos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    cliente_id INT,
    produto VARCHAR(100),
    preco DECIMAL(10, 2),
    quantidade INT,
    data_pedido DATE,
    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);


INSERT INTO clientes (nome, email, telefone, saldo, data_cadastro) VALUES 
('Ana Silva', 'ana.silva@example.com', '11987654321', 200.00, CURDATE()),
('Ana Silva', 'ana.silva@example.com', '11987654321', 300.00, CURDATE()),
('Ana Silva', 'ana.silva@example.com', '11987654321', 400.00, CURDATE()),
('Ana Silva', 'ana.silva@example.com', '11987654321', 150.00, CURDATE()),
('Ana Silva', 'ana.silva@example.com', '11987654321', 500.00, CURDATE()),
('Bruno Santos', 'bruno.santos@example.com', '21987654321', 350.00, CURDATE()),
('Bruno Santos', 'bruno.santos@example.com', '21987654321', 300.00, CURDATE()),
('Bruno Santos', 'bruno.santos@example.com', '21987654321', 400.00, CURDATE()),
('Bruno Santos', 'bruno.santos@example.com', '21987654321', 250.00, CURDATE()),
('Bruno Santos', 'bruno.santos@example.com', '21987654321', 450.00, CURDATE()),
('Carla Oliveira', 'carla.oliveira@example.com', '31987654321', 400.00, CURDATE()),
('Carla Oliveira', 'carla.oliveira@example.com', '31987654321', 450.00, CURDATE()),
('Carla Oliveira', 'carla.oliveira@example.com', '31987654321', 500.00, CURDATE()),
('Carla Oliveira', 'carla.oliveira@example.com', '31987654321', 550.00, CURDATE()),
('Carla Oliveira', 'carla.oliveira@example.com', '31987654321', 600.00, CURDATE()),
('Diego Costa', 'diego.costa@example.com', '41987654321', 150.00, CURDATE()),
('Diego Costa', 'diego.costa@example.com', '41987654321', 200.00, CURDATE()),
('Diego Costa', 'diego.costa@example.com', '41987654321', 250.00, CURDATE()),
('Diego Costa', 'diego.costa@example.com', '41987654321', 300.00, CURDATE()),
('Diego Costa', 'diego.costa@example.com', '41987654321', 350.00, CURDATE()),
('Elena Martins', 'elena.martins@example.com', '51987654321', 600.00, CURDATE()),
('Elena Martins', 'elena.martins@example.com', '51987654321', 650.00, CURDATE()),
('Elena Martins', 'elena.martins@example.com', '51987654321', 700.00, CURDATE()),
('Elena Martins', 'elena.martins@example.com', '51987654321', 750.00, CURDATE()),
('Elena Martins', 'elena.martins@example.com', '51987654321', 800.00, CURDATE()),
('Fábio Pereira', 'fabio.pereira@example.com', '61987654321', 300.00, CURDATE()),
('Fábio Pereira', 'fabio.pereira@example.com', '61987654321', 350.00, CURDATE()),
('Fábio Pereira', 'fabio.pereira@example.com', '61987654321', 400.00, CURDATE()),
('Fábio Pereira', 'fabio.pereira@example.com', '61987654321', 450.00, CURDATE()),
('Fábio Pereira', 'fabio.pereira@example.com', '61987654321', 500.00, CURDATE()),
('Gabriela Almeida', 'gabriela.almeida@example.com', '71987654321', 500.00, CURDATE()),
('Gabriela Almeida', 'gabriela.almeida@example.com', '71987654321', 550.00, CURDATE()),
('Gabriela Almeida', 'gabriela.almeida@example.com', '71987654321', 600.00, CURDATE()),
('Gabriela Almeida', 'gabriela.almeida@example.com', '71987654321', 650.00, CURDATE()),
('Gabriela Almeida', 'gabriela.almeida@example.com', '71987654321', 700.00, CURDATE()),
('Hugo Mendes', 'hugo.mendes@example.com', '81987654321', 250.00, CURDATE()),
('Hugo Mendes', 'hugo.mendes@example.com', '81987654321', 300.00, CURDATE()),
('Hugo Mendes', 'hugo.mendes@example.com', '81987654321', 350.00, CURDATE()),
('Hugo Mendes', 'hugo.mendes@example.com', '81987654321', 400.00, CURDATE()),
('Hugo Mendes', 'hugo.mendes@example.com', '81987654321', 450.00, CURDATE());




INSERT INTO pedidos (cliente_id, produto, preco, quantidade, data_pedido) VALUES
(1, 'Smartphone X', 1500.00, 1, CURDATE()),
(1, 'Notebook Gamer', 4500.00, 1, CURDATE()),
(1, 'Fone de Ouvido Bluetooth', 350.00, 2, CURDATE()),
(1, 'Câmera Digital', 1200.00, 1, CURDATE()),
(1, 'Smartwatch', 800.00, 1, CURDATE()),

(2, 'Tênis de Corrida', 250.00, 2, CURDATE()),
(2, 'PlayStation 5', 2500.00, 1, CURDATE()),
(2, 'Cadeira Gamer', 700.00, 1, CURDATE()),
(2, 'Monitor 27"', 1300.00, 1, CURDATE()),
(2, 'Teclado Mecânico', 400.00, 1, CURDATE()),

(3, 'Mouse Gamer', 200.00, 1, CURDATE()),
(3, 'Caixa de Som Bluetooth', 350.00, 1, CURDATE()),
(3, 'Cadeira de Escritório', 600.00, 1, CURDATE()),
(3, 'Geladeira Frost Free', 3500.00, 1, CURDATE()),
(3, 'Fogão 5 Bocas', 1500.00, 1, CURDATE()),

(4, 'Máquina de Lavar Roupa', 2200.00, 1, CURDATE()),
(4, 'Ar Condicionado 12000 BTUs', 2000.00, 1, CURDATE()),
(4, 'Aspirador de Pó', 500.00, 1, CURDATE()),
(4, 'Cafeteira Expresso', 450.00, 1, CURDATE()),
(4, 'Smart TV 55"', 3000.00, 1, CURDATE()),

(5, 'Notebook Ultra Fino', 3200.00, 1, CURDATE()),
(5, 'Impressora Multifuncional', 800.00, 1, CURDATE()),
(5, 'HD Externo 2TB', 500.00, 1, CURDATE()),
(5, 'Roteador Wi-Fi', 250.00, 1, CURDATE()),
(5, 'SSD 1TB', 600.00, 1, CURDATE()),

(6, 'Cafeteira Elétrica', 150.00, 1, CURDATE()),
(6, 'Liquidificador', 200.00, 1, CURDATE()),
(6, 'Batedeira', 300.00, 1, CURDATE()),
(6, 'Ferro de Passar', 180.00, 1, CURDATE()),
(6, 'Micro-ondas', 600.00, 1, CURDATE()),

(7, 'Teclado Ergonômico', 250.00, 1, CURDATE()),
(7, 'Mouse Sem Fio', 120.00, 1, CURDATE()),
(7, 'Câmera Web', 150.00, 1, CURDATE()),
(7, 'Headset Gamer', 300.00, 1, CURDATE()),
(7, 'Suporte para Monitor', 100.00, 1, CURDATE()),

(8, 'Console de Videogame', 2500.00, 1, CURDATE()),
(8, 'Jogo de Videogame', 200.00, 3, CURDATE()),
(8, 'Assinatura de Streaming', 50.00, 12, CURDATE()),
(8, 'Fones de Ouvido', 300.00, 1, CURDATE()),
(8, 'Capa para Console', 50.00, 1, CURDATE()),

(9, 'Bicicleta', 800.00, 1, CURDATE()),
(9, 'Patinete Elétrico', 1200.00, 1, CURDATE()),
(9, 'Equipamento de Ginástica', 1000.00, 1, CURDATE()),
(9, 'Tênis de Caminhada', 250.00, 1, CURDATE()),
(9, 'Mala de Viagem', 400.00, 1, CURDATE()),

(10, 'Roupas de Inverno', 600.00, 1, CURDATE()),
(10, 'Acessórios de Moda', 300.00, 1, CURDATE()),
(10, 'Perfume', 150.00, 1, CURDATE()),
(10, 'Cosméticos', 200.00, 1, CURDATE()),
(10, 'Relógio de Pulso', 500.00, 1, CURDATE());


SELECT * FROM pedidos WHERE cliente_id = 2;

SELECT clientes.nome, pedidos.produto, pedidos.preco
FROM clientes
JOIN pedidos ON clientes.id = pedidos.cliente_id;


CREATE USER 'admin'@'localhost' IDENTIFIED BY '1234';
CREATE USER 'vendedor'@'localhost' IDENTIFIED BY '1234';
CREATE USER 'consulta'@'localhost' IDENTIFIED BY '1234';


GRANT ALL PRIVILEGES ON TDE3.clientes TO 'admin'@'localhost';
GRANT ALL PRIVILEGES ON TDE3.pedidos TO 'admin'@'localhost';

GRANT SELECT, INSERT ON TDE3.clientes TO 'vendedor'@'localhost';
GRANT SELECT, INSERT ON TDE3.pedidos TO 'vendedor'@'localhost';

GRANT SELECT ON TDE3.clientes TO 'consulta'@'localhost';
GRANT SELECT ON TDE3.pedidos TO 'consulta'@'localhost';


REVOKE SELECT, INSERT ON TDE3.clientes FROM 'vendedor'@'localhost';


FLUSH PRIVILEGES;


START TRANSACTION;

SAVEPOINT ponto1;


INSERT INTO pedidos (cliente_id, produto, preco, quantidade, data_pedido) VALUES (1, 'Produto Y', 150, 1, CURDATE());


UPDATE clientes SET saldo = saldo - 150 WHERE id = 1;


COMMIT;







