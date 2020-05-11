       IDENTIFICATION DIVISION. 
       PROGRAM-ID. RETIREMENT-AGE.

       DATA DIVISION. 
       WORKING-STORAGE SECTION. 
       01  gender      PIC X.
           88  male    VALUE "m".
           88  female  VALUE "f".

           
       01  age         PIC 99 PACKED-DECIMAL.

       PROCEDURE DIVISION.
       BEGIN.
           DISPLAY "RETIREMENT AGE PROGRAM"
           PERFORM get-input
           PERFORM process-retirement
           GOBACK .

       get-input.
           DISPLAY "Enter your gender: m for Male and f for Female : "
           WITH NO ADVANCING 
           ACCEPT gender 
           DISPLAY "Enter your age 1 to 120:  " WITH NO ADVANCING 
           ACCEPT age.
       
       process-retirement.
           IF female AND age >= 60 OR male AND age >= 65
              DISPLAY "RETIREMENT AGE"
           ELSE
              DISPLAY "NOT RETIREMENT AGE"
           END-IF.
