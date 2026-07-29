import canonicalLaneMathlib.AdmissibleClass

/-!
# Migration and Differentiation Package
-/

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralCrestDevelopmentTheoremCanonicalLaneLean

structure MigrationDifferentiationPackage {Q : NeuralCrestSpecificationPackage}
    (N : GeneRegulatoryNetworkPackage) where
  cellMigration : Prop
  fateSpecification : Prop
  targetIntegration : Prop
  multipotencyResolved : Prop

structure MigrationDifferentiationEvidence {Q : NeuralCrestSpecificationPackage}
    {N : GeneRegulatoryNetworkPackage} (M : MigrationDifferentiationPackage N) where
  cellMigrationClosed : M.cellMigration
  fateSpecificationClosed : M.fateSpecification
  targetIntegrationClosed : M.targetIntegration
  multipotencyResolvedClosed : M.multipotencyResolved

def MigrationDifferentiationClosed {Q : NeuralCrestSpecificationPackage}
    {N : GeneRegulatoryNetworkPackage} (M : MigrationDifferentiationPackage N) : Prop :=
  M.cellMigration ∧ M.fateSpecification ∧ M.targetIntegration ∧ M.multipotencyResolved

theorem migration_differentiation_closed_from_evidence {Q : NeuralCrestSpecificationPackage}
    {N : GeneRegulatoryNetworkPackage} (M : MigrationDifferentiationPackage N)
    (E : MigrationDifferentiationEvidence M) : MigrationDifferentiationClosed M := by
  exact And.intro E.cellMigrationClosed
    (And.intro E.fateSpecificationClosed
      (And.intro E.targetIntegrationClosed E.multipotencyResolvedClosed))

end DevelopmentalBiologyNeuralCrestDevelopmentTheoremCanonicalLaneLean
end HautevilleHouse