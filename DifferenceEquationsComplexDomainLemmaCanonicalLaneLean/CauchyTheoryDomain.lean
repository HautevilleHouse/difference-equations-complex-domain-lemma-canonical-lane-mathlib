import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferenceEquationsComplexDomainLemmaCanonicalLaneLean

structure CauchyTheoryPackage where
  contourIntegral : Prop
  residueTheorem : Prop
  analyticContinuationPrinciple : Prop
  cauchyIntegralFormula : Prop

structure CauchyTheoryEvidence (C : CauchyTheoryPackage) where
  contourIntegralClosed : C.contourIntegral
  residueTheoremClosed : C.residueTheorem
  analyticContinuationPrincipleClosed : C.analyticContinuationPrinciple
  cauchyIntegralFormulaClosed : C.cauchyIntegralFormula

def CauchyTheoryClosed (C : CauchyTheoryPackage) : Prop :=
  C.contourIntegral ∧ C.residueTheorem ∧ C.analyticContinuationPrinciple ∧ C.cauchyIntegralFormula

theorem cauchy_theory_closed_from_evidence (C : CauchyTheoryPackage) (E : CauchyTheoryEvidence C) :
    CauchyTheoryClosed C := by
  exact And.intro E.contourIntegralClosed
    (And.intro E.residueTheoremClosed
      (And.intro E.analyticContinuationPrincipleClosed E.cauchyIntegralFormulaClosed))

end DifferenceEquationsComplexDomainLemmaCanonicalLaneLean
end HautevilleHouse