import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisPdesCanonicalLaneLean

structure CalderonZygmundPackage where
  kernelType : Type u
  sizeEstimate : Prop
  smoothnessEstimate : Prop
  boundednessOnL2 : Prop
  weakTypeOneOne : Prop

structure CalderonZygmundEvidence (C : CalderonZygmundPackage) where
  sizeEstimateClosed : C.sizeEstimate
  smoothnessEstimateClosed : C.smoothnessEstimate
  boundednessOnL2Closed : C.boundednessOnL2
  weakTypeOneOneClosed : C.weakTypeOneOne

def CalderonZygmundClosed (C : CalderonZygmundPackage) : Prop :=
  C.sizeEstimate ∧ C.smoothnessEstimate ∧ C.boundednessOnL2 ∧ C.weakTypeOneOne

theorem calderon_zygmund_closed_from_evidence (C : CalderonZygmundPackage) (E : CalderonZygmundEvidence C) :
    CalderonZygmundClosed C := by
  exact And.intro E.sizeEstimateClosed (And.intro E.smoothnessEstimateClosed (And.intro E.boundednessOnL2Closed E.weakTypeOneOneClosed))

end HarmonicAnalysisPdesCanonicalLaneLean
end HautevilleHouse