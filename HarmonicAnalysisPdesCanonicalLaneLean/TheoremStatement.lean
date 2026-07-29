import canonicalLaneMathlib.TheoremStatement

namespace HautevilleHouse
namespace HarmonicAnalysisPdesCanonicalLaneLean

structure HarmonicAdmittedObject where
  space : Type
  topology : TopologicalSpace space
  pdeSatisfied : Prop
  solutionRegularity : Prop
  conclusion : pdeSatisfied ∧ solutionRegularity

def HarmonicWitnessClosed (O : HarmonicAdmittedObject) : Prop :=
  O.pdeSatisfied ∧ O.solutionRegularity

end HarmonicAnalysisPdesCanonicalLaneLean
end HautevilleHouse
