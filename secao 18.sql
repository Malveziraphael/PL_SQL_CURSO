
--Cursor

    DECLARE
           vcod_aluno taluno.cod_aluno%TYPE;
           vnome taluno.nome%TYPE;
           CURSOR c1 IS    --Semelhante a uma view
           SELECT cod_aluno, nome
           FROM taluno;
    BEGIN
         OPEN c1;
         LOOP
         FETCH c1 INTO vcod_aluno, vnome;
         EXIT WHEN c1%rowcount > 10 OR c1%NOTFOUND;
         Dbms_Output.Put_Line('Codigo: ' ||
         LPad(vcod_aluno,4,'0') || ' - ' || 'Nome: ' || vnome );
         END LOOP;
    END;


---Cursor com Record

       DECLARE
         CURSOR c1 IS
         SELECT * FROM taluno;
         cum c1%ROWTYPE; -- Record
       BEGIN
           OPEN c1;
               LOOP
               FETCH c1 INTO cum;
               EXIT WHEN c1%ROWCOUNT > 10 OR c1%NOTFOUND;
                  Dbms_Output.Put_Line('Codigo: ' ||
                   LPad(cum.cod_aluno,4,'0') || ' - ' || 'Nome: ' || cum.nome );

               END LOOP;
           CLOSE c1;
        END;


---Melhor maneira de fazer laco com loop, Cursor, Record, for , loop

DECLARE
     CURSOR c1 IS
     SELECT * FROM taluno;

     reg taluno%ROWTYPE;
BEGIN
  FOR reg IN c1
  LOOP
  Dbms_Output.Put_Line('Codigo: ' || LPad(reg.cod_aluno,4,'0')
  || ' - ' || 'Nome : ' || reg.nome);
  END LOOP;

END;



---Select no for

DECLARE
      reg taluno%ROWTYPE;
BEGIN
     FOR reg IN (SELECT * FROM taluno)
     LOOP Dbms_Output.Put_Line('Codigo: ' ||
     LPad(reg.cod_aluno,4,'0') || ' - ' ||
     'Nome: ' || reg.nome || ' - ' ||
     'Salario: ' || Trim(To_Char(reg.salario, 'l99g999d99')) );
     END LOOP;
END;



---

DECLARE
      CURSOR c1(pcod_aluno number) IS
      SELECT * FROM taluno
      WHERE cod_aluno = pcod_aluno
      FOR UPDATE OF nome NOWAIT;

      reg c1%ROWTYPE;
BEGIN
      OPEN c1(&codigo);
      FETCH c1 INTO reg;
      Dbms_Output.Put_Line('Codigo: ' ||
     LPad(reg.cod_aluno,4,'0') || ' - ' ||
     'Nome: ' || reg.nome || ' - ' ||
     'Salario: ' || Trim(To_Char(reg.salario, 'l99g999d99')) );
      CLOSE c1;

END;


--- Outro jeito de fazer, Mais facil


DECLARE
      CURSOR c1 IS
      SELECT * FROM taluno
      WHERE cod_aluno = 3;

      reg c1%ROWTYPE;
BEGIN
      OPEN c1;
      FETCH c1 INTO reg;
      Dbms_Output.Put_Line('Codigo: ' ||
     LPad(reg.cod_aluno,4,'0') || ' - ' ||
     'Nome: ' || reg.nome || ' - ' ||
     'Salario: ' || Trim(To_Char(reg.salario, 'l99g999d99')) );
      CLOSE c1;

END;



---Update No Bloco anonoimo com cursor, record

   DECLARE
        CURSOR c1 IS SELECT pais FROM taluno FOR UPDATE;

        reg c1%ROWTYPE;
   BEGIN
      FOR reg IN c1
      LOOP
      UPDATE taluno
      SET pais = initcap(reg.pais)
      WHERE CURRENT OF c1;
       Dbms_Output.Put_Line('Pais: ' || reg.pais);
      END LOOP;
      COMMIT;
   END;

    SELECT * from  taluno