       IDENTIFICATION DIVISION. 
       PROGRAM-ID. Discount.
       DATA DIVISION. 
       WORKING-STORAGE SECTION.
       01 charge             PIC 999V99.
       01 discount           PIC 99V99.
       01 discounted-charge  PIC 999.99.
       PROCEDURE DIVISION.
       discount-calc.
           DISPLAY " Enter charge : " WITH NO ADVANCING
           ACCEPT charge
           DISPLAY " Enter discount : " WITH NO ADVANCING
           ACCEPT discount           
           SUBTRACT discount FROM charge
               GIVING discounted-charge ROUNDED 
           DISPLAY SPACES
           DISPLAY "Discounted Charge: " discounted-charge
           STOP RUN.
