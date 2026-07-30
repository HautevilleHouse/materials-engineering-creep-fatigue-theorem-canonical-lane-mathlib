import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCreepFatigueTheoremCanonicalLaneLean

structure CreepFatigueCrackGrowthPackage where
  crackTipStressField : Prop
  creepCrackGrowthRate : Prop
  fatigueCrackGrowthRate : Prop
  creepFatigueCrackInteraction : Prop
  transitionFromCreepToFatigue : Prop
  crackTipStressFieldTerm : crackTipStressField
  creepCrackGrowthRateTerm : creepCrackGrowthRate
  fatigueCrackGrowthRateTerm : fatigueCrackGrowthRate
  creepFatigueCrackInteractionTerm : creepFatigueCrackInteraction
  transitionFromCreepToFatigueTerm : transitionFromCreepToFatigue

structure CreepFatigueCrackGrowthEvidence (C : CreepFatigueCrackGrowthPackage) where
  crackTipStressFieldClosed : C.crackTipStressField
  creepCrackGrowthRateClosed : C.creepCrackGrowthRate
  fatigueCrackGrowthRateClosed : C.fatigueCrackGrowthRate
  creepFatigueCrackInteractionClosed : C.creepFatigueCrackInteraction
  transitionFromCreepToFatigueClosed : C.transitionFromCreepToFatigue

def CreepFatigueCrackGrowthClosed (C : CreepFatigueCrackGrowthPackage) : Prop :=
  C.crackTipStressField ∧ C.creepCrackGrowthRate ∧ C.fatigueCrackGrowthRate ∧ C.creepFatigueCrackInteraction ∧ C.transitionFromCreepToFatigue

theorem creep_fatigue_crack_growth_closed_from_evidence (C : CreepFatigueCrackGrowthPackage) (E : CreepFatigueCrackGrowthEvidence C) : CreepFatigueCrackGrowthClosed C := by
  exact And.intro E.crackTipStressFieldClosed
    (And.intro E.creepCrackGrowthRateClosed
      (And.intro E.fatigueCrackGrowthRateClosed
        (And.intro E.creepFatigueCrackInteractionClosed E.transitionFromCreepToFatigueClosed)))

end MaterialsEngineeringCreepFatigueTheoremCanonicalLaneLean
end HautevilleHouse