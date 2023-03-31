

      SELECT * FROM taluno ;


      SELECT Concat(nome, cidade) FROM taluno;


      SELECT InitCap(nome) FROM taluno;


      SELECT InitCap(nome), InStr(nome, Upper( 'm')) FROM taluno;


      SELECT InitCap(nome), Length(nome)  FROM taluno;

      SELECT nome, Lower(nome) FROM taluno;

      SELECT nome, Upper(nome) FROM taluno;


      UPDATE taluno SET nome = InitCap(nome), cidade = InitCap(cidade) ;

       SELECT LPad(cod_aluno, 5 , '0') FROM taluno;

       SELECT RPad(cod_aluno, 5, '0') FROM taluno;

       UPDATE taluno SET nome = RPad(nome,8 ,InitCap(' lucas')) WHERE cod_aluno = 1;

        SELECT nome, Length(nome) FROM taluno;

        UPDATE taluno SET nome = 'Marcio Lucas' WHERE cod_aluno = 1;


        SELECT SubStr(nome, 1, 3) FROM taluno;

        SELECT REPLACE(nome, 'm', 's') FROM taluno;

       SELECT Length(nome) FROM taluno;

       SELECT * FROM taluno;

        SELECT nome, SubStr(nome, Length(nome) -1,2) FROM taluno;

        SELECT * FROM TALUNO WHERE upper(SubStr(cidade, 1, 2)) = Upper('ca');


        ALTER TABLE TALUNO ADD SALARIO NUMBER(8,2) DEFAULT 1240.00;

       UPDATE TALUNO SET SALARIO = 1250.467 WHERE COD_ALUNO = 2;

      SELECT * FROM TALUNO WHERE Round(SALARIO, 5);

      SELECT Round(SALARIO, 1) FROM TALUNO;        //  Round ARREDONDA PARA CIMA

      SELECT Trunc(SALARIO, 1) FROM TALUNO;        // Trunc ARRENDONDA PARA BAIXO

       SELECT Mod(10, 4) FROM DUAL;



