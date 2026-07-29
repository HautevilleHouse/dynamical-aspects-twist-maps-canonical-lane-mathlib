import DynamicalAspectsTwistMapsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsTwistMapsCanonicalLaneLean

def TwistIntersectionClosed (O : TwistMapObject) : Prop :=
  O.twistCondition ∧ O.intersectionProperty

theorem twist_intersection_from_object (O : TwistMapObject) :
    TwistIntersectionClosed O := by
  exact And.intro O.twistCondition O.intersectionProperty

end DynamicalAspectsTwistMapsCanonicalLaneLean
end HautevilleHouse