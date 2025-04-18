#
# latinsquare: A package for counting and generating Latin squares in GAP.
#
# This file contains package meta data. For additional information on
# the meaning and correct usage of these fields, please consult the
# manual of the "Example" package as well as the comments in its
# PackageInfo.g file.
#
SetPackageInfo( rec(

PackageName := "latinsquare",
Subtitle := "A package for counting and generating Latin squares in GAP.",
Version := "0.1",
Date := "08/04/2025",
License := "GPL-2.0-or-later",

Persons := [
  rec(
    FirstNames := "Seyyed Ali",
    LastName := "Mohammadiyeh",
    WWWHome := "https://github.com/basemax",
    Email := "maxbasecode@gmail.com",
    IsAuthor := true,
    IsMaintainer := true,
    PostalAddress := "Department of Pure Mathematics, Faculty of Mathematical Sciences, University of Kashan, Kashan 87317-53153, I. R. Iran",
    Place := "Kashan, Iran I.R.",
    Institution := "University of Kashan, I.R.",
  ),
],

SourceRepository := rec(
    Type := "git",
    URL := Concatenation( "https://github.com/gap-packages/", LowercaseString( ~.PackageName ) ),
),
IssueTrackerURL := Concatenation( ~.SourceRepository.URL, "/issues" ),
PackageWWWHome :=
  Concatenation( "https://gap-packages.github.io/", LowercaseString( ~.PackageName ) ),
PackageInfoURL := Concatenation( ~.PackageWWWHome, "PackageInfo.g" ),
README_URL     := Concatenation( ~.PackageWWWHome, "README.md" ),
ArchiveURL     := Concatenation( ~.PackageWWWHome,
                                 "/", ~.PackageName, "-", ~.Version ),

ArchiveFormats := ".tar.gz",

AbstractHTML   :=  "",

PackageDoc := rec(
  BookName  := "latinsquare",
  ArchiveURLSubset := ["doc"],
  HTMLStart := "doc/chap0_mj.html",
  PDFFile   := "doc/manual.pdf",
  SixFile   := "doc/manual.six",
  LongTitle := "A package for counting and generating Latin squares in GAP.",
),

Dependencies := rec(
  GAP := ">= 4.13",
  NeededOtherPackages := [ ],
  SuggestedOtherPackages := [ ],
  ExternalConditions := [ ],
),

AvailabilityTest := ReturnTrue,

TestFile := "tst/testall.g",

Keywords := [ "combinatorics", "design of experiments", "latin-square", "latin", "latin square" ],

));
