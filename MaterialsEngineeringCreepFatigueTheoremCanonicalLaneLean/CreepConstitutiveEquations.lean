import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCreepFatigueTheoremCanonicalLaneLean

structure CreepConstitutivePackage where
  strainRateTensor : Type u
  stressTensor : Type v
  temperatureField : Type w
  creepStrainRateLaw : Prop
  activationEnergyTerm : Prop
  creepStrainRateLawClosed : Prop
  activationEnergyTermClosed : Prop

structure CreepConstitutiveEvidence (C : CreepConstitutivePackage) where
  creepStrainRateLawClosed : C.creepStrainRateLawClosed
  activationEnergyTermClosed : C.activationEnergyTermClosed

def CreepConstitutiveClosed (C : CreepConstitutivePackage) : Prop :=
  C.creepStrainRateLaw ∧ C.activationEnergyTerm

theorem creep_constitutive_closed_from_evidence (C : CreepConstitutivePackage)
    (E : CreepConstitutiveEvidence C) : CreepConstitutiveClosed C := by
  exact And.intro E.creepStrainRateLawClosed E.activationEnergyTermClosed

end MaterialsEngineeringCreepFatigueTheoremCanonicalLaneLean
end HautevilleHouse
