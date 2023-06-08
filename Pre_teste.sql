CREATE DATABASE preteste;

CREATE TABLE Clientes(
	id  INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(150) NOT NULL,
    idade VARCHAR(10) NOT NULL,
    email VARCHAR(50) NOT NULL
);

INSERT INTO Clientes (id, nome, idade, email) VALUES(1, 'Luan', 40, 'luan1@gmail.com');
INSERT INTO Clientes (id, nome, idade, email) VALUES(2, 'Luan2', 40, 'luan2@gmail.com');
INSERT INTO Clientes (id, nome, idade, email) VALUES(3, 'Luan3', 40, 'luan3@gmail.com');
INSERT INTO Clientes (id, nome, idade, email) VALUES(4, 'Luan4', 40, 'luan4@gmail.com');
INSERT INTO Clientes (id, nome, idade, email) VALUES(5, 'Luan5', 40, 'luan5@gmail.com');

UPDATE Clientes
SET idade = '30'
WHERE id = 3;

DELETE FROM Clientes WHERE id = 5 ;

CREATE TABLE Pedidos(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    ClienteID INT NOT NULL,
    Produto VARCHAR(150) NOT NULL,
    Data DATE NOT NULL,
    FOREIGN KEY (ClienteID) REFERENCES Clientes (id)
);

INSERT INTO Pedidos (id, ClienteID, Produto, Data) VALUES(1, '1', 'Desinfetante', '2023-04-10');
INSERT INTO Pedidos (id, ClienteID, Produto, Data) VALUES(2, '2', 'Feijão', '2023-03-10');
INSERT INTO Pedidos (id, ClienteID, Produto, Data) VALUES(3, '3', 'Corda', '2023-02-10');

SELECT * FROM Pedidos WHERE ClienteID = 1;

SELECT Data FROM Pedidos WHERE Data >= DATE_SUB(NOW(), INTERVAL 30 DAY);

SELECT Clientes.id, Clientes.nome, Pedidos.ClienteID, Pedidos.Produto, Pedidos.Data
FROM Clientes
JOIN Pedidos
ON Clientes.id = Pedidos.ClienteID;

