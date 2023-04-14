SELECT * FROM filiadosPTC

-- Apresentar todos os filiados cujo nome comece com o Nome “ANTONIO”
SELECT NOME_DO_FILIADO FROM filiadosPTC2023
WHERE NOME_DO_FILIADO LIKE 'ANTONIO%'

--Apresente o nome de todos os filiados que contenham “Sebastião” como sobrenome.
SELECT NOME_DO_FILIADO FROM filiadosPTC2023
WHERE NOME_DO_FILIADO LIKE '% SEBASTIÃO%' -- Qualquer coisa, ESPAÇO nome.


--Apresentar todos os filiados cujo nome comece com o Nome “OS”.
SELECT NOME_DO_FILIADO FROM filiadosPTC2023
WHERE NOME_DO_FILIADO LIKE 'OS%'

-- Apresente o nome de todos os filiados que moram no município de “São Félix”.’
SELECT NOME_DO_FILIADO, NOME_DO_MUNICIPIO FROM filiadosPTC2023
WHERE NOME_DO_MUNICIPIO = 'São Félix'

SELECT NOME_DO_FILIADO, NOME_DO_MUNICIPIO FROM filiadosPTC2023
WHERE NOME_DO_MUNICIPIO LIKE '%São Félix'

--Apresente o nome de todos os filiados que moram no município “Inhambupe"
SELECT NOME_DO_FILIADO, NOME_DO_MUNICIPIO FROM filiadosPTC2023
WHERE NOME_DO_MUNICIPIO LIKE '%Inhambupe'

--Apresente o nome dos municípios que comecem com o nome “SANTA”
SELECT NOME_DO_FILIADO, NOME_DO_MUNICIPIO FROM filiadosPTC2023
WHERE NOME_DO_MUNICIPIO LIKE 'SANTA%'

--Apresente o nome dos municípios que comecem com a letra “E”
SELECT NOME_DO_MUNICIPIO FROM filiadosPTC2023
WHERE NOME_DO_MUNICIPIO LIKE 'E%'

--Apresente o nome dos municípios que contenha “Cruz” em seu nome.
SELECT NOME_DO_MUNICIPIO FROM filiadosPTC2023
WHERE NOME_DO_MUNICIPIO LIKE '%CRUZ%'

--Apresente o nome dos municípios que contenha “De” em seu nome.
SELECT NOME_DO_MUNICIPIO FROM filiadosPTC2023
WHERE NOME_DO_MUNICIPIO LIKE '%DE%'

--Exiba todos os filiados cadastrados entre 01/01/1990 e 01/01/2000.
--CONVERT(VARCHAR(10), dataNascAluno, 103)
SELECT NOME_DO_FILIADO, CONVERT(VARCHAR(10),DATA_DA_FILIACAO,103) FROM filiadosPTC2023
WHERE DATA_DA_FILIACAO BETWEEN '01/01/1990' AND '01/01/2000'

--Exiba todos os filiados cadastrados entre 02/01/2010 e 01/03/2010.
SELECT NOME_DO_FILIADO, CONVERT(VARCHAR(10),DATA_DA_FILIACAO,103) FROM filiadosPTC2023
WHERE DATA_DA_FILIACAO BETWEEN '02/01/2010' AND '01/03/2010'

--Realize uma busca em que exiba os cadastrados ao partido PTC no 2º de 2007.
SELECT NOME_DO_FILIADO,  CONVERT(VARCHAR(10), DATA_DA_FILIACAO,103)  FROM filiadosPTC2023
WHERE DATA_DA_FILIACAO BETWEEN '01/01/2007' AND '31/12/2007'
ORDER BY DATA_DA_FILIACAO -- *

--Apresente o cadastro de todos os filiados que estão com a situação
--do registro regularizado.
SELECT NOME_DO_FILIADO, SITUACAO_DO_REGISTRO FROM filiadosPTC2023
WHERE SITUACAO_DO_REGISTRO LIKE '%REGULAR'

--Encontre todos os filiados cadastros na zona eleitoral “203”.
SELECT NOME_DO_FILIADO, ZONA_ELEITORAL FROM filiadosPTC2023
WHERE ZONA_ELEITORAL = '203'

--Encontre todos os filiados cadastros na zona eleitoral “180”.
SELECT NOME_DO_FILIADO, ZONA_ELEITORAL FROM filiadosPTC2023
WHERE ZONA_ELEITORAL = '180'


--Encontre todos os filiados cadastros na zona eleitoral “199”.
SELECT NOME_DO_FILIADO, ZONA_ELEITORAL FROM filiadosPTC2023
WHERE ZONA_ELEITORAL = '109'

--Apresente o número da maior zona eleitoral.
SELECT MAX(CONVERT (INT,ZONA_ELEITORAL)) FROM filiadosPTC2023
-- O problema aqui é o tipo de dados que foi definido na criação do banco
--É preciso converter Varchar para INT - utilizei a função CONVERT.


--Apresente número da menor da zona eleitoral
SELECT MIN(CONVERT (INT,ZONA_ELEITORAL)) FROM filiadosPTC2023
SELECT MIN(ZONA_ELEITORAL) FROM filiadosPTC2023

--Atualize a sigla do partido PTC para PT para todos os filiados do 
--município de código “36471”.
UPDATE filiadosPTC2023 SET SIGLA_DO_PARTIDO = 'PT'
WHERE CODIGO_DO_MUNICIPIO = 36471

SELECT NOME_DO_FILIADO, SIGLA_DO_PARTIDO, CODIGO_DO_MUNICIPIO FROM filiadosPTC2023
WHERE SIGLA_DO_PARTIDO = 'PT'
-- Para confirmar se realmente trocou 


-- Atualize a sigla do partido PTC para PMDB para todos
--os filiados do município de código “38490”.
UPDATE filiadosPTC2023 SET SIGLA_DO_PARTIDO = 'PMDB'
WHERE CODIGO_DO_MUNICIPIO = 38490

SELECT NOME_DO_FILIADO, SIGLA_DO_PARTIDO, CODIGO_DO_MUNICIPIO FROM filiadosPTC2023
WHERE SIGLA_DO_PARTIDO = 'PMDB'
-- Só para verificar a alteração 

--Atualize a sigla do partido PTC para PC para todos os filiados
--do município de “SANTANÓPOLIS”.
UPDATE filiadosPTC2023 SET SIGLA_DO_PARTIDO = 'PC'
WHERE NOME_DO_MUNICIPIO = 'SANTANÓPOLIS'

SELECT NOME_DO_FILIADO, SIGLA_DO_PARTIDO, CODIGO_DO_MUNICIPIO FROM filiadosPTC2023
WHERE NOME_DO_MUNICIPIO = 'SANTANÓPOLIS'

--Atualizar a sigla do partido PTC para PV e nome do Partido 
--trabalhista Cristão para Partido Verde dos Filiados do 
--município de “São Félix”.
UPDATE filiadosPTC2023 SET SIGLA_DO_PARTIDO = 'PV'
WHERE NOME_DO_MUNICIPIO = 'SÃO FÉLIX'
SELECT NOME_DO_FILIADO, SIGLA_DO_PARTIDO, CODIGO_DO_MUNICIPIO FROM filiadosPTC2023
WHERE NOME_DO_MUNICIPIO = 'SÃO FÉLIX'

--Atualizar a sigla do partido PTC para PSDB e nome do Partido 
--Trabalhista Cristão para Partido da Social Democracia Brasileira 
--de todos os filiados do município de “ENCRUZILHADA”.
UPDATE filiadosPTC2023 SET SIGLA_DO_PARTIDO = 'PSDB'
WHERE NOME_DO_MUNICIPIO = 'ENCRUZILHADA'
SELECT NOME_DO_FILIADO, SIGLA_DO_PARTIDO, CODIGO_DO_MUNICIPIO FROM filiadosPTC2023
WHERE NOME_DO_MUNICIPIO = 'ENCRUZILHADA'

--Atualize o nome do filiado: “JORGE LUIS FERREIRA DOS SANTOS” 
--para “JORGE LUIS MAGALHÃES DOS SANTOS
UPDATE filiadosPTC2023 SET NOME_DO_FILIADO ='JORGE LUIS MAGALHÃES DOS SANTOS'
WHERE NOME_DO_FILIADO = 'JORGE LUIS FERREIRA DOS SANTOS'

SELECT NOME_DO_FILIADO FROM filiadosPTC2023
WHERE NOME_DO_FILIADO LIKE 'JORGE LUIS%'



--Atualize o nome da filiada: “BENTA XAVIER RODRIGUES” para 
--“RENATA XAVIER RODRIG
UPDATE filiadosPTC2023 SET NOME_DO_FILIADO ='RENATA XAVIER RODRIGUES'
WHERE NOME_DO_FILIADO = 'BENTA XAVIER RODRIGUES'

SELECT NOME_DO_FILIADO FROM filiadosPTC2023
WHERE NOME_DO_FILIADO = 'RENATA XAVIER RODRIGUES'

--Atualize o nome do filiado: “NOE LEITE DA SILVA” para 
--“NOEL LEITE DA SILVA”
UPDATE filiadosPTC2023 SET NOME_DO_FILIADO ='NOEL LEITE DA SILVA'
WHERE NOME_DO_FILIADO = 'NOE LEITE DA SILVA'

SELECT NOME_DO_FILIADO FROM filiadosPTC2023
WHERE NOME_DO_FILIADO = 'NOEL LEITE DA SILVA'

--Mude a situação do registro de JOSIENE ANDRADE DE SOUZA 
--mude de JUB_JUDICE para REGULAR.
UPDATE filiadosPTC2023 SET NOME_DO_FILIADO ='NOEL LEITE DA SILVA'
WHERE NOME_DO_FILIADO = 'NOE LEITE DA SILVA'

--Mude a situação do registro de ELIEL ALMEIDA SILVA, 
--mude de DESFILIADO para REGULAR.

SELECT SITUACAO_DO_REGISTRO  FROM filiadosPTC2023
WHERE NOME_DO_FILIADO = 'ELIEL ALMEIDA SILVA'

UPDATE filiadosPTC2023 SET SITUACAO_DO_REGISTRO = 'REGULAR'
WHERE NOME_DO_FILIADO = 'ELIEL ALMEIDA SILVA'


--Mude a situação do registro de ALINE DE SOUZA, mude de 
--REGULAR para DESFILIADO.
UPDATE filiadosPTC2023 SET SITUACAO_DO_REGISTRO = 'DESFILIADO'
WHERE NOME_DO_FILIADO = 'ALINE DE SOUZA'
SELECT SITUACAO_DO_REGISTRO  FROM filiadosPTC2023
WHERE NOME_DO_FILIADO = 'ALINE DE SOUZA'

--Adicione à tabela o campo Sexo (com tipo char).
--    ALTER TABLE Nome_tabela ADD Nome_Coluna datatype
ALTER TABLE filiadosPTC2023 ADD SEXO CHAR(1)



SELECT * FROM filiadosPTC2023



