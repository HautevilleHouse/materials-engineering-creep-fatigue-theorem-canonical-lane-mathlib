import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCreepFatigueTheoremCanonicalLaneLean

structure PhaseDiagramsPackage where
  phaseEquilibria : Prop
  transformationKinetics : Prop
  temperatureCompositionMapping : Prop
  precipitateEvolution : Prop

structure PhaseDiagramsEvidence (P : PhaseDiagramsPackage) where
  phaseEquilibriaClosed : P.phaseEquilibria
  transformationKineticsClosed : P.transformationKinetics
  temperatureCompositionMappingClosed : P.temperatureCompositionMapping
  precipitateEvolutionClosed : P.precipitateEvolution

def PhaseDiagramsClosed (P : PhaseDiagramsPackage) : Prop :=
  P.phaseEquilibria ∧ P.transformationKinetics ∧ P.temperatureCompositionMapping ∧ P.precipitateEvolution

theorem phase_diagrams_closed_from_evidence (P : PhaseDiagramsPackage) (E : PhaseDiagramsEvidence P) : PhaseDiagramsClosed P := by
  exact And.intro E.phaseEquilibriaClosed (And.intro E.transformationKineticsClosed (And.intro E.temperatureCompositionMappingClosed E.precipitateEvolutionClosed))

end MaterialsEngineeringCreepFatigueTheoremCanonicalLaneLean
end HautevilleHouse
