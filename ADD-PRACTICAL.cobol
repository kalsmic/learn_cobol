       IDENTIFICATION DIVISION. 
       PROGRAM-ID. ADD-PRACTICAL.

       DATA DIVISION. 
       WORKING-STORAGE SECTION.
       01 no-1 PIC 99.
       01 no-2 PIC 99.
       01 no-3 PIC 99.
       01 no-4 PIC 99.
       
       PROCEDURE DIVISION.
       ADD-PRACTICAL.
           DISPLAY  " ENTER NUMBERS"
           ACCEPT no-1 
           ACCEPT no-2 
           ADD no-1 TO no-2
           MOVE ZERO TO no-4
           ADD no-1 TO no-4 
           ADD no-2 TO no-4
           DISPLAY " No-1 " no-1 " No-2 " no-2 " No-4 " no-4 
           STOP run.
    