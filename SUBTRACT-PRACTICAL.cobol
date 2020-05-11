       IDENTIFICATION DIVISION. 
       PROGRAM-ID. SUBTRACT-PRACTICAL.
       DATA DIVISION. 
       WORKING-STORAGE SECTION. 
       01 no-1      PIC S99V99 USAGE PACKED-DECIMAL.
       01 no-2      PIC 9v9 USAGE PACKED-DECIMAL.
       01 no-3      PIC -999.99.
       PROCEDURE DIVISION.
       Substract-pract.
           DISPLAY "Enter Two numbers"
           DISPLAY "First Number : " WITH NO ADVANCING 
           ACCEPT no-1
           DISPLAY "Second Number : " WITH NO ADVANCING 
           ACCEPT no-2 
           SUBTRACT no-2, 10 FROM no-1 GIVING no-3 
           DISPLAY "no-3 contains " no-3
           STOP RUN.
