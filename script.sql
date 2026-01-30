CREATE TABLE Cliente (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20),
    email VARCHAR(100)
);

CREATE TABLE Veiculo (
    id_veiculo INT PRIMARY KEY AUTO_INCREMENT,
    placa VARCHAR(10) NOT NULL UNIQUE,
    modelo VARCHAR(50),
    marca VARCHAR(50),
    ano INT,
    id_cliente INT,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente)
);

CREATE TABLE Mecanico (
    id_mecanico INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    especialidade VARCHAR(50)
);

CREATE TABLE Ordem_Servico (
    id_ordem INT PRIMARY KEY AUTO_INCREMENT,
    data_abertura DATE NOT NULL,
    data_fechamento DATE,
    status VARCHAR(30),
    id_veiculo INT,
    id_mecanico INT,
    FOREIGN KEY (id_veiculo) REFERENCES Veiculo(id_veiculo),
    FOREIGN KEY (id_mecanico) REFERENCES Mecanico(id_mecanico)
);

CREATE TABLE Servico (
    id_servico INT PRIMARY KEY AUTO_INCREMENT,
    descricao VARCHAR(100),
    valor DECIMAL(10,2)
);

CREATE TABLE Item_Ordem_Servico (
    id_item INT PRIMARY KEY AUTO_INCREMENT,
    id_ordem INT,
    id_servico INT,
    quantidade INT,
    FOREIGN KEY (id_ordem) REFERENCES Ordem_Servico(id_ordem),
    FOREIGN KEY (id_servico) REFERENCES Servico(id_servico)
);
