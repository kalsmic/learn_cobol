       IDENTIFICATION DIVISION .
       PROGRAM-ID . COST.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
      * all va lues are money v a l u e s, so are t o 2 dec places
       01 arithmetic-items.
           03 price   PIC 999V99.
           03 vat     PIC 99V99.
       01 edited-items .
           03 cost-out PIC 9999.99.
           03 price-out PIC 999.99.
           03 vat-out  PIC 99.99.
       PROCEDURE DIVISION.
       Cost-calc .
           DISPLAY "Enter price: " WITH NO ADVANCING
           ACCEPT price
           DISPLAY "Enter vat : " WITH NO ADVANCING
           ACCEPT vat

           ADD vat , price GIVING cost-out
           MOVE price TO price-out
           MOVE vat TO vat-out
           DISPLAY SPACE
           DISPLAY "Price " price-out
           " , Vat " vat-out
           ", Cost " cost-out
           STOP RUN.
