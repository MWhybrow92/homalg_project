##  this creates the documentation, needs: GAPDoc package, latex, pdflatex,
##  mkindex, dvips
##  
##  Call this with GAP.
##

LoadPackage( "GAPDoc" );

SetGapDocLaTeXOptions( "utf8" );

#bib := ParseBibFiles( "doc/Gauss.bib" );
#WriteBibXMLextFile( "doc/GaussBib.xml", bib );

list := [
         "../gap/GaussForHomalg.gi",
         "../gap/GaussTools.gi",
         "../gap/GaussBasic.gi",
         "../gap/GaussFQI.gi"
         ];

MakeGAPDocDoc( "doc", "GaussForHomalg", list, "GaussForHomalg" );

GAPDocManualLab( "GaussForHomalg" );

quit;
