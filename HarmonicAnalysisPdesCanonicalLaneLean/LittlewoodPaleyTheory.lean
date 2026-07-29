import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisPdesCanonicalLaneLean

structure LittlewoodPaleyPackage where
  dyadicDecomposition : Type u
  squareFunction : Type v
  multiplierEstimates : Prop
  characterisationSobolev : Prop

structure LittlewoodPaleyEvidence (L : LittlewoodPaleyPackage) where
  multiplierEstimatesClosed : L.multiplierEstimates
  characterisationSobolevClosed : L.characterisationSobolev

def LittlewoodPaleyClosed (L : LittlewoodPaleyPackage) : Prop :=
  L.multiplierEstimates ∧ L.characterisationSobolev

theorem littlewood_paley_closed_from_evidence (L : LittlewoodPaleyPackage)
    (E : LittlewoodPaleyEvidence L) : LittlewoodPaleyClosed L := by
  exact And.intro E.multiplierEstimatesClosed E.characterisationSobolevClosed

end HarmonicAnalysisPdesCanonicalLaneLean
end HautevilleHouse