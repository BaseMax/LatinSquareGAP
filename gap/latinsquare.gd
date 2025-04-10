#
# latinsquare: A package for counting and generating Latin squares in GAP.
#

#! @Chapter Introduction
#!
#! The `latinsquare` package provides functionality for working with
#! Latin squares in GAP. A Latin square of order _n_ is an _n × n_ array
#! filled with _n_ different symbols, each occurring exactly once in each
#! row and each column.
#!
#! This package allows you to:
#! - Generate all Latin squares of a given size
#! - Count how many Latin squares exist of a given size
#! - Generate or count extensions of partial Latin squares
#!
#! These features are useful in combinatorics, statistics, and experimental design.

#! @Chapter Functionality
#!
#! This chapter describes the functions provided by the `latinsquare` package.

#! @Section Example Methods
#!
#! This section describes the core functions for generating and counting
#! Latin squares.

#! @Description
#!   `LatinSquareListRow( n, r, c )`
#!
#! Given the order `n` of a Latin square, a list of column constraints `r`, 
#! and a partial row `c`, this function returns a list of all possible valid 
#! row completions that obey the column constraints. Each valid row 
#! extends `c` and does not repeat any symbol already present in `c` or 
#! the corresponding column.
#!
#! - `n` must be a positive integer representing the order of the square.
#! - `r` must be a list of length `n` where `r[i]` is the list of entries already present in column `i`.
#! - `c` is a list representing the current partial row (from left to right).
#!
#! Returns: A list of valid row extensions.
DeclareGlobalFunction( "LatinSquareListRow" );

#! @Description
#!   `LatinSquareCountRow( n, k, r, c )`
#!
#! This function counts the number of ways a Latin square can be completed
#! given the order `n`, a partial Latin square `k`, a list of column constraints `r`,
#! and a partially constructed row `c`. This is an internal helper used in recursive
#! enumeration.
#!
#! - `k` is a list of complete rows already placed in the Latin square.
#! - `r` is the current list of columns (each as a list of values).
#! - `c` is the current partial row being constructed.
#!
#! Returns: The number of valid Latin square completions from this state.
DeclareGlobalFunction( "LatinSquareCountRow" );

#! @Description
#!   `LatinSquareCount( n[, partialSquare] )`
#!
#! Counts the number of Latin squares of order `n`.
#! Optionally, if `partialSquare` is given, it is treated as the starting
#! set of rows in the Latin square, and the function counts only those Latin
#! squares that extend this prefix.
#!
#! - `n`: a positive integer, the order of the square.
#! - `partialSquare`: an optional list of lists (rows), representing the upper part
#!   of a Latin square.
#!
#! Returns: The number of valid Latin squares of size `n` (extending the given prefix if any).
DeclareGlobalFunction( "LatinSquareCount" );

#! @Description
#!   `LatinSquareList( n[, partialSquare] )`
#!
#! Generates all Latin squares of order `n`.
#! Optionally, if `partialSquare` is given, it generates all Latin squares
#! that begin with those rows.
#!
#! - `n`: a positive integer, the order of the square.
#! - `partialSquare`: an optional list of row lists to start the Latin square with.
#!
#! Returns: A list of complete Latin squares of size `n` (extending the given prefix if any).
DeclareGlobalFunction( "LatinSquareList" );
