       IDENTIFICATION DIVISION. 
       PROGRAM-ID. MYPAYROLL.
       DATA DIVISION. 
       WORKING-STORAGE SECTION. 
       77 WHO         PIC X(25).
       77 WHERE       PIC X(20).
       77 WHY         PIC X(30).
       77 RATE        PIC 9(3).
       77  HOURS      PIC 9(3).
       77  GROSS-PAY  PIC 9(5).
    
       PROCEDURE DIVISION.
           MOVE "Captain COBOL" TO WHO.
           MOVE "SAN JOSE, CALIFORNIA" TO wHERE.
           MOVE "LEARN TO BE A COBOL EXPERT" TO WHY.
           MOVE 19 TO HOURS.
           MOVE 23 TO RATE.

           COMPUTE GROSS-PAY = HOURS * RATE.

           DISPLAY "NAME: " WHO.
           DISPLAY "LOCATION: " WHERE.
           DISPLAY "REASON: " WHY.
           DISPLAY "HOURLY RATE: " RATE.
           DISPLAY "GROSS PAY: " GROSS-PAy.
           DISPLAY  WHY " FROM " WHO. *> MY COMMENT
           GOBACK.