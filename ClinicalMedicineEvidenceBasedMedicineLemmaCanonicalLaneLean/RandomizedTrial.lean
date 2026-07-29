import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineEvidenceBasedMedicineLemmaCanonicalLaneLean

structure RandomizedControlledTrial where
  population : String
  intervention : String
  comparator : String
  outcome : String
  randomization : Prop
  blinding : Prop
  allocationConcealment : Prop
  intentionToTreat : Prop
  effectSize : Prop
  confidenceInterval : Prop

def TrialQualityClosed (R : RandomizedControlledTrial) : Prop :=
  R.randomization ∧ R.blinding ∧ R.allocationConcealment ∧ R.intentionToTreat ∧ R.effectSize ∧ R.confidenceInterval

end ClinicalMedicineEvidenceBasedMedicineLemmaCanonicalLaneLean
end HautevilleHouse