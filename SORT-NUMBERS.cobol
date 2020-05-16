       IDENTIFICATION DIVISION. 
       PROGRAM-ID. SORT-NUMBERS.

       DATA DIVISION.
       WORKING-STORAGE SECTION. 
       01  temporary         PIC 99.
       01  sort-index        PIC 99.
       01  number-index      PIC 99.
       01  number-list.
           03 number-entry   OCCURS 5 TIMES PIC 99.

       PROCEDURE DIVISION.
       NUMS.
           DISPLAY "Enter 5 digits"

           PERFORM WITH TEST AFTER 
                 VARYING number-index FROM 1 BY 1
                 UNTIL number-index = 5
              DISPLAY "Index-" number-index WITH NO ADVANCING 
              ACCEPT number-list(number-index)
           END-PERFORM


           GOBACK .
       
       sort-nums.
           PERFORM WITH TEST AFTER 
                    VARYING sort-index  FROM 1 BY 1
                    UNTIL sort-index = 5
               IF number-list(sort-index) > number-list(sort-index + 1)
                 MOVE number-entry(sort-index) TO temporary 
                 MOVE number-entry(sort-index  + 1 ) TO 
                                         number-entry(sort-index )
                 MOVE temporary TO  number-entry(sort-index + 1)
           END-PERFORM  
           
           .
