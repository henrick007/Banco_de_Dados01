CREATE TABLE ESTUDANTE (
    COD_MATRICULA CHAR(10) UNIQUE,
    NOME_ESTUDANTE VARCHAR(60) NOT NULL,
    IDIOMA VARCHAR(30) NOT NULL,
    DATANASCI DATE NOT NULL,
    IDADE INTEGER NOT NULL CHECK (IDADE >12),
    SEXO VARCHAR (10) NOT NULL,
    ENDERECO VARCHAR(20) NOT NULL,
    TELEFONE VARCHAR (15) NOT NULL,
    EMAIL VARCHAR (20) NOT NULL,
    PRIMARY KEY (COD_MATRICULA)
);

CREATE TABLE TURMA (
    COD_TURMA CHAR (10) UNIQUE,
    COD_MATERIA CHAR (10) UNIQUE,
    ANO CHAR (4) NOT NULL,
    PRIMARY KEY (COD_TURMA),
    FOREIGN KEY (COD_MATERIA) REFERENCES MATERIA
);

CREATE TABLE MATERIA (
    COD_MATERIA INTEGER UNIQUE,
    DESCRICAO VARCHAR (50) NOT NULL,
    CARGAHORARIA INTEGER NOT NULL
);

ALTER TABLE MATERIA ADD SALA VARCHAR(10);

ALTER TABLE MATERIA RENAME COLUMN DESCRICAO TO NOME VARCHAR (50) NOT NULL;

ALTER TABLE MATERIA DROP COLUMN SALA;

INSERT INTO ESTUDANTE(
    COD_MATRICULA,
    NOME_ESTUDANTE,
    IDIOMA,
    DATANASCI,
    IDADE,
    SEXO,
    ENDERECO,
    TELEFONE,
    EMAIL
) VALUES(
    2390,
    'Gleice',
    'Português',
    '15/07/2002',
    20,
    'Masculino',
    'AV - a, casa 116',
    '(65)9 9323-2797',
    'gabriel@gmail.com'
) UPDATE ESTUDANTE SET NOME_ESTUDANTE = 'Gabriel' WHERE NOME_ESTUDANTE = 'Gleice';

SELECT
    NOME_ESTUDANTE,
    DATANASCI
FROM
    ESTUDANTE;

DELETE FROM ESTUDANTE
WHERE
    COD_MATRICULA = 2390;