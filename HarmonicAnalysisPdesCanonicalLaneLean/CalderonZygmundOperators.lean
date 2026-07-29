import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisPdesCanonicalLaneLean

structure CalderonZygmundPackage where
  kernelType : Type u
  normalizedContinuity : Prop
  sizeConditions : Prop
  cancelationCondition : Prop
  l2Boundedness : Prop
  kernelSmoothnessAssumptions : Prop

structure CalderonZygmundEvidence (C : CalderonZygmundPackage) where
  normalizedContinuityClosed : C.normalizedContinuity
  sizeConditionsClosed : C.sizeConditions
  cancelationConditionClosed : C.cancelationCondition
  l2BoundednessClosed : C.l2Boundedness
  kernelSmoothnessAssumptionsClosed : C.kernelSmoothnessAssumptions

def CalderonZygmundClosed (C : CalderonZygmundPackage) : Prop :=
  C.normalizedContinuity ∧ C.sizeConditions ∧ C.cancelationCondition ∧ C.l2Boundedness ∧ C.kernelSmoothnessAssumptions

theorem calderon_zygmund_closed_from_evidence (C : CalderonZygmundPackage) (E : CalderonZygmundEvidence C) : CalderonZygmundClosed C := by
  exact And.intro E.normalizedContinuityClosed (And.intro E.sizeConditionsClosed (And.intro E.cancelationConditionClosed (And.intro E.l2BoundednessClosed E.kernelSmoothnessAssumptionsClosed)))

end HarmonicAnalysisPdesCanonicalLaneLean
end HautevilleHouse