       IDENTIFICATION DIVISION. 
       PROGRAM-ID. TABLES.
       DATA DIVISION. 
       WORKING-STORAGE SECTION. 
       01  table-number      PIC 99.
       01  table-type        PIC X.
       01  counter           PIC 99.
       01  result            PIC ZZ9.
       01  table-number-out  PIC Z9.
       01  counter-out       PIC Z9.

       PROCEDURE DIVISION.
       TABLES.
           DISPLAY "Enter Table Numbers " WITH NO ADVANCING 
           ACCEPT table-number 
           DISPLAY "Enter Type of Table (+ or * ) " WITH NO ADVANCING 
           ACCEPT table-type  
           PERFORM TEST BEFORE  VARYING counter FROM 1 BY 1
                    UNTIL counter > 10
             MOVE table-number  TO table-number-out  
             MOVE counter TO counter-out 
             IF table-type = "+"
                COMPUTE result  = table-number  + counter 
             ELSE 
                COMPUTE result = table-number * counter 
             END-IF 
             DISPLAY table-number-out  " "
                     table-type " "
                     counter-out " = " result
           END-PERFORM
           GOBACK .
