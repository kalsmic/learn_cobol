       IDENTIFICATION DIVISION.
       PROGRAM-ID. MARKS-LIST.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  student-number           PIC 99.
       01  marks-out               PIC BBZ9.9.
       01  mark-list.
           03 marks OCCURS 5 TIMES PIC 99V9.
       01  list-size               PIC 99 VALUE 5.

       PROCEDURE DIVISION.
       MARKS-IO.
           DISPLAY "Enter Students' Marks".
           PERFORM WITH TEST AFTER 
                  VARYING student-number FROM 1 BY 1
                  UNTIL student-number =list-size 
              DISPLAY "MARKs for Student-" student-number  ": "
              WITH NO ADVANCING    
              ACCEPT marks (student-number )
           END-PERFORM
           DISPLAY SPACE 
           DISPLAY "Marks entered are: "
           PERFORM WITH TEST AFTER 
                  VARYING student-number  FROM 1 BY 1
                  UNTIL student-number =list-size 
               MOVE marks(student-number) TO marks-out
               DISPLAY student-number marks-out
           END-PERFORM
           GOBACK .
