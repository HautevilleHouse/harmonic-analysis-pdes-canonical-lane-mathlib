import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisPdesCanonicalLaneLean

structure MaximalFunctionPackage where
  hardyLittlewoodMaximalFunction : Prop
  maximalFunctionWeakType : Prop
  coveringLemmas : Prop
  differentiationTheorem : Prop
  weightedEstimates : Prop

structure MaximalFunctionEvidence (M : MaximalFunctionPackage) where
  hardyLittlewoodMaximalFunctionClosed : M.hardyLittlewoodMaximalFunction
  maximalFunctionWeakTypeClosed : M.maximalFunctionWeakType
  coveringLemmasClosed : M.coveringLemmas
  differentiationTheoremClosed : M.differentiationTheorem
  weightedEstimatesClosed : M.weightedEstimates

def MaximalFunctionClosed (M : MaximalFunctionPackage) : Prop :=
  M.hardyLittlewoodMaximalFunction ∧ M.maximalFunctionWeakType ∧ M.coveringLemmas ∧ M.differentiationTheorem ∧ M.weightedEstimates

theorem maximal_function_closed_from_evidence (M : MaximalFunctionPackage) (E : MaximalFunctionEvidence M) : MaximalFunctionClosed M := by
  exact And.intro E.hardyLittlewoodMaximalFunctionClosed (And.intro E.maximalFunctionWeakTypeClosed (And.intro E.coveringLemmasClosed (And.intro E.differentiationTheoremClosed E.weightedEstimatesClosed)))

end HarmonicAnalysisPdesCanonicalLaneLean
end HautevilleHouse