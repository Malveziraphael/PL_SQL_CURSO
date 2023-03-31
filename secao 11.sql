
SELECT * FROM taluno;


--Criar uma view
  CREATE OR REPLACE VIEW v_aluno
  AS SELECT cod_aluno AS codigo, salario, estado,
  nome AS aluno, pais
  FROM taluno
  WHERE estado ='Sp';


--Select em uma view
SELECT * FROM v_aluno
ORDER BY aluno;


--
CREATE OR REPLACE VIEW V_contato_top
AS
 SELECT cod_contrato, desconto
 FROM tcontato
 WHERE desconto > 20;

 SELECT * FROM v_contato_top


--Visualizar as views no usuario em geral

SELECT VIEW_name, text -- Text mostra as codigos internos dentro das views
FROM USER_views;


--

SELECT * FROM taluno


--View com parametros

CREATE OR REPLACE VIEW v_aluno2(cod, aluno, sal)
AS
   SELECT cod_aluno, nome, salario
   FROM taluno;

SELECT * FROM V_aluno2



--View complexa

SELECT * FROM tcontato


CREATE OR REPLACE VIEW V_contato2
AS  SELECT trunc(data) Data_Contrato,
           Max(desconto) Maximo_desconto,
           Avg(desconto) Media_desconto,
           Count(*) QTDE
           FROM tcontato
           GROUP BY Trunc(data);

  SELECT * FROM v_contato2


--VIew simples

CREATE OR REPLACE VIEW V_pessoa_f
AS
SELECT cod_pessoa, tipo, nome, cod_rua AS rua
FROM tpessoa
WHERE tipo ='F';

SELECT * FROM V_pessoa_f


--Exemplo de consulta usando view e tabela

SELECT pes.cod_pessoa AS codigo,
pes.nome AS pessoa,
cid.nome AS cidade,
rua.nome AS RUA

FROM v_pessoa_f pes, trua rua, tcidade cid
WHERE pes.rua = rua.cod_rua (+)
AND cid.cod_cidade = rua.Cod_cidade
ORDER BY pes.nome;

--Mesma coisa, porem com Bairro incluido

SELECT * FROM tbairro

SELECT pes.cod_pessoa AS codigo,
pes.nome AS pessoa,
cid.nome AS cidade,
bai.nome AS Bairro,
rua.nome AS RUA


FROM v_pessoa_f pes, trua rua,tbairro bai, tcidade cid
WHERE pes.rua = rua.cod_rua (+)
AND cid.cod_cidade = rua.Cod_cidade
AND rua.cod_cidade = bai.cod_cidade
ORDER BY pes.nome;



    commit


