import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineEvidenceBasedMedicineLemmaCanonicalLaneLean

structure CompartmentModelPackage where
  numCompartments : Nat
  transitionRates : Type u
  initialConditions : Type v
  differentialEquations : Prop
  steadyStateSolution : Prop
  identifiability : Prop

structure CompartmentModelEvidence (M : CompartmentModelPackage) where
  differentialEquationsClosed : M.differentialEquations
  steadyStateSolutionClosed : M.steadyStateSolution
  identifiabilityClosed : M.identifiability

def CompartmentModelClosed (M : CompartmentModelPackage) : Prop :=
  M.differentialEquations ∧ M.steadyStateSolution ∧ M.identifiability

theorem compartment_model_closed_from_evidence (M : CompartmentModelPackage)
    (E : CompartmentModelEvidence M) : CompartmentModelClosed M := by
  exact And.intro E.differentialEquationsClosed
    (And.intro E.steadyStateSolutionClosed E.identifiabilityClosed)

end ClinicalMedicineEvidenceBasedMedicineLemmaCanonicalLaneLean
end HautevilleHouse
