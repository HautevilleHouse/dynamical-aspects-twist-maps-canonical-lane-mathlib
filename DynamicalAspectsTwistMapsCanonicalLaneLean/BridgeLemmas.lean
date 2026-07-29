import HautevilleHouse.DynamicalAspectsTwistMapsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsTwistMapsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  TwistMapClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DynamicalAspectsTwistMapsCanonicalLaneLean
end HautevilleHouse