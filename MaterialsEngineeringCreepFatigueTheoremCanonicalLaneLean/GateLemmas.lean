import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MaterialsEngineeringCreepFatigueTheoremCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace MaterialsEngineeringCreepFatigueTheoremCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end MaterialsEngineeringCreepFatigueTheoremCanonicalLaneLean
end HautevilleHouse