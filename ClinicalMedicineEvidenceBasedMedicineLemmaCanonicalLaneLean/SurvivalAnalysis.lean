import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClinicalMedicineEvidenceBasedMedicineLemmaCanonicalLaneLean

structure SurvivalAnalysisPackage where
  hazardFunction : Type u
  survivalFunction : Type v
  censoringMechanism : Prop
  kaplanMeierEstimator : Prop
  coxProportionalHazards : Prop
  logRankTest : Prop

structure SurvivalAnalysisEvidence (S : SurvivalAnalysisPackage) where
  censoringMechanismClosed : S.censoringMechanism
  kaplanMeierEstimatorClosed : S.kaplanMeierEstimator
  coxProportionalHazardsClosed : S.coxProportionalHazards
  logRankTestClosed : S.logRankTest

def SurvivalAnalysisClosed (S : SurvivalAnalysisPackage) : Prop :=
  S.censoringMechanism ∧ S.kaplanMeierEstimator ∧ S.coxProportionalHazards ∧ S.logRankTest

theorem survival_analysis_closed_from_evidence (S : SurvivalAnalysisPackage)
    (E : SurvivalAnalysisEvidence S) : SurvivalAnalysisClosed S := by
  exact And.intro E.censoringMechanismClosed
    (And.intro E.kaplanMeierEstimatorClosed
      (And.intro E.coxProportionalHazardsClosed E.logRankTestClosed))

end ClinicalMedicineEvidenceBasedMedicineLemmaCanonicalLaneLean
end HautevilleHouse
