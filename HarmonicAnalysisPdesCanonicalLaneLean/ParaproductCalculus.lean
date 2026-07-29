import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisPdesCanonicalLaneLean

structure ParaproductPackage where
  BonyDecompositionType : Type
  paraproductBounds : Prop
  commutatorEstimates : Prop
  symbolicCalculus : Prop

structure ParaproductEvidence (P : ParaproductPackage) where
  paraproductBoundsClosed : P.paraproductBounds
  commutatorEstimatesClosed : P.commutatorEstimates
  symbolicCalculusClosed : P.symbolicCalculus

def ParaproductClosed (P : ParaproductPackage) : Prop :=
  P.paraproductBounds ∧ P.commutatorEstimates ∧ P.symbolicCalculus

theorem paraproduct_closed_from_evidence (P : ParaproductPackage) (E : ParaproductEvidence P) :
    ParaproductClosed P := by
  exact And.intro E.paraproductBoundsClosed (And.intro E.commutatorEstimatesClosed E.symbolicCalculusClosed)

end HarmonicAnalysisPdesCanonicalLaneLean
end HautevilleHouse