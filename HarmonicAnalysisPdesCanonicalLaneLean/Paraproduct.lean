import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisPdesCanonicalLaneLean

structure ParaproductPackage where
  paraproductOperator : Type u
  BonyParadifferential : Type v
  symbolicCalculus : Prop
  productEstimate : Prop
  commutatorEstimate : Prop

structure ParaproductEvidence (P : ParaproductPackage) where
  symbolicCalculusClosed : P.symbolicCalculus
  productEstimateClosed : P.productEstimate
  commutatorEstimateClosed : P.commutatorEstimate

def ParaproductClosed (P : ParaproductPackage) : Prop :=
  P.symbolicCalculus ∧ P.productEstimate ∧ P.commutatorEstimate

theorem paraproduct_closed_from_evidence (P : ParaproductPackage)
    (E : ParaproductEvidence P) : ParaproductClosed P := by
  exact And.intro E.symbolicCalculusClosed
    (And.intro E.productEstimateClosed E.commutatorEstimateClosed)

end HarmonicAnalysisPdesCanonicalLaneLean
end HautevilleHouse