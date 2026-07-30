import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringCreepFatigueTheoremCanonicalLaneLean

structure HighTemperatureMechanismsPackage where
  creepMechanism : Type u
  oxidationTerm : Type v
  stressRuptureData : Type w
  creepMechanismLaw : Prop
  oxidationKinetics : Prop
  stressRuptureCorrelation : Prop
  creepMechanismLawClosed : Prop
  oxidationKineticsClosed : Prop
  stressRuptureCorrelationClosed : Prop

structure HighTemperatureMechanismsEvidence
    (H : HighTemperatureMechanismsPackage) where
  creepMechanismLawClosed : H.creepMechanismLawClosed
  oxidationKineticsClosed : H.oxidationKineticsClosed
  stressRuptureCorrelationClosed : H.stressRuptureCorrelationClosed

def HighTemperatureMechanismsClosed
    (H : HighTemperatureMechanismsPackage) : Prop :=
  H.creepMechanismLaw ∧ H.oxidationKinetics ∧ H.stressRuptureCorrelation

theorem high_temperature_mechanisms_closed_from_evidence
    (H : HighTemperatureMechanismsPackage)
    (E : HighTemperatureMechanismsEvidence H) : HighTemperatureMechanismsClosed H := by
  exact And.intro E.creepMechanismLawClosed
    (And.intro E.oxidationKineticsClosed E.stressRuptureCorrelationClosed)

end MaterialsEngineeringCreepFatigueTheoremCanonicalLaneLean
end HautevilleHouse
