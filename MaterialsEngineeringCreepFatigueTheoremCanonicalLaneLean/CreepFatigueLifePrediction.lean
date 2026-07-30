import HautevilleHouse.MaterialsEngineeringCreepFatigueTheoremCanonicalLaneLean.ConstitutiveModel

namespace HautevilleHouse
namespace MaterialsEngineeringCreepFatigueTheoremCanonicalLaneLean

structure LifePredictionPackage {M : MicrostructureDamagePackage}
    {D : MicrostructureDamageEvidence M}
    {C : ConstitutiveModelPackage D} (E : ConstitutiveModelEvidence C) where
  linearDamageSummation : Prop
  strainRangePartitioning : Prop
  frequencyModifiedStrainLife : Prop
  energyBasedApproach : Prop
  ductilityExhaustion : Prop
  creepFatigueInteractionDiagram : Prop

structure LifePredictionEvidence {M : MicrostructureDamagePackage}
    {D : MicrostructureDamageEvidence M}
    {C : ConstitutiveModelPackage D} {E : ConstitutiveModelEvidence C}
    (L : LifePredictionPackage E) where
  linearDamageSummationClosed : L.linearDamageSummation
  strainRangePartitioningClosed : L.strainRangePartitioning
  frequencyModifiedStrainLifeClosed : L.frequencyModifiedStrainLife
  energyBasedApproachClosed : L.energyBasedApproach
  ductilityExhaustionClosed : L.ductilityExhaustion
  creepFatigueInteractionDiagramClosed : L.creepFatigueInteractionDiagram

def LifePredictionClosed {M : MicrostructureDamagePackage}
    {D : MicrostructureDamageEvidence M}
    {C : ConstitutiveModelPackage D} {E : ConstitutiveModelEvidence C}
    (L : LifePredictionPackage E) : Prop :=
  L.linearDamageSummation ∧ L.strainRangePartitioning ∧
  L.frequencyModifiedStrainLife ∧ L.energyBasedApproach ∧
  L.ductilityExhaustion ∧ L.creepFatigueInteractionDiagram

theorem life_prediction_closed_from_evidence {M : MicrostructureDamagePackage}
    {D : MicrostructureDamageEvidence M}
    {C : ConstitutiveModelPackage D} {E : ConstitutiveModelEvidence C}
    (L : LifePredictionPackage E) (Ev : LifePredictionEvidence L) :
    LifePredictionClosed L := by
  exact And.intro Ev.linearDamageSummationClosed
    (And.intro Ev.strainRangePartitioningClosed
      (And.intro Ev.frequencyModifiedStrainLifeClosed
        (And.intro Ev.energyBasedApproachClosed
          (And.intro Ev.ductilityExhaustionClosed
            Ev.creepFatigueInteractionDiagramClosed))))

end MaterialsEngineeringCreepFatigueTheoremCanonicalLaneLean
end HautevilleHouse
