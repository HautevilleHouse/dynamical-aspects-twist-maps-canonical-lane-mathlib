import DynamicalAspectsTwistMapsCanonicalLaneLean.RegularityPackage

namespace HautevilleHouse
namespace DynamicalAspectsTwistMapsCanonicalLaneLean

structure InvariantCurvePackage {M : TwistMapSpace} {A : TwistMapAction M}
    (R : RegularityPackage A) where
  invariantCurveExists : Prop
  graphOverAngle : Prop
  lipschitzGraph : Prop
  rotationNumberDefined : Prop

structure InvariantCurveEvidence {M : TwistMapSpace} {A : TwistMapAction M}
    {R : RegularityPackage A} (I : InvariantCurvePackage R) where
  invariantCurveExistsClosed : I.invariantCurveExists
  graphOverAngleClosed : I.graphOverAngle
  lipschitzGraphClosed : I.lipschitzGraph
  rotationNumberDefinedClosed : I.rotationNumberDefined

def InvariantCurveClosed {M : TwistMapSpace} {A : TwistMapAction M}
    {R : RegularityPackage A} (I : InvariantCurvePackage R) : Prop :=
  I.invariantCurveExists ∧ I.graphOverAngle ∧
  I.lipschitzGraph ∧ I.rotationNumberDefined

theorem invariant_curve_closed_from_evidence
    {M : TwistMapSpace} {A : TwistMapAction M} {R : RegularityPackage A}
    (I : InvariantCurvePackage R) (E : InvariantCurveEvidence I) :
    InvariantCurveClosed I := by
  exact And.intro E.invariantCurveExistsClosed
    (And.intro E.graphOverAngleClosed
      (And.intro E.lipschitzGraphClosed E.rotationNumberDefinedClosed))

end DynamicalAspectsTwistMapsCanonicalLaneLean
end HautevilleHouse
