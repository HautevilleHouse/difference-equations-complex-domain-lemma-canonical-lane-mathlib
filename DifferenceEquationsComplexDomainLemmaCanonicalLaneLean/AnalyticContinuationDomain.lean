import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferenceEquationsComplexDomainLemmaCanonicalLaneLean

structure AnalyticContinuationPackage where
  germExistence : Prop
  continuationAlongPath : Prop
  monodromyTheorem : Prop
  multivaluednessControlled : Prop

structure AnalyticContinuationEvidence (A : AnalyticContinuationPackage) where
  germExistenceClosed : A.germExistence
  continuationAlongPathClosed : A.continuationAlongPath
  monodromyTheoremClosed : A.monodromyTheorem
  multivaluednessControlledClosed : A.multivaluednessControlled

def AnalyticContinuationClosed (A : AnalyticContinuationPackage) : Prop :=
  A.germExistence ∧ A.continuationAlongPath ∧ A.monodromyTheorem ∧ A.multivaluednessControlled

theorem analytic_continuation_closed_from_evidence (A : AnalyticContinuationPackage) (E : AnalyticContinuationEvidence A) :
    AnalyticContinuationClosed A := by
  exact And.intro E.germExistenceClosed
    (And.intro E.continuationAlongPathClosed
      (And.intro E.monodromyTheoremClosed E.multivaluednessControlledClosed))

end DifferenceEquationsComplexDomainLemmaCanonicalLaneLean
end HautevilleHouse