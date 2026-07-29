import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisPdesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  True

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  trivial

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

def ConstrainedHarmonicAnalysisClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_harmonic_analysis_endgame (A : AdmissibleClass) :
    ConstrainedHarmonicAnalysisClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end HarmonicAnalysisPdesCanonicalLaneLean
end HautevilleHouse