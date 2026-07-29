import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsTwistMapsCanonicalLaneLean

structure TwistMapSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure TwistAdmittedObject where
  space : TwistMapSpace
  twoDimensional : Prop
  areaPreserving : Prop
  twistCondition : Prop
  conclusion : conclusion

def TwistWitnessClosed (O : TwistAdmittedObject) : Prop :=
  O.conclusion

structure AdmissibleClass where
  object : TwistAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  TwistWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DynamicalAspectsTwistMapsCanonicalLaneLean
end HautevilleHouse
