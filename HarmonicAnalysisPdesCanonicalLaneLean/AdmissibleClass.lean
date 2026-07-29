import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisPdesCanonicalLaneLean

structure HarmonicAnalysisAdmittedObject where
  carrier : Type u
  topology : TopologicalSpace carrier
  euclideanStructure : Prop
  pdeWellposedness : Prop
  conclusion : euclideanStructure ∧ pdeWellposedness

structure AdmissibleClass where
  object : HarmonicAnalysisAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end HarmonicAnalysisPdesCanonicalLaneLean
end HautevilleHouse