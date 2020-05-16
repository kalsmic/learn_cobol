       IDENTIFICATION DIVISION. 
       PROGRAM-ID. STUDENT-MARKS.

       DATA DIVISION. 
       WORKING-STORAGE SECTION. 
       01  MARKS-LIST.
           03 STUDENT        OCCURS 5 TIMES
              INDEXED BY STUDENT-INDEX.
              09 PAPER      PIC 99 OCCURS 2 TIMES
                 INDEXED BY PAPER-INDEX.
       01  MAX-STUDENTS      PIC 99 VALUE 5.
       01  MAX-PAPERS        PIC 99 VALUE 2.

       PROCEDURE DIVISION .
       BEGIN.
           DISPLAY "STUDENT MATH MARKS PROGRAM"
           PERFORM RECIEVE-MARKS 
           PERFORM DISPLAY-MARKS 
           GOBACK 

           .

       RECIEVE-MARKS.
           DISPLAY "ENTER MARKS"
      *     PERFORM WITH TEST AFTER 
      *           VARYING STUDENT-INDEX FROM 1 BY 1
      *           UNTIL STUDENT-INDEX = MAX-STUDENTS 
      *           PERFORM WITH TEST AFTER 
      *                    VARYING PAPER-INDEX FROM 1 BY 1
      *                    UNTIL PAPER-INDEX = MAX-PAPERS
      *              DISPLAY "STUDENT" STUDENT-INDEX "PAPER "
      *                       PAPER-INDEX " : "WITH NO ADVANCING 
      *              ACCEPT PAPER(STUDENT-INDEX , PAPER-INDEX )
      *            END-PERFORM
      *     END-PERFORM
      *    NESTED PERFORM WITH TEST AFTER WORKS AS OUTLINE
           PERFORM INPUT-MARKS  WITH TEST AFTER 
                    VARYING STUDENT-INDEX
                    FROM 1 BY 1 UNTIL STUDENT-INDEX = MAX-STUDENTS 
                       AFTER PAPER-INDEX
                       FROM 1 BY 1 UNTIL PAPER-INDEX = MAX-PAPERS
           .
       END-RECIEVE-MARKS.

       INPUT-MARKS.
            DISPLAY "STUDENT" STUDENT-INDEX "PAPER "
                       PAPER-INDEX " : "WITH NO ADVANCING 
           ACCEPT PAPER(STUDENT-INDEX , PAPER-INDEX )
       .
       END-INPUT-MARKS.
           

       DISPLAY-MARKS.
           PERFORM WITH TEST AFTER 
                    VARYING STUDENT-INDEX FROM 1 BY 1
                    UNTIL STUDENT-INDEX = MAX-STUDENTS 
              PERFORM WITH TEST AFTER 
                       VARYING PAPER-INDEX FROM 1 BY 1
                       UNTIL PAPER-INDEX = MAX-PAPERS
                 DISPLAY "STUDENT-" STUDENT-INDEX "PAPER"
                          PAPER-INDEX ": "
                          PAPER(STUDENT-INDEX, PAPER-INDEX)
                  END-PERFORM
           END-PERFORM
           . 
