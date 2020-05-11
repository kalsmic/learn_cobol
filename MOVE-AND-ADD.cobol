       IDENTIFICATION DIVISION.
       PROGRAM-ID. MOVE-AND-ADD.
       DATA DIVISION.
       WORKING-STORAGE SECTION. 
       01 NO-1 PIC 99.
       01 NO-2 PIC 99.
       01 NO-3 PIC 99.

       PROCEDURE DIVISION.
       move-add.
           DISPLAY "ENTER 1ST NO: " WITH NO ADVANCING 
           ACCEPT NO-1 

           DISPLAY "ENTER 2ND NO: " WITH NO ADVANCING 
           ACCEPT NO-2 
           MOVE ZERO TO NO-3 
           ADD NO-1 TO NO-3 
           ADD NO-2 TO NO-3
           DISPLAY SPACE
           DISPLAY NO-3 
           STOP RUN.
