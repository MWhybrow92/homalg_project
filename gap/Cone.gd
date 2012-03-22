#############################################################################
##
##  Cone.gd         ConvexForHomalg package         Sebastian Gutsche
##
##  Copyright 2011 Lehrstuhl B für Mathematik, RWTH Aachen
##
##  Cones for ConvexForHomalg.
##
#############################################################################

##  <#GAPDoc Label="IsCone">
##  <ManSection>
##    <Filt Type="Category" Arg="M" Name="IsCone"/>
##    <Returns><C>true</C> or <C>false</C></Returns>
##    <Description>
##      The &GAP; category of a cone.
##    </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareCategory( "IsCone",
                 IsFan );

################################
##
## Basic Properties
##
################################

DeclareProperty( "IsRegularCone",
                 IsCone );

##  <#GAPDoc Label="IsRay">
##  <ManSection>
##    <Prop Arg="cone" Name="IsRay"/>
##    <Returns><C>true</C> or <C>false</C></Returns>
##    <Description>
##      Checks if the cone <A>cone</A> is a ray, i.e. if it has only one ray generator.
##    </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareProperty( "IsRay",
                 IsCone );

################################
##
## Attributes
##
################################

##  <#GAPDoc Label="DualCone">
##  <ManSection>
##    <Attr Arg="cone" Name="DualCone"/>
##    <Returns>a cone</Returns>
##    <Description>
##      Returns the dual cone of the cone <A>cone</A>.
##    </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareAttribute( "DualCone",
                  IsCone );

##  <#GAPDoc Label="HilbertBasis">
##  <ManSection>
##    <Attr Arg="cone" Name="DualCone"/>
##    <Returns>a list</Returns>
##    <Description>
##      Returns a Hilbert Basis of the cone <A>cone</A>.
##    </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareAttribute( "HilbertBasis",
                  IsCone );

##  <#GAPDoc Label="RaysInFacets">
##  <ManSection>
##    <Attr Arg="cone" Name="RaysInFacets"/>
##    <Returns>a list</Returns>
##    <Description>
##      Returns an incidence matrix for the rays in the facets of the cone <A>cone</A>. The ith entry
##      of the result corresponds to the ith facet, the jth entry of this is 1 if the jth ray is
##      in th ith facet, 0 otherwise.
##    </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareAttribute( "RaysInFacets",
                  IsCone );

##  <#GAPDoc Label="Facets">
##  <ManSection>
##    <Attr Arg="cone" Name="Facets"/>
##    <Returns>a list</Returns>
##    <Description>
##      Returns a list of the facets of the cone <A>cone</A> as homalg cones.
##    </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareAttribute( "Facets",
                  IsCone );

##  <#GAPDoc Label="GridGeneratedByCone">
##  <ManSection>
##    <Attr Arg="cone" Name="GridGeneratedByCone"/>
##    <Returns>a homalg module</Returns>
##    <Description>
##      Returns the grid generated by the lattice points of the cone <A>cone</A> as a homalg module.
##    </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareAttribute( "GridGeneratedByCone",
                  IsCone );

##  <#GAPDoc Label="FactorGrid">
##  <ManSection>
##    <Attr Arg="cone" Name="FactorGrid"/>
##    <Returns>a homalg module</Returns>
##    <Description>
##      Returns the factor of the containing grid of the cone <A>cone</A> and the grid generated by <A>cone</A>.
##    </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareAttribute( "FactorGrid",
                  IsCone );

##  <#GAPDoc Label="GridGeneratedByOrthogonalCone">
##  <ManSection>
##    <Attr Arg="cone" Name="GridGeneratedByOrthogonalCone"/>
##    <Returns>a homalg module</Returns>
##    <Description>
##      Returns the grid generated by the lattice points of the orthogonal cone of the cone <A>cone</A>.
##    </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareAttribute( "GridGeneratedByOrthogonalCone",
                  IsCone );

##  <#GAPDoc Label="DefiningInequalities">
##  <ManSection>
##    <Attr Arg="cone" Name="DefiningInequalities"/>
##    <Returns>a list</Returns>
##    <Description>
##      Returns a list of the defining inequalities of the cone <A>cone</A>.
##    </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareAttribute( "DefiningInequalities",
                  IsCone );

##  <#GAPDoc Label="IsContainedInFan">
##  <ManSection>
##    <Attr Arg="cone" Name="IsContainedInFan"/>
##    <Returns>a fan</Returns>
##    <Description>
##      If the cone <A>cone</A> is constructed as part of a fan, this method returns the fan.
##    </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareAttribute( "IsContainedInFan",
                  IsCone );

##  <#GAPDoc Label="FactorGridMorphism">
##  <ManSection>
##    <Attr Arg="cone" Name="FactorGridMorphism"/>
##    <Returns>a morphism</Returns>
##    <Description>
##      Returns the morphism to the factor grid of the cone <A>cone</A>.
##    </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareAttribute( "FactorGridMorphism",
                  IsCone );

DeclareAttribute( "LinearSubspaceGenerators",
                  IsCone );

DeclareAttribute( "APointedFactor",
                  IsCone );

DeclareAttribute( "FactorConeEmbedding",
                  IsCone );

################################
##
## Methods
##
################################

##  <#GAPDoc Label="IntersectionOfCones">
##  <ManSection>
##    <Oper Arg="cone1,cone2" Name="IntersectionOfCones"/>
##    <Returns>a cone</Returns>
##    <Description>
##      If the cones <A>cone1</A> and <A>cone2</A> share a face, the method returns their intersection,
##    </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareOperation( "IntersectionOfCones",
                  [ IsCone, IsCone ] );

DeclareOperation( "Intersect2",
                  [ IsCone, IsCone ] );

##  <#GAPDoc Label="Contains">
##  <ManSection>
##    <Oper Arg="cone1,cone2" Name="Contains"/>
##    <Returns><C>true</C> or <C>false</C></Returns>
##    <Description>
##      Returns <C>true</C> if the cone <A>cone1</A> contains the cone <A>cone2</A>, <C>false</C> otherwise.
##    </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareOperation( "Contains",
                  [ IsCone, IsCone ] );

##  <#GAPDoc Label="RayGeneratorContainedInCone">
##  <ManSection>
##    <Oper Arg="raygen,cone" Name="RayGeneratorContainedInCone"/>
##    <Returns><C>true</C> or <C>false</C></Returns>
##    <Description>
##      Returns <C>true</C> if the ray generator <A>raygen</A> is contained the cone <A>cone</A>, <C>false</C> otherwise.
##    </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareOperation( "RayGeneratorContainedInCone",
                  [ IsList, IsCone ] );

##  <#GAPDoc Label="StarFan">
##  <ManSection>
##    <Oper Arg="cone" Name="StarFan"/>
##    <Returns>a fan</Returns>
##    <Description>
##      Returns the star fan of the cone <A>cone</A>, as described in cox, 3.2.7
##    </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareOperation( "StarFan",
                  [ IsCone ] );

##  <#GAPDoc Label="StarFan2">
##  <ManSection>
##    <Oper Arg="cone,fan" Name="StarFan"/>
##    <Returns>a fan</Returns>
##    <Description>
##      Returns the star fan of the fan <A>fan</A> along the cone <A>cone</A>, as described in cox, 3.2.7
##    </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareOperation( "StarFan",
                  [ IsCone, IsFan ] );

##  <#GAPDoc Label="StarSubdivisionOfIthMaximalCone">
##  <ManSection>
##    <Oper Arg="fan,numb" Name="StarSubdivisionOfIthMaximalCone"/>
##    <Returns>a fan</Returns>
##    <Description>
##      Returns the star subdivision of the fan <A>fan</A> on the <A>numb</A>th maximal cone as in cox, 3.3.13.
##    </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareOperation( "StarSubdivisionOfIthMaximalCone",
                  [ IsFan, IsInt ] );

################################
##
## Constructors
##
################################


DeclareOperation( "Cone",
                  [ IsCone ] );

##  <#GAPDoc Label="Cone">
##  <ManSection>
##    <Oper Arg="cone" Name="Cone"/>
##    <Returns>a cone</Returns>
##    <Description>
##      Returns a cone generated by the rays in <A>cone</A>.
##    </Description>
##  </ManSection>
##  <#/GAPDoc>
##
DeclareOperation( "Cone",
                  [ IsList ] );

DeclareOperation( "Cone",
                  [ IsExternalObject ] );
