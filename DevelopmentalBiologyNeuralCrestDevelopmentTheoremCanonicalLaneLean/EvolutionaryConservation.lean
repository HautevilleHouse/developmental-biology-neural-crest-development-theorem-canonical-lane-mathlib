import canonicalLaneMathlib.AdmissibleClass

/-!
# Evolutionary Conservation Package
-/

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralCrestDevelopmentTheoremCanonicalLaneLean

structure EvolutionaryConservationPackage where
  phylogeneticEvidence : Prop
  functionalConstraint : Prop
  speciesComparison : Prop
  coreProgramConserved : Prop

structure EvolutionaryConservationEvidence (E : EvolutionaryConservationPackage) where
  phylogeneticEvidenceClosed : E.phylogeneticEvidence
  functionalConstraintClosed : E.functionalConstraint
  speciesComparisonClosed : E.speciesComparison
  coreProgramConservedClosed : E.coreProgramConserved

def EvolutionaryConservationClosed (E : EvolutionaryConservationPackage) : Prop :=
  E.phylogeneticEvidence ∧ E.functionalConstraint ∧ E.speciesComparison ∧ E.coreProgramConserved

theorem evolutionary_conservation_closed_from_evidence (E : EvolutionaryConservationPackage)
    (Ev : EvolutionaryConservationEvidence E) : EvolutionaryConservationClosed E := by
  exact And.intro Ev.phylogeneticEvidenceClosed
    (And.intro Ev.functionalConstraintClosed
      (And.intro Ev.speciesComparisonClosed Ev.coreProgramConservedClosed))

end DevelopmentalBiologyNeuralCrestDevelopmentTheoremCanonicalLaneLean
end HautevilleHouse