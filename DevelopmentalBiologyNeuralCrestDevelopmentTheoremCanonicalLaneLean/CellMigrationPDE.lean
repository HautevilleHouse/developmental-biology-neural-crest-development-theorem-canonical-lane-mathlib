import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DevelopmentalBiologyNeuralCrestDevelopmentTheoremCanonicalLaneLean.GeneRegulatoryNetwork

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralCrestDevelopmentTheoremCanonicalLaneLean

structure CellMigrationPDEPackage (G : GeneRegulatoryNetworkPackage) where
  chemotaxisGradient : Type u
  adhesionMolecules : Type v
  migrationEquation : Prop
  boundaryConditions : Prop
  solutionExistence : Prop

structure CellMigrationPDEEvidence {G : GeneRegulatoryNetworkPackage}
    (M : CellMigrationPDEPackage G) where
  migrationEquationClosed : M.migrationEquation
  boundaryConditionsClosed : M.boundaryConditions
  solutionExistenceClosed : M.solutionExistence

def CellMigrationPDEClosed {G : GeneRegulatoryNetworkPackage}
    (M : CellMigrationPDEPackage G) : Prop :=
  M.migrationEquation ∧ M.boundaryConditions ∧ M.solutionExistence

theorem cell_migration_pde_closed_from_evidence
    {G : GeneRegulatoryNetworkPackage} (M : CellMigrationPDEPackage G)
    (E : CellMigrationPDEEvidence M) : CellMigrationPDEClosed M := by
  exact And.intro E.migrationEquationClosed
    (And.intro E.boundaryConditionsClosed E.solutionExistenceClosed)

end DevelopmentalBiologyNeuralCrestDevelopmentTheoremCanonicalLaneLean
end HautevilleHouse
