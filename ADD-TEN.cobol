       IDENTIFICATION DIVISION.
       PROGRAM-ID. ADD-TEN.

       DATA DIVISION. 
       WORKING-STORAGE SECTION. 
       01  number-input PIC 99.

       PROCEDURE DIVISION.
       BEGIN.
           DISPLAY "Type in a  number"
           ACCEPT number-input 
           ADD 10 TO number-input 
           DISPLAY number-input 
           STOP RUN.
           GOBACK.