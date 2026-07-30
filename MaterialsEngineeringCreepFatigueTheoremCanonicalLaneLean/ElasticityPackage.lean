import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCreepFatigueTheoremCanonicalLaneLean

structure ElasticityPackage where
  stressStrainConstitutive : Prop
  elasticModulus : Prop
  yieldCriterion : Prop
  plasticDeformation : Prop

structure ElasticityEvidence (E : ElasticityPackage) where
  stressStrainConstitutiveClosed : E.stressStrainConstitutive
  elasticModulusClosed : E.elasticModulus
  yieldCriterionClosed : E.yieldCriterion
  plasticDeformationClosed : E.plasticDeformation

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.stressStrainConstitutive ∧ E.elasticModulus ∧ E.yieldCriterion ∧ E.plasticDeformation

theorem elasticity_closed_from_evidence (E : ElasticityPackage) (Ev : ElasticityEvidence E) : ElasticityClosed E := by
  exact And.intro Ev.stressStrainConstitutiveClosed (And.intro Ev.elasticModulusClosed (And.intro Ev.yieldCriterionClosed Ev.plasticDeformationClosed))

end MaterialsEngineeringCreepFatigueTheoremCanonicalLaneLean
end HautevilleHouse
