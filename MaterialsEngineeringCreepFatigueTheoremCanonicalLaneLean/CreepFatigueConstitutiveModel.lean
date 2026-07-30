import HautevilleHouse.MaterialsEngineeringCreepFatigueTheoremCanonicalLaneLean.MicrostructureDamage

namespace HautevilleHouse
namespace MaterialsEngineeringCreepFatigueTheoremCanonicalLaneLean

structure ConstitutiveModelPackage {M : MicrostructureDamagePackage}
    (D : MicrostructureDamageEvidence M) where
  viscoplasticFlowRule : Prop
  damageCoupledElasticity : Prop
  cyclicHardeningRule : Prop
  creepDamageEvolution : Prop
  fatigueDamageCumulation : Prop
  creepFatigueInteractionTerm : Prop

structure ConstitutiveModelEvidence {M : MicrostructureDamagePackage}
    {D : MicrostructureDamageEvidence M} (C : ConstitutiveModelPackage D) where
  viscoplasticFlowRuleClosed : C.viscoplasticFlowRule
  damageCoupledElasticityClosed : C.damageCoupledElasticity
  cyclicHardeningRuleClosed : C.cyclicHardeningRule
  creepDamageEvolutionClosed : C.creepDamageEvolution
  fatigueDamageCumulationClosed : C.fatigueDamageCumulation
  creepFatigueInteractionTermClosed : C.creepFatigueInteractionTerm

def ConstitutiveModelClosed {M : MicrostructureDamagePackage}
    {D : MicrostructureDamageEvidence M} (C : ConstitutiveModelPackage D) : Prop :=
  C.viscoplasticFlowRule ∧ C.damageCoupledElasticity ∧
  C.cyclicHardeningRule ∧ C.creepDamageEvolution ∧
  C.fatigueDamageCumulation ∧ C.creepFatigueInteractionTerm

theorem constitutive_model_closed_from_evidence {M : MicrostructureDamagePackage}
    {D : MicrostructureDamageEvidence M} (C : ConstitutiveModelPackage D)
    (E : ConstitutiveModelEvidence C) : ConstitutiveModelClosed C := by
  exact And.intro E.viscoplasticFlowRuleClosed
    (And.intro E.damageCoupledElasticityClosed
      (And.intro E.cyclicHardeningRuleClosed
        (And.intro E.creepDamageEvolutionClosed
          (And.intro E.fatigueDamageCumulationClosed
            E.creepFatigueInteractionTermClosed))))

end MaterialsEngineeringCreepFatigueTheoremCanonicalLaneLean
end HautevilleHouse
