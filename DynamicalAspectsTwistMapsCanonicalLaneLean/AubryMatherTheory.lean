import HautevilleHouse.DynamicalAspectsTwistMapsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsTwistMapsCanonicalLaneLean

structure AubryMatherPackage where
  minimalCantorus : Prop
  rotationNumber : Type
  invariantCircles : Prop
  breakingCircles : Prop
  aubryMatherSet : Prop

structure AubryMatherEvidence (P : AubryMatherPackage) where
  minimalCantorusClosed : P.minimalCantorus
  invariantCirclesClosed : P.invariantCircles
  breakingCirclesClosed : P.breakingCircles
  aubryMatherSetClosed : P.aubryMatherSet

def AubryMatherClosed (P : AubryMatherPackage) : Prop :=
  P.minimalCantorus ∧ P.invariantCircles ∧ P.breakingCircles ∧ P.aubryMatherSet

theorem aubry_mather_closed_from_evidence (P : AubryMatherPackage) (E : AubryMatherEvidence P) :
    AubryMatherClosed P := by
  exact And.intro E.minimalCantorusClosed (And.intro E.invariantCirclesClosed (And.intro E.breakingCirclesClosed E.aubryMatherSetClosed))

end DynamicalAspectsTwistMapsCanonicalLaneLean
end HautevilleHouse