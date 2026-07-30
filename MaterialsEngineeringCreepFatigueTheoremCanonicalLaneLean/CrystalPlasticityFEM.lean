import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCreepFatigueTheoremCanonicalLaneLean

structure CrystalPlasticityFEM where
  crystalStructure : Type u
  slipSystems : Type v
  finiteElementMesh : Type w
  constitutiveModel : Prop
  kinematicHardening : Prop
  isotropicHardening : Prop
  femSolutionConverged : constitutiveModel ∧ kinematicHardening ∧ isotropicHardening

structure CrystalPlasticityFEMEvidence (F : CrystalPlasticityFEM) where
  constitutiveModelClosed : F.constitutiveModel
  kinematicHardeningClosed : F.kinematicHardening
  isotropicHardeningClosed : F.isotropicHardening

def CrystalPlasticityFEMClosed (F : CrystalPlasticityFEM) : Prop :=
  F.constitutiveModel ∧ F.kinematicHardening ∧ F.isotropicHardening

theorem crystal_plasticity_fem_closed_from_evidence (F : CrystalPlasticityFEM)
    (E : CrystalPlasticityFEMEvidence F) : CrystalPlasticityFEMClosed F := by
  exact And.intro E.constitutiveModelClosed
    (And.intro E.kinematicHardeningClosed E.isotropicHardeningClosed)

end MaterialsEngineeringCreepFatigueTheoremCanonicalLaneLean
end HautevilleHouse