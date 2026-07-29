import DevelopmentalBiologyNeuralCrestDevelopmentTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralCrestDevelopmentTheoremCanonicalLaneLean

structure NeuralCrestMigrationPackage where
  cellPopulation : Type u
  migrationPath : Type v
  chemoattractantGradient : Prop
  cellCellInteraction : Prop
  migrationCompleted : Prop

structure NeuralCrestMigrationEvidence (N : NeuralCrestMigrationPackage) where
  chemoattractantGradientClosed : N.chemoattractantGradient
  cellCellInteractionClosed : N.cellCellInteraction
  migrationCompletedClosed : N.migrationCompleted

def NeuralCrestMigrationClosed (N : NeuralCrestMigrationPackage) : Prop :=
  N.chemoattractantGradient ∧ N.cellCellInteraction ∧ N.migrationCompleted

theorem neural_crest_migration_closed_from_evidence (N : NeuralCrestMigrationPackage) (E : NeuralCrestMigrationEvidence N) : NeuralCrestMigrationClosed N := by
  exact And.intro E.chemoattractantGradientClosed (And.intro E.cellCellInteractionClosed E.migrationCompletedClosed)

end DevelopmentalBiologyNeuralCrestDevelopmentTheoremCanonicalLaneLean
end HautevilleHouse
