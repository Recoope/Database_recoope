    INSERT INTO Empresa (cnpj, nome, email, senha, telefone) VALUES 
    ('12345678000195', 'Empresa A', 'contato@empresaa.com', 'senha1234', '11934567896'),
    ('98765432000199', 'Empresa B', 'contato@empresab.com', 'senha5678', '21987653432'),
    ('54321678000100', 'Empresa C', 'contato@empresac.com', 'senha9012', '31987656432'),
    ('45678912345190', 'Empresa D', 'contato@empresad.com', 'senha5834', '45997891230'),
    ('83423741824425', 'Empresa E', 'contato@empresae.com', 'senha5957', '56981901234'),
    ('12953649514374', 'Empresa F', 'contato@empresaf.com', 'senha5321', '67950120345');

    INSERT INTO Endereco (id, numero, complemento, cep, bairro, cidade, logradouro, estado, dados_status, status) VALUES 
    (1, 123, 'Apto 101', '12345-678', 'Centro', 'São Paulo', 'Rua Exemplo 1', 'SP', TRUE, TRUE),
    (2, 456, 'Bloco A', '87654-321', 'Bairro Alto', 'Rio de Janeiro', 'Rua Exemplo 2', 'RJ', TRUE, TRUE),
    (3, 789, 'Casa', '45678-123', 'Jardim', 'Belo Horizonte', 'Rua Exemplo 3', 'MG', TRUE, TRUE),
    (4, 654, 'Apto 245', '98453-745', 'Bairro do Arroz', 'Osasco', 'Rua Exemplo 4', 'SP', TRUE, TRUE),
    (5, 912, 'Fundos', '15489-452', 'Bairro C', 'Londrina', 'Rua Exemplo 5', 'PR', TRUE, TRUE),
    (6, 467, 'Casa', '78923-657', 'Jardim', 'Belo Horizonte', 'Rua Exemplo 6', 'MG', TRUE, TRUE);

    INSERT INTO Cooperativa (cnpj, nome, email, senha, telefone, imagem, dados_status, status) VALUES 
    ('12345678901234', 'Cooperativa X', 'contato@cooperativax.com', 'senha1234', '11987695432', NULL, TRUE, TRUE),
    ('23456789065489', 'Cooperativa Y', 'contato@cooperativay.com', 'senha5678', '21987654432', NULL, TRUE, TRUE),
    ('34567890123456', 'Cooperativa C', 'contato@cooperativac.com', 'senha6745', '34967895012', NULL, TRUE, TRUE),
    ('45678901234586', 'Cooperativa Z', 'contato@cooperativaz.com', 'senha9123', '45978904123', NULL, TRUE, TRUE),
    ('56789012345678', 'Cooperativa D', 'contato@cooperativad.com', 'senha7346', '11989017234', NULL, TRUE, TRUE),
    ('67890123456789', 'Cooperativa I', 'contato@cooperativai.com', 'senha0157', '67980127345', NULL, TRUE, TRUE);

    INSERT INTO Produto (id, material, peso, dados_status, status) VALUES 
    (1, 'Plástico', 500.0, TRUE, TRUE),
    (2, 'Metal', 300.0, TRUE, TRUE),
    (3, 'Vidro', 200.0, TRUE, TRUE),
    (4, 'Papel', 700.0, TRUE, TRUE),
    (5, 'Metal', 1000.0, TRUE, TRUE),
    (6, 'Papelao', 100.0, TRUE, TRUE);
    
    INSERT INTO Leilao (id, data_inicio, data_fim, hora_fim, detalhe, valor_inicial, status, dados_status, id_endereco, id_cooperativa, id_produto) VALUES 
    (1, '2024-08-28', '2024-09-01', '15:00:00', 'detalhes', 1000.0, TRUE, TRUE, 1, '12345678901234', 1),
    (2, '2024-09-10', '2024-09-15', '10:20:00', 'detalhes', 2000.0, TRUE, TRUE, 2, '23456789065489', 2),
    (3, '2024-09-20', '2025-01-10', '00:09:00', 'detalhes', 3000.0, TRUE, TRUE, 3, '34567890123456', 3),
    (4, '2024-10-25', '2024-10-27', '12:10:00', 'detalhes', 4000.0, TRUE, TRUE, 4, '45678901234586', 4),
    (5, '2024-05-12', '2024-06-02', '09:45:00', 'detalhes', 5000.0, TRUE, TRUE, 5, '56789012345678', 5),
    (6, '2024-11-20', '2024-12-17', '17:50:00', 'detalhes', 6000.0, TRUE, TRUE, 6, '67890123456789', 6);

    INSERT INTO Lance (id, valor, data_lance, id_leilao, id_empresa) VALUES 
    (1, 1200.0, '2024-08-29', 1, '12345678000195'),
    (2, 2500.0, '2024-09-11', 2, '98765432000199'),
    (3, 3200.0, '2024-09-21', 3, '54321678000100'),
    (4, 4200.0, '2024-10-22', 4, '45678912345190'),
    (5, 5200.0, '2024-03-11', 5, '83423741824425'),
    (6, 1100.0, '2024-12-21', 6, '12953649514374');

    INSERT INTO Imagens (id, imagem, id_produto, dados_status, status) VALUES 
    (1, NULL, 1, TRUE, TRUE),
    (2, NULL, 2, TRUE, TRUE),
    (3, NULL, 3, TRUE, TRUE),
    (4, NULL, 4, TRUE, TRUE),
    (5, NULL, 5, TRUE, TRUE),
    (6, NULL, 6, TRUE, TRUE);