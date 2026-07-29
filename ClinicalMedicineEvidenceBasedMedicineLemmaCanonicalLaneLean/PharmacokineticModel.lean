import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineEvidenceBasedMedicineLemmaCanonicalLaneLean

structure PharmacokineticModelPackage where
  absorptionRate : ℝ
  distributionVolume : ℝ
  eliminationRate : ℝ
  doseRegimen : Prop
  concentrationTimeCourse : Prop
  bioavailability : Prop

structure PharmacokineticModelEvidence (P : PharmacokineticModelPackage) where
  doseRegimenClosed : P.doseRegimen
  concentrationTimeCourseClosed : P.concentrationTimeCourse
  bioavailabilityClosed : P.bioavailability

def PharmacokineticModelClosed (P : PharmacokineticModelPackage) : Prop :=
  P.doseRegimen ∧ P.concentrationTimeCourse ∧ P.bioavailability

theorem pharmacokinetic_model_closed_from_evidence (P : PharmacokineticModelPackage)
    (E : PharmacokineticModelEvidence P) : PharmacokineticModelClosed P := by
  exact And.intro E.doseRegimenClosed
    (And.intro E.concentrationTimeCourseClosed E.bioavailabilityClosed)

end ClinicalMedicineEvidenceBasedMedicineLemmaCanonicalLaneLean
end HautevilleHouse
