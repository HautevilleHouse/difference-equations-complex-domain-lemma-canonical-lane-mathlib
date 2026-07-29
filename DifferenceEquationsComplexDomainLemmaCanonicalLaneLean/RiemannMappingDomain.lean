import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferenceEquationsComplexDomainLemmaCanonicalLaneLean

structure RiemannMappingPackage where
  simplyConnectedDomain : Prop
  conformalMapExistence : Prop
  uniquenessUpToAutomorphism : Prop
  conformalMapExtension : Prop

structure RiemannMappingEvidence (R : RiemannMappingPackage) where
  simplyConnectedDomainClosed : R.simplyConnectedDomain
  conformalMapExistenceClosed : R.conformalMapExistence
  uniquenessUpToAutomorphismClosed : R.uniquenessUpToAutomorphism
  conformalMapExtensionClosed : R.conformalMapExtension

def RiemannMappingClosed (R : RiemannMappingPackage) : Prop :=
  R.simplyConnectedDomain ∧ R.conformalMapExistence ∧ R.uniquenessUpToAutomorphism ∧ R.conformalMapExtension

theorem riemann_mapping_closed_from_evidence (R : RiemannMappingPackage) (E : RiemannMappingEvidence R) :
    RiemannMappingClosed R := by
  exact And.intro E.simplyConnectedDomainClosed
    (And.intro E.conformalMapExistenceClosed
      (And.intro E.uniquenessUpToAutomorphismClosed E.conformalMapExtensionClosed))

end DifferenceEquationsComplexDomainLemmaCanonicalLaneLean
end HautevilleHouse