Pergunta: Quais são os clientes cadastrados?

SELECT * FROM Cliente;

🔹 2. Filtro com WHERE

Pergunta: Quais ordens estão em andamento?

SELECT *
FROM Ordem_Servico
WHERE status = 'Em andamento';

🔹 3. Atributo derivado (cálculo de valor total da ordem)

Pergunta: Qual o valor total de cada ordem de serviço?

SELECT 
    os.id_ordem,
    SUM(s.valor * ios.quantidade) AS valor_total
FROM Ordem_Servico os
JOIN Item_Ordem_Servico ios ON os.id_ordem = ios.id_ordem
JOIN Servico s ON ios.id_servico = s.id_servico
GROUP BY os.id_ordem;

🔹 4. Ordenação com ORDER BY

Pergunta: Liste as ordens finalizadas ordenadas pela data de fechamento.

SELECT *
FROM Ordem_Servico
WHERE status = 'Finalizada'
ORDER BY data_fechamento DESC;

🔹 5. Filtro com HAVING

Pergunta: Quais ordens possuem valor total acima de R$ 200?

SELECT 
    os.id_ordem,
    SUM(s.valor * ios.quantidade) AS valor_total
FROM Ordem_Servico os
JOIN Item_Ordem_Servico ios ON os.id_ordem = ios.id_ordem
JOIN Servico s ON ios.id_servico = s.id_servico
GROUP BY os.id_ordem
HAVING valor_total > 200;

🔹 6. Junções entre tabelas (visão completa)

Pergunta: Quais serviços foram realizados em cada veículo e cliente?

SELECT 
    c.nome AS cliente,
    v.modelo,
    v.placa,
    s.descricao AS servico,
    s.valor
FROM Cliente c
JOIN Veiculo v ON c.id_cliente = v.id_cliente
JOIN Ordem_Servico os ON v.id_veiculo = os.id_veiculo
JOIN Item_Ordem_Servico ios ON os.id_ordem = ios.id_ordem
JOIN Servico s ON ios.id_servico = s.id_servico
ORDER BY c.nome;
