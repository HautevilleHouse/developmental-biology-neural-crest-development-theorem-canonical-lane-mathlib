import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralCrestDevelopmentTheoremCanonicalLaneLean

structure ExtracellularMatrixGuidanceSignaling where
  fibronectinConcentration : ℝ
  lamininConcentration : ℝ
  integrinBindingAffinity : ℝ
  chemotacticGradientStrength : ℝ
  fibronectinPositive : fibronectinConcentration > 0
  lamininPositive : lamininConcentration > 0
  integrinBindingAffinityPos : integrinBindingAffinity > 0
  chemotacticGradientStrengthPos : chemotacticGradientStrength > 0

structure ExtracellularMatrixGuidanceSignalingEvidence
    (E : ExtracellularMatrixGuidanceSignaling) where
  fibronectinPositiveClosed : E.fibronectinPositive
  lamininPositiveClosed : E.lamininPositive
  integrinBindingAffinityPosClosed : E.integrinBindingAffinityPos
  chemotacticGradientStrengthPosClosed : E.chemotacticGradientStrengthPos

def ExtracellularMatrixGuidanceSignalingClosed (E : ExtracellularMatrixGuidanceSignaling) : Prop :=
  E.fibronectinPositive ∧ E.lamininPositive ∧ E.integrinBindingAffinityPos ∧ E.chemotacticGradientStrengthPos

theorem extracellular_matrix_guidance_signaling_closed_from_evidence
    (E : ExtracellularMatrixGuidanceSignaling) (Ev : ExtracellularMatrixGuidanceSignalingEvidence E) :
    ExtracellularMatrixGuidanceSignalingClosed E := by
  exact And.intro Ev.fibronectinPositiveClosed (And.intro Ev.lamininPositiveClosed
    (And.intro Ev.integrinBindingAffinityPosClosed Ev.chemotacticGradientStrengthPosClosed))

end DevelopmentalBiologyNeuralCrestDevelopmentTheoremCanonicalLaneLean
end HautevilleHouse