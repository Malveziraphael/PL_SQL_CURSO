


CREATE TABLE tcidade (
       cod_cidade INTEGER NOT NULL,
       nome VARCHAR2(40),
       CONSTRAINT pk_cidade PRIMARY KEY(cod_cidade)
);



CREATE TABLE tbairro (
 cod_cidade INTEGER NOT NULL,
 cod_bairro INTEGER NOT NULL,
 nome VARCHAR2(40),
 CONSTRAINT pk_bairro PRIMARY KEY(cod_cidade, cod_bairro)
);




ALTER TABLE tbairro ADD CONSTRAINT fk_cod_cidade
FOREIGN KEY (cod_cidade)
REFERENCES tcidade(cod_cidade);


CREATE TABLE trua(
   cod_rua INTEGER NOT NULL,
   cod_cidade INTEGER,
   cod_bairro INTEGER,
   nome VARCHAR(40),
   CONSTRAINT pk_rua PRIMARY KEY (cod_rua)
);

ALTER TABLE trua
ADD CONSTRAINT fk_cidadebairro
FOREIGN KEY (cod_cidade, cod_bairro)
REFERENCES tbairro (Cod_cidade, cod_bairro);


CREATE TABLE tpessoa (
  cod_pessoa INTEGER NOT NULL,
  tipo VARCHAR2(1) NOT NULL,
  nome VARCHAR2(30) NOT NULL,
  pessoa VARCHAR2(1) NOT NULL,
  cod_rua INTEGER NOT NULL,
  cpf varchar2(15),
  CONSTRAINT pk_pessoa PRIMARY KEY (cod_pessoa)
 );


 ALTER TABLE tpessoa ADD CONSTRAINT  uk_cpf UNIQUE(cpf);


 ALTER TABLE tpessoa
 ADD CONSTRAINT fk_pessoa_rua
 FOREIGN KEY (COD_RUA)
 REFERENCES trua;


--Insert Cidade
 SELECT * FROM tcidade;

 INSERT INTO tcidade VALUES(&nextnumber, '&Nome_cidade');

--Insert Bairro
 SELECT * FROM tbairro

 INSERT INTO tbairro VALUES(&nextnumber,&cod_bairro ,'&Nome_bairro');

--Insert Rua
 SELECT * FROM trua

 INSERT INTO trua VALUES(&nextnumber,&cod_cidade ,&cod_bairro, '&nome_rua');


--Check


ALTER TABLE tpessoa ADD CONSTRAINT ck_pessoa_tipo
CHECK (tipo IN ('C','F'));

ALTER TABLE tpessoa ADD CONSTRAINT ck_pessoa_jk
CHECK (pessoa IN ('J','F'));


--Excluit constraint
ALTER TABLE tpessoa2 DROP CONSTRAINT nome_constraint;



--Insert pessoa

   SELECT * FROM tpessoa

 INSERT INTO tpessoa VALUES(&nextnumber,'&tipo' ,'&Nome_pessoa','&pessoa' , '&cpf', &cod_rua);


--Foreign key Drop
ALTER TABLE tpessoa2 DROP CONSTRAINT nome_da_constraint
CASCADE CONSTRAINT;


--Check

SELECT * FROM tcontato

ALTER TABLE tcontato
ADD CONSTRAINT ck_contrato_desconto
CHECK(desconto BETWEEN 0 AND 40);


--Habilitando e desabilitando constraint

ALTER TABLE tpessoa2 DISABLE CONSTRAINT uk_cpf;
ALTER TABLE tpessoa2 ENABLE CONSTRAINT Uk_cpf;


--Renemear uma constraint

ALTER TABLE tpessoa RENAME CONSTRAINT Nome_antigo_da_constraint TO Atual_nome_da_constraint


--Excluir constraint
ALTER TABLE tpessoa2
DROP CONSTRAINT uk_cpf
CASCADE CONSTRAINT;

SELECT * FROM user_constraints
WHERE table_name = 'tpessoa' ;

--Constraint e as colunas associadas
SELECT CONSTRAINT_name, column_name
FROM USER_cons_columns
WHERE TABLE_name = 'tpessoa';


--
SELECT object_name, object_type
FROM user_objects
WHERE Object_name IN ('tpessoa');


SELECT * FROM tpessoa;

COMMIT;