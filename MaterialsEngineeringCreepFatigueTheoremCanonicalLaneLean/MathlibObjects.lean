import HautevilleHouse.MaterialsEngineeringCreepFatigueTheoremCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore

namespace HautevilleHouse
namespace MaterialsEngineeringCreepFatigueTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure MaterialSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure MaterialAdmittedObject where
  space : MaterialSpace
  creepResistant : Prop
  fatigueResistant : Prop
  model : Type
  modelTopology : TopologicalSpace model
  lifePredictionValid : Prop
  conclusion : lifePredictionValid

def MaterialWitnessClosed (O : MaterialAdmittedObject) : Prop :=
  O.lifePredictionValid

end MaterialsEngineeringCreepFatigueTheoremCanonicalLaneLean
end HautevilleHouse