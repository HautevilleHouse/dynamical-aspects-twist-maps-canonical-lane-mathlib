import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsTwistMapsCanonicalLaneLean

structure AubryMatherPackage where
  rotationNumber : ℝ
  invariantMeasures : Prop
  cantorSetExists : Prop
  minimizingOrbits : Prop

structure AubryMatherEvidence (P : AubryMatherPackage) where
  rotationNumberDefined : P.rotationNumber ∈ (0:ℝ)
  invariantMeasuresClosed : P.invariantMeasures
  cantorSetExistsClosed : P.cantorSetExists
  minimizingOrbitsClosed : P.minimizingOrbits

def AubryMatherClosed (P : AubryMatherPackage) : Prop :=
  P.invariantMeasures ∧ P.cantorSetExists ∧ P.minimizingOrbits

theorem aubry_mather_closed_from_evidence (P : AubryMatherPackage) (E : AubryMatherEvidence P) :
    AubryMatherClosed P := by
  exact And.intro E.invariantMeasuresClosed (And.intro E.cantorSetExistsClosed E.minimizingOrbitsClosed)

end DynamicalAspectsTwistMapsCanonicalLaneLean
end HautevilleHouse