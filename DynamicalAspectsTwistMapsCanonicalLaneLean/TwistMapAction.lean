import DynamicalAspectsTwistMapsCanonicalLaneLean.TwistMapAdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsTwistMapsCanonicalLaneLean

structure TwistMapAction (M : TwistMapSpace) where
  domain : Type u
  range : Type v
  map : domain → range
  liftToAnnulus : Prop
  twistInequality : Prop
  areaPreservingProperty : Prop

structure TwistMapActionEvidence {M : TwistMapSpace} (A : TwistMapAction M) where
  liftToAnnulusClosed : A.liftToAnnulus
  twistInequalityClosed : A.twistInequality
  areaPreservingPropertyClosed : A.areaPreservingProperty

def TwistMapActionClosed {M : TwistMapSpace} (A : TwistMapAction M) : Prop :=
  A.liftToAnnulus ∧ A.twistInequality ∧ A.areaPreservingProperty

theorem twist_map_action_closed_from_evidence
    {M : TwistMapSpace} (A : TwistMapAction M)
    (E : TwistMapActionEvidence A) : TwistMapActionClosed A := by
  exact And.intro E.liftToAnnulusClosed
    (And.intro E.twistInequalityClosed E.areaPreservingPropertyClosed)

end DynamicalAspectsTwistMapsCanonicalLaneLean
end HautevilleHouse
