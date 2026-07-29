import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralCrestDevelopmentTheoremCanonicalLaneLean

structure MultipotencyDynamicsPackage where
  stemCellPopulation : Type u
  lineageCommitment : Type v
  decisionCircuit : Prop
  plasticity : Prop
  differentiationOutput : Prop

structure MultipotencyDynamicsEvidence (D : MultipotencyDynamicsPackage) where
  decisionCircuitClosed : D.decisionCircuit
  plasticityClosed : D.plasticity
  differentiationOutputClosed : D.differentiationOutput

def MultipotencyDynamicsClosed (D : MultipotencyDynamicsPackage) : Prop :=
  D.decisionCircuit ∧ D.plasticity ∧ D.differentiationOutput

theorem multipotency_dynamics_closed_from_evidence
    (D : MultipotencyDynamicsPackage) (E : MultipotencyDynamicsEvidence D) :
    MultipotencyDynamicsClosed D := by
  exact And.intro E.decisionCircuitClosed
    (And.intro E.plasticityClosed E.differentiationOutputClosed)

end DevelopmentalBiologyNeuralCrestDevelopmentTheoremCanonicalLaneLean
end HautevilleHouse
