import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisPdesCanonicalLaneLean

structure MaximalFunctionPackage where
  maximalOperator : Type u
  centeredVariant : Type v
  uncenteredVariant : Type w
  weakTypeEstimate : Prop
  strongTypeEstimate : Prop
  differentiationTheorem : Prop

structure MaximalFunctionEvidence (M : MaximalFunctionPackage) where
  weakTypeEstimateClosed : M.weakTypeEstimate
  strongTypeEstimateClosed : M.strongTypeEstimate
  differentiationTheoremClosed : M.differentiationTheorem

def MaximalFunctionClosed (M : MaximalFunctionPackage) : Prop :=
  M.weakTypeEstimate ∧ M.strongTypeEstimate ∧ M.differentiationTheorem

theorem maximal_function_closed_from_evidence (M : MaximalFunctionPackage)
    (E : MaximalFunctionEvidence M) : MaximalFunctionClosed M := by
  exact And.intro E.weakTypeEstimateClosed
    (And.intro E.strongTypeEstimateClosed E.differentiationTheoremClosed)

end HarmonicAnalysisPdesCanonicalLaneLean
end HautevilleHouse