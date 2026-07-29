import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisPdesCanonicalLaneLean

structure ParabolicPdePackage where
  heatKernelEstimate : Prop
  maximalRegularity : Prop
  schauderEstimate : Prop
  energyEstimate : Prop
  localWellPosedness : Prop

structure ParabolicPdeEvidence (P : ParabolicPdePackage) where
  heatKernelEstimateClosed : P.heatKernelEstimate
  maximalRegularityClosed : P.maximalRegularity
  schauderEstimateClosed : P.schauderEstimate
  energyEstimateClosed : P.energyEstimate
  localWellPosednessClosed : P.localWellPosedness

def ParabolicPdeClosed (P : ParabolicPdePackage) : Prop :=
  P.heatKernelEstimate ∧ P.maximalRegularity ∧ P.schauderEstimate ∧ P.energyEstimate ∧ P.localWellPosedness

theorem parabolic_pde_closed_from_evidence (P : ParabolicPdePackage) (E : ParabolicPdeEvidence P) : ParabolicPdeClosed P := by
  exact And.intro E.heatKernelEstimateClosed (And.intro E.maximalRegularityClosed (And.intro E.schauderEstimateClosed (And.intro E.energyEstimateClosed E.localWellPosednessClosed)))

end HarmonicAnalysisPdesCanonicalLaneLean
end HautevilleHouse