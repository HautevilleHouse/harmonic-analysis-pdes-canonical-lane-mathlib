import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisPdesCanonicalLaneLean

structure LittlewoodPaleyPackage where
  dyadicDecomposition : Type u
  squareFunction : Type v
  squareFunctionEstimate : Prop
  multiplierDecomposition : Prop
  regularityGain : Prop

structure LittlewoodPaleyEvidence (L : LittlewoodPaleyPackage) where
  squareFunctionEstimateClosed : L.squareFunctionEstimate
  multiplierDecompositionClosed : L.multiplierDecomposition
  regularityGainClosed : L.regularityGain

def LittlewoodPaleyClosed (L : LittlewoodPaleyPackage) : Prop :=
  L.squareFunctionEstimate ∧ L.multiplierDecomposition ∧ L.regularityGain

theorem littlewood_paley_closed_from_evidence (L : LittlewoodPaleyPackage)
    (E : LittlewoodPaleyEvidence L) : LittlewoodPaleyClosed L := by
  exact And.intro E.squareFunctionEstimateClosed
    (And.intro E.multiplierDecompositionClosed E.regularityGainClosed)

end HarmonicAnalysisPdesCanonicalLaneLean
end HautevilleHouse