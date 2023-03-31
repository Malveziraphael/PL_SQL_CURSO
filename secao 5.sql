

           SELECT * FROM taluno;
           SELECT * FROM tcontato;
           SELECT * FROM carros;
           SELECT * FROM titem;
           SELECT * FROM tcurso;



           SELECT taluno.cod_aluno, taluno.nome, tcontato.total , Nvl(tcontato.desconto, 0) desconto
           FROM taluno, tcontato
           WHERE taluno.cod_aluno = tcontato.cod_aluno

           UPDATE taluno SET nome = 'Gabriel' WHERE cod_aluno = 7;


           SELECT alu.cod_aluno,
           Nvl(alu.nome, 'Sem nome') as Nome,
           con.total, Nvl(con.desconto, 0)desconto ,
           car.model_name Carro,
           car.price,
           cu.nome Curso

           FROM taluno alu, tcontato con, carros car, titem it, tcurso cu
           WHERE alu.cod_aluno = con.cod_aluno(+)
           and alu.cod_aluno = car.cod_aluno
           AND it.cod_contrato = con.cod_aluno
           AND it.cod_curso = cu.cod_curso
           ORDER BY alu.cod_aluno
           ;

           SELECT alu.cod_aluno,
           Nvl(alu.nome, 'Sem nome') Nome,
           Nvl(con.total, 0) Total,
           Nvl(con.desconto, 0) Desconto,
           Nvl(car.model_name, 'Sem nome') Nome_Do_carro,
           Nvl(car.price,' 0') Preco,
           Nvl(ite.cod_curso, 0) Numero_curso,
           Nvl(cur.nome, 'Sem curso') Curso ,
           Nvl(cur.valor, '0') Valor_Do_curso


           FROM taluno alu, tcontato con, titem ite, tcurso cur, carros car
           WHERE alu.cod_aluno = con.cod_aluno(+)
           AND con.cod_contrato = ite.cod_contrato(+)
           AND ite.cod_curso = cur.cod_curso(+)
           AND alu.cod_aluno = car.cod_aluno(+)  ;


           CREATE TABLE tdesconto (
               classe VARCHAR2(1) PRIMARY KEY,
               inferior NUMBER(4,2),
               superior NUMBER(4,2) );

           INSERT INTO tdesconto VALUES('A', 0 , 10);
           INSERT INTO tdesconto VALUES('B', 11, 15);
           INSERT INTO tdesconto VALUES('C', 16, 20);
           INSERT INTO tdesconto VALUES('D', 21, 25);
           INSERT INTO tdesconto VALUES('E', 26, 30);
           INSERT INTO tdesconto VALUES('F', 31, 50);


           SELECT * FROM tdesconto;

           UPDATE tcontato SET desconto = 14 WHERE cod_contrato = 2;


           SELECT con.cod_contrato, Nvl(con.desconto, 0) Desconto , des.classe Classe
           FROM tcontato con, tdesconto des
           WHERE con.desconto BETWEEN des.inferior AND des.superior;


           UPDATE tcontato SET desconto = 0 WHERE cod_aluno = 3;

           SELECT DISTINCT alu.nome, con.desconto
           FROM tcontato con, taluno alu
           WHERE con.cod_contrato = alu.cod_aluno
           ORDER BY alu.nome
              ;


           SELECT alu.nome, con.desconto
           FROM tcontato con, taluno alu
           WHERE con.cod_contrato = alu.cod_aluno
           ORDER BY alu.nome;



           SELECT * FROM tcurso  ;



           UPDATE tcurso SET pre_req = 7  WHERE cod_curso = 2;

           SELECT cur.nome Cursos, req.nome Requisitos
           FROM tcurso cur, tcurso req
           where cur.pre_req = req.cod_curso(+);


           commit;
