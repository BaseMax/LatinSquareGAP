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

## Tests

```bash
$ gap -A testall.g
 ┌───────┐   GAP 4.15dev built on 2025-04-07 18:12:09+0330
 │  GAP  │   https://www.gap-system.org
 └───────┘   Architecture: x86_64-pc-linux-gnu-default64-kv10
 Configuration:  gmp 6.3.0, GASMAN, readline
 Loading the library and packages ...
 Packages:   GAPDoc 1.6.7, PrimGrp 3.4.4, SmallGrp 1.5.4, TransGrp 3.6.5
 Try '??help' for help. See also '?copyright', '?cite' and '?authors'
───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
Loading latinsquare 0.1 (A package for counting and generating Latin squares in GAP.)
by Seyyed Ali Mohammadiyeh (https://github.com/basemax).
Homepage: https://github.com/BaseMax/LatinSquareGAP/blob/main/
Report issues at https://github.com/BaseMax/LatinSquareGAP/issues
───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
Architecture: x86_64-pc-linux-gnu-default64-kv10

testing: /home/ali/.gap/pkg/latinsquare/tst/count.tst
    6189 ms (360 ms GC) and 734MB allocated for count.tst
testing: /home/ali/.gap/pkg/latinsquare/tst/list.tst
    7716 ms (993 ms GC) and 980MB allocated for list.tst
-----------------------------------
total     13905 ms (1353 ms GC) and 1.67GB allocated
              0 failures in 2 files

#I  No errors detected while testing
```

## Contact

Department of Pure Mathematics, Faculty of Mathematical Sciences, University of Kashan, Kashan 87317-53153, I. R. Iran

alim@kashanu.ac.ir

max@std.kashanu.ac.ir

maxbasecode@gmail.com

## License

GPL-2.0-or-later

Copyright 2025, Seyyed Ali Mohammadiyeh (Max Base)
