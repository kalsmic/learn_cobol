       IDENTIFICATION DIVISION. 
       PROGRAM-ID. TIME-AND-DATE.

       DATA DIVISION. 
       WORKING-STORAGE SECTION. 
       01  date-today.
           03 date-in-yy  PIC 99 PACKED-DECIMAL.
           03 date-in-mm  PIC 99 PACKED-DECIMAL.
           03 date-in-dd  PIC 99 PACKED-DECIMAL.
       01  time-today.
           03 time-in-hh  PIC 99 PACKED-DECIMAL.
           03 time-in-mm  PIC 99 PACKED-DECIMAL.
           03             PIC 99 PACKED-DECIMAL.
       01  date-out-format.
           03 date-out-dd PIC 99/.
           03 date-out-mm PIC 99/.
           03 date-out-cc PIC 99/.
           03 date-out-yy PIC 99/.
       01  time-out-format.
           03 time-out-hh PIC 99/.
           03             PIC 99/.
           03 time-out-mm PIC 99/.

       PROCEDURE DIVISION.
       main-para.
      * get system date and time
           ACCEPT date-today FROM DATE
           ACCEPT time-today FROM TIME
      * format date for output
           MOVE date-in-dd  TO date-out-dd 
           MOVE date-in-mm  TO date-out-mm  
           MOVE date-in-yy  TO date-out-yy 
           IF date-in-yy < 96
              MOVE 20 TO date-out-cc 
           ELSE
              MOVE 19 TO date-out-cc
           END-IF
           DISPLAY "Today's date is:" date-out-format 
      * format time for output
           MOVE time-in-hh TO time-out-hh      
           MOVE time-in-mm TO time-out-mm 
           DISPLAY "The time now is: " time-out-format 
           STOP RUN.     





       