import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineEvidenceBasedMedicineLemmaCanonicalLaneLean

structure ClinicalTrialDesign where
  randomization : Prop
  blinding : Prop
  controlGroup : Prop
  outcomeMeasurement : Prop
  sampleSizeCalculation : Prop

structure TrialDesignEvidence (T : ClinicalTrialDesign) where
  randomizationClosed : T.randomization
  blindingClosed : T.blinding
  controlGroupClosed : T.controlGroup
  outcomeMeasurementClosed : T.outcomeMeasurement
  sampleSizeCalculationClosed : T.sampleSizeCalculation

def TrialDesignClosed (T : ClinicalTrialDesign) : Prop :=
  T.randomization ∧ T.blinding ∧ T.controlGroup ∧
  T.outcomeMeasurement ∧ T.sampleSizeCalculation

theorem trial_design_closed_from_evidence (T : ClinicalTrialDesign)
    (E : TrialDesignEvidence T) : TrialDesignClosed T := by
  exact And.intro E.randomizationClosed
    (And.intro E.blindingClosed
      (And.intro E.controlGroupClosed
        (And.intro E.outcomeMeasurementClosed E.sampleSizeCalculationClosed)))

end ClinicalMedicineEvidenceBasedMedicineLemmaCanonicalLaneLean
end HautevilleHouse