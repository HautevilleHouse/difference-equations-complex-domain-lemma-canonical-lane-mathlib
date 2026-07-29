import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferenceEquationsComplexDomainLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  bridgeClosed A

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DifferenceEquationsComplexDomainLemmaCanonicalLaneLean
end HautevilleHouse