       IDENTIFICATION DIVISION. 
       PROGRAM-ID. LENGTH-SUM.
      * This program receives three lengths as input
      * Computes and displays their sums
       DATA DIVISION. 
       WORKING-STORAGE SECTION.
       01 len-1   PIC 99.
       01 len-2   PIC 99.
       01 len-3   PIC 99.
       01 len-sum PIC 999 VALUE ZERO .

       PROCEDURE DIVISION.
       LENGTH-SUM.
           DISPLAY "Enter the first length: " WITH NO ADVANCING 
           ACCEPT len-1
           
           DISPLAY "Enter the second length: " WITH NO ADVANCING 
           ACCEPT len-2

           DISPLAY "Enter the third length: " WITH NO ADVANCING 
           ACCEPT len-3

           COMPUTE  len-sum = len-1 + len-2 + len-3

           DISPLAY "The sum of len-1 + len-2 + len-3 = " len-sum

           STOP RUN.

          