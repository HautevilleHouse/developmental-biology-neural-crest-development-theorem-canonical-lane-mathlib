import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralCrestDevelopmentTheoremCanonicalLaneLean

structure NeuralCrestCellPopulationDynamics where
  proliferationRate : ℝ
  apoptosisRate : ℝ
  migrationSpeed : ℝ
  cellCellAdhesion : ℝ
  proliferationRatePos : proliferationRate > 0
  apoptosisRateNonneg : apoptosisRate ≥ 0
  migrationSpeedPos : migrationSpeed > 0
  cellCellAdhesionNonneg : cellCellAdhesion ≥ 0

structure NeuralCrestCellPopulationDynamicsEvidence (D : NeuralCrestCellPopulationDynamics) where
  proliferationRatePosClosed : D.proliferationRatePos
  apoptosisRateNonnegClosed : D.apoptosisRateNonneg
  migrationSpeedPosClosed : D.migrationSpeedPos
  cellCellAdhesionNonnegClosed : D.cellCellAdhesionNonneg

def NeuralCrestCellPopulationDynamicsClosed (D : NeuralCrestCellPopulationDynamics) : Prop :=
  D.proliferationRatePos ∧ D.apoptosisRateNonneg ∧ D.migrationSpeedPos ∧ D.cellCellAdhesionNonneg

theorem neural_crest_cell_population_dynamics_closed_from_evidence
    (D : NeuralCrestCellPopulationDynamics) (E : NeuralCrestCellPopulationDynamicsEvidence D) :
    NeuralCrestCellPopulationDynamicsClosed D := by
  exact And.intro E.proliferationRatePosClosed (And.intro E.apoptosisRateNonnegClosed
    (And.intro E.migrationSpeedPosClosed E.cellCellAdhesionNonnegClosed))

end DevelopmentalBiologyNeuralCrestDevelopmentTheoremCanonicalLaneLean
end HautevilleHouse