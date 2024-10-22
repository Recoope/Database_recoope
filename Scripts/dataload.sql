    INSERT INTO Empresa (cnpj, nome, email, senha, telefone) VALUES 
    ('12345678000195', 'Empresa A', 'contato@empresaa.com', 'senha1234', '11934567896'),
    ('98765432000199', 'Empresa B', 'contato@empresab.com', 'senha5678', '21987653432'),
    ('54321678000100', 'Empresa C', 'contato@empresac.com', 'senha9012', '31987656432'),
    ('45678912345190', 'Empresa D', 'contato@empresad.com', 'senha5834', '45997891230'),
    ('83423741824425', 'Empresa E', 'contato@empresae.com', 'senha5957', '56981901234'),
    ('12953649514374', 'Empresa F', 'contato@empresaf.com', 'senha5321', '67950120345');

    INSERT INTO Endereco (numero, complemento, cep, bairro, cidade, logradouro, estado, dados_status, status) VALUES 
    (123, 'Apto 101', '12345-678', 'Centro', 'São Paulo', 'Rua Exemplo 1', 'SP', TRUE, TRUE),
    (456, 'Bloco A', '87654-321', 'Bairro Alto', 'Rio de Janeiro', 'Rua Exemplo 2', 'RJ', TRUE, TRUE),
    (789, 'Casa', '45678-123', 'Jardim', 'Belo Horizonte', 'Rua Exemplo 3', 'MG', TRUE, TRUE),
    (654, 'Apto 245', '98453-745', 'Bairro do Arroz', 'Osasco', 'Rua Exemplo 4', 'SP', TRUE, TRUE),
    (912, 'Fundos', '15489-452', 'Bairro C', 'Londrina', 'Rua Exemplo 5', 'PR', TRUE, TRUE),
    (467, 'Casa', '78923-657', 'Jardim', 'Belo Horizonte', 'Rua Exemplo 6', 'MG', TRUE, TRUE);

    INSERT INTO Cooperativa (cnpj, nome, email, senha, telefone, imagem, dados_status, status) VALUES 
    ('12345678901234', 'Cooperativa X', 'contato@cooperativax.com', 'senha1234', '11987695432', NULL, TRUE, TRUE),
    ('23456789065489', 'Cooperativa Y', 'contato@cooperativay.com', 'senha5678', '21987654432', NULL, TRUE, TRUE),
    ('34567890123456', 'Cooperativa C', 'contato@cooperativac.com', 'senha6745', '34967895012', NULL, TRUE, TRUE),
    ('45678901234586', 'Cooperativa Z', 'contato@cooperativaz.com', 'senha9123', '45978904123', NULL, TRUE, TRUE),
    ('56789012345678', 'Cooperativa D', 'contato@cooperativad.com', 'senha7346', '11989017234', NULL, TRUE, TRUE),
    ('67890123456789', 'Cooperativa I', 'contato@cooperativai.com', 'senha0157', '67980127345', NULL, TRUE, TRUE);

    INSERT INTO Produto (material, peso, dados_status, status) VALUES 
    ('Plástico', 500.0, TRUE, TRUE),
    ('Metal', 300.0, TRUE, TRUE),
    ('Vidro', 200.0, TRUE, TRUE),
    ('Papel', 700.0, TRUE, TRUE),
    ('Metal', 1000.0, TRUE, TRUE),
    ('Papelao', 100.0, TRUE, TRUE);
    
    INSERT INTO Leilao (data_inicio, data_fim, hora_fim, detalhe, valor_inicial, status, dados_status, id_endereco, id_cooperativa, id_produto) VALUES 
    ('2024-08-28', '2024-09-01', '15:00:00', 'detalhes', 1000.0, TRUE, TRUE, 1, '12345678901234', 1),
    ('2024-09-10', '2024-09-15', '10:20:00', 'detalhes', 2000.0, TRUE, TRUE, 2, '23456789065489', 2),
    ('2024-09-20', '2025-01-10', '00:09:00', 'detalhes', 3000.0, TRUE, TRUE, 3, '34567890123456', 3),
    ('2024-10-25', '2024-10-27', '12:10:00', 'detalhes', 4000.0, TRUE, TRUE, 4, '45678901234586', 4),
    ('2024-05-12', '2024-06-02', '09:45:00', 'detalhes', 5000.0, TRUE, TRUE, 5, '56789012345678', 5),
    ('2024-11-20', '2024-12-17', '17:50:00', 'detalhes', 6000.0, TRUE, TRUE, 6, '67890123456789', 6),
    ('2024-07-20', '2024-09-22', '18:00:00', 'detalhes', 500.0, TRUE, TRUE, 1, '12345678901234', 4),
    ('2024-09-20', '2024-10-20', '20:30:00', 'detalhes', 5000.0, TRUE, TRUE, 1, '12345678901234', 1),
    ('2024-04-10', '2024-07-04', '09:20:00', 'detalhes', 2300.0, TRUE, TRUE, 2,'23456789065489', 2),
    ('2024-09-20', '2024-10-27', '21:00:00', 'detalhes', 9700.0, TRUE, TRUE, 3, '34567890123456', 3),
    ('2024-10-02', '2024-11-16', '12:15:00', 'detalhes', 2000.0, TRUE, TRUE, 4, '45678901234586', 5),
    ('2024-09-12', '2024-12-20', '13:45:00', 'detalhes', 4000.0, TRUE, TRUE, 4, '45678901234586', 6),
    ('2024-11-02', '2024-11-16', '07:15:00', 'detalhes', 2000.0, TRUE, TRUE, 5, '56789012345678', 1),
    ('2024-10-28', '2024-11-24', '17:20:00', 'detalhes', 6000.0, TRUE, TRUE, 6, '67890123456789', 5),
    ('2024-12-12', '2025-01-17', '19:40:00', 'detalhes', 8000.0, TRUE, TRUE, 3, '34567890123456', 2);



    INSERT INTO Lance (valor, data_lance, id_empresa) VALUES 
    (1200.0, '2024-08-29', '12345678000195'),
    (2500.0, '2024-09-11', '98765432000199'),
    (3200.0, '2024-09-21', '54321678000100'),
    (4200.0, '2024-10-22', '45678912345190'),
    (5200.0, '2024-03-11', '83423741824425'),
    (1100.0, '2024-12-21', '12953649514374');

    INSERT INTO Imagem (imagem, dados_status, status) VALUES 
    (NULL, TRUE, TRUE),
    (NULL, TRUE, TRUE),
    (NULL, TRUE, TRUE),
    (NULL, TRUE, TRUE),
    (NULL, TRUE, TRUE),
    (NULL, TRUE, TRUE);