import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsTwistMapsCanonicalLaneLean

structure TwistAdmittedObject where
  space : Type
  twistMap : space → space
  invariantTorus : Prop
  conclusion : invariantTorus

def TwistWitnessClosed (O : TwistAdmittedObject) : Prop :=
  O.invariantTorus

end DynamicalAspectsTwistMapsCanonicalLaneLean
end HautevilleHouse
