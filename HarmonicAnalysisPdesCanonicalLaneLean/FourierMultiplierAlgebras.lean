import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisPdesCanonicalLaneLean

structure FourierMultiplierPackage where
  multiplierDefinition : Type u
  mikhlinMultiplierTheorem : Prop
  hormanderMultiplierTheorem : Prop
  marciniewiczInterpolation : Prop
  transferenceResults : Prop

structure FourierMultiplierEvidence (F : FourierMultiplierPackage) where
  multiplierDefinitionClosed : F.multiplierDefinition
  mikhlinMultiplierTheoremClosed : F.mikhlinMultiplierTheorem
  hormanderMultiplierTheoremClosed : F.hormanderMultiplierTheorem
  marciniewiczInterpolationClosed : F.marciniewiczInterpolation
  transferenceResultsClosed : F.transferenceResults

def FourierMultiplierClosed (F : FourierMultiplierPackage) : Prop :=
  F.multiplierDefinition ∧ F.mikhlinMultiplierTheorem ∧ F.hormanderMultiplierTheorem ∧ F.marciniewiczInterpolation ∧ F.transferenceResults

theorem fourier_multiplier_closed_from_evidence (F : FourierMultiplierPackage) (E : FourierMultiplierEvidence F) : FourierMultiplierClosed F := by
  exact And.intro E.multiplierDefinitionClosed (And.intro E.mikhlinMultiplierTheoremClosed (And.intro E.hormanderMultiplierTheoremClosed (And.intro E.marciniewiczInterpolationClosed E.transferenceResultsClosed)))

end HarmonicAnalysisPdesCanonicalLaneLean
end HautevilleHouse