import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCreepFatigueTheoremCanonicalLaneLean

structure CreepFatigueDamageModel where
  material : Type u
  temperature : Type v
  stress : Type w
  creepDamageVariable : Type x
  fatigueDamageVariable : Type y
  interactionFunction : Prop
  damageEvolutionLaws : Prop
  creepFatigueInteractionClosed : interactionFunction ∧ damageEvolutionLaws

structure CreepFatigueDamageModelEvidence (M : CreepFatigueDamageModel) where
  interactionFunctionClosed : M.interactionFunction
  damageEvolutionLawsClosed : M.damageEvolutionLaws

def CreepFatigueDamageModelClosed (M : CreepFatigueDamageModel) : Prop :=
  M.interactionFunction ∧ M.damageEvolutionLaws

theorem creep_fatigue_damage_model_closed_from_evidence (M : CreepFatigueDamageModel)
    (E : CreepFatigueDamageModelEvidence M) : CreepFatigueDamageModelClosed M := by
  exact And.intro E.interactionFunctionClosed E.damageEvolutionLawsClosed

end MaterialsEngineeringCreepFatigueTheoremCanonicalLaneLean
end HautevilleHouse