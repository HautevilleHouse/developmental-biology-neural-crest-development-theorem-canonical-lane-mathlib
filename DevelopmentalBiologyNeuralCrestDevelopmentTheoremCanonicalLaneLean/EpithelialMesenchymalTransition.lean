import DevelopmentalBiologyNeuralCrestDevelopmentTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralCrestDevelopmentTheoremCanonicalLaneLean

structure EpithelialMesenchymalTransitionPackage where
  cellType : Type u
  signalingPathway : Type v
  tightJunctionLoss : Prop
  actinReorganization : Prop
  mesenchymalMarkers : Prop

structure EpithelialMesenchymalTransitionEvidence (E : EpithelialMesenchymalTransitionPackage) where
  tightJunctionLossClosed : E.tightJunctionLoss
  actinReorganizationClosed : E.actinReorganization
  mesenchymalMarkersClosed : E.mesenchymalMarkers

def EpithelialMesenchymalTransitionClosed (E : EpithelialMesenchymalTransitionPackage) : Prop :=
  E.tightJunctionLoss ∧ E.actinReorganization ∧ E.mesenchymalMarkers

theorem epithelial_mesenchymal_transition_closed_from_evidence (E : EpithelialMesenchymalTransitionPackage) (Ev : EpithelialMesenchymalTransitionEvidence E) : EpithelialMesenchymalTransitionClosed E := by
  exact And.intro Ev.tightJunctionLossClosed (And.intro Ev.actinReorganizationClosed Ev.mesenchymalMarkersClosed)

end DevelopmentalBiologyNeuralCrestDevelopmentTheoremCanonicalLaneLean
end HautevilleHouse
