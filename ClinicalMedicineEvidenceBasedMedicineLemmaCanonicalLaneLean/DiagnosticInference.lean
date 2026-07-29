import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineEvidenceBasedMedicineLemmaCanonicalLaneLean

structure DiagnosticStudy where
  population : String
  indexTest : String
  referenceStandard : String
  patientSampleSize : Nat
  sensitivity : Prop
  specificity : Prop
  likelihoodRatioPositive : Prop
  likelihoodRatioNegative : Prop

def DiagnosticAccuracyClosed (D : DiagnosticStudy) : Prop :=
  D.sensitivity ∧ D.specificity ∧ D.likelihoodRatioPositive ∧ D.likelihoodRatioNegative

end ClinicalMedicineEvidenceBasedMedicineLemmaCanonicalLaneLean
end HautevilleHouse