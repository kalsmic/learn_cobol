       IDENTIFICATION DIVISION. 
       PROGRAM-ID. SHOPPING_BILL.

       DATA DIVISION. 
       WORKING-STORAGE SECTION. 
       01  item-cost      PIC 99V99.
       01  total-bill     PIC 9(4)V99.
       01  total-bill-out PIC $$,$$9.99.

       PROCEDURE DIVISION.
       Shopping-bill.
           MOVE ZERO TO total-bill
           DISPLAY "Enter Cost of Items (zero to end"
           ACCEPT item-cost
           PERFORM UNTIL item-cost  = ZERO
              ADD item-cost TO total-bill ROUNDED
              ACCEPT item-cost
           END-PERFORM
           MOVE total-bill TO total-bill-out
           DISPLAY "Total Bill is " total-bill-out 
           STOP RUN.
