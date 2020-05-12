       IDENTIFICATION DIVISION. 
       PROGRAM-ID. CHARACTER-DISPLAY.

       DATA DIVISION. 
       WORKING-STORAGE SECTION. 
       01  character-out  PIC X.
       01  number-of      PIC 99.

       PROCEDURE DIVISION.
       Char-display.
           DISPLAY "Enter Character to be Displayed : "
           WITH NO ADVANCING 
           ACCEPT character-out 
           DISPLAY "Enter Number of Times : "
           WITH NO ADVANCING 
           ACCEPT number-of 
           PERFORM number-of TIMES
              DISPLAY character-out WITH NO ADVANCING 
           END-PERFORM

           PERFORM Duplicate-character number-of TIMES 
           STOP RUN.

       Duplicate-character.
           DISPLAY character-out " " WITH NO ADVANCING .

