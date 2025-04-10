#
# latinsquare: A package for counting and generating Latin squares in GAP.
#
# This file runs package tests. It is also referenced in the package
# metadata in PackageInfo.g.
#

LoadPackage("latinsquare");

TestDirectory(DirectoriesPackageLibrary("latinsquare", "tst"),
  rec(exitGAP := true));

FORCE_QUIT_GAP(1); # if we ever get here, there was an error
