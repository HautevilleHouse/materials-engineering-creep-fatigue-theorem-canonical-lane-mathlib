import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCreepFatigueTheoremCanonicalLaneLean

structure FatigueCrackGrowthPackage where
  stressIntensityFactor : Type u
  crackGeometry : Type v
  parisLaw : Prop
  thresholdTerm : Prop
  parisLawClosed : Prop
  thresholdTermClosed : Prop

structure FatigueCrackGrowthEvidence (F : FatigueCrackGrowthPackage) where
  parisLawClosed : F.parisLawClosed
  thresholdTermClosed : F.thresholdTermClosed

def FatigueCrackGrowthClosed (F : FatigueCrackGrowthPackage) : Prop :=
  F.parisLaw ∧ F.thresholdTerm

theorem fatigue_crack_growth_closed_from_evidence (F : FatigueCrackGrowthPackage)
    (E : FatigueCrackGrowthEvidence F) : FatigueCrackGrowthClosed F := by
  exact And.intro E.parisLawClosed E.thresholdTermClosed

end MaterialsEngineeringCreepFatigueTheoremCanonicalLaneLean
end HautevilleHouse
