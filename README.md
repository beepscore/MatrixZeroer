# Purpose
Practice manipulating a matrix.  

# References


# Results

## Problem statement
Matrix n rows by m columns of 0 and 1.  
If an element is 0, zero it's entire row and column.  

## Potential improvements

### a way to decrease memory use, at the expense of more calculations
To reduce required memory, could eliminate zeroes array of Cells.  
Instead could use a special sentinel value such as 2 and store it in rows matrix elements.
Then zero rows and columns containing the sentinel value.
If necessary make another pass through rows to set sentinel values to 0.

See tests.
