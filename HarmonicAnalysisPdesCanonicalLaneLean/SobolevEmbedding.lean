import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace HarmonicAnalysisPdesCanonicalLaneLean

structure SobolevEmbeddingPackage where
  domainDimension : Nat
  sobolevExponent : ℝ
  embeddingTarget : Type u
  embeddingInequality : Prop
  compactEmbedding : Prop

structure SobolevEmbeddingEvidence (S : SobolevEmbeddingPackage) where
  embeddingInequalityClosed : S.embeddingInequality
  compactEmbeddingClosed : S.compactEmbedding

def SobolevEmbeddingClosed (S : SobolevEmbeddingPackage) : Prop :=
  S.embeddingInequality ∧ S.compactEmbedding

theorem sobolev_embedding_closed_from_evidence
    (S : SobolevEmbeddingPackage) (E : SobolevEmbeddingEvidence S) :
    SobolevEmbeddingClosed S := by
  exact And.intro E.embeddingInequalityClosed E.compactEmbeddingClosed

end HarmonicAnalysisPdesCanonicalLaneLean
end HautevilleHouse