import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalAspectsTwistMapsCanonicalLaneLean.KAMTheory

namespace HautevilleHouse
namespace DynamicalAspectsTwistMapsCanonicalLaneLean

structure BreakdownThresholdPackage {T : TwistMapPackage} (K : KAMPackage T) where
  criticalPerturbation : ℝ
  thresholdExceededBreakdown : Prop
  lossInvariantCircle : Prop
  transitionToCantorSet : Prop
  scalingLaw : Prop

structure BreakdownThresholdEvidence {T : TwistMapPackage} {K : KAMPackage T}
    (B : BreakdownThresholdPackage K) where
  criticalPerturbationDefinedClosed : True
  thresholdExceededBreakdownClosed : B.thresholdExceededBreakdown
  lossInvariantCircleClosed : B.lossInvariantCircle
  transitionToCantorSetClosed : B.transitionToCantorSet
  scalingLawClosed : B.scalingLaw

def BreakdownThresholdClosed {T : TwistMapPackage} {K : KAMPackage T}
    (B : BreakdownThresholdPackage K) : Prop :=
  B.thresholdExceededBreakdown ∧ B.lossInvariantCircle ∧ B.transitionToCantorSet ∧ B.scalingLaw

theorem breakdown_threshold_closed_from_evidence {T : TwistMapPackage} {K : KAMPackage T}
    (B : BreakdownThresholdPackage K) (E : BreakdownThresholdEvidence B) :
    BreakdownThresholdClosed B := by
  exact And.intro E.thresholdExceededBreakdownClosed
    (And.intro E.lossInvariantCircleClosed
      (And.intro E.transitionToCantorSetClosed E.scalingLawClosed))

end DynamicalAspectsTwistMapsCanonicalLaneLean
end HautevilleHouse
