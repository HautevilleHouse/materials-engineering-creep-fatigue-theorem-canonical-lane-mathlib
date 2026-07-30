import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCreepFatigueTheoremCanonicalLaneLean

structure LifePredictionModelPackage where
  strainRange : Prop
  frequencyEffect : Prop
  temperatureEffect : Prop
  meanStressEffect : Prop

structure LifePredictionModelEvidence (L : LifePredictionModelPackage) where
  strainRangeClosed : L.strainRange
  frequencyEffectClosed : L.frequencyEffect
  temperatureEffectClosed : L.temperatureEffect
  meanStressEffectClosed : L.meanStressEffect

def LifePredictionModelClosed (L : LifePredictionModelPackage) : Prop :=
  L.strainRange ∧ L.frequencyEffect ∧ L.temperatureEffect ∧ L.meanStressEffect

theorem life_prediction_model_closed_from_evidence (L : LifePredictionModelPackage) 
    (E : LifePredictionModelEvidence L) : LifePredictionModelClosed L := by
  exact And.intro E.strainRangeClosed
    (And.intro E.frequencyEffectClosed
      (And.intro E.temperatureEffectClosed E.meanStressEffectClosed))

end MaterialsEngineeringCreepFatigueTheoremCanonicalLaneLean
end HautevilleHouse