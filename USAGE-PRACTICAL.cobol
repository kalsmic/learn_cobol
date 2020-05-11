       IDENTIFICATION DIVISION. 
       PROGRAM-ID. USAGE-PRACTICAL.

       DATA DIVISION. 
       WORKING-STORAGE SECTION.
       01 binary-nos USAGE BINARY.
          03 no-1-bin PIC 999 VALUE 123.
          03 no-2-bin PIC 9 VALUE 2.
       01 display-nOS.
           03 no-1-dis PIC 999.
           03 no-2-dis PIC 999.
           03 result PIC 9999.
       PROCEDURE DIVISION.
       main-para.
           ADD no-1-bin, no-2-bin GIVING result 
           MOVE no-1-bin TO no-1-dis
           MOVE no-2-bin TO no-2-dis
           DISPLAY no-1-dis " + " no-2-dis " = " result
           DISPLAY no-1-bin

           STOP RUN.



