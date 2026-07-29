import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.Complex.Basic

/-! Lemma Application Package: Application of the difference equations complex domain lemma -/

namespace HautevilleHouse
namespace DifferenceEquationsComplexDomainLemmaCanonicalLaneLean

structure LemmaApplicationPackage where
  equationSatisfied : Prop
  domainCondition : Prop
  solutionBound : Prop
  lemmaConcluded : Prop

def LemmaApplicationClosed (L : LemmaApplicationPackage) : Prop :=
  L.equationSatisfied ∧ L.domainCondition ∧
  L.solutionBound ∧ L.lemmaConcluded

end DifferenceEquationsComplexDomainLemmaCanonicalLaneLean
end HautevilleHouse