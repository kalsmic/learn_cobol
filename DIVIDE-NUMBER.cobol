       IDENTIFICATION DIVISION. 
       PROGRAM-ID. DIVIDE-NUMBER.
       DATA DIVISION. 
       WORKING-STORAGE SECTION. 
       01 dividend  PIC 99v9.
       01 divisor   PIC 99V9.
       01 quotient  PIC 99.
       01 remains PIC 99v9.

       PROCEDURE DIVISION.
       number-divisor.
           DISPLAY "Enter the dividend : " WITH NO ADVANCING 
           ACCEPT dividend 
           DISPLAY "Enter the divisor : " WITH NO ADVANCING 
           ACCEPT divisor 
           
           DIVIDE dividend BY divisor 
              GIVING quotient REMAINDER remains
              ON SIZE ERROR
                 MOVE ZERO TO quotient, remains 
                 DISPLAY "An error occured"
              NOT ON SIZE ERROR
                 DISPLAY dividend " / "  divisor " = " quotient
                    " remainder " remains
           END-DIVIDE
           STOP RUN.

