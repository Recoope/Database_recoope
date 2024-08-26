CREATE TABLE Empresa ( 
    cnpj INT PRIMARY KEY NOT NULL,  
    nome VARCHAR(100) DEFAULT "Nulo",  
    email VARCHAR(100) NOT NULL,  
    senha VARCHAR(15) NOT NULL CHECK (LENGTH(senha)>=8),  
    telefone VARCHAR(13) DEFAULT "00000-0000" 
); 

CREATE TABLE Endereco ( 
    id_endereco INT PRIMARY KEY NOT NULL,  
    complemento VARCHAR(50) DEFAULT "Nulo",  
    cep VARCHAR(9) NOT NULL,  
    bairro VARCHAR(30) DEFAULT "Nulo",  
    numero INT NOT NULL,
    cidade VARCHAR(30) DEFAULT "Nulo"
); 

CREATE TABLE cooperativa ( 
    id_cooperativa INT PRIMARY KEY NOT NULL,  
    nome VARCHAR(100) DEFAULT "Nulo",  
    email VARCHAR(100) NOT NULL,  
    senha VARCHAR(15) NOT NULL CHECK (LENGTH(senha)>=8),  
    telefone VARCHAR(13) DEFAULT "00000-0000"
); 

CREATE TABLE Leilao ( 
    id_leilao INT PRIMARY KEY NOT NULL,  
    valor_inicial REAL DEFAULT 0.0,  
    data_inicio DATE NOT NULL,  
    data_fim DATE DEFAULT CURRENT_DATE,  
    idEndereco INT NOT NULL,  
    idcooperativa INT NOT NULL
); 

CREATE TABLE lance ( 
    id_lance INT PRIMARY KEY NOT NULL,  
    valor REAL NOT NULL,  
    data_lance DATE DEFAULT CURRENT_DATE,  
    idLeilao INT NOT NULL,  
    idEmpresa INT NOT NULL 
); 

CREATE TABLE Produto ( 
    id_produto INT PRIMARY KEY NOT NULL,  
    material VARCHAR(30) DEFAULT "Nulo",  
    peso REAL NOT NULL,
    idLeilao INT NOT NULL
); 

CREATE TABLE Imagens ( 
    id INT PRIMARY KEY NOT NULL,  
    url VARCHAR(500) NOT NULL,  
    idProduto INT NOT NULL 
); 

ALTER TABLE Leilao ADD FOREIGN KEY(idEndereco) REFERENCES Endereco (idEndereco)
ALTER TABLE Leilao ADD FOREIGN KEY(idcooperativa) REFERENCES cooperativa (idcooperativa)
ALTER TABLE lance ADD FOREIGN KEY(idLeilao) REFERENCES Leilao (idLeilao)
ALTER TABLE lance ADD FOREIGN KEY(idEmpresa) REFERENCES Empresa (idEmpresa)
ALTER TABLE Produto ADD FOREIGN KEY(idLeilao) REFERENCES Leilao (idLeilao)
ALTER TABLE Imagens ADD FOREIGN KEY(idProduto) REFERENCES Produto (idProduto)