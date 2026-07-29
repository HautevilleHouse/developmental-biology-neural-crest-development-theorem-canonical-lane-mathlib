import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralCrestDevelopmentTheoremCanonicalLaneLean

structure NeuralCrestCellMigrationPathfinding where
  chemotaxisSensitivity : ℝ
  haptotaxisCoefficient : ℝ
  contactInhibitionParameter : ℝ
  pathPersistenceTime : ℝ
  chemotaxisSensitivityPos : chemotaxisSensitivity > 0
  haptotaxisCoefficientPos : haptotaxisCoefficient > 0
  contactInhibitionParameterNonneg : contactInhibitionParameter ≥ 0
  pathPersistenceTimePos : pathPersistenceTime > 0

structure NeuralCrestCellMigrationPathfindingEvidence
    (M : NeuralCrestCellMigrationPathfinding) where
  chemotaxisSensitivityPosClosed : M.chemotaxisSensitivityPos
  haptotaxisCoefficientPosClosed : M.haptotaxisCoefficientPos
  contactInhibitionParameterNonnegClosed : M.contactInhibitionParameterNonneg
  pathPersistenceTimePosClosed : M.pathPersistenceTimePos

def NeuralCrestCellMigrationPathfindingClosed (M : NeuralCrestCellMigrationPathfinding) : Prop :=
  M.chemotaxisSensitivityPos ∧ M.haptotaxisCoefficientPos ∧ M.contactInhibitionParameterNonneg ∧ M.pathPersistenceTimePos

theorem neural_crest_cell_migration_pathfinding_closed_from_evidence
    (M : NeuralCrestCellMigrationPathfinding) (Ev : NeuralCrestCellMigrationPathfindingEvidence M) :
    NeuralCrestCellMigrationPathfindingClosed M := by
  exact And.intro Ev.chemotaxisSensitivityPosClosed (And.intro Ev.haptotaxisCoefficientPosClosed
    (And.intro Ev.contactInhibitionParameterNonnegClosed Ev.pathPersistenceTimePosClosed))

end DevelopmentalBiologyNeuralCrestDevelopmentTheoremCanonicalLaneLean
end HautevilleHouse