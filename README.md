# Purpose
Practice manipulating a matrix.  

# References


# Results

## Problem statement
Matrix n rows by m columns of 0 and 1.  
If an element is 0, zero it's entire row and column.  

### Planned approach
struct Cell with row, column, value.  
first record all zeros.  

Improvement- when traversing a row, if hit first 0 element record it and can can skip the rest of the row.
Improvement- when traversing a column, if hit first 0 element record it and can can skip the rest of the column.

See tests.
