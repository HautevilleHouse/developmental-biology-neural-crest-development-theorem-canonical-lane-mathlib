import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralCrestDevelopmentTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure NeuralCrestAdmittedObject where
  population : NeuralCrestPopulation
  invariantEMT : EMTState → Prop
  migrationSuccess : MigrationPath → Prop
  differentiationPotential : LineageCommitment → Prop
  theoremClosed : Prop

structure NeuralCrestAdmissibleClass where
  object : NeuralCrestAdmittedObject
  emtClosed : Bool
  migrationClosed : Bool
  differentiationClosed : Bool
  endpointSatisfied : Prop
  remainderRecorded : Prop

end DevelopmentalBiologyNeuralCrestDevelopmentTheoremCanonicalLaneLean
end HautevilleHouse
