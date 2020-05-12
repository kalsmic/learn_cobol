       IDENTIFICATION DIVISION. 
       PROGRAM-ID. NUMBERS-DISPLAY.

       DATA DIVISION. 
       WORKING-STORAGE SECTION. 
       01  high-number    PIC 99.
       01  number-count   PIC 99.
       01  number-out     PIC Z9.

       PROCEDURE DIVISION.
       BEGIN.
           DISPLAY "Enter High Numbers: " 
           WITH NO ADVANCING 
           ACCEPT high-number 
           PERFORM VARYING number-count  FROM 1 BY 1
      *    This is the default  if TEST BEFORE is not specified
      *     PERFORM WITH TEST BEFORE VARYING number-count  FROM 1 BY 1
      *    You can think of it as a while loop
      *    This TEST AFTER version is an equivalent ofA a Do While loop
      *     PERFORM WITH TEST AFTER VARYING number-count  FROM 1 BY 1
                    UNTIL number-count = high-number 
              MOVE number-count TO number-out 
              DISPLAY number-out 
           END-PERFORM
           STOP RUN.
