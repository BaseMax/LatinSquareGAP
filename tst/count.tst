#############################################################################
##
#A  count.tst             Latin Square package        Seyyed Ali Mohammadiyeh
##
##  To create a test file, place GAP prompts, input and output exactly as
##  they must appear in the GAP session. Do not remove lines containing 
##  START_TEST and STOP_TEST statements.
##
##  The first line starts the test. START_TEST reinitializes the caches and 
##  the global random number generator, in order to be independent of the 
##  reading order of several test files. Furthermore, the assertion level 
##  is set to 2 by START_TEST and set back to the previous value in the 
##  subsequent STOP_TEST call.
##
##  The argument of STOP_TEST may be an arbitrary identifier string.
## 
gap> START_TEST("Latin Square package: count.tst");

# Testing the external binary
gap> LatinSquareCount(1) = 1;      # 1x1 square has 1 way to fill it
true
gap> LatinSquareCount(2) = 2;      # 2x2 square has 2 ways to fill it
true
gap> LatinSquareCount(3) = 12;     # 3x3 square has 12 ways to fill it
true
gap> LatinSquareCount(4) = 576;    # 4x4 square has 576 ways to fill it
true
gap> LatinSquareCount(5) = 161280; # 5x5 square has 161280 ways to fill it
true

## Each test file should finish with the call of STOP_TEST.
## The first argument of STOP_TEST should be the name of the test file.
## The second argument is redundant and is used for backwards compatibility.
gap> STOP_TEST( "count.tst", 10000 );

#############################################################################
##
#E
