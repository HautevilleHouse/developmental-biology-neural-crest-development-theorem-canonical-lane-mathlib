import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralCrestDevelopmentTheoremCanonicalLaneLean

structure EMTSignalingPathwayPackage where
  tgfBetaSignaling : Prop
  wntSignaling : Prop
  fgfSignaling : Prop
  notchSignaling : Prop
  bmpSignaling : Prop
  retinoicAcidSignaling : Prop

structure EMTSignalingPathwayEvidence (S : EMTSignalingPathwayPackage) where
  tgfBetaSignalingClosed : S.tgfBetaSignaling
  wntSignalingClosed : S.wntSignaling
  fgfSignalingClosed : S.fgfSignaling
  notchSignalingClosed : S.notchSignaling
  bmpSignalingClosed : S.bmpSignaling
  retinoicAcidSignalingClosed : S.retinoicAcidSignaling

def EMTSignalingPathwayClosed (S : EMTSignalingPathwayPackage) : Prop :=
  S.tgfBetaSignaling ∧ S.wntSignaling ∧ S.fgfSignaling ∧
  S.notchSignaling ∧ S.bmpSignaling ∧ S.retinoicAcidSignaling

theorem emt_signaling_pathway_closed_from_evidence (S : EMTSignalingPathwayPackage) (E : EMTSignalingPathwayEvidence S) : EMTSignalingPathwayClosed S := by
  exact And.intro E.tgfBetaSignalingClosed (And.intro E.wntSignalingClosed (And.intro E.fgfSignalingClosed (And.intro E.notchSignalingClosed (And.intro E.bmpSignalingClosed E.retinoicAcidSignalingClosed))))

end DevelopmentalBiologyNeuralCrestDevelopmentTheoremCanonicalLaneLean
end HautevilleHouse