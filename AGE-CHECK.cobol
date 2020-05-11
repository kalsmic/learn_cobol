       IDENTIFICATION DIVISION.
       PROGRAM-ID. AGE-CHECK.
      * This program indicates whether
      * a person is over 21 or not.
       DATA DIVISION. 
       WORKING-STORAGE SECTION. 
       01 your-name PIC A(10).
       01 age       PIC 999.

       PROCEDURE DIVISION.
       BEGIN.
           DISPLAY  "Type in name"
           ACCEPT your-name
           DISPLAY  "Type in your age"
           ACCEPT age 
           IF age > 21
              DISPLAY your-name " is over 21"
           ELSE
              DISPLAY your-name " is 21 or under"
           END-IF 
           STOP RUN.
           GOBACK.