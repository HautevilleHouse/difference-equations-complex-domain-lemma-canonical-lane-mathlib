import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferenceEquationsComplexDomainLemmaCanonicalLaneLean

structure ValueDistributionPackage where
  nevanlinnaCharacteristic : Prop
  defectRelation : Prop
  ramificationBounds : Prop
  inverseImageDensity : Prop

structure ValueDistributionEvidence (V : ValueDistributionPackage) where
  nevanlinnaCharacteristicClosed : V.nevanlinnaCharacteristic
  defectRelationClosed : V.defectRelation
  ramificationBoundsClosed : V.ramificationBounds
  inverseImageDensityClosed : V.inverseImageDensity

def ValueDistributionClosed (V : ValueDistributionPackage) : Prop :=
  V.nevanlinnaCharacteristic ∧ V.defectRelation ∧ V.ramificationBounds ∧ V.inverseImageDensity

theorem value_distribution_closed_from_evidence (V : ValueDistributionPackage) (E : ValueDistributionEvidence V) :
    ValueDistributionClosed V := by
  exact And.intro E.nevanlinnaCharacteristicClosed
    (And.intro E.defectRelationClosed
      (And.intro E.ramificationBoundsClosed E.inverseImageDensityClosed))

end DifferenceEquationsComplexDomainLemmaCanonicalLaneLean
end HautevilleHouse