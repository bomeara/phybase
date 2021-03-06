\name{steac.sptree}
\alias{steac.sptree}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Build a STEAC tree }
\description{
  The function can build a STEAC tree from a set of gene trees.
}
\usage{
steac.sptree(trees, speciesname, taxaname, species.structure,outgroup,method="nj") 
}
\arguments{
  \item{trees}{ the gene tree vector }
  \item{speciesname}{species names}
  \item{taxaname}{taxa names}
  \item{species.structure}{ a matrix defining the species-taxa relationship }
  \item{outgroup}{outgroup}
 \item{method}{UPGMA or NJ}
}
\value{
  The function returns a STEAC tree.
}
\author{ Liang Liu \email{lliu@uga.edu} }
\seealso{ \code{\link{mrca.2nodes}}, \code{\link{mrca.nodes}} }
\examples{
#create three gene trees
treestr<-rep("",4)
treestr[1]<-"((((H:0.00402,C:0.00402):0.00304,G:0.00706):0.00929,O:0.01635):0.1,W:0.11635);"
treestr[2]<-"((((H:0.00402,G:0.00402):0.00304,C:0.00706):0.00929,O:0.01635):0.1,W:0.11635);"
treestr[3]<-"((((O:0.00402,C:0.00402):0.00304,G:0.00706):0.00929,H:0.01635):0.1,W:0.11635);"
treestr[4]<-"((((H:0.00402,C:0.00402):0.00304,G:0.00706):0.00929,O:0.01635):0.1,W:0.11635);"

speciesname<-species.name(treestr[1])
taxaname<-speciesname
species.structure<-matrix(0,ncol=5,nrow=5)
diag(species.structure)<-1

steac.sptree(treestr, speciesname, taxaname, species.structure,outgroup="W",method="nj") 

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ programming }

