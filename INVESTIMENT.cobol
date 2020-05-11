       IDENTIFICATION DIVISION. 
       PROGRAM-ID. INVESTIMENT.
       DATA DIVISION. 
       WORKING-STORAGE SECTION. 
       01  input-fields.
           03 amount-start      PIC 9(4)V99.
           03 rate-of-interest  PIC 99V9.
       01  calculation-variables.
           03 interest          PIC 999V99.
           03 temp              PIC 9(6)V99 USAGE IS PACKED-DECIMAL.
       01  output-fields.
           03 amount-end-out    PIC 9(4).99.
           03 amount-start-out  PIC 9(4).99.
           03 interest-out      PIC 999.99.

       PROCEDURE DIVISION.
       investiment-calc.
      * get the input values
           DISPLAY "Investiment Program"
           DISPLAY "Type in Start Amount " WITH NO ADVANCING 
           ACCEPT amount-start 
           DISPLAY "Type in Rate of Interest " WITH NO ADVANCING 
           ACCEPT rate-of-interest 
      *  calculate interest
           MULTIPLY amount-start BY rate-of-interest 
                 GIVING temp ROUNDED 
           DIVIDE temp BY 100 GIVING  interest ROUNDED 
                                 interest-out ROUNDED    
               ON SIZE ERROR
      *        error message and go no further
                  DISPLAY "Interest too large"
               NOT ON SIZE ERROR
      *        calculate new amount
                 ADD interest, amount-start 
                       GIVING amount-end-out ROUNDED 
                     ON SIZE ERROR
      *              error message and go no further
                       DISPLAY "Final Amount too large"
                     NOT on SIZE ERROR
      *              display results
                       MOVE amount-start  TO amount-start-out 
                       DISPLAY "Start Amount " amount-start-out 
                       DISPLAY  "Interest " interest-out 
                       DISPLAY "Final Amount " amount-end-out 
                  END-ADD
           END-DIVIDE
      * all done
           GOBACK .
