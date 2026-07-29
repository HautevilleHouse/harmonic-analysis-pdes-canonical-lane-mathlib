import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisPdesCanonicalLaneLean

structure FourierMultiplierPackage where
  symbol : Type u
  multiplierOperator : Type v
  boundednessOnLp : Prop
  hormanderCondition : Prop
  symbolRegularity : Prop

structure FourierMultiplierEvidence (F : FourierMultiplierPackage) where
  boundednessOnLpClosed : F.boundednessOnLp
  hormanderConditionClosed : F.hormanderCondition
  symbolRegularityClosed : F.symbolRegularity

def FourierMultiplierClosed (F : FourierMultiplierPackage) : Prop :=
  F.boundednessOnLp ∧ F.hormanderCondition ∧ F.symbolRegularity

theorem fourier_multiplier_closed_from_evidence (F : FourierMultiplierPackage)
    (E : FourierMultiplierEvidence F) : FourierMultiplierClosed F := by
  exact And.intro E.boundednessOnLpClosed
    (And.intro E.hormanderConditionClosed E.symbolRegularityClosed)

end HarmonicAnalysisPdesCanonicalLaneLean
end HautevilleHouse