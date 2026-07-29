import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisPdesCanonicalLaneLean

structure SingularIntegralBoundednessPackage where
  operatorFamily : Type u
  kernelCalderonZygmund : Prop
  l2BoundednessTransferred : Prop
  lpInterpolation : Prop

structure SingularIntegralBoundednessEvidence (S : SingularIntegralBoundednessPackage) where
  kernelCalderonZygmundClosed : S.kernelCalderonZygmund
  l2BoundednessTransferredClosed : S.l2BoundednessTransferred
  lpInterpolationClosed : S.lpInterpolation

def SingularIntegralBoundednessClosed (S : SingularIntegralBoundednessPackage) : Prop :=
  S.kernelCalderonZygmund ∧ S.l2BoundednessTransferred ∧ S.lpInterpolation

theorem singular_integral_boundedness_closed_from_evidence (S : SingularIntegralBoundednessPackage) (E : SingularIntegralBoundednessEvidence S) :
    SingularIntegralBoundednessClosed S := by
  exact And.intro E.kernelCalderonZygmundClosed (And.intro E.l2BoundednessTransferredClosed E.lpInterpolationClosed)

end HarmonicAnalysisPdesCanonicalLaneLean
end HautevilleHouse