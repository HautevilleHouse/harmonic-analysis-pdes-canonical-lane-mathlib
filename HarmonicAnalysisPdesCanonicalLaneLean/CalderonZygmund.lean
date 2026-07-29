import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisPdesCanonicalLaneLean

structure CalderonZygmundPackage where
  kernel : Type u
  principalValueIntegral : Type v
  weakBoundary : Prop
  LpBoundedness : Prop
  kernelRegularity : Prop

structure CalderonZygmundEvidence (C : CalderonZygmundPackage) where
  weakBoundaryClosed : C.weakBoundary
  LpBoundednessClosed : C.LpBoundedness
  kernelRegularityClosed : C.kernelRegularity

def CalderonZygmundClosed (C : CalderonZygmundPackage) : Prop :=
  C.weakBoundary ∧ C.LpBoundedness ∧ C.kernelRegularity

theorem calderon_zygmund_closed_from_evidence (C : CalderonZygmundPackage)
    (E : CalderonZygmundEvidence C) : CalderonZygmundClosed C := by
  exact And.intro E.weakBoundaryClosed
    (And.intro E.LpBoundednessClosed E.kernelRegularityClosed)

end HarmonicAnalysisPdesCanonicalLaneLean
end HautevilleHouse