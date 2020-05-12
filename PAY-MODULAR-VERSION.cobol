       IDENTIFICATION DIVISION. 
       PROGRAM-ID. PAY-MODULAR-VERSION.

       ENVIRONMENT DIVISION. 
       CONFIGURATION SECTION. 
       SPECIAL-NAMES. 
           CURRENCY SIGN IS ""

       DATA DIVISION. 
       WORKING-STORAGE SECTION. 
       01  std-hours         PIC 99V99 VALUE 37.5.
       01  hours-worked      PIC 99V99.
       01  rate-of-pay       PIC 99V99.
       01  pay               PIC $ZZZ9.99.


       PROCEDURE DIVISION.
       pay-mod-version.
           PERFORM Input-hours-rate 
           PERFORM Pay-Calculation 
           PERFORM Output-pay 
           GOBACK .

       Input-hours-rate.
           DISPLAY "Enter Hours Worked:" WITH NO ADVANCING 
           ACCEPT hours-worked 
           DISPLAY "Enter Rate of Pay: " WITH NO ADVANCING 
           ACCEPT rate-of-pay .

       Pay-Calculation.
           IF hours-worked  > std-hours 
              COMPUTE pay ROUNDED  = std-hours * rate-of-pay 
                                      + 1.5 * rate-of-pay 
                                      + (hours-worked  - std-hours)
           ELSE
              COMPUTE pay ROUNDED = hours-worked * rate-of-pay
           END-IF .

       Output-pay.
           DISPLAY "Pay = " pay.
           
