-- CREATE TABLE tbGeneroFilmes
(
    codGeneroFilme int(11) PRIMARY KEY AUTO_INCREMENT,
    generoFilme VARCHAR(20)   
);

CREATE TABLE tbAtor
(
    codAtor int(11) PRIMARY KEY AUTO_INCREMENT,
    ator VARCHAR(50)   
);

CREATE TABLE tbDiretorFilme
(
    codDiretorFilme int(11) PRIMARY KEY AUTO_INCREMENT,
    nomeDiretor VARCHAR(50)   
);

CREATE TABLE tbFilme
(
    codFilme int(11) PRIMARY KEY AUTO_INCREMENT,
    filme VARCHAR(50),
    codGenero int(11) NOT NULL,
    codDiretor int(11) NOT NULL,
    FOREIGN KEY (codGenero) REFERENCES tbgenerofilmes(codGeneroFilme),
    FOREIGN KEY (codDiretor) REFERENCES tbdiretorfilme(codDiretorFilme)    
);

CREATE TABLE tbAtorFilme
(
    codAtorFilme int(11) PRIMARY KEY AUTO_INCREMENT,
    codAtor int(11) NOT NULL,
    codFilme int(11) NOT NULL,
    FOREIGN KEY (codAtor) REFERENCES tbator(codAtor),
    FOREIGN KEY (codFilme) REFERENCES tbfilme(codFilme)    
)

--Código usado para criar o banco de dados bdFilmes, no phpMyAdmin
