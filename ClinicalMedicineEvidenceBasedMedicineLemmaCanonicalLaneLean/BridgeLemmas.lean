import ClinicalMedicineEvidenceBasedMedicineLemmaCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace ClinicalMedicineEvidenceBasedMedicineLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  MedicineWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ClinicalMedicineEvidenceBasedMedicineLemmaCanonicalLaneLean
end HautevilleHouse
