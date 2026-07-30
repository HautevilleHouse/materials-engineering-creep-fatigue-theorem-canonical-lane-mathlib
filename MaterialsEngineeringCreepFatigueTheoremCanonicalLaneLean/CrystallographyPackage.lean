import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCreepFatigueTheoremCanonicalLaneLean

structure CrystallographyPackage where
  bravaisLatticeType : Prop
  crystalSymmetryGroup : Prop
  defectDensity : Prop
  grainBoundaryStructure : Prop

structure CrystallographyEvidence (C : CrystallographyPackage) where
  bravaisLatticeTypeClosed : C.bravaisLatticeType
  crystalSymmetryGroupClosed : C.crystalSymmetryGroup
  defectDensityClosed : C.defectDensity
  grainBoundaryStructureClosed : C.grainBoundaryStructure

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.bravaisLatticeType ∧ C.crystalSymmetryGroup ∧ C.defectDensity ∧ C.grainBoundaryStructure

theorem crystallography_closed_from_evidence (C : CrystallographyPackage) (E : CrystallographyEvidence C) : CrystallographyClosed C := by
  exact And.intro E.bravaisLatticeTypeClosed (And.intro E.crystalSymmetryGroupClosed (And.intro E.defectDensityClosed E.grainBoundaryStructureClosed))

end MaterialsEngineeringCreepFatigueTheoremCanonicalLaneLean
end HautevilleHouse
