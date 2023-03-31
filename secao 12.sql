

CREATE SEQUENCE sclientes_id
START WITH 60
--Qtde a adicionar
INCREMENT BY 5
--Valor minimo
MINVALUE 60
--Valor maximo
MAXVALUE 100
--Nao guarda em cache faixa de valor 20
NOCACHE

NOCYCLE;

--Visualizar sequencias no usuario

SELECT * FROM user_sequences

--drop sequence

DROP SEQUENCE seq_aluno




--

SELECT * FROM taluno

CREATE INDEX in_taluno_nome ON taluno(nome);

SELECT nome
FROM taluno
WHERE nome LIKE '%A%';

--

CREATE INDEX ind_taluno_nomecidade ON taluno(nome, pais);

SELECT nome, pais
FROM taluno
WHERE nome LIKE 'A%a' AND PAIS LIKE 'B%l';


--Visualizar index

SELECT * FROM user_indexes

--Drop index

DROP INDEX ind_taluno_nomecidade


--Criar apelido para tabelas

CREATE SYNONYM alu FOR taluno;











