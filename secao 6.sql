


               SELECT * FROM TCONTATO;


               SELECT * FROM TITEM;



               SELECT * FROM TALUNO;

               SELECT Trim(Count(*)) REGISTROS,
               Trim(Round(Avg(TOTAL),2)) MEDIA,
               Trim(Min(TOTAL)) MINIMO,
               Trim(Max(TOTAL)) MAXIMO,
               Trim(Sum(TOTAL)) TOTAL,
               Trim(Min(To_Char(DATA, 'HH24:MI:SS'))) HORA_MINIMA ,
               Trim(Max(To_Char(DATA, 'HH24:MI:SS'))) HORA_MAXIMA

               FROM TCONTATO;


               SELECT COD_ALUNO,
               Count(*) REGISTROS,
               Sum(TOTAL) QDTA_CONTRATADO
               FROM TCONTATO
               GROUP BY COD_ALUNO;

               SELECT To_Char(Trunc(DATA), 'DD/MM/YYYY') DATA,
               Sum(TOTAL) SOMA,
               Avg(TOTAL) MEDIA,
               Count(*) QTDE
               FROM TCONTATO
               GROUP BY Trunc(DATA)
               ORDER BY DATA DESC;




               SELECT * FROM CARROS;



               SELECT MODEL_NAME, MODEL_AGE ,
               Count(*) REGISTROS,
               Max(PRICE) PRECO_MAXIMO,
               Min(PRICE) PRECO_MINIMO
               FROM CARROS
               GROUP BY MODEL_NAME, MODEL_AGE, COD_CAR
               ORDER BY COD_CAR;


               SELECT COD_ALUNO,
               Count(*) REGISTROS,
               Avg(PRICE) MEDIA,
               SUM(PRICE) SOMA
               FROM CARROS
               GROUP BY COD_ALUNO
               ORDER BY COD_ALUNO;



               SELECT * FROM TCONTATO;


               SELECT Count(desconto)
               FROM tcontato;

               SELECT Count(estado) FROM taluno;

               SELECT * FROM taluno

               SELECT Count(DISTINCT(estado)) FROM taluno;    // filtra um tipo de registro por vez

               SELECT estado, count(*)
               FROM taluno
               GROUP BY estado;

               SELECT Sum(desconto) AS Soma_desconto,
               Avg(desconto) as Media_desconto,
               Count(Nvl(desconto, 0)) as Registros_geral,
               Count(desconto) AS Registros_validos,
               Round(Avg(Nvl(desconto, 0)),2) as MEDIA_EXATA
               FROM tcontato;

               SELECT Count(*), min(data), Sum(desconto) AS total_desconto,
               rouAvg(Nvl(desconto, 0)) AS Media_desconto

               FROM tcontato ;

               SELECT * FROM tcontato;



               SELECT alu.estado,
               Sum(con.total) AS Total,
               Count(*) AS  QNTD
               FROM  taluno alu, tcontato con
               WHERE alu.cod_aluno = con.cod_aluno
               GROUP BY alu.estado
               ORDER BY alu.estado;



               SELECT COD_ALUNO, Avg(Nvl(total, 0)) Media
               FROM tcontato
               WHERE cod_aluno > 0  HAVING Avg(total) > 500
               GROUP BY COD_ALUNO


               SELECT Max(Avg(TOTAL))
               FROM TCONTATO
               GROUP BY COD_ALUNO;

               SELECT ESTADO, Sum(SALARIO) AS TOTAL
               FROM TALUNO
               GROUP BY ESTADO
               ORDER BY 2 DESC;


               SELECT * FROM taluno;

               SELECT nome, pais, salario
               FROM taluno
               WHERE salario > 0
               GROUP BY nome, pais, salario
               HAVING salario > (SELECT salario FROM taluno WHERE cod_aluno = 1);





