import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MaterialsEngineeringCreepFatigueTheoremCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace MaterialsEngineeringCreepFatigueTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  MaterialWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MaterialsEngineeringCreepFatigueTheoremCanonicalLaneLean
end HautevilleHouse