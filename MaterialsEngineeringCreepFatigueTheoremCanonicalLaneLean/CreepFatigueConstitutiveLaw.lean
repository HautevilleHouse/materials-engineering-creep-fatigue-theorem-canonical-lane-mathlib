import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCreepFatigueTheoremCanonicalLaneLean

structure CreepFatigueConstitutiveLawPackage where
  creepStrainRate : Prop
  fatigueDamageCumulation : Prop
  creepFatigueInteraction : Prop
  backStressEvolution : Prop
  isothermalCyclicSoftening : Prop
  creepStrainRateTerm : creepStrainRate
  fatigueDamageCumulationTerm : fatigueDamageCumulation
  creepFatigueInteractionTerm : creepFatigueInteraction
  backStressEvolutionTerm : backStressEvolution
  isothermalCyclicSofteningTerm : isothermalCyclicSoftening

structure CreepFatigueConstitutiveLawEvidence (C : CreepFatigueConstitutiveLawPackage) where
  creepStrainRateClosed : C.creepStrainRate
  fatigueDamageCumulationClosed : C.fatigueDamageCumulation
  creepFatigueInteractionClosed : C.creepFatigueInteraction
  backStressEvolutionClosed : C.backStressEvolution
  isothermalCyclicSofteningClosed : C.isothermalCyclicSoftening

def CreepFatigueConstitutiveLawClosed (C : CreepFatigueConstitutiveLawPackage) : Prop :=
  C.creepStrainRate ∧ C.fatigueDamageCumulation ∧ C.creepFatigueInteraction ∧ C.backStressEvolution ∧ C.isothermalCyclicSoftening

theorem creep_fatigue_constitutive_law_closed_from_evidence (C : CreepFatigueConstitutiveLawPackage) (E : CreepFatigueConstitutiveLawEvidence C) : CreepFatigueConstitutiveLawClosed C := by
  exact And.intro E.creepStrainRateClosed
    (And.intro E.fatigueDamageCumulationClosed
      (And.intro E.creepFatigueInteractionClosed
        (And.intro E.backStressEvolutionClosed E.isothermalCyclicSofteningClosed)))

end MaterialsEngineeringCreepFatigueTheoremCanonicalLaneLean
end HautevilleHouse