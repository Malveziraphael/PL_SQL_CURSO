
--Exececoes = Erros

   DECLARE
   BEGIN
   EXCEPTION
   END;

   Raise_Application_Error(-20003,'' || ' ' ||sqlerrm);

---


   DECLARE
       vcod taluno.cod_aluno%TYPE := &cod;
       vpais taluno.pais%TYPE;
       x NUMBER;
   BEGIN
       SELECT pais
       INTO vpais
       FROM taluno
       WHERE cod_aluno = vcod;
    -- x := 0 /0;
       Dbms_Output.Put_Line('Codigo: '|| vcod || ' - ' || 'Pais: ' || vpais);
   EXCEPTION
        WHEN No_Data_Found then
        Raise_Application_Error(-20001,'Aluno inexistesnte' || ' ' ||sqlerrm);
        WHEN Too_Many_Rows then
        Raise_Application_Error(-20002,'Registro duplicado'||sqlcode||' ' ||sqlerrm);
        WHEN OTHERS THEN
        Raise_Application_Error(-20003,'Erro sem registro' || ' ' ||sqlerrm);
   END;



---


  CREATE TABLE contas (
      codigo INTEGER NOT NULL PRIMARY KEY,
      Valor NUMBER(10,2),
      Juros NUMBER(10,2),
      Vencimento DATE
  );

    INSERT INTO contas VALUES(100, 550, 50, SYSDATE -10);

    SELECT * from contas;

    COMMIT;


 SAVEPOINT Conta_date;

 ROLLBACK ;

  DECLARE
      vdt_vencimento DATE;
      vconta NUMBER := 100;
      econta_vencida EXCEPTION;
  BEGIN
      SELECT vencimento INTO vdt_vencimento
      FROM contas WHERE codigo = vconta;

      IF vdt_vencimento < Trunc(SYSDATE) THEN
      RAISE econta_vencida;
      END IF;

  EXCEPTION
      WHEN econta_vencida THEN
      Dbms_Output.Put_Line('Conta vencida');
      UPDATE contas SET valor = valor + juros
      WHERE codigo = vconta;


  END;


     SELECT * FROM contas




----

   DECLARE
      efk_ines EXCEPTION;
      PRAGMA EXCEPTION_INIT (efk_ines, -02291);
   BEGIN
      INSERT INTO tbairro VALUES(100, 100, 'ERRO');
   EXCEPTION
      WHEN efk_ines THEN
      Raise_Application_Error(-20004,'Cidade Nao existe');
   END;



---
       DROP PROCEDURE pret


       CREATE OR REPLACE PROCEDURE pret (
         regis IN OUT taluno%ROWTYPE

       )   ;
       IS

       CURSOR c1 IS SELECT * FROM taluno WHERE cod_aluno = regis.cod_aluno;

       BEGIN
           OPEN c1;
           FOR regis IN c1
           LOOP
             Dbms_Output.Put_Line('Nome: ' || regis.nome  ||);

           END LOOP;
           CLOSE c1;

       END;