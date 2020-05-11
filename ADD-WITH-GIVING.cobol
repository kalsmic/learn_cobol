       IDENTIFICATION DIVISION. 
       PROGRAM-ID. ADD-WITH-GIVING.
    
       DATA DIVISION. 
       WORKING-STORAGE SECTION. 
       01 no-1      PIC 99.
       01 no-2      PIC 99.
       01 no-3      PIC 99.
       01 no-4      PIC 999.
       01 price     PIC 99V99.
       01 price-out PIC 99.99.


       PROCEDURE DIVISION.
       add-giving.
           DISPLAY "Enter no-1: " WITH NO ADVANCING
           ACCEPT no-1
           DISPLAY "Enter no-2: " WITH NO ADVANCING
           ACCEPT no-2 
           DISPLAY "Enter no-3: " WITH NO ADVANCING
           ACCEPT no-3

           MOVE 53.27 TO price
           MOVE price TO price-out

           ADD no-1, no-2, no-3 GIVING no-4
           DISPLAY SPACE 
           DISPLAY no-1 " + " no-2 " + " no-3 " = " no-4
           DISPLAY price
           DISPLAY price-out
           STOP RUN.
           