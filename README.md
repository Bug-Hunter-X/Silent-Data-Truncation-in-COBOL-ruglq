# Silent Data Truncation in COBOL

This repository demonstrates a common yet insidious bug in COBOL programs: silent data truncation. When moving data into a field with a PIC clause that's shorter than the data being moved, COBOL silently truncates the excess data without any warning or error message.  This can lead to unpredictable behavior and difficult-to-find bugs.

The `bug.cob` file shows the problematic code. The `bugSolution.cob` offers a solution involving data length checks and error handling.  The solution emphasizes defensive programming practices to prevent data truncation.

## How to Reproduce

1. Compile and run `bug.cob`. Note that there are no compiler errors or runtime exceptions. 
2. Observe the incorrect output due to the truncated data. 
3. Compile and run `bugSolution.cob` to see how to handle potential data truncation using checks and error reporting.

## Learning Points

- Always validate data length before moving to fields with fixed-length PIC clauses. 
- Implement robust error handling to detect potential truncation issues. 
- Understand the implications of using fixed-length fields in COBOL and the need for appropriate validation.