import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsTwistMapsCanonicalLaneLean

structure TwistMapPackage where
  annulusInner : ℝ
  annulusOuter : ℝ
  generatingFunction : ℝ × ℝ → ℝ × ℝ
  areaPreserving : Prop
  monotoneTwistCondition : Prop
  generatingFunctionSmooth : generatingFunctionSmooth
  twistConditionPositive : Prop

structure TwistMapEvidence (T : TwistMapPackage) where
  areaPreservingClosed : T.areaPreserving
  monotoneTwistConditionClosed : T.monotoneTwistCondition
  generatingFunctionSmoothClosed : T.generatingFunctionSmooth
  twistConditionPositiveClosed : T.twistConditionPositive

def TwistMapClosed (T : TwistMapPackage) : Prop :=
  T.areaPreserving ∧ T.monotoneTwistCondition ∧ T.generatingFunctionSmooth ∧ T.twistConditionPositive

theorem twist_map_closed_from_evidence (T : TwistMapPackage) (E : TwistMapEvidence T) :
    TwistMapClosed T := by
  exact And.intro E.areaPreservingClosed
    (And.intro E.monotoneTwistConditionClosed
      (And.intro E.generatingFunctionSmoothClosed E.twistConditionPositiveClosed))

end DynamicalAspectsTwistMapsCanonicalLaneLean
end HautevilleHouse
