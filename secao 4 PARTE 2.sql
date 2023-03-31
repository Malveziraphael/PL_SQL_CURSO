




   SELECT * FROM TALUNO;



   SELECT TO_CHAR(SYSDATE, 'YYYY') FROM DUAL ;

    UPDATE TALUNO SET SALARIO = Trim(To_Char(SALARIO, 'L99G999D99'));

    SELECT Trim(To_Char(SALARIO, 'L99G999D99')) SALARIO FROM TALUNO;





    SELECT * FROM TCONTATO;

    UPDATE TCONTATO SET DESCONTO = NULL WHERE COD_ALUNO = 3;

    ALTER TABLE TCONTATO RENAME COLUMN DESCONT0 TO DESCONTO;


    SELECT TOTAL, DESCONTO,  TOTAL + DESCONTO, Nvl(DESCONTO, 0) , Nvl(DESCONTO, 0) + TOTAL , Nvl2(DESCONTO, TOTAL, -1) RETORNO_DE_VALORES FROM TCONTATO;


    UPDATE TALUNO SET NOME = NULL WHERE COD_ALUNO = 7;

    SELECT Nvl(NOME, 'SEM NOME') NOMES FROM TALUNO;


     SELECT Nvl(NOME, 'SEM NOME'),
     pais,
     CASE
     WHEN pais = INITCAP('CALIFORNIA') THEN InitCap('Californiano' )
     WHEN pais = INITCAP('TAUBATE') THEN InitCap('TAUBATEANO')
     ELSE InitCap('OUTROS')
     END AS APELIDO
     FROM TALUNO;


     SELECT * FROM carros;

     SELECT model_name, Nvl(model_age, 0), price,
     CASE
     WHEN price >= 100 THEN 'Carro de luxo'
     WHEN price <= 99 THEN 'Carro casual'
     ELSE 'Outros'
     END as abordagem
     FROM carros;





     SELECT model_name Nome, Nvl(model_age, 0) AS ANo,To_Char(price, 'l99g999d999') AS price,
     CASE
     WHEN price BETWEEN 701 AND 5000 THEN 'Carro de colecionador'
     WHEN price between 351 AND 700 THEN 'Carro de celebridades'
     WHEN price between 201 AND 350 THEN 'Carro de luxo'
     WHEN price BETWEEN 100 AND 200 THEN 'Carro esportivo'
     WHEN price <= 99 THEN 'Carro casual'
     ELSE 'Outros'
     END as abordagem
     FROM carros;



      SELECT * FROM carros WHERE model_name LIKE Upper('C%')







    COMMIT;