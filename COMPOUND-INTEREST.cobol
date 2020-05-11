       IDENTIFICATION DIVISION.
       PROGRAM-ID. Compound-Interest.
             
       DATA DIVISION.
       WORKING-STORAGE SECTION. 
       01  amount            PIC 9(4)V99.
       01  rate-of-interest  PIC 99V99.
       01  years             PIC 99.
       01  amount-at-end     PIC $ZZZ,ZZ9.99.
      *    The $ character also counts as part of the character.
      *    therefore amount-at-end has 7 characters before the decimal

       PROCEDURE DIVISION.
       compound-calc.
           DISPLAY "Compount Interest Program"
           DISPLAY "Type in Initial Amount " 
              WITH NO ADVANCING
           ACCEPT amount
           DISPLAY "Type in Interest Rate " WITH NO ADVANCING 
           ACCEPT rate-of-interest 
           DISPLAY "Type in Number of Years " WITH NO ADVANCING 
           ACCEPT years

           COMPUTE amount-at-end ROUNDED = amount *
                          (1 + rate-of-interest / 100) ** years
                 ON SIZE ERROR
                    DISPLAY "amount too large"
                 NOT ON SIZE ERROR
                    DISPLAY "Final Amount " amount-at-end

           END-COMPUTE
           STOP RUN.



