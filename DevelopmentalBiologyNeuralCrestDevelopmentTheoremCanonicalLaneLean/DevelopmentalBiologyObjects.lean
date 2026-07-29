import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralCrestDevelopmentTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure NeuralCrestCell where
  carrier : Type
  geneExpression : carrier → Prop

structure NeuralCrestAdmittedObject where
  cell : NeuralCrestCell
  delaminationPotential : Prop
  migrationCompetence : Prop
  multipotency : Prop
  differentiationCapacity : Prop
  conclusion : delaminationPotential ∧ migrationCompetence ∧ multipotency ∧ differentiationCapacity

structure NeuralCrestEndgameState where
  object : NeuralCrestAdmittedObject

def NeuralCrestWitnessClosed (O : NeuralCrestAdmittedObject) : Prop :=
  O.conclusion

end DevelopmentalBiologyNeuralCrestDevelopmentTheoremCanonicalLaneLean
end HautevilleHouse
