import DynamicalAspectsTwistMapsCanonicalLaneLean.TwistIntersection

namespace HautevilleHouse
namespace DynamicalAspectsTwistMapsCanonicalLaneLean

structure InvariantCurve where
  existsKAMCurve : Prop
  breakupThreshold : Prop
  residueCriterion : Prop

structure InvariantCurveEvidence (C : InvariantCurve) where
  existsKAMCurveClosed : C.existsKAMCurve
  breakupThresholdClosed : C.breakupThreshold
  residueCriterionClosed : C.residueCriterion

def InvariantCurveClosed (C : InvariantCurve) : Prop :=
  C.existsKAMCurve ∧ C.breakupThreshold ∧ C.residueCriterion

theorem invariant_curve_closed_from_evidence (C : InvariantCurve)
    (E : InvariantCurveEvidence C) : InvariantCurveClosed C := by
  exact And.intro E.existsKAMCurveClosed
    (And.intro E.breakupThresholdClosed E.residueCriterionClosed)

end DynamicalAspectsTwistMapsCanonicalLaneLean
end HautevilleHouse