       IDENTIFICATION DIVISION. 
       PROGRAM-ID. PROCESS-MARKS.
       DATA DIVISION. 
       WORKING-STORAGE SECTION. 
       01  student-name     PIC X(20).
       01  math-marks       PIC 999 PACKED-DECIMAL.
       01  english-marks    PIC 999 PACKED-DECIMAL.

       PROCEDURE DIVISION.
       BEGIN.
           PERFORM recieve-marks
           PERFORM calculate-grade
           GOBACK .

      
       recieve-marks.
           DISPLAY "Enter student details"
           DISPLAY "Student Name: " WITH NO ADVANCING 
           ACCEPT student-name 
           DISPLAY "English Marks: " WITH NO ADVANCING 
           ACCEPT english-marks 
           DISPLAY "Math Marks: " WITH NO ADVANCING 
           ACCEPT math-marks.
       
       calculate-grade.

           EVALUATE (english-marks + math-marks) /2
              WHEN 40 THRU 49.9 DISPLAY "Third Class"
              WHEN 50 THRU 59.9 DISPLAY "Lower Class"
              WHEN 60 THRU 69.9 DISPLAY "Upper Class"
              WHEN 70 THRU 100  DISPLAY "First Class"
              WHEN OTHER        DISPLAY "Prog or Data Error!"
           END-EVALUATE.
