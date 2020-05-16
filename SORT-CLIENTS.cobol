       IDENTIFICATION DIVISION. 
       PROGRAM-ID. SORT-CLIENTS.
       DATA DIVISION. 
       WORKING-STORAGE SECTION. 
       01  CLIENTS.
           03 CLIENT OCCURS 100 TIMES.
              05 CLIENT-NAME          PIC X(10).
              05 ACCOUNT-N0           PIC 9(4).
       01  NO-CLIENTS                 PIC 99.
       01  CLIENT-NO                  PIC 99.
       01  LAST-INDEX                 PIC 99.
       01  INDEX-NO                   PIC 99.
       01  TEMPORARY-CLIENT           PIC X(14).

       PROCEDURE DIVISION.
       BEGIN. 
           PERFORM POPULATE-DATA  
           PERFORM SORT-CLIENTS WITH TEST AFTER 
                    VARYING CLIENT-NO FROM 1 BY 1
                    UNTIL CLIENT-NO = NO-CLIENTS            
           PERFORM DISPLAY-ACCOUNT-DETAILS 

           GOBACK .

       POPULATE-DATA.
           MOVE 4 TO NO-CLIENTS 

           MOVE 0621 TO ACCOUNT-N0(1)
           MOVE "SMITH" TO CLIENT-NAME(1)

           MOVE 2197 TO ACCOUNT-N0(2)
           MOVE "GREEN" TO CLIENT-NAME(2)

           MOVE 3527 TO ACCOUNT-N0(3)
           MOVE "WILLIAMS" TO CLIENT-NAME(3)

           MOVE 4378 TO ACCOUNT-N0(4)
           MOVE "JONES" TO CLIENT-NAME(4)
           .
       END-POPULATE-DATA.

       RECEIVE-CLIENT-DETAILS.
           DISPLAY "ENTER NO OF CLIENTS: " WITH NO ADVANCING 
           ACCEPT NO-CLIENTS 

           PERFORM WITH TEST AFTER 
                    VARYING CLIENT-NO FROM 1 BY 1
                    UNTIL CLIENT-NO  = NO-CLIENTS 
               DISPLAY CLIENT-NO ": NAME: " WITH NO ADVANCING 
               ACCEPT CLIENT-NAME(CLIENT-NO)
               DISPLAY "A/C NO: " WITH NO ADVANCING 
               ACCEPT ACCOUNT-N0(CLIENT-NO) 
           END-PERFORM. 
       END-RECEIVE-CLIENT-DETAILS.

       DISPLAY-ACCOUNT-DETAILS.
           PERFORM WITH TEST AFTER 
                    VARYING CLIENT-NO FROM 1 BY 1
                    UNTIL CLIENT-NO = NO-CLIENTS 
              DISPLAY CLIENT-NO " NAME: " CLIENT-NAME(CLIENT-NO) 
                       "ACCOUNT NO: " ACCOUNT-N0(CLIENT-NO)
           END-PERFORM.
       END-DISPLAY-ACCOUNT-DETAILS.

       SORT-CLIENTS.
           COMPUTE LAST-INDEX = NO-CLIENTS + 1 - CLIENT-NO
           PERFORM SORT-EXT WITH TEST BEFORE  
                    VARYING INDEX-NO FROM 1 BY 1
                    UNTIL INDEX-NO = LAST-INDEX 
           .
       END-SORT-CLIENTS.

       SORT-EXT.
           IF ACCOUNT-N0(INDEX-NO) > ACCOUNT-N0(INDEX-NO + 1)
                 MOVE CLIENT(INDEX-NO + 1) TO TEMPORARY-CLIENT 
                 MOVE CLIENT(INDEX-NO) TO CLIENT(INDEX-NO + 1)
                 MOVE TEMPORARY-CLIENT TO CLIENT(INDEX-NO)
           END-IF 
           .
       END-SORT-EXT.
