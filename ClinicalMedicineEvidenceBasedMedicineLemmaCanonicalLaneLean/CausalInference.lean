import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineEvidenceBasedMedicineLemmaCanonicalLaneLean

structure CausalInference where
  counterfactualConsistency : Prop
  exchangeability : Prop
  positivity : Prop
  causalDiagram : Prop
  instrumentalVariables : Prop

structure CausalEvidence (C : CausalInference) where
  counterfactualConsistencyClosed : C.counterfactualConsistency
  exchangeabilityClosed : C.exchangeability
  positivityClosed : C.positivity
  causalDiagramClosed : C.causalDiagram
  instrumentalVariablesClosed : C.instrumentalVariables

def CausalClosed (C : CausalInference) : Prop :=
  C.counterfactualConsistency ∧ C.exchangeability ∧ C.positivity ∧
  C.causalDiagram ∧ C.instrumentalVariables

theorem causal_closed_from_evidence (C : CausalInference)
    (E : CausalEvidence C) : CausalClosed C := by
  exact And.intro E.counterfactualConsistencyClosed
    (And.intro E.exchangeabilityClosed
      (And.intro E.positivityClosed
        (And.intro E.causalDiagramClosed E.instrumentalVariablesClosed)))

end ClinicalMedicineEvidenceBasedMedicineLemmaCanonicalLaneLean
end HautevilleHouse