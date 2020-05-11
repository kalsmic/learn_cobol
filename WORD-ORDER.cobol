       IDENTIFICATION DIVISION. 
       PROGRAM-ID. WORD-ORDER.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  word-1   PIC X(10).
       01  word-2   PIC X(10).

       PROCEDURE DIVISION.
       BEGIN.
           DISPLAY "Enter 1st Word: " WITH NO ADVANCING
           ACCEPT word-1
           DISPLAY "Enter 2nd word: " WITH NO ADVANCING
           ACCEPT word-2

           IF word-1 < word-2
              DISPLAY word-1 " comes before " word-2
           ELSE
              DISPLAY word-2 " comes before " word-1
           END-IF
           STOP RUN.
