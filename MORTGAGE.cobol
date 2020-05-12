       IDENTIFICATION DIVISION. 
       PROGRAM-ID. MORTGAGE.

       DATA DIVISION. 
       WORKING-STORAGE SECTION. 
       01  input-fields.
           03 balance-start     PIC 9(6)V99.
           03 years             PIC 99.
           03 repayment         PIC 999V99.
           03 interest-rate     PIC 99V99.
       01  calculation-fields.
           03 balance-end       PIC 9(6)V99.
           03 interest          PIC 9(6)V99.
       01  output-fields.
           03 balance-start-out PIC $ZZ,ZZ9.99.
           03 balance-end-out   PIC $ZZ,ZZ9.99.
           03 interest-out      PIC $ZZ,ZZ9.99.

       PROCEDURE DIVISION.
       Mortage.
           DISPLAY "MORTGAGE PAYMENT CALCULATOR"
           PERFORM Get-input 
           DISPLAY "      START    INTEREST    END"
           PERFORM Calculate-interest years TIMES 
           GOBACK .

       Get-input.
           DISPLAY "Enter Balance at Start: " WITH NO ADVANCING 
           ACCEPT balance-start 
           DISPLAY "Enter Number of Years: " WITH NO ADVANCING 
           ACCEPT years 
           DISPLAY "Enter Monthly Repayment: " WITH NO ADVANCING 
           ACCEPT repayment  
           DISPLAY "Enter Monthly Interest Rate: " WITH NO ADVANCING 
           ACCEPT interest-rate 
           .
       
       Calculate-interest.
           COMPUTE interest = (balance-start * interest-rate ) / 100
           COMPUTE balance-end = balance-start  + interest 
                                   - (12 * repayment )
           MOVE balance-start  TO balance-start-out 
           MOVE interest TO interest-out
           MOVE balance-end TO balance-end-out 
           DISPLAY balance-start-out " "
                   interest-out " "
                   balance-end-out
           MOVE balance-end TO balance-start 
           .
