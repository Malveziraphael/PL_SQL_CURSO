

-------------------Mostrar curso no sql oracle--------------------------

DECLARE
   vValor NUMBER(8,2);
   Vnome VARCHAR2(30);
BEGIN
    SELECT nome, valor
    INTO vnome, vvalor
    FROM tcurso
    WHERE cod_curso = &cod_curso;

     Dbms_Output.Put_Line('Nome do curso: ' || upper(vnome));

     Dbms_Output.Put_Line('Valor do curso: ' || Trim(to_char(vvalor, 'l99g999d99')));


END;


SELECT * FROM tcurso


-------------------------------------------------------------------------

--Recuperando dados


DECLARE

  vdt_compra tcontato.data%TYPE;
  vdt_curso  tcontato.data%TYPE;

BEGIN
    SELECT data, data + 10
    INTO vdt_compra, vdt_curso
    FROM tcontato
    WHERE cod_contrato = &contrato;
    Dbms_Output.Put_Line('Data compra: ' ||  vdt_compra );
    Dbms_Output.Put_Line('Data curso: ' || vdt_curso  );


END;
     SELECT * FROM tcontato;

------------------------------------------------------------------------
      SELECT * FROM tcontato;

      SELECT Max(cod_contrato) FROM tcontato;

      CREATE SEQUENCE seq_contato START WITH 10;

      DECLARE
       vcod tcontato.cod_contrato%TYPE;
      BEGIN
         SELECT seq_contato.NEXTVAL
         INTO vcod FROM dual;

         INSERT INTO tcontato(cod_contrato, data,
          cod_aluno,  desconto)

          VALUES(vcod, SYSDATE, 2, NULL) ;

          Dbms_Output.Put_Line('Criando contrato: ' || Vcod );
      END;



-------------------------------------------------------------------------------
    SELECT * FROM tcurso


--Update com filtro de carga horaria

declare
  vvalor tcurso.valor%TYPE := &valor;
BEGIN
     UPDATE tcurso SET
     valor = valor + vvalor
     WHERE carga_horaria <= 25;
END;




-----------------------------------------------------------------------------------

--Delete com declare

DECLARE
   vcontrato tcontato.cod_contrato%TYPE := &cod_contrato;
BEGIN
   DELETE from tcontato WHERE cod_contrato = vcontrato ;
END;


SELECT * FROM tcontato



-----------------------------------------------------------------------------------

--Update de mais de uma linha, e demostra quantas linhas mudou

  DECLARE
      vcontrato NUMBER := &cod_contrato;
      vtexto VARCHAR2(50);
  BEGIN
      UPDATE tcontato SET
      desconto = desconto - 5
      WHERE cod_contrato >= vcontrato;

      vtexto := SQL%ROWCOUNT;


      Dbms_Output.Put_Line(vtexto || ' linhas atualizadas.' );
  END;


   SELECT * FROM tcontato



-----------------------------------------------------------------------------------

