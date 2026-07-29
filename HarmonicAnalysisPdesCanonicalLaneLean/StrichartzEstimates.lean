import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisPdesCanonicalLaneLean

structure StrichartzPackage where
  linearStrichartzEstimate : Prop
  inhomogeneousStrichartz : Prop
  endpointEstimates : Prop
  applicationToNls : Prop
  decayEstimates : Prop

structure StrichartzEvidence (S : StrichartzPackage) where
  linearStrichartzEstimateClosed : S.linearStrichartzEstimate
  inhomogeneousStrichartzClosed : S.inhomogeneousStrichartz
  endpointEstimatesClosed : S.endpointEstimates
  applicationToNlsClosed : S.applicationToNls
  decayEstimatesClosed : S.decayEstimates

def StrichartzClosed (S : StrichartzPackage) : Prop :=
  S.linearStrichartzEstimate ∧ S.inhomogeneousStrichartz ∧ S.endpointEstimates ∧ S.applicationToNls ∧ S.decayEstimates

theorem strichartz_closed_from_evidence (S : StrichartzPackage) (E : StrichartzEvidence S) : StrichartzClosed S := by
  exact And.intro E.linearStrichartzEstimateClosed (And.intro E.inhomogeneousStrichartzClosed (And.intro E.endpointEstimatesClosed (And.intro E.applicationToNlsClosed E.decayEstimatesClosed)))

end HarmonicAnalysisPdesCanonicalLaneLean
end HautevilleHouse