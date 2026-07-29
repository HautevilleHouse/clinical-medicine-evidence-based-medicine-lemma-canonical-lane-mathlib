import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineEvidenceBasedMedicineLemmaCanonicalLaneLean

structure DiagnosticTestEvaluationPackage where
  sensitivity : Prop
  specificity : Prop
  positivePredictiveValue : Prop
  negativePredictiveValue : Prop
  prevalence : ℝ
  likelihoodRatios : Prop

structure DiagnosticTestEvaluationEvidence (D : DiagnosticTestEvaluationPackage) where
  sensitivityClosed : D.sensitivity
  specificityClosed : D.specificity
  positivePredictiveValueClosed : D.positivePredictiveValue
  negativePredictiveValueClosed : D.negativePredictiveValue
  likelihoodRatiosClosed : D.likelihoodRatios

def DiagnosticTestEvaluationClosed (D : DiagnosticTestEvaluationPackage) : Prop :=
  D.sensitivity ∧ D.specificity ∧ D.positivePredictiveValue ∧ D.negativePredictiveValue ∧ D.likelihoodRatios

theorem diagnostic_test_evaluation_closed_from_evidence (D : DiagnosticTestEvaluationPackage)
    (E : DiagnosticTestEvaluationEvidence D) : DiagnosticTestEvaluationClosed D := by
  exact And.intro E.sensitivityClosed
    (And.intro E.specificityClosed
      (And.intro E.positivePredictiveValueClosed
        (And.intro E.negativePredictiveValueClosed E.likelihoodRatiosClosed)))

end ClinicalMedicineEvidenceBasedMedicineLemmaCanonicalLaneLean
end HautevilleHouse
