import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineEvidenceBasedMedicineLemmaCanonicalLaneLean

structure EvidenceSynthesis where
  systematicReview : Prop
  metaAnalysis : Prop
  heterogeneity : Prop
  publicationBias : Prop
  sensitivityAnalysis : Prop

structure SynthesisEvidence (E : EvidenceSynthesis) where
  systematicReviewClosed : E.systematicReview
  metaAnalysisClosed : E.metaAnalysis
  heterogeneityClosed : E.heterogeneity
  publicationBiasClosed : E.publicationBias
  sensitivityAnalysisClosed : E.sensitivityAnalysis

def SynthesisClosed (E : EvidenceSynthesis) : Prop :=
  E.systematicReview ∧ E.metaAnalysis ∧ E.heterogeneity ∧
  E.publicationBias ∧ E.sensitivityAnalysis

theorem synthesis_closed_from_evidence (S : EvidenceSynthesis)
    (E : SynthesisEvidence S) : SynthesisClosed S := by
  exact And.intro E.systematicReviewClosed
    (And.intro E.metaAnalysisClosed
      (And.intro E.heterogeneityClosed
        (And.intro E.publicationBiasClosed E.sensitivityAnalysisClosed)))

end ClinicalMedicineEvidenceBasedMedicineLemmaCanonicalLaneLean
end HautevilleHouse