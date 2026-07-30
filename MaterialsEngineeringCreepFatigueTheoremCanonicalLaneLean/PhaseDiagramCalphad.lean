import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCreepFatigueTheoremCanonicalLaneLean

structure PhaseDiagramCalphad where
  components : Type u
  phases : Type v
  thermodynamicDatabase : Type w
  gibbsFreeEnergyModels : Prop
  phaseEquilibrium : Prop
  sschefflerDiagram : Prop
  phaseStabilityClosed : gibbsFreeEnergyModels ∧ phaseEquilibrium

structure PhaseDiagramCalphadEvidence (P : PhaseDiagramCalphad) where
  gibbsFreeEnergyModelsClosed : P.gibbsFreeEnergyModels
  phaseEquilibriumClosed : P.phaseEquilibrium

def PhaseDiagramCalphadClosed (P : PhaseDiagramCalphad) : Prop :=
  P.gibbsFreeEnergyModels ∧ P.phaseEquilibrium

theorem phase_diagram_calphad_closed_from_evidence (P : PhaseDiagramCalphad)
    (E : PhaseDiagramCalphadEvidence P) : PhaseDiagramCalphadClosed P := by
  exact And.intro E.gibbsFreeEnergyModelsClosed E.phaseEquilibriumClosed

end MaterialsEngineeringCreepFatigueTheoremCanonicalLaneLean
end HautevilleHouse