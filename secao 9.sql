

 SELECT * FROM tcontato;
 SELECT * FROM tcontato_vip;

 CREATE TABLE tcontato_vip
 AS SELECT * FROM tcontato WHERE total > 500;

--adicionar uma coluna
ALTER TABLE tcontato_vip ADD valor NUMBER(5,2);
--editar valor interno na coluna
ALTER TABLE tcontato_vip MODIFY valor NUMBER(8,2);
--editar valor interno na tabela
ALTER TABLE tcontato_vip MODIFY valor NUMBER(12,2) DEFAULT 0;
--renomear nome da coluna
ALTER TABLE tcontato_vip RENAME COLUMN valor TO valor2;
--excluir uma coluna
ALTER TABLE tcontato_vip DROP COLUMN valor2;
--excluir uma tabela
DROP TABLE tcontato_vip;


--Renomear tabela
SELECT * FROM work_job

RENAME WORK TO work_job;

--comentario na tabela

SELECT * FROM tcontato

COMMENT ON TABLE tcontato IS 'Informacao de contrato' ;

COMMENT ON column tcontato.data IS 'Data e hora exata quando contratado';

COMMENT ON COLUMN tcontato.desconto IS 'O desconto definido'


--Ver o comentario na tabela
SELECT * FROM USER_COL_COMMENTS WHERE TABLE_NAME='TCONTATO';

SELECT * FROM USER_TAB_COMMENTS WHERE TABLE_NAME='TCONTATO';



--desabilitar uma coluna

ALTER TABLE tcontato ADD total2 NUMERIC(8,2);

ALTER TABLE tcontato SET unused (total2) ; -- Unused

SELECT * FROM tcontato

--Excluir tabelas nao usadas

ALTER TABLE tcontato DROP unused COLUMNS


--Truncate apaga literamente tudo
TRUNCATE TABLE TABLE -- Ele exclui tudo para sempre;

 commit