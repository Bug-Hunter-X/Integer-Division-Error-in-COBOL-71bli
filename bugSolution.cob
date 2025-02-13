01  WS-AREA. 
    05  WS-NUMBER PIC 9(5) VALUE 99999. 
    05  WS-NUMBER2 PIC 9(5) VALUE 1. 
    05  WS-RESULT PIC 9(5)V9(2). 
    05  WS-FLAG PIC X VALUE 'N'.

    PROCEDURE DIVISION.
        IF WS-NUMBER2 = 0 THEN
            MOVE 'Y' TO WS-FLAG
        ELSE
            COMPUTE WS-RESULT = WS-NUMBER / WS-NUMBER2
        END-IF.

        IF WS-FLAG = 'Y' THEN
            DISPLAY "Division by zero error!" 
        ELSE
            DISPLAY WS-RESULT
        END-IF
        STOP RUN.