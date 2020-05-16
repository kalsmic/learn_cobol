       IDENTIFICATION DIVISION. 
       PROGRAM-ID. SORT-NAMES.
       DATA DIVISION. 
       WORKING-STORAGE SECTION. 
       01  name-no        PIC 99.
       01  index-no       PIC 99.
       01  last-item      PIC 99.
       01  temporary      PIC A(10).
       01  name-list.
           03 name-entry  OCCURS 5 TIMES PIC A(10).
       01  list-size      PIC 99 VALUE 5.

       PROCEDURE DIVISION .
       NAMES.
           DISPLAY "Enter Names"
           PERFORM WITH TEST AFTER 
                    VARYING name-no FROM 1 BY 1
                    UNTIL name-no = list-size 
              DISPLAY name-no " / " list-size " "
              ACCEPT name-entry(name-no )
           END-PERFORM

           PERFORM sorting WITH TEST AFTER 
                   VARYING name-no FROM 1 BY 1
                   UNTIL name-no = list-size - 1
           
           DISPLAY "*** Names Sorted ***"
           PERFORM WITH TEST AFTER 
                    VARYING name-no FROM 1 BY 1
                    UNTIL name-no  = list-size 
              DISPLAY name-entry(name-no)
           END-PERFORM
           
           GOBACK .

       sorting.
           COMPUTE last-item = list-size - name-no 
           PERFORM WITH TEST AFTER 
                    VARYING index-no FROM 1 BY 1
                    UNTIL index-no = last-item 
              IF name-entry(index-no) > name-entry(index-no + 1)
                MOVE name-entry(index-no ) TO temporary 
                MOVE name-entry(index-no + 1) TO 
                       name-entry(index-no)
                MOVE temporary  TO name-entry(index-no  + 1)
              END-IF 
           END-PERFORM.
