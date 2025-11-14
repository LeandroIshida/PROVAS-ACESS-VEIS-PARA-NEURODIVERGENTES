CREATE TABLE PROVA (
    id_prova INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(255) NOT NULL,
    descricao TEXT,
    data_aplicacao DATE,
    tam_fonte INT, 
    modo_alto_contraste BOOLEAN DEFAULT FALSE,
    uma_questao_por_pagina BOOLEAN DEFAULT FALSE,
    criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    atualizado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE QUESTAO (
    id_questao INT PRIMARY KEY AUTO_INCREMENT,
    id_prova INT,
    ordem INT, 
    enunciado TEXT,
    tipo VARCHAR(50), 
    pontuacao NUMERIC(5,2),
    FOREIGN KEY (id_prova) REFERENCES PROVA(id_prova) ON DELETE CASCADE
);

CREATE TABLE OPCAO (
    id_opcao INT PRIMARY KEY AUTO_INCREMENT,
    id_questao INT,
    rotulo VARCHAR(10), 
    texto TEXT,
    is_correta BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (id_questao) REFERENCES QUESTAO(id_questao) ON DELETE CASCADE
);

CREATE TABLE MIDIA_QUESTAO (
    id_midia INT PRIMARY KEY AUTO_INCREMENT,
    id_questao INT,
    caminho_arquivo VARCHAR(255),
    alt_text VARCHAR(255),
    FOREIGN KEY (id_questao) REFERENCES QUESTAO(id_questao) ON DELETE CASCADE
);
