CREATE TABLE Empresa ( 
    cnpj INT PRIMARY KEY,  
    nome VARCHAR(30),  
    email VARCHAR(30),  
    senha VARCHAR(15),--min 8 add check  
    telefone VARCHAR(12)  
); 

CREATE TABLE Endereco ( 
    id_endereco INT PRIMARY KEY,  
    complemento INT,  
    cep VARCHAR(9),  
    bairro VARCHAR(30),  
    numero INT  
); 

CREATE TABLE cooperativa ( 
    id_cooperativa INT PRIMARY KEY,  
    nome VARCHAR(30),  
    email VARCHAR(30),  
    senha VARCHAR(15),--min 8 add check  
    telefone VARCHAR(12)  
); 

CREATE TABLE Leilao ( 
    id_leilao INT PRIMARY KEY,  
    valor_inicial REAL,  
    data_inicio DATE,  
    data_fim DATE,  
    idEndereco INT,  
    idcooperativa INT
); 

CREATE TABLE lance ( 
    id_lance INT PRIMARY KEY,  
    valor REAL,  
    data_lance DATE,  
    idLeilao INT,  
    idEmpresa INT 
); 

CREATE TABLE Produto ( 
    id_produto INT PRIMARY KEY,  
    material VARCHAR(20),  
    peso REAL,  
    idLeilao INT
); 

CREATE TABLE Imagens ( 
    id INT PRIMARY KEY,  
    url VARCHAR(500),  
    idProduto INT 
); 

ALTER TABLE Leilao ADD FOREIGN KEY(idEndereco) REFERENCES Endereco (idEndereco)
ALTER TABLE Leilao ADD FOREIGN KEY(idcooperativa) REFERENCES cooperativa (idcooperativa)
ALTER TABLE lance ADD FOREIGN KEY(idLeilao) REFERENCES Leilao (idLeilao)
ALTER TABLE lance ADD FOREIGN KEY(idEmpresa) REFERENCES Empresa (idEmpresa)
ALTER TABLE Produto ADD FOREIGN KEY(idLeilao) REFERENCES Leilao (idLeilao)
ALTER TABLE Imagens ADD FOREIGN KEY(idProduto) REFERENCES Produto (idProduto)