import DevelopmentalBiologyNeuralCrestDevelopmentTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralCrestDevelopmentTheoremCanonicalLaneLean

structure GeneRegulatoryNetworkPackage where
  transcriptionFactors : Type u
  targetGenes : Type v
  regulatoryInteractions : Prop
  feedbackLoops : Prop
  networkStability : Prop

structure GeneRegulatoryNetworkEvidence (G : GeneRegulatoryNetworkPackage) where
  regulatoryInteractionsClosed : G.regulatoryInteractions
  feedbackLoopsClosed : G.feedbackLoops
  networkStabilityClosed : G.networkStability

def GeneRegulatoryNetworkClosed (G : GeneRegulatoryNetworkPackage) : Prop :=
  G.regulatoryInteractions ∧ G.feedbackLoops ∧ G.networkStability

theorem gene_regulatory_network_closed_from_evidence (G : GeneRegulatoryNetworkPackage) (E : GeneRegulatoryNetworkEvidence G) : GeneRegulatoryNetworkClosed G := by
  exact And.intro E.regulatoryInteractionsClosed (And.intro E.feedbackLoopsClosed E.networkStabilityClosed)

end DevelopmentalBiologyNeuralCrestDevelopmentTheoremCanonicalLaneLean
end HautevilleHouse
