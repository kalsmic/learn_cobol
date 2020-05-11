       IDENTIFICATION DIVISION. 
       PROGRAM-ID. ADD-WITH-SIZE-ERROR.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 input-fields.
           03 in-1     PIC 99V99.
           03 in-2     PIC 99V99.
       01 output-fields.
           03 out-1    PIC 99.99.
           03 out-2    PIC 99.99.
           03 result-1 PIC 99.9.
       PROCEDURE DIVISION .
       add-two.
           DISPLAY "Enter two numbers ( 0 - 99.99 ): "
           DISPLAY "First Number : " WITH NO ADVANCING 
           ACCEPT in-1
           DISPLAY "Second Number : " WITH NO ADVANCING 
           ACCEPT in-2
           DISPLAY SPACES
           ADD in-1 TO in-2 GIVING result-1 ROUNDED
              ON SIZE ERROR
                 DISPLAY "result too large"
                 MOVE ZERO TO result-1
               NOT ON SIZE ERROR
                 MOVE in-1 TO out-1
                 MOVE in-2 TO out-2
                 DISPLAY out-1 " + " out-2 " = "
                         result-1 " (to 1 dec p1) "
           END-ADD

           STOP RUN.
