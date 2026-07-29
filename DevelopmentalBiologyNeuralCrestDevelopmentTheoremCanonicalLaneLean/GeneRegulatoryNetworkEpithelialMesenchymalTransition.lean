import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralCrestDevelopmentTheoremCanonicalLaneLean

structure GeneRegulatoryNetworkEpithelialMesenchymalTransition where
  snailExpression : ℝ
  twistExpression : ℝ
  foxd3Expression : ℝ
  sox9Expression : ℝ
  snailPositive : snailExpression > 0
  twistPositive : twistExpression > 0
  foxd3Positive : foxd3Expression > 0
  sox9Positive : sox9Expression > 0

structure GeneRegulatoryNetworkEpithelialMesenchymalTransitionEvidence
    (G : GeneRegulatoryNetworkEpithelialMesenchymalTransition) where
  snailPositiveClosed : G.snailPositive
  twistPositiveClosed : G.twistPositive
  foxd3PositiveClosed : G.foxd3Positive
  sox9PositiveClosed : G.sox9Positive

def GeneRegulatoryNetworkEpithelialMesenchymalTransitionClosed
    (G : GeneRegulatoryNetworkEpithelialMesenchymalTransition) : Prop :=
  G.snailPositive ∧ G.twistPositive ∧ G.foxd3Positive ∧ G.sox9Positive

theorem gene_regulatory_network_epithelial_mesenchymal_transition_closed_from_evidence
    (G : GeneRegulatoryNetworkEpithelialMesenchymalTransition)
    (E : GeneRegulatoryNetworkEpithelialMesenchymalTransitionEvidence G) :
    GeneRegulatoryNetworkEpithelialMesenchymalTransitionClosed G := by
  exact And.intro E.snailPositiveClosed (And.intro E.twistPositiveClosed
    (And.intro E.foxd3PositiveClosed E.sox9PositiveClosed))

end DevelopmentalBiologyNeuralCrestDevelopmentTheoremCanonicalLaneLean
end HautevilleHouse