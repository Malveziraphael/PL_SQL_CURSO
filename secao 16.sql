


--------------------------------------------------------------------------------------------------------------------
--If else declare

DECLARE
    vnome VARCHAR2(30);
    vcidade VARCHAR2(30);
    vestado VARCHAR2(2) := 'Sp';
BEGIN
    IF (vnome = 'Gaucho')
    THEN vcidade := 'Porto Alegre';
    vestado := 'Rs';

    ELSE if (vnome = 'Carioca') then
    vcidade := 'Rio de Janeiro';
    vestado := 'Rj';

    ELSE
       IF(vestado = 'Sp') THEN
        vcidade := 'Sao paulo';
        vestado := 'Sp';

        ELSE
           vcidade := 'Outros';
           vestado := 'Outros';

           END IF;
           end IF;
             end IF;

           Dbms_Output.Put_Line(vcidade ||' - ' ||vestado);


END;



--------------------------------------------------------------------------------------------------------------------





DECLARE
    vnome VARCHAR2(30) := 'Cariocaa';
    vcidade VARCHAR2(30);
    vestado VARCHAR2(2);
BEGIN
    IF (vnome = 'Gaucho')
    THEN vcidade := 'Porto Alegre';
    vestado := 'Rs';

    ELSE if (vnome = 'Carioca') then
    vcidade := 'Rio de Janeiro';
    vestado := 'Rj';

    ELSE IF(vestado = 'Sp') THEN
        vcidade := 'Sao paulo';
        vestado := 'Sp';

     ELSE  vnome := 'Outros'  ;
           vcidade := 'Outros';
           vestado := 'xx';

           END IF;
           end IF;
            end IF;



           Dbms_Output.Put_Line(vcidade ||' - ' ||vestado);


END;






--------------------------------------------------------------------------------------------------------------------

       DECLARE
            vcidade VARCHAR2(40);
            vestado VARCHAR2(2) := 'Rj';
       BEGIN
          CASE
            WHEN vestado = 'Sp' THEN vcidade := 'Sao paulo' ;
            WHEN vestado = 'Rj' THEN vcidade := 'Rio de Janeiro' ;
            WHEN vestado = 'Rs' THEN vcidade := 'Porto Alegre'   ;

            ELSE vcidade := 'outros';

            END CASE;

            Dbms_Output.Put_Line(vcidade || ' - ' || vestado);
       END;




--------------------------------------------------------------------------------------------------------------------

--Loop with declare


DECLARE
  vcontador INTEGER := 0;
BEGIN
   LOOP
    vcontador := vcontador +1;
    Dbms_Output.Put_Line(vcontador);
    EXIT WHEN vcontador = 10;
    END loop;
    Dbms_Output.Put_Line('Fim do loop');

END;


--------------------------------------------------------------------------------------------------------------------

DECLARE
 vcontadot INTEGER;
BEGIN
 FOR vcontador IN 1..10
 LOOP
  Dbms_Output.Put_Line(vcontador);
 -- EXIT WHEN vcontador = 5;
  END LOOP;
END;




--------------------------------------------------------------------------------------------------------------------

--While loop


DECLARE
  vcontador INTEGER := 0;
  vtexto VARCHAR2(10);
BEGIN
   WHILE vcontador < 10
   LOOP
     vcontador := vcontador +1 ;
     IF (vcontador Mod 2) = 0 THEN
      vtexto := 'Par';
                       --Se sobra no mod automaticamente é impar
      ELSE
      vtexto := 'Impar';
      END IF;

      Dbms_Output.Put_Line(Vcontador|| ' -> ' ||vtexto );
       END LOOP;
END;


--------------------------------------------------------------------------------------------------------------------
