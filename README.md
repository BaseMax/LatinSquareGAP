# The GAP package latinsquare

**latinsquare:** A package for counting and generating Latin squares in GAP.

## Using

**Loading:**

```gap
gap> LoadPackage("latinsquare");
──────────────────────────────────────────────────────────────────────────────────────────────────────────────
Loading latinsquare 0.1 (A package for counting and generating Latin squares in GAP.)
by Seyyed Ali Mohammadiyeh (https://github.com/basemax).
Homepage: https://github.com/BaseMax/LatinSquareGAP/
Report issues at https://github.com/BaseMax/LatinSquareGAP/issues
──────────────────────────────────────────────────────────────────────────────────────────────────────────────
true
```

**Listing:**

```gap
gap> LatinSquareList(1);
[ [ [ 1 ] ] ]
gap> Length(LatinSquareList(1));
1

gap> LatinSquareList(2);
[ [ [ 1, 2 ], [ 2, 1 ] ], [ [ 2, 1 ], [ 1, 2 ] ] ]
gap> Length(LatinSquareList(2));
2

gap> LatinSquareList(3);
[ [ [ 1, 2, 3 ], [ 2, 3, 1 ], [ 3, 1, 2 ] ], [ [ 1, 2, 3 ], [ 3, 1, 2 ], [ 2, 3, 1 ] ],
  [ [ 1, 3, 2 ], [ 2, 1, 3 ], [ 3, 2, 1 ] ], [ [ 1, 3, 2 ], [ 3, 2, 1 ], [ 2, 1, 3 ] ],
  [ [ 2, 1, 3 ], [ 1, 3, 2 ], [ 3, 2, 1 ] ], [ [ 2, 1, 3 ], [ 3, 2, 1 ], [ 1, 3, 2 ] ],
  [ [ 2, 3, 1 ], [ 1, 2, 3 ], [ 3, 1, 2 ] ], [ [ 2, 3, 1 ], [ 3, 1, 2 ], [ 1, 2, 3 ] ],
  [ [ 3, 1, 2 ], [ 1, 2, 3 ], [ 2, 3, 1 ] ], [ [ 3, 1, 2 ], [ 2, 3, 1 ], [ 1, 2, 3 ] ],
  [ [ 3, 2, 1 ], [ 1, 3, 2 ], [ 2, 1, 3 ] ], [ [ 3, 2, 1 ], [ 2, 1, 3 ], [ 1, 3, 2 ] ] ]
gap> Length(LatinSquareList(3));
12

gap> LatinSquareList(4);
[ [ [ 1, 2, 3, 4 ], [ 2, 1, 4, 3 ], [ 3, 4, 1, 2 ], [ 4, 3, 2, 1 ] ],
  [ [ 1, 2, 3, 4 ], [ 2, 1, 4, 3 ], [ 3, 4, 2, 1 ], [ 4, 3, 1, 2 ] ],
  [ [ 1, 2, 3, 4 ], [ 2, 1, 4, 3 ], [ 4, 3, 1, 2 ], [ 3, 4, 2, 1 ] ],
  [ [ 1, 2, 3, 4 ], [ 2, 1, 4, 3 ], [ 4, 3, 2, 1 ], [ 3, 4, 1, 2 ] ],
  ....
  [ [ 4, 3, 2, 1 ], [ 3, 4, 1, 2 ], [ 2, 1, 4, 3 ], [ 1, 2, 3, 4 ] ] ]
gap> Length(LatinSquareList(4));
576
```

**Counting:**

```gap
gap> LatinSquareCount(1);
1
gap> LatinSquareCount(2);
2
gap> LatinSquareCount(3);
12
gap> LatinSquareCount(4);
576
gap> LatinSquareCount(5);
161280
```

## Contact

Department of Pure Mathematics, Faculty of Mathematical Sciences, University of Kashan, Kashan 87317-53153, I. R. Iran

alim@kashanu.ac.ir

max@std.kashanu.ac.ir

maxbasecode@gmail.com

## License

GPL-2.0-or-later

Copyright 2025, Seyyed Ali Mohammadiyeh (Max Base)
