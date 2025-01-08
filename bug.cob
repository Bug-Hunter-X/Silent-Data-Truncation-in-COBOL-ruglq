01  WS-AREA-1.      PIC X(100). VALUE SPACES. 
01  WS-AREA-2.      PIC X(100). VALUE SPACES. 
* In the above code, if we try to move a value greater than 100 characters to WS-AREA-1 or WS-AREA-2, then it will result in data truncation. 
* The truncated data may lead to unexpected results in the program. 
* This is a common mistake because COBOL doesn't throw any error or warning message during compilation or runtime. 