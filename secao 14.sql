
--bloco anonimo
DECLARE
  x INTEGER;
  y INTEGER;
  c INTEGER;
            BEGIN
            x := 70;
            y := 20;
            c := x + y;
            Dbms_Output.put_line('Resultado: '||c);
            END;


-----


DECLARE
   vdesconto NUMBER (6,2) := 0.50;
   vpais VARCHAR(30) := 'Brasil';
   vcod_aluno taluno.cod_aluno%TYPE := 5;
   vtotal NUMBER(8,2) := 1345.89;
   BEGIN
   vtotal := Round(vtotal * vdesconto, 2 );
   Dbms_Output.Put_Line('Total: '|| vtotal );
   vdesconto := 1.20;
   vpais := InitCap(vpais);
   Dbms_Output.Put_Line('Pais: ' || vpais);
   Dbms_Output.Put_Line('Desconto: ' || vdesconto);
   Dbms_Output.Put_Line('Aluno: ' || vcod_aluno );
END;

-----


   DECLARE
    vprice NUMBER(5,2) := 3;
    vprice1 NUMBER(5,2) := 21;
    vflag BOOLEAN;
   BEGIN

   vflag := (vprice > vprice1);
   IF (vflag = true)
   then Dbms_Output.Put_Line('Verdadeiro');
   ELSE Dbms_Output.Put_Line('Falso');
   END if;

   IF(vprice > vprice1)
   then Dbms_Output.Put_Line('Vprice e maior que Vprice1');

   ELSE Dbms_Output.Put_Line('Vprice1 e maior que Vprice');
    END if;

   eND;


-----



   DECLARE
      pessoa1 NUMBER(8,2) := 45;
      pessoa2 NUMBER(8,2) :=  32;
      --pessoa3 NUMBER(8,2) := 26;
      vtotal INTEGER;
      vresu BOOLEAN;

   BEGIN
         vtotal := pessoa1 + pessoa2;
         vresu := pessoa1 > pessoa2;

         IF(vresu = true)
         THEN Dbms_Output.Put_Line('Pessoa1 e maior que pessoa2');
         ELSE Dbms_Output.Put_Line('Pessoa2 e maior que pessoa1');
         END IF;


         Dbms_Output.Put_Line('Total: ' || vtotal);

   END;



-----Dois declare

   DECLARE
        vteste VARCHAR2(10) := 'Jose';

   BEGIN


        DECLARE
        vteste VARCHAR(10) := 'Pedro';
         BEGIN
          Dbms_Output.Put_Line(vteste);
         END;



         Dbms_Output.Put_Line(vteste);
   END;


--Obs o declare de dentro consegue puxar info de fora,
--porem o de fora nao consegue puxar info de dentro




