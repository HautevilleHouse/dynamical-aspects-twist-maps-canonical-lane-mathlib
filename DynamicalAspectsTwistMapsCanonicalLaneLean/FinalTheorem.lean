import HautevilleHouse.DynamicalAspectsTwistMapsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DynamicalAspectsTwistMapsCanonicalLaneLean

def TwistMapClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem twist_map_endgame (A : AdmissibleClass) :
    TwistMapClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DynamicalAspectsTwistMapsCanonicalLaneLean
end HautevilleHouse