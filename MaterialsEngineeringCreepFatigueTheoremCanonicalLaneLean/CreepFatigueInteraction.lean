import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCreepFatigueTheoremCanonicalLaneLean

structure CreepFatigueInteractionPackage where
  creepDamageAccumulation : Prop
  fatigueDamageAccumulation : Prop
  interactionTerm : Prop
  totalDamageRule : Prop

structure CreepFatigueInteractionEvidence (C : CreepFatigueInteractionPackage) where
  creepDamageAccumulationClosed : C.creepDamageAccumulation
  fatigueDamageAccumulationClosed : C.fatigueDamageAccumulation
  interactionTermClosed : C.interactionTerm
  totalDamageRuleClosed : C.totalDamageRule

def CreepFatigueInteractionClosed (C : CreepFatigueInteractionPackage) : Prop :=
  C.creepDamageAccumulation ∧ C.fatigueDamageAccumulation ∧ C.interactionTerm ∧ C.totalDamageRule

theorem creep_fatigue_interaction_closed_from_evidence (C : CreepFatigueInteractionPackage) 
    (E : CreepFatigueInteractionEvidence C) : CreepFatigueInteractionClosed C := by
  exact And.intro E.creepDamageAccumulationClosed
    (And.intro E.fatigueDamageAccumulationClosed
      (And.intro E.interactionTermClosed E.totalDamageRuleClosed))

end MaterialsEngineeringCreepFatigueTheoremCanonicalLaneLean
end HautevilleHouse