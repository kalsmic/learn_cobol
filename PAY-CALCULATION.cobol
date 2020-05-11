       IDENTIFICATION DIVISION. 
       PROGRAM-ID. PAY-CALCULATION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  hours-worked  PIC 99V99.
       01  rate-of-pay   PIC 99V99.
       01  pay           PIC $ZZZ9.99.
       01  std-hours     PIC 99V99 VALUE 37.5.

       PROCEDURE DIVISION.
       calculate-pay.
           DISPLAY " PAYMENT CALCULATOR PROGRAM"
           DISPLAY "Type in Hours Worked : " WITH NO ADVANCING
           ACCEPT hours-worked
           DISPLAY "Type in Rate of Pay : " WITH NO ADVANCING
           ACCEPT rate-of-pay

           IF hours-worked > std-hours
              COMPUTE pay ROUNDED = std-hours * rate-of-pay +
                  ( 1.5 * rate-of-pay * (hours-worked - std-hours) )
           ELSE 
              COMPUTE pay ROUNDED = hours-worked * rate-of-pay
           END-IF
           
           DISPLAY "PAY = " pay

           STOP RUN.
