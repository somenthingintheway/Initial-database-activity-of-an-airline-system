CREATE DATABASE SistemaDeViagens;
USE SistemaDeViagens;

CREATE TABLE cliente (
    idcliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    cpf VARCHAR(13) NOT NULL,
    numero VARCHAR(45),
    endereco VARCHAR(250)
);

CREATE TABLE compra (
    idcompra INT AUTO_INCREMENT PRIMARY KEY,
    data_compra DATE NOT NULL,
    valor VARCHAR(45) NOT NULL,
    status_compra VARCHAR(20),
    clienteid INT,
    FOREIGN KEY (clienteid) REFERENCES cliente(idcliente)
);

CREATE TABLE aeronaves (
    idavioes INT AUTO_INCREMENT PRIMARY KEY,
    numero_aviao VARCHAR(45),
    modelo VARCHAR(100)
);

CREATE TABLE viagem (
    idviagem INT AUTO_INCREMENT PRIMARY KEY,
    destino VARCHAR(90) NOT NULL,
    data_voo DATE NOT NULL,
    aeronaveid INT,
    FOREIGN KEY (aeronaveid) REFERENCES aeronaves(idavioes)
);

CREATE TABLE piloto (
    idpiloto INT AUTO_INCREMENT PRIMARY KEY,
    nome_piloto VARCHAR(150) NOT NULL,
    cpf_piloto VARCHAR(13) NOT NULL
);

CREATE TABLE compra_has_viagem (
    compra_idcompra INT,
    viagem_idviagem INT,
    PRIMARY KEY (compra_idcompra, viagem_idviagem),
    FOREIGN KEY (compra_idcompra) REFERENCES compra(idcompra),
    FOREIGN KEY (viagem_idviagem) REFERENCES viagem(idviagem)
);

CREATE TABLE piloto_has_viagem (
    piloto_idpiloto INT,
    viagem_idviagem INT,
    PRIMARY KEY (piloto_idpiloto, viagem_idviagem),
    FOREIGN KEY (piloto_idpiloto) REFERENCES piloto(idpiloto),
    FOREIGN KEY (viagem_idviagem) REFERENCES viagem(idviagem)
);

CREATE TABLE historico_voos (
    idhistorico_voos INT AUTO_INCREMENT PRIMARY KEY,
    data_historico DATE NOT NULL,
    operacao VARCHAR(45),
    descricao VARCHAR(250),
    viagemid INT,
    FOREIGN KEY (viagemid) REFERENCES viagem(idviagem)
);

INSERT INTO cliente (nome, cpf, numero, endereco) VALUES
('Carlos Silva', '12365478901', '81 98125-0819', 'Rua Alves de ancataras, 123'),
('Maria Oliveira', '98765432100', '82 99210-3217', 'Rua Barroso da silva, 456'),
('João Santos', '12361591899', '71 99012-8216', 'Rua Carlos tom jobim, 789'),
('Ana Costa', '45691209188', '22 98217-0129', 'Rua Doutor diego silva, 101'),
('Paulo Souza', '78991021477', '99 95124-8127', 'Rua Edson farias gomes, 202'),
('Fernanda Lima', '32112362799', '91 90129-8317', 'Rua Francisco silveira nunes, 303'),
('Ricardo Alves', '65465465488', '81 99203-8321', 'Rua Pereira das quintas, 404');

INSERT INTO compra (data_compra, valor, status_compra) VALUES
('2024-12-10', '100.50', 'Confirmada'),
('2024-12-11', '200.75', 'Confirmada'),
('2024-12-12', '150.00', 'Cancelada'),
('2024-12-13', '300.20', 'Confirmada'),
('2024-12-14', '50.00', 'Confirmada'),
('2024-12-15', '120.00', 'Cancelada'),
('2024-12-16', '180.00', 'Confirmada');

INSERT INTO aeronaves (numero_aviao, modelo) VALUES
('A123', 'Boeing 737'),
('B456', 'Airbus A320'),
('C789', 'Embraer 190'),
('D012', 'Boeing 747'),
('E345', 'Cessna 172'),
('F678', 'Airbus A380'),
('G910', 'Boeing 777');

INSERT INTO viagem (destino, data_voo, aeronaveid) VALUES
('São Paulo', '2024-12-20', 1),
('Rio de Janeiro', '2024-12-25', 2),
('Salvador', '2025-01-10', 3),
('Recife', '2025-01-15', 4),
('Porto Alegre', '2025-02-01', 5),
('Brasília', '2025-02-10', 6),
('Fortaleza', '2025-02-20', 7);

INSERT INTO piloto (nome_piloto, cpf_piloto) VALUES
('Carlos Piloto', '42671390110'),
('João Piloto', '29162721420'),
('Pedro Piloto', '02914256844');

INSERT INTO compra_has_viagem (compra_idcompra, viagem_idviagem) VALUES
(1, 1),
(1, 2),
(2, 3),
(3, 4),
(4, 5),
(5, 6),
(6, 7);

INSERT INTO piloto_has_viagem (piloto_idpiloto, viagem_idviagem) VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(1, 5),
(3, 6),
(3, 7);

INSERT INTO historico_voos (data_historico, operacao, descricao, viagemid) VALUES
('2024-12-20', 'Check-in', 'Passageiros embarcando para São Paulo', 1),
('2024-12-25', 'Decolagem', 'Voo para Rio de Janeiro iniciado', 2),
('2025-01-10', 'Pouso', 'Voo finalizado em Salvador', 3),
('2025-01-15', 'Cancelado', 'Voo para Recife cancelado por condições climáticas', 4),
('2025-02-01', 'Check-out', 'Passageiros desembarcando em Porto Alegre', 5),
('2025-02-10', 'Check-in', 'Passageiros embarcando para Brasília', 6),
('2025-02-20', 'Decolagem', 'Voo para Fortaleza iniciado', 7);