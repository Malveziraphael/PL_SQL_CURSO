
-- record

   DECLARE
     TYPE rec_aluno IS RECORD (
       cod_aluno NUMBER NOT NULL := 0,
       nome taluno.nome%TYPE,
       pais taluno.pais%type
     );

     Registro rec_aluno;
   BEGIN
    Registro.cod_aluno := 50;
    registro.nome      := 'Master';
    registro.pais      := 'Novo hamburgo';
    Dbms_Output.Put_Line('Codigo: ' || registro.cod_aluno);
    Dbms_Output.Put_Line(' Nome: ' || registro.nome);
    Dbms_Output.Put_Line(' Pais: ' || registro.pais);

   END;



 ---


   DECLARE
     reg taluno%ROWTYPE;
     vcep VARCHAR2(10) := '983000';
   BEGIN
        SELECT cod_aluno, nome, pais, salario
        INTO reg.cod_aluno, reg.nome, reg.pais, reg.salario
        FROM taluno
        WHERE cod_aluno = 7;

        reg.cep := '93500000';

        Dbms_Output.Put_Line('Codigo: ' || reg.cod_aluno);
        Dbms_Output.Put_Line('Nome: ' || reg.nome);
        Dbms_Output.Put_Line('Pais: ' || reg.pais);
        Dbms_Output.Put_Line('Cep: ' || reg.cep);
        Dbms_Output.Put_Line('Salario : ' || reg.salario);

   END;





 ----

 DECLARE
  TYPE t_aluno IS TABLE OF taluno.nome%TYPE
  INDEX BY BINARY_INTEGER;

  registro t_aluno;
 BEGIN
  registro(1) := 'Marcio';
  registro(2) := 'Jose';
  registro(3) := 'Pedro';
  Dbms_Output.Put_Line('Nome: ' || registro(1));
  Dbms_Output.Put_Line('Nome: ' || registro(2));
  Dbms_Output.Put_Line('Nome: ' || registro(3));

 END;


  ---

   DECLARE
   TYPE nome_type IS TABLE OF taluno.nome%TYPE;
   nome_table nome_type := nome_type(); -- Criando Instancia
   BEGIN
   nome_table.extend;
   nome_table(1) := 'Pedro';
   nome_table.extend;
   nome_table(2) := 'Lucas';

    Dbms_Output.Put_Line('Nome1: ' || nome_table(1));
    Dbms_Output.Put_Line('Nome2: ' || nome_table(2));

   END;


   ---

   DECLARE
   TYPE tipo IS TABLE OF VARCHAR2(30) INDEX BY VARCHAR2(2);
   uf_capital tipo;
   BEGIN
   uf_capital('Rs') := 'Porto Alegre';
   uf_capital('Rj') := 'Rio de Janeiro';
   uf_capital('Pr') := 'Curitiba';
   uf_capital('Mt') := 'Cuiaba';
   Dbms_Output.Put_Line( uf_capital('Rs'));
   Dbms_Output.Put_Line( uf_capital('Rj'));
   Dbms_Output.Put_Line( uf_capital('Pr'));
   Dbms_Output.Put_Line( uf_capital('Mt'));

     END;


  ----

  DECLARE
  TYPE nome_varray IS varray(5) OF taluno.nome%TYPE;
  nome_vetor nome_varray := nome_varray();
  BEGIN
  nome_vetor.extend;
  nome_vetor(1) := 'Marcio';
  nome_vetor.extend;
  nome_vetor(2) := 'Lucas';
  nome_vetor.extend;
  nome_vetor(3) := 'jaime';
  Dbms_Output.Put_Line(nome_vetor(1));
  Dbms_Output.Put_Line(nome_vetor(2));
  Dbms_Output.Put_Line(nome_vetor(3));
  END;