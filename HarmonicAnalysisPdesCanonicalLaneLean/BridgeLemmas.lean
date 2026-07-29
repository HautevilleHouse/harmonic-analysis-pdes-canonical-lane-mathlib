import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisPdesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  HarmonicWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end HarmonicAnalysisPdesCanonicalLaneLean
end HautevilleHouse