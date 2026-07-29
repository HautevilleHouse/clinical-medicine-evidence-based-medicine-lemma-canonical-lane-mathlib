import ClinicalMedicineEvidenceBasedMedicineLemmaCanonicalLaneLean.StatisticalSignificance

namespace HautevilleHouse
namespace ClinicalMedicineEvidenceBasedMedicineLemmaCanonicalLaneLean

structure EffectSizeEstimation where
  pointEstimate : ℝ
  confidenceInterval : ℝ × ℝ
  method : String

def EffectSizeClosed (E : EffectSizeEstimation) : Prop :=
  E.pointEstimate ≠ 0 ∧ E.confidenceInterval.1 ≤ E.pointEstimate ∧ E.pointEstimate ≤ E.confidenceInterval.2

structure EffectSizeEvidence (E : EffectSizeEstimation) where
  pointEstimateNonZero : E.pointEstimate ≠ 0
  intervalValid : E.confidenceInterval.1 ≤ E.pointEstimate ∧ E.pointEstimate ≤ E.confidenceInterval.2

theorem effect_size_closed_from_evidence (E : EffectSizeEstimation) (Ev : EffectSizeEvidence E) : EffectSizeClosed E := by
  exact And.intro Ev.pointEstimateNonZero Ev.intervalValid

end ClinicalMedicineEvidenceBasedMedicineLemmaCanonicalLaneLean
end HautevilleHouse
