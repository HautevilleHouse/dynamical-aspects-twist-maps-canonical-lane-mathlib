import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsTwistMapsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure TwistMapObject where
  mapping : Type
  domain : Type
  twistCondition : Prop
  areaPreservation : Prop
  conclusion : twistCondition ∧ areaPreservation

structure AdmissibleClass where
  object : TwistMapObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  TwistMapClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def TwistMapClosed (O : TwistMapObject) : Prop :=
  O.twistCondition ∧ O.areaPreservation

end DynamicalAspectsTwistMapsCanonicalLaneLean
end HautevilleHouse