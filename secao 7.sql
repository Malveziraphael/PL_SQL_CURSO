


  SELECT * FROM taluno;

  SELECT nome, pais, salario
  FROM taluno
  WHERE salario > 0
  GROUP BY nome, pais, salario
  HAVING salario >= (SELECT salario FROM taluno WHERE cod_aluno = 2)

  SELECT * FROM carros;

  SELECT km,
  Avg(model_Age) Media_age,
  Avg(price) AS Media_price,
  Count(cod_aluno) as Qntd
  FROM carros
  GROUP BY km

  SELECT model_name,
  Avg(model_Age) Media_age,
  Avg(price) AS Media_price,
  Count(cod_aluno) as Qntd
  FROM carros
  WHERE price > 0
  GROUP BY model_name
  HAVING Avg(price) >= (SELECT Avg(total) FROM tcontato)

  SELECT * FROM tcontato;

  SELECT Avg(total) FROM tcontato

  SELECT * FROM tcurso

  SELECT cod_aluno, Min(total), Sum(total)
  FROM tcontato
   WHERE total > 0
  GROUP BY cod_aluno
  HAVING Min(total) >= (SELECT Round(Avg(valor)) FROM tcurso)

  SELECT cod_curso, nome, valor
  FROM tcurso
  WHERE cod_curso IN (SELECT cod_curso FROM titem)

  SELECT * FROM titem

  SELECT cod_curso, nome, valor
  FROM tcurso
  WHERE cod_curso not IN (SELECT cod_curso FROM titem)

  SELECT cod_curso, nome, valor
  FROM tcurso
  WHERE cod_curso IN (4, 6 );

  SELECT cod_curso, valor FROM tcurso WHERE valor <= 400;


  SELECT * FROM taluno

  SELECT cod_aluno, nome, pais, estado
  FROM taluno
  WHERE (InitCap(pais), estado) = ( SELECT pais, estado FROM taluno WHERE cod_aluno = 1)

  AND cod_aluno <> 1;

  SELECT ite.cod_contrato, ite.valor, ite.cod_curso, cur.cod_curso, cur.valor
  FROM titem ite,
  ( SELECT cod_curso, valor FROM tcurso WHERE valor > 500) cur
  WHERE cur.cod_curso = ite.cod_curso
  AND ite.valor >= 500










