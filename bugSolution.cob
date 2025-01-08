       IDENTIFICATION DIVISION.
       PROGRAM-ID. BUGSOLUTION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  WS-AREA-1.      PIC X(100).
       01  WS-AREA-2.      PIC X(100).
       01  WS-INPUT-DATA. PIC X(150).
       01  WS-LENGTH.       PIC 9(3).
       PROCEDURE DIVISION.
           MOVE 'This is a test string longer than 100 characters' TO WS-INPUT-DATA
           INSPECT WS-INPUT-DATA tallying WS-LENGTH for characters
           IF WS-LENGTH > 100 THEN
               DISPLAY 'Error: Input data exceeds maximum length of 100 characters.'
               STOP RUN
           END-IF
           MOVE WS-INPUT-DATA(1:100) TO WS-AREA-1
           DISPLAY 'Data in WS-AREA-1: ' WS-AREA-1
           STOP RUN.
       END PROGRAM BUGSOLUTION.