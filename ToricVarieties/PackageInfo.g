SetPackageInfo( rec(

PackageName := "ToricVarieties",

Subtitle := "A package to handle toric varieties",

Version :=  Maximum( [
  "2015.08.12", ## Sebas' version
## this line prevents merge conflicts
  "2015.03.31", ## Mohamed's version
## this line prevents merge conflicts
  "2015.08.12", ## Martins version
## this line prevents merge conflicts
"2015.10.29", ## Homepage update version, to be removed
] ),

Date := ~.Version{[ 1 .. 10 ]},
Date := Concatenation( ~.Date{[ 9, 10 ]}, "/", ~.Date{[ 6, 7 ]}, "/", ~.Date{[ 1 .. 4 ]} ),





Persons := [
rec(
    LastName      := "Gutsche",
    FirstNames    := "Sebastian",
    IsAuthor      := true,
    IsMaintainer  := true,
    Email         := "sebastian.gutsche@rwth-aachen.de",
    WWWHome       := "http://wwwb.math.rwth-aachen.de/~gutsche/",
    PostalAddress := Concatenation( [
                       "Sebastian Gutsche\n",
                       "Lehrstuhl B fuer Mathematik, RWTH Aachen\n",
                       "Templergraben 64\n",
                       "52062 Aachen\n",
                       "Germany" ] ),
    Place         := "Aachen",
    Institution   := "RWTH Aachen University"
  ),
rec(
    LastName      := "Bies",
    FirstNames    := "Martin",
    IsAuthor      := true,
    IsMaintainer  := true,
    Email         := "m.bies@thphys.uni-heidelberg.de",
    WWWHome       := "",
    PostalAddress := Concatenation( [
                       "Martin Bies\n",
                       "Philosophenweg 19\n",
                       "69120 Heidelberg\n",
                       "Germany" ] ),
    Place         := "Heidelberg",
    Institution   := "University of Heidelberg"
  ),
],

Status := "deposited",
PackageWWWHome := "http://homalg-project.github.io/homalg_project/ToricVarieties/",
ArchiveFormats := ".tar.gz",
ArchiveURL     := Concatenation( ~.PackageWWWHome, "ToricVarieties-", ~.Version ),
README_URL     := Concatenation( ~.PackageWWWHome, "README" ),
PackageInfoURL := Concatenation( ~.PackageWWWHome, "PackageInfo.g" ),

AbstractHTML := 
  Concatenation( "ToricVarieties provides data structures to handle toric varieties by their commutative algebra ",
                 "structure and by their combinatorics. For combinatorics, it uses the Convex package.",
                 " Its goal is to provide a suitable framework to work with toric varieties." ),

               
PackageDoc := rec(
  BookName  := "ToricVarieties",
  ArchiveURLSubset := ["doc"],
  HTMLStart := "doc/chap0.html",
  PDFFile   := "doc/manual.pdf",
  SixFile   := "doc/manual.six",
  LongTitle := "A package to compute properties of toric varieties",
  Autoload  := false
),


Dependencies := rec(
  GAP := ">=4.7",
  NeededOtherPackages := [ [ "Convex", ">= 2012.04.03" ],
                           [ "GradedRingForHomalg", ">=2011.01.01" ],
                           [ "Modules", ">=2013.06.29" ],
                           [ "GradedModules", ">=2012.03.09" ],
                           [ "ToolsForHomalg", ">=2013.04.11" ],
                           [ "AutoDoc", ">=2013.07.25" ]
                           ],
  SuggestedOtherPackages := [ [ "ToricIdeals", ">=2011.01.01" ], [ "4ti2Interface", ">=2013.03.19" ], [ "NormalizInterface", ">=0.2" ] ],
  ExternalConditions := []
                      
),

AvailabilityTest := function()
  
    return true;
  end,



Autoload := false,


Keywords := [ "Toric geometry", "Toric varieties", "Divisors", "Geometry"]

));


