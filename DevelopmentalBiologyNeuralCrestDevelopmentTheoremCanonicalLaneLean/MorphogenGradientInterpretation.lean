import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralCrestDevelopmentTheoremCanonicalLaneLean

structure MorphogenGradientInterpretationPackage where
  gradientFormation : Prop
  gradientDecoding : Prop
  concentrationThreshold : Prop
  cellPositionalIdentity : Prop
  collectiveGradientIntegration : Prop
  tissueScalePattern : Prop

structure MorphogenGradientInterpretationEvidence (M : MorphogenGradientInterpretationPackage) where
  gradientFormationClosed : M.gradientFormation
  gradientDecodingClosed : M.gradientDecoding
  concentrationThresholdClosed : M.concentrationThreshold
  cellPositionalIdentityClosed : M.cellPositionalIdentity
  collectiveGradientIntegrationClosed : M.collectiveGradientIntegration
  tissueScalePatternClosed : M.tissueScalePattern

def MorphogenGradientInterpretationClosed (M : MorphogenGradientInterpretationPackage) : Prop :=
  M.gradientFormation ∧ M.gradientDecoding ∧ M.concentrationThreshold ∧
  M.cellPositionalIdentity ∧ M.collectiveGradientIntegration ∧ M.tissueScalePattern

theorem morphogen_gradient_interpretation_closed_from_evidence (M : MorphogenGradientInterpretationPackage) (E : MorphogenGradientInterpretationEvidence M) : MorphogenGradientInterpretationClosed M := by
  exact And.intro E.gradientFormationClosed (And.intro E.gradientDecodingClosed (And.intro E.concentrationThresholdClosed (And.intro E.cellPositionalIdentityClosed (And.intro E.collectiveGradientIntegrationClosed E.tissueScalePatternClosed))))

end DevelopmentalBiologyNeuralCrestDevelopmentTheoremCanonicalLaneLean
end HautevilleHouse