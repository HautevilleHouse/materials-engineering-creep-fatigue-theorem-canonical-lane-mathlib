import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCreepFatigueTheoremCanonicalLaneLean

structure MinerRuleAccumulation where
  loadHistory : Type u
  cycleCount : Type v
  damagePerCycle : Type w
  linearDamageRule : Prop
  cumulativeDamage : Prop
  creepFatigueInteraction : Prop
  damageAccumulationClosed : linearDamageRule ∧ cumulativeDamage ∧ creepFatigueInteraction

structure MinerRuleAccumulationEvidence (M : MinerRuleAccumulation) where
  linearDamageRuleClosed : M.linearDamageRule
  cumulativeDamageClosed : M.cumulativeDamage
  creepFatigueInteractionClosed : M.creepFatigueInteraction

def MinerRuleAccumulationClosed (M : MinerRuleAccumulation) : Prop :=
  M.linearDamageRule ∧ M.cumulativeDamage ∧ M.creepFatigueInteraction

theorem miner_rule_accumulation_closed_from_evidence (M : MinerRuleAccumulation)
    (E : MinerRuleAccumulationEvidence M) : MinerRuleAccumulationClosed M := by
  exact And.intro E.linearDamageRuleClosed
    (And.intro E.cumulativeDamageClosed E.creepFatigueInteractionClosed)

end MaterialsEngineeringCreepFatigueTheoremCanonicalLaneLean
end HautevilleHouse