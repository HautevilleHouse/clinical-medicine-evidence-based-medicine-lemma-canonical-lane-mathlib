import ClinicalMedicineEvidenceBasedMedicineLemmaCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace ClinicalMedicineEvidenceBasedMedicineLemmaCanonicalLaneLean

structure ClinicalTrial where
  id : String
  design : String
  outcome : Prop
  outcomeTerm : outcome

structure ClinicalEvidenceBasedClosure (T : ClinicalTrial) : Prop where
  outcomeEstablished : T.outcome

def clinical_endpoint : String := "evidence_based_medicine_lemma"

end ClinicalMedicineEvidenceBasedMedicineLemmaCanonicalLaneLean
end HautevilleHouse
