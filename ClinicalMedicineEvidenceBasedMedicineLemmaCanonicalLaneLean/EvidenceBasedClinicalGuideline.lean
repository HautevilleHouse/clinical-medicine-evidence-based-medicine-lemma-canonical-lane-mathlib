import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineEvidenceBasedMedicineLemmaCanonicalLaneLean

structure ClinicalRecommendation where
  strength : Prop
  evidenceLevel : Prop
  benefitHarmBalance : Prop
  patientValues : Prop

def ClinicalRecommendationClosed (R : ClinicalRecommendation) : Prop :=
  R.strength ∧ R.evidenceLevel

structure GradingSystem where
  levels : Prop
  criteria : Prop
  consistency : Prop

def GradingSystemClosed (G : GradingSystem) : Prop :=
  G.levels ∧ G.criteria ∧ G.consistency

structure EvidenceBasedClinicalGuidelinePackage where
  recommendations : List ClinicalRecommendation
  grading : GradingSystem
  literatureSearch : Prop
  evidenceSynthesis : Prop
  implementationTools : Prop

def EvidenceBasedClinicalGuidelineClosed (P : EvidenceBasedClinicalGuidelinePackage) : Prop :=
  (∀ r ∈ P.recommendations, ClinicalRecommendationClosed r) ∧
  GradingSystemClosed P.grading ∧ P.evidenceSynthesis

end ClinicalMedicineEvidenceBasedMedicineLemmaCanonicalLaneLean
end HautevilleHouse
