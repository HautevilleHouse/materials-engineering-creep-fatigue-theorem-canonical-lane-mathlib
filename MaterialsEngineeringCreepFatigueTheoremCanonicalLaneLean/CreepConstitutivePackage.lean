import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCreepFatigueTheoremCanonicalLaneLean

structure CreepConstitutivePackage where
  steadyStateCreepRate : Prop
  primaryCreep : Prop
  tertiaryCreep : Prop
  creepDamageMechanism : Prop
  creepFatigueInteraction : Prop

structure CreepConstitutiveEvidence (C : CreepConstitutivePackage) where
  steadyStateCreepRateClosed : C.steadyStateCreepRate
  primaryCreepClosed : C.primaryCreep
  tertiaryCreepClosed : C.tertiaryCreep
  creepDamageMechanismClosed : C.creepDamageMechanism
  creepFatigueInteractionClosed : C.creepFatigueInteraction

def CreepConstitutiveClosed (C : CreepConstitutivePackage) : Prop :=
  C.steadyStateCreepRate ∧ C.primaryCreep ∧ C.tertiaryCreep ∧ C.creepDamageMechanism ∧ C.creepFatigueInteraction

theorem creep_constitutive_closed_from_evidence (C : CreepConstitutivePackage) (E : CreepConstitutiveEvidence C) : CreepConstitutiveClosed C := by
  exact And.intro E.steadyStateCreepRateClosed (And.intro E.primaryCreepClosed (And.intro E.tertiaryCreepClosed (And.intro E.creepDamageMechanismClosed E.creepFatigueInteractionClosed)))

end MaterialsEngineeringCreepFatigueTheoremCanonicalLaneLean
end HautevilleHouse
