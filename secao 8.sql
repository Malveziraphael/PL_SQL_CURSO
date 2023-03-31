


SELECT * FROM taluno

INSERT INTO taluno VALUES(seq_aluno.NEXTVAL, '&nome', '&pais', &cep, &age, &salario, '&estado')

DELETE carros WHERE cod_car = &car  ;


UPDATE carros SET
 model_name = '&name',
 model_age = &age,
 tank_fuel = &tank,
 km = &km,
 price = &price,
 cod_aluno = &codaluno
 WHERE cod_car = &codcar


--Ponto de salvamento que voce pode fazer antes de criar ou editar algo complexo
 SAVEPOINT asd:

--Requerimento para voltar para o save anterior
ROLLBACK TO SAVEPOINT asd

 --Excluir tabelas
 DROP TABLE carros;
 commit