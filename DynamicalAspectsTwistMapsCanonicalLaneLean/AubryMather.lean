import DynamicalAspectsTwistMapsCanonicalLaneLean.InvariantCurves

namespace HautevilleHouse
namespace DynamicalAspectsTwistMapsCanonicalLaneLean

structure AubryMatherSet where
  minimalConfigurations : Prop
  rotationNumber : Prop
  cantorSetStructure : Prop

structure AubryMatherEvidence (A : AubryMatherSet) where
  minimalConfigurationsClosed : A.minimalConfigurations
  rotationNumberClosed : A.rotationNumber
  cantorSetStructureClosed : A.cantorSetStructure

def AubryMatherClosed (A : AubryMatherSet) : Prop :=
  A.minimalConfigurations ∧ A.rotationNumber ∧ A.cantorSetStructure

theorem aubry_mather_closed_from_evidence (A : AubryMatherSet)
    (E : AubryMatherEvidence A) : AubryMatherClosed A := by
  exact And.intro E.minimalConfigurationsClosed
    (And.intro E.rotationNumberClosed E.cantorSetStructureClosed)

end DynamicalAspectsTwistMapsCanonicalLaneLean
end HautevilleHouse