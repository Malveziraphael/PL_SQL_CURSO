
---Bloco anonimo de procedimentos/ procedure

  CREATE or REPLACE PROCEDURE aumenta_precurso(pcod_curso number)
   IS
   BEGIN
   UPDATE tcurso SET
   valor = valor * 1.1
   WHERE cod_curso = pcod_curso;
   END;



   SELECT * from tcurso;


   EXEC aumenta_precurso(3);


---- Com bloco anonimo

 DECLARE
    vcod INTEGER := &codigo;
 BEGIN
     aumenta_precurso(vcod);
 END;


---

  CREATE OR REPLACE PROCEDURE consulta_aluno
  (pcodigo IN taluno.cod_aluno%TYPE,   -- nao precisa ser declarada
   pnome  OUT taluno.nome%TYPE,  --Out precisa ser declarada dps em uma variavel
   pcep   OUT taluno.cep%TYPE,
   ppais  OUT taluno.pais%type
  ) IS

  BEGIN
     SELECT nome, cep, pais
     INTO   pnome, pcep, ppais
     FROM taluno
     WHERE cod_aluno = pcodigo;
 END;

 --Teste

 DECLARE
 vnome VARCHAR(30);
 vpais VARCHAR2(30);
 vcep VARCHAR(10);
 vcod INTEGER := &codigo;

 BEGIN
 consulta_aluno(Vcod, vnome, vcep, vpais) ;

 -- consulta_aluno(pcodigo => Vcod,
 --pnome => vnome,
 --pcep => vcep,
 --ppais => vpais) ;




 Dbms_Output.Put_Line(vcod);
 Dbms_Output.Put_Line(vnome);
 Dbms_Output.Put_Line(vcep);
 Dbms_Output.Put_Line(vpais);
 END;






-----

       SELECT * FROM family

       SELECT * FROM USER_procedures


     CREATE OR REPLACE PROCEDURE Talu (
        pid IN family.cod_family%TYPE,
        pnome out family.nome%TYPE,
        page out family.age%type
     )
     IS
     BEGIN
        SELECT   nome, age
        INTO    pnome , page
        FROM    family
        WHERE cod_family = pid;

     END;




      DECLARE
         vName VARCHAR2(40);
         vage NUMBER(8,2);
         vid NUMBER(8,2) := &id  ;
      BEGIN
           Talu(vid, vname, vage);


          Dbms_Output.Put_Line(vid ||' - ' ||vname || ' - ' ||vage  );

      END;















