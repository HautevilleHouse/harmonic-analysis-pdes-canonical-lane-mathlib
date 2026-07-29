import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisPdesCanonicalLaneLean

structure FourierMultiplierPackage where
  multiplierSymbolType : Type
  hormanderCondition : Prop
  multiplierBoundedness : Prop
  mihlinTheorem : Prop

structure FourierMultiplierEvidence (M : FourierMultiplierPackage) where
  hormanderConditionClosed : M.hormanderCondition
  multiplierBoundednessClosed : M.multiplierBoundedness
  mihlinTheoremClosed : M.mihlinTheorem

def FourierMultiplierClosed (M : FourierMultiplierPackage) : Prop :=
  M.hormanderCondition ∧ M.multiplierBoundedness ∧ M.mihlinTheorem

theorem fourier_multiplier_closed_from_evidence (M : FourierMultiplierPackage) (E : FourierMultiplierEvidence M) :
    FourierMultiplierClosed M := by
  exact And.intro E.hormanderConditionClosed (And.intro E.multiplierBoundednessClosed E.mihlinTheoremClosed)

end HarmonicAnalysisPdesCanonicalLaneLean
end HautevilleHouse