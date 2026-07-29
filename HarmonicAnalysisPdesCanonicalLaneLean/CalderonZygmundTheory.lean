import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisPdesCanonicalLaneLean

structure CalderonZygmundPackage where
  singularIntegralKernel : Type u
  maximalFunction : Type v
  weakTypeBound : Prop
  strongTypeBound : Prop
  interpolationRange : Prop

structure CalderonZygmundEvidence (C : CalderonZygmundPackage) where
  weakTypeBoundClosed : C.weakTypeBound
  strongTypeBoundClosed : C.strongTypeBound
  interpolationRangeClosed : C.interpolationRange

def CalderonZygmundClosed (C : CalderonZygmundPackage) : Prop :=
  C.weakTypeBound ∧ C.strongTypeBound ∧ C.interpolationRange

theorem calderon_zygmund_closed_from_evidence (C : CalderonZygmundPackage)
    (E : CalderonZygmundEvidence C) : CalderonZygmundClosed C := by
  exact And.intro E.weakTypeBoundClosed (And.intro E.strongTypeBoundClosed E.interpolationRangeClosed)

end HarmonicAnalysisPdesCanonicalLaneLean
end HautevilleHouse