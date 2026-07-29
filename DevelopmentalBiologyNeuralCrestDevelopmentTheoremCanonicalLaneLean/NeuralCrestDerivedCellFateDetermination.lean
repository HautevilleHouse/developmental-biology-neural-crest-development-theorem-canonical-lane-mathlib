import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralCrestDevelopmentTheoremCanonicalLaneLean

structure NeuralCrestDerivedCellFateDetermination where
  neurogenicPotential : ℝ
  melanogenicPotential : ℝ
  mesenchymalPotential : ℝ
  fateSpecificationSignalStrength : ℝ
  neurogenicPotentialNonneg : neurogenicPotential ≥ 0
  melanogenicPotentialNonneg : melanogenicPotential ≥ 0
  mesenchymalPotentialNonneg : mesenchymalPotential ≥ 0
  fateSpecificationSignalStrengthPos : fateSpecificationSignalStrength > 0

structure NeuralCrestDerivedCellFateDeterminationEvidence
    (F : NeuralCrestDerivedCellFateDetermination) where
  neurogenicPotentialNonnegClosed : F.neurogenicPotentialNonneg
  melanogenicPotentialNonnegClosed : F.melanogenicPotentialNonneg
  mesenchymalPotentialNonnegClosed : F.mesenchymalPotentialNonneg
  fateSpecificationSignalStrengthPosClosed : F.fateSpecificationSignalStrengthPos

def NeuralCrestDerivedCellFateDeterminationClosed (F : NeuralCrestDerivedCellFateDetermination) : Prop :=
  F.neurogenicPotentialNonneg ∧ F.melanogenicPotentialNonneg ∧ F.mesenchymalPotentialNonneg ∧ F.fateSpecificationSignalStrengthPos

theorem neural_crest_derived_cell_fate_determination_closed_from_evidence
    (F : NeuralCrestDerivedCellFateDetermination) (Ev : NeuralCrestDerivedCellFateDeterminationEvidence F) :
    NeuralCrestDerivedCellFateDeterminationClosed F := by
  exact And.intro Ev.neurogenicPotentialNonnegClosed (And.intro Ev.melanogenicPotentialNonnegClosed
    (And.intro Ev.mesenchymalPotentialNonnegClosed Ev.fateSpecificationSignalStrengthPosClosed))

end DevelopmentalBiologyNeuralCrestDevelopmentTheoremCanonicalLaneLean
end HautevilleHouse