INSERT INTO Cliente (nome, telefone, email) VALUES
('João Silva', '27999990001', 'joao@email.com'),
('Maria Souza', '27999990002', 'maria@email.com');

INSERT INTO Veiculo (placa, modelo, marca, ano, id_cliente) VALUES
('ABC1234', 'Gol', 'Volkswagen', 2015, 1),
('XYZ9876', 'Civic', 'Honda', 2019, 2);

INSERT INTO Mecanico (nome, especialidade) VALUES
('Carlos Mecânico', 'Motor'),
('Pedro Mecânico', 'Suspensão');

INSERT INTO Servico (descricao, valor) VALUES
('Troca de óleo', 150.00),
('Alinhamento', 120.00),
('Revisão completa', 500.00);

INSERT INTO Ordem_Servico (data_abertura, data_fechamento, status, id_veiculo, id_mecanico) VALUES
('2024-01-10', '2024-01-11', 'Finalizada', 1, 1),
('2024-01-12', NULL, 'Em andamento', 2, 2);

INSERT INTO Item_Ordem_Servico (id_ordem, id_servico, quantidade) VALUES
(1, 1, 1),
(1, 2, 1),
(2, 3, 1);
