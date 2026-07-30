import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCreepFatigueTheoremCanonicalLaneLean

structure LarsonMillerParameter where
  stress : Type u
  temperature : Type v
  ruptureTime : Type w
  materialConstant : ℝ
  lmpFormula : Prop
  masterCurve : Prop
  masterCurveConstructed : lmpFormula ∧ masterCurve

structure LarsonMillerParameterEvidence (L : LarsonMillerParameter) where
  lmpFormulaClosed : L.lmpFormula
  masterCurveClosed : L.masterCurve

def LarsonMillerParameterClosed (L : LarsonMillerParameter) : Prop :=
  L.lmpFormula ∧ L.masterCurve

theorem larson_miller_parameter_closed_from_evidence (L : LarsonMillerParameter)
    (E : LarsonMillerParameterEvidence L) : LarsonMillerParameterClosed L := by
  exact And.intro E.lmpFormulaClosed E.masterCurveClosed

end MaterialsEngineeringCreepFatigueTheoremCanonicalLaneLean
end HautevilleHouse