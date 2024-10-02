CREATE TABLE Empresa ( 
    cnpj CHAR(14) PRIMARY KEY NOT NULL,
    nome VARCHAR(100) NOT NULL,    
    email VARCHAR(100) NOT NULL,  
    senha VARCHAR(15) NOT NULL CHECK (LENGTH(senha)>=8),
    telefone VARCHAR(13) DEFAULT null    
); 

CREATE TABLE Endereco ( 
    id INT PRIMARY KEY NOT NULL,
    numero INT NOT NULL,  
    complemento VARCHAR(50) DEFAULT NULL,  
    cep VARCHAR(9) NOT NULL,   
    bairro VARCHAR(50) NOT NULL,
    cidade VARCHAR(50) NOT NULL,      
    logradouro VARCHAR(100) DEFAULT null,  
    estado VARCHAR(50) NOT NULL  
); 

CREATE TABLE Cooperativa ( 
    cnpj CHAR(14) PRIMARY KEY NOT NULL CHECK (LENGTH(cnpj) = 14),   
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,  
    senha VARCHAR(15) NOT NULL CHECK(LENGTH(senha)>=8),  
    telefone VARCHAR(13) DEFAULT null,
    imagem bytea DEFAULT null  
); 

CREATE TABLE Leilao ( 
    id INT PRIMARY KEY NOT NULL,  
    data_inicio DATE DEFAULT CURRENT_DATE,  
    data_fim DATE not null,  
    valor_inicial real DEFAULT 1.0,
    id_endereco INT NOT NULL,  
    id_cooperativa char NOT NULL,
    FOREIGN KEY(id_endereco) REFERENCES Endereco(id),
    FOREIGN KEY(id_cooperativa) REFERENCES Cooperativa(cnpj)
); 

CREATE TABLE Lance ( 
    id INT PRIMARY KEY NOT NULL,  
    valor REAL NOT NULL,  
    data_lance DATE DEFAULT CURRENT_DATE,  
    id_leilao INT NOT NULL,  
    id_empresa CHAR(14) NOT NULL,
    FOREIGN KEY(id_leilao) REFERENCES Leilao(id),
    FOREIGN KEY(id_empresa) REFERENCES Empresa(cnpj)
); 

CREATE TABLE Produto (
    id INT PRIMARY KEY NOT NULL,  
    material VARCHAR(30) not null,  
    peso REAL NOT NULL,   
    id_leilao INT NOT NULL,
    FOREIGN KEY(id_leilao) REFERENCES Leilao(id)
); 

CREATE TABLE Imagens ( 
    id INT PRIMARY KEY NOT NULL,  
    imagem bytea NOT NULL,  
    id_produto INT NOT NULL,
    FOREIGN KEY(id_produto) REFERENCES Produto(id)
);