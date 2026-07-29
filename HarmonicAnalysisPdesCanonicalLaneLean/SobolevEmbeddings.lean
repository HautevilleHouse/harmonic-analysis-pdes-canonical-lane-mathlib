import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisPdesCanonicalLaneLean

structure SobolevEmbeddingPackage where
  sobolevInequality : Prop
  criticalExponent : Prop
  compactEmbedding : Prop
  traceEmbedding : Prop

structure SobolevEmbeddingEvidence (S : SobolevEmbeddingPackage) where
  sobolevInequalityClosed : S.sobolevInequality
  criticalExponentClosed : S.criticalExponent
  compactEmbeddingClosed : S.compactEmbedding
  traceEmbeddingClosed : S.traceEmbedding

def SobolevEmbeddingClosed (S : SobolevEmbeddingPackage) : Prop :=
  S.sobolevInequality ∧ S.criticalExponent ∧ S.compactEmbedding ∧ S.traceEmbedding

theorem sobolev_embedding_closed_from_evidence (S : SobolevEmbeddingPackage)
    (E : SobolevEmbeddingEvidence S) : SobolevEmbeddingClosed S := by
  exact And.intro E.sobolevInequalityClosed
    (And.intro E.criticalExponentClosed
      (And.intro E.compactEmbeddingClosed E.traceEmbeddingClosed))

end HarmonicAnalysisPdesCanonicalLaneLean
end HautevilleHouse