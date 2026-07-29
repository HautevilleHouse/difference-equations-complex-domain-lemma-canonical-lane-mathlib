import canonicalLaneMathlib.AdmissibleClass
import DifferenceEquationsComplexDomainLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DifferenceEquationsComplexDomainLemmaCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := "difference-equations-complex-domain-lemma-canonical-lane",
    theoremName := "Difference Equations Complex Domain Lemma",
    theoremObject := "admissible closure for difference equations in complex domain",
    classicalBoundary := "theorem boundary open: source conjecture closure not claimed",
    manifoldConstrainedStatement := "theorem certificate internalized through baseline gates, source constants, reviewer bridge, manifest hashes, and outside-constant dependency count",
    certificateLane := "manifold_constrained",
    carriedRemainder := "classical source boundary carried by theoremBoundaryOpen and sourceTheoremBoundary"
  }

end DifferenceEquationsComplexDomainLemmaCanonicalLaneLean
end HautevilleHouse