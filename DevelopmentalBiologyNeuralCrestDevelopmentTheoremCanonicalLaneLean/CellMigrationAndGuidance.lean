import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralCrestDevelopmentTheoremCanonicalLaneLean

structure CellMigrationAndGuidancePackage where
  chemotaxis : Prop
  haptotaxis : Prop
  contactInhibition : Prop
  cellMatrixAdhesion : Prop
  collectiveCellMigration : Prop
  guidanceCueIntegration : Prop

structure CellMigrationAndGuidanceEvidence (C : CellMigrationAndGuidancePackage) where
  chemotaxisClosed : C.chemotaxis
  haptotaxisClosed : C.haptotaxis
  contactInhibitionClosed : C.contactInhibition
  cellMatrixAdhesionClosed : C.cellMatrixAdhesion
  collectiveCellMigrationClosed : C.collectiveCellMigration
  guidanceCueIntegrationClosed : C.guidanceCueIntegration

def CellMigrationAndGuidanceClosed (C : CellMigrationAndGuidancePackage) : Prop :=
  C.chemotaxis ∧ C.haptotaxis ∧ C.contactInhibition ∧
  C.cellMatrixAdhesion ∧ C.collectiveCellMigration ∧ C.guidanceCueIntegration

theorem cell_migration_and_guidance_closed_from_evidence (C : CellMigrationAndGuidancePackage) (E : CellMigrationAndGuidanceEvidence C) : CellMigrationAndGuidanceClosed C := by
  exact And.intro E.chemotaxisClosed (And.intro E.haptotaxisClosed (And.intro E.contactInhibitionClosed (And.intro E.cellMatrixAdhesionClosed (And.intro E.collectiveCellMigrationClosed E.guidanceCueIntegrationClosed))))

end DevelopmentalBiologyNeuralCrestDevelopmentTheoremCanonicalLaneLean
end HautevilleHouse