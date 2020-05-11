       IDENTIFICATION DIVISION.
       PROGRAM-ID. NET-PAY.
       DATA DIVISION. 
       WORKING-STORAGE SECTION. 
       01 gross-pay             PIC 99V99 USAGE PACKED-DECIMAL.
       01 tax                   PIC 99V99 USAGE PACKED-DECIMAL.
       01 annual-pay       PIC 99V99 USAGE PACKED-DECIMAL.
       01 nssf    PIC 99V99 USAGE PACKED-DECIMAL.
       01 net-pay               PIC +999.99 USAGE DISPLAY.
       
       PROCEDURE DIVISION.
           DISPLAY "Enter the Gross Pay : " WITH NO ADVANCING 
           ACCEPT gross-pay 
           DISPLAY "Enter the tax : " WITH NO ADVANCING 
           ACCEPT tax 
           DISPLAY "Enter Super Annuation : " WITH NO ADVANCING 
           ACCEPT annual-pay 
           DISPLAY "Enter National Insurance : " WITH NO ADVANCING 
           ACCEPT nssf 

           SUBTRACT tax, annual-pay , nssf FROM gross-pay 
                    GIVING net-pay ROUNDED 
              ON SIZE ERROR
                    DISPLAY "Error in data sizes"
              NOT ON SIZE ERROR
                    DISPLAY "Net pay is " net-pay 
                    
           END-SUBTRACT

           GOBACK.



