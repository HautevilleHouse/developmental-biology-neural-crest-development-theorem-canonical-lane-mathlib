import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralCrestDevelopmentTheoremCanonicalLaneLean

structure NeuralCrestPopulationDynamicsPackage where
  proliferationRate : Prop
  migrationRate : Prop
  differentiationRate : Prop
  cellCellInteraction : Prop
  microenvironmentInfluence : Prop
  stemnessMaintenance : Prop

structure NeuralCrestPopulationDynamicsEvidence (P : NeuralCrestPopulationDynamicsPackage) where
  proliferationRateClosed : P.proliferationRate
  migrationRateClosed : P.migrationRate
  differentiationRateClosed : P.differentiationRate
  cellCellInteractionClosed : P.cellCellInteraction
  microenvironmentInfluenceClosed : P.microenvironmentInfluence
  stemnessMaintenanceClosed : P.stemnessMaintenance

def NeuralCrestPopulationDynamicsClosed (P : NeuralCrestPopulationDynamicsPackage) : Prop :=
  P.proliferationRate ∧ P.migrationRate ∧ P.differentiationRate ∧
  P.cellCellInteraction ∧ P.microenvironmentInfluence ∧ P.stemnessMaintenance

theorem neural_crest_population_dynamics_closed_from_evidence (P : NeuralCrestPopulationDynamicsPackage) (E : NeuralCrestPopulationDynamicsEvidence P) : NeuralCrestPopulationDynamicsClosed P := by
  exact And.intro E.proliferationRateClosed (And.intro E.migrationRateClosed (And.intro E.differentiationRateClosed (And.intro E.cellCellInteractionClosed (And.intro E.microenvironmentInfluenceClosed E.stemnessMaintenanceClosed))))

end DevelopmentalBiologyNeuralCrestDevelopmentTheoremCanonicalLaneLean
end HautevilleHouse