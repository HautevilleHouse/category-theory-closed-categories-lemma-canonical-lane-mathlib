import HautevilleHouse.CategoryTheoryClosedCategoriesLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryClosedCategoriesLemmaCanonicalLaneLean

structure AdjointFunctorPackage where
  leftAdjointExists : Prop
  rightAdjointExists : Prop
  unitCounitNatural : Prop

structure AdjointFunctorEvidence (A : AdjointFunctorPackage) where
  leftAdjointClosed : A.leftAdjointExists
  rightAdjointClosed : A.rightAdjointExists
  unitCounitNaturalClosed : A.unitCounitNatural

def AdjointFunctorClosed (A : AdjointFunctorPackage) : Prop :=
  A.leftAdjointExists ∧ A.rightAdjointExists ∧ A.unitCounitNatural

theorem adjoint_functor_closed_from_evidence (A : AdjointFunctorPackage)
    (E : AdjointFunctorEvidence A) : AdjointFunctorClosed A := by
  exact And.intro E.leftAdjointClosed
    (And.intro E.rightAdjointClosed E.unitCounitNaturalClosed)

end CategoryTheoryClosedCategoriesLemmaCanonicalLaneLean
end HautevilleHouse