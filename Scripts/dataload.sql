INSERT INTO Empresa (cnpj, nome, email, senha, telefone) VALUES 
('12345678000195', 'Empresa A', 'contato@empresaa.com', 'senha1234', '1123456789'),
('98765432000199', 'Empresa B', 'contato@empresab.com', 'senha5678', '2198765432'),
('54321678000100', 'Empresa C', 'contato@empresac.com', 'senha9012', '3198765432'),
('45678912345190', 'Empresa D', 'contato@empresad.com', 'senha5834', '4567891230'),
('83423741824425', 'Empresa E', 'contato@empresae.com', 'senha5957', '5678901234'),
('12953649514374', 'Empresa F', 'contato@empresaf.com', 'senha5321', '6789012345');

INSERT INTO Endereco (id_endereco, numero, complemento, cep, bairro, cidade, logradouro, estado) VALUES 
(1, 123, 'Apto 101', '12345-678', 'Centro', 'São Paulo', 'Rua Exemplo 1', 'SP'),
(2, 456, 'Bloco A', '87654-321', 'Bairro Alto', 'Rio de Janeiro', 'Rua Exemplo 2', 'RJ'),
(3, 789, 'Casa', '45678-123', 'Jardim', 'Belo Horizonte', 'Rua Exemplo 3', 'MG'),
(4, 654, 'apto 245', '98453-745', 'Bairro do Arroz', 'Osasco', 'Rua Exemplo 4', 'SP'),
(5, 912, 'Fundos', '15489-452', 'Bairro C', 'Londrina', 'Rua Exemplo 5', 'SC'),
(6, 467, 'Casa', '78923-657', 'Jardim', 'Belo Horizonte', 'Rua Exemplo 6', 'MG');

INSERT INTO Cooperativa (cnpj, nome, email, senha, telefone) VALUES 
('12345678901243', 'Cooperativa X', 'contato@cooperativax.com', 'senha1234', '1198765432'),
('98425102841331', 'Cooperativa Y', 'contato@cooperativay.com', 'senha5678', '2198765432'),
('81437551000231', 'Cooperativa C', 'contato@cooperativac.com', 'senha6745', '3456789012'),
('10987654322413', 'Cooperativa Z', 'contato@cooperativaz.com', 'senha9123', '4567890123'),
('54637281903419', 'Cooperativa D', 'contato@cooperativad.com', 'senha7346', '5678901234'),
('56473839102934', 'Cooperativa I', 'contato@cooperativai.com', 'senha0157', '6789012345');

INSERT INTO Leilao (id_leilao, data_inicio, data_fim, valor_inicial, id_endereco, id_cooperativa) VALUES 
(1, '2024-08-28', '2024-09-01', 1000.0, 1, '12345678901243'),
(2, '2024-09-10', '2024-09-15', 2000.0, 2, '98425102841331'),
(3, '2024-09-20', NULL, 3000.0, 3, '81437551000231'),
(4, '2024-10-25', '2024-10-27', 4000.0, 4, '10987654322413'),
(5, '2024-05-12', '2024-06-02', 5000.0, 5, '54637281903419'),
(6, '2024-11-20', NULL, 6000.0, 6, '56473839102934');


INSERT INTO lance (id_lance, valor, data_lance, id_leilao, id_empresa) VALUES 
(1, 1200.0, '2024-08-29', 1, '12345678000195'),
(2, 2500.0, '2024-09-11', 2, '98765432000199'),
(3, 3200.0, '2024-09-21', 3, '54321678000100'),
(4, 4200.0, '2024-10-22', 4, '45678912345190'),
(5, 5200.0, '2024-03-11', 5, '83423741824425'),
(6, 1100.0, '2024-12-21', 6, '12953649514374');


INSERT INTO Produto (id_produto, material, peso, id_leilao) VALUES 
(1, 'Plástico', 500.0, 1),
(2, 'Metal', 300.0, 2),
(3, 'Vidro', 200.0, 3),
(4, 'Papel', 700.0, 4),
(5, 'Metal', 1000.0, 5),
(6, 'Papelao', 100.0, 6);

INSERT INTO Imagens (id_imagem, url, id_produto) VALUES 
(1, 'http://example.com/imagem1.jpg', 1),
(2, 'http://example.com/imagem2.jpg', 2),
(3, 'http://example.com/imagem3.jpg', 3),
(4, 'http://example.com/imagem4.jpg', 4),
(5, 'http://example.com/imagem5.jpg', 5),
(6, 'http://example.com/imagem6.jpg', 6);