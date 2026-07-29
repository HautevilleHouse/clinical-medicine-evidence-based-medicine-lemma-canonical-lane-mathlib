import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineEvidenceBasedMedicineLemmaCanonicalLaneLean

structure StudyLevelData where
  effectSize : Prop
  standardError : Prop
  sampleSize : Prop
  studyDesign : Prop

def StudyLevelDataClosed (S : StudyLevelData) : Prop :=
  S.effectSize ∧ S.standardError ∧ S.sampleSize

structure MetaAnalysisPackage where
  studies : List StudyLevelData
  fixedEffectModel : Prop
  randomEffectsModel : Prop
  heterogeneity : Prop
  publicationBias : Prop
  overallEffect : Prop

def MetaAnalysisClosed (P : MetaAnalysisPackage) : Prop :=
  (∀ s ∈ P.studies, StudyLevelDataClosed s) ∧
  P.fixedEffectModel ∧ P.randomEffectsModel ∧ P.heterogeneity ∧ P.overallEffect

end ClinicalMedicineEvidenceBasedMedicineLemmaCanonicalLaneLean
end HautevilleHouse
