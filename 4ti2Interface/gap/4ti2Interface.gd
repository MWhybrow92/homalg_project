#############################################################################
##
##                                                      4ti2Interface package
##
##  Copyright 2013,           Sebastian Gutsche, University of Kaiserslautern
##
##  Reading the declaration part of the 4ti2Interface package.
##
#############################################################################


#! @Chapter Introduction
#! @Section What is the idea of 4ti2Interface
#!  4ti2Interface is an GAP-Package that provides a link to the
#!  CAS 4ti2. It is not supposed to do any work by itself, but to provide 
#!  the methods in 4ti2 to GAP.
#!  At the moment, it only capsules the groebner and hilbert method in 4ti2
#!  but there are more to come.
#!  If you have any questions or suggestions, please feel free to contact me,
#!  or leave an issue on <URL>https://github.com/homalg-project/4ti2Interface.git</URL>.

#! @Chapter Installation
#! @Section How to install this package
#!  This package can only be used on a system that has 4ti2 installed.
#!  For more information about this please visit <URL Text="www.4ti2.de">http://www.4ti2.de</URL>.
#!  For installing this package, first make sure you have 4ti2 installed. 
#!  Copy it in your GAP pkg-directory.
#!  After this, the package can be loaded via LoadPackage( "4ti2Interface" );


#! @Chapter 4ti2 functions

#! @Section Groebner

#! These are wrappers of some use cases of 4ti2s groebner command.

#! @Description
#!  This launches the 4ti2 groebner command with the
#!  argument as matrix input. The output will be the
#!  the Groebner basis of the binomial ideal
#!  generated by the left kernel of the input matrix.
#!  Note that this is different from 4ti2's convention
#!  which takes the right kernel.
#!  It returns the output of the groebner command
#!  as a list of lists.
#!  The second argument can be a vector to specify a
#!  monomial ordering, in the way that x^m > x^n if
#!  ordering*m > ordering*n
#! @Arguments matrix[,ordering]
#! @Returns A list of vectors
DeclareGlobalFunction( "4ti2Interface_groebner_matrix" );

#! @Description
#!  This launches the 4ti2 groebner command with the
#!  argument as matrix input.
#!  The outpur will be the Groebner basis of the binomial
#!  ideal generated by the rows of the input matrix.
#!  It returns the output of the groebner command
#!  as a list of lists.
#!  The second argument is like before.
#! @Arguments basis[,ordering]
#! @Returns A list of vectors
DeclareGlobalFunction( "4ti2Interface_groebner_basis" );

#! <#Include Label="Groebner1">

#! @Section Hilbert

#! These are wrappers of some use cases of 4ti2s hilbert command.

#! @Description
#!  This function produces the hilbert basis of the cone C given
#!  by <A>A</A>x >= 0 for all x in C. For the second function also
#!  x >= 0 is assumed.
#! @Returns a list of vectors
#! @Arguments A
#! @Group for inequalities
DeclareGlobalFunction( "4ti2Interface_hilbert_inequalities" );

#! @Arguments A
#! @Group for inequalities
DeclareGlobalFunction( "4ti2Interface_hilbert_inequalities_in_positive_orthant" );

#! @Description
#!  This function produces the hilbert basis of the cone C given by
#!  the equations <A>A</A>x = 0 in the positive orthant of the coordinate system.
#! @Returns a list of vectors
#! @Arguments A
DeclareGlobalFunction( "4ti2Interface_hilbert_equalities_in_positive_orthant" );

#! @Description
#!  This function produces the hilbert basis of the cone C given by
#!  the equations <A>A</A>x = 0 and the inequations <A>B</A>x >= 0.
#!  For the second function x>=0 is assumed.
#! @Returns a list of vectors
#! @Arguments A, B
#! @Group for equalities and inequalities
DeclareGlobalFunction( "4ti2Interface_hilbert_equalities_and_inequalities" );

#! @Arguments A, B
#! @Group for equalities and inequalities
DeclareGlobalFunction( "4ti2Interface_hilbert_equalities_and_inequalities_in_positive_orthant" );

#! <#Include Label="HilbertBasis">

#! <#Include Label="HilbertBasis2">

#! @Section ZSolve

#! @Description
#!  This function produces a basis of the system <A>eqs</A> = <A>eqs_rhs</A>
#!  and <A>ineqs</A> >= <A>ineqs_rhs</A>. It outputs a list containing three matrices.
#!  The first one is a list of points in a polytope, the second is the hilbert basis
#!  of a cone. The set of solutions is then the minkowski sum of the polytope
#!  generated by the points in the first list and the cone generated by the hilbert
#!  basis in the second matrix. The third one is the free part of the solution polyhedron.
#!  The optional argument <A>signs</A> must be a list of zeros and ones which length is
#!  the number of variables. If the ith entry is one, the ith variable must be >= 0.
#!  If the entry is 0, the number is arbitraty. Default is all zero.
#!  It is also possible to set the option precision to 32, 64 or gmp.
#!  The default, if no option is given, 32 is used.
#!  Please note that a higher precision leads to slower computation.
#! @Returns a list of three matrices
#! @Arguments eqs,eqs_rhs,ineqs,ineqs_rhs[,signs]
#! @Group zsolve
DeclareGlobalFunction( "4ti2Interface_zsolve_equalities_and_inequalities" );

#! @Description
#!  For the second function xi >= 0 for all variables is assumed.
#! @Arguments eqs,eqs_rhs,ineqs,ineqs_rhs
#! @Group zsolve
DeclareGlobalFunction( "4ti2Interface_zsolve_equalities_and_inequalities_in_positive_orthant" );

#! @Section Graver

#! @Description
#!  This calls the function graver with the equalities <A>eqs</A> = 0.
#!  It outputs one list containing the
#!  graver basis of the system.
#!  the optional argument <A>signs</A> is used like in zsolve.
#! @Arguments eqs[,signs]
#! @Returns a matrix
#! @Group graver
DeclareGlobalFunction( "4ti2Interface_graver_equalities" );

#! @Description
#!  The second command assumes <M>x_i \geq 0</M>.
#! @Arguments eqs
#! @Group graver
DeclareGlobalFunction( "4ti2Interface_graver_equalities_in_positive_orthant" );

#! @Chapter Tool functions

#! @Section Read and write matrix

#! @Description
#!  The argument must be a string, representing a filename of
#!  a matrix to read. Numbers must be seperated by whitespace,
#!  and the first two numbers must be the number of rows and columns.
#!  The function then returns the matrix as list of lists.
#! @Returns a list of vectors
DeclareGlobalFunction( "4ti2Interface_Read_Matrix_From_File" );

#! @Description
#!  First argument must be a matrix, i.e. a list of list
#!  of integers.
#!  Second argument has to be a filename.
#!  The method stores the matrix in this file,
#!  seperated by whitespace, line by line.
#!  The content of the file, if there is any,
#!  will be deleted.
#! @Returns nothing
DeclareGlobalFunction( "4ti2Interface_Write_Matrix_To_File" );

#! @Description
#!  Takes the vector <A>vec</A> and produces a matrix
#!  with <A>d</A> columns out of the entries of the
#!  vector.
#! @Arguments vec, d
#! @Returns a matrix
DeclareGlobalFunction( "4ti2Interface_Cut_Vector" );
