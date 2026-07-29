import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineEvidenceBasedMedicineLemmaCanonicalLaneLean

structure CompartmentModel where
  compartments : Nat
  rateConstants : Type
  initialDose : Type
  eliminationRate : Prop
  distributionVolume : Prop

def CompartmentModelClosed (M : CompartmentModel) : Prop :=
  M.eliminationRate ∧ M.distributionVolume

structure CompartmentPharmacokineticsPackage where
  model : CompartmentModel
  closedFormSolution : Prop
  clearance : Prop
  halfLife : Prop
  AUC : Prop

def CompartmentPharmacokineticsClosed (P : CompartmentPharmacokineticsPackage) : Prop :=
  CompartmentModelClosed P.model ∧ P.closedFormSolution ∧ P.clearance ∧ P.halfLife ∧ P.AUC

end ClinicalMedicineEvidenceBasedMedicineLemmaCanonicalLaneLean
end HautevilleHouse
