import DevelopmentalBiologyNeuralCrestDevelopmentTheoremCanonicalLaneLean.BridgeLemmas
import DevelopmentalBiologyNeuralCrestDevelopmentTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralCrestDevelopmentTheoremCanonicalLaneLean

def ConstrainedNeuralCrestDevelopmentClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_neural_crest_development_endgame (A : AdmissibleClass) : ConstrainedNeuralCrestDevelopmentClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DevelopmentalBiologyNeuralCrestDevelopmentTheoremCanonicalLaneLean
end HautevilleHouse
