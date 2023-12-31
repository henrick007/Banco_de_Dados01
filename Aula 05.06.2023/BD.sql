CREATE TABLE EMPREGADO (
  COD_EMPREGADO INT,
  NOME VARCHAR (100),
  DATA_NASC DATE,
  SEXO VARCHAR (1),
  DATA_ADMISSAO DATE,
  SETOR VARCHAR (100),
  CARGO VARCHAR (100),
  SALARIO INT,
  PRIMARY KEY (COD_EMPREGADO)
);

INSERT INTO EMPREGADO (
  COD_EMPREGADO,
  NOME,
  DATA_NASC,
  SEXO,
  DATA_ADMISSAO,
  SETOR,
  CARGO,
  SALARIO
) VALUES(
  1529,
  'Gabriel',
  '15/07/2002',
  'M',
  '01/03/2023',
  'TI',
  'Aalista',
  1000.00
) INSERT INTO EMPREGADO (
  COD_EMPREGADO,
  NOME,
  DATA_NASC,
  SEXO,
  DATA_ADMISSAO,
  SETOR,
  CARGO,
  SALARIO
) VALUES(
  2106,
  'Marcos',
  '15/01/2002',
  'M',
  '06/01/2020',
  'Logistica',
  'Auxiliar',
  2000.00
) INSERT INTO EMPREGADO (
  COD_EMPREGADO,
  NOME,
  DATA_NASC,
  SEXO,
  DATA_ADMISSAO,
  SETOR,
  CARGO,
  SALARIO
) VALUES(
  2023,
  'Myrela',
  '15/02/2002',
  'F',
  '05/06/2023',
  'Financeiro',
  'Aalista',
  3000.00
) INSERT INTO EMPREGADO (
  COD_EMPREGADO,
  NOME,
  DATA_NASC,
  SEXO,
  DATA_ADMISSAO,
  SETOR,
  CARGO,
  SALARIO
) VALUES(
  1021,
  'Gleice',
  '01/01/2002',
  'F',
  '15/03/2001',
  'TI',
  'Aalista',
  5000.00
) INSERT INTO EMPREGADO (
  COD_EMPREGADO,
  NOME,
  DATA_NASC,
  SEXO,
  DATA_ADMISSAO,
  SETOR,
  CARGO,
  SALARIO
) VALUES(
  1321,
  'Alicia',
  '20/06/2002',
  'F',
  '01/03/2023',
  'Serviços Gerais',
  'Auxiliar',
  1500.00
)
  SELECT
    *
  FROM
    EMPREGADO
  WHERE
    SEXO = 'M';

SELECT
  *
FROM
  EMPREGADO
WHERE
  SALARIO >= 2000.00;

SELECT
  *
FROM
  EMPREGADO
WHERE
  SEXO = 'M'
  AND SALARIO >= 2000.00;

SELECT
  *
FROM
  EMPREGADO
WHERE
  SEXO = 'M'
  OR SALARIO >= 2000.00;