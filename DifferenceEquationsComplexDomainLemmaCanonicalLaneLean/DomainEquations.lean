import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.Complex.Basic
import Mathlib.Dynamics.DifferenceEquations

/-! Domain Equations Package: Complex difference equations and meromorphic solutions -/

namespace HautevilleHouse
namespace DifferenceEquationsComplexDomainLemmaCanonicalLaneLean

structure DomainEquationPackage where
  domainType : Type u
  complexStructure : ComplexStructure domainType
  differenceOperator : (ℕ → domainType) → (ℕ → domainType)
  equationForm : Prop
  solutionSpace : Type v

def DomainEquationClosed (P : DomainEquationPackage) : Prop :=
  P.equationForm

end DifferenceEquationsComplexDomainLemmaCanonicalLaneLean
end HautevilleHouse