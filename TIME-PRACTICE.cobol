       IDENTIFICATION DIVISION. 
       PROGRAM-ID. TIME-PRACTICE.

       DATA DIVISION. 
       WORKING-STORAGE SECTION. 
       01  date-in.
           03 date-yy-in         PIC 99.
           03 date-mm-in         PIC 99.
           03 date-dd-in         PIC 99.
       01  time-in.
           03 time-hr-in         PIC 99.
           03 time-min-in        PIC 99.
           03 time-sec-in        PIC 9.
           03 time-micro-sec-in  PIC 999.
       01  date-out.
           03 date-dd-out        PIC 99/.
           03 date-mm-out        PIC 99/.
           03 date-yy-out        PIC 99.

       01  time-out.
           03 time-hr-out        PIC 99.
           03                    PIC X(9) VALUE " Hours : ".
           03 time-min-out       PIC 99.
           03                    PIC X(11) VALUE " Minutes : ".
           03 time-sec-out       PIC 9.
           03                    PIC X(11) VALUE " Seconds : ".
           03 time-micro-sec-out PIC 999.
           03                    PIC X(14) VALUE " Micro seconds".

       PROCEDURE DIVISION.

       main-para.
           ACCEPT date-in FROM DATE 
           ACCEPT time-in FROM TIME

           MOVE date-dd-in TO date-dd-out 
           MOVE date-yy-in TO date-yy-out 
           MOVE date-mm-in TO date-mm-out 


           MOVE time-hr-in  TO time-hr-out  
           MOVE time-min-in  TO time-min-out  
           MOVE time-sec-in  TO time-sec-out 
           MOVE time-micro-sec-in   TO time-micro-sec-out   

           DISPLAY "DATE : " date-out 
           DISPLAY "TIME : " time-out 

           GOBACK .

