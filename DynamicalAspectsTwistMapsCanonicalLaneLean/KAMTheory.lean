import HautevilleHouse.DynamicalAspectsTwistMapsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsTwistMapsCanonicalLaneLean

structure KAMPackage where
  invariantTori : Prop
  diophantineCondition : Prop
  perturbationSize : Prop
  persistenceOfTori : Prop

structure KAMEvidence (K : KAMPackage) where
  invariantToriClosed : K.invariantTori
  diophantineConditionClosed : K.diophantineCondition
  perturbationSizeClosed : K.perturbationSize
  persistenceOfToriClosed : K.persistenceOfTori

def KAMClosed (K : KAMPackage) : Prop :=
  K.invariantTori ∧ K.diophantineCondition ∧ K.perturbationSize ∧ K.persistenceOfTori

theorem kam_closed_from_evidence (K : KAMPackage) (E : KAMEvidence K) : KAMClosed K := by
  exact And.intro E.invariantToriClosed (And.intro E.diophantineConditionClosed (And.intro E.perturbationSizeClosed E.persistenceOfToriClosed))

end DynamicalAspectsTwistMapsCanonicalLaneLean
end HautevilleHouse