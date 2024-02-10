       IDENTIFICATION DIVISION.
       PROGRAM-ID. TESTEMES.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
               DECIMAL-POINT IS COMMA.
       INPUT-OUTPUT SECTION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 MES PIC 9(02) OCCURS 12 TIMES.
       77 MES-IN PIC 9(02) VALUE ZEROS.
       77 MES-VENDAS PIC 9(07)V99 VALUE ZEROS.
       77 ACUM PIC 9(07)V99 VALUE ZEROS.

       PROCEDURE DIVISION.
       INICIAR.

               MOVE 1 TO MES-IN.
               MOVE 0 TO ACUM.
               DISPLAY '========================================'.
               DISPLAY '== DIGITE 99 PARA ENCERRAR O PROGRAMA =='.
               DISPLAY '========================================'.
               DISPLAY '==      DIGITE O MES DE 1 A 12:       =='.
               DISPLAY '========================================'.
               ACCEPT MES (MES-IN).

               IF MES(MES-IN) = 99
                   PERFORM SAIDA
                   ELSE
                IF MES(MES-IN) GREATER OR EQUAL 1 AND LESS OR EQUAL 12
               DISPLAY '========================================'
               DISPLAY '==     DIGITE O VALOR DAS VENDAS      =='
               DISPLAY '========================================'
               PERFORM PROCESSAR
                  ELSE
                      DISPLAY 'INSIRA UM MES VALIDO'
                      PERFORM INICIAR
               END-IF.
       PROCESSAR.
               ACCEPT MES-VENDAS.
               ADD MES-VENDAS TO ACUM.

               IF MES-VENDAS = 0
                   DISPLAY 'MES ' MES-IN
                   DISPLAY 'VALOR DE VENDA ' ACUM
                   PERFORM INICIAR
                 ELSE
                     PERFORM PROCESSAR
               END-IF.

       SAIDA.
               DISPLAY '========================================'.
               DISPLAY '==         FINAL DO PROGRAMA          =='.
               DISPLAY '========================================'.
           STOP RUN.
