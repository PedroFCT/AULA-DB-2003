SET SERVEROUTPUT ON;

--EXEMPLO-LOOP

DECLARE
    
        V_CONTADOR NUMBER(2) := 1;
    
BEGIN

    LOOP
        DBMS_OUTPUT.PUT_LINE(V_CONTADOR);
        V_CONTADOR := V_CONTADOR + 1;
        EXIT WHEN V_CONTADOR > 20;
    END LOOP;
END;

------------------------------------------------------------------------------

--EXEMPLO-WHILE

DECLARE
    V_CONTADOR NUMBER(3) :=1;
BEGIN
    WHILE V_CONTADOR <= 20 LOOP
    dbms_output.put_line(v_contador);
    v_contador := v_contador + 1;
    end loop;
end;

------------------------------------------------------------------------------

--EXEMPLO-FOR

BEGIN
    FOR V_CONTADOR IN 1..20 LOOP
    dbms_output.put_line(v_contador);
    END LOOP;
END;

BEGIN
    FOR V_CONTADOR IN REVERSE 1..20 LOOP
    dbms_output.put_line(v_contador);
    END LOOP;
END;

------------------------------------------------------------------------------

--EX1 - TABUADA

--USANDO LOOP

DECLARE
    
        V_CONTADOR NUMBER(2) := 1;
        V_NUMERO NUMBER(2) := &NUMERO;
        V_TABUADA NUMBER(2);
    
BEGIN

    DBMS_OUTPUT.PUT_LINE('TABUADA DO: ' || V_NUMERO);
        
    LOOP
        
        V_TABUADA := V_NUMERO * V_CONTADOR;
        
        DBMS_OUTPUT.PUT_LINE(V_NUMERO || ' x ' || V_CONTADOR || ' = ' || V_TABUADA);
        
        V_TABUADA := 0;
        V_CONTADOR := V_CONTADOR + 1;
        EXIT WHEN V_CONTADOR = 11;
    END LOOP;
END;

--USANDO WHILE

DECLARE
    V_CONTADOR NUMBER(3) :=1;
    V_NUMERO NUMBER(2) := &NUMERO;
    V_TABUADA NUMBER(2);
BEGIN
    DBMS_OUTPUT.PUT_LINE('TABUADA DO: ' || V_NUMERO);
    WHILE V_CONTADOR <= 10 LOOP
        V_TABUADA := V_NUMERO * V_CONTADOR;
        
        DBMS_OUTPUT.PUT_LINE(V_NUMERO || ' x ' || V_CONTADOR || ' = ' || V_TABUADA);
        
        V_TABUADA := 0;
        v_contador := v_contador + 1;
    end loop;
end;   

--USANDO FOR

DECLARE
    V_NUMERO NUMBER(2) := &NUMERO;
    V_TABUADA NUMBER(2);
BEGIN
    FOR V_CONTADOR IN 1..10 LOOP
    
        V_TABUADA := V_NUMERO * V_CONTADOR;
        
        DBMS_OUTPUT.PUT_LINE(V_NUMERO || ' x ' || V_CONTADOR || ' = ' || V_TABUADA);
        
        V_TABUADA := 0;
    
    END LOOP;
END;

-------------------------------------------------------------------------------

--EX2 - PARES E IMPARES

DECLARE
    V_INTERVALO1 NUMBER(3) := &NUMERO1;   
    V_INTERVALO2 NUMBER(3) := &NUMERO2;  
    V_NUMPARES NUMBER(3) := 0;
    V_NUMIMPARES NUMBER(3) := 0;
BEGIN
    FOR V_CONTADOR IN V_INTERVALO1..V_INTERVALO2 LOOP
       
        IF  MOD(V_CONTADOR, 2) = 0 THEN
            v_NUMPARES := V_NUMPARES + 1;
        ELSE
            V_NUMIMPARES := V_NUMIMPARES +1;
        END IF;
       
            
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('QUANTIDADE DE PARES: ' || V_NUMPARES);
    DBMS_OUTPUT.PUT_LINE('QUANTIDADE DE IMPARES: ' || V_NUMIMPARES);
END;

--EX3 - SOMA DE IMPARES MULTIPLOS DE 3 ENTRE 1 E 500.

DECLARE
    V_SOMA NUMBER(5):= 0;
BEGIN
    
    FOR V_CONTADOR IN 1..500 LOOP
        IF MOD(V_CONTADOR, 3) = 0 THEN
            V_SOMA := V_SOMA + V_CONTADOR;
        END IF;
    END LOOP;
    
    DBMS_OUTPUT.PUT_LINE('A SOMA DOS MULTIPLOS DE 3 ENTRE 1 E 50 É: ' || V_SOMA);
END;

--EX4 - FATORIAL

DECLARE
    v_NUMFATORIAL NUMBER(2):= &NUMFATORIAL;
    v_FATORIAL NUMBER(5):=0;
BEGIN
    FOR V_CONTADOR IN REVERSE 1..(V_NUMFATORIAL-1) LOOP
        V_FATORIAL := V_NUMFATORIAL * V_CONTADOR;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('O FATORIAL DE ' || V_NUMFATORIAL || ' É IGUAL A: ' || V_FATORIAL);
END;

--EX5 - ENCONTRAR O MENOR NUMERO ENTRE 50 NUMEROS INSERIDOS




        