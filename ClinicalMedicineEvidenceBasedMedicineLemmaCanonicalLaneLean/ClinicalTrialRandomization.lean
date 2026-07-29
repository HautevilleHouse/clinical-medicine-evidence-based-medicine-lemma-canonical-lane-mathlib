import ClinicalMedicineEvidenceBasedMedicineLemmaCanonicalLaneLean.SourceDependencies

namespace HautevilleHouse
namespace ClinicalMedicineEvidenceBasedMedicineLemmaCanonicalLaneLean

structure ClinicalTrialRandomization where
  treatmentArm : Type u
  controlArm : Type v
  allocationConcealed : Bool
  blindingMethod : String

def RandomizationClosed (R : ClinicalTrialRandomization) : Prop :=
  R.allocationConcealed ∧ R.blindingMethod ≠ ""

structure RandomizationEvidence (R : ClinicalTrialRandomization) where
  allocationConcealedClosed : R.allocationConcealed
  blindingMethodClosed : R.blindingMethod ≠ ""

theorem randomization_closed_from_evidence (R : ClinicalTrialRandomization) (E : RandomizationEvidence R) : RandomizationClosed R := by
  exact And.intro E.allocationConcealedClosed E.blindingMethodClosed

end ClinicalMedicineEvidenceBasedMedicineLemmaCanonicalLaneLean
end HautevilleHouse
