import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MaterialsEngineeringCreepFatigueTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace MaterialsEngineeringCreepFatigueTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : MaterialAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  MaterialWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MaterialsEngineeringCreepFatigueTheoremCanonicalLaneLean
end HautevilleHouse