import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineEvidenceBasedMedicineLemmaCanonicalLaneLean

structure SystematicReview where
  includedStudies : List String
  metaAnalysisPerformed : Prop
  heterogeneityAssessed : Prop
  publicationBias : Prop
  forestPlot : Prop
  overallEffectSize : Prop
  gradeAssessment : Prop

def ReviewClosed (R : SystematicReview) : Prop :=
  R.metaAnalysisPerformed ∧ R.heterogeneityAssessed ∧ R.publicationBias ∧ R.gradeAssessment ∧ R.overallEffectSize

end ClinicalMedicineEvidenceBasedMedicineLemmaCanonicalLaneLean
end HautevilleHouse