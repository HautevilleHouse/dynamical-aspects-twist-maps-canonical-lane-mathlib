import DynamicalAspectsTwistMapsCanonicalLaneLean.TwistMapAction

namespace HautevilleHouse
namespace DynamicalAspectsTwistMapsCanonicalLaneLean

structure RegularityPackage {M : TwistMapSpace} (A : TwistMapAction M) where
  differentiabilityClass : Nat
  inverseTwistCondition : Prop
  monotoneTwist : Prop
  lipschitzBound : Prop

structure RegularityEvidence {M : TwistMapSpace} {A : TwistMapAction M}
    (R : RegularityPackage A) where
  differentiabilityClassClosed : R.differentiabilityClass ≥ 1
  inverseTwistConditionClosed : R.inverseTwistCondition
  monotoneTwistClosed : R.monotoneTwist
  lipschitzBoundClosed : R.lipschitzBound

def RegularityClosed {M : TwistMapSpace} {A : TwistMapAction M}
    (R : RegularityPackage A) : Prop :=
  (R.differentiabilityClass ≥ 1) ∧ R.inverseTwistCondition ∧
  R.monotoneTwist ∧ R.lipschitzBound

theorem regularity_closed_from_evidence
    {M : TwistMapSpace} {A : TwistMapAction M}
    (R : RegularityPackage A) (E : RegularityEvidence R) :
    RegularityClosed R := by
  exact And.intro E.differentiabilityClassClosed
    (And.intro E.inverseTwistConditionClosed
      (And.intro E.monotoneTwistClosed E.lipschitzBoundClosed))

end DynamicalAspectsTwistMapsCanonicalLaneLean
end HautevilleHouse
