       IDENTIFICATION DIVISION.
       PROGRAM-ID. BALANCE.
       DATA DIVISION. 
       WORKING-STORAGE SECTION. 
       01 input-fields.
           03 old-balance    PIC S999V99.
           03 amount         PIC S999V99.
       01 output-field.
           03 new-balance    PIC +9999.99.
       PROCEDURE DIVISION.
       balance-calc.
           DISPLAY "Enter old balance: " WITH NO ADVANCING 
           ACCEPT old-balance 
           DISPLAY "Enter amount   :" WITH NO ADVANCING 
           ACCEPT amount 
           ADD amount, old-balance GIVING new-balance 
           DISPLAY "New balance: " new-balance


           STOP RUN.
