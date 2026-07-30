import HautevilleHouse.MaterialsEngineeringCreepFatigueTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCreepFatigueTheoremCanonicalLaneLean

structure MicrostructureDamagePackage where
  grainBoundaryCavitation : Prop
  precipitateCoarsening : Prop
  dislocationSubstructureEvolution : Prop
  cyclicPlasticStrainLocalization : Prop
  creepFatigueInteraction : Prop

structure MicrostructureDamageEvidence (M : MicrostructureDamagePackage) where
  grainBoundaryCavitationClosed : M.grainBoundaryCavitation
  precipitateCoarseningClosed : M.precipitateCoarsening
  dislocationSubstructureEvolutionClosed : M.dislocationSubstructureEvolution
  cyclicPlasticStrainLocalizationClosed : M.cyclicPlasticStrainLocalization
  creepFatigueInteractionClosed : M.creepFatigueInteraction

def MicrostructureDamageClosed (M : MicrostructureDamagePackage) : Prop :=
  M.grainBoundaryCavitation ∧ M.precipitateCoarsening ∧
  M.dislocationSubstructureEvolution ∧ M.cyclicPlasticStrainLocalization ∧
  M.creepFatigueInteraction

theorem microstructure_damage_closed_from_evidence (M : MicrostructureDamagePackage)
    (E : MicrostructureDamageEvidence M) : MicrostructureDamageClosed M := by
  exact And.intro E.grainBoundaryCavitationClosed
    (And.intro E.precipitateCoarseningClosed
      (And.intro E.dislocationSubstructureEvolutionClosed
        (And.intro E.cyclicPlasticStrainLocalizationClosed
          E.creepFatigueInteractionClosed)))

end MaterialsEngineeringCreepFatigueTheoremCanonicalLaneLean
end HautevilleHouse
